-- VHDL Entity ece411.Demux1.generatedInstance
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 12:08:16 03/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Demux1 IS
   PORT( 
      clk        : IN     std_logic;
      D_PMRESP_H : OUT    STD_LOGIC;
      I_PMRESP_H : OUT    STD_LOGIC;
      PMRESP_H   : IN     std_logic;
      Sel        : IN     std_logic
   );

END Demux1 ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF Demux1 IS 
BEGIN


END generatedInstance;
