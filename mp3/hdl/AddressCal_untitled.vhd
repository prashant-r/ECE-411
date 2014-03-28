--
-- VHDL Architecture ece411.AddressCal.untitled
--
-- Created:
--          by - aikara2.ews (linux-a3.ews.illinois.edu)
--          at - 04:40:50 03/18/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddressCal IS
   PORT( 
      F       : IN     LC3b_word;
      Fin     : IN     LC3b_word;
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      A       : OUT    LC3b_word
   );

-- Declarations

END AddressCal ;

--
ARCHITECTURE untitled OF AddressCal IS
BEGIN
  
  A <= (STD_LOGIC_VECTOR(SIGNED(F) + SIGNED(Fin))) after delay_alu;
  
END ARCHITECTURE untitled;

