----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:23 11/26/2016 
-- Design Name: 
-- Module Name:    exe_mem - Behavioral 
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

entity exe_mem is

port(
  clk : in STD_LOGIC;
  pc_in : in STD_LOGIC_VECTOR (15 downto 0);
  pc_out : out STD_LOGIC_VECTOR (15 downto 0);
  write_op_in : in STD_LOGIC_VECTOR (1 downto 0);
  write_op_out : out STD_LOGIC_VECTOR (1 downto 0);
  instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);
  instruction_out : out STD_LOGIC_VECTOR (15 downto 0);
  flag_in : in std_logic_vector(3 downto 0);
  flag_out : out std_logic_vector(3 downto 0);
  write_oe_in : in  STD_LOGIC;
  write_oe_out : out  STD_LOGIC;
  MEMRead_in : in  STD_LOGIC;
  MEMRead_out : out  STD_LOGIC;
  MEMWrite_in : in  STD_LOGIC;
  MEMWrite_out : out  STD_LOGIC;
  alures_in : in  STD_LOGIC_VECTOR (15 downto 0);
  alures_out : out  STD_LOGIC_VECTOR (15 downto 0);
  writeData_in : in  STD_LOGIC_VECTOR (15 downto 0);
  writeData_out : out  STD_LOGIC_VECTOR (15 downto 0);
  reg_write_num_in : in  STD_LOGIC_VECTOR(3 downto 0);
  reg_write_num_out : out  STD_LOGIC_VECTOR(3 downto 0);
  bypasssrc1_in : in std_logic_vector(1 downto 0);
  bypasssrc1_out : out std_logic_vector(1 downto 0)
  );
end exe_mem;

architecture Behavioral of exe_mem is

begin
	process (clk)
	begin
		if (clk'event and clk = '1') then
			pc_out <= pc_in;
			bypasssrc1_out <= bypasssrc1_in;
			write_op_out <= write_op_in;
			write_oe_out <= write_oe_in;
			MEMRead_out <= MEMRead_in;
			MEMWrite_out <= MEMWrite_in;
			alures_out <= alures_in;
			writeData_out <= writeData_in;
			reg_write_num_out <= reg_write_num_in;
         flag_out <= flag_in;
			instruction_out <= instruction_in;
		end if;
	end process;
end Behavioral;

