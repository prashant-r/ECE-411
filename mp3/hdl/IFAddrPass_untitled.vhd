--
-- VHDL Architecture ece411.IFAddrPass.untitled
--
-- Created:
--          by - aikara2.ews (gelib-057-29.ews.illinois.edu)
--          at - 18:35:43 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IFAddrPass IS
   PORT( 
      PCout          : IN     LC3b_word;
      clk            : IN     std_logic;
      ifetch_address : OUT    LC3b_word
   );

-- Declarations

END IFAddrPass ;

--
ARCHITECTURE untitled OF IFAddrPass IS
BEGIN
  
  ifetch_address <=  PCout;
  
END ARCHITECTURE untitled;

