module Encoder8_3(Selction, Xns);

   input [7:0] Xns;
   output [2:0] Selction;

   assign Selction =
      (Xns[7] == 1'b1) ? 3'b111:
      (Xns[6] == 1'b1) ? 3'b110:
      (Xns[5] == 1'b1) ? 3'b101:
      (Xns[4] == 1'b1) ? 3'b100:
      (Xns[3] == 1'b1) ? 3'b011:
      (Xns[2] == 1'b1) ? 3'b010:
      (Xns[1] == 1'b1) ? 3'b001:
      (Xns[0] == 1'b1) ? 3'b000: 3'bxxx;

endmodule
