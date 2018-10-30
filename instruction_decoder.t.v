//---------------------------------------------------------------------------
// Test Bench for the Program Counter
//---------------------------------------------------------------------------

`timescale 1 ns / 1 ps
`include "instruction_decoder.v"

module testDecoder();
reg clk;
reg[31:0] instruction;

wire[5:0] rs; wire[5:0] rt; wire[5:0] rd; wire[31:0] immediate;
wire[5:0] funct; wire[5:0] operation; wire[5:0] shamt; wire[31:0] address;
wire[3:0] ALU_op; wire reg_WE; wire op_imm; wire DM_WE;
wire[1:0] dest_add; wire[1:0] reg_in; wire DM_add; wire[5:0] opcode;

instructionDecoder decoder(.clk(clk), .instruction(instruction), .operation(operation), .rs(rs), .rt(rt), .rd(rd), .immediate(immediate), .funct(funct), .shamt(shamt), .address(address), .ALU_op(ALU_op), .reg_WE(reg_WE), .op_imm(op_imm), .DM_WE(DM_WE), .dest_add(dest_add), .reg_in(reg_in), .DM_add(DM_add), .opcode(opcode));



initial clk = 0;
always #200 clk = !clk;

  initial begin

    $dumpfile("decoder.vcd");
    $dumpvars;
    instruction = 32'b10001100000000000000000000000000; 

  end
  endmodule
