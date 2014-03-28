--
-- VHDL Architecture ece411.ID_EX.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 13:07:18 03/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ID_EX IS
   PORT( 
      RESET_L        : IN     STD_LOGIC;
      clk            : IN     std_logic;
      set_regB       : IN     std_logic;
      control        : IN     CONTROL_WORD;
      CONTROL_ID     : OUT    CONTROL_WORD;
      ID_srcA_regB_o : OUT    LC3b_word;
      ID_srcB_regB_o : OUT    LC3b_word;
      adj6out_o      : OUT    LC3b_word;
      adj9out_o      : OUT    LC3b_word;
      Reg_Dest_o     : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      CheckNZP_o     : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      Mem_CC_o       : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      Mem_CheckNZP_o : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      Mem_IR_o       : OUT    LC3b_word;
      Mem_reg_Dest_o : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      Mem_Adress_o   : OUT    LC3b_word;
      BR_OP_h_o      : OUT    STD_LOGIC;
      RD_Data_h_o    : OUT    STD_LOGIC;
      WE_Data_h_o    : OUT    STD_LOGIC;
      regA_pc_out    : IN     LC3b_word;
      ID_CC          : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      ID_IR          : IN     LC3b_word;
      ID_srcB_regB   : IN     LC3b_word;
      ID_srcA_regB   : IN     LC3B_WORD
   );

-- Declarations

END ID_EX ;

ARCHITECTURE UNTITLED OF ID_EX IS

SIGNAL ID_srcA_regB_s :LC3B_WORD;
SIGNAL ID_srcB_regB_s :LC3b_word;
SIGNAL adj6out_s      :LC3b_word;
SIGNAL adj9out_s      :LC3b_word; 
SIGNAL NEXT_PC_s      :LC3b_word;
SIGNAL DE_IR_s        :LC3b_word;
SIGNAL Reg_Dest_s     :STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL CheckNZP_s     :STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL DE_CC_s        :STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL CONTROL_STORE : CONTROL_WORD;


BEGIN
	PROCESS (RESET_L, clk, set_regB, ID_srcA_regB, ID_srcB_regB, adj6out, adj9out, NextPC, DE_IR, Reg_Dest, CheckNZP, DE_CC,
	 ALUop_ID, ADDR2MuxSel, ADDRMuxSel, ADDR1MuxSel, control,  BR_oper_h, Read_Data_h, Write_Data_h)
	
	BEGIN
		IF RESET_L = '0' THEN
      ID_srcA_regB_s <= (OTHERS => '0');
      ID_srcB_regB_s <= (OTHERS => '0');
      adj6out_s      <= (OTHERS => '0');
      adj9out_s      <= (OTHERS => '0');  
      NEXT_PC_s      <= (OTHERS => '0');
      DE_IR_s        <= (OTHERS => '0');
      Reg_Dest_s     <= (OTHERS => '0');
      CheckNZP_s     <= (OTHERS => '0');
      DE_CC_s        <= (OTHERS => '0');
      
      ---- SET CONTROL SIGNALS TO ZERO HERE
      
		ELSIF CLK'EVENT AND CLK = '1' THEN
			IF (set_regB = '1') THEN
			  
        ID_srcA_regB_s <= ID_srcA_regB;
        ID_srcB_regB_s <= ID_srcB_regB ;  
        adj6out_s      <= adj6out;
        adj9out_s      <= adj9out;   
        Next_PC_s       <= NextPC;
        DE_IR_s        <= DE_IR;
        Reg_Dest_s     <= Reg_Dest;
        CheckNZP_s     <= CheckNZP; 
        DE_CC_s        <= DE_CC;
        CONTROL_STORE <= CONTROL;
        
			 END IF;
		END IF;
	END PROCESS;

   ID_srcA_regB_o <= id_SRCa_REGb_S after delay_reg;
   ID_srcB_regB_o <= id_srcb_regB_s after delay_reg;
   adj6out_o      <= adj6out_s after delay_reg;
   adj9out_o      <= adj9out_s after delay_reg;
   NextPC_o       <= Next_PC_s after delay_reg;
   DE_IR_o        <= DE_IR_s after delay_reg;
   Reg_Dest_o     <= Reg_Dest_s after delay_reg;
   CheckNZP_o     <= CheckNZP_s after delay_reg;
   DE_CC_o        <= DE_CC_s after delay_reg;
   CONTROL_ID <= CONTROL_STORE;
   
END UNTITLED;
