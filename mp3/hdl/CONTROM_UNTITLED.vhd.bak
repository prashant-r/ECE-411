--
-- VHDL Architecture mp3lib.ControlRom.Untitled
--
-- Created:
--          by - glazesk1.stdt (eelnx30.ews.illinois.edu)
--          at - 13:57:03 01/18/11
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CONTROM IS
   PORT( 
      clk     : IN     std_logic;
      RESET_L : IN     STD_LOGIC;
      Opcode  : IN     LC3b_opcode;
      IR      : IN     LC3b_word;
      Control : OUT    CONTROL_WORD
   );

-- Declarations

END CONTROM ;

--
ARCHITECTURE Untitled OF ContRom IS
BEGIN
    PROCESS (opcode, IR)
    VARIABLE newControl : CONTROL_WORD;
    BEGIN
        CASE opcode IS
            WHEN OP_ADD =>
              
                newControl.name := add_op;
                newControl.id.srcb_select := '1';
                newControl.ex.aluop := ALU_ADD;
                newControl.wb.DataMuxSel := "11";
                newControl.wb.LD_Reg := '1';
                newControl.wb.LD_CC := '1';
                newControl.mem.PCMuxSelect := '0';
                newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1';
            
            WHEN OP_AND =>
              
                newControl.name := and_op;
                newControl.id.srcb_select := '1';
                newControl.ex.aluop := ALU_AND;
                newControl.wb.DataMuxSel := "11";
                newControl.wb.LD_Reg := '1';
                newControl.wb.LD_CC := '1';
                newControl.mem.PCMuxSelect := '0';
                newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1';
            
            WHEN OP_BR  =>
                if (IR = "0000000000000000") then -- ITS A NOP
                newControl.name := bad_op;
                newControl.id.srcb_select := '1';
                newControl.ex.aluop := ALU_PASS;
                newControl.wb.DataMuxSel := "00";
                newControl.wb.LD_Reg := '0';
                newControl.wb.LD_CC := '0';
                newControl.mem.PCMuxSelect := '0';
                newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1';
              else
                 newControl.name := br_op;
                newControl.ex.aluop := ALU_PASS;
                newControl.id.srcb_select := '1';
                newControl.wb.DataMuxSel :="00";
                newControl.wb.LD_Reg := '0';
                newControl.wb.LD_CC := '0'; 
                newControl.mem.PCMuxSelect := '1' ; 
                newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1'; 
                
              end if;
          WHEN OP_NOT =>
                newControl.name := not_op;
                newControl.ex.aluop := ALU_NOT;
                newControl.id.srcb_select := '1';
                newControl.wb.DataMuxSel := "11";
                newControl.wb.LD_Reg := '1';
                newControl.wb.LD_CC := '1';
                newControl.mem.PCMuxSelect := '0';
                 newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1';
           
        WHEN OP_LDR =>
                newControl.name := ldr_op;
                newControl.id.srcb_select := '1';
                newControl.ex.aluop := ALU_PASS;
                newControl.wb.DataMuxSel := "10";
                newControl.wb.LD_Reg := '1';
                newControl.wb.LD_CC := '1';
                newControl.mem.PCMuxSelect := '0';
                newControl.mem.mread_l := '0';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1';
                
        WHEN OP_STR =>
                newControl.name := str_op;
                newControl.id.srcb_select := '0';
                newControl.ex.aluop := ALU_PASS;
                newControl.wb.DataMuxSel := "10";
                newControl.wb.LD_Reg := '0';
                newControl.wb.LD_CC := '0';
                newControl.mem.PCMuxSelect := '0';
                newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '0';
                newControl.mem.mwritel_l := '0';
                
         WHEN OTHERS =>
                newControl.name := bad_op;
                newControl.ex.aluop := ALU_PASS;
                newControl.id.srcb_select := '1';
                newControl.wb.DataMuxSel := "00";
                newControl.wb.LD_Reg := '0';
                newControl.wb.LD_CC := '0';
                newControl.mem.PCMuxSelect := '0';
                newControl.mem.mread_l := '1';
                newControl.mem.mwriteh_l := '1';
                newControl.mem.mwritel_l := '1';        
        END CASE;
        
        control <= newControl AFTER DELAY_ROM;
    END PROCESS;
END ARCHITECTURE Untitled;

