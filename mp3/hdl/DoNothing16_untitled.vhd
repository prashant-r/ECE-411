--
-- VHDL Architecture ece411.DoNothing16.untitled
--
-- Created:
--          by - ravi7.ews (siebl-0220-10.ews.illinois.edu)
--          at - 00:13:57 03/20/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DoNothing16 IS
   PORT( 
      MEM_ADDR : IN     LC3b_word;
      RESET_L  : IN     STD_LOGIC;
      clk      : IN     std_logic;
      WB_ADDR  : OUT    LC3b_word
   );

-- Declarations

END DoNothing16 ;

--
ARCHITECTURE untitled OF DoNothing16 IS
BEGIN
  WB_ADDR <= MEM_ADDR;
END ARCHITECTURE untitled;

