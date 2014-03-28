--
-- VHDL Architecture ece411.ADJ6.untitled
--
-- Created:
--          by - lewang2.ews (evrt-252-33.ews.illinois.edu)
--          at - 10:25:26 09/07/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6 IS
   PORT( 
      indx6  : IN     LC3b_index6;
      ADJ6out   : OUT    LC3b_word
   );

-- Declarations

END ADJ6 ;

--
ARCHITECTURE UNTITLED OF ADJ6 IS
BEGIN
	ADJ6out <= indx6(5) & indx6(5) & indx6(5) & indx6(5) & indx6(5) & indx6(5) & indx6(5) & indx6(5) & indx6(5) & indx6 & '0' AFTER DELAY_MUX2;
END UNTITLED;

