module REG_8(Q, INR, Data, LD, CLK, CLR);

    initial Q = 0;
 
	output reg [7:0] Q;
	input [7:0] Data;
	input INR, LD, CLK, CLR;
	
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
