LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXT8 IS
   PORT( 
      trapvector8    : IN     LC3B_TRAPVECT8;
      zext8out : OUT    lc3b_word
   );

-- Declarations

END ZEXT8 ;

--
ARCHITECTURE untitled OF ZEXT8 IS
BEGIN
  zext8out <= "0000000" & trapvector8 & '0';
END ARCHITECTURE untitled;