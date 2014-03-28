--
-- VHDL Architecture ece411.ZeroOut.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 06:43:41 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZeroOut IS
   PORT( 
      zero : OUT    std_logic
   );

-- Declarations

END ZeroOut ;

--
ARCHITECTURE untitled OF ZeroOut IS
BEGIN
  zero <= '0' ;
END ARCHITECTURE untitled;

