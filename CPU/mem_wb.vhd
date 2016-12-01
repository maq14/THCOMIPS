----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:34:55 11/26/2016 
-- Design Name: 
-- Module Name:    mem_wb - Behavioral 
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

entity mem_wb is
  port(
    clk : in STD_LOGIC;
    pc_in : in STD_LOGIC_VECTOR (15 downto 0);
    pc_out : out STD_LOGIC_VECTOR (15 downto 0);
    flag_extend_in : in STD_LOGIC_VECTOR (15 downto 0);
    flag_extend_out : out STD_LOGIC_VECTOR (15 downto 0);
    readData_in : in STD_LOGIC_VECTOR (15 downto 0);
    readData_out : out STD_LOGIC_VECTOR (15 downto 0);
    wbop_in : in std_logic_vector(1 downto 0);
    wbop_out : out std_logic_vector(1 downto 0);
    wboe_in : in STD_LOGIC;
    wboe_out : out STD_LOGIC;
    alures_in : in STD_LOGIC_VECTOR (15 downto 0);
    alures_out : out STD_LOGIC_VECTOR (15 downto 0);
    reg_write_num_in : in STD_LOGIC_VECTOR(3 downto 0);
    reg_write_num_out : out STD_LOGIC_VECTOR(3 downto 0)
  );
end mem_wb;

architecture Behavioral of mem_wb is
begin
process (clk)
	begin
		if (clk'event and clk = '1') then
			pc_out <= pc_in;
			wbop_out <= wbop_in;
			wboe_out <= wboe_in;
			flag_extend_out <= flag_extend_in;
			alures_out <= alures_in;
			readData_out <= readData_in;
			reg_write_num_out <= reg_write_num_in;
		end if;
	end process;
end Behavioral;

