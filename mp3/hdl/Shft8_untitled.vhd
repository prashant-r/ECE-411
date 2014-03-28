--
-- VHDL Architecture ece411.Shft8.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 04:36:04 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Shft8 IS
   PORT( 
      clk   : IN     std_logic;
      ran54 : OUT    LC3b_word
   );

-- Declarations

END Shft8 ;

--
ARCHITECTURE untitled OF Shft8 IS
BEGIN
  ran54 <= x"0008";
END ARCHITECTURE untitled;

