--
-- VHDL ARCHITECTURE ECE411.PHYSICAL_MEMORY.UNTITLED
--
-- CREATED:
--          BY - ANBROWN2.STDT (EELNX32.EWS.ILLINOIS.EDU)
--          AT - 17:04:02 09/20/10
--
-- USING MENTOR GRAPHICS HDL DESIGNER(TM) 2005.3 (BUILD 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Main_PM IS
   PORT( 
      RESET_L     : IN     std_logic;
      clk         : IN     std_logic;
      PMRESPONSE_H  : OUT    STD_LOGIC
   );

-- Declarations

END Main_PM ;

--
ARCHITECTURE UNTITLED OF Main_PM IS
BEGIN
  PMRESPONSE_H <= '1';
END ARCHITECTURE UNTITLED;

