--
-- VHDL Architecture ece411.ADJ9.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 03:35:02 12/31/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ9 IS
   PORT( 
      clk     : IN     std_logic;
      offset9 : IN     LC3b_offset9;
      ADJ9out : OUT    LC3b_word
   );

-- Declarations

END ADJ9 ;

ARCHITECTURE UNTITLED OF ADJ9 IS
BEGIN
	ADJ9OUT <= offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE UNTITLED;

