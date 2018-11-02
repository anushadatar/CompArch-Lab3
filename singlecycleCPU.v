`include "pc_multiplexer.v"
`include "instruction_decoder.v"
`include "memory.v"
`include "decoders.v"
`include "mux.v"
`include "regfile.v"
//`include "register32.v"
//`include "register32zero.v"
`include "register.v"
//`include "register/regfile.v"
`include "muxes.v"
`include "ALU/alu.v"
//`include "register/register.v"
//`include "register/multiplexer.v"
//`include "register/decoders.v"
`include "ALU/operations/multiplexer.v"
`include "ALU/operations/gates.v"
`include "ALU/operations/add_sub.v"
`include "pcController.v"

module singlecycleCPU
(
  input clk,
  output[31:0] dataMem,
  output[31:0] regRT
);
wire[31:0] PC;
wire[31:0]regRS;
wire[4:0] rs, rt, rd;
wire[31:0] immediate;
wire[25:0] JumpAddress;
wire[31:0] instruction;
wire[5:0] funct;
wire[5:0] shamt;
wire[31:0] address;
wire [2:0] ALU_op;
wire reg_WE;
wire op_imm;
wire DM_WE;
wire[1:0] dest_add;
wire[1:0] reg_in;
wire DM_add;
wire[5:0] opcode;
wire[1:0] pc;
wire[31:0] alu_out;
wire[4:0] reg_select_mux_out;
wire[31:0]reg_in_mux_out;
wire[31:0] alu2;
wire co_flag, zero_flag, ov_flag;
wire [1:0] S;
wire[31:0] data_mem_address;

pc_multiplexer pcmux(.PC(PC), .immediate(immediate), .JumpAddress(JumpAddress), .regRs(regRS), .clk(clk), .S(pc));
pcController controlPC(.zeroFlag(zero_flag),.opcode(opcode),.function1(funct),.controlSig(S));

memory mem(.clk(clk), .regWE(reg_WE), .Addr0(data_mem_address), .instruct_Addr1(PC),.DataIn0(regRT), .DataOut0(dataMem), .instruct_DataOut1(instruction));

instructionDecoder decode(.clk(clk),.instruction(instruction), .rs(rs), .rt(rt), .rd(rd),
    .immediate(immediate), .funct(funct), .shamt(shamt), .address(JumpAddress), .ALU_op(ALU_op), .reg_WE(reg_WE),
    .op_imm(op_imm), .DM_WE(DM_WE), .dest_add(dest_add), .reg_in(reg_in), .DM_add(DM_add),.opcode(opcode), .pc(pc));

regfile regi(.ReadData1(regRS), .ReadData2(regRT), .WriteData(reg_in_mux_out), .ReadRegister1(rs), .ReadRegister2(rt), .WriteRegister(reg_select_mux_out), .RegWrite(reg_WE), .Clk(clk));

ALU lulu(.result(alu_out), .carryout(co_flag), .zero(zero_flag), .overflow(ov_flag), .A(regRS), .B(alu2), .command(ALU_op));

mux3_5bit reg_select_mux(.input0(rd),.input1(rt),.input2(5'd31),.select0(dest_add),.out(reg_select_mux_out));
mux3_32bit reg_in_mux(.input0(alu_out),.input1(dataMem),.input2(PC),.select0(reg_in),.out(reg_in_mux_out));
mux2 op_imm_mux(.input0(immediate),.input1(regRT),.select0(op_imm),.out(alu2));
mux2 dm_we_mux(.input0(immediate),.input1(alu_out),.select0(DM_add),.out(data_mem_address));

endmodule
