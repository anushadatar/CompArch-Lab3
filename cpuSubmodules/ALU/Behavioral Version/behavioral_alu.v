module ALU
(
  output reg[31:0]  result,
  output reg        zero,
  input[31:0]   A,
  input[31:0]   B,
  input[2:0]    command
);
wire[31:0] resultXOR;

always @(command,A,B) begin
  case(command)
  0: begin result <= A+B; end   //ADD
  1: begin result <= A-B; end   //SUB
  2: begin result <= resultXOR; end //XOR
  3: begin if (A<B) result <= 32'd1; end //SLT
  endcase
end

always @(A,B,command)begin
  if (result==0)
    zero <= 1;
end


//32 BIT XOR
genvar i;
generate

for (i = 0; i < 32; i = i + 1)
  begin:genblock
      xor _orgate(resultXOR[i], A[i], B[i]);
  end
endgenerate

endmodule
