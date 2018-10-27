//
// Program counter
//  Fetches address for the instruction being executed. Increments by 4 each
//  time or jumps to a new address.
`include "ALU/alu.v"
`include "pc_multiplexer.v"

module programcounter
(
  input   clk,
  input[31:0]   jump_address,
  input   alu_command,
  input   mux_command,
  output reg[31:0] instruction_address
);
  wire[31:0] alu_out;
  wire[31:0] mux_out;

  pc_multiplexer mux(.out(mux_out), .I[1](32'd4), .I[2](jump_address), .S(mux_command)); //choose if you want to add 4 or the jump address

  ALU alu(.result(alu_out),.A(instruction_address),.B(mux_out),.command(alu_command)); //add chosen value

  always @(posedge_clk) begin
    instruction_address <= alu_out; //get next instruction on clock edge
  end
endmodule
