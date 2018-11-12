`include "behavioral_alu.v"

module alu_test();
wire[31:0] result;
reg zero;
reg[31:0] A, B;
reg[1:0] command;


ALU lulu(.result(result), .zero(zero), .A(A), .B(B), .command(command));

initial begin
$dumpfile("alu.vcd");
$dumpvars;
A <= 32'd4; B <= 32'b11111111111111111111111111111111; command <= 0; #10
$display("result = %b; Should be 3",result);

$finish
end
endmodule
