----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:36:46 11/26/2016 
-- Design Name: 
-- Module Name:    memoryvisitor - Behavioral 
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

entity memoryvisitor is
  port(
    clk : in std_logic;
    ram1_en : out std_logic;
    ram1_we : out std_logic;
    ram1_oe : out std_logic;
    ram2_en : out std_logic;
    ram2_we : out std_logic := '1';
    ram2_oe : out std_logic := '1';
    ram1_addr : out std_logic_vector(17 downto 0);
    ram2_addr : out std_logic_vector(17 downto 0);
    ram1_data : inout std_logic_vector(15 downto 0);
    ram2_data : inout std_logic_vector(15 downto 0);
    ram_addr_read : in std_logic_vector(15 downto 0) := "0000000000000000";
    ram_addr_write_and_read : in std_logic_vector(15 downto 0) := "0000000000000000";
    ram_data_out_read_only : out std_logic_vector(15 downto 0) := "0000000000000000";
    ram_data_out_write_and_read : out std_logic_vector(15 downto 0) := "0000000000000000";
    ram_data_in_write_and_read : in std_logic_vector(15 downto 0) := "0000000000000000";
    MEMRead : in std_logic := '0'; 
	 MEMWrite : in std_logic := '0';
    rdn : out std_logic := '1';
	 wrn : out std_logic := '1';
    dataready : in std_logic := '1';
	 tsre : in std_logic := '1';
	 tbre: in std_logic := '1';
	 disp : out std_logic_vector(6 downto 0);
	 instruction : out std_logic_vector(15 downto 0)
  );
end memoryvisitor;

architecture Behavioral of memoryvisitor is

  type state is (pre_pc, read_pc, pre_data, read_or_write_data);
  signal temp_state : state := pre_pc;
  signal inst : std_logic_vector(15 downto 0) := "0000000000000000";
  signal oe, we : std_logic := '1';
  signal judge : std_logic_vector(1 downto 0) := "00";
  signal we_tmp : std_logic := '1';
  signal oe_tmp : std_logic := '1';
  
  begin
  
    ram1_en <= '1';
    ram1_oe <= '1';
    ram1_we <= '1';
    ram2_en <= '0';
	 ram2_oe <= oe;
	 ram2_we <= we;
	 instruction <= inst;
	 ram2_addr(17) <= '0';
	 ram2_addr(16) <= '0';
	 
	 judge <= MEMRead & MEMWrite;
	 with judge select
	     ram1_data <= "ZZZZZZZZZZZZZZZZ" when "10",
		  ram_data_in_write_and_read when "01",
		  "ZZZZZZZZZZZZZZZZ" when others;
		  -- build data when deal with serial
  
	 ram2_data <= ram_data_in_write_and_read when we = '0'
	     else (others => 'Z');
		  
	 we_tmp <= '0' when MEMWrite='1' else '1';
	 oe_tmp <= '0' when MEMRead='1' else '1';
	 
	 with temp_state select
	     ram2_addr(15 downto 0) <= ram_addr_read when pre_pc,
		  ram_addr_read when read_pc,
		  ram_addr_write_and_read when pre_data,
		  ram_addr_write_and_read when read_or_write_data;

    process(clk)
    begin
      if(clk'event and clk='1') then
        case temp_state is
          when pre_pc =>
            oe <= '0';
            temp_state <= read_pc;
          when read_pc =>
            ram_data_out_read_only <= ram2_data;
            oe <= '1';
            temp_state <= pre_data;
          when pre_data =>
            if(ram_addr_write_and_read = "1011111100000000") then
				  wrn <= we_tmp;
              rdn <= oe_tmp;
              temp_state <= read_or_write_data;
				elsif(ram_addr_write_and_read = "1011111100000001") then 
				  temp_state <= read_or_write_data;
            else
              oe <= oe_tmp;
				  we <= we_tmp;
              temp_state <= read_or_write_data;
            end if;
          when read_or_write_data =>
            if(ram_addr_write_and_read = "1011111100000000") then
				  ram_data_out_write_and_read <= ram1_data;
				  wrn <= '1';
              rdn <= '1';
              temp_state <= pre_pc;
            elsif(ram_addr_write_and_read = "1011111100000001") then
              ram_data_out_write_and_read <= "00000000000000" & (dataready) & (tsre and tbre);
              temp_state <= pre_pc;
            else
              oe <= '1';
				  we <= '1';
              ram_data_out_write_and_read <= ram2_data;
              temp_state <= pre_pc;
            end if;
        end case;
      end if;
    end process;
	 
	 process(temp_state)
	 begin
	   case temp_state is
		  when pre_pc => disp <= "0110000";
		  when read_pc => disp <= "1101101";
		  when pre_data => disp <= "1111001";
		  when read_or_write_data => disp <= "0110011";
		  when others => disp <= "0000000";
		end case;
	 end process;

end Behavioral;

