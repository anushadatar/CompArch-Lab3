`define LW   6'b100011
`define SW   6'b101011
`define J   6'b000010
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
        end
        `SW begin
          //I type
        end
        `J begin
          //J type
        end
        `JAL begin
          //J type
        end
        `BNE begin
          //I type
        end
        `BEQ begin
          //I type
        end
        `XORI begin
          //I type
        end
        `ADDI begin
          // I type
        end
        `R begin
          if (funct==`ADD)begin

          end
          else if (funct==`SUB)begin
          end
          else if (funct == `SLT)begin
          end
          else if (funct == `JR)begin
          end

          //add, sub, slt, jr
        end
    end
end
endmodule
