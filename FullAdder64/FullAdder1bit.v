module FullAdder1 (
    input A,
    input B,
    input Cin,//input carry 
    output S,// sum 
    output Cout//out carry
	
	
    );
			//elements can be used as output within an actual module declaration, But elements cannot be connected to the output port of a module instantiation
			reg S, Cout;	
			
					
					//describe events that should happen under
					
										 always @(*)
						begin
							S = A ^ B ^ Cin;
							Cout = A&B | (A^B) & Cin; // or => Cout = A&B | A&Cin | B&Cin;
						end

   

endmodule