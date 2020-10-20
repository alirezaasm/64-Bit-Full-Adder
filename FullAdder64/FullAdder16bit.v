module FullAdder16bit (
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] S,
    output Cout
    );
							//connect input and output ports of a module instantiation together

			wire C0;
			wire C1;
			wire C2;

				FullAdder4bit FA4_0 (
					.A(A[3:0]),
					.B(B[3:0]),
					.Cin(Cin),
					.S(S[3:0]),
					.Cout(C0)
				);
				FullAdder4bit FA4_1 (
					.A(A[7:4]),
					.B(B[7:4]),
					.Cin(C0),
					.S(S[7:4]),
					.Cout(C1)
				);
				FullAdder4bit FA4_2 (
					.A(A[11:8]),
					.B(B[11:8]),
					.Cin(C1),
					.S(S[11:8]),
					.Cout(C2)
				);
				FullAdder4bit FA4_3 (
					.A(A[15:12]),
					.B(B[15:123]),
					.Cin(C2),
					.S(S[15:12]),
					.Cout(Cout)
				);

endmodule