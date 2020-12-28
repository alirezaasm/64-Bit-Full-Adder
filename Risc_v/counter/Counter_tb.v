module usv_tb; 

	reg s1;
    reg s0;
    reg clk;
	reg [63:0]d;
    wire [63:0]q; 
	
	    counter(.s1(s1) , clk ,.s0(s0),.d(d))


	initial begin

    // parallel load
    d = 64'b0;
    s1 = 1'b1;
    s0 = 1'b1;
    
    end
	
always #10 clk = ~clk;


end	