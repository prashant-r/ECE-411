--
-- VHDL Architecture ece411.COMP_TAG.untitled
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 11:10:21 02/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY COMP_TAG IS
   PORT( 
      A    : IN     LC3b_c_tag;
      B    : IN     LC3b_c_tag;
      Fout : OUT    std_logic
   );

-- Declarations

END COMP_TAG ;

--
ARCHITECTURE untitled OF COMP_TAG IS
BEGIN
	COMPARATOR : PROCESS (A, B)
	variable match : std_logic;

	BEGIN
		if (A = B) then
			match := '1';
		else
			match := '0';
		end if;
		Fout <= match after delay_compare8;
	END PROCESS;
END ARCHITECTURE untitled;

