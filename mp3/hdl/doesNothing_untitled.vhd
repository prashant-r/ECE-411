--
-- VHDL Architecture ece411.doesNothing.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-23.ews.illinois.edu)
--          at - 23:21:25 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY doesNothing IS
   PORT( 
      clk : IN     std_logic;
      A   : OUT    LC3b_word
   );

-- Declarations

END doesNothing ;

--
ARCHITECTURE untitled OF doesNothing IS
BEGIN
  
  A <= "0000000000000000";
  
END ARCHITECTURE untitled;

