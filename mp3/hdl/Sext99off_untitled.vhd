--
-- VHDL Architecture ece411.Sext6off.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 12:46:28 03/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Sext99off IS
   PORT( 
      Mem_IR9  : IN    LC3b_offset9;
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      sig0    : OUT    LC3b_word
   );

-- Declarations

END Sext99off ;

--
ARCHITECTURE untitled OF Sext99off IS
BEGIN
	sig0 <= Mem_IR9(8) & Mem_IR9(8) & Mem_IR9(8) & Mem_IR9(8) & Mem_IR9(8) & Mem_IR9(8) & Mem_IR9 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

