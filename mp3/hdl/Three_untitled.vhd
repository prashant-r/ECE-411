--
-- VHDL Architecture ece411.Three.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 01:37:28 02/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Three IS
   PORT( 
      is3 : OUT    std_logic_vector (3 DOWNTO 0)
   );

-- Declarations

END Three ;

--
ARCHITECTURE untitled OF Three IS
BEGIN
  is3 <= "0110";
END ARCHITECTURE untitled;

