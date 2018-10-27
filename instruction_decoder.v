`define LW   6'b100011
`define SW   6'b101011
`define JT   6'b000010
`define JR   6'b000000
`define JAL  6'b000011
`define BNE  6'b000101
`define BEQ  6'b000100
`define XORI 6'b001110 
`define ADDI 6'b001000
`define ADD  6'b100000
`define SUB  6'b100010
`define SLT  6'b101010

module instructionDecoder
(
    input clk;
    input data
)

wire[31:0] instruction;

assign opcode = instruction[31:26];
always (@OP) begin
    case(opcode)
        `LW begin
            //control signals and register processing
        end
        `SW begin
        end
        `JT begin
        end
        `JR begin
        end
        `JAL begin
        end
        `BNE begin
        end
        `BEQ begin
        end
        `XORI begin
        end
        `ADDI begin
        end
        `ADD begin
        end
        `SUB begin
        end
        `SLT begin
        end
    end
end
endmodule
