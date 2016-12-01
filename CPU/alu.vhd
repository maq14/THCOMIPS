----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:36:56 11/26/2016 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
  port(
    input1 : in STD_LOGIC_VECTOR(15 downto 0);
    input2 : in STD_LOGIC_VECTOR(15 downto 0);
    aluOp : in STD_LOGIC_VECTOR(3 downto 0);
    aluRes : out STD_LOGIC_VECTOR(15 downto 0);
    flag : out STD_LOGIC_VECTOR(3 downto 0)
  );
end alu;
architecture Behavioral of alu is
begin
  process (input1, input2, aluOp)
    variable res : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
  begin
    case aluOp is
      when "0000" =>
        res := input1 + input2;
      when "0001" =>
		  res := input1 - input2;
      when "0010" =>
        res := input1 and input2;
      when "0011" =>
        res := input1 or input2;
      when "0100" =>
        res := input1 xor input2;
      when "0101" =>
        res := not(input1);
      when "0110" =>
        if(input2 = "0000000000000000") then
          res := to_stdlogicvector(to_bitvector(input1) sll 8);
        else
          res := to_stdlogicvector(to_bitvector(input1) sll conv_integer(input2));
        end if;
      when "0111" =>
        if(input2 = "0000000000000000") then
          res := to_stdlogicvector(to_bitvector(input1) srl 8);
        else
		    res := to_stdlogicvector(to_bitvector(input1) srl conv_integer(input2));
        end if;
      when "1000" =>
        if(input2 = "0000000000000000") then
          res := to_stdlogicvector(to_bitvector(input1) sra 8);
        else
          res := to_stdlogicvector(to_bitvector(input1) sra conv_integer(input2));
        end if;
      when others =>
		  NULL;
		end case;
      aluRes <= res;
      if(res = "0000000000000000") then
        flag(3) <= '1'; --zero flag
      else
        flag(3) <= '0';
      end if;
      flag(2) <= res(15); --signed flag
      flag(1 downto 0) <= "00";
  end process;
end Behavioral;

