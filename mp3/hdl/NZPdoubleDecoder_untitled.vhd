--
-- VHDL Architecture ece411.NZPdoubleDecoder.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 19:43:54 03/26/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZPdoubleDecoder IS
   PORT( 
      Mem_CC  : IN     LC3b_reg;
      NZP     : IN     LC3b_cc;
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      A       : OUT    STD_LOGIC;
      A1      : OUT    STD_LOGIC;
      A2      : OUT    STD_LOGIC;
      B       : OUT    STD_LOGIC;
      B1      : OUT    STD_LOGIC;
      B2      : OUT    STD_LOGIC
   );

-- Declarations

END NZPdoubleDecoder ;

--
ARCHITECTURE untitled OF NZPdoubleDecoder IS
BEGIN
  A <= Mem_cc(0);
  A1 <= Mem_cc(1);
  A2 <= Mem_cc(2);
  B <= NZP (0);
  B1 <= NZP (1);
  B2 <= NZP (2);
END ARCHITECTURE untitled;

