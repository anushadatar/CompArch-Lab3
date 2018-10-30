//---------------------------------------------------------------------------
// Test Bench for the Program Counter Multiplexer
//---------------------------------------------------------------------------

`timescale 1 ns / 1 ps
`include "pc_multiplexer.v"

module testPCMux();
reg[31:0] I0;
reg[31:0] I1;
reg S;
wire[31:0] out;

  pc_multiplexer mux (out, I0, I1, S);


  initial begin
    I0 = 32'd5; I1 = 32'd0; S = 1'b0; #1000
    if (out !== 5) begin
    $display("0 failed");
    end

    I0 = 32'd5; I1 = 32'd0; S = 1'b1; #1000
    if (out !== 0) begin
     $display("1 failed");
    end
  end

  endmodule
