--
-- VHDL Architecture ece411.Seven.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 01:39:26 02/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Seven IS
   PORT( 
      is7 : OUT    std_logic_vector (3 DOWNTO 0)
   );

-- Declarations

END Seven ;

--
ARCHITECTURE untitled OF Seven IS
BEGIN
  is7 <= "1110";
END ARCHITECTURE untitled;

