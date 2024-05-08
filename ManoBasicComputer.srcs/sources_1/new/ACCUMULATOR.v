module ACCUMULATOR(Q, INR, Data, LD, CLK, CLR);

   
 
	output reg [7:0] Q;
	input [7:0] Data;
	input INR, LD, CLK, CLR;	
	
	 initial Q = 0;
	 
	
	always @(posedge CLK)
	begin
		if(CLR)
			Q <= 8'b0;
		else if(LD)
			Q <= Data;
		else if(INR)
			Q <= Q + 1;
	end	
endmodule
