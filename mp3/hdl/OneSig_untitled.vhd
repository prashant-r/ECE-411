--
-- VHDL Architecture ece411.OneSig.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-29.ews.illinois.edu)
--          at - 19:20:56 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OneSig IS
   PORT( 
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      A       : OUT    STD_LOGIC
   );

-- Declarations

END OneSig ;

--
ARCHITECTURE untitled OF OneSig IS
BEGIN
  A <= '1';
END ARCHITECTURE untitled;

