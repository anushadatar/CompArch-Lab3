`define AND and 
`define OR or 
`define NAND nand 
`define NOR nor 
`define XOR xor


module ALUand
(
    output out,
    input A,
    input B
);
`AND andgate(out, A, B);
endmodule

module ALUor
(
    output out,
    input A,
    input B
);
`OR orgate(out, A, B);
endmodule

module ALUnand
(
    output out,
    input A,
    input B
);
`NAND nandgate(out, A, B);
endmodule

module ALUnor
(
    output out,
    input A,
    input B
);
`NOR norgate(out, A, B);
endmodule

module ALUxor
(
    output out,
    input A,
    input B
);
`XOR xorgate(out, A, B);
endmodule
