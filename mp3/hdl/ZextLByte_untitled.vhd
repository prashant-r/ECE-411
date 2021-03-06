--
-- VHDL Architecture ece411.ZextLByte.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 03:25:56 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZextLByte IS
   PORT( 
      clk    : IN     std_logic;
      zLout  : OUT    LC3b_word;
      MDRout : IN     LC3b_word
   );

-- Declarations

END ZextLByte ;

--
ARCHITECTURE untitled OF ZextLByte IS
BEGIN
  
  zlout <= x"00" & MDRout(7 downto 0);
END ARCHITECTURE untitled;

