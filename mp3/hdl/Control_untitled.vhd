--
-- VHDL Architecture ece411.Control.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 19:26:26 01/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Control IS
   PORT( 
      CheckN    : IN     std_logic;
      CheckP    : IN     std_logic;
      CheckZ    : IN     std_logic;
      MRESP_H   : IN     std_logic;
      Opcode    : IN     LC3b_opcode;
      RESET_L   : IN     std_logic;
      START_H   : IN     std_logic;
      clk       : IN     std_logic;
      n         : IN     std_logic;
      p         : IN     std_logic;
      z         : IN     std_logic;
      ALUMuxSel : OUT    std_logic;
      ALUop     : OUT    LC3b_aluop;
      LoadIR    : OUT    std_logic;
      LoadMAR   : OUT    std_logic;
      LoadMDR   : OUT    std_logic;
      LoadNZP   : OUT    std_logic;
      LoadPC    : OUT    std_logic;
      MARMuxSel : OUT    std_logic;
      MDRMuxSel : OUT    std_logic;
      MREAD_L   : OUT    std_logic;
      MWRITEH_L : OUT    std_logic;
      MWRITEL_L : OUT    std_logic;
      PCMuxSel  : OUT    std_logic;
      RFMuxSel  : OUT    std_logic;
      RegWrite  : OUT    std_logic;
      StoreSR   : OUT    std_logic
   );

-- Declarations

END Control ;

--
ARCHITECTURE untitled OF Control IS
BEGIN
END ARCHITECTURE untitled;

