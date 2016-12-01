----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:23 11/26/2016 
-- Design Name: 
-- Module Name:    bypass - Behavioral 
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

entity bypass is
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
end bypass;

architecture Behavioral of bypass is
begin
  process(reg_num_1, reg_num_2, use_reg_1_or_not, use_reg_2_or_not, write_en_1, write_en_2, reg_write_num_1, reg_write_num_2, MEMWrite)
    begin
      if (use_reg_1_or_not = '1') then
        if (write_en_1 = '1' and reg_num_1 = reg_write_num_1) then
          op_1 <= "01";
        elsif (write_en_2 = '1' and reg_num_1 = reg_write_num_2) then
          op_1 <= "10";
        else
          op_1 <= "00";
        end if;
      else
        op_1 <= "00";
      end if;
      if (use_reg_2_or_not = '1') then
        if (write_en_1 = '1' and reg_num_2 = reg_write_num_1) then
          if (MEMWrite = '1') then
            op_3 <= "01";
            op_2 <= "00";
          else
            op_2 <= "01";
            op_3 <= "00";
          end if;
        elsif (write_en_2 = '1' and reg_num_2 = reg_write_num_2) then
          if (MEMWrite = '1') then
            op_3 <= "10";
            op_2 <= "00";
          else
            op_2 <= "10";
            op_3 <= "00";
          end if;
        else
          op_2 <= "00";
          op_3 <= "00";
        end if;
		else
			op_2 <= "00";
			op_3 <= "00";
      end if;
  end process;
end Behavioral;

