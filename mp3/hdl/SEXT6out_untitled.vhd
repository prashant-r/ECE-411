
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY sext6out IS
   PORT( 
      Sext6out : OUT    LC3b_word;
      CLK      : IN     std_logic;
      RESET_L  : IN     STD_LOGIC;
      index6   : IN     LC3b_index6
   );

-- Declarations

END sext6out ;

--
ARCHITECTURE untitled OF SEXT6out IS
BEGIN
  Sext6out <= index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6(5) & index6 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

