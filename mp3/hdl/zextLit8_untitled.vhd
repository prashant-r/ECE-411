--
-- VHDL Architecture ece411.zextLit8.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 03:51:14 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY zextLit8 IS
   PORT( 
      clk : IN     std_logic;
      B   : OUT    LC3b_word
   );

-- Declarations

END zextLit8 ;

--
ARCHITECTURE untitled OF zextLit8 IS
BEGIN
  B <= x"1000";
END ARCHITECTURE untitled;

