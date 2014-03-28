--
-- VHDL Architecture ece411.WordMux2.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 23:13:32 12/29/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux4 IS
   PORT( 
      Input00 : IN     LC3b_word;
      Input01 : IN     LC3b_word;
      Input10 : IN     LC3b_word;
      Input11 : IN     LC3b_word;
      Select4 : IN     std_logic_vector (1 DOWNTO 0);
      Fin     : OUT    LC3b_word
   );

-- Declarations

END WordMux4 ;

--
ARCHITECTURE untitled OF WordMux4 IS
BEGIN
  PROCESS (Input00,Input01,Input10,Input11,Select4)
  variable state:LC3b_word;
  BEGIN
    case Select4 is 
    when "00" => 
      state := Input00;
      when "01" => 
        state := Input01;
        when "10" => 
        state := Input10;
        when "11" => 
        state := Input11;
        when others =>
          state:= (OTHERS => 'X');
          end case;
          Fin <= state after delay_MUX4;
          END PROCESS;
END ARCHITECTURE untitled;

