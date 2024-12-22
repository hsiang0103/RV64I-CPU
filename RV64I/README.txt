vcs top_tb.sv -sverilog -full64 -R -debug_access+all +v2k +PROG=prog0 +FILE=all

There are 2 arguements need to be specify.
+PROG=prog@ : @ for the file you want to run. Ex.+PROG=prog0 for file "prog0".
+FILE=@ : @ for the specific testbench you want to run.

49 testbenches for each instruction:
    use "all" to run all the testbenches.
    add addi addiw addw
	and andi
	auipc
	beq bge bgeu blt bltu bne
	jal jalr
	lb lbu lh lhu lw lwu ld lui
	or ori
	sb sh sw sd
	sll slli slliw sllw
	slt slti sltiu sltu
	sra srai sraiw sraw
	srl srli srliw srlw
	sub subw
	xor xori