--
-- VHDL Architecture ece411.ClockGate.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 05:32:41 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ClockGate IS
   PORT( 
      Clk : IN     std_logic;
      A   : OUT    STD_LOGIC
   );

-- Declarations

END ClockGate ;

--
ARCHITECTURE untitled OF ClockGate IS
BEGIN
  A <= clk'delayed(34 ns) AND NOT(clk);
END ARCHITECTURE untitled;

