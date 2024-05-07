module memory (CLK,READ,ar,WRITE,INDATA,OUTDATA );
    input CLK,READ,WRITE;
    input [7:0]INDATA;
    input [3:0] ar;
    output reg [7:0] OUTDATA;
    
    reg [7:0] RAM [15:0];
        
    initial
     begin
     
       RAM[0] = 8'h09 ;
       RAM[1] = 8'h1a ;
       RAM[2] = 8'h2f ;
       RAM[3] = 8'h32 ;
       RAM[4] = 8'h74 ;
       RAM[5] = 8'h78 ;
       RAM[6] = 8'h72 ;
       RAM[7] = 8'h71 ;
       RAM[8] = 8'h09 ;
       RAM[9] = 8'h1a ;
       RAM[10]= 8'h2f ;
       RAM[11]= 8'h32 ;
       RAM[12]= 8'h74 ;
       RAM[13]= 8'h78 ;
       RAM[14]= 8'h72 ;
       RAM[15]= 8'h71 ;
      
     
      /*
        $readmemh("A:\INSTRUCTIONS.txt", RAM);
            */    
    end
    
    always@* begin
        if (WRITE)
            RAM[ar] <= INDATA;
        else if(READ)
            OUTDATA = RAM[ar];
        end

endmodule