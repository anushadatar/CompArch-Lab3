// multiplexer Test Bench
`timescale 1 ns / 1 ps
`include "pc_multiplexer.v"

module testPCMux();

  reg[31:0] I0;
  reg[31:0] I1;
  reg S;
  wire out;

  pc_multiplexer mux (out, I0, I1, S);

  initial begin

    I0[31:0] = 32'd5; I1[31:0] = 32'd0; S = 1'b0; #1000
    if (out !== 5) $display("0 failed");

    I0[31:0] = 32'd5; I1[31:0] = 32'd0; S = 1'b1; #1000
    if (out !== 0) $display("1 failed");
    end

  endmodule
