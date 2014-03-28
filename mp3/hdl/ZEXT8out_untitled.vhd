--
-- VHDL Architecture ece411.ZEXT8out.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-23.ews.illinois.edu)
--          at - 23:18:21 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXT8out IS
   PORT( 
      RESET_L   : IN     STD_LOGIC;
      clk       : IN     std_logic;
      trapvect8 : IN     STD_LOGIC_VECTOR (7 DOWNTO 0);
      zext8out  : OUT    LC3b_word
   );

-- Declarations

END ZEXT8out ;

--
ARCHITECTURE untitled OF ZEXT8out IS
BEGIN
  zext8out <= "0000000" & trapvector8 & '0';
END ARCHITECTURE untitled;

