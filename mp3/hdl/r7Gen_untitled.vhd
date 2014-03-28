--
-- VHDL Architecture ece411.r7Gen.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 01:32:35 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY r7Gen IS
   PORT( 
      clk  : IN     std_logic;
      r7ch : OUT    LC3b_reg
   );

-- Declarations

END r7Gen ;

--
ARCHITECTURE untitled OF r7Gen IS
BEGIN
  r7ch <= "111";
END ARCHITECTURE untitled;
