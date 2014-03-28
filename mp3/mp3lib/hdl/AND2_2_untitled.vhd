--
-- VHDL Architecture mp3lib.AND2_2.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 12:57:05 03/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY AND2_2 IS
   PORT (
      A : IN     STD_LOGIC_VECTOR(1 DOWNTO 0);
      B : IN     STD_LOGIC_VECTOR( 1 DOWNTO 0);
      F : OUT    STD_LOGIC_VECTOR( 1 DOWNTO 0));
END AND2_2;

--
ARCHITECTURE untitled OF AND2_2 IS
BEGIN
  F <= ( A AND B) AFTER 1ns;
END ARCHITECTURE untitled;

