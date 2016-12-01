----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:59:51 11/26/2016 
-- Design Name: 
-- Module Name:    pcadder - Behavioral 
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

entity pcadder is
port(
	pc_in: in std_logic_vector(15 downto 0);
	pc_out: out std_logic_vector(15 downto 0)
	);
end pcadder;

architecture Behavioral of pcadder is

begin
process(pc_in)
	begin
		pc_out <= pc_in + "0000000000000001";
	end process;
end Behavioral;

