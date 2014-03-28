echo "--- Executing initialization force file for ../testcode/mp3test-add.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
#force /start_h 0 @0
#force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
#force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp3test-add.asm program code."
run 5
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(0) X"65"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(1) X"13"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(2) X"23"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(3) X"15"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(4) X"00"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(5) X"00"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(6) X"00"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(7) X"00"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(8) X"00"
change /mp3_cpu/GoldenForCp1/vhdl_memory/mem(9) X"00"
run 5
echo "Done loading ../testcode/mp3test-add.asm program code."
