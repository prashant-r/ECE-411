echo "--- Executing initialization force file for ../testcode/mp2test1.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test1.asm program code."
run 5
change /mp2_cpu/dram/vhdl_memory/mem(0) X"11"
change /mp2_cpu/dram/vhdl_memory/mem(1) X"62"
change /mp2_cpu/dram/vhdl_memory/mem(2) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(3) X"64"
change /mp2_cpu/dram/vhdl_memory/mem(4) X"14"
change /mp2_cpu/dram/vhdl_memory/mem(5) X"66"
change /mp2_cpu/dram/vhdl_memory/mem(6) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(7) X"18"
change /mp2_cpu/dram/vhdl_memory/mem(8) X"42"
change /mp2_cpu/dram/vhdl_memory/mem(9) X"1B"
change /mp2_cpu/dram/vhdl_memory/mem(10) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(11) X"19"
change /mp2_cpu/dram/vhdl_memory/mem(12) X"FD"
change /mp2_cpu/dram/vhdl_memory/mem(13) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(14) X"05"
change /mp2_cpu/dram/vhdl_memory/mem(15) X"14"
change /mp2_cpu/dram/vhdl_memory/mem(16) X"13"
change /mp2_cpu/dram/vhdl_memory/mem(17) X"6A"
change /mp2_cpu/dram/vhdl_memory/mem(18) X"43"
change /mp2_cpu/dram/vhdl_memory/mem(19) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(20) X"F8"
change /mp2_cpu/dram/vhdl_memory/mem(21) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(22) X"02"
change /mp2_cpu/dram/vhdl_memory/mem(23) X"48"
change /mp2_cpu/dram/vhdl_memory/mem(24) X"28"
change /mp2_cpu/dram/vhdl_memory/mem(25) X"19"
change /mp2_cpu/dram/vhdl_memory/mem(26) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(27) X"0F"
change /mp2_cpu/dram/vhdl_memory/mem(28) X"60"
change /mp2_cpu/dram/vhdl_memory/mem(29) X"52"
change /mp2_cpu/dram/vhdl_memory/mem(30) X"6F"
change /mp2_cpu/dram/vhdl_memory/mem(31) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(32) X"C0"
change /mp2_cpu/dram/vhdl_memory/mem(33) X"C1"
change /mp2_cpu/dram/vhdl_memory/mem(34) X"05"
change /mp2_cpu/dram/vhdl_memory/mem(35) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(36) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(37) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(38) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(39) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(40) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(41) X"FF"
run 5
echo "Done loading ../testcode/mp2test1.asm program code."
