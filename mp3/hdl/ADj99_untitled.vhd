--
-- VHDL Architecture ece411.ADj99.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 21:05:10 03/26/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADj99 IS
   PORT( 
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      adj9out : OUT    LC3b_word;
      offset9 : IN     LC3b_offset9
   );

-- Declarations

END ADj99 ;

--
ARCHITECTURE untitled OF ADj99 IS
BEGIN
  ADJ9OUT <= offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

