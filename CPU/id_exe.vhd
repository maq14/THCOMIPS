----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:29:38 11/26/2016 
-- Design Name: 
-- Module Name:    id_exe - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity id_exe is
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
end id_exe;

architecture Behavioral of id_exe is

begin
process(clk)
      begin
        if(clk'event and clk = '1') then
          if(insert_nop = '1') then
			   aluop_out <= "0000";
				alusrc2_out <= '0';
				write_op_out <= "11";
				instruction_out <= "0000100000000000";
				pc_out <= "0000000000000000";
				src1_out <= "0000000000000000";
				src2_out <= "0000000000000000";
				imme_extend_out <= "0000000000000000";
				reg_write_num_out <= "0000";
				reg_num_1_out <= "0000";
				reg_num_2_out <= "1111";
				use_reg_1_or_not_out <= '0';
				use_reg_2_or_not_out <= '0';
				bypasssrc1_out <= "00";
            MEMRead_out <= '0';
            MEMWrite_out <= '0';
            write_oe_out <= '0';
          else
            aluop_out <= aluop_in;
            alusrc2_out <= alusrc2_in;
            MEMRead_out <= MEMRead_in;
            MEMWrite_out <= MEMWrite_in;
            write_op_out <= write_op_in;
            write_oe_out <= write_oe_in;
            instruction_out <= instruction_in;
            pc_out <= pc_in;
            src1_out <= src1_in;
            src2_out <= src2_in;
            imme_extend_out <= imme_extend_in;
            reg_write_num_out <= reg_write_num_in;
            reg_num_1_out <= reg_num_1_in;
            reg_num_2_out <= reg_num_2_in;
            use_reg_1_or_not_out <= use_reg_1_or_not_in;
            use_reg_2_or_not_out <= use_reg_2_or_not_in;
				bypasssrc1_out <= bypasssrc1_in;
          end if;
        end if;
    end process;

end Behavioral;

