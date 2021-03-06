--
-- VHDL Architecture ece411.AddressConstructor.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 20:50:01 02/22/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddressConstructor IS
   PORT( 
      zero     : IN     std_logic_vector ( 3 DOWNTO 0);
      AddCWB   : OUT    LC3b_word;
      WhichTag : IN     LC3b_c_tag;
      index    : IN     LC3b_c_index
   );

-- Declarations

END AddressConstructor ;

--
ARCHITECTURE untitled OF AddressConstructor IS
BEGIN
  AddCWB <= WhichTag & index & zero after delay_mux2 ;
END ARCHITECTURE untitled;

