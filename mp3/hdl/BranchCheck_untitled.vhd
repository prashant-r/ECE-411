--
-- VHDL Architecture ece411.BranchCheck.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-37.ews.illinois.edu)
--          at - 07:32:46 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BranchCheck IS
   PORT( 
      BR_OP_h_o      : IN     STD_LOGIC;
      Mem_CC_o       : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      Mem_CheckNZP_o : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      RESET_L        : IN     STD_LOGIC;
      clk            : IN     std_logic;
      PCMuxSel       : OUT    STD_LOGIC
   );

-- Declarations

END BranchCheck ;

--
ARCHITECTURE untitled OF BranchCheck IS
  
  SIGNAL branch_taken : std_logic;
  
BEGIN
  PROCESS (CLK, RESET_L, BR_OP_h_o, Mem_CC_o , Mem_CheckNZP_o)
  BEGIN
      IF RESET_L = '0' THEN
        
        branch_taken <= '0';
        
      ELSIF CLK'EVENT AND CLK = '1' THEN
			 IF (BR_OP_h_o = '1' AND (Mem_CC_o = Mem_CheckNZP_o) ) THEN
			  
			  branch_taken <= '1';
         
        END IF;
		  END IF;
	END PROCESS;
	
	PCMuxSel <= branch_taken;

END UNTITLED;
