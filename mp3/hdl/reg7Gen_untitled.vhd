--
-- VHDL Architecture ece411.reg7Gen.untitled
--
-- Created:
--          by - ravi7.ews (dcl-l520-09.ews.illinois.edu)
--          at - 23:00:23 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY reg7Gen IS
   PORT( 
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      Reg7    : OUT    std_logic_vector (2 DOWNTO 0)
   );

-- Declarations

END reg7Gen ;

--
ARCHITECTURE untitled OF reg7Gen IS
BEGIN
  Reg7 <= "111";
END ARCHITECTURE untitled;

