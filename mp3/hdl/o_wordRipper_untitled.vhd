--
-- VHDL Architecture ece411.o_wordRipper.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 09:48:17 02/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY o_wordRipper IS
   PORT( 
      A : IN     LC3b_oword;
      B : IN     LC3b_c_offset;
      F : OUT    LC3b_word
   );

-- Declarations

END o_wordRipper ;

--
ARCHITECTURE untitled OF o_wordRipper IS
BEGIN
	PROCESS(A,B)
		variable data1 : LC3b_word;
	BEGIN
		case B(3 downto 1) is
			when "000" =>
				data1 := A(15 downto 0);
			when "001" =>
				data1 := A(31 downto 16);
			when "010" =>
				data1 := A(47 downto 32);
			when "011" =>
				data1 := A(63 downto 48);
			when "100" =>
				data1 := A(79 downto 64);
			when "101" =>
				data1 := A(95 downto 80);
			when "110" =>
				data1 := A(111 downto 96);
			when "111" =>
				data1 := A(127 downto 112);
			when others =>
				data1 := (OTHERS => 'X');
		end case;
		F <= data1 after delay_MUX8;
	END PROCESS;
END ARCHITECTURE untitled;
