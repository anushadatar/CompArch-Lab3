//Stoppppp
module multiplexer
(
output out,
input I0,
input I1,
input S
);
wire  I;
wire  S;
wire  out;

if(S)
  assign out = I1;
if(!S)
  assign out = I0;

endmodule
