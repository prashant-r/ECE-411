ARCHITECTURE UNTITLED OF MEMORY IS
SIGNAL PRE_MRESP_H : STD_LOGIC;
SIGNAL PRE_DATAIN : LC3B_WORD;
BEGIN
  -------------------------------------------------------------------
  VHDL_MEMORY : PROCESS (RESET_L, MREAD_L, MWRITEH_L, MWRITEL_L) 
  -------------------------------------------------------------------
  VARIABLE MEM : MEMORY_ARRAY_64K;
  VARIABLE INT_ADDRESS : INTEGER;
  BEGIN
    INT_ADDRESS := TO_INTEGER(UNSIGNED('0' & ADDRESS(11 DOWNTO 1) & '0'));
  
    -- Reset
    IF (RESET_L = '0') THEN
      PRE_MRESP_H <= '0';
      MYDRAMINIT_64K(MEM);
    ELSE
      -- Read
      IF (MREAD_L = '0' AND MWRITEL_L = '1' AND MWRITEH_L = '1') THEN
        PRE_DATAIN(7 DOWNTO 0)  <= MEM(INT_ADDRESS);
        PRE_DATAIN(15 DOWNTO 8) <= MEM(INT_ADDRESS + 1);
        PRE_MRESP_H <= '1' AFTER 0 NS, '0' AFTER CLOCK_PERIOD;
      
      -- Write
      ELSIF ((MWRITEL_L = '0' OR MWRITEH_L = '0') AND MREAD_L = '1') THEN

        -- Write low byte
        IF (MWRITEL_L = '0') THEN
          MEM(INT_ADDRESS) := DATAOUT(7 DOWNTO 0);
        END IF;

        -- Write high byte
        IF (MWRITEH_L = '0') THEN
          MEM(INT_ADDRESS + 1) := DATAOUT(15 DOWNTO 8);
        END IF;
        PRE_MRESP_H <= '1' AFTER 0 NS, '0' AFTER CLOCK_PERIOD;
      END IF;
    END IF;
  END PROCESS VHDL_MEMORY;

  MRESP_H <= PRE_MRESP_H'DELAYED(DELAY_MP2_MEM);
  DATAIN <= PRE_DATAIN'DELAYED(DELAY_MP2_MEM);
END ARCHITECTURE untitled;
