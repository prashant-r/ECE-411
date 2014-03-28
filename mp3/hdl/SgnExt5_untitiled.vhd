--
-- VHDL Architecture ece411.SgnExt5.untitiled
--
-- Created:
--          by - ravi7.ews (gelib-057-36.ews.illinois.edu)
--          at - 15:38:46 01/29/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SgnExt5 IS
   PORT( 
      ImmD5 : IN     LC3b_imm5;
      clk   : IN     std_logic;
      C     : OUT    LC3b_word
   );

-- Declarations

END SgnExt5 ;

--
ARCHITECTURE untitiled OF SgnExt5 IS
BEGIN
   C <= std_logic_vector(resize(signed(ImmD5), 16)) after DELAY_MUX2;
END ARCHITECTURE untitiled;

