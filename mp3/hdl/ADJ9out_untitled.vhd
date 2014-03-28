--
-- VHDL Architecture ece411.ADJ9out.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-23.ews.illinois.edu)
--          at - 22:52:25 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ9outs IS
   PORT( 
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      offset9 : IN     LC3b_offset9;
      adj9out : OUT    LC3b_word
   );

-- Declarations

END ADJ9outs ;

--
ARCHITECTURE untitled OF ADJ9outs IS
BEGIN
	ADJ9OUT <= offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE UNTITLED;

