--
-- VHDL Architecture ece411.AND_maker.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 18:22:25 03/26/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY AND_maker IS
   PORT (
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );
END AND_maker;

--
ARCHITECTURE untitled OF AND_maker IS
BEGIN
  PROCESS(A, B)
  BEGIN
    IF ( A='1' AND B='1' ) then
      F<= '1' after 1ns;
    else
      F <= '0'after 1ns;
    end if;
  END PROCESS;
END ARCHITECTURE untitled;

