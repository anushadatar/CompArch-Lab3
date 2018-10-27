//Stoppppp
module pc_multiplexer
(
output out,
input[31:0] I0,
input[31:0] I1,
input S
);
wire[31:0]  I0;
wire[31:0] I1;
reg  S;
wire  out;

if(S == 1'b1)
  assign out = I1;
if(S == 1'b0)
  assign out = I0;

endmodule
