module memory
(
  input clk,
  input dmWE,
  input[31:0] Addr0,
  input[31:0] instruct_Addr1,
  input[31:0] DataIn0,
  output[31:0]  DataOut0,
  output[31:0]  instruct_DataOut1
);
  wire[31:0] memAtAdd;
  reg [31:0] mem[32767:0]; //1023 will change based on size of address
      //address was size 10 and thus mem was 1023 big

  always @(posedge clk) begin
    if (dmWE) begin
      mem[Addr0] <= DataIn0;
    end
  end
  initial $readmemh("array.text", mem);
  assign memAtAdd = mem[Addr0];
  assign DataOut0 = mem[Addr0];
  assign instruct_DataOut1 = mem[instruct_Addr1];
endmodule
