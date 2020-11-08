module usv_tb; 

	reg s1;
    reg s0;
    reg clk;
	reg [63:0]d;
    wire [63:0]q; 
	
	    counter(.s1(s1) , clk ,.s0(s0),.d(d))
