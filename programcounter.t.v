//---------------------------------------------------------------------------
// Test Bench for the Program Counter
//---------------------------------------------------------------------------

`timescale 1 ns / 1 ps
`include "programcounter.v"

module testPC();
reg clk;
reg[31:0] jump_address;
reg mux_command;
wire[31:0] PC;

  programcounter pc (.clk(clk), .jump_address(jump_address), .mux_command(mux_command), .PC(PC));

initial clk = 0;
always #200 clk = !clk;

  initial begin

  $dumpfile("pc.vcd");
  $dumpvars;
    jump_address = 32'd0; mux_command = 1'd1; #200
    if (PC !== 0) begin
    $display("initialization failed");
    end

    #200
    jump_address = 32'd20; mux_command = 1'd0;  #200
    if (PC !== 4) begin
     $display("first increment failed");
    end

    #200
    jump_address = 32'd20; mux_command = 1'd0;#200
    if (PC !== 8) begin
     $display("second increment failed");
    end

    #200
    jump_address = 32'd20; mux_command = 1'd0; #200
    if (PC !== 12) begin
     $display("third increment failed");
    end

    #200
    jump_address = 32'd20; mux_command = 1'd1;#200
    if (PC !== 20) begin
     $display("jump failed");
    end
    #200 $finish;

  end

  endmodule
