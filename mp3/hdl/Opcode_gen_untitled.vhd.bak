--
-- VHDL Architecture ece411.Opcode_gen.untitled
--
-- Created:
--          by - ravi7.ews (dcl-l520-09.ews.illinois.edu)
--          at - 22:45:40 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Opcode_gen IS
   PORT( 
      clk           : IN     std_logic;
      regA_inst_out : IN     LC3b_word;
      Opcode        : OUT    LC3b_opcode
   );

-- Declarations

END Opcode_gen ;

--
ARCHITECTURE untitled OF Opcode_gen IS
BEGIN
  Opcode <= regA_inst_out(15 DOWNTO 12);
END ARCHITECTURE untitled;

