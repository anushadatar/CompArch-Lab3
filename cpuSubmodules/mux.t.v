`include "mux.v"

//Testing full 32 bit adder module
module testMUX();
    reg [31:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16;
    reg [31:0] in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31;  // Input binary strings
    wire[31:0] result; // Output of sum
    reg [4:0] address; // address

    // Instantiating adder
    mux32to1by32 mux32 (result,address,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31);


    initial begin
    $display("Address | result");
    in0 = 32'b11111111111111111111111111111111;
    in1 = 32'b11111111111111111111111111111110;
    in2 = 32'b11111111111111111111111111111101;
    in3 = 32'b11111111111111111111111111111011;
    in4 = 32'b11111111111111111111111111110111;
    in5 = 32'b11111111111111111111111111011111;
    in6 = 32'b11111111111111111011111111111111;
    in7 = 32'b11111111111101111111111111111111;
    in8 = 32'b11111111001111111111111111111111;
    in9 = 32'b11110101111111111111111111111111;
    in10 = 32'b11111111111111111111111111111111;
    in11 = 32'b00111111111111111111111111111111;
    in12 = 32'b11111111000011111111111111111111;
    in13 = 32'b11111111111000111111111111111111;
    in14 = 32'b11111111111111000000000011111111;
    in15 = 32'b11111111111111001111111111111111;
    in16 = 32'b11111111111111111111111111111111;
    in17 = 32'b11111111111111101111111111111111;
    in18 = 32'b11111111111111111111111111111111;
    in19 = 32'b00001111111111111111111111111111;
    in20 = 32'b11110111111111111111111111111111;
    in21 = 32'b11101111011111111111111111111111;
    in22 = 32'b11111111111111110011111111111111;
    in23 = 32'b11111111111111111111111111111111;
    in24 = 32'b11111111111111111111000001111111;
    in25 = 32'b11111111111111111111111111111111;
    in26 = 32'b11111011111111111111111111111111;
    in27 = 32'b11111111111111111111111111011111;
    in28 = 32'b11111111111111111111111111111111;
    in29 = 32'b00000000000000000000000000000000;
    in30 = 32'b11111111111111111110000000000000;
    in31 = 32'b01010101010101001010101010101010;
    address = 5'b00000; #1000
    if((result !== in0)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b00001; #1000
    if((result !== in1)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b10000; #1000
    if((result !== in16)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b10001; #1000
    if((result !== in17)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b11111; #1000
    if((result !== in31)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b11101; #1000
    if((result !== in29)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b01000; #1000
    if((result !== in8)) begin
    $display("%b  %b",address,result);
    end
    address = 5'b01010; #1000
    if((result !== in10)) begin
    $display("%b  %b",address,result);
    end
  end
endmodule
