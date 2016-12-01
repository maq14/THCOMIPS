----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:31:47 12/01/2016 
-- Design Name: 
-- Module Name:    clk_2 - Behavioral 
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

entity clk_2 is
  port(
    clk_in : in std_logic;
	 clk_out : out std_logic
  );
end clk_2;

architecture Behavioral of clk_2 is
  signal temp : std_logic := '0';
begin
  clk_out <= temp;
  process(clk_in)
  begin
    if(clk_in'event and clk_in ='1') then
	   temp <= not temp;
    end if;
  end process;
end Behavioral;

