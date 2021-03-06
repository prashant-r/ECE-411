--
-- VHDL Architecture ece411.JSRadd.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 02:10:07 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY JSRadd IS
   PORT( 
      ADJ11 : IN     LC3b_word;
      PCout : IN     LC3b_word;
      clk   : IN     std_logic;
      ran2  : OUT    LC3b_word
   );

-- Declarations

END JSRadd ;

--
ARCHITECTURE untitled OF JSRadd IS
Begin
    PROCESS (PCout, ADJ11)     
    BEGIN
                 ran2 <= STD_LOGIC_VECTOR(UNSIGNED(PCout) + UNSIGNED(ADJ11)) AFTER DELAY_ADDER;
    END PROCESS;
END ARCHITECTURE untitled;