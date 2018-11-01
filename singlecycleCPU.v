`include "pc_multiplexer.v"
`include "instruction_decoder.v"
`include "memory.v"
`include "register/regfile.v"
`include "muxes.v"

module singlecycleCPU
(
  input[31:0] clk,
  output reg[31:0] dataMem
);
reg[31:0] PC, regRS;
reg[4:0] rs, rt, rd;
reg[31:0] immediate;
reg[25:0] JumpAddress;
reg[31:0] instruction;
reg[5:0] rs;
reg[5:0] rt;
reg[5:0] rd;
reg[5:0] funct;
reg[5:0] shamt;
reg[31:0] address;
reg[3:0] ALU_op;
reg reg_WE;
reg op_imm;
reg DM_WE;
reg[1:0] dest_add;
reg[1:0] reg_in;
reg DM_add;
reg[5:0] opcode;
wire[31:0] alu_out;
wire[31:0] reg_select_mux_out, reg_in_mux_out;
wire[31:0] alu2;
wire co_flag, zero_flag, ov_flag;



pc_multiplexer pcmux(.PC(PC), .immediate(immediate), .JumpAddress(JumpAddress), .regRS(regRS), .clk(clk), .S(S));

memory mem(.clk(clk), .reg_WE(reg_WE), .address(Addr), .DataIn(DataIn), .DataOut(DataOut));

instructionDecoder decode(.clk(clk),.instruction(instruction), .rs(rs), .rt(rt), .rd(rd),
    .immediate(immediate), .funct(funct), .shamt(shamt), .address(JumpAddress), .ALU_op(ALU_op), .reg_WE(reg_WE),
    .op_imm(op_imm), .DM_WE(DM_WE), .dest_add(dest_add), .reg_in(reg_in), .DM_add(DM_add),.opcode(opcode));

regfile reg(.ReadData1(rs), .ReadData2(rt), .WriteData(reg_in_mux_out), .ReadRegister1(regRS), .ReadRegister2(regRT), .WriteRegister(reg_select_mux_out),.RegWrite(reg_WE),.Clk(clk));

ALU lulu(.result(alu_out), .carryout(co_flag), .zero(zero_flag), .overflow(ov_flag), .A(regRS), .B(alu2), .command(ALU_op));

mux3 reg_select_mux(.input0(rd),.input1(rt),.input3(32'd31),.select0(dest_add),.out(reg_select_mux_out));
mux3 reg_in_mux(.input0(alu_out),.input1(rt),.input3(32'd31),.select0(reg_in),.out(reg_in_mux_out));
mux2 op_imm_mux(.input0(regRT),.input1(immediate),.select0(op_imm),.out(alu2));
mux2 dm_we_mux(.input0(immediate),.input1(alu_out),.select0(DM_add),.out(data_mem_address));




endmodule
