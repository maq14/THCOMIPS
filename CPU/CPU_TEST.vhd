--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:12:58 11/27/2016
-- Design Name:   
-- Module Name:   C:/project/CPU/CPU_TEST.vhd
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
 
ENTITY CPU_TEST IS
END CPU_TEST;
 
ARCHITECTURE behavior OF CPU_TEST IS 
 
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
   constant clk_period : time := 20 ns;
 
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100101000000";	--LI R1 40			6940
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0011000100100000";	--SLL R1 R1 0000	3120
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110101010000000";	--LI R2 80
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101100101000000";	--SW R1 R2 0000
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110101100000001";	--LI R3 01
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110101100000010";	--LI R3 02
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110101100000011";	--LI R3 03
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110101100000100";	--LI R3 04
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  --kernel
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000000000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000000000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0001000001000100";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1111000000000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100010111111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0011000000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0100100000010000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110010000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111010111111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0011011011000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0100111000010000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000010";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;		
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000011";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000100";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000101";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110111101000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0100111100000011";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0001000001001010";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111010111111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111010111111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0011011011000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0100111000000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1001111000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111000000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110100011001100";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0010000011111000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110111100000000";	--JR R7
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
	  
	  
	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	  
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110111101000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110111101000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110111101000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110111101000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  -- test of JR
-------------------------------------------TESTW		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;

--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111010111111";  -- LI R6 BF 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;

--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0011011011000000";  -- SLL R6 R6 0x0000 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0100111000000001";	--ADDIU R6 0x0001 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "1001111000000000";	--LW R6 R0 0x0000 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111000000001";	--LI R6 0x0001 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110100011001100";	--AND R0 R6 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0010000011111000";	--BEQZ R0 TESTW
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;

-------------------------------------------???IM?		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000001";  -- LI R0 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000010";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
--		data_ram1 <= "0000000000000000";
		--data_ram2 <= "1001100101000001";  -- LW from IM  OK
		data_ram2 <= "1101100100000001";  -- SW to  
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100100000011";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100100000100";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100100000101";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100100000111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;	
		
		
-------------------------------------------????  OK
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000001";  -- LI R0 
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000010";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0010000000001111"; --BEQZ R0 1111
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		wait for clk_period;
		
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000100";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000101";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		
		
-------------------------------------------???		OK


		data_ram1 <= "0000000000000000";
		data_ram2 <= "1001100100000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000000101001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000000101001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;		
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000000101001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
-------------------------------------------???		
		
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000101000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110001000100001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		
		
		
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1001100000100010";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1001100001000011";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000101000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110001000100001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000101000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110001000100001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110000101000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1110001000100001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
			   
			   
	  
	  
	  
	  --kernel
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000000000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000000000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0001000001000100";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100000000111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1111000000000001";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110100010111111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		
		
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0000100000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0110111010111111";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0011011011000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "0100111000010000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
		data_ram1 <= "0000000000000000";
		data_ram2 <= "1101111000000000";
		com_data_ready <= '1';
		com_tbre <= '1';
		com_tsre <= '1';
		wait for clk_period;
		
      wait;
   end process;

END;
