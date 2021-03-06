-- VHDL Entity ece411.DirtyComputer.generatedInstance
--
-- Created:
--          by - ravi7.ews (linux-a3.ews.illinois.edu)
--          at - 17:20:53 02/22/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DirtyComputer IS
   PORT( 
      Dclk         : IN     std_logic;
      PreHitCache1 : IN     std_logic;
      PreHitCache2 : IN     STD_LOGIC;
      setDirty     : OUT    std_logic;
      setDirty1    : OUT    std_logic;
      start_hit    : IN     std_logic;
      write_access : IN     std_logic
   );

END DirtyComputer ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF DirtyComputer IS 
BEGIN


END generatedInstance;
