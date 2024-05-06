module AC_DESIGN(AND, CMA, LDA, ADD, Load, INR, CLR, T, D, B, J);

	input[7:0] D;
	input[5:0] T;
	input[3:0]B;
	input J;

	output Load, INR, CLR;
	output AND, CMA, LDA, ADD;
	
	wire Jn = ~J;
	wire r = D[7] & Jn & T[3];
	
	
	assign AND = D[0] & T[5];  
	assign ADD = T[5] & D[1];  
	assign LDA = T[5] & D[2]; 
	assign CMA = B[2] & r;
	assign INR = B[0] & r;
	assign CLR = r & B[3];
	assign Load =( AND | ADD | LDA  | CMA );  
    
endmodule
