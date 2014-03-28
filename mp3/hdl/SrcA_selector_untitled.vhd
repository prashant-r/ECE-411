--
-- VHDL Architecture ece411.SrcA_selector.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 23:33:56 03/26/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SrcA_selector IS
   PORT( 
      Opcode   : IN     LC3b_opcode;
      RESET_L  : IN     STD_LOGIC;
      clk      : IN     std_logic;
      SRCA_SEL : OUT    STD_LOGIC
   );

-- Declarations

END SrcA_selector ;

--
ARCHITECTURE untitled OF SrcA_selector IS
BEGIN
END ARCHITECTURE untitled;

