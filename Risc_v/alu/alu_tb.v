`include "../alu/alu.v"

module alu_tb;

    reg[63:0] number1, number2;
    reg[3:0] control;
    output[63:0] result;
    output zero = 0;

    alu alu_test (number1, number2,control,result,zero);

initial begin

    number1 = 30;
    number2 = 20;
    control = 2'b0110;
    $display("output: %d", result) // result is 10

    #40
    number1 = 20;
    number2 = 30;
    control = 2'b0010;
    $display("output: %d", result) // result is 50


    
end

always #10 clk = ~clk;

endmodule
