--
-- VHDL Architecture ece411.ZEXTImmD4.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 19:12:32 02/04/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXTImmD4 IS
   PORT( 
      Immd4   : IN     LC3b_nibble;
      clk     : IN     std_logic;
      zextImm : OUT    LC3b_word
   );

-- Declarations

END ZEXTImmD4 ;

--
ARCHITECTURE untitled OF ZEXTImmD4 IS
BEGIN
zextImm <= std_logic_vector(resize(unsigned(immD4), 16));
END ARCHITECTURE untitled;


