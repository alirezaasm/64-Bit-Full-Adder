`include "./ram.v"
`include "../counter/Counter.v"

module ram_tb;
		
	reg clk, reset,s[1:0], data_in, SISR, SISL,
    reg reg_data;
	
	reg Data; 
    output wire data_out;
		
		counter counter (.clk(clk) , .reset(reset),.s(s),.data_in(.data_in),.SISR(SISR),.SISL(SISL),.data_out(data_out))
    ram ram(.Data(Data), .address(data_out) , .data_out(reg_data)

		
		initial begin
        Data[0]  = $random%10;
        Data[4]  = $random%10;
        Data[8]  = $random%10;
        Data[12] = $random%10;
        reset    = 0;
        s        = b'11;
        $display("reg: %d", data_out)
        #10 $display("reg: %d", data_out)
        #10 $display("reg: %d", data_out)
        #10 $display("reg: %d", data_out)
    end







endmodule
