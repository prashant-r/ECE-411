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
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY NAND_maker IS
   PORT( 
      B       : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC;
      clk     : IN     std_logic;
      RESET_L : IN     STD_LOGIC;
      A       : IN     STD_LOGIC;
      reset_s : OUT    std_logic
   );

-- Declarations

END NAND_maker ;

--
ARCHITECTURE untitled OF NAND_maker IS
 
BEGIN
  PROCESS(A, B)
  VARIABLE nex : std_logic ;
  VARIABLE res : std_logic ;
  BEGIN
    IF (A ='0') THEN
      IF ( B ='0') THEN
      nex := '1';
      res := '1';
    ELSIF ( B ='1') THEN
      nex := '0';
      res := '1';
    ELSE    
      nex := '1';
      nex := '1';
      END IF;
    ELSIF (A='1') THEN
      IF (B ='1') THEN
        nex := '1';
        res := '0';
      ELSE
        nex :='1';
        res :='1';
      END IF;
    ELSE
    nex := '1';
    res := '1';
    END IF;
    F <= nex after 6 ns ;
    reset_s <= res after 16 ns;
  END PROCESS;
END ARCHITECTURE untitled;

