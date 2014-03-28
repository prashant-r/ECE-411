--
-- VHDL Architecture ece411.ADJ6out.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-23.ews.illinois.edu)
--          at - 22:50:45 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6outs IS
   PORT( 
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      index6  : IN     LC3b_index6;
      adj6out : OUT    LC3b_word
   );

-- Declarations

END ADJ6outs ;

--
ARCHITECTURE untitled OF ADJ6outs IS
BEGIN
	ADJ6OUT <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 & '0' AFTER DELAY_MUX2;
END UNTITLED;

