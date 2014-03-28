LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6 IS
   PORT( 
      index6  : IN     LC3b_index6;
      ADJ6out   : OUT    LC3b_word
   );

-- Declarations

END ADJ6 ;

--
ARCHITECTURE UNTITLED OF ADJ6 IS
BEGIN
	ADJ6out <= index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6 & '0' AFTER DELAY_MUX2;
END UNTITLED;

