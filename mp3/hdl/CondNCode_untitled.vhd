--
-- VHDL Architecture ece411.CondNCode.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 19:28:20 03/26/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CondNCode IS
   PORT( 
      RESET_L   : IN     STD_LOGIC;
      WB_ALUout : IN     LC3b_word;
      clk       : IN     std_logic;
      Gen_cc    : OUT    LC3b_cc
   );

-- Declarations

END CondNCode ;

--
ARCHITECTURE untitled OF CondNCode IS
BEGIN
	VHDL_GENCC : PROCESS (WB_ALUout)
	BEGIN    
		IF (WB_ALUout = "0000000000000000") THEN
			Gen_cc <= "010" AFTER DELAY_GENCC;
		ELSIF (WB_ALUout(15) = '1') THEN
			Gen_cc <= "100" AFTER DELAY_GENCC;
		ELSE
			GEN_cc <= "001" AFTER DELAY_GENCC;
		END IF;
	END PROCESS VHDL_GENCC;
END ARCHITECTURE untitled;

