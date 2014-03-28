--
-- VHDL Architecture ece411.WhichWord.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 14:01:00 02/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WhichWord IS
   PORT( 
      Fout : IN     LC3B_BYTE;
      sig0 : OUT    std_logic;
      sig1 : OUT    std_logic;
      sig2 : OUT    std_logic;
      sig3 : OUT    std_logic;
      sig4 : OUT    std_logic;
      sig5 : OUT    std_logic;
      sig6 : OUT    std_logic;
      sig7 : OUT    std_logic
   );

-- Declarations

END WhichWord ;

--
ARCHITECTURE untitled OF WhichWord IS
BEGIN
  sig0 <= Fout(0);
  sig1 <= Fout(1);
  sig2 <= Fout(2);
  sig3 <= Fout(3);
  sig4 <= Fout(4);
  sig5 <= Fout(5);
  sig6 <= Fout(6);
  sig7 <= Fout(7);
END ARCHITECTURE untitled;

