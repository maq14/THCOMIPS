----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:06:13 11/26/2016 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
  port(
    instruction : in std_logic_vector(15 downto 0);
    flag : in std_logic_vector(3 downto 0);
    res : out std_logic_vector(15 downto 0)
  );
end ctrl;
architecture Behavioral of ctrl is
  begin
    process(instruction , flag)
	 begin
      if(instruction(15 downto 11) = "11101" and instruction(4 downto 0) = "01010") then
        if(flag(3) = '1') then
          res <= "0000000000000000";
        else
          res <= "0000000000000001";
        end if;
      elsif(instruction(15 downto 11) = "11101" and instruction(4 downto 0) = "00010") then
        if(flag(2) = '1') then
          res <= "0000000000000001";
        else
          res <= "0000000000000000";
        end if;
		 else
		   res <= "1111111111111111";
      end if;
    end process;
end Behavioral;

