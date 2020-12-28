`include "../multiplexer/multiplexer.v"

module control_tb;

    reg[63:0] X,Y;
    reg select;
    wire[63:0] data_out; 

    multiplexer mux(X, Y, select, data_out);

initial begin

    // result is 00100010
    X = 20;
    Y = 40;
    select = 1;
    $display("control: %d", data_out ) // result is 20

    #40
    select = 0;
    $display("control: %d", data_out ) // result is 40

end

always #10 clk = ~clk;

endmodule
