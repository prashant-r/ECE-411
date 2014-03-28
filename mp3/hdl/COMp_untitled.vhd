--
-- VHDL Architecture ece411.COMp.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 13:28:26 03/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY COMp IS
   PORT( 
      F1      : IN     STD_LOGIC_VECTOR (1 DOWNTO 0);
      clk     : IN     std_logic;
      Select4 : OUT    std_logic_vector (1 DOWNTO 0)
   );

-- Declarations

END COMp ;

--
ARCHITECTURE untitled OF COMp IS
BEGIN
  PROCESS ( F1)
  BEGIN
    if (F1= "01") then
      Select4 <= "01";
    else
      Select4 <= "00";
      end if ;
      end process;
      
END ARCHITECTURE untitled;

