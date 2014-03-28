--
-- VHDL Architecture ece411.StoreMux.untitled
--
-- Created:
--          by - ravi7.ews (linux-a2.ews.illinois.edu)
--          at - 04:08:17 12/31/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      clk         : IN     std_logic;
      dest        : IN     LC3b_reg;
      StoreMuxOut : OUT    LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN       
PROCESS (DEST, SRCA, STORESR)
                variable state : LC3b_reg;
                      BEGIN
                       case STORESR is
                        when '0' =>
                        state := DEST;     
                        when '1' => state := SRCA;   
                       when others =>   state := (OTHERS => 'X');   
                       end case; 
                 STOREMUXOUT <= state AFTER DELAY_MUX2;
                                                                                           END PROCESS;
END ARCHITECTURE untitled;
