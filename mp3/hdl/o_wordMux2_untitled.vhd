LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY o_wordMux2 IS
   PORT( 
      A    : IN     lc3b_oword;
      B    : IN     lc3b_oword;
      Sel  : IN     std_logic;
      Fmux : OUT    lc3b_oword
   );

-- Declarations

END o_wordMux2 ;

--
ARCHITECTURE untitled OF o_WordMux2 IS
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
		Fmux <= state after delay_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

