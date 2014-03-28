--
-- VHDL Architecture ece411.Sure1.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 12:51:21 03/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Sure1 IS
   PORT( 
      clk    : IN     std_logic;
      Sure11 : OUT    std_logic_vector (1 DOWNTO 0)
   );

-- Declarations

END Sure1 ;

--
ARCHITECTURE untitled OF Sure1 IS
BEGIN
  Sure11 <= "11" ;
END ARCHITECTURE untitled;

