`include "singlecycleCPU.v"

module cpu_test();

reg clk;
wire[31:0] dataMem, regRT;
initial clk = 1;
always #200 clk = !clk;
singlecycleCPU cpu(clk, dataMem, regRT);
initial begin
$dumpfile("cpu.vcd");
$dumpvars;
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);
#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT);

#200
$display("dataMem: %b", dataMem);
$display("reg RT : %b", regRT); #200000
$finish;
end
endmodule
