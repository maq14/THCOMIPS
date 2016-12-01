----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:57:50 11/26/2016 
-- Design Name: 
-- Module Name:    mux4 - Behavioral 
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

entity mux4 is
  port(
	input1: in std_logic_vector(15 downto 0);
	input2: in std_logic_vector(15 downto 0);
	input3: in std_logic_vector(15 downto 0);
	input4: in std_logic_vector(15 downto 0);
	op: in std_logic_vector(1 downto 0);
	outsrc: out std_logic_vector(15 downto 0)
	);
end mux4;

architecture Behavioral of mux4 is

begin
process(input1, input2, input3, input4, op)
	begin
		case op is
			when "00" => outsrc <= input1;
			when "01" => outsrc <= input2;
			when "10" => outsrc <= input3;
			when "11" => outsrc <= input4;
			when others => outsrc <= "ZZZZZZZZZZZZZZZZ";
		end case;
	end process;

end Behavioral;

