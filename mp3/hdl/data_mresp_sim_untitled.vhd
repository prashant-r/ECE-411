--
-- VHDL Architecture ece411.data_mresp_sim.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 16:33:48 03/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY data_mresp_sim IS
   PORT( 
      A       : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      simulator : OUT  std_logic
   );

-- Declarations

END data_mresp_sim ;

--
ARCHITECTURE untitled OF data_mresp_sim IS
BEGIN
 simulator <= A'delayed(500 ns);
  
END ARCHITECTURE untitled;

