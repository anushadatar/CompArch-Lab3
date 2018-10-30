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

module instructionDecoder
(
    input clk,
    input[31:0] instruction,
    output operation,
    output rs,
    output rt,
    output rd,
    output immediate,
    output funct,
    output shamt,
    output address,
    output aluop,
    output memWE,
)

assign opcode = instruction[31:26];
assign funct = instruction[5:0];
assign rs = instruction[25:21];
assign rt = instruction[20:16];
assign rd = instruction[15:11];
assign shamt = instruction[10:6];
assign immediate = instruction[15:0];
assign address = instruction[25:0];

always (@opcode) begin
    case(opcode)
        `LW begin
          //control signals and register processing
          //I type
          reg_WE = 1; ALU_op = `ADD; op_imm = 1; DM_WE = 0; dest_add = 1; reg_in = 1; DM_add = 1;
        end
        `SW begin
          //I type
          reg_WE = 0; ALU_op = `ADD; op_imm = 1; DM_WE = 1; dest_add = 1; reg_in = 0; DM_add = 1;
        end
        `J begin
          //J type
          reg_WE = 0; ALU_op = `ADD; op_imm = 0; DM_WE =0; dest_add = 0; reg_in = 0; DM_add = 0;
        end
        `JAL begin
          //J type

        end
        `BNE begin
          //I type

        end
        `BEQ begin
          //I type
          reg_WE = ; ALU_op = ; op_imm = ; DM_WE = ; dest_add = ; reg_in = ; DM_add = ;
        end
        `XORI begin
          //I type
          reg_WE = ; ALU_op = ; op_imm = ; DM_WE = ; dest_add = ; reg_in = ; DM_add = ;
        end
        `ADDI begin
          // I type
          reg_WE = ; ALU_op = ; op_imm = ; DM_WE = ; dest_add = ; reg_in = ; DM_add = ;
        end
        `R begin
          if (funct==`ADD)begin

          end
          else if (funct==`SUB)begin
            reg_WE = ; ALU_op = ; op_imm = ; DM_WE = ; dest_add = ; reg_in = ; DM_add = ;
          end
          else if (funct == `SLT)begin
          reg_WE = ; ALU_op = ; op_imm = ; DM_WE = ; dest_add = ; reg_in = ; DM_add = ;
          end
          else if (funct == `JR)begin
          reg_WE = ; ALU_op = ; op_imm = ; DM_WE = ; dest_add = ; reg_in = ; DM_add = ;
          end

          //add, sub, slt, jr
        end
    end
end
endmodule
