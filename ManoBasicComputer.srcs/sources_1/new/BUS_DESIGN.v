module BUS_DESIGN(X, D, T, J);

	input  J;
	input [7:0] D;
	input [5:0] T;

	output [7:0] X;

	wire D7n = ~D[7];
	wire A1,A2,L6,L7;
	
	
	assign A1= D[2]& T[5];
	assign A2= D[3] & T[4];
	assign L6=  D7n & J & T[3];
	assign L7= ((D[0] | D[1] | D[2]) & T[4]);
	
	
	assign X[0] = 0; //EMPTY_NONE
	assign X[1] = 0; //EMPTY                                                       //AR as source
	assign X[2] = T[0];                                                            //PC as source
	assign X[3] = A1;                                                              //DR as source
	assign X[4] = A2 ;                                                             //AC as source
	assign X[5] = T[2] ;                                                           //IR as source
    assign X[6] = 0 ;    //EMPTY                                                   //TR as source
    assign X[7] = L6 | L7 | T[1] ;                                                 //M[AR] as source

endmodule
