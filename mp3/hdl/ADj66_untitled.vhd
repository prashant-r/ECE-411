--
-- VHDL Architecture ece411.ADj66.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 22:03:29 03/26/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADj66 IS
   PORT( 
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      index6  : IN     LC3b_index6;
      ADJ6out : OUT    LC3b_word
   );

-- Declarations

END ADj66 ;

--
ARCHITECTURE untitled OF ADj66 IS
BEGIN
  ADJ6out <= index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

