-- VHDL Entity ece411.ChangeByIndex.interface
--
-- Created:
--          by - ravi7.ews (siebl-0220-20.ews.illinois.edu)
--          at - 13:23:25 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ChangeByIndex IS
   PORT( 
      DataOut   : IN     LC3b_word;
      F0        : IN     LC3b_word;
      F1        : IN     LC3b_word;
      F2        : IN     LC3b_word;
      F3        : IN     LC3b_word;
      F4        : IN     LC3b_word;
      F5        : IN     LC3b_word;
      F6        : IN     LC3b_word;
      F7        : IN     LC3b_word;
      MWRITEH_L : IN     std_logic;
      mwritel_l : IN     std_logic;
      sig0      : IN     std_logic;
      sig1      : IN     std_logic;
      sig2      : IN     std_logic;
      sig3      : IN     std_logic;
      sig4      : IN     std_logic;
      sig5      : IN     std_logic;
      sig6      : IN     std_logic;
      sig7      : IN     std_logic;
      Fa        : OUT    LC3b_word;
      Fb        : OUT    Lc3b_word;
      Fc        : OUT    LC3b_word;
      Fd        : OUT    LC3b_word;
      Fe        : OUT    LC3b_word;
      Ff        : OUT    Lc3b_word;
      Fg        : OUT    LC3b_word;
      Fh        : OUT    LC3b_word
   );

-- Declarations

END ChangeByIndex ;

--
-- VHDL Architecture ece411.ChangeByIndex.struct
--
-- Created:
--          by - ravi7.ews (siebl-0220-20.ews.illinois.edu)
--          at - 13:23:25 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF ChangeByIndex IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT SplitRightCombiner
   PORT (
      Potential_word : IN     Lc3b_word ;
      WordComin      : IN     LC3b_word ;
      mwrite_inH     : IN     std_logic ;
      mwrite_inL     : IN     std_logic ;
      offsetOn       : IN     std_logic ;
      COrrectedWord  : OUT    LC3b_word 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : SplitRightCombiner USE ENTITY ece411.SplitRightCombiner;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F0,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig0,
         COrrectedWord  => Fa
      );
   U_1 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F1,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig1,
         COrrectedWord  => Fb
      );
   U_2 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F2,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig2,
         COrrectedWord  => Fc
      );
   U_3 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F3,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig3,
         COrrectedWord  => Fd
      );
   U_4 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F4,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig4,
         COrrectedWord  => Fe
      );
   U_5 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F5,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig5,
         COrrectedWord  => Ff
      );
   U_6 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F6,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig6,
         COrrectedWord  => Fg
      );
   U_7 : SplitRightCombiner
      PORT MAP (
         Potential_word => DataOut,
         WordComin      => F7,
         mwrite_inH     => MWRITEH_L,
         mwrite_inL     => mwritel_l,
         offsetOn       => sig7,
         COrrectedWord  => Fh
      );

END struct;
