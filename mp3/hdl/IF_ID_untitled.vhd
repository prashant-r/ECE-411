--
-- VHDL Architecture ece411.IF_ID.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 13:30:23 03/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IF_ID IS
   PORT( 
      PCPlus2out     : IN     LC3b_word;
      clk            : IN     std_logic;
      ifetch_mresp_h : IN     std_logic;
      ifetch_out     : IN     std_logic;
      set_regA       : IN     std_logic
   );

-- Declarations

END IF_ID ;

--
ARCHITECTURE untitled OF IF_ID IS
BEGIN
END ARCHITECTURE untitled;

