----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:49 11/26/2016 
-- Design Name: 
-- Module Name:    registers - Behavioral 
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

entity registers is
port(
	clk: in std_logic;
	reg_num_1: in std_logic_vector(3 downto 0);
	reg_num_2: in std_logic_vector(3 downto 0);
	reg_write_num: in std_logic_vector(3 downto 0) := "0000";
	reg_write_data: in std_logic_vector(15 downto 0);
	write_oe: in std_logic := '0';
	reg_data_1: out std_logic_vector(15 downto 0);
	reg_data_2: out std_logic_vector(15 downto 0)
);
end registers;

architecture Behavioral of registers is
   signal r0: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r1: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r2: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r3: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r4: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r5: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r6: std_logic_vector(15 downto 0) := "0000000000000000";
	signal r7: std_logic_vector(15 downto 0) := "0000000000000000";
	signal zero: std_logic_vector(15 downto 0) := "0000000000000000";
	signal T: std_logic_vector(15 downto 0) := "0000000000000000";
	signal SP: std_logic_vector(15 downto 0) := "0000000000000000";
	signal IH: std_logic_vector(15 downto 0) := "0000000000000000";
begin
process(clk)
	begin
		if(clk'event and clk = '0') then
			if (write_oe = '1') then
				case reg_write_num is
					when "0000" => r0 <= reg_write_data;
					when "0001" => r1 <= reg_write_data;
					when "0010" => r2 <= reg_write_data;
					when "0011" => r3 <= reg_write_data;
					when "0100" => r4 <= reg_write_data;
					when "0101" => r5 <= reg_write_data;
					when "0110" => r6 <= reg_write_data;
					when "0111" => r7 <= reg_write_data;
					when "1000" => T <= reg_write_data;
					when "1001" => SP <= reg_write_data;
					when "1010" => IH <= reg_write_data;
					when others => null;
				end case;
			end if;
		end if;
	end process;

	process(reg_num_1, r0, r1, r2, r3, r4, r5, r6, r7, T, SP, IH, zero)
	begin
		case reg_num_1 is
			when "0000" => reg_data_1 <= r0;
			when "0001" => reg_data_1 <= r1;
			when "0010" => reg_data_1 <= r2;
			when "0011" => reg_data_1 <= r3;
			when "0100" => reg_data_1 <= r4;
			when "0101" => reg_data_1 <= r5;
			when "0110" => reg_data_1 <= r6;
			when "0111" => reg_data_1 <= r7;
			when "1000" => reg_data_1 <= T;
			when "1001" => reg_data_1 <= SP;
			when "1010" => reg_data_1 <= IH;
			when "1111" => reg_data_1 <= zero;
			when others => null;
		end case;
	end process;

	process(reg_num_2, r0, r1, r2, r3, r4, r5, r6, r7, T, SP, IH, zero)
	begin
		case reg_num_2 is
			when "0000" => reg_data_2 <= r0;
			when "0001" => reg_data_2 <= r1;
			when "0010" => reg_data_2 <= r2;
			when "0011" => reg_data_2 <= r3;
			when "0100" => reg_data_2 <= r4;
			when "0101" => reg_data_2 <= r5;
			when "0110" => reg_data_2 <= r6;
			when "0111" => reg_data_2 <= r7;
			when "1000" => reg_data_2 <= T;
			when "1001" => reg_data_2 <= SP;
			when "1010" => reg_data_2 <= IH;
			when "1111" => reg_data_2 <= zero;
			when others => null;
		end case;
	end process;

end Behavioral;

