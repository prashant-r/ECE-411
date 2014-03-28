--
-- VHDL Architecture ece411.SrcA_select.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 00:00:25 03/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SrcA_select IS
   PORT( 
      Opcode   : IN     LC3b_opcode;
      RESET_L  : IN     STD_LOGIC;
      clk      : IN     std_logic;
      SRCA_SEL : OUT    STD_LOGIC
   );

-- Declarations

END SrcA_select ;

--
ARCHITECTURE untitled OF SrcA_select IS
BEGIN
  PROCESS( Opcode)
  BEGIN
    if (Opcode = "0111") then
      SRCA_SEL <= '1' after delay_rom ;
    else 
      SRCA_SEL <= '0' after delay_rom;
      end if ;
      END PROCESS;
      
END ARCHITECTURE untitled;

