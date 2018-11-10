module memory
(
  input clk,
  input regWE,
  input[31:0] Addr0,
  input[31:0] instruct_Addr1,
  input[31:0] DataIn0,
  output[31:0]  DataOut0,
  output[31:0]  instruct_DataOut1
);
  reg[31:0] real_add;
  reg [31:0] mem[1023:0]; //1023 will change based on size of address
      //address was size 10 and thus mem was 1023 big
  always @(posedge clk) begin
    $display("thing %b",mem[1]);
    if (regWE) begin
      real_add = 32'd1023-(Addr0);
      mem[real_add] <= DataIn0;
    end
  end
  initial $readmemh("yeet.text", mem);

  assign DataOut0 = mem[Addr0];
  assign instruct_DataOut1 = mem[instruct_Addr1];
endmodule
