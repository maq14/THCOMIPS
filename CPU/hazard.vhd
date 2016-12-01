----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:26:25 11/26/2016 
-- Design Name: 
-- Module Name:    hazard - Behavioral 
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

entity hazard is
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
end hazard;

architecture Behavioral of hazard is
begin
	process(load_reg_num, use_reg_1_or_not, use_reg_2_or_not, reg_num_1, reg_num_2, MEMRead, jump_en)
      begin
        if(MEMRead = '1') then
          if((use_reg_1_or_not = '1' and reg_num_1 = load_reg_num) or (use_reg_2_or_not = '1' and reg_num_2 = load_reg_num)) then
            pc_write <= '0';
            IF_ID_flush <= '0';
            IF_ID_nop <= '0';
            ID_EXE_nop <= '1';
            op_pc <= '0';
          end if;
        elsif(jump_en = '1') then
          pc_write <= '1';
          IF_ID_flush <= '1';
          IF_ID_nop <= '1';
          ID_EXE_nop <= '1'; --instruction in delay slot must be executed
          op_pc <= '1';
        else
          pc_write <= '1';
          IF_ID_flush <= '1';
          IF_ID_nop <= '0';
          ID_EXE_nop <= '0';
          op_pc <= '0';
        end if;
    end process;

end Behavioral;

