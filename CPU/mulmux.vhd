----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:40 11/26/2016 
-- Design Name: 
-- Module Name:    mulmux - Behavioral 
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

entity mulmux is
  port(
    instruction_in : in std_logic_vector(15 downto 0);
    pc_imme_in : in std_logic_vector(15 downto 0);
    pc_reg_in : in std_logic_vector(15 downto 0);
    pc_out : out std_logic_vector(15 downto 0);
    jump_en : out std_logic := '0'
  );
end mulmux;

architecture Behavioral of mulmux is
begin
process(instruction_in, pc_imme_in, pc_reg_in)
      begin
        case instruction_in(15 downto 11) is
          when "00010" => --B
            pc_out <= pc_imme_in;
            jump_en <= '1';
          when "00100" => --BEQZ
            if(pc_reg_in = "0000000000000000") then
              pc_out <= pc_imme_in;
              jump_en <= '1';
            else
              pc_out <= pc_imme_in;
              jump_en <= '0';
            end if;
          when "00101" =>
            if(pc_reg_in /= "0000000000000000") then
              pc_out <= pc_imme_in;
              jump_en <= '1';
            else
              pc_out <= pc_imme_in;
              jump_en <= '0';
            end if;
          when "11101" =>
            if(instruction_in(7 downto 0) = "00000000" or instruction_in(7 downto 0) = "00100000" or instruction_in(7 downto 0) = "11000000") then
              pc_out <= pc_reg_in;
              jump_en <= '1';
            else
              pc_out <= pc_imme_in;
              jump_en <= '0';
            end if;
			when others=>
				if(instruction_in(15 downto 8) = "01100000") then
              if(pc_reg_in = "0000000000000000") then
                pc_out <= pc_imme_in;
                jump_en <= '1';
              else
                pc_out <= pc_imme_in;
                jump_en <= '0';
              end if;
				else
				  pc_out <= pc_imme_in;
              jump_en <= '0';
            end if;
        end case;
    end process;
end Behavioral;

