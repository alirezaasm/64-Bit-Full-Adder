module four_bit_register(A,clk,q0,q1,q2,q3);
input [0:3]A;
input clk ;
output wire q0,q1,q2,q3;
wire qb0, qb1,qb2,qb3;
reg d0,d1,d2,d3;
dff df0(d0,clk,q0,qb0);
dff df1(d1,clk,q1,qb1);
dff df2(d2,clk,q2,qb2);
dff df3(d3,clk,q3,qb3);

always @ (posedge clk)
	if(clk)
	begein 
	d0 =A[0];
	d1=A[1];
	d2=A[2];
	d3=A[3];
	end
	
endmodule 	
	
	