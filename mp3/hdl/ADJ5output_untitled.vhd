--
-- VHDL Architecture ece411.ADJ5output.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 12:52:50 03/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ5outputs IS
   PORT( 
      clk        : IN     std_logic;
      Imm5       : IN     lc3b_imm5;
      RESET_L    : IN     STD_LOGIC;
      adj5output1 : OUT    LC3b_word
   );

-- Declarations

END ADJ5outputs ;

--
ARCHITECTURE untitled OF ADJ5outputs IS
BEGIN
  	ADJ5output1 <= imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) &imm5 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

