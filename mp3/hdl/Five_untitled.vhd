--
-- VHDL Architecture ece411.Five.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 01:38:33 02/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Five IS
   PORT( 
      is5 : OUT    std_logic_vector (3 DOWNTO 0)
   );

-- Declarations

END Five ;

--
ARCHITECTURE untitled OF Five IS
BEGIN
  is5 <= "1010";
END ARCHITECTURE untitled;

