module mux2 (
    input[31:0] input0,
    input[31:0] input1,
    input select0,
    output[31:0] out
);
wire[31:0] out;
assign out = (select0) ? input0 : input1;
endmodule

module mux3 (
    input[31:0] input0,
    input[31:0] input1,
    input[31:0] input2,
    input[1:0] select0,
    output[31:0] out
);
wire[31:0] out;
assign out = select0[1] ? (select0[0] ? 0 : input2) : (select0[0] ? input1 : input0);
endmodule
