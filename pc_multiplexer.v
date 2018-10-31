//---------------------------------------------------------------------------
// Multiplexer for Program Counter
//  Selects between 2 32-bit inputs: either the previous value incremented by
//  4, or the jump address.
//---------------------------------------------------------------------------

module pc_multiplexer
(
output reg[31:0] out,
input wire[31:0] nextPC,
input wire[31:0] immediate,
input wire[25:0] JumpAddress,
input wire[31:0] regRs,
input[1:0] S
);
reg[31:0] temp;
always @(nextPC,JumpAddress,immediate,regRs,S) begin
  if (S == 0) begin
    out <= nextPC;
  end
  else if (S == 2'd1)begin  //jump
    out[27:2] <= JumpAddress;
    out[31:28] <= nextPC[31:28];
    out[1:0] <= 0;
  end
  else if (S == 2'd2)begin  //branch
    temp[1:0] = 0;
    temp[18:2] = immediate;
    temp[31:19] = 0;
    out = temp+nextPC;
  end
  else begin
    out <= regRs;
  end
end
endmodule
