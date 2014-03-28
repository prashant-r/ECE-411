--
-- VHDL Architecture ece411.Delayer_16.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 11:21:14 03/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Delayer_16 IS
   PORT (
      A : IN     std_logic_vector(15 downto 0);
      F : OUT     std_logic_vector(15 downto 0)
   );
END Delayer_16;

--
ARCHITECTURE untitled OF Delayer_16 IS
BEGIN
  F <= A after 17ns ;
END ARCHITECTURE untitled;

