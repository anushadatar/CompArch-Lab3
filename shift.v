
module instructionDecoder
(
    input[4:0] shamt,
    input[31:0] aluout,
    output[31:0] shifted
);
shifted = aluout<<shamt;
endmodule
