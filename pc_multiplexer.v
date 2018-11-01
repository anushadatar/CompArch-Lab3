//---------------------------------------------------------------------------
// Multiplexer for Program Counter
//  Selects between 2 32-bit inputs: either the previous value incremented by
//  4, or the jump address.
//---------------------------------------------------------------------------

module pc_multiplexer
(
output reg[31:0] PC,
input wire[31:0] immediate,
input wire[25:0] JumpAddress,
input wire[31:0] regRs,
input clk,
input[1:0] S
);
reg[31:0] temp;
reg[31:0] mux_out;
reg[31:0] nextPC;

always @(nextPC,JumpAddress,immediate,regRs,S) begin
  if (S == 2'd0) begin
    mux_out <= nextPC;
  end
  else if (S == 2'd1)begin  //jump
    mux_out[27:2] <= JumpAddress;
    mux_out[31:28] <= nextPC[31:28];
    mux_out[1:0] <= 0;
  end
  else if (S == 2'd2)begin  //branch
    mux_out = immediate+nextPC;
  end
  else begin
    mux_out <= regRs;
  end
  nextPC <= PC+4;
end

always @(posedge clk) begin
  PC = mux_out;
  nextPC = PC+4;
end
endmodule
