--
-- VHDL Architecture mp3lib.AND4.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 04:58:42 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AND4 IS
   PORT( 
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      C : IN     STD_LOGIC;
      D : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );

-- Declarations

END AND4 ;

--
ARCHITECTURE untitled OF AND4 IS
BEGIN
    F <= (A AND B AND C AND D) AFTER DELAY_LOGIC4;
END ARCHITECTURE untitled;

