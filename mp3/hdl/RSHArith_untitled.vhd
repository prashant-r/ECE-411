--
-- VHDL Architecture ece411.RSHArith.untitled
--
-- Created:
--          by - ravi7.ews (siebl-2327-03.ews.illinois.edu)
--          at - 23:58:25 02/04/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY RSHArith IS
   PORT( 
      RFAout  : IN     LC3b_word;
      clk     : IN     std_logic;
      zextImm : IN     LC3b_word;
      Rarith  : OUT    LC3b_word
   );

-- Declarations

END RSHArith ;
--

--
ARCHITECTURE UNTITLED OF RSHArith IS
BEGIN
	----------------------------------------
	RSHArith: PROCESS (RFAOUT, zextImm)
	----------------------------------------
	VARIABLE TEMP_OUT : LC3B_WORD;
	BEGIN
			  TEMP_OUT := std_logic_vector(SHIFT_RIGHT(signed(RFAOUT),natural(to_integer(unsigned(zextImm)))));
	
	Rarith<= TEMP_OUT AFTER DELAY_SHIFTER;
	END PROCESS RSHArith;
END UNTITLED;
