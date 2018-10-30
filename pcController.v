`define BNE  6'b000101
`define BEQ  6'b000100
`define JAL  6'b000011
`define J    6'b000010
`define JR   6'b000000
`define JR_f 6'b001000  //R Type

module instructionDecoder
(
  input zeroFlag,
  input opcode,
  input function1,
  output reg[1:0] controlSig
);
always @(opcode)
  if (opcode == `BEQ || opcode == `BNE) begin controlSig = 2'd2;  end
  else if (opcode == `JAL || opcode == `J) begin  controlSig = 2'd1; end
  else if (opcode == `JR && function1 == `JR_f) begin controlSig = 2'd3; end
  else begin controlSig = 2'd0; end
endmodule
