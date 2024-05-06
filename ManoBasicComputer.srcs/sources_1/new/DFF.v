module D_ff_reset(Q, D, CLK,REST);

	output reg Q;
	input D, CLK, REST;

	always @(posedge CLK or posedge REST) begin
		if(REST)
			Q <= 1'b0;
		else 
			Q <= D;
	end	

endmodule
