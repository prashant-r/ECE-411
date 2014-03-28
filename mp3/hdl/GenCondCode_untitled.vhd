--
-- VHDL Architecture ece411.GenCondCode.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-38.ews.illinois.edu)
--          at - 12:02:00 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY GenCondCode IS
   PORT( 
      RESET_L    : IN     STD_LOGIC;
      Reg_DATAIN : IN     LC3b_word;
      clk        : IN     std_logic;
      Cond_Code  : OUT    std_logic_vector (2 DOWNTO 0)
   );

-- Declarations

END GenCondCode ;

--
ARCHITECTURE untitled OF GenCondCode IS
BEGIN
END ARCHITECTURE untitled;

ARCHITECTURE UNTITLED OF GenCondCode IS
BEGIN
	VHDL_GenCondCode : PROCESS (Reg_DATAIN)
	BEGIN    
		IF (Reg_DATAIN = "0000000000000000") THEN
			Cond_Code <= "010" AFTER DELAY_GENCC;
		ELSIF (Reg_DATAIN(15) = '1') THEN
			Cond_Code <= "100" AFTER DELAY_GENCC;
		ELSE
			Cond_Code <= "001" AFTER DELAY_GENCC;
		END IF;
	END PROCESS VHDL_GenCondCode;
END UNTITLED;