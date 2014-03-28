
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ9outs IS
   PORT( 
      clk : IN STD_LOGIC; 
      RESET_L : IN STD_LOGIC;
      offset9 : IN     LC3b_offset9;
      ADJ9out : OUT    LC3b_word
   );

-- Declarations

END ADJ9outs ;

--
ARCHITECTURE UNTITLED OF ADJ9outs IS
BEGIN
	ADJ9out <= offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9 & '0' AFTER DELAY_MUX2;
END UNTITLED;
