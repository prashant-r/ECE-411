--
-- VHDL Architecture ece411.Offset3Bit.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 14:02:22 02/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Offset3Bit IS
   PORT( 
      offset : IN     LC3b_c_offset;
      off3   : OUT    std_logic_vector (2 DOWNTO 0)
   );

-- Declarations

END Offset3Bit ;

--
ARCHITECTURE untitled OF Offset3Bit IS
BEGIN
  off3 <= offset(3 DOWNTO 1);
END ARCHITECTURE untitled;

