--
-- VHDL Architecture mp3lib.AND2.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 07:08:57 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY AND2 IS
   PORT( 
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );

-- Declarations

END AND2 ;

--
ARCHITECTURE untitled OF AND2 IS
BEGIN
  F<= (A AND B) AFTER DELAY_LOGIC2;
END ARCHITECTURE untitled;

