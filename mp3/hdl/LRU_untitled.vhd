--
-- VHDL Architecture ece411.LRU.untitled
--
-- Created:
--          by - ravi7.ews (linux-a1.ews.illinois.edu)
--          at - 05:38:00 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LRU IS
   PORT( 
      RESET_L : IN     std_logic;
      index   : IN     LC3b_c_index;
      LRUout  : OUT    std_logic;
      clk     : IN     std_logic;
      hit     : IN     std_logic;
      Prehit1 : IN     std_logic
   );

-- Declarations

END LRU ;

ARCHITECTURE untitled OF LRU IS
  Type DataArray IS array (7 downto 0) of std_logic;
  signal Data : DataArray;
BEGIN
  --------------------------------------------------------------
  ReadFromDataArray : Process (Data, Index)
  --------------------------------------------------------------
  variable DataIndex : integer;
  begin
    DataIndex := to_integer(unsigned(Index));
    LRUOut <= Data(DataIndex) after DELAY_256B;
  end process ReadFromDataArray;
  
  --------------------------------------------------------------
  WriteToDataArray : Process (Reset_l, index, PreHit1, Hit)
  --------------------------------------------------------------
  variable DataIndex : integer;
  begin
    DataIndex := to_integer(unsigned(Index));
    if (reset_l = '0') then
      Data(0) <= '0';
      Data(1) <= '0';
      Data(2) <= '0';
      Data(3) <= '0';
      Data(4) <= '0';
      Data(5) <= '0';
      Data(6) <= '0';
      Data(7) <= '0';
    end if;
    if (Hit = '1') then
      Data(DataIndex) <= Prehit1;
    end if;
  end process WriteToDataArray;
  
END ARCHITECTURE untitled;

