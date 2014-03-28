--
-- VHDL Architecture ece411.r7Generator.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 03:41:50 03/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY r7Generator IS
   PORT( 
      CLK     : IN     std_logic;
      RESET_L : IN     STD_LOGIC;
      B       : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0)
   );

-- Declarations

END r7Generator ;

--
ARCHITECTURE untitled OF r7Generator IS
BEGIN
  B <= "111";
END ARCHITECTURE untitled;

