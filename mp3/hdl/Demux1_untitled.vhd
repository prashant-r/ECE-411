--
-- VHDL Architecture ece411.Demux1.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 10:45:44 03/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Demux1 IS
   PORT( 
      PMRESP_H   : IN     std_logic;
      Sel        : IN     std_logic;
      clk        : IN     std_logic;
      D_PMRESP_H : OUT    STD_LOGIC;
      I_PMRESP_H : OUT    STD_LOGIC
   );

-- Declarations

END Demux1 ;

--
ARCHITECTURE untitled OF Demux1 IS
  SIGNAL A : std_logic := '0';
  SIGNAL B : std_logic := '0';
BEGIN
  PROCESS (Sel, PMRESP_H)
    BEGIN
    if (Sel = '0') then
        A <= PMRESP_H ;
        B <= '0'; 
    elsif (Sel = '1') then
        A <= '0';
        B <= PMRESP_H ;
    else
        A <= 'X';
        B <= 'X';
    end if;
    END PROCESS ;
    D_PMRESP_H <= A after DELAY_MUX2;
    I_PMRESP_H <= B after DELAY_MUX2;
END ARCHITECTURE untitled;

