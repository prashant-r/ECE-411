--
-- VHDL Architecture ece411.ClockTimer.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 21:58:54 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ClockTimer IS
   PORT( 
      clk      : IN     std_logic;
      ClkAlter : OUT    std_logic
   );

-- Declarations

END ClockTimer ;

ARCHITECTURE untitled OF ClockTimer IS
BEGIN
	ClkAlter <= clk'delayed(24 ns) AND (NOT clk);
END ARCHITECTURE untitled;

