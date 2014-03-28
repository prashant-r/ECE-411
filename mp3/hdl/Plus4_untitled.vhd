--
-- VHDL Architecture ece411.Plus4.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 12:45:16 03/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Plus4 IS
   PORT( 
      Mem_nextPC : IN     LC3b_word;
      RESET_L    : IN     STD_LOGIC;
      clk        : IN     std_logic;
      TARGET_PC  : OUT    LC3b_word;
      adj9out    : IN     LC3b_word
   );

-- Declarations

END Plus4 ;

--
ARCHITECTURE untitled OF Plus4 IS
BEGIN
  TARGET_PC <= (STD_LOGIC_VECTOR(SIGNED(adj9out) + SIGNED(Mem_nextPC))) after delay_alu;
END ARCHITECTURE untitled;

