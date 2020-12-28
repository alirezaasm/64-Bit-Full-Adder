module multiplexer (X,Y , select, data_out)

    parameter size = 64;
    input[size-1:0] X,Y;
    input select;
    output[size-1:0] data_out;
    
    always@(X,Y , select)
    begin
        data_out < = (select == 2'b1) ? X : Y;
    end
    
endmodule
