--
-- VHDL Architecture ece411.rshfl.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 19:32:56 02/04/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY rshfl IS
   PORT( 
      RFAout    : IN     LC3b_word;
      clk       : IN     std_logic;
      zextImm   : IN     LC3b_word;
      rshfarith : OUT    LC3b_word
   );

-- Declarations

END rshfl ;

--
ARCHITECTURE untitled OF rshfl IS
BEGIN
  std_logic_vector(unsigned(RFAOUT) sll to_integer(unsigned(ALUMUXOUT)));
		
END ARCHITECTURE untitled;

