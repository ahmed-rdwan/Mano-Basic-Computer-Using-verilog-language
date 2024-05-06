module SC_DESIGN (CLR, INR, T, D, J);

	input [7:0] D;
	input [5:0] T;
	input J;
	
	output CLR, INR;
	
	wire y1, y2, y3, y4;
	wire Jn = ~J;
	wire r = D[7] & Jn & T[3]; 
	
	assign y1 = T[2];
	assign y2 = D[2] | D[1] | D[0] ;
	assign y3 = y2 & T[5];
	assign y4 = D[3]& T[4];
	
	assign CLR = y1 | y3 |y4 | r;  
	assign INR = ~CLR;
	
endmodule
