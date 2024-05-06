module CONTROLER ( CLK, T, cout,ir_out,
                    
                        ar_clr, ar_inr, ar_load,
                             pc_clr, pc_inr, pc_load,
                                   dr_clr, dr_inr, dr_load,
                        ac_clr, ac_inr, ac_load,
                            ir_clr, ir_inr, ir_load,
                                                    write, read,
                                                    CMA, LDA, ADD, AND,
                                                  CLR_sc,inr_sc,E,X,J,D);
                                                  
                                                  
                                                  
                              
                                                                                                            
                                                                                                            

    input CLK, cout;
	
	input [7:0] D,ir_out;
	input [5:0]  T;
		output ar_clr, ar_inr, ar_load,
           pc_clr, pc_inr, pc_load,
           ac_clr, ac_inr, ac_load,
           dr_clr, dr_inr, dr_load,
           ir_clr, ir_inr, ir_load,
           write, read,
           CMA, LDA, ADD, AND,
           CLR_sc, inr_sc,
           E,J;
	  
    output [7:0] X;
  
    
    wire [7:0] D;
	wire [3:0] B = ir_out [3:0];
	wire [2:0] op_code = ir_out[6:4];
	wire J = ir_out[7];
	wire r;
	wire Jn;
	
	
	assign Jn = ~J;
	assign 	r =	D[7] & T[3] &Jn;

    /////////////////--DECODER--//////////////////////
	Decoder3_8 decode(op_code,D[7:0]);	//(I, O);  
	
	/////////////////--AR DESIGN--///////////////////
	AR_DISGN ar(ar_load, ar_inr, T, D, J,ar_clr);
	
	/////////////////--PC DESIGN--///////////////////
	PC_DESIGN pc(pc_clr, pc_inr, pc_load,T);  
	
	/////////////////--DR DESIGN--///////////////////
	DR_DESIGN dr(dr_load, dr_inr, dr_clr, T,D); 
	
	/////////////////--AC DESIGN--///////////////////
	AC_DESIGN acc(AND, CMA, LDA, ADD, ac_load, ac_inr, ac_clr, T, D, B, J); 
	 
	/////////////////--IR DESIGN--///////////////////
	IR_DESIGN ir(D, T, ir_clr, ir_inr, ir_load);
	
	////////////////--RAM DESIGN--///////////////////
	MEMORY_DESIGN ram(write, read, T, D, J);
	
    ////////////////--SEQUENCE COUNTER DESIGN--///////////////////
	SC_DESIGN s_c(CLR_sc, inr_sc, T, D, J);	

	////////////////--BUS DESIGN--///////////////////
	BUS_DESIGN dut(X, D, T, J);    
	
	
 


	
	
	
	
	
	
	
	
	
	
	
endmodule