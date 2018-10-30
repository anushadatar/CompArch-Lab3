//---------------------------------------------------------------------------
// Multiplexer for Program Counter
//  Selects between 2 32-bit inputs: either the previous value incremented by
//  4, or the jump address.
//---------------------------------------------------------------------------

module pc_multiplexer
(
output reg[31:0] out,
input[31:0] I0,
input[31:0] I1,
input S
);
wire[31:0]  I0;
wire[31:0] I1;

always @(I0,I1,S) begin
  if (S == 1)
    out = I1;
  else
    out = I0;
  end
endmodule
