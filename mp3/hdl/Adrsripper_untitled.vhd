--
-- VHDL Architecture ece411.Adrsripper.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 14:06:35 02/13/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Adrsripper IS
   PORT( 
      ADDRESS     : IN     LC3b_word;
      Blockoffset : OUT    LC3b_c_offset;
      Tag         : OUT    LC3b_c_tag;
      index       : OUT    LC3b_c_index
   );

-- Declarations

END Adrsripper ;

--
ARCHITECTURE untitled OF Adrsripper IS
BEGIN
  	Tag <= ADDRESS(15 downto 7);
	 Index <= ADDRESS(6 downto 4);
	 BlockOffset <= ADDRESS(3 downto 0);
END ARCHITECTURE untitled;

