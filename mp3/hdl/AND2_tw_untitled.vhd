--
-- VHDL Architecture ece411.AND2_tw.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 13:04:32 03/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY AND2_tw IS
   PORT (
      A : IN     STD_LOGIC_VECTOR(1 DOWNTO 0);
      B : IN     STD_LOGIC_VECTOR(1 DOWNTO 0);
      F : OUT    STD_LOGIC
   );
END AND2_tw;

--
ARCHITECTURE untitled OF AND2_tw IS
BEGIN
   PROCESS(A, B)
   BEGIN
    if (A=B) then
    F<= '1';
  else
    F<='0';
    end if;
    END PROCESS;
END ARCHITECTURE untitled;

