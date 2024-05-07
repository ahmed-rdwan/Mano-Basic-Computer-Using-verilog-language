module MEMORY_DESIGN (WRITE, READ, T, D, J);

	input  J;
	input [7:0] D;
	input [5:0] T;
	output WRITE, READ;

	wire Dn7;
	wire X1, X2, X3,X4, X5;

	assign Dn7 = ~D[7];

	assign X1 =  T[1];
	assign X2 = Dn7 & J & T[3];
	assign X4= D[2] | D[1] | D[0];
	assign X5= X4& T[4];
	
	
	 
	assign READ = X1 | X2 | X5;
	assign WRITE= 0;

endmodule
