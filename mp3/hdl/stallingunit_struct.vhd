-- VHDL Entity ece411.StallingUnit.interface
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 02:49:21 03/31/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY StallingUnit IS
   PORT( 
      Mem_Control    : IN     CONTROL_WORD;
      RESET_L        : IN     STD_LOGIC;
      clk            : IN     std_logic;
      data_mresp_h   : IN     std_logic;
      ifetch_mresp_h : IN     std_logic;
      Load_PC        : OUT    STD_LOGIC;
      Set_regB       : OUT    STD_LOGIC;
      set_regA       : OUT    std_logic;
      set_regC       : OUT    std_logic;
      set_regD       : OUT    std_logic
   );

-- Declarations

END StallingUnit ;

--
-- VHDL Architecture ece411.StallingUnit.struct
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 02:49:22 03/31/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF StallingUnit IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A         : STD_LOGIC;
   SIGNAL F         : STD_LOGIC;
   SIGNAL Loader    : STD_LOGIC;
   SIGNAL Something : STD_LOGIC;
   SIGNAL dout      : STD_LOGIC;
   SIGNAL mread_l   : std_logic;
   SIGNAL mwriteh_l : std_logic;
   SIGNAL mwritel_l : std_logic;
   SIGNAL reset_s   : std_logic;


   -- Component Declarations
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT Control_slice
   PORT (
      Control_ID  : IN     CONTROL_WORD;
      RESET_L     : IN     STD_LOGIC;
      clk         : IN     std_logic;
      ALUop_ID    : OUT    LC3b_aluop;
      LD_reg_h    : OUT    std_logic;
      PCMuxSel    : OUT    STd_logic;
      Set_cc_h    : OUT    std_logic;
      dataMuXsel  : OUT    std_logic_vector (1 DOWNTO 0);
      mread_l     : OUT    std_logic;
      mwriteh_l   : OUT    std_logic;
      mwritel_l   : OUT    std_logic;
      srcb_select : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT NAND3
   PORT (
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      C : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT NAND_maker
   PORT (
      A       : IN     STD_LOGIC;
      B       : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      clk     : IN     std_logic;
      F       : OUT    STD_LOGIC;
      reset_s : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT REG1Mod
   PORT (
      A       : IN     STD_LOGIC;
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY ece411.AND2;
   FOR ALL : Control_slice USE ENTITY ece411.Control_slice;
   FOR ALL : NAND3 USE ENTITY ece411.NAND3;
   FOR ALL : NAND_maker USE ENTITY ece411.NAND_maker;
   FOR ALL : REG1Mod USE ENTITY ece411.REG1Mod;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   -- eb1 1    
   Load_PC <= loader;
   set_regA <= loader;
   set_regB <= loader;
   set_regC <= loader;
   set_regD <= loader;
                                      


   -- ModuleWare code(v1.9) for instance 'U_5' of 'vdd'
   dout <= '1';

   -- Instance port mappings.
   U_2 : AND2
      PORT MAP (
         A => ifetch_mresp_h,
         B => F,
         F => Loader
      );
   U_1 : Control_slice
      PORT MAP (
         Control_ID  => Mem_Control,
         RESET_L     => RESET_L,
         clk         => clk,
         ALUop_ID    => OPEN,
         dataMuXsel  => OPEN,
         LD_reg_h    => OPEN,
         Set_cc_h    => OPEN,
         PCMuxSel    => OPEN,
         mread_l     => mread_l,
         mwritel_l   => mwritel_l,
         mwriteh_l   => mwriteh_l,
         srcb_select => OPEN
      );
   U_3 : NAND3
      PORT MAP (
         A => mread_l,
         B => mwritel_l,
         C => mwriteh_l,
         F => A
      );
   U_0 : NAND_maker
      PORT MAP (
         B       => Something,
         F       => F,
         clk     => clk,
         RESET_L => RESET_L,
         A       => data_mresp_h,
         reset_s => reset_s
      );
   U_4 : REG1Mod
      PORT MAP (
         RESET_L => reset_s,
         A       => dout,
         EN      => A,
         CLK     => clk,
         F       => Something
      );

END struct;
