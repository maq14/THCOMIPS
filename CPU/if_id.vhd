----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:33:41 11/26/2016 
-- Design Name: 
-- Module Name:    if_id - Behavioral 
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

entity if_id is
  port(
    clk : in std_logic;
    instruction_in : in std_logic_vector(15 downto 0);
    pc_in : in std_logic_vector(15 downto 0);
    content_flush_or_not : in std_logic;
    insert_nop : in std_logic;
    instruction_out : out std_logic_vector(15 downto 0);
    pc_out : out std_logic_vector(15 downto 0)
  );
end if_id;

architecture Behavioral of if_id is

begin
process(clk)
      begin
        if(clk'event and clk='1') then
          if(content_flush_or_not = '1') then
            if(insert_nop = '1') then
              instruction_out <= "0000100000000000";
              pc_out <= pc_in;
            else
              instruction_out <= instruction_in;
              pc_out <= pc_in;
            end if;
          end if;
        end if;
    end process;

end Behavioral;

