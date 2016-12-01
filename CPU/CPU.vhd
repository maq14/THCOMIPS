----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:14 11/26/2016 
-- Design Name: 
-- Module Name:    CPU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU is
port(
    clk : in  STD_LOGIC;
    addr_ram1 : out  STD_LOGIC_VECTOR (17 downto 0);
    en_ram1 : out  STD_LOGIC;
    we_ram1 : out  STD_LOGIC;
    oe_ram1 : out  STD_LOGIC;
    data_ram1 : inout  STD_LOGIC_VECTOR (15 downto 0);
    addr_ram2 : out  STD_LOGIC_VECTOR (17 downto 0);
    en_ram2 : out  STD_LOGIC;
    we_ram2 : out  STD_LOGIC;
    oe_ram2 : out  STD_LOGIC;
    data_ram2 : inout  STD_LOGIC_VECTOR (15 downto 0);
    com_data_ready : in STD_LOGIC;
    com_rdn : out STD_LOGIC;
    com_tbre : in STD_LOGIC;
    com_tsre : in STD_LOGIC;
    com_wrn : out STD_LOGIC;
	 disp_g : out std_logic_vector(6 downto 0);
	 inst : out std_logic_vector(15 downto 0)
  );
end CPU;

architecture Behavioral of CPU is

component clk_2
port(
  clk_in : in std_logic;
  clk_out : out std_logic
);
end component;

component clk_4
port(
    clk_in : in std_logic;
    clk_out : inout std_logic
  );
end component;

component adder
port(
    pc : in std_logic_vector(15 downto 0);
	 imme : in std_logic_vector(15 downto 0);
	 pc_imme : out std_logic_vector(15 downto 0)
  );
end component;

component alu
port(
    input1 : in STD_LOGIC_VECTOR(15 downto 0);
    input2 : in STD_LOGIC_VECTOR(15 downto 0);
    aluOp : in STD_LOGIC_VECTOR(3 downto 0);
    aluRes : out STD_LOGIC_VECTOR(15 downto 0);
    flag : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

component bypass
  port(
    reg_num_1: in std_logic_vector(3 downto 0);
    reg_num_2: in std_logic_vector(3 downto 0);
    use_reg_1_or_not: in std_logic;
    use_reg_2_or_not: in std_logic;
    write_en_1: in std_logic;
    write_en_2: in std_logic;
    reg_write_num_1: in std_logic_vector(3 downto 0);
    reg_write_num_2: in std_logic_vector(3 downto 0);
    MEMWrite: in std_logic;
    op_1: out std_logic_vector(1 downto 0);
    op_2: out std_logic_vector(1 downto 0);
    op_3: out std_logic_vector(1 downto 0)
  );
end component;

component ctrl
  port(
    instruction : in std_logic_vector(15 downto 0);
    flag : in std_logic_vector(3 downto 0);
    res : out std_logic_vector(15 downto 0)
  );
end component;

component decoder
port(
    instruction_in : in std_logic_vector(15 downto 0);
    reg_num_1 : out std_logic_vector(3 downto 0);
    reg_num_2 : out std_logic_vector(3 downto 0);
    immediate : out std_logic_vector(10 downto 0);
    use_reg_1_or_not : out std_logic;
    use_reg_2_or_not : out std_logic;
    reg_write_num : out std_logic_vector(3 downto 0);
    aluop : out std_logic_vector(3 downto 0);
    alusrc2 : out std_logic;
	 bypasssrc1 : out std_logic_vector(1 downto 0);
    MEMRead : out std_logic;
    MEMWrite : out std_logic;
    write_en : out std_logic;
    wbop : out std_logic_vector(1 downto 0)
  );
end component;

component exe_mem
port(
  clk : in STD_LOGIC;
  pc_in : in STD_LOGIC_VECTOR (15 downto 0);
  pc_out : out STD_LOGIC_VECTOR (15 downto 0);
  write_op_in : in STD_LOGIC_VECTOR (1 downto 0);
  write_op_out : out STD_LOGIC_VECTOR (1 downto 0);
  instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
  instruction_out : out STD_LOGIC_VECTOR (15 downto 0);
  flag_in : in std_logic_vector(3 downto 0);
  flag_out : out std_logic_vector(3 downto 0);
  write_oe_in : in  STD_LOGIC;
  write_oe_out : out  STD_LOGIC;
  MEMRead_in : in  STD_LOGIC;
  MEMRead_out : out  STD_LOGIC;
  MEMWrite_in : in  STD_LOGIC;
  MEMWrite_out : out  STD_LOGIC;
  alures_in : in  STD_LOGIC_VECTOR (15 downto 0);
  alures_out : out  STD_LOGIC_VECTOR (15 downto 0);
  writeData_in : in  STD_LOGIC_VECTOR (15 downto 0);
  writeData_out : out  STD_LOGIC_VECTOR (15 downto 0);
  reg_write_num_in : in  STD_LOGIC_VECTOR(3 downto 0);
  reg_write_num_out : out  STD_LOGIC_VECTOR(3 downto 0);
  bypasssrc1_in : in std_logic_vector(1 downto 0);
  bypasssrc1_out : out std_logic_vector(1 downto 0)
);
end component;

component extend
port(
    immediate: in std_logic_vector(10 downto 0);
	 imme_extend: out std_logic_vector(15 downto 0)
  ); 
end component;

component hazard
port(
    load_reg_num : in std_logic_vector(3 downto 0);
    use_reg_1_or_not, use_reg_2_or_not : in std_logic;
    reg_num_1, reg_num_2 : in std_logic_vector(3 downto 0);
    MEMRead : in std_logic;
    jump_en : in std_logic;
    pc_write : out std_logic;
    IF_ID_flush : out std_logic; --if false, the output remain the same
    IF_ID_nop : out std_logic; --if true, insert nop
    ID_EXE_nop : out std_logic; --if true, insert nop
    op_pc : out std_logic
  );
end component;

component id_exe
port(
    clk : in std_logic;
    insert_nop : in std_logic;
    aluop_in : in std_logic_vector(3 downto 0);
    aluop_out : out std_logic_vector(3 downto 0);
    alusrc2_in : in std_logic;
    alusrc2_out : out std_logic;
    MEMRead_in : in std_logic;
    MEMRead_out : out std_logic;
    MEMWrite_in : in std_logic;
    MEMWrite_out : out std_logic;
    write_op_in : in std_logic_vector(1 downto 0);
    write_op_out : out std_logic_vector(1 downto 0);
    write_oe_in : in std_logic;
    write_oe_out : out std_logic;
    instruction_in : in std_logic_vector(15 downto 0);
    instruction_out : out std_logic_vector(15 downto 0);
    pc_in : in std_logic_vector(15 downto 0);
    pc_out : out std_logic_vector(15 downto 0);
    src1_in, src2_in : in std_logic_vector(15 downto 0);
    src1_out, src2_out : out std_logic_vector(15 downto 0);
    imme_extend_in : in std_logic_vector(15 downto 0);
    imme_extend_out : out std_logic_vector(15 downto 0);
    reg_write_num_in : in std_logic_vector(3 downto 0);
    reg_write_num_out : out std_logic_vector(3 downto 0);
    reg_num_1_in, reg_num_2_in : in std_logic_vector(3 downto 0);
    reg_num_1_out, reg_num_2_out : out std_logic_vector(3 downto 0);
    use_reg_1_or_not_in, use_reg_2_or_not_in : in std_logic;
    use_reg_1_or_not_out, use_reg_2_or_not_out : out std_logic;
	 bypasssrc1_in : in std_logic_vector(1 downto 0);
	 bypasssrc1_out : out std_logic_vector(1 downto 0)
  );
end component;

component if_id
port(
    clk : in std_logic;
    instruction_in : in std_logic_vector(15 downto 0);
    pc_in : in std_logic_vector(15 downto 0);
    content_flush_or_not : in std_logic;
    insert_nop : in std_logic;
    instruction_out : out std_logic_vector(15 downto 0);
    pc_out : out std_logic_vector(15 downto 0)
  );
end component;

component mem_wb
port(
    clk : in STD_LOGIC;
    pc_in : in STD_LOGIC_VECTOR (15 downto 0);
    pc_out : out STD_LOGIC_VECTOR (15 downto 0);
    flag_extend_in : in STD_LOGIC_VECTOR (15 downto 0);
    flag_extend_out : out STD_LOGIC_VECTOR (15 downto 0);
    readData_in : in STD_LOGIC_VECTOR (15 downto 0);
    readData_out : out STD_LOGIC_VECTOR (15 downto 0);
    wbop_in : in STD_LOGIC_vector(1 downto 0);
    wbop_out : out STD_LOGIC_vector(1 downto 0);
    wboe_in : in STD_LOGIC;
    wboe_out : out STD_LOGIC;
    alures_in : in STD_LOGIC_VECTOR (15 downto 0);
    alures_out : out STD_LOGIC_VECTOR (15 downto 0);
    reg_write_num_in : in STD_LOGIC_VECTOR(3 downto 0);
    reg_write_num_out : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

component memoryvisitor
port(
    clk : in std_logic;
    ram1_en : out std_logic;
    ram1_we : out std_logic;
    ram1_oe : out std_logic;
    ram2_en : out std_logic ;
    ram2_we : out std_logic ;
    ram2_oe : out std_logic ;
    ram1_addr : out std_logic_vector(17 downto 0);
    ram2_addr : out std_logic_vector(17 downto 0);
    ram1_data : inout std_logic_vector(15 downto 0);
    ram2_data : inout std_logic_vector(15 downto 0);
    ram_addr_read : in std_logic_vector(15 downto 0);
    ram_addr_write_and_read : in std_logic_vector(15 downto 0);
    ram_data_out_read_only : out std_logic_vector(15 downto 0);
    ram_data_out_write_and_read : out std_logic_vector(15 downto 0);
    ram_data_in_write_and_read : in std_logic_vector(15 downto 0);
    MEMRead, MEMWrite : in std_logic;
    rdn : out std_logic ; 
	 wrn : out std_logic ;
    dataready : in std_logic;
	 tsre, tbre: in std_logic;
	 disp : out std_logic_vector(6 downto 0);
	 instruction : out std_logic_vector(15 downto 0)
  );
end component;

component mulmux
port(
    instruction_in : in std_logic_vector(15 downto 0);
    pc_imme_in : in std_logic_vector(15 downto 0);
    pc_reg_in : in std_logic_vector(15 downto 0);
    pc_out : out std_logic_vector(15 downto 0);
    jump_en : out std_logic 
  );
end component;

component mux2
port(
	input1: in std_logic_vector;
	input2: in std_logic_vector;
	op: in std_logic;
	outsrc: out std_logic_vector
  );
end component;

component mux3
  port(
   input1: in std_logic_vector(15 downto 0);
	input2: in std_logic_vector(15 downto 0);
	input3: in std_logic_vector(15 downto 0);
	op: in std_logic_vector(1 downto 0);
	outsrc: out std_logic_vector(15 downto 0)
	);
end component;

component mux4 
port(
	input1: in std_logic_vector(15 downto 0) ;
	input2: in std_logic_vector(15 downto 0) ;
	input3: in std_logic_vector(15 downto 0) ;
	input4: in std_logic_vector(15 downto 0) ;
	op: in std_logic_vector(1 downto 0);
	outsrc: out std_logic_vector(15 downto 0)
	);
end component;

component pcadder
port(
   pc_in: in std_logic_vector(15 downto 0);
	pc_out: out std_logic_vector(15 downto 0)
	);
end component;

component pc
  port(
    clk : in std_logic;
    pc_in : in std_logic_vector(15 downto 0);
    pc_write : in std_logic;
    pc_out : out std_logic_vector(15 downto 0)
  );
end component;

component registers
port(
	clk: in std_logic;
	reg_num_1: in std_logic_vector(3 downto 0);
	reg_num_2: in std_logic_vector(3 downto 0);
	reg_write_num: in std_logic_vector(3 downto 0);
	reg_write_data: in std_logic_vector(15 downto 0);
	write_oe: in std_logic;
	reg_data_1: out std_logic_vector(15 downto 0);
	reg_data_2: out std_logic_vector(15 downto 0)
);
end component;

signal pcadder_out : std_logic_vector(15 downto 0) := "0000000000000000"; --pcadder's output
signal mulmux_next_pc_out : std_logic_vector(15 downto 0) := "0000000000000000"; --mulmux's output, pc's possible next value
signal pc_op : std_logic := '0'; --pc's selector from hazard
signal next_pc : std_logic_vector(15 downto 0) := "0000000000000000"; --next pc value
signal clk_divide : std_logic := '0'; --clk signal after four divide
signal pc_write_en : std_logic:='1'; --pc write enabled signal from hazard
signal pc_reg_value : std_logic_vector(15 downto 0):= "0000000000000000"; --pc reg value, at IF stage
signal mem_alures : std_logic_vector(15 downto 0) := "0000000000000000"; --exe_mem's alures output
signal if_instruction : std_logic_vector(15 downto 0):= "0000000000000000"; --memory's output, instruction
signal mem_read_data : std_logic_vector(15 downto 0):= "0000000000000000"; --mem's read data
signal mem_write_data : std_logic_vector(15 downto 0):= "0000000000000000"; --write data during mem's stage
signal mem_read : std_logic := '0';
signal mem_write : std_logic :='0' ; --controll signal, during mem stage
signal hazard_if_id_flush : std_logic := '1'; --if_id's controll signal from hazard unit
signal hazard_if_id_insert_nop : std_logic := '0'; --if_id's controll signal from hazard unit
signal hazard_id_exe_insert_nop : std_logic:= '0'; --id_exe's controll signal from hazard unit
signal id_instruction : std_logic_vector(15 downto 0):= "0000000000000000"; --instruction during id stage
signal id_pcadder : std_logic_vector(15 downto 0):= "0000000000000000"; --pcadder's value durring id stage
signal id_reg_num_1: std_logic_vector(3 downto 0) := "0000";
signal id_reg_num_2: std_logic_vector(3 downto 0) := "0000";
signal id_reg_write_num : std_logic_vector(3 downto 0) := "0000"; --regs in id stage
signal id_imme : std_logic_vector(10 downto 0) := "00000000000"; --imme before extend during id stage
signal id_imme_extend : std_logic_vector(15 downto 0) := "0000000000000000"; --imme after extend during id stage
signal id_use_reg1_or_not : std_logic := '0';
signal id_use_reg2_or_not : std_logic := '0'; --use signal during id stage
signal id_aluop : std_logic_vector(3 downto 0) := "0000"; --aluop signal during id stage
signal id_alusrc2 : std_logic := '0'; --alusrc2 signal during id stage
signal id_bypasssrc1 : std_logic_vector(1 downto 0) := "00"; --bypass signal during id stage
signal id_read : std_logic :='0';
signal id_write : std_logic := '0'; --read and write enabled signal during id stage
signal id_write_en : std_logic :='0'; --write back enabled signal during id stage
signal id_wbop : std_logic_vector(1 downto 0) := "00"; --wbop signal during id stage
signal wb_wbdata : std_logic_vector(15 downto 0) := "0000000000000000"; --write back data during WB stage
signal wb_write_en : std_logic := '0'; --write back enabled signal during WB stage
signal wb_reg_write_num : std_logic_vector(3 downto 0) := "0000"; --reg_write_num during wb stage
signal id_reg1_data : std_logic_vector(15 downto 0) := "0000000000000000";
signal id_reg2_data : std_logic_vector(15 downto 0) := "0000000000000000"; --reg1,2's data during ID stage
signal exe_reg_write_num : std_logic_vector(3 downto 0) := "0000"; --write back reg num during exe stage
signal exe_read : std_logic := '0';
signal exe_write : std_logic := '0'; --read and write enabled signal during exe stage
signal exe_jump_en : std_logic := '0'; --jump enabled signal during exe stage
signal exe_aluop : std_logic_vector(3 downto 0) := "0000"; --alu op signal during exe stage
signal exe_alusrc2 : std_logic := '0'; -- alusrc2 signal during exe stage
signal exe_wbop : std_logic_vector(1 downto 0) := "11"; --write back op signal during exe stage
signal exe_write_en : std_logic := '0'; --write back  enabled signal
signal exe_instruction : std_logic_vector(15 downto 0) := "0000000000000000"; --instruction during exe stage
signal exe_pcadder : std_logic_vector(15 downto 0) := "0000000000000000"; --pcadder output during exe stage
signal exe_reg1_data : std_logic_vector(15 downto 0) := "0000000000000000";
signal exe_reg2_data : std_logic_vector(15 downto 0) := "0000000000000000"; -- value of reg1 and reg2 during exe stage
signal exe_imme_extend : std_logic_vector(15 downto 0) := "0000000000000000"; --imme during exe stage
signal exe_reg_num_1 : std_logic_vector(3 downto 0) := "0000";
signal exe_reg_num_2 : std_logic_vector(3 downto 0) := "0000"; --reg1 and reg2's num during exe stage
signal exe_use_reg1_or_not : std_logic := '0';
signal exe_use_reg2_or_not : std_logic := '0'; --use signal during exe stage
signal exe_bypasssrc1 : std_logic_vector(1 downto 0) := "00"; --bypasssrc signal during exe stage
signal exe_reg2_imme_select : std_logic_vector(15 downto 0) := "0000000000000000"; --reg2 and imme after selection
signal mem_alures_flag_pc_select : std_logic_vector(15 downto 0) := "0000000000000000"; --alures, flag, pc after selection
signal bypass_op_1 : std_logic_vector(1 downto 0) := "00";
signal bypass_op_2 : std_logic_vector(1 downto 0) := "00";
signal bypass_op_3 : std_logic_vector(1 downto 0) := "00"; --bypass controll signal
signal exe_reg1_bypass_select : std_logic_vector(15 downto 0) := "0000000000000000";
signal exe_reg2_imme_bypass_select : std_logic_vector(15 downto 0) := "0000000000000000";
signal exe_reg2_bypass_select : std_logic_vector(15 downto 0) := "0000000000000000"; --reg1 and bypass select
signal exe_alures : std_logic_vector(15 downto 0) := "0000000000000000"; --alu res during exe stage
signal exe_flag : std_logic_vector(3 downto 0) := "0000"; --flag signal during exe stage
signal exe_pc_imme_add : std_logic_vector(15 downto 0) := "0000000000000000"; --pc and imme add result
signal mem_write_en : std_logic := '0'; --write enabled signal during mem stage
signal mem_reg_write_num : std_logic_vector(3 downto 0) := "0000"; --write num during mem stage
signal mem_pcadder : std_logic_vector(15 downto 0)  := "0000000000000000"; --pcadder during mem stage
signal mem_wbop : std_logic_vector(1 downto 0) := "00"; --wbop signal during mem stage
signal mem_instruction : std_logic_vector(15 downto 0)  := "0000000000000000"; --instruction during mem stage
signal mem_flag : std_logic_vector(3 downto 0) := "0000"; --flag during mem stage
signal mem_bypasssrc1 : std_logic_vector(1 downto 0) := "00"; --bypasssrc1 signal during mem stage
signal mem_flag_extend : std_logic_vector(15 downto 0) := "0000000000000000"; -- flag res from ctrl
signal wb_pcadder : std_logic_vector(15 downto 0) := "0000000000000000"; --pc during wb stage
signal wb_flag_extend: std_logic_vector(15 downto 0) := "0000000000000000"; --flag extend during wb stage
signal wb_read_data : std_logic_vector(15 downto 0) := "0000000000000000"; --read data during wb stage
signal wb_wbop : std_logic_vector(1 downto 0) := "11"; --wbop during wb stage
signal wb_alures : std_logic_vector(15 downto 0) := "0000000000000000"; --alures during wb stage
signal clk_s : std_logic := '0';

begin

module_clk_4 : clk_4 port map(
   clk_in => clk,
   clk_out => clk_divide
);

module_pc_mux : mux2 port map(
   input1 => pcadder_out,
	input2 => mulmux_next_pc_out,
	op => pc_op,
	outsrc => next_pc
);

module_pc_reg : pc port map(
    clk => clk_divide,
    pc_in => next_pc,
    pc_write => pc_write_en,
    pc_out => pc_reg_value
);

module_inst_data_memory : memoryvisitor port map(
    clk => clk,
    ram1_en => en_ram1,
    ram1_we => we_ram1,
    ram1_oe => oe_ram1,
    ram2_en => en_ram2, 
    ram2_we => we_ram2,
    ram2_oe => oe_ram2,
    ram1_addr => addr_ram1,
    ram2_addr => addr_ram2,
    ram1_data => data_ram1, 
    ram2_data => data_ram2,
    ram_addr_read => pc_reg_value,
    ram_addr_write_and_read => mem_alures,
    ram_data_out_read_only => if_instruction,
    ram_data_out_write_and_read => mem_read_data,
    ram_data_in_write_and_read => mem_write_data,
    MEMRead => mem_read,
	 MEMWrite => mem_write,
    rdn => com_rdn,
	 wrn => com_wrn,
    dataready => com_data_ready,
	 tsre => com_tsre,
	 tbre => com_tbre,
	 disp => disp_g,
	 instruction => inst
);

module_pcadder : pcadder port map(
   pc_in => pc_reg_value,
	pc_out => pcadder_out
);

module_if_id : if_id port map(
    clk => clk_divide,
    instruction_in => if_instruction,
    pc_in => pcadder_out,
    content_flush_or_not => hazard_if_id_flush,
    insert_nop => hazard_if_id_insert_nop,
    instruction_out => id_instruction,
    pc_out => id_pcadder
);

module_decoder : decoder port map(
    instruction_in => id_instruction,
    reg_num_1 => id_reg_num_1,
    reg_num_2 => id_reg_num_2,
    immediate => id_imme,
    use_reg_1_or_not => id_use_reg1_or_not,
    use_reg_2_or_not => id_use_reg2_or_not,
    reg_write_num => id_reg_write_num,
    aluop => id_aluop,
    alusrc2 => id_alusrc2,
	 bypasssrc1 => id_bypasssrc1,
    MEMRead => id_read,
    MEMWrite => id_write,
    write_en => id_write_en,
    wbop => id_wbop
);

module_registers : registers port map(
   clk => clk_divide,
	reg_num_1 => id_reg_num_1,
	reg_num_2 => id_reg_num_2,
	reg_write_num => wb_reg_write_num,
	reg_write_data => wb_wbdata,
	write_oe => wb_write_en,
	reg_data_1 => id_reg1_data,
	reg_data_2 => id_reg2_data
);

module_extend : extend port map(
    immediate => id_imme,
	 imme_extend => id_imme_extend
);

module_hazard : hazard port map(
    load_reg_num => exe_reg_write_num,
    use_reg_1_or_not => id_use_reg1_or_not,
	 use_reg_2_or_not => id_use_reg2_or_not,
    reg_num_1 => id_reg_num_1,
	 reg_num_2 => id_reg_num_2,
    MEMRead => exe_read,
    jump_en => exe_jump_en,
    pc_write => pc_write_en,
    IF_ID_flush => hazard_if_id_flush,
    IF_ID_nop => hazard_if_id_insert_nop,
    ID_EXE_nop => hazard_id_exe_insert_nop,
    op_pc => pc_op
);

module_id_exe : id_exe port map(
    clk => clk_divide,
    insert_nop => hazard_id_exe_insert_nop,
    aluop_in => id_aluop,
    aluop_out => exe_aluop,
    alusrc2_in => id_alusrc2,
    alusrc2_out => exe_alusrc2,
    MEMRead_in => id_read,
    MEMRead_out => exe_read,
    MEMWrite_in => id_write,
    MEMWrite_out => exe_write,
    write_op_in => id_wbop,
    write_op_out => exe_wbop,
    write_oe_in => id_write_en,
    write_oe_out => exe_write_en,
    instruction_in => id_instruction,
    instruction_out => exe_instruction,
    pc_in => id_pcadder,
    pc_out => exe_pcadder,
    src1_in =>id_reg1_data,
	 src2_in => id_reg2_data,
    src1_out => exe_reg1_data,
	 src2_out => exe_reg2_data,
    imme_extend_in => id_imme_extend,
    imme_extend_out => exe_imme_extend,
    reg_write_num_in => id_reg_write_num,
    reg_write_num_out => exe_reg_write_num,
    reg_num_1_in => id_reg_num_1,
	 reg_num_2_in => id_reg_num_2,
    reg_num_1_out => exe_reg_num_1,
	 reg_num_2_out => exe_reg_num_2,
    use_reg_1_or_not_in => id_use_reg1_or_not,
	 use_reg_2_or_not_in => id_use_reg2_or_not,
    use_reg_1_or_not_out => exe_use_reg1_or_not,
	 use_reg_2_or_not_out => exe_use_reg2_or_not,
	 bypasssrc1_in => id_bypasssrc1,
	 bypasssrc1_out => exe_bypasssrc1
);

module_mux_reg2_imme : mux2 port map(
   input1 => exe_reg2_data,
	input2 => exe_imme_extend,
	op => exe_alusrc2,
	outsrc => exe_reg2_imme_select
);

module_mux_alusrc1 : mux3 port map(
   input1 => exe_reg1_data,
	input2 => mem_alures_flag_pc_select,
	input3 => wb_wbdata,
	op => bypass_op_1,
	outsrc => exe_reg1_bypass_select
);

module_mux_alusrc2 : mux3 port map(
   input1 => exe_reg2_imme_select,
	input2 => mem_alures_flag_pc_select,
	input3 => wb_wbdata,
	op => bypass_op_2,
	outsrc => exe_reg2_imme_bypass_select
);

module_mux_writedata : mux3 port map(
   input1 => exe_reg2_data,
	input2 => mem_alures_flag_pc_select,
	input3 => wb_wbdata,
	op => bypass_op_3,
	outsrc => exe_reg2_bypass_select
);

module_alu : alu port map(
   input1 => exe_reg1_bypass_select,
   input2 => exe_reg2_imme_bypass_select,
   aluOp => exe_aluop,
   aluRes => exe_alures,
   flag => exe_flag
);

module_adder : adder port map(
   pc => exe_pcadder,
	imme => exe_imme_extend,
	pc_imme => exe_pc_imme_add
);

module_mulmux : mulmux port map(
   instruction_in => exe_instruction,
   pc_imme_in => exe_pc_imme_add,
   pc_reg_in => exe_reg1_bypass_select,
   pc_out => mulmux_next_pc_out,
   jump_en => exe_jump_en
);

module_bypass : bypass port map(
    reg_num_1 => exe_reg_num_1,
    reg_num_2 => exe_reg_num_2,
    use_reg_1_or_not => exe_use_reg1_or_not,
    use_reg_2_or_not => exe_use_reg2_or_not,
    write_en_1 => mem_write_en,
    write_en_2 => wb_write_en,
    reg_write_num_1 => mem_reg_write_num,
    reg_write_num_2 => wb_reg_write_num,
    MEMWrite => exe_write,
    op_1 => bypass_op_1,
    op_2 => bypass_op_2,
    op_3 => bypass_op_3
);

module_exe_mem : exe_mem port map(
  clk => clk_divide,
  pc_in => exe_pcadder,
  pc_out => mem_pcadder,
  write_op_in => exe_wbop,
  write_op_out => mem_wbop,
  instruction_in => exe_instruction,
  instruction_out => mem_instruction,
  flag_in => exe_flag,
  flag_out => mem_flag,
  write_oe_in => exe_write_en,
  write_oe_out => mem_write_en,
  MEMRead_in => exe_read, 
  MEMRead_out => mem_read,
  MEMWrite_in => exe_write,
  MEMWrite_out => mem_write,
  alures_in => exe_alures,
  alures_out => mem_alures,
  writeData_in => exe_reg2_bypass_select,
  writeData_out => mem_write_data,
  reg_write_num_in => exe_reg_write_num,
  reg_write_num_out => mem_reg_write_num,
  bypasssrc1_in => exe_bypasssrc1,
  bypasssrc1_out => mem_bypasssrc1
);

module_mux_bypasssrc1 : mux3 port map(
   input1 => mem_alures,
	input2 => mem_flag_extend,
	input3 => mem_pcadder,
	op => mem_bypasssrc1,
	outsrc => mem_alures_flag_pc_select
);

module_ctrl : ctrl port map(
    instruction => mem_instruction,
    flag => mem_flag,
    res => mem_flag_extend
);

module_mem_wb : mem_wb port map(
    clk => clk_divide,
    pc_in => mem_pcadder,
    pc_out => wb_pcadder,
    flag_extend_in => mem_flag_extend,
    flag_extend_out => wb_flag_extend,
    readData_in => mem_read_data,
    readData_out => wb_read_data,
    wbop_in => mem_wbop,
    wbop_out => wb_wbop,
    wboe_in => mem_write_en,
    wboe_out => wb_write_en,
    alures_in => mem_alures,
    alures_out => wb_alures,
    reg_write_num_in => mem_reg_write_num,
    reg_write_num_out => wb_reg_write_num
);

module_mux_writeback : mux4 port map(
   input1 => wb_pcadder,
	input2 => wb_flag_extend,
	input3 => wb_read_data,
	input4 => wb_alures,
	op => wb_wbop,
	outsrc => wb_wbdata
);

end Behavioral;