----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:14:41 11/26/2016 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
  port(
    instruction_in : in std_logic_vector(15 downto 0);
    reg_num_1 : out std_logic_vector(3 downto 0);
    reg_num_2 : out std_logic_vector(3 downto 0);
    immediate : out std_logic_vector(10 downto 0);
    use_reg_1_or_not : out std_logic;
    use_reg_2_or_not : out std_logic;
    reg_write_num : out std_logic_vector(3 downto 0);
    aluop : out std_logic_vector(3 downto 0);
    alusrc2 : out std_logic;
	 bypasssrc1 : out std_logic_vector(1 downto 0);
    MEMRead : out std_logic;
    MEMWrite : out std_logic;
    write_en : out std_logic;
    wbop : out std_logic_vector(1 downto 0)
  );
end decoder;

architecture Behavioral of decoder is

begin

process(instruction_in)
    begin
        case instruction_in(15 downto 11) is
          when "01001" => --ADDIU
            reg_num_1 <= '0' & instruction_in(10 downto 8);
            reg_num_2 <= "1111";
            immediate(7 downto 0) <= instruction_in(7 downto 0);
				immediate(10 downto 8) <= (others => instruction_in(7));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= '0' & instruction_in(10 downto 8);
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '1';
            wbop <= "11";
          when "01000" => --ADDIU3
            reg_num_1 <= '0' & instruction_in(10 downto 8);
            reg_num_2 <= "1111";
            immediate(3 downto 0) <= instruction_in(3 downto 0);
				immediate(10 downto 4) <= (others => instruction_in(3));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= '0' & instruction_in(7 downto 5);
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '1';
            wbop <= "11";
          when "11100" =>
            if(instruction_in(1 downto 0) = "01") then --ADDU
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= '0' & instruction_in(7 downto 5);
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(4 downto 2);
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            elsif(instruction_in(1 downto 0) = "11") then --SUBU
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= '0' & instruction_in(7 downto 5);
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(4 downto 2);
              aluop <= "0001";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            end if;
          when "11101" =>
            if(instruction_in(4 downto 0) = "01100") then --AND
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= '0' & instruction_in(7 downto 5);
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "0010";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            elsif(instruction_in(4 downto 0) = "01010") then --CMP
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= '0' & instruction_in(7 downto 5);
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "01";
              reg_write_num <= "1000";
              aluop <= "0001";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "01";
            elsif(instruction_in(4 downto 0) = "01101") then --OR
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= '0' & instruction_in(7 downto 5);
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "0011";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            elsif(instruction_in(4 downto 0) = "01111") then --NOT
              reg_num_1 <= '0' & instruction_in(7 downto 5);
              reg_num_2 <= "1111";
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "0101";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            elsif(instruction_in(4 downto 0) = "00010") then --SLT
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= '0' & instruction_in(7 downto 5);
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "00";
              reg_write_num <= "1000";
              aluop <= "0001";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "01";
            elsif(instruction_in(7 downto 0) = "00000000") then --JR
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= "1111";
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= "0000";
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '0';
              wbop <= "00";
            elsif(instruction_in(7 downto 0) = "01000000") then --MFPC
              reg_num_1 <= "1111";
              reg_num_2 <= "1111";
              immediate <= "00000000000";
              use_reg_1_or_not <= '0';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "10";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "00";
            elsif(instruction_in(7 downto 0) = "00100000") then --JRRA
              reg_num_1 <= "1011";
              reg_num_2 <= "1111";
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= "0000";
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '0';
              wbop <= "00";
            elsif(instruction_in(7 downto 0) = "11000000") then --JALR
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= "1111";
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= "1011";
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "00";
            end if;
          when "00010" => --B
            reg_num_1 <= "1111";
            reg_num_2 <= "0000";
            immediate <= instruction_in(10 downto 0);
            use_reg_1_or_not <= '0';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= "0000";
            aluop <= "0000";
            alusrc2 <= '0';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '0';
            wbop <= "11";
          when "00100" => --BEQZ
            reg_num_1 <= '0' & instruction_in(10 downto 8);
            reg_num_2 <= "1111";
            immediate(7 downto 0) <= instruction_in(7 downto 0);
				immediate(10 downto 8) <= (others => instruction_in(7));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= "0000";
            aluop <= "0000";
            alusrc2 <= '0';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '0';
            wbop <= "11";
          when "00101" => --BNEZ
            reg_num_1 <= '0' & instruction_in(10 downto 8);
            reg_num_2 <= "0000";
            immediate(7 downto 0) <= instruction_in(7 downto 0);
				immediate(10 downto 8) <= (others => instruction_in(7));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= "0000";
            aluop <= "0000";
            alusrc2 <= '0';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '0';
            wbop <= "11";
          when "01101" => --LI
            reg_num_1 <= "1111";
            reg_num_2 <= "0000";
            immediate(7 downto 0) <= instruction_in(7 downto 0);
				immediate(10 downto 8) <= "000";
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= '0' & instruction_in(10 downto 8);
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '1';
            wbop <= "11";
          when "10011"=> --LW
            reg_num_1 <= '0' & instruction_in(10 downto 8);
            reg_num_2 <= "0000";
            immediate(4 downto 0) <= instruction_in(4 downto 0);
				immediate(10 downto 5) <= (others => instruction_in(4));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= '0' & instruction_in(7 downto 5);
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '1';
            MEMWrite <= '0';
            write_en <= '1';
            wbop <= "10";
          when "10010" => --LW_SP
            reg_num_1 <= "1001";
            reg_num_2 <= "0000";
            immediate(7 downto 0) <= instruction_in(7 downto 0);
				immediate(10 downto 8) <= (others => instruction_in(7));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= '0' & instruction_in(10 downto 8);
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '1';
            MEMWrite <= '0';
            write_en <= '1';
            wbop <= "10";
          when "11110" =>
            if(instruction_in(7 downto 0) = "00000000") then --MFIH
              reg_num_1 <= "1111";
              reg_num_2 <= "1010";
              immediate <= "00000000000";
              use_reg_1_or_not <= '0';
              use_reg_2_or_not <= '1';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            elsif(instruction_in(7 downto 0) = "00000001") then --MTIH
              reg_num_1 <= '0' & instruction_in(10 downto 8);
              reg_num_2 <= "1111";
              immediate <= "00000000000";
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= "1010";
              aluop <= "0000";
              alusrc2 <= '0';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            end if;
          when "00001" => --NOP
            reg_num_1 <= "0000";
            reg_num_2 <= "1111";
            immediate <= "00000000000";
            use_reg_1_or_not <= '0';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= "0000";
            aluop <= "0000";
            alusrc2 <= '0';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '0';
            wbop <= "11";
          when "00110" => --SLL
            if(instruction_in(1 downto 0) = "00") then
              reg_num_1 <= '0' & instruction_in(7 downto 5);
              reg_num_2 <= "1111";
              immediate <= "00000000" & instruction_in(4 downto 2);
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "0110";
              alusrc2 <= '1';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            elsif(instruction_in(1 downto 0) = "11") then --SRA
              reg_num_1 <= '0' & instruction_in(7 downto 5);
              reg_num_2 <= "1111";
              immediate <= "00000000" & instruction_in(4 downto 2);
              use_reg_1_or_not <= '1';
              use_reg_2_or_not <= '0';
				  bypasssrc1 <= "00";
              reg_write_num <= '0' & instruction_in(10 downto 8);
              aluop <= "1000";
              alusrc2 <= '1';
              MEMRead <= '0';
              MEMWrite <= '0';
              write_en <= '1';
              wbop <= "11";
            end if;
          when "11011" => --SW
            reg_num_1 <= '0' & instruction_in(10 downto 8);
            reg_num_2 <= '0' & instruction_in(7 downto 5);
            immediate(4 downto 0) <= instruction_in(4 downto 0);
				immediate(10 downto 5) <= (others => instruction_in(4));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '1';
				bypasssrc1 <= "00";
            reg_write_num <= "0000";
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '0';
            MEMWrite <= '1';
            write_en <= '0';
            wbop <= "11";
          when "11010" => --SW_SP
            reg_num_1 <= "1001";
            reg_num_2 <= '0' & instruction_in(10 downto 8);
            immediate(7 downto 0) <= instruction_in(7 downto 0);
				immediate(10 downto 8) <= (others => instruction_in(7));
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '1';
				bypasssrc1 <= "00";
            reg_write_num <= "0000";
            aluop <= "0000";
            alusrc2 <= '1';
            MEMRead <= '0';
            MEMWrite <= '1';
            write_en <= '0';
            wbop <= "11";
          when "01111" => --MOVE
            reg_num_1 <= '0' & instruction_in(7 downto 5);
            reg_num_2 <= "1111";
            immediate <= "00000000000";
            use_reg_1_or_not <= '1';
            use_reg_2_or_not <= '0';
				bypasssrc1 <= "00";
            reg_write_num <= '0' & instruction_in(10 downto 8);
            aluop <= "0000";
            alusrc2 <= '0';
            MEMRead <= '0';
            MEMWrite <= '0';
            write_en <= '1';
            wbop <= "11";
			when others =>
			   case instruction_in(15 downto 8) is
				 when "01100011" => --ADDSP
					reg_num_1 <= "1001";
					reg_num_2 <= "0000";
					immediate(7 downto 0) <= instruction_in(7 downto 0);
					immediate(10 downto 8) <= (others => instruction_in(7));
					use_reg_1_or_not <= '1';
					use_reg_2_or_not <= '0';
					bypasssrc1 <= "00";
					reg_write_num <= "1001";
					aluop <= "0000";
					alusrc2 <= '1';
					MEMRead <= '0';
					MEMWrite <= '0';
					write_en <= '1';
					wbop <= "11";
				 when "01100000" => --BTEQZ
					reg_num_1 <= "1000";
					reg_num_2 <= "0000";
					immediate(7 downto 0) <= instruction_in(7 downto 0);
					immediate(10 downto 8) <= (others => instruction_in(7));
					use_reg_1_or_not <= '1';
					use_reg_2_or_not <= '0';
					bypasssrc1 <= "01";
					reg_write_num <= "0000";
					aluop <= "0000";
					alusrc2 <= '1';
					MEMRead <= '0';
					MEMWrite <= '0';
					write_en <= '0';
					wbop <= "11";
				 when "01100100" => --MTSP
					reg_num_1 <= '0' & instruction_in(7 downto 5);
					reg_num_2 <= "1111";
					immediate <= "00000000000";
					use_reg_1_or_not <= '1';
					use_reg_2_or_not <= '0';
					bypasssrc1 <= "00";
					reg_write_num <= "1001";
					aluop <= "0000";
					alusrc2 <= '0';
					MEMRead <= '0';
					MEMWrite <= '0';
					write_en <= '1';
					wbop <= "11";
				when others =>
				  reg_num_1 <= "1111";
					reg_num_2 <= "0000";
					immediate <= "00000000000";
					use_reg_1_or_not <= '0';
					use_reg_2_or_not <= '0';
					bypasssrc1 <= "00";
					reg_write_num <= "0000";
					aluop <= "0000";
					alusrc2 <= '0';
					MEMRead <= '0';
					MEMWrite <= '0';
					write_en <= '0';
					wbop <= "11";
            end case;
        end case;
  end process;


end Behavioral;

