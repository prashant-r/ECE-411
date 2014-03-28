--
-- VHDL Architecture ece411.WordMux8.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 19:28:07 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux8 IS
   PORT (
      Fin     : OUT    LC3b_word;
      Input000 : IN     LC3b_word;
      Input001 : IN     LC3b_word;
      Input010 : IN     LC3b_word;
      Input011 : IN     LC3b_word;
      Input100 : IN     LC3b_word;
      Input101 : IN     LC3b_word;
      Input110 : IN     LC3b_word;
      Input111 : IN     LC3b_word;
      Select8 : IN     std_logic_vector(2 DOWNTO 0)
   );
END WordMux8;

--
ARCHITECTURE untitled OF WordMux8 IS
BEGIN
   PROCESS (Input000,Input001,Input010,Input011,Input100,Input101, Input110, Input111, Select8)
  variable state:LC3b_word;
  BEGIN
    case Select8 is 
    when "000" => 
      state := Input000;
      when "001" => 
        state := Input001;
        when "010" => 
        state := Input010;
        when "011" => 
        state := Input011;
        when "100" => 
        state := Input100;
        when "101" => 
        state := Input101;
        when "110" => 
        state := Input110;
        when "111" => 
        state := Input111;
        when others =>
          state:= (OTHERS => 'X');
          end case;
          Fin <= state after delay_MUX8;
          END PROCESS;
END ARCHITECTURE untitled;

