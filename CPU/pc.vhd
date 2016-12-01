----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:59:00 11/26/2016 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
port(
    clk : in std_logic;
    pc_in : in std_logic_vector(15 downto 0) := "0000000000000000";
    pc_write : in std_logic;
    pc_out : out std_logic_vector(15 downto 0) := "1111111111111111"
  );
end pc;

architecture Behavioral of pc is

begin
process(clk)
      begin
        if(clk'event and clk='1') then
          if(pc_write = '1') then
            pc_out <= pc_in;
          end if;
        end if;
    end process;

end Behavioral;

