--
-- VHDL Architecture ece411.RegSelectMux.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 01:35:03 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY RegSelectMux IS
   PORT (
      A   : IN     LC3b_reg;
      B   : IN     LC3b_reg;
      F   : OUT    LC3b_reg;
      Sel : IN     std_logic
   );
END RegSelectMux;

--
ARCHITECTURE untitled OF RegSelectMux IS
BEGIN
  PROCESS (A,B,Sel)
  variable state:LC3b_reg;
  BEGIN
    case Sel is 
    when '0' => 
      state := A;
      when '1' => 
        state := B;
        when others =>
          state:= (OTHERS => 'X');
          end case;
          F <= state after delay_MUX2;
          END PROCESS;
END ARCHITECTURE untitled;