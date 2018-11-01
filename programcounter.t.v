//---------------------------------------------------------------------------
// Test Bench for the Program Counter
//---------------------------------------------------------------------------

`timescale 1 ns / 1 ps
`include "pc_multiplexer.v"

module testPC();
wire[31:0] PC;
reg[15:0] immediate;
reg[25:0] jumpaddress;
reg[31:0] regRs;
reg clk;
reg[1:0] S;

  pc_multiplexer pc (.PC(PC), .immediate(immediate), .JumpAddress(jumpaddress), .regRs(regRs), .clk(clk), .S(S));

initial clk = 0;
always #200 clk = !clk;

  initial begin

  $dumpfile("pc.vcd");
  $dumpvars;
    #400
    immediate = 16'd10; jumpaddress = 26'd20; regRs = 32'd0; S = 2'd3; #200
    if (PC !== 32'd0) begin
    $display("initialization failed");
    end

    #200
    immediate = 16'd10; jumpaddress = 26'd20; regRs = 32'd0; S = 2'd0; #200
    if (PC !== 32'd4) begin
    $display("first increment failed");
    end

    #200
    immediate = 16'd10; jumpaddress = 26'd20; regRs = 32'd0; S = 2'd0; #200
    if (PC !== 32'd8) begin
    $display("second increment failed");
    end

    #200
    immediate = 16'd10; jumpaddress = 26'd20; regRs = 32'd0; S = 2'd0; #200
    if (PC !== 32'd12) begin
    $display("third increment failed");
    end

    #200
    immediate = 16'd10; jumpaddress = 26'd20; regRs = 32'd30; S = 2'd3; #200
    if (PC !== 32'd30) begin
    $display("regRs failed");
    end
    #200 $finish;

  end

  endmodule
