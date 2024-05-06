`define	BLE	8'b0

 module ARCHITECTURE(input CLK,clk,
    
     output wire [7:0] dr_out, ac_out, ir_out, mem_out,
     output wire [3:0] pc_out, ar_out,
     output wire [7:0] D,
     output wire [5:0] T,
     output wire [2:0] counters,
     output wire [7:0] out_mux,    
     output wire [2:0] in_mux,
     output wire [7:0] X,
     output wire J,
     output wire E
     );
     
	wire   ar_inr, ar_load, ar_clr,
                pc_inr, pc_load, pc_clr,
                dr_inr, dr_load, dr_clr,
                ac_inr, ac_load, ac_clr,
                ir_inr, ir_load, ir_clr,
                write, read,
                CMA, LDA, ADD, AND,
                inr_sc,S;
                wire [5:0] times ;
	
	
	
	
	 
	
	
	wire [7:0] o1, o2, o3, o4, o5 ,o7;  
	
	  BUS_SELECTION bus(8'bxxxxxxxx, o1, o2, o3, o4, o5, 8'b00000000, o7, in_mux, out_mux);
                                                                       
	
	
	wire [7:0]mem_in;
	
	
	memory RAMAT(CLK,read,ar_out,write,mem_in,mem_out);  
    assign o7 = mem_out;


    wire [3:0] ar_in;
       
        wire clr_ar;
         wire load_ar;
        wire inr_ar;


REG_4 ar (ar_out,inr_ar,ar_in,load_ar,CLK,clr_ar);                   
       assign o1 = {4'b0000, ar_out};   
                             
       
       wire clr_pc,load_pc;
       wire [3:0] pc_in;
       
       wire inc_pc;
        REG_4  pc(pc_out,inc_pc,pc_in,load_pc,CLK,clr_pc); 
        
        
        assign o2 = {4'b0000, pc_out};
        
           
           
            wire [7:0]dr_in;
            wire inr_dr,load_dr,clr_dr;
            
             REG_8 dr(dr_out,inr_dr,dr_in,load_dr,CLK,clr_dr);               
            assign o3=dr_out;
            
            
              
                wire [7:0] ac_in;
                wire cout;
                wire inr_ac,clr_ac,load_ac;
                assign E=cout;
                
  
                REG_8 ac(ac_out,inr_ac,ac_in,load_ac,CLK,clr_ac);                                  
                ALU alu(AND,ADD, LDA, CMA,E,ac_out,dr_out,cout,ac_in);  // logic and control
                
                           
                assign o4 = ac_out;    
                
                
                    
                    
                  
                    wire inr_ir,load_ir,clr_ir;
                     wire [7:0] ir_in;
                    
                    
                     REG_8 ir(ir_out,inr_ir,ir_in,load_ir,CLK,clr_ir);
                        
                     
                                          
                                        
                                     assign o5 = ir_out;                             
                              wire CLR_sc=0;
                                 
                                 
                                 
                                  CONTROLER cu( CLK, times, cout, ir_out,
                                                  ar_clr, ar_inr, ar_load,
                                                    pc_clr, pc_inr, pc_load,
                                                    dr_clr, dr_inr, dr_load,
                                                    ac_clr, ac_inr, ac_load,
                                                    ir_clr, ir_inr, ir_load,
                                                    write, read,
                                                    CMA, LDA, ADD, AND,
                                                  CLR_sc,inr_sc,E,X,J,D);    
                                                          
                                                          
                                                          
                                                          
                                                          
                                                                                                    
                                                                                                                   
                                                                Encoder8_3 enc(in_mux,X);     
                                                               
                                                                 
                                                                   assign inr_sc = ~CLR_sc;                     
 
 
                                                                          SequenceCounter scc (CLR_sc,CLK,counters);
                                                                           DECODER code(counters, times ); 
 
     

endmodule