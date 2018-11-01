`define LW   6'b100011
`define SW   6'b101011
`define J    6'b000010
`define R    6'b000000
`define JR   6'b001000  //R Type
`define JAL  6'b000011
`define BNE  6'b000101
`define BEQ  6'b000100
`define XORI 6'b001110
`define ADDI 6'b001000
`define ADD  6'b100000  //R Type
`define SUB  6'b100010  //R Type
`define SLT  6'b101010  //R Type

`define aluADD 2'd0
`define aluSUB 2'd1
`define aluXOR 2'd2
`define aluSLT 2'd3

module instructionDecoder
(
    input clk,
    input[31:0] instruction,
    output reg[4:0] rs,
    output reg[4:0] rt,
    output reg[4:0] rd,
    output reg[31:0] immediate,
    output reg[5:0] funct,
    output reg[5:0] shamt,
    output reg[25:0] address,
    output reg[2:0] ALU_op,
    output reg reg_WE,
    output reg op_imm,
    output reg DM_WE,
    output reg[1:0] dest_add,
    output reg[1:0] reg_in,
    output reg DM_add,
    output reg[5:0] opcode
);

always @(instruction)begin
opcode = instruction[31:26];
funct = instruction[5:0];
rs = instruction[25:21];
rt = instruction[20:16];
rd = instruction[15:11];
shamt = instruction[10:6];
immediate[31:16] = 16'b0;
immediate[15:0] = instruction[15:0];
address[25:0] = instruction[25:0];
    case(opcode)
        `LW:   begin reg_WE = 1; ALU_op = `aluADD; op_imm = 1; DM_WE = 0; dest_add = 1; reg_in = 1; DM_add = 1; end //I Type
        `SW:   begin reg_WE = 0; ALU_op = `aluADD; op_imm = 1; DM_WE = 1; dest_add = 1; reg_in = 0; DM_add = 1; end //I Type
        `J:    begin reg_WE = 0; ALU_op = `aluADD; op_imm = 0; DM_WE = 0; dest_add = 0; reg_in = 0; DM_add = 0; end //J type
        `JAL:  begin reg_WE = 1; ALU_op = `aluADD; op_imm = 0; DM_WE = 0; dest_add = 2; reg_in = 2; DM_add = 0; end //J type
        `BNE:  begin reg_WE = 0; ALU_op = `aluSUB; op_imm = 0; DM_WE = 0; dest_add = 0; reg_in = 0; DM_add = 0; end //I type
        `BEQ:  begin reg_WE = 0; ALU_op = `aluSUB; op_imm = 0; DM_WE = 0; dest_add = 0; reg_in = 0; DM_add = 0; end //I type
        `XORI: begin reg_WE = 1; ALU_op = `aluXOR; op_imm = 1; DM_WE = 0; dest_add = 1; reg_in = 0; DM_add = 0; end //I type
        `ADDI: begin reg_WE = 1; ALU_op = `aluADD; op_imm = 1; DM_WE = 0; dest_add = 1; reg_in = 0; DM_add = 0; end //I type
        `R: begin
          if (funct==`ADD)        begin reg_WE = 1; ALU_op = `aluADD; op_imm = 0; DM_WE =0; dest_add = 0; reg_in = 0; DM_add = 0; end
          else if (funct==`SUB)   begin reg_WE = 1; ALU_op = `aluSUB; op_imm = 0; DM_WE =0; dest_add = 0; reg_in = 0; DM_add = 0; end
          else if (funct == `SLT) begin reg_WE = 1; ALU_op = `aluSLT; op_imm = 0; DM_WE =0; dest_add = 0; reg_in = 0; DM_add = 0; end
          else if (funct == `JR)  begin reg_WE = 0; ALU_op = `aluADD; op_imm = 0; DM_WE =0; dest_add = 0; reg_in = 0; DM_add = 0; end
       end
    endcase
end
endmodule
