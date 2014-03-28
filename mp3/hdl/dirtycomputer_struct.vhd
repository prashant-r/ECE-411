-- VHDL Entity ece411.DirtyComputer.symbol
--
-- Created:
--          by - ravi7.ews (siebl-0220-18.ews.illinois.edu)
--          at - 00:07:22 02/28/14
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
      Hit          : IN     std_logic;
      PreHitC2     : IN     std_logic;
      write_access : IN     std_logic;
      setDirty1    : OUT    std_logic
   );

-- Declarations

END DirtyComputer ;

--
-- VHDL Architecture ece411.DirtyComputer.struct
--
-- Created:
--          by - ravi7.ews (siebl-0220-18.ews.illinois.edu)
--          at - 00:07:22 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF DirtyComputer IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT AND3
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      C : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND3 USE ENTITY mp3lib.AND3;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : AND3
      PORT MAP (
         A => write_access,
         B => PreHitC2,
         C => Hit,
         F => setDirty1
      );

END struct;
