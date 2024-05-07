module DR_DESIGN(LD,INC,CLR,T, D);

	input [7:0] D;
	input [5:0] T;
	output LD,INC,CLR;
	wire o;
	assign o= D[0] | D[1] | D[2] ;
	
	assign LD = T[4] & o;
	assign INC = 0;
	assign CLR = 0;
	

endmodule
