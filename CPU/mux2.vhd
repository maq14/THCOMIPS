----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:22 11/26/2016 
-- Design Name: 
-- Module Name:    mux2 - Behavioral 
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

entity mux2 is
  port(
	input1: in std_logic_vector;
	input2: in std_logic_vector;
	op: in std_logic;
	outsrc: out std_logic_vector
  );
end mux2;

architecture Behavioral of mux2 is

begin
	process(input1, input2, op)
	begin
	if (op = '0') then
		outsrc <= input1;
	else
		outsrc <= input2;
	end if;
	end process;

end Behavioral;

