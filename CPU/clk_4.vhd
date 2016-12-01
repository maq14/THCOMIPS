----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:32 11/26/2016 
-- Design Name: 
-- Module Name:    clk_4 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_4 is
  port(
    clk_in : in std_logic;
    clk_out : inout std_logic
  );
end clk_4;

architecture Behavioral of clk_4 is
  signal count : std_logic_vector(1 downto 0) := "00";
begin
  clk_out <= count(1) xor count(0);  
  process(clk_in)
  begin
    if(clk_in'event and clk_in = '1') then
      if(count = "11") then
        count <= "00";
      else
        count <= count + "01";
      end if;
    end if;
  end process;
end Behavioral;

