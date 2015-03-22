alu_add_tb: alu.v alu_add_tb.v
	iverilog $^ -o $@

alu_sub_tb: alu.v alu_sub_tb.v
	iverilog $^ -o $@

alu_nand_tb: alu.v alu_nand_tb.v
	iverilog $^ -o $@

alu_xor_tb: alu.v alu_xor_tb.v
	iverilog $^ -o $@

alu_inc_tb: alu.v alu_inc_tb.v
	iverilog $^ -o $@

alu_sra_tb: alu.v alu_sra_tb.v
	iverilog $^ -o $@

alu_srl_tb: alu.v alu_srl_tb.v
	iverilog $^ -o $@

alu_sll_tb: alu.v alu_sll_tb.v
	iverilog $^ -o $@

run_%: %
	./$*

test: run_alu_add_tb run_alu_sub_tb run_alu_nand_tb run_alu_xor_tb run_alu_inc_tb run_alu_sra_tb run_alu_srl_tb run_alu_sll_tb
