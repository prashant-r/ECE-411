--
-- VHDL Architecture ece411.ZeroOutput.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 20:48:12 02/22/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZeroOutput IS
   PORT( 
      zero : OUT    std_logic_vector ( 3 DOWNTO 0)
   );

-- Declarations

END ZeroOutput ;

--
ARCHITECTURE untitled OF ZeroOutput IS
BEGIN
  zero <= "0000";
END ARCHITECTURE untitled;

