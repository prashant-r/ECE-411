--
-- VHDL Architecture ece411.RSHLOg.untitled
--
-- Created:
--          by - ravi7.ews (siebl-2327-03.ews.illinois.edu)
--          at - 00:02:46 02/05/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY RSHLOg IS
   PORT( 
      RFAout  : IN     LC3b_word;
      clk     : IN     std_logic;
      zextImm : IN     LC3b_word;
      Rlog    : OUT    LC3b_word
   );

-- Declarations

END RSHLOg ;

--
ARCHITECTURE untitled OF RSHLOg IS
BEGIN

	--------------------------------------
	RSHlog: PROCESS (RFAOUT, zextImm)
	----------------------------------------
	VARIABLE TEMP_OUT : LC3B_WORD;
	BEGIN
			 TEMP_OUT := std_logic_vector(unsigned(RFAOUT) srl to_integer(unsigned(zextImm)));	
	Rlog<= TEMP_OUT AFTER DELAY_SHIFTER;
	END PROCESS RSHlog;
  
END ARCHITECTURE untitled;

