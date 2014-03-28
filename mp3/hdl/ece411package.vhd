--
-- COMPONENT : LC3B_TYPES
--
-- GENERATED BY SYSTEM ARCHITECT VERSION V8.4_3.7
-- EDITED BY MATT ZAVISLAK FOR ECE 312 MP3 ON NOVEMBER 10, 2000
-- VERSION 2.0
-- EDITED BY DANIEL MANJARRES FOR ECE 411 JANUARY 2010
--
LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE LC3B_TYPES IS
-- DATAPATH SIGNAL WIDTHS
	SUBTYPE LC3B_PWORD     IS STD_LOGIC_VECTOR(255 DOWNTO 0);  --"POLY" WORD
	SUBTYPE LC3B_OWORD     IS STD_LOGIC_VECTOR(127 DOWNTO 0);  --OCTAL WORD
	SUBTYPE LC3B_QWORD     IS STD_LOGIC_VECTOR(63 DOWNTO 0);  --QUAD WORD
	SUBTYPE LC3B_DWORD     IS STD_LOGIC_VECTOR(31 DOWNTO 0);  --DOUBLE WORD
	SUBTYPE LC3B_WORD      IS STD_LOGIC_VECTOR(15 DOWNTO 0);
	SUBTYPE LC3B_BYTE      IS STD_LOGIC_VECTOR(7 DOWNTO 0);
	SUBTYPE LC3B_NIBBLE    IS STD_LOGIC_VECTOR(3 DOWNTO 0);
	SUBTYPE LC3B_CC        IS STD_LOGIC_VECTOR(2 DOWNTO 0);
	SUBTYPE LC3B_REG       IS STD_LOGIC_VECTOR(2 DOWNTO 0);
	SUBTYPE LC3B_ALUOP     IS STD_LOGIC_VECTOR(2 DOWNTO 0);
	SUBTYPE LC3B_SHFTOP    IS STD_LOGIC_VECTOR(1 DOWNTO 0);
	SUBTYPE LC3B_IMM5      IS STD_LOGIC_VECTOR(4 DOWNTO 0);
	SUBTYPE LC3B_OFFSET9   IS STD_LOGIC_VECTOR(8 DOWNTO 0);
	SUBTYPE LC3B_OFFSET11  IS STD_LOGIC_VECTOR(10 DOWNTO 0);
	SUBTYPE LC3B_INDEX6    IS STD_LOGIC_VECTOR(5 DOWNTO 0);
	SUBTYPE LC3B_TRAPVECT8 IS STD_LOGIC_VECTOR(7 DOWNTO 0);
	SUBTYPE LC3B_OPCODE    IS STD_LOGIC_VECTOR(3 DOWNTO 0);
	SUBTYPE LC3B_4MUX_SEL  IS STD_LOGIC_VECTOR(1 DOWNTO 0);
	SUBTYPE LC3B_8MUX_SEL  IS STD_LOGIC_VECTOR(2 DOWNTO 0);
  SUBTYPE LC3B_3DECODE   IS STD_LOGIC_VECTOR(2 DOWNTO 0);
--CACHE SIGNALS (ADD MORE TO ME!!)
  SUBTYPE LC3B_C_OFFSET  IS STD_LOGIC_VECTOR(3 DOWNTO 0);
  SUBTYPE LC3B_C_INDEX   IS STD_LOGIC_VECTOR(2 DOWNTO 0);
  SUBTYPE LC3B_C_TAG     IS STD_LOGIC_VECTOR(8 DOWNTO 0);

	TYPE MEMORY_ARRAY_64K IS ARRAY (0 TO 65535) OF LC3B_BYTE;
	
	TYPE OPNAME IS (add_op, and_op, ldr_op, not_op, pass_op, br_op, sll_op, str_op,srl_op, sra_op, bad_op);
	
	TYPE ID_CONTROL IS RECORD
	  srcb_select : std_logic;
	  END RECORD;
	TYPE EX_CONTROL IS RECORD
	    aluop : LC3B_ALUOP;
	END RECORD;
	
	TYPE WB_CONTROL IS RECORD
	    DataMuxSel : std_logic_vector (1 downto 0);
	    LD_Reg : std_logic;
	    LD_CC : std_logic;
	END RECORD;
	
	TYPE MEM_CONTROL IS RECORD 
	    PCMuxSelect : std_logic;
	    mread_l  : std_logic;
	    mwritel_l : std_logic;
	    mwriteh_l :std_logic;
	    END RECORD;
	TYPE CONTROL_WORD IS RECORD
	    id : ID_CONTROL;
	    ex : EX_CONTROL; 
	    wb : WB_CONTROL;
	    mem : MEM_CONTROL; 
	    name : OPNAME;
	END RECORD;
	
	-- ALU OP DEFINITIONS
	CONSTANT ALU_ADD  : LC3B_ALUOP := "000";
	CONSTANT ALU_AND  : LC3B_ALUOP := "001";
	CONSTANT ALU_NOT  : LC3B_ALUOP := "010";
	CONSTANT ALU_PASS : LC3B_ALUOP := "011";
	CONSTANT ALU_SLL  : LC3B_ALUOP := "100";
	CONSTANT ALU_SRL  : LC3B_ALUOP := "110";
	CONSTANT ALU_SRA  : LC3B_ALUOP := "111";

	-- SHIFTER OP DEFINITIONS
	CONSTANT SHFT_SLL : LC3B_SHFTOP := "10";
	CONSTANT SHFT_SRL : LC3B_SHFTOP := "01";
	CONSTANT SHFT_SRA : LC3B_SHFTOP := "11";

	-- INSTRUCTION DEFINITIONS
	CONSTANT OP_ADD  : LC3B_OPCODE := "0001";
	CONSTANT OP_AND  : LC3B_OPCODE := "0101";
	CONSTANT OP_BR   : LC3B_OPCODE := "0000";
	CONSTANT OP_JSR  : LC3B_OPCODE := "0100";
	CONSTANT OP_JMP  : LC3B_OPCODE := "1100";
	CONSTANT OP_LDR  : LC3B_OPCODE := "0110";
	CONSTANT OP_LDB  : LC3B_OPCODE := "0010";
	CONSTANT OP_LDI  : LC3B_OPCODE := "1010";
	CONSTANT OP_LEA  : LC3B_OPCODE := "1110";
	CONSTANT OP_NOT  : LC3B_OPCODE := "1001";
	CONSTANT OP_RET  : LC3B_OPCODE := "1100";
	CONSTANT OP_RTI  : LC3B_OPCODE := "1000";
	CONSTANT OP_SHF  : LC3B_OPCODE := "1101";
	CONSTANT OP_STR  : LC3B_OPCODE := "0111";
	CONSTANT OP_STB  : LC3B_OPCODE := "0011";
	CONSTANT OP_STI  : LC3B_OPCODE := "1011";
	CONSTANT OP_TRAP : LC3B_OPCODE := "1111";

	-- TIME DELAYS **********
	-- CHANGED FOR FALL 2009: ALU, ADDER, SHIFTER DELAYS
	CONSTANT HALF_CLOCK_PERIOD  : TIME := 25 NS;
	CONSTANT CLOCK_PERIOD       : TIME := (HALF_CLOCK_PERIOD + HALF_CLOCK_PERIOD);
	CONSTANT DELAY_LOGIC2       : TIME := 1 NS;
	CONSTANT DELAY_LOGIC3       : TIME := 2 NS;
	CONSTANT DELAY_LOGIC4       : TIME := 2 NS;
	CONSTANT DELAY_MUX2         : TIME := 2 NS;
	CONSTANT DELAY_MUX4         : TIME := 4 NS;
	CONSTANT DELAY_MUX8         : TIME := 6 NS;
	CONSTANT DELAY_DECODE3      : TIME := 6 NS;
	CONSTANT DELAY_GENCC        : TIME := 6 NS;
	CONSTANT DELAY_ALU          : TIME := 15 NS;
	CONSTANT DELAY_ADDER        : TIME := 12 NS;
	CONSTANT DELAY_SHIFTER      : TIME := 10 NS;
	CONSTANT DELAY_REGFILE_READ : TIME := 7 NS;
	CONSTANT DELAY_REG          : TIME := 5 NS;
	CONSTANT DELAY_COMPARE8     : TIME := 3 NS;
	CONSTANT DELAY_COMPARE16    : TIME := 4 NS;

	--DELAYS FOR DATA ARRAYS
	CONSTANT DELAY_128B : TIME := 14 NS;
	CONSTANT DELAY_256B : TIME := 20 NS;
	CONSTANT DELAY_512B : TIME := 25 NS;
	CONSTANT DELAY_1KB  : TIME := 35 NS;
	CONSTANT DELAY_2KB  : TIME := 45 NS;
	CONSTANT DELAY_4KB  : TIME := 60 NS;

	--DELAY FOR CONTROL ROM
  CONSTANT DELAY_ROM : TIME := 3 NS;
	
	--DELAYS FOR DRAM.
	CONSTANT DELAY_MP1_MEM  : TIME := 50 NS;
	CONSTANT DELAY_MP2_MEM  : TIME := 500 NS;
	CONSTANT DELAY_MP22_MEM : TIME := 500 NS;
	CONSTANT DELAY_16B_MEM  : TIME := 500 NS;
	CONSTANT DELAY_32B_MEM  : TIME := 510 NS;
	CONSTANT DELAY_64B_MEM  : TIME := 530 NS;
	CONSTANT DELAY_128B_MEM : TIME := 570 NS;
	CONSTANT DELAY_256B_MEM : TIME := 650 NS;
      
	PROCEDURE MYDRAMINIT_64K (
		VARIABLE MEM : OUT MEMORY_ARRAY_64K);

END LC3B_TYPES ;

PACKAGE BODY LC3B_TYPES IS

	PROCEDURE MYDRAMINIT_64K (
		VARIABLE MEM : OUT MEMORY_ARRAY_64K) IS
		BEGIN  -- MYDRAMINIT

	    -- USE THE DOIFY.SH SCRIPT TO LOAD PROGRAMS INTO MEMORY, OR 
	    -- INSERT YOUR MEMORY VECTORS HERE.
	    -- EXAMPLE: MEM(0) := TO_STDLOGICVECTOR(X"00");
	    
		MEM(0) := TO_STDLOGICVECTOR(X"11");
		MEM(1) := TO_STDLOGICVECTOR(X"62");
		MEM(2) := TO_STDLOGICVECTOR(X"12");
		MEM(3) := TO_STDLOGICVECTOR(X"64");
		MEM(4) := TO_STDLOGICVECTOR(X"13");
		MEM(5) := TO_STDLOGICVECTOR(X"66");
		MEM(6) := TO_STDLOGICVECTOR(X"C2");
		MEM(7) := TO_STDLOGICVECTOR(X"18");
		MEM(8) := TO_STDLOGICVECTOR(X"C3");
		MEM(9) := TO_STDLOGICVECTOR(X"16");
		MEM(10) := TO_STDLOGICVECTOR(X"BF");
		MEM(11) := TO_STDLOGICVECTOR(X"9A");
		MEM(12) := TO_STDLOGICVECTOR(X"41");
		MEM(13) := TO_STDLOGICVECTOR(X"1B");
		MEM(14) := TO_STDLOGICVECTOR(X"05");
		MEM(15) := TO_STDLOGICVECTOR(X"19");
		MEM(16) := TO_STDLOGICVECTOR(X"FB");
		MEM(17) := TO_STDLOGICVECTOR(X"07");
		MEM(18) := TO_STDLOGICVECTOR(X"C4");
		MEM(19) := TO_STDLOGICVECTOR(X"5E");
		MEM(20) := TO_STDLOGICVECTOR(X"14");
		MEM(21) := TO_STDLOGICVECTOR(X"7E");
		MEM(22) := TO_STDLOGICVECTOR(X"14");
		MEM(23) := TO_STDLOGICVECTOR(X"62");
		MEM(24) := TO_STDLOGICVECTOR(X"FF");
		MEM(25) := TO_STDLOGICVECTOR(X"91");
		MEM(26) := TO_STDLOGICVECTOR(X"40");
		MEM(27) := TO_STDLOGICVECTOR(X"50");
		MEM(28) := TO_STDLOGICVECTOR(X"14");
		MEM(29) := TO_STDLOGICVECTOR(X"70");
		MEM(30) := TO_STDLOGICVECTOR(X"15");
		MEM(31) := TO_STDLOGICVECTOR(X"62");
		MEM(32) := TO_STDLOGICVECTOR(X"FF");
		MEM(33) := TO_STDLOGICVECTOR(X"0F");
		MEM(34) := TO_STDLOGICVECTOR(X"01");
		MEM(35) := TO_STDLOGICVECTOR(X"00");
		MEM(36) := TO_STDLOGICVECTOR(X"02");
		MEM(37) := TO_STDLOGICVECTOR(X"00");
		MEM(38) := TO_STDLOGICVECTOR(X"08");
		MEM(39) := TO_STDLOGICVECTOR(X"00");
		MEM(40) := TO_STDLOGICVECTOR(X"00");
		MEM(41) := TO_STDLOGICVECTOR(X"00");
		MEM(42) := TO_STDLOGICVECTOR(X"0D");
		MEM(43) := TO_STDLOGICVECTOR(X"60");
		--MAKE NO CHANGES AFTER THIS LINE.
	END MYDRAMINIT_64K;

END LC3B_TYPES;
