//---------------------------------------------------------------------------
// Multiplexer for Program Counter
//  Selects between 2 32-bit inputs: either the previous value incremented by
//  4, or the jump address.
//---------------------------------------------------------------------------

module pc_multiplexer
(
output reg[31:0] out,
input wire[31:0] nextPC,
input wire[25:0] address,
input wire[31:0] regRs,
input[1:0] S
);

always @(nextPC,address,regRs,S) begin
  if (S == 0) begin
    out = nextPC;
  end
  else if (S == 2'd1)begin
    out[25:0] <= address;
    out[31:26] <= 0;
  end
  else if (S == 2'd2)begin
    out[27:2] <= address;
    out[1:0] <= 0;
    out[31:28] <= nextPC[31:28];
  end
  else begin
    out = regRs;
  end
end
endmodule
