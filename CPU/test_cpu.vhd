--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:21:48 11/28/2016
-- Design Name:   
-- Module Name:   C:/project/CPU/test_cpu.vhd
-- Project Name:  CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_cpu IS
END test_cpu;
 
ARCHITECTURE behavior OF test_cpu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         addr_ram1 : OUT  std_logic_vector(17 downto 0);
         en_ram1 : OUT  std_logic;
         we_ram1 : OUT  std_logic;
         oe_ram1 : OUT  std_logic;
         data_ram1 : INOUT  std_logic_vector(15 downto 0);
         addr_ram2 : OUT  std_logic_vector(17 downto 0);
         en_ram2 : OUT  std_logic;
         we_ram2 : OUT  std_logic;
         oe_ram2 : OUT  std_logic;
         data_ram2 : INOUT  std_logic_vector(15 downto 0);
         com_data_ready : IN  std_logic;
         com_rdn : OUT  std_logic;
         com_tbre : IN  std_logic;
         com_tsre : IN  std_logic;
         com_wrn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal com_data_ready : std_logic := '0';
   signal com_tbre : std_logic := '0';
   signal com_tsre : std_logic := '0';

	--BiDirs
   signal data_ram1 : std_logic_vector(15 downto 0);
   signal data_ram2 : std_logic_vector(15 downto 0);

 	--Outputs
   signal addr_ram1 : std_logic_vector(17 downto 0);
   signal en_ram1 : std_logic;
   signal we_ram1 : std_logic;
   signal oe_ram1 : std_logic;
   signal addr_ram2 : std_logic_vector(17 downto 0);
   signal en_ram2 : std_logic;
   signal we_ram2 : std_logic;
   signal oe_ram2 : std_logic;
   signal com_rdn : std_logic;
   signal com_wrn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          addr_ram1 => addr_ram1,
          en_ram1 => en_ram1,
          we_ram1 => we_ram1,
          oe_ram1 => oe_ram1,
          data_ram1 => data_ram1,
          addr_ram2 => addr_ram2,
          en_ram2 => en_ram2,
          we_ram2 => we_ram2,
          oe_ram2 => oe_ram2,
          data_ram2 => data_ram2,
          com_data_ready => com_data_ready,
          com_rdn => com_rdn,
          com_tbre => com_tbre,
          com_tsre => com_tsre,
          com_wrn => com_wrn
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
	   wait for clk_period / 2;
		
		data_ram2 <= "0110100100000110"; --LI R1 0X06
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;
		
		data_ram2 <= "0110101000000110"; --LI R2 0X06
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;

      data_ram2 <= "1110100101001010"; --CMP R1 R2	
      com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;
		
		data_ram2 <= "0110000000001111"; --BTEQZ 00001111
      com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;
		
		data_ram2 <= "0100110000001111"; --addiu r4 0f
      com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;
		
		data_ram2 <= "0000100000000000";	
      com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;
		
		data_ram2 <= "0000100000000000";	
      com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for 4 * clk_period;
		
      wait;
   end process;

END;
