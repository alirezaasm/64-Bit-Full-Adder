module control (op_code, reg_dst , alu_src, mem_to_reg , reg_write , mem_read , mem_write, branch , alu_op)

		     input[6:0] op_code;
		     output reg_dst , alu_src, mem_to_reg , reg_write , mem_read , mem_write, branch;
             output [1:0] alu_op;