//---------------------------------------------------------------------------
// Program counter
//  Fetches address for the instruction being executed. Increments by 4 each
//  time or jumps to a new address.
//---------------------------------------------------------------------------

`include "ALU/32bitadder.v"
`include "pc_multiplexer.v"

module programcounter
(
  input   clk,
  input[31:0]   jump_address,
  input   mux_command,
  output reg[31:0] PC
);
  wire[31:0] incremented;
  wire[31:0] mux_out;

  pc_multiplexer mux(.out(mux_out), .I0(incremented), .I1(jump_address), .S(mux_command)); // choose if you want to use incremented PC or jump address

  FullAdder32bit adder(.sum(incremented),.a(PC),.b(32'd4),.carryin(1'd0)); // add chosen value

  always @(posedge clk) begin
    PC <= mux_out; // get next instruction on clock edge
  end
endmodule
