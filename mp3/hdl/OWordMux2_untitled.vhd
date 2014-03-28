--
-- VHDL Architecture ece411.OWordMux2.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 09:21:15 02/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordMux2 IS
   PORT( 
      A   : IN     LC3b_oword;
      B   : IN     LC3b_oword;
      Sel : IN     std_logic;
      F   : OUT    LC3b_oword
   );

-- Declarations

END OWordMux2 ;

--
ARCHITECTURE untitled OF oWord2Mux IS
BEGIN
 PROCESS (A, B, Sel)
  variable state : LC3b_oword;
 BEGIN
  case Sel is
   when '0' =>
  		state := A;
			when '1' =>
				state := B;
			when others =>
				state := (OTHERS => 'X');
		end case;
		O <= state after delay_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;
