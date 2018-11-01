`include "singlecycleCPU.v"
module cpu_test();
reg clk;
wire[31:0] dataMem;
initial clk = 0;
always #200 clk = !clk;
singlecycleCPU cpu(clk, dataMem);
initial begin
$display(dataMem);
$finish;
end
endmodule
