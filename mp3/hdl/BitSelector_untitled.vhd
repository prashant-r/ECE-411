--
-- VHDL Architecture ece411.BitSelector.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 14:07:33 03/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitSelector IS
   PORT( 
      clk           : IN     std_logic;
      regA_inst_out : IN     LC3b_word;
      Imm5          : OUT    lc3b_imm5;
      NZP           : OUT    LC3b_cc;
      Opcode        : OUT    LC3b_opcode;
      SRCB          : OUT    LC3b_reg;
      SrcA          : OUT    LC3b_reg;
      bit5          : OUT    std_logic;
      dest          : OUT    LC3b_reg;
      index6        : OUT    LC3b_index6;
      offset9       : OUT    LC3b_offset9;
      offset6       : OUT    LC3b_index6
   );

-- Declarations

END BitSelector ;

--
ARCHITECTURE untitled OF BitSelector IS
BEGIN
  Opcode <= regA_inst_out(15 DOWNTO 12);
  DEST <= regA_inst_out(11 DOWNTO 9);
  Imm5 <= regA_inst_out(4 DOWNTO 0);
  NZP <= regA_inst_out(11 DOWNTO 9);
  SRCA <= regA_inst_out(8 DOWNTO 6);
  SRCB <= regA_inst_out(2 DOWNTO 0);
  bit5<= regA_inst_out(5);
  index6 <= regA_inst_out(5 DOWNTO 0);
  offset9 <= regA_inst_out(8 DOWNTO 0);
  offset6 <= regA_inst_out(5 DOWNTO 0);
END ARCHITECTURE untitled;

