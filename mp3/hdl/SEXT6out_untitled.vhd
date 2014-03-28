--
-- VHDL Architecture ece411.SEXT6out.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-23.ews.illinois.edu)
--          at - 23:17:07 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT6out IS
   PORT( 
      RESET_L  : IN     STD_LOGIC;
      clk      : IN     std_logic;
      index6   : IN     LC3b_index6;
      sext6out : OUT    LC3b_word
   );

-- Declarations

END SEXT6out ;

--
ARCHITECTURE untitled OF SEXT6out IS
BEGIN
END ARCHITECTURE untitled;

