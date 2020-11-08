`include "../FullAdder64/FullAdder64bit.v"
`include "../shift_register/SHIFT_REGISTER.v"

	module counter (s1,clk,s0,d)
	
	input s1;
    input s0;
    input clk;
	input [63:0]d;
     wire [63:0]q;
	
	shift_register(s1, d, clk, s0, s, q) 
	
	endmodule