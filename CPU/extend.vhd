----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:36 11/26/2016 
-- Design Name: 
-- Module Name:    extend - Behavioral 
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

entity extend is
  port(
    immediate: in std_logic_vector(10 downto 0);
	 imme_extend: out std_logic_vector(15 downto 0)
  );
end extend;

architecture Behavioral of extend is

begin
  process(immediate)
    begin
      imme_extend(10 downto 0) <= immediate;
      imme_extend(15 downto 11) <= (others => immediate(10));
  end process;
end Behavioral;

