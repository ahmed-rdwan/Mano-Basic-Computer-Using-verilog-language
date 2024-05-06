module AR_DISGN(LD,INR,T,D,J,CLR);         

	input  J;
	input [7:0] D;
	input [5:0] T;
	output LD,CLR,INR;
	
	wire D7n = ~D[7];
	
	wire a1, a2, a3;
	
	assign a1 = D7n & J & T[3];
	assign a2 = T[2] & T[0] ;
	
	
	assign LD = a1 | a2 ;
	assign CLR = 0;
	assign INR = 0;
	
	
endmodule
