--
-- VHDL Architecture ece411.SEXT6.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 02:57:15 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT6 IS
   PORT( 
      clk      : IN     std_logic;
      index6   : IN     LC3b_index6;
      Sext6out : OUT    LC3b_word
   );

-- Declarations

END SEXT6 ;

--
ARCHITECTURE untitled OF SEXT6 IS
BEGIN
  
  Sext6out <= std_logic_vector(resize(signed(index6), 16)) after Delay_Mux2;
END ARCHITECTURE untitled;

