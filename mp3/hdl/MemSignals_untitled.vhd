--
-- VHDL Architecture ece411.MemSignals.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-37.ews.illinois.edu)
--          at - 08:03:35 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MemSignals IS
   PORT( 
      RD_Data_h_o    : IN     STD_LOGIC;
      RESET_L        : IN     STD_LOGIC;
      WE_Data_h_o    : IN     STD_LOGIC;
      clk            : IN     std_logic;
      DATA_MREAD_L   : OUT    std_logic;
      DATA_MWRITEH_L : OUT    std_logic;
      DATA_MWRITEL_L : OUT    std_logic
   );

-- Declarations

END MemSignals ;

--
ARCHITECTURE untitled OF MemSignals IS
  
SIGNAL  DATA_MREAD_L_s   : std_logic;
SIGNAL  DATA_MWRITEH_L_s : std_logic;
SIGNAL  DATA_MWRITEL_L_s : std_logic;
  
BEGIN
  PROCESS (CLK, RESET_L, RD_Data_h_o , WE_Data_h_o)
  BEGIN
      IF RESET_L = '0' THEN
        
        DATA_MREAD_L_s   <= '1';
        DATA_MWRITEH_L_s <= '1';
        DATA_MWRITEL_L_s <= '1';
        
      ELSIF CLK'EVENT AND CLK = '1' THEN
			 IF (RD_Data_h_o = '1') THEN
			  
			  DATA_MREAD_L_s   <= '0';
        DATA_MWRITEH_L_s <= '1';
        DATA_MWRITEL_L_s <= '1';
       
       ELSIF(WE_Data_h_o = '1') THEN
         
        DATA_MREAD_L_s   <= '1';
        DATA_MWRITEH_L_s <= '0';
        DATA_MWRITEL_L_s <= '0';
        
       END IF;
		  END IF;
	END PROCESS;
	
	   DATA_MREAD_L   <= DATA_MREAD_L_s; 
     DATA_MWRITEH_L <= DATA_MWRITEH_L_s; 
     DATA_MWRITEL_L <= DATA_MWRITEL_L_s;

END UNTITLED;
