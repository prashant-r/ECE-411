--
-- VHDL Architecture ece411.Datapath.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 15:09:09 01/08/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Datapath IS
   PORT( 
      ALUMuxSel : IN     std_logic;
      ALUop     : IN     LC3b_aluop;
      DATAIN    : IN     LC3b_word;
      LoadIR    : IN     std_logic;
      LoadMAR   : IN     std_logic;
      LoadMDR   : IN     std_logic;
      LoadNZP   : IN     std_logic;
      LoadPC    : IN     std_logic;
      MARMuxSel : IN     std_logic;
      MDRMuxSel : IN     std_logic;
      PCMuxSel  : IN     std_logic;
      RESET_L   : IN     std_logic;
      RFMuxSel  : IN     std_logic;
      RegWrite  : IN     std_logic;
      StoreSR   : IN     std_logic;
      clk       : IN     std_logic;
      ADDRESS   : OUT    LC3b_word;
      CheckN    : OUT    std_logic;
      CheckP    : OUT    std_logic;
      CheckZ    : OUT    std_logic;
      DATAOUT   : OUT    LC3b_word;
      Opcode    : OUT    LC3b_opcode;
      n         : OUT    std_logic;
      p         : OUT    std_logic;
      z         : OUT    std_logic
   );

-- Declarations

-- Template for Synopsys DC constraints
-- pragma dc_script_begin
--
-- pragma dc_script_end
--
-- VHDL Attribute Template
--attribute <name> of <object> : <class> is <value>;
--DATAout = MDRout
--DATAOUT <= MDRout
END Datapath ;

--
ARCHITECTURE untitled OF Datapath IS
BEGIN
END ARCHITECTURE untitled;

