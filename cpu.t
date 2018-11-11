#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1ad4cd0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7f20eb366018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7f20eb366048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1c14c90 .functor XOR 1, o0x7f20eb366018, o0x7f20eb366048, C4<0>, C4<0>;
o0x7f20eb366078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1c14d20 .functor XOR 1, L_0x1c14c90, o0x7f20eb366078, C4<0>, C4<0>;
L_0x1c14de0 .functor AND 1, L_0x1c14c90, o0x7f20eb366078, C4<1>, C4<1>;
L_0x1c14ea0 .functor AND 1, o0x7f20eb366018, o0x7f20eb366048, C4<1>, C4<1>;
L_0x1c14fb0 .functor OR 1, L_0x1c14de0, L_0x1c14ea0, C4<0>, C4<0>;
L_0x1c150c0 .functor XOR 1, L_0x1c14fb0, o0x7f20eb366078, C4<0>, C4<0>;
v0x1adf9f0_0 .net "A", 0 0, o0x7f20eb366018;  0 drivers
v0x1af8a30_0 .net "B", 0 0, o0x7f20eb366048;  0 drivers
v0x1af8af0_0 .net "carryin", 0 0, o0x7f20eb366078;  0 drivers
v0x1aeb400_0 .net "carryout", 0 0, L_0x1c14fb0;  1 drivers
v0x1aeb4c0_0 .net "out1", 0 0, L_0x1c14c90;  1 drivers
v0x1b3a2d0_0 .net "out2", 0 0, L_0x1c14de0;  1 drivers
v0x1b28d00_0 .net "out3", 0 0, L_0x1c14ea0;  1 drivers
v0x1b28dc0_0 .net "overflow", 0 0, L_0x1c150c0;  1 drivers
v0x1b28940_0 .net "sum", 0 0, L_0x1c14d20;  1 drivers
S_0x1b3a620 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x1c13bf0_0 .var "clk", 0 0;
v0x1c13c90_0 .net "dataMem", 31 0, L_0x1c15410;  1 drivers
v0x1c13d30_0 .net "regRT", 31 0, L_0x1c297b0;  1 drivers
S_0x1b93c50 .scope module, "cpu" "singlecycleCPU" 3 9, 4 16 0, S_0x1b3a620;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x1c11b30_0 .net "ALU_op", 2 0, v0x1b1bbf0_0;  1 drivers
v0x1c11c10_0 .net "DM_WE", 0 0, v0x1b85150_0;  1 drivers
v0x1c11cd0_0 .net "DM_add", 0 0, v0x1b851f0_0;  1 drivers
v0x1c11d70_0 .net "JumpAddress", 25 0, v0x1b84d90_0;  1 drivers
v0x1c11e60_0 .net "PC", 31 0, v0x1c02110_0;  1 drivers
v0x1c11f50_0 .net "S", 1 0, v0x1b20120_0;  1 drivers
L_0x7f20eb31db58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x1c12040_0 .net/2u *"_s10", 31 0, L_0x7f20eb31db58;  1 drivers
v0x1c12100_0 .net *"_s4", 29 0, L_0x1c15810;  1 drivers
L_0x7f20eb31d018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1c121e0_0 .net *"_s6", 1 0, L_0x7f20eb31d018;  1 drivers
v0x1c12350_0 .net "alu2", 31 0, L_0x1c51b60;  1 drivers
v0x1c12410_0 .net "alu_out", 31 0, L_0x1c4e050;  1 drivers
v0x1c12520_0 .net "clk", 0 0, v0x1c13bf0_0;  1 drivers
v0x1c12650_0 .net "co_flag", 0 0, L_0x1be6180;  1 drivers
v0x1c12780_0 .net "dataMem", 31 0, L_0x1c15410;  alias, 1 drivers
v0x1c12840_0 .net "dest_add", 1 0, v0x1b80bd0_0;  1 drivers
v0x1c12900_0 .net "funct", 5 0, v0x1b807a0_0;  1 drivers
v0x1c12a10_0 .net "immediate", 31 0, v0x1b80860_0;  1 drivers
v0x1c12bc0_0 .net "instruction", 31 0, L_0x1c155b0;  1 drivers
v0x1c12c60_0 .net "op_imm", 0 0, v0x1b7c5b0_0;  1 drivers
v0x1c12d50_0 .net "opcode", 5 0, v0x1b7c1b0_0;  1 drivers
v0x1c12e60_0 .net "ov_flag", 0 0, L_0x1c4dc00;  1 drivers
v0x1c12f90_0 .net "pc", 1 0, v0x1b664e0_0;  1 drivers
v0x1c13050_0 .net "rd", 4 0, v0x1b665a0_0;  1 drivers
v0x1c130f0_0 .net "regRS", 31 0, L_0x1c27050;  1 drivers
v0x1c13240_0 .net "regRT", 31 0, L_0x1c297b0;  alias, 1 drivers
v0x1c13390_0 .net "reg_WE", 0 0, v0x1b66120_0;  1 drivers
v0x1c13430_0 .net "reg_in", 1 0, v0x1b661c0_0;  1 drivers
v0x1c134f0_0 .net "reg_in_mux_out", 31 0, L_0x1c51820;  1 drivers
v0x1c135b0_0 .net "reg_select_mux_out", 4 0, L_0x1c511f0;  1 drivers
v0x1c13670_0 .net "rs", 4 0, v0x1b61ef0_0;  1 drivers
v0x1c13730_0 .net "rt", 4 0, v0x1b61b30_0;  1 drivers
v0x1c13880_0 .net "shamt", 5 0, v0x1b1b830_0;  1 drivers
v0x1c13940_0 .net "zero_flag", 0 0, L_0x1c4d050;  1 drivers
L_0x1c15670 .arith/sum 32, v0x1b80860_0, L_0x1c27050;
L_0x1c15810 .part v0x1c02110_0, 2, 30;
L_0x1c158b0 .concat [ 30 2 0 0], L_0x1c15810, L_0x7f20eb31d018;
L_0x1c519b0 .arith/sum 32, v0x1c02110_0, L_0x7f20eb31db58;
S_0x1b8f5b0 .scope module, "controlPC" "pcController" 4 49, 5 8 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x1b20120_0 .var "controlSig", 1 0;
v0x1b1fd60_0 .net "function1", 5 0, v0x1b807a0_0;  alias, 1 drivers
v0x1b89740_0 .net "opcode", 5 0, v0x1b7c1b0_0;  alias, 1 drivers
v0x1b89380_0 .net "zeroFlag", 0 0, L_0x1c4d050;  alias, 1 drivers
E_0x1b0aa60 .event edge, v0x1b1fd60_0, v0x1b89380_0, v0x1b89740_0;
S_0x1b796f0 .scope module, "decode" "instructionDecoder" 4 53, 6 20 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 32 "instruction"
    .port_info 2 /OUTPUT 5 "rs"
    .port_info 3 /OUTPUT 5 "rt"
    .port_info 4 /OUTPUT 5 "rd"
    .port_info 5 /OUTPUT 32 "immediate"
    .port_info 6 /OUTPUT 6 "funct"
    .port_info 7 /OUTPUT 6 "shamt"
    .port_info 8 /OUTPUT 26 "address"
    .port_info 9 /OUTPUT 3 "ALU_op"
    .port_info 10 /OUTPUT 1 "reg_WE"
    .port_info 11 /OUTPUT 1 "op_imm"
    .port_info 12 /OUTPUT 1 "DM_WE"
    .port_info 13 /OUTPUT 2 "dest_add"
    .port_info 14 /OUTPUT 2 "reg_in"
    .port_info 15 /OUTPUT 1 "DM_add"
    .port_info 16 /OUTPUT 6 "opcode"
    .port_info 17 /OUTPUT 2 "pc"
v0x1b1bbf0_0 .var "ALU_op", 2 0;
v0x1b85150_0 .var "DM_WE", 0 0;
v0x1b851f0_0 .var "DM_add", 0 0;
v0x1b84d90_0 .var "address", 25 0;
v0x1b84e50_0 .net "clk", 0 0, v0x1c13bf0_0;  alias, 1 drivers
v0x1b80bd0_0 .var "dest_add", 1 0;
v0x1b807a0_0 .var "funct", 5 0;
v0x1b80860_0 .var "immediate", 31 0;
v0x1b1b790_0 .net "instruction", 31 0, L_0x1c155b0;  alias, 1 drivers
v0x1b7c5b0_0 .var "op_imm", 0 0;
v0x1b7c1b0_0 .var "opcode", 5 0;
v0x1b664e0_0 .var "pc", 1 0;
v0x1b665a0_0 .var "rd", 4 0;
v0x1b66120_0 .var "reg_WE", 0 0;
v0x1b661c0_0 .var "reg_in", 1 0;
v0x1b61ef0_0 .var "rs", 4 0;
v0x1b61b30_0 .var "rt", 4 0;
v0x1b1b830_0 .var "shamt", 5 0;
E_0x1b20240 .event edge, v0x1b1b790_0;
S_0x1b75060 .scope module, "lulu" "ALU" 4 59, 7 105 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x1c4d050/0/0 .functor OR 1, L_0x1c3c7c0, L_0x1c4e2a0, L_0x1c4e340, L_0x1c4e430;
L_0x1c4d050/0/4 .functor OR 1, L_0x1c4ed00, L_0x1c3c8b0, L_0x1c4e9c0, L_0x1c4eab0;
L_0x1c4d050/0/8 .functor OR 1, L_0x1c4eba0, L_0x1c4f210, L_0x1c4eeb0, L_0x1c4efa0;
L_0x1c4d050/0/12 .functor OR 1, L_0x1c4f090, L_0x1c4eda0, L_0x1c4f2b0, L_0x1c4f3a0;
L_0x1c4d050/0/16 .functor OR 1, L_0x1c4f490, L_0x1c4f580, L_0x1c4fbf0, L_0x1c4fc90;
L_0x1c4d050/0/20 .functor OR 1, L_0x1c4f840, L_0x1c4f930, L_0x1c4fa20, L_0x1c4fb10;
L_0x1c4d050/0/24 .functor OR 1, L_0x1c4fd80, L_0x1c4fe70, L_0x1c4ff60, L_0x1c50050;
L_0x1c4d050/0/28 .functor OR 1, L_0x1c505a0, L_0x1c4f630, L_0x1c4f720, L_0x1c501a0;
L_0x1c4d050/0/32 .functor OR 1, L_0x1c50290, L_0x1c50380, C4<0>, C4<0>;
L_0x1c4d050/1/0 .functor OR 1, L_0x1c4d050/0/0, L_0x1c4d050/0/4, L_0x1c4d050/0/8, L_0x1c4d050/0/12;
L_0x1c4d050/1/4 .functor OR 1, L_0x1c4d050/0/16, L_0x1c4d050/0/20, L_0x1c4d050/0/24, L_0x1c4d050/0/28;
L_0x1c4d050/1/8 .functor OR 1, L_0x1c4d050/0/32, C4<0>, C4<0>, C4<0>;
L_0x1c4d050 .functor NOR 1, L_0x1c4d050/1/0, L_0x1c4d050/1/4, L_0x1c4d050/1/8, C4<0>;
v0x1bfe100_0 .net "A", 31 0, L_0x1c27050;  alias, 1 drivers
v0x1bfe200_0 .net "B", 31 0, L_0x1c51b60;  alias, 1 drivers
v0x1bfe2e0_0 .net *"_s322", 0 0, L_0x1c3c7c0;  1 drivers
v0x1bfe3d0_0 .net *"_s324", 0 0, L_0x1c4e2a0;  1 drivers
v0x1bfe4b0_0 .net *"_s326", 0 0, L_0x1c4e340;  1 drivers
v0x1bfe5e0_0 .net *"_s328", 0 0, L_0x1c4e430;  1 drivers
v0x1bfe6c0_0 .net *"_s330", 0 0, L_0x1c4ed00;  1 drivers
v0x1bfe7a0_0 .net *"_s332", 0 0, L_0x1c3c8b0;  1 drivers
v0x1bfe880_0 .net *"_s334", 0 0, L_0x1c4e9c0;  1 drivers
v0x1bfe9f0_0 .net *"_s336", 0 0, L_0x1c4eab0;  1 drivers
v0x1bfead0_0 .net *"_s338", 0 0, L_0x1c4eba0;  1 drivers
v0x1bfebb0_0 .net *"_s340", 0 0, L_0x1c4f210;  1 drivers
v0x1bfec90_0 .net *"_s342", 0 0, L_0x1c4eeb0;  1 drivers
v0x1bfed70_0 .net *"_s344", 0 0, L_0x1c4efa0;  1 drivers
v0x1bfee50_0 .net *"_s346", 0 0, L_0x1c4f090;  1 drivers
v0x1bfef30_0 .net *"_s348", 0 0, L_0x1c4eda0;  1 drivers
v0x1bff010_0 .net *"_s350", 0 0, L_0x1c4f2b0;  1 drivers
v0x1bff1c0_0 .net *"_s352", 0 0, L_0x1c4f3a0;  1 drivers
v0x1bff260_0 .net *"_s354", 0 0, L_0x1c4f490;  1 drivers
v0x1bff340_0 .net *"_s356", 0 0, L_0x1c4f580;  1 drivers
v0x1bff420_0 .net *"_s358", 0 0, L_0x1c4fbf0;  1 drivers
v0x1bff500_0 .net *"_s360", 0 0, L_0x1c4fc90;  1 drivers
v0x1bff5e0_0 .net *"_s362", 0 0, L_0x1c4f840;  1 drivers
v0x1bff6c0_0 .net *"_s364", 0 0, L_0x1c4f930;  1 drivers
v0x1bff7a0_0 .net *"_s366", 0 0, L_0x1c4fa20;  1 drivers
v0x1bff880_0 .net *"_s368", 0 0, L_0x1c4fb10;  1 drivers
v0x1bff960_0 .net *"_s370", 0 0, L_0x1c4fd80;  1 drivers
v0x1bffa40_0 .net *"_s372", 0 0, L_0x1c4fe70;  1 drivers
v0x1bffb20_0 .net *"_s374", 0 0, L_0x1c4ff60;  1 drivers
v0x1bffc00_0 .net *"_s376", 0 0, L_0x1c50050;  1 drivers
v0x1bffce0_0 .net *"_s378", 0 0, L_0x1c505a0;  1 drivers
v0x1bffdc0_0 .net *"_s380", 0 0, L_0x1c4f630;  1 drivers
v0x1bffea0_0 .net *"_s382", 0 0, L_0x1c4f720;  1 drivers
v0x1bff0f0_0 .net *"_s384", 0 0, L_0x1c501a0;  1 drivers
v0x1c00170_0 .net *"_s386", 0 0, L_0x1c50290;  1 drivers
v0x1c00250_0 .net *"_s388", 0 0, L_0x1c50380;  1 drivers
v0x1c00330_0 .net "carryout", 0 0, L_0x1be6180;  alias, 1 drivers
v0x1c003d0_0 .net "command", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1c00490_0 .net "cout", 30 0, L_0x1c4ccc0;  1 drivers
v0x1c00570_0 .net "overflow", 0 0, L_0x1c4dc00;  alias, 1 drivers
v0x1c00610_0 .net "result", 31 0, L_0x1c4e050;  alias, 1 drivers
v0x1c006f0_0 .net "zero", 0 0, L_0x1c4d050;  alias, 1 drivers
L_0x1c2a270 .part L_0x1c27050, 0, 1;
L_0x1c2a310 .part L_0x1c51b60, 0, 1;
L_0x1c2a3b0 .part v0x1b1bbf0_0, 0, 1;
L_0x1c2b1a0 .part L_0x1c27050, 1, 1;
L_0x1c2b350 .part L_0x1c51b60, 1, 1;
L_0x1c2b3f0 .part L_0x1c4ccc0, 0, 1;
L_0x1c2c4c0 .part L_0x1c27050, 2, 1;
L_0x1c2c560 .part L_0x1c51b60, 2, 1;
L_0x1c2c600 .part L_0x1c4ccc0, 1, 1;
L_0x1c2d720 .part L_0x1c27050, 3, 1;
L_0x1c2d7c0 .part L_0x1c51b60, 3, 1;
L_0x1c2d860 .part L_0x1c4ccc0, 2, 1;
L_0x1c2e7a0 .part L_0x1c27050, 4, 1;
L_0x1c2e840 .part L_0x1c51b60, 4, 1;
L_0x1c2e960 .part L_0x1c4ccc0, 3, 1;
L_0x1c2f900 .part L_0x1c27050, 5, 1;
L_0x1c2fa30 .part L_0x1c51b60, 5, 1;
L_0x1c2fbe0 .part L_0x1c4ccc0, 4, 1;
L_0x1c30b50 .part L_0x1c27050, 6, 1;
L_0x1c30bf0 .part L_0x1c51b60, 6, 1;
L_0x1c2fc80 .part L_0x1c4ccc0, 5, 1;
L_0x1c31d70 .part L_0x1c27050, 7, 1;
L_0x1c30c90 .part L_0x1c51b60, 7, 1;
L_0x1c31ed0 .part L_0x1c4ccc0, 6, 1;
L_0x1c32fc0 .part L_0x1c27050, 8, 1;
L_0x1c33060 .part L_0x1c51b60, 8, 1;
L_0x1c32000 .part L_0x1c4ccc0, 7, 1;
L_0x1c34270 .part L_0x1c27050, 9, 1;
L_0x1c33100 .part L_0x1c51b60, 9, 1;
L_0x1c34520 .part L_0x1c4ccc0, 8, 1;
L_0x1c356c0 .part L_0x1c27050, 10, 1;
L_0x1c35760 .part L_0x1c51b60, 10, 1;
L_0x1c35800 .part L_0x1c4ccc0, 9, 1;
L_0x1c36840 .part L_0x1c27050, 11, 1;
L_0x1c2b240 .part L_0x1c51b60, 11, 1;
L_0x1c36a00 .part L_0x1c4ccc0, 10, 1;
L_0x1c37ab0 .part L_0x1c27050, 12, 1;
L_0x1c37b50 .part L_0x1c51b60, 12, 1;
L_0x1c36b30 .part L_0x1c4ccc0, 11, 1;
L_0x1c38cf0 .part L_0x1c27050, 13, 1;
L_0x1c37bf0 .part L_0x1c51b60, 13, 1;
L_0x1c37c90 .part L_0x1c4ccc0, 12, 1;
L_0x1c3a050 .part L_0x1c27050, 14, 1;
L_0x1c3a0f0 .part L_0x1c51b60, 14, 1;
L_0x1c390f0 .part L_0x1c4ccc0, 13, 1;
L_0x1c3b2a0 .part L_0x1c27050, 15, 1;
L_0x1c3a190 .part L_0x1c51b60, 15, 1;
L_0x1c3a230 .part L_0x1c4ccc0, 14, 1;
L_0x1c3c4e0 .part L_0x1c27050, 16, 1;
L_0x1c3c580 .part L_0x1c51b60, 16, 1;
L_0x1c3b550 .part L_0x1c4ccc0, 15, 1;
L_0x1c3d800 .part L_0x1c27050, 17, 1;
L_0x1c3c620 .part L_0x1c51b60, 17, 1;
L_0x1c3c6c0 .part L_0x1c4ccc0, 16, 1;
L_0x1c3ea60 .part L_0x1c27050, 18, 1;
L_0x1c3eb00 .part L_0x1c51b60, 18, 1;
L_0x1c3dae0 .part L_0x1c4ccc0, 17, 1;
L_0x1c3fc80 .part L_0x1c27050, 19, 1;
L_0x1c3eba0 .part L_0x1c51b60, 19, 1;
L_0x1c3ec40 .part L_0x1c4ccc0, 18, 1;
L_0x1c40eb0 .part L_0x1c27050, 20, 1;
L_0x1c40f50 .part L_0x1c51b60, 20, 1;
L_0x1c3fd20 .part L_0x1c4ccc0, 19, 1;
L_0x1c420e0 .part L_0x1c27050, 21, 1;
L_0x1c40ff0 .part L_0x1c51b60, 21, 1;
L_0x1c41090 .part L_0x1c4ccc0, 20, 1;
L_0x1c43320 .part L_0x1c27050, 22, 1;
L_0x1c433c0 .part L_0x1c51b60, 22, 1;
L_0x1c42180 .part L_0x1c4ccc0, 21, 1;
L_0x1c44550 .part L_0x1c27050, 23, 1;
L_0x1c43460 .part L_0x1c51b60, 23, 1;
L_0x1c43500 .part L_0x1c4ccc0, 22, 1;
L_0x1c45780 .part L_0x1c27050, 24, 1;
L_0x1c45820 .part L_0x1c51b60, 24, 1;
L_0x1c445f0 .part L_0x1c4ccc0, 23, 1;
L_0x1c469b0 .part L_0x1c27050, 25, 1;
L_0x1c34310 .part L_0x1c51b60, 25, 1;
L_0x1c343b0 .part L_0x1c4ccc0, 24, 1;
L_0x1c355b0 .part L_0x1c27050, 26, 1;
L_0x1c47e00 .part L_0x1c51b60, 26, 1;
L_0x1c46e60 .part L_0x1c4ccc0, 25, 1;
L_0x1c48e70 .part L_0x1c27050, 27, 1;
L_0x1c47ea0 .part L_0x1c51b60, 27, 1;
L_0x1c47f40 .part L_0x1c4ccc0, 26, 1;
L_0x1c49fa0 .part L_0x1c27050, 28, 1;
L_0x1c4a040 .part L_0x1c51b60, 28, 1;
L_0x1c48f10 .part L_0x1c4ccc0, 27, 1;
L_0x1c4b0c0 .part L_0x1c27050, 29, 1;
L_0x1c4a0e0 .part L_0x1c51b60, 29, 1;
L_0x1c38ee0 .part L_0x1c4ccc0, 28, 1;
LS_0x1c4ccc0_0_0 .concat8 [ 1 1 1 1], L_0x1b4ebc0, L_0x1aff8a0, L_0x1bb7000, L_0x1bdedd0;
LS_0x1c4ccc0_0_4 .concat8 [ 1 1 1 1], L_0x1bea5a0, L_0x1bedf70, L_0x1bf1940, L_0x1bf5310;
LS_0x1c4ccc0_0_8 .concat8 [ 1 1 1 1], L_0x1bf8ce0, L_0x1bfc6b0, L_0x1b0c550, L_0x1b627a0;
LS_0x1c4ccc0_0_12 .concat8 [ 1 1 1 1], L_0x1b37d70, L_0x1af3680, L_0x1b31d80, L_0x1b546d0;
LS_0x1c4ccc0_0_16 .concat8 [ 1 1 1 1], L_0x19ca620, L_0x19cd1e0, L_0x1bafca0, L_0x1bb3630;
LS_0x1c4ccc0_0_20 .concat8 [ 1 1 1 1], L_0x1bba9d0, L_0x1bbe3a0, L_0x1bc1d70, L_0x1bc5920;
LS_0x1c4ccc0_0_24 .concat8 [ 1 1 1 1], L_0x1bc92f0, L_0x1bcccc0, L_0x1bd0690, L_0x1bd4060;
LS_0x1c4ccc0_0_28 .concat8 [ 1 1 1 0], L_0x1bd7a30, L_0x1bdb400, L_0x1be27a0;
LS_0x1c4ccc0_1_0 .concat8 [ 4 4 4 4], LS_0x1c4ccc0_0_0, LS_0x1c4ccc0_0_4, LS_0x1c4ccc0_0_8, LS_0x1c4ccc0_0_12;
LS_0x1c4ccc0_1_4 .concat8 [ 4 4 4 3], LS_0x1c4ccc0_0_16, LS_0x1c4ccc0_0_20, LS_0x1c4ccc0_0_24, LS_0x1c4ccc0_0_28;
L_0x1c4ccc0 .concat8 [ 16 15 0 0], LS_0x1c4ccc0_1_0, LS_0x1c4ccc0_1_4;
L_0x1c4ce70 .part L_0x1c27050, 30, 1;
L_0x1c4b840 .part L_0x1c51b60, 30, 1;
L_0x1c4b8e0 .part L_0x1c4ccc0, 29, 1;
LS_0x1c4e050_0_0 .concat8 [ 1 1 1 1], L_0x1c29f60, L_0x1c2ad00, L_0x1c2be00, L_0x1c2d0f0;
LS_0x1c4e050_0_4 .concat8 [ 1 1 1 1], L_0x1c2e220, L_0x1c2f330, L_0x1c30580, L_0x1c31740;
LS_0x1c4e050_0_8 .concat8 [ 1 1 1 1], L_0x1c32990, L_0x1c33c40, L_0x1c34f80, L_0x1c36210;
LS_0x1c4e050_0_12 .concat8 [ 1 1 1 1], L_0x1c37480, L_0x1c386c0, L_0x1c39a20, L_0x1c3ac70;
LS_0x1c4e050_0_16 .concat8 [ 1 1 1 1], L_0x1c3beb0, L_0x1c3d1d0, L_0x1c3e430, L_0x1c3f650;
LS_0x1c4e050_0_20 .concat8 [ 1 1 1 1], L_0x1c40880, L_0x1c41ab0, L_0x1c42cf0, L_0x1c43f20;
LS_0x1c4e050_0_24 .concat8 [ 1 1 1 1], L_0x1c45150, L_0x1c46380, L_0x1c47620, L_0x1c488a0;
LS_0x1c4e050_0_28 .concat8 [ 1 1 1 1], L_0x1c499d0, L_0x1c4aaf0, L_0x1bfd8e0, L_0x1c4dac0;
LS_0x1c4e050_1_0 .concat8 [ 4 4 4 4], LS_0x1c4e050_0_0, LS_0x1c4e050_0_4, LS_0x1c4e050_0_8, LS_0x1c4e050_0_12;
LS_0x1c4e050_1_4 .concat8 [ 4 4 4 4], LS_0x1c4e050_0_16, LS_0x1c4e050_0_20, LS_0x1c4e050_0_24, LS_0x1c4e050_0_28;
L_0x1c4e050 .concat8 [ 16 16 0 0], LS_0x1c4e050_1_0, LS_0x1c4e050_1_4;
L_0x1c4e200 .part L_0x1c27050, 31, 1;
L_0x1c4cf10 .part L_0x1c51b60, 31, 1;
L_0x1c4cfb0 .part L_0x1c4ccc0, 30, 1;
L_0x1c3c7c0 .part L_0x1c4e050, 0, 1;
L_0x1c4e2a0 .part L_0x1c4e050, 1, 1;
L_0x1c4e340 .part L_0x1c4e050, 2, 1;
L_0x1c4e430 .part L_0x1c4e050, 3, 1;
L_0x1c4ed00 .part L_0x1c4e050, 4, 1;
L_0x1c3c8b0 .part L_0x1c4e050, 5, 1;
L_0x1c4e9c0 .part L_0x1c4e050, 6, 1;
L_0x1c4eab0 .part L_0x1c4e050, 7, 1;
L_0x1c4eba0 .part L_0x1c4e050, 8, 1;
L_0x1c4f210 .part L_0x1c4e050, 9, 1;
L_0x1c4eeb0 .part L_0x1c4e050, 10, 1;
L_0x1c4efa0 .part L_0x1c4e050, 11, 1;
L_0x1c4f090 .part L_0x1c4e050, 12, 1;
L_0x1c4eda0 .part L_0x1c4e050, 13, 1;
L_0x1c4f2b0 .part L_0x1c4e050, 14, 1;
L_0x1c4f3a0 .part L_0x1c4e050, 15, 1;
L_0x1c4f490 .part L_0x1c4e050, 16, 1;
L_0x1c4f580 .part L_0x1c4e050, 17, 1;
L_0x1c4fbf0 .part L_0x1c4e050, 18, 1;
L_0x1c4fc90 .part L_0x1c4e050, 19, 1;
L_0x1c4f840 .part L_0x1c4e050, 20, 1;
L_0x1c4f930 .part L_0x1c4e050, 21, 1;
L_0x1c4fa20 .part L_0x1c4e050, 22, 1;
L_0x1c4fb10 .part L_0x1c4e050, 23, 1;
L_0x1c4fd80 .part L_0x1c4e050, 24, 1;
L_0x1c4fe70 .part L_0x1c4e050, 25, 1;
L_0x1c4ff60 .part L_0x1c4e050, 26, 1;
L_0x1c50050 .part L_0x1c4e050, 27, 1;
L_0x1c505a0 .part L_0x1c4e050, 28, 1;
L_0x1c4f630 .part L_0x1c4e050, 29, 1;
L_0x1c4f720 .part L_0x1c4e050, 28, 1;
L_0x1c501a0 .part L_0x1c4e050, 29, 1;
L_0x1c50290 .part L_0x1c4e050, 30, 1;
L_0x1c50380 .part L_0x1c4e050, 31, 1;
S_0x1b709c0 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c2a000 .functor BUFZ 1, L_0x1c29a30, C4<0>, C4<0>, C4<0>;
L_0x1c2a0b0 .functor BUFZ 1, L_0x1c29a30, C4<0>, C4<0>, C4<0>;
v0x1b06750_0 .net "A", 0 0, L_0x1c2a270;  1 drivers
v0x1b067f0_0 .net "B", 0 0, L_0x1c2a310;  1 drivers
v0x1b06280_0 .net "I", 7 0, L_0x1c2a1d0;  1 drivers
v0x1b06320_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b05e00_0 .net *"_s15", 0 0, L_0x1c2a000;  1 drivers
v0x1b058e0_0 .net *"_s19", 0 0, L_0x1c2a0b0;  1 drivers
L_0x7f20eb31d1c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1afe560_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d1c8;  1 drivers
v0x1b05410_0 .net "addORsub", 0 0, L_0x1c29a30;  1 drivers
v0x1b054b0_0 .net "carryin", 0 0, L_0x1c2a3b0;  1 drivers
v0x1b04f40_0 .net "carryout", 0 0, L_0x1b4ebc0;  1 drivers
v0x1b04fe0_0 .net "modB", 0 0, L_0x1c29820;  1 drivers
v0x1b04a70_0 .net "out", 0 0, L_0x1c29f60;  1 drivers
L_0x1c29890 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c2a1d0_0_0 .concat8 [ 1 1 1 1], L_0x1c2a000, L_0x1c2a0b0, L_0x1c29c90, L_0x7f20eb31d1c8;
LS_0x1c2a1d0_0_4 .concat8 [ 1 1 1 1], L_0x1b11330, L_0x1c29e10, L_0x1c29e80, L_0x1c29ef0;
L_0x1c2a1d0 .concat8 [ 4 4 0 0], LS_0x1c2a1d0_0_0, LS_0x1c2a1d0_0_4;
S_0x1b18cc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c29930 .functor XOR 1, L_0x1c2a270, L_0x1c29820, C4<0>, C4<0>;
L_0x1c29a30 .functor XOR 1, L_0x1c29930, L_0x1c2a3b0, C4<0>, C4<0>;
L_0x1c29aa0 .functor AND 1, L_0x1c29930, L_0x1c2a3b0, C4<1>, C4<1>;
L_0x1c29b10 .functor AND 1, L_0x1c2a270, L_0x1c29820, C4<1>, C4<1>;
L_0x1b4ebc0 .functor OR 1, L_0x1c29aa0, L_0x1c29b10, C4<0>, C4<0>;
v0x1b433c0_0 .net "A", 0 0, L_0x1c2a270;  alias, 1 drivers
v0x1b42f80_0 .net "B", 0 0, L_0x1c29820;  alias, 1 drivers
v0x1b43040_0 .net "carryin", 0 0, L_0x1c2a3b0;  alias, 1 drivers
v0x1b3ed50_0 .net "carryout", 0 0, L_0x1b4ebc0;  alias, 1 drivers
v0x1b3ee10_0 .net "out1", 0 0, L_0x1c29930;  1 drivers
v0x1b3ea00_0 .net "out2", 0 0, L_0x1c29aa0;  1 drivers
v0x1b38d20_0 .net "out3", 0 0, L_0x1c29b10;  1 drivers
v0x1b38de0_0 .net "sum", 0 0, L_0x1c29a30;  alias, 1 drivers
S_0x1b56430 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b11330 .functor AND 1, L_0x1c2a270, L_0x1c2a310, C4<1>, C4<1>;
v0x1b30000_0 .net "A", 0 0, L_0x1c2a270;  alias, 1 drivers
v0x1b300c0_0 .net "B", 0 0, L_0x1c2a310;  alias, 1 drivers
v0x1b2b960_0 .net "out", 0 0, L_0x1b11330;  1 drivers
S_0x1b51da0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b950e0_0 .net "I", 7 0, L_0x1c2a1d0;  alias, 1 drivers
v0x1b90a40_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b8c3a0_0 .net "out", 0 0, L_0x1c29f60;  alias, 1 drivers
L_0x1c29f60 .part/v L_0x1c2a1d0, v0x1b1bbf0_0, 1;
S_0x1b4d710 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c29e10 .functor NAND 1, L_0x1c2a270, L_0x1c2a310, C4<1>, C4<1>;
v0x1b764f0_0 .net "A", 0 0, L_0x1c2a270;  alias, 1 drivers
v0x1b71e50_0 .net "B", 0 0, L_0x1c2a310;  alias, 1 drivers
v0x1b71f10_0 .net "out", 0 0, L_0x1c29e10;  1 drivers
S_0x1b49f30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c29e80 .functor NOR 1, L_0x1c2a270, L_0x1c2a310, C4<0>, C4<0>;
v0x1b6d800_0 .net "A", 0 0, L_0x1c2a270;  alias, 1 drivers
v0x1b578c0_0 .net "B", 0 0, L_0x1c2a310;  alias, 1 drivers
v0x1b57980_0 .net "out", 0 0, L_0x1c29e80;  1 drivers
S_0x1b3b030 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c29ef0 .functor OR 1, L_0x1c2a270, L_0x1c2a310, C4<0>, C4<0>;
v0x1b532f0_0 .net "A", 0 0, L_0x1c2a270;  alias, 1 drivers
v0x1b4ec50_0 .net "B", 0 0, L_0x1c2a310;  alias, 1 drivers
v0x1b15ad0_0 .net "out", 0 0, L_0x1c29ef0;  1 drivers
S_0x1b14620 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c29820 .functor XOR 1, L_0x1c2a310, L_0x1c29890, C4<0>, C4<0>;
v0x1b0f040_0 .net "A", 0 0, L_0x1c2a310;  alias, 1 drivers
v0x1b113c0_0 .net "B", 0 0, L_0x1c29890;  1 drivers
v0x198f180_0 .net "out", 0 0, L_0x1c29820;  alias, 1 drivers
S_0x1b2a9b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b709c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c29c90 .functor XOR 1, L_0x1c2a270, L_0x1c2a310, C4<0>, C4<0>;
v0x1b070f0_0 .net "A", 0 0, L_0x1c2a270;  alias, 1 drivers
v0x1b071b0_0 .net "B", 0 0, L_0x1c2a310;  alias, 1 drivers
v0x1b06c20_0 .net "out", 0 0, L_0x1c29c90;  1 drivers
S_0x1b97e60 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c2adc0 .functor BUFZ 1, L_0x1c2a750, C4<0>, C4<0>, C4<0>;
L_0x1c2ae50 .functor BUFZ 1, L_0x1c2a750, C4<0>, C4<0>, C4<0>;
v0x1b23f00_0 .net "A", 0 0, L_0x1c2b1a0;  1 drivers
v0x1b1f8d0_0 .net "B", 0 0, L_0x1c2b350;  1 drivers
v0x1b1f990_0 .net "I", 7 0, L_0x1c2af70;  1 drivers
v0x1b88ef0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b84900_0 .net *"_s15", 0 0, L_0x1c2adc0;  1 drivers
v0x1b849c0_0 .net *"_s19", 0 0, L_0x1c2ae50;  1 drivers
L_0x7f20eb31d210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b80310_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d210;  1 drivers
v0x1b803d0_0 .net "addORsub", 0 0, L_0x1c2a750;  1 drivers
v0x1b7bd20_0 .net "carryin", 0 0, L_0x1c2b3f0;  1 drivers
v0x1b1b2e0_0 .net "carryout", 0 0, L_0x1aff8a0;  1 drivers
v0x1b1b3b0_0 .net "modB", 0 0, L_0x1c2a4e0;  1 drivers
v0x1b65c90_0 .net "out", 0 0, L_0x1c2ad00;  1 drivers
L_0x1c2a550 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c2af70_0_0 .concat8 [ 1 1 1 1], L_0x1c2adc0, L_0x1c2ae50, L_0x1c2a9f0, L_0x7f20eb31d210;
LS_0x1c2af70_0_4 .concat8 [ 1 1 1 1], L_0x1afdca0, L_0x1c2ab70, L_0x1c2abe0, L_0x1c2ac70;
L_0x1c2af70 .concat8 [ 4 4 0 0], LS_0x1c2af70_0_0, LS_0x1c2af70_0_4;
S_0x1b26390 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c2a610 .functor XOR 1, L_0x1c2b1a0, L_0x1c2a4e0, C4<0>, C4<0>;
L_0x1c2a750 .functor XOR 1, L_0x1c2a610, L_0x1c2b3f0, C4<0>, C4<0>;
L_0x1c2a7e0 .functor AND 1, L_0x1c2a610, L_0x1c2b3f0, C4<1>, C4<1>;
L_0x1c2a870 .functor AND 1, L_0x1c2b1a0, L_0x1c2a4e0, C4<1>, C4<1>;
L_0x1aff8a0 .functor OR 1, L_0x1c2a7e0, L_0x1c2a870, C4<0>, C4<0>;
v0x1b040d0_0 .net "A", 0 0, L_0x1c2b1a0;  alias, 1 drivers
v0x1b03c00_0 .net "B", 0 0, L_0x1c2a4e0;  alias, 1 drivers
v0x1b03cc0_0 .net "carryin", 0 0, L_0x1c2b3f0;  alias, 1 drivers
v0x1b03730_0 .net "carryout", 0 0, L_0x1aff8a0;  alias, 1 drivers
v0x1b037f0_0 .net "out1", 0 0, L_0x1c2a610;  1 drivers
v0x1b03260_0 .net "out2", 0 0, L_0x1c2a7e0;  1 drivers
v0x1b03320_0 .net "out3", 0 0, L_0x1c2a870;  1 drivers
v0x1b02d90_0 .net "sum", 0 0, L_0x1c2a750;  alias, 1 drivers
S_0x1b21da0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1afdca0 .functor AND 1, L_0x1c2b1a0, L_0x1c2b350, C4<1>, C4<1>;
v0x1b02910_0 .net "A", 0 0, L_0x1c2b1a0;  alias, 1 drivers
v0x1afe090_0 .net "B", 0 0, L_0x1c2b350;  alias, 1 drivers
v0x1afe130_0 .net "out", 0 0, L_0x1afdca0;  1 drivers
S_0x1b1d7b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b024c0_0 .net "I", 7 0, L_0x1c2af70;  alias, 1 drivers
v0x1b01f60_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b01a50_0 .net "out", 0 0, L_0x1c2ad00;  alias, 1 drivers
L_0x1c2ad00 .part/v L_0x1c2af70, v0x1b1bbf0_0, 1;
S_0x1b86dd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2ab70 .functor NAND 1, L_0x1c2b1a0, L_0x1c2b350, C4<1>, C4<1>;
v0x1b01580_0 .net "A", 0 0, L_0x1c2b1a0;  alias, 1 drivers
v0x1b010b0_0 .net "B", 0 0, L_0x1c2b350;  alias, 1 drivers
v0x1b01170_0 .net "out", 0 0, L_0x1c2ab70;  1 drivers
S_0x1b827e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2abe0 .functor NOR 1, L_0x1c2b1a0, L_0x1c2b350, C4<0>, C4<0>;
v0x1b00710_0 .net "A", 0 0, L_0x1c2b1a0;  alias, 1 drivers
v0x1b007d0_0 .net "B", 0 0, L_0x1c2b350;  alias, 1 drivers
v0x1b00240_0 .net "out", 0 0, L_0x1c2abe0;  1 drivers
S_0x1b7e1f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2ac70 .functor OR 1, L_0x1c2b1a0, L_0x1c2b350, C4<0>, C4<0>;
v0x1affdc0_0 .net "A", 0 0, L_0x1c2b1a0;  alias, 1 drivers
v0x1aff930_0 .net "B", 0 0, L_0x1c2b350;  alias, 1 drivers
v0x1afdbc0_0 .net "out", 0 0, L_0x1c2ac70;  1 drivers
S_0x1b68160 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2a4e0 .functor XOR 1, L_0x1c2b350, L_0x1c2a550, C4<0>, C4<0>;
v0x1aff3d0_0 .net "A", 0 0, L_0x1c2b350;  alias, 1 drivers
v0x1aff490_0 .net "B", 0 0, L_0x1c2a550;  1 drivers
v0x1afef00_0 .net "out", 0 0, L_0x1c2a4e0;  alias, 1 drivers
S_0x1b196a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b97e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2a9f0 .functor XOR 1, L_0x1c2b1a0, L_0x1c2b350, C4<0>, C4<0>;
v0x1afead0_0 .net "A", 0 0, L_0x1c2b1a0;  alias, 1 drivers
v0x1b284b0_0 .net "B", 0 0, L_0x1c2b350;  alias, 1 drivers
v0x1b28570_0 .net "out", 0 0, L_0x1c2a9f0;  1 drivers
S_0x1b63b70 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c350e0 .functor BUFZ 1, L_0x1c34860, C4<0>, C4<0>, C4<0>;
L_0x1c35170 .functor BUFZ 1, L_0x1c34860, C4<0>, C4<0>, C4<0>;
v0x1b0ab50_0 .net "A", 0 0, L_0x1c356c0;  1 drivers
v0x1b0abf0_0 .net "B", 0 0, L_0x1c35760;  1 drivers
v0x1b0a820_0 .net "I", 7 0, L_0x1c35290;  1 drivers
v0x1b0a8f0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b0a4f0_0 .net *"_s15", 0 0, L_0x1c350e0;  1 drivers
v0x1b0a5e0_0 .net *"_s19", 0 0, L_0x1c35170;  1 drivers
L_0x7f20eb31d498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b0a1c0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d498;  1 drivers
v0x1b0a2a0_0 .net "addORsub", 0 0, L_0x1c34860;  1 drivers
v0x1b09e90_0 .net "carryin", 0 0, L_0x1c35800;  1 drivers
v0x1b09b60_0 .net "carryout", 0 0, L_0x1b0c550;  1 drivers
v0x1b09c30_0 .net "modB", 0 0, L_0x1c34650;  1 drivers
v0x1b09830_0 .net "out", 0 0, L_0x1c34f80;  1 drivers
L_0x1c346c0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c35290_0_0 .concat8 [ 1 1 1 1], L_0x1c350e0, L_0x1c35170, L_0x1c34c70, L_0x7f20eb31d498;
LS_0x1c35290_0_4 .concat8 [ 1 1 1 1], L_0x1b0bc80, L_0x1c34df0, L_0x1c34e60, L_0x1c34ef0;
L_0x1c35290 .concat8 [ 4 4 0 0], LS_0x1c35290_0_0, LS_0x1c35290_0_4;
S_0x1b5f580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c34760 .functor XOR 1, L_0x1c356c0, L_0x1c34650, C4<0>, C4<0>;
L_0x1c34860 .functor XOR 1, L_0x1c34760, L_0x1c35800, C4<0>, C4<0>;
L_0x1c34970 .functor AND 1, L_0x1c34760, L_0x1c35800, C4<1>, C4<1>;
L_0x1c34a00 .functor AND 1, L_0x1c356c0, L_0x1c34650, C4<1>, C4<1>;
L_0x1b0c550 .functor OR 1, L_0x1c34970, L_0x1c34a00, C4<0>, C4<0>;
v0x1b5d130_0 .net "A", 0 0, L_0x1c356c0;  alias, 1 drivers
v0x1b470e0_0 .net "B", 0 0, L_0x1c34650;  alias, 1 drivers
v0x1b471a0_0 .net "carryin", 0 0, L_0x1c35800;  alias, 1 drivers
v0x1b42af0_0 .net "carryout", 0 0, L_0x1b0c550;  alias, 1 drivers
v0x1b42bb0_0 .net "out1", 0 0, L_0x1c34760;  1 drivers
v0x1b3e570_0 .net "out2", 0 0, L_0x1c34970;  1 drivers
v0x1b5afa0_0 .net "out3", 0 0, L_0x1c34a00;  1 drivers
v0x1b5b060_0 .net "sum", 0 0, L_0x1c34860;  alias, 1 drivers
S_0x1b44fc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b0bc80 .functor AND 1, L_0x1c356c0, L_0x1c35760, C4<1>, C4<1>;
v0x1b409d0_0 .net "A", 0 0, L_0x1c356c0;  alias, 1 drivers
v0x1b40a90_0 .net "B", 0 0, L_0x1c35760;  alias, 1 drivers
v0x1b3c3e0_0 .net "out", 0 0, L_0x1b0bc80;  1 drivers
S_0x1af7f90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b0e9b0_0 .net "I", 7 0, L_0x1c35290;  alias, 1 drivers
v0x1b0e630_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b0e6f0_0 .net "out", 0 0, L_0x1c34f80;  alias, 1 drivers
L_0x1c34f80 .part/v L_0x1c35290, v0x1b1bbf0_0, 1;
S_0x1b0e200 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c34df0 .functor NAND 1, L_0x1c356c0, L_0x1c35760, C4<1>, C4<1>;
v0x1b0df70_0 .net "A", 0 0, L_0x1c356c0;  alias, 1 drivers
v0x1b0dbf0_0 .net "B", 0 0, L_0x1c35760;  alias, 1 drivers
v0x1b0d870_0 .net "out", 0 0, L_0x1c34df0;  1 drivers
S_0x1b0d540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c34e60 .functor NOR 1, L_0x1c356c0, L_0x1c35760, C4<0>, C4<0>;
v0x1b0d210_0 .net "A", 0 0, L_0x1c356c0;  alias, 1 drivers
v0x1b0d2d0_0 .net "B", 0 0, L_0x1c35760;  alias, 1 drivers
v0x1b0cf30_0 .net "out", 0 0, L_0x1c34e60;  1 drivers
S_0x1b0cbb0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c34ef0 .functor OR 1, L_0x1c356c0, L_0x1c35760, C4<0>, C4<0>;
v0x1b0c920_0 .net "A", 0 0, L_0x1c356c0;  alias, 1 drivers
v0x1b0c5e0_0 .net "B", 0 0, L_0x1c35760;  alias, 1 drivers
v0x1b0c220_0 .net "out", 0 0, L_0x1c34ef0;  1 drivers
S_0x1b0bef0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c34650 .functor XOR 1, L_0x1c35760, L_0x1c346c0, C4<0>, C4<0>;
v0x1b0bbc0_0 .net "A", 0 0, L_0x1c35760;  alias, 1 drivers
v0x1b0b890_0 .net "B", 0 0, L_0x1c346c0;  1 drivers
v0x1b0b950_0 .net "out", 0 0, L_0x1c34650;  alias, 1 drivers
S_0x1af7890 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b63b70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c34c70 .functor XOR 1, L_0x1c356c0, L_0x1c35760, C4<0>, C4<0>;
v0x1b0b5b0_0 .net "A", 0 0, L_0x1c356c0;  alias, 1 drivers
v0x1b0b650_0 .net "B", 0 0, L_0x1c35760;  alias, 1 drivers
v0x1b0b230_0 .net "out", 0 0, L_0x1c34c70;  1 drivers
S_0x1af7530 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c36370 .functor BUFZ 1, L_0x1c35ad0, C4<0>, C4<0>, C4<0>;
L_0x1c36400 .functor BUFZ 1, L_0x1c35ad0, C4<0>, C4<0>, C4<0>;
v0x1b2e870_0 .net "A", 0 0, L_0x1c36840;  1 drivers
v0x1b2a4d0_0 .net "B", 0 0, L_0x1c2b240;  1 drivers
v0x1b2a590_0 .net "I", 7 0, L_0x1c36520;  1 drivers
v0x1b93850_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b8f1b0_0 .net *"_s15", 0 0, L_0x1c36370;  1 drivers
v0x1b8f270_0 .net *"_s19", 0 0, L_0x1c36400;  1 drivers
L_0x7f20eb31d4e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b74c60_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d4e0;  1 drivers
v0x1b74d40_0 .net "addORsub", 0 0, L_0x1c35ad0;  1 drivers
v0x1b705c0_0 .net "carryin", 0 0, L_0x1c36a00;  1 drivers
v0x1b70660_0 .net "carryout", 0 0, L_0x1b627a0;  1 drivers
v0x1b56030_0 .net "modB", 0 0, L_0x1c358a0;  1 drivers
v0x1b560d0_0 .net "out", 0 0, L_0x1c36210;  1 drivers
L_0x1c35910 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c36520_0_0 .concat8 [ 1 1 1 1], L_0x1c36370, L_0x1c36400, L_0x1c35f00, L_0x7f20eb31d4e0;
LS_0x1c36520_0_4 .concat8 [ 1 1 1 1], L_0x1b43bf0, L_0x1c36080, L_0x1c360f0, L_0x1c36180;
L_0x1c36520 .concat8 [ 4 4 0 0], LS_0x1c36520_0_0, LS_0x1c36520_0_4;
S_0x1b094b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c359b0 .functor XOR 1, L_0x1c36840, L_0x1c358a0, C4<0>, C4<0>;
L_0x1c35ad0 .functor XOR 1, L_0x1c359b0, L_0x1c36a00, C4<0>, C4<0>;
L_0x1c35c00 .functor AND 1, L_0x1c359b0, L_0x1c36a00, C4<1>, C4<1>;
L_0x1c35c90 .functor AND 1, L_0x1c36840, L_0x1c358a0, C4<1>, C4<1>;
L_0x1b627a0 .functor OR 1, L_0x1c35c00, L_0x1c35c90, C4<0>, C4<0>;
v0x1b09200_0 .net "A", 0 0, L_0x1c36840;  alias, 1 drivers
v0x1b08e50_0 .net "B", 0 0, L_0x1c358a0;  alias, 1 drivers
v0x1b08f10_0 .net "carryin", 0 0, L_0x1c36a00;  alias, 1 drivers
v0x1b087e0_0 .net "carryout", 0 0, L_0x1b627a0;  alias, 1 drivers
v0x1b088a0_0 .net "out1", 0 0, L_0x1c359b0;  1 drivers
v0x1af7220_0 .net "out2", 0 0, L_0x1c35c00;  1 drivers
v0x1b4a520_0 .net "out3", 0 0, L_0x1c35c90;  1 drivers
v0x1b4a5e0_0 .net "sum", 0 0, L_0x1c35ad0;  alias, 1 drivers
S_0x1ba5bd0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b43bf0 .functor AND 1, L_0x1c36840, L_0x1c2b240, C4<1>, C4<1>;
v0x1b08410_0 .net "A", 0 0, L_0x1c36840;  alias, 1 drivers
v0x1af65b0_0 .net "B", 0 0, L_0x1c2b240;  alias, 1 drivers
v0x1af6650_0 .net "out", 0 0, L_0x1b43bf0;  1 drivers
S_0x1ba52b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b89aa0_0 .net "I", 7 0, L_0x1c36520;  alias, 1 drivers
v0x1b89b60_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b24fc0_0 .net "out", 0 0, L_0x1c36210;  alias, 1 drivers
L_0x1c36210 .part/v L_0x1c36520, v0x1b1bbf0_0, 1;
S_0x1b209d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c36080 .functor NAND 1, L_0x1c36840, L_0x1c2b240, C4<1>, C4<1>;
v0x1b97430_0 .net "A", 0 0, L_0x1c36840;  alias, 1 drivers
v0x1b97520_0 .net "B", 0 0, L_0x1c2b240;  alias, 1 drivers
v0x1b1c3e0_0 .net "out", 0 0, L_0x1c36080;  1 drivers
S_0x1b89ff0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c360f0 .functor NOR 1, L_0x1c36840, L_0x1c2b240, C4<0>, C4<0>;
v0x1b85aa0_0 .net "A", 0 0, L_0x1c36840;  alias, 1 drivers
v0x1b81410_0 .net "B", 0 0, L_0x1c2b240;  alias, 1 drivers
v0x1b7ce20_0 .net "out", 0 0, L_0x1c360f0;  1 drivers
S_0x1b66d90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c36180 .functor OR 1, L_0x1c36840, L_0x1c2b240, C4<0>, C4<0>;
v0x1b7cf20_0 .net "A", 0 0, L_0x1c36840;  alias, 1 drivers
v0x1b62830_0 .net "B", 0 0, L_0x1c2b240;  alias, 1 drivers
v0x1b5e1b0_0 .net "out", 0 0, L_0x1c36180;  1 drivers
S_0x1b481e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c358a0 .functor XOR 1, L_0x1c2b240, L_0x1c35910, C4<0>, C4<0>;
v0x1b5e2b0_0 .net "A", 0 0, L_0x1c2b240;  alias, 1 drivers
v0x1b43c80_0 .net "B", 0 0, L_0x1c35910;  1 drivers
v0x1b3f600_0 .net "out", 0 0, L_0x1c358a0;  alias, 1 drivers
S_0x1b37490 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1af7530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c35f00 .functor XOR 1, L_0x1c36840, L_0x1c2b240, C4<0>, C4<0>;
v0x1b32e00_0 .net "A", 0 0, L_0x1c36840;  alias, 1 drivers
v0x1b32ec0_0 .net "B", 0 0, L_0x1c2b240;  alias, 1 drivers
v0x1b2e770_0 .net "out", 0 0, L_0x1c35f00;  1 drivers
S_0x1b519a0 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c375e0 .functor BUFZ 1, L_0x1c36d60, C4<0>, C4<0>, C4<0>;
L_0x1c37670 .functor BUFZ 1, L_0x1c36d60, C4<0>, C4<0>, C4<0>;
v0x1b70ea0_0 .net "A", 0 0, L_0x1c37ab0;  1 drivers
v0x1b70f40_0 .net "B", 0 0, L_0x1c37b50;  1 drivers
v0x1b56910_0 .net "I", 7 0, L_0x1c37790;  1 drivers
v0x1b56a10_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b52280_0 .net *"_s15", 0 0, L_0x1c375e0;  1 drivers
v0x1b52390_0 .net *"_s19", 0 0, L_0x1c37670;  1 drivers
L_0x7f20eb31d528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b4dbf0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d528;  1 drivers
v0x1b4dcd0_0 .net "addORsub", 0 0, L_0x1c36d60;  1 drivers
v0x1b14b00_0 .net "carryin", 0 0, L_0x1c36b30;  1 drivers
v0x1b24a70_0 .net "carryout", 0 0, L_0x1b37d70;  1 drivers
v0x1b24b10_0 .net "modB", 0 0, L_0x1c2b2e0;  1 drivers
v0x1b20480_0 .net "out", 0 0, L_0x1c37480;  1 drivers
L_0x1c368e0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c37790_0_0 .concat8 [ 1 1 1 1], L_0x1c375e0, L_0x1c37670, L_0x1c37170, L_0x7f20eb31d528;
LS_0x1c37790_0_4 .concat8 [ 1 1 1 1], L_0x1b94130, L_0x1c372f0, L_0x1c37360, L_0x1c373f0;
L_0x1c37790 .concat8 [ 4 4 0 0], LS_0x1c37790_0_0, LS_0x1c37790_0_4;
S_0x1b14220 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c36c60 .functor XOR 1, L_0x1c37ab0, L_0x1c2b2e0, C4<0>, C4<0>;
L_0x1c36d60 .functor XOR 1, L_0x1c36c60, L_0x1c36b30, C4<0>, C4<0>;
L_0x1c36e70 .functor AND 1, L_0x1c36c60, L_0x1c36b30, C4<1>, C4<1>;
L_0x1c36ee0 .functor AND 1, L_0x1c37ab0, L_0x1c2b2e0, C4<1>, C4<1>;
L_0x1b37d70 .functor OR 1, L_0x1c36e70, L_0x1c36ee0, C4<0>, C4<0>;
v0x1b26d30_0 .net "A", 0 0, L_0x1c37ab0;  alias, 1 drivers
v0x1b26e10_0 .net "B", 0 0, L_0x1c2b2e0;  alias, 1 drivers
v0x1b22740_0 .net "carryin", 0 0, L_0x1c36b30;  alias, 1 drivers
v0x1b22800_0 .net "carryout", 0 0, L_0x1b37d70;  alias, 1 drivers
v0x1b1e150_0 .net "out1", 0 0, L_0x1c36c60;  1 drivers
v0x1b1e260_0 .net "out2", 0 0, L_0x1c36e70;  1 drivers
v0x1b87770_0 .net "out3", 0 0, L_0x1c36ee0;  1 drivers
v0x1b87830_0 .net "sum", 0 0, L_0x1c36d60;  alias, 1 drivers
S_0x1b83180 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b94130 .functor AND 1, L_0x1c37ab0, L_0x1c37b50, C4<1>, C4<1>;
v0x1b7ec30_0 .net "A", 0 0, L_0x1c37ab0;  alias, 1 drivers
v0x1b7a5b0_0 .net "B", 0 0, L_0x1c37b50;  alias, 1 drivers
v0x1b7a650_0 .net "out", 0 0, L_0x1b94130;  1 drivers
S_0x1b68b00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b64560_0 .net "I", 7 0, L_0x1c37790;  alias, 1 drivers
v0x1b5ff20_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b5ffe0_0 .net "out", 0 0, L_0x1c37480;  alias, 1 drivers
L_0x1c37480 .part/v L_0x1c37790, v0x1b1bbf0_0, 1;
S_0x1b5b940 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c372f0 .functor NAND 1, L_0x1c37ab0, L_0x1c37b50, C4<1>, C4<1>;
v0x1b45a00_0 .net "A", 0 0, L_0x1c37ab0;  alias, 1 drivers
v0x1b41370_0 .net "B", 0 0, L_0x1c37b50;  alias, 1 drivers
v0x1b41430_0 .net "out", 0 0, L_0x1c372f0;  1 drivers
S_0x1b3cd80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c37360 .functor NOR 1, L_0x1c37ab0, L_0x1c37b50, C4<0>, C4<0>;
v0x1af7ce0_0 .net "A", 0 0, L_0x1c37ab0;  alias, 1 drivers
v0x1aec260_0 .net "B", 0 0, L_0x1c37b50;  alias, 1 drivers
v0x1aec370_0 .net "out", 0 0, L_0x1c37360;  1 drivers
S_0x1aebd70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c373f0 .functor OR 1, L_0x1c37ab0, L_0x1c37b50, C4<0>, C4<0>;
v0x1b0ff40_0 .net "A", 0 0, L_0x1c37ab0;  alias, 1 drivers
v0x1b37e00_0 .net "B", 0 0, L_0x1c37b50;  alias, 1 drivers
v0x1b336e0_0 .net "out", 0 0, L_0x1c373f0;  1 drivers
S_0x1b2f050 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2b2e0 .functor XOR 1, L_0x1c37b50, L_0x1c368e0, C4<0>, C4<0>;
v0x1b337e0_0 .net "A", 0 0, L_0x1c37b50;  alias, 1 drivers
v0x1b941c0_0 .net "B", 0 0, L_0x1c368e0;  1 drivers
v0x1b8fa90_0 .net "out", 0 0, L_0x1c2b2e0;  alias, 1 drivers
S_0x1b79bd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b519a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c37170 .functor XOR 1, L_0x1c37ab0, L_0x1c37b50, C4<0>, C4<0>;
v0x1b8fb70_0 .net "A", 0 0, L_0x1c37ab0;  alias, 1 drivers
v0x1b75540_0 .net "B", 0 0, L_0x1c37b50;  alias, 1 drivers
v0x1b75600_0 .net "out", 0 0, L_0x1c37170;  1 drivers
S_0x1b1be90 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c38820 .functor BUFZ 1, L_0x1c37f80, C4<0>, C4<0>, C4<0>;
L_0x1c388b0 .functor BUFZ 1, L_0x1c37f80, C4<0>, C4<0>, C4<0>;
v0x1af1560_0 .net "A", 0 0, L_0x1c38cf0;  1 drivers
v0x1af0f60_0 .net "B", 0 0, L_0x1c37bf0;  1 drivers
v0x1af1020_0 .net "I", 7 0, L_0x1c389d0;  1 drivers
v0x1af0a90_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1af0b30_0 .net *"_s15", 0 0, L_0x1c38820;  1 drivers
v0x1af05c0_0 .net *"_s19", 0 0, L_0x1c388b0;  1 drivers
L_0x7f20eb31d570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1af06a0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d570;  1 drivers
v0x1af00f0_0 .net "addORsub", 0 0, L_0x1c37f80;  1 drivers
v0x1af0190_0 .net "carryin", 0 0, L_0x1c37c90;  1 drivers
v0x1aefc20_0 .net "carryout", 0 0, L_0x1af3680;  1 drivers
v0x1aefcf0_0 .net "modB", 0 0, L_0x1c37d30;  1 drivers
v0x1aef750_0 .net "out", 0 0, L_0x1c386c0;  1 drivers
L_0x1c37da0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c389d0_0_0 .concat8 [ 1 1 1 1], L_0x1c38820, L_0x1c388b0, L_0x1c383b0, L_0x7f20eb31d570;
LS_0x1c389d0_0_4 .concat8 [ 1 1 1 1], L_0x1af2830, L_0x1c38530, L_0x1c385a0, L_0x1c38630;
L_0x1c389d0 .concat8 [ 4 4 0 0], LS_0x1c389d0_0_0, LS_0x1c389d0_0_4;
S_0x1b854b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c37e40 .functor XOR 1, L_0x1c38cf0, L_0x1c37d30, C4<0>, C4<0>;
L_0x1c37f80 .functor XOR 1, L_0x1c37e40, L_0x1c37c90, C4<0>, C4<0>;
L_0x1c380b0 .functor AND 1, L_0x1c37e40, L_0x1c37c90, C4<1>, C4<1>;
L_0x1c38140 .functor AND 1, L_0x1c38cf0, L_0x1c37d30, C4<1>, C4<1>;
L_0x1af3680 .functor OR 1, L_0x1c380b0, L_0x1c38140, C4<0>, C4<0>;
v0x1b80f40_0 .net "A", 0 0, L_0x1c38cf0;  alias, 1 drivers
v0x1b7c8d0_0 .net "B", 0 0, L_0x1c37d30;  alias, 1 drivers
v0x1b7c990_0 .net "carryin", 0 0, L_0x1c37c90;  alias, 1 drivers
v0x1b66840_0 .net "carryout", 0 0, L_0x1af3680;  alias, 1 drivers
v0x1b66900_0 .net "out1", 0 0, L_0x1c37e40;  1 drivers
v0x1b62250_0 .net "out2", 0 0, L_0x1c380b0;  1 drivers
v0x1b62310_0 .net "out3", 0 0, L_0x1c38140;  1 drivers
v0x1b5dc60_0 .net "sum", 0 0, L_0x1c37f80;  alias, 1 drivers
S_0x1b47c90 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1af2830 .functor AND 1, L_0x1c38cf0, L_0x1c37bf0, C4<1>, C4<1>;
v0x1b436a0_0 .net "A", 0 0, L_0x1c38cf0;  alias, 1 drivers
v0x1b43760_0 .net "B", 0 0, L_0x1c37bf0;  alias, 1 drivers
v0x1b3f0b0_0 .net "out", 0 0, L_0x1af2830;  1 drivers
S_0x1b3aa20 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b07c70_0 .net "I", 7 0, L_0x1c389d0;  alias, 1 drivers
v0x1b07d50_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1af52c0_0 .net "out", 0 0, L_0x1c386c0;  alias, 1 drivers
L_0x1c386c0 .part/v L_0x1c389d0, v0x1b1bbf0_0, 1;
S_0x1af4df0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c38530 .functor NAND 1, L_0x1c38cf0, L_0x1c37bf0, C4<1>, C4<1>;
v0x1af53e0_0 .net "A", 0 0, L_0x1c38cf0;  alias, 1 drivers
v0x1af4970_0 .net "B", 0 0, L_0x1c37bf0;  alias, 1 drivers
v0x1af4a10_0 .net "out", 0 0, L_0x1c38530;  1 drivers
S_0x1af4450 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c385a0 .functor NOR 1, L_0x1c38cf0, L_0x1c37bf0, C4<0>, C4<0>;
v0x1af4020_0 .net "A", 0 0, L_0x1c38cf0;  alias, 1 drivers
v0x1af3ab0_0 .net "B", 0 0, L_0x1c37bf0;  alias, 1 drivers
v0x1af3bc0_0 .net "out", 0 0, L_0x1c385a0;  1 drivers
S_0x1aec720 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c38630 .functor OR 1, L_0x1c38cf0, L_0x1c37bf0, C4<0>, C4<0>;
v0x1af35e0_0 .net "A", 0 0, L_0x1c38cf0;  alias, 1 drivers
v0x1af3710_0 .net "B", 0 0, L_0x1c37bf0;  alias, 1 drivers
v0x1af3130_0 .net "out", 0 0, L_0x1c38630;  1 drivers
S_0x1af2c40 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c37d30 .functor XOR 1, L_0x1c37bf0, L_0x1c37da0, C4<0>, C4<0>;
v0x1af2770_0 .net "A", 0 0, L_0x1c37bf0;  alias, 1 drivers
v0x1af22a0_0 .net "B", 0 0, L_0x1c37da0;  1 drivers
v0x1af2360_0 .net "out", 0 0, L_0x1c37d30;  alias, 1 drivers
S_0x1af1dd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b1be90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c383b0 .functor XOR 1, L_0x1c38cf0, L_0x1c37bf0, C4<0>, C4<0>;
v0x1af1900_0 .net "A", 0 0, L_0x1c38cf0;  alias, 1 drivers
v0x1af19c0_0 .net "B", 0 0, L_0x1c37bf0;  alias, 1 drivers
v0x1af1430_0 .net "out", 0 0, L_0x1c383b0;  1 drivers
S_0x1aef280 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c39b80 .functor BUFZ 1, L_0x1c392e0, C4<0>, C4<0>, C4<0>;
L_0x1c39c10 .functor BUFZ 1, L_0x1c392e0, C4<0>, C4<0>, C4<0>;
v0x1b129a0_0 .net "A", 0 0, L_0x1c3a050;  1 drivers
v0x1b926e0_0 .net "B", 0 0, L_0x1c3a0f0;  1 drivers
v0x1b927a0_0 .net "I", 7 0, L_0x1c39d30;  1 drivers
v0x1b922e0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b92380_0 .net *"_s15", 0 0, L_0x1c39b80;  1 drivers
v0x1b91ef0_0 .net *"_s19", 0 0, L_0x1c39c10;  1 drivers
L_0x7f20eb31d5b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b91fd0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d5b8;  1 drivers
v0x1b8e040_0 .net "addORsub", 0 0, L_0x1c392e0;  1 drivers
v0x1b8e0e0_0 .net "carryin", 0 0, L_0x1c390f0;  1 drivers
v0x1b8dc40_0 .net "carryout", 0 0, L_0x1b31d80;  1 drivers
v0x1b8dd10_0 .net "modB", 0 0, L_0x1c2fb60;  1 drivers
v0x1b8d850_0 .net "out", 0 0, L_0x1c39a20;  1 drivers
L_0x1c38d90 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c39d30_0_0 .concat8 [ 1 1 1 1], L_0x1c39b80, L_0x1c39c10, L_0x1c39710, L_0x7f20eb31d5b8;
LS_0x1c39d30_0_4 .concat8 [ 1 1 1 1], L_0x1b12d50, L_0x1c39890, L_0x1c39900, L_0x1c39990;
L_0x1c39d30 .concat8 [ 4 4 0 0], LS_0x1c39d30_0_0, LS_0x1c39d30_0_4;
S_0x1aeedb0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c38e50 .functor XOR 1, L_0x1c3a050, L_0x1c2fb60, C4<0>, C4<0>;
L_0x1c392e0 .functor XOR 1, L_0x1c38e50, L_0x1c390f0, C4<0>, C4<0>;
L_0x1c39410 .functor AND 1, L_0x1c38e50, L_0x1c390f0, C4<1>, C4<1>;
L_0x1c394a0 .functor AND 1, L_0x1c3a050, L_0x1c2fb60, C4<1>, C4<1>;
L_0x1b31d80 .functor OR 1, L_0x1c39410, L_0x1c394a0, C4<0>, C4<0>;
v0x1aee8e0_0 .net "A", 0 0, L_0x1c3a050;  alias, 1 drivers
v0x1aee9c0_0 .net "B", 0 0, L_0x1c2fb60;  alias, 1 drivers
v0x1aee410_0 .net "carryin", 0 0, L_0x1c390f0;  alias, 1 drivers
v0x1aee4b0_0 .net "carryout", 0 0, L_0x1b31d80;  alias, 1 drivers
v0x1aedf40_0 .net "out1", 0 0, L_0x1c38e50;  1 drivers
v0x1aee050_0 .net "out2", 0 0, L_0x1c39410;  1 drivers
v0x1aeda70_0 .net "out3", 0 0, L_0x1c394a0;  1 drivers
v0x1aedb30_0 .net "sum", 0 0, L_0x1c392e0;  alias, 1 drivers
S_0x1aed590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b12d50 .functor AND 1, L_0x1c3a050, L_0x1c3a0f0, C4<1>, C4<1>;
v0x1aed0c0_0 .net "A", 0 0, L_0x1c3a050;  alias, 1 drivers
v0x1aed160_0 .net "B", 0 0, L_0x1c3a0f0;  alias, 1 drivers
v0x1aecbe0_0 .net "out", 0 0, L_0x1b12d50;  1 drivers
S_0x1af5ed0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1ad3950_0 .net "I", 7 0, L_0x1c39d30;  alias, 1 drivers
v0x1ad3a50_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1ad3240_0 .net "out", 0 0, L_0x1c39a20;  alias, 1 drivers
L_0x1c39a20 .part/v L_0x1c39d30, v0x1b1bbf0_0, 1;
S_0x1ad4090 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c39890 .functor NAND 1, L_0x1c3a050, L_0x1c3a0f0, C4<1>, C4<1>;
v0x1a37990_0 .net "A", 0 0, L_0x1c3a050;  alias, 1 drivers
v0x1a37aa0_0 .net "B", 0 0, L_0x1c3a0f0;  alias, 1 drivers
v0x1b130b0_0 .net "out", 0 0, L_0x1c39890;  1 drivers
S_0x1b36320 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c39900 .functor NOR 1, L_0x1c3a050, L_0x1c3a0f0, C4<0>, C4<0>;
v0x1b131e0_0 .net "A", 0 0, L_0x1c3a050;  alias, 1 drivers
v0x1b35f20_0 .net "B", 0 0, L_0x1c3a0f0;  alias, 1 drivers
v0x1b36010_0 .net "out", 0 0, L_0x1c39900;  1 drivers
S_0x1b35b30 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c39990 .functor OR 1, L_0x1c3a050, L_0x1c3a0f0, C4<0>, C4<0>;
v0x1b31ce0_0 .net "A", 0 0, L_0x1c3a050;  alias, 1 drivers
v0x1b31890_0 .net "B", 0 0, L_0x1c3a0f0;  alias, 1 drivers
v0x1b31950_0 .net "out", 0 0, L_0x1c39990;  1 drivers
S_0x1b314a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2fb60 .functor XOR 1, L_0x1c3a0f0, L_0x1c38d90, C4<0>, C4<0>;
v0x1b12c90_0 .net "A", 0 0, L_0x1c3a0f0;  alias, 1 drivers
v0x1b2d600_0 .net "B", 0 0, L_0x1c38d90;  1 drivers
v0x1b2d6c0_0 .net "out", 0 0, L_0x1c2fb60;  alias, 1 drivers
S_0x1b2d200 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1aef280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c39710 .functor XOR 1, L_0x1c3a050, L_0x1c3a0f0, C4<0>, C4<0>;
v0x1b2ce10_0 .net "A", 0 0, L_0x1c3a050;  alias, 1 drivers
v0x1b2ced0_0 .net "B", 0 0, L_0x1c3a0f0;  alias, 1 drivers
v0x1b12870_0 .net "out", 0 0, L_0x1c39710;  1 drivers
S_0x1b78180 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c3add0 .functor BUFZ 1, L_0x1c3a530, C4<0>, C4<0>, C4<0>;
L_0x1c3ae60 .functor BUFZ 1, L_0x1c3a530, C4<0>, C4<0>, C4<0>;
v0x1b4bae0_0 .net "A", 0 0, L_0x1c3b2a0;  1 drivers
v0x1b36970_0 .net "B", 0 0, L_0x1c3a190;  1 drivers
v0x1b36a30_0 .net "I", 7 0, L_0x1c3af80;  1 drivers
v0x1b322e0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b938f0_0 .net *"_s15", 0 0, L_0x1c3add0;  1 drivers
v0x1b32380_0 .net *"_s19", 0 0, L_0x1c3ae60;  1 drivers
L_0x7f20eb31d600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b96a60_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d600;  1 drivers
v0x1b2dc50_0 .net "addORsub", 0 0, L_0x1c3a530;  1 drivers
v0x1b2dcf0_0 .net "carryin", 0 0, L_0x1c3a230;  1 drivers
v0x1b295b0_0 .net "carryout", 0 0, L_0x1b546d0;  1 drivers
v0x1b29680_0 .net "modB", 0 0, L_0x1c3a300;  1 drivers
v0x1b92d30_0 .net "out", 0 0, L_0x1c3ac70;  1 drivers
L_0x1c3a370 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c3af80_0_0 .concat8 [ 1 1 1 1], L_0x1c3add0, L_0x1c3ae60, L_0x1c3a960, L_0x7f20eb31d600;
LS_0x1c3af80_0_4 .concat8 [ 1 1 1 1], L_0x1b50430, L_0x1c3aae0, L_0x1c3ab50, L_0x1c3abe0;
L_0x1c3af80 .concat8 [ 4 4 0 0], LS_0x1c3af80_0_0, LS_0x1c3af80_0_4;
S_0x1b77d80 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c3a410 .functor XOR 1, L_0x1c3b2a0, L_0x1c3a300, C4<0>, C4<0>;
L_0x1c3a530 .functor XOR 1, L_0x1c3a410, L_0x1c3a230, C4<0>, C4<0>;
L_0x1c3a660 .functor AND 1, L_0x1c3a410, L_0x1c3a230, C4<1>, C4<1>;
L_0x1c3a6f0 .functor AND 1, L_0x1c3b2a0, L_0x1c3a300, C4<1>, C4<1>;
L_0x1b546d0 .functor OR 1, L_0x1c3a660, L_0x1c3a6f0, C4<0>, C4<0>;
v0x1b77990_0 .net "A", 0 0, L_0x1c3b2a0;  alias, 1 drivers
v0x1b77a70_0 .net "B", 0 0, L_0x1c3a300;  alias, 1 drivers
v0x1b73af0_0 .net "carryin", 0 0, L_0x1c3a230;  alias, 1 drivers
v0x1b73b90_0 .net "carryout", 0 0, L_0x1b546d0;  alias, 1 drivers
v0x1b736f0_0 .net "out1", 0 0, L_0x1c3a410;  1 drivers
v0x1b73800_0 .net "out2", 0 0, L_0x1c3a660;  1 drivers
v0x1b73300_0 .net "out3", 0 0, L_0x1c3a6f0;  1 drivers
v0x1b733c0_0 .net "sum", 0 0, L_0x1c3a530;  alias, 1 drivers
S_0x1b6f450 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b50430 .functor AND 1, L_0x1c3b2a0, L_0x1c3a190, C4<1>, C4<1>;
v0x1b6f050_0 .net "A", 0 0, L_0x1c3b2a0;  alias, 1 drivers
v0x1b6f140_0 .net "B", 0 0, L_0x1c3a190;  alias, 1 drivers
v0x1b6ec60_0 .net "out", 0 0, L_0x1b50430;  1 drivers
S_0x1b6ad80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b6a970_0 .net "I", 7 0, L_0x1c3af80;  alias, 1 drivers
v0x1b6aa50_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b6a580_0 .net "out", 0 0, L_0x1c3ac70;  alias, 1 drivers
L_0x1c3ac70 .part/v L_0x1c3af80, v0x1b1bbf0_0, 1;
S_0x1b17750 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3aae0 .functor NAND 1, L_0x1c3b2a0, L_0x1c3a190, C4<1>, C4<1>;
v0x1b17350_0 .net "A", 0 0, L_0x1c3b2a0;  alias, 1 drivers
v0x1b17460_0 .net "B", 0 0, L_0x1c3a190;  alias, 1 drivers
v0x1b59550_0 .net "out", 0 0, L_0x1c3aae0;  1 drivers
S_0x1b59150 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3ab50 .functor NOR 1, L_0x1c3b2a0, L_0x1c3a190, C4<0>, C4<0>;
v0x1b59680_0 .net "A", 0 0, L_0x1c3b2a0;  alias, 1 drivers
v0x1b58d80_0 .net "B", 0 0, L_0x1c3a190;  alias, 1 drivers
v0x1b58e90_0 .net "out", 0 0, L_0x1c3ab50;  1 drivers
S_0x1b54ac0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3abe0 .functor OR 1, L_0x1c3b2a0, L_0x1c3a190, C4<0>, C4<0>;
v0x1b54f70_0 .net "A", 0 0, L_0x1c3b2a0;  alias, 1 drivers
v0x1b54760_0 .net "B", 0 0, L_0x1c3a190;  alias, 1 drivers
v0x1b16f60_0 .net "out", 0 0, L_0x1c3abe0;  1 drivers
S_0x1b50830 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3a300 .functor XOR 1, L_0x1c3a190, L_0x1c3a370, C4<0>, C4<0>;
v0x1b17090_0 .net "A", 0 0, L_0x1c3a190;  alias, 1 drivers
v0x1b504c0_0 .net "B", 0 0, L_0x1c3a370;  1 drivers
v0x1b50040_0 .net "out", 0 0, L_0x1c3a300;  alias, 1 drivers
S_0x1b4c1a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b78180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3a960 .functor XOR 1, L_0x1c3b2a0, L_0x1c3a190, C4<0>, C4<0>;
v0x1b4bda0_0 .net "A", 0 0, L_0x1c3b2a0;  alias, 1 drivers
v0x1b4be60_0 .net "B", 0 0, L_0x1c3a190;  alias, 1 drivers
v0x1b4b9b0_0 .net "out", 0 0, L_0x1c3a960;  1 drivers
S_0x1b8e690 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c3c010 .functor BUFZ 1, L_0x1c3b770, C4<0>, C4<0>, C4<0>;
L_0x1c3c0a0 .functor BUFZ 1, L_0x1c3b770, C4<0>, C4<0>, C4<0>;
v0x19cc0c0_0 .net "A", 0 0, L_0x1c3c4e0;  1 drivers
v0x19cc160_0 .net "B", 0 0, L_0x1c3c580;  1 drivers
v0x19cc200_0 .net "I", 7 0, L_0x1c3c1c0;  1 drivers
v0x19cc300_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x19cc3a0_0 .net *"_s15", 0 0, L_0x1c3c010;  1 drivers
v0x19cce50_0 .net *"_s19", 0 0, L_0x1c3c0a0;  1 drivers
L_0x7f20eb31d648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x19ccf30_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d648;  1 drivers
v0x19cd010_0 .net "addORsub", 0 0, L_0x1c3b770;  1 drivers
v0x19cd0b0_0 .net "carryin", 0 0, L_0x1c3b550;  1 drivers
v0x19ceea0_0 .net "carryout", 0 0, L_0x19ca620;  1 drivers
v0x19cef70_0 .net "modB", 0 0, L_0x1c3b340;  1 drivers
v0x19cf010_0 .net "out", 0 0, L_0x1c3beb0;  1 drivers
L_0x1c3b3b0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c3c1c0_0_0 .concat8 [ 1 1 1 1], L_0x1c3c010, L_0x1c3c0a0, L_0x1c3bba0, L_0x7f20eb31d648;
LS_0x1c3c1c0_0_4 .concat8 [ 1 1 1 1], L_0x19cb430, L_0x1c3bd20, L_0x1c3bd90, L_0x1c3be20;
L_0x1c3c1c0 .concat8 [ 4 4 0 0], LS_0x1c3c1c0_0_0, LS_0x1c3c1c0_0_4;
S_0x1b74140 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c3b450 .functor XOR 1, L_0x1c3c4e0, L_0x1c3b340, C4<0>, C4<0>;
L_0x1c3b770 .functor XOR 1, L_0x1c3b450, L_0x1c3b550, C4<0>, C4<0>;
L_0x1c3b8a0 .functor AND 1, L_0x1c3b450, L_0x1c3b550, C4<1>, C4<1>;
L_0x1c3b930 .functor AND 1, L_0x1c3c4e0, L_0x1c3b340, C4<1>, C4<1>;
L_0x19ca620 .functor OR 1, L_0x1c3b8a0, L_0x1c3b930, C4<0>, C4<0>;
v0x1b78870_0 .net "A", 0 0, L_0x1c3c4e0;  alias, 1 drivers
v0x1b6faa0_0 .net "B", 0 0, L_0x1c3b340;  alias, 1 drivers
v0x1b6fb60_0 .net "carryin", 0 0, L_0x1c3b550;  alias, 1 drivers
v0x1b6b3d0_0 .net "carryout", 0 0, L_0x19ca620;  alias, 1 drivers
v0x1b6b490_0 .net "out1", 0 0, L_0x1c3b450;  1 drivers
v0x1b17da0_0 .net "out2", 0 0, L_0x1c3b8a0;  1 drivers
v0x1b17e60_0 .net "out3", 0 0, L_0x1c3b930;  1 drivers
v0x1b59ba0_0 .net "sum", 0 0, L_0x1c3b770;  alias, 1 drivers
S_0x1b55510 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19cb430 .functor AND 1, L_0x1c3c4e0, L_0x1c3c580, C4<1>, C4<1>;
v0x1b50e80_0 .net "A", 0 0, L_0x1c3c4e0;  alias, 1 drivers
v0x1b50f40_0 .net "B", 0 0, L_0x1c3c580;  alias, 1 drivers
v0x1b4c7f0_0 .net "out", 0 0, L_0x19cb430;  1 drivers
S_0x1b13700 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b4c910_0 .net "I", 7 0, L_0x1c3c1c0;  alias, 1 drivers
v0x1b99b70_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b99c30_0 .net "out", 0 0, L_0x1c3beb0;  alias, 1 drivers
L_0x1c3beb0 .part/v L_0x1c3c1c0, v0x1b1bbf0_0, 1;
S_0x19ada40 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3bd20 .functor NAND 1, L_0x1c3c4e0, L_0x1c3c580, C4<1>, C4<1>;
v0x19adc10_0 .net "A", 0 0, L_0x1c3c4e0;  alias, 1 drivers
v0x19add20_0 .net "B", 0 0, L_0x1c3c580;  alias, 1 drivers
v0x1b99d80_0 .net "out", 0 0, L_0x1c3bd20;  1 drivers
S_0x19a9480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3bd90 .functor NOR 1, L_0x1c3c4e0, L_0x1c3c580, C4<0>, C4<0>;
v0x19a96f0_0 .net "A", 0 0, L_0x1c3c4e0;  alias, 1 drivers
v0x19a97b0_0 .net "B", 0 0, L_0x1c3c580;  alias, 1 drivers
v0x19c8b40_0 .net "out", 0 0, L_0x1c3bd90;  1 drivers
S_0x19c8c40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3be20 .functor OR 1, L_0x1c3c4e0, L_0x1c3c580, C4<0>, C4<0>;
v0x19c8e60_0 .net "A", 0 0, L_0x1c3c4e0;  alias, 1 drivers
v0x19ca6b0_0 .net "B", 0 0, L_0x1c3c580;  alias, 1 drivers
v0x19ca770_0 .net "out", 0 0, L_0x1c3be20;  1 drivers
S_0x19ca870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3b340 .functor XOR 1, L_0x1c3c580, L_0x1c3b3b0, C4<0>, C4<0>;
v0x19cb370_0 .net "A", 0 0, L_0x1c3c580;  alias, 1 drivers
v0x19cb4c0_0 .net "B", 0 0, L_0x1c3b3b0;  1 drivers
v0x19cb580_0 .net "out", 0 0, L_0x1c3b340;  alias, 1 drivers
S_0x19c98d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b8e690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3bba0 .functor XOR 1, L_0x1c3c4e0, L_0x1c3c580, C4<0>, C4<0>;
v0x19c9af0_0 .net "A", 0 0, L_0x1c3c4e0;  alias, 1 drivers
v0x19c9bb0_0 .net "B", 0 0, L_0x1c3c580;  alias, 1 drivers
v0x19cb6c0_0 .net "out", 0 0, L_0x1c3bba0;  1 drivers
S_0x19cf0f0 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c3d330 .functor BUFZ 1, L_0x1c3cad0, C4<0>, C4<0>, C4<0>;
L_0x1c3d3c0 .functor BUFZ 1, L_0x1c3cad0, C4<0>, C4<0>, C4<0>;
v0x19a5330_0 .net "A", 0 0, L_0x1c3d800;  1 drivers
v0x19a53d0_0 .net "B", 0 0, L_0x1c3c620;  1 drivers
v0x1935cf0_0 .net "I", 7 0, L_0x1c3d4e0;  1 drivers
v0x1935df0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1935e90_0 .net *"_s15", 0 0, L_0x1c3d330;  1 drivers
v0x1935f50_0 .net *"_s19", 0 0, L_0x1c3d3c0;  1 drivers
L_0x7f20eb31d690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1936030_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d690;  1 drivers
v0x1995710_0 .net "addORsub", 0 0, L_0x1c3cad0;  1 drivers
v0x19957b0_0 .net "carryin", 0 0, L_0x1c3c6c0;  1 drivers
v0x1995910_0 .net "carryout", 0 0, L_0x19cd1e0;  1 drivers
v0x19959e0_0 .net "modB", 0 0, L_0x1c33270;  1 drivers
v0x1995a80_0 .net "out", 0 0, L_0x1c3d1d0;  1 drivers
L_0x1c332e0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c3d4e0_0_0 .concat8 [ 1 1 1 1], L_0x1c3d330, L_0x1c3d3c0, L_0x1c3cec0, L_0x7f20eb31d690;
LS_0x1c3d4e0_0_4 .concat8 [ 1 1 1 1], L_0x19a5100, L_0x1c3d040, L_0x1c3d0b0, L_0x1c3d140;
L_0x1c3d4e0 .concat8 [ 4 4 0 0], LS_0x1c3d4e0_0_0, LS_0x1c3d4e0_0_4;
S_0x19df160 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c3c9d0 .functor XOR 1, L_0x1c3d800, L_0x1c33270, C4<0>, C4<0>;
L_0x1c3cad0 .functor XOR 1, L_0x1c3c9d0, L_0x1c3c6c0, C4<0>, C4<0>;
L_0x1c3cbe0 .functor AND 1, L_0x1c3c9d0, L_0x1c3c6c0, C4<1>, C4<1>;
L_0x1c3cc50 .functor AND 1, L_0x1c3d800, L_0x1c33270, C4<1>, C4<1>;
L_0x19cd1e0 .functor OR 1, L_0x1c3cbe0, L_0x1c3cc50, C4<0>, C4<0>;
v0x19df380_0 .net "A", 0 0, L_0x1c3d800;  alias, 1 drivers
v0x19875a0_0 .net "B", 0 0, L_0x1c33270;  alias, 1 drivers
v0x1987660_0 .net "carryin", 0 0, L_0x1c3c6c0;  alias, 1 drivers
v0x1987730_0 .net "carryout", 0 0, L_0x19cd1e0;  alias, 1 drivers
v0x19877f0_0 .net "out1", 0 0, L_0x1c3c9d0;  1 drivers
v0x1987900_0 .net "out2", 0 0, L_0x1c3cbe0;  1 drivers
v0x196feb0_0 .net "out3", 0 0, L_0x1c3cc50;  1 drivers
v0x196ff70_0 .net "sum", 0 0, L_0x1c3cad0;  alias, 1 drivers
S_0x19700d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19a5100 .functor AND 1, L_0x1c3d800, L_0x1c3c620, C4<1>, C4<1>;
v0x1983be0_0 .net "A", 0 0, L_0x1c3d800;  alias, 1 drivers
v0x1983ca0_0 .net "B", 0 0, L_0x1c3c620;  alias, 1 drivers
v0x1983d40_0 .net "out", 0 0, L_0x19a5100;  1 drivers
S_0x19c79d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x19c7c20_0 .net "I", 7 0, L_0x1c3d4e0;  alias, 1 drivers
v0x19c7d20_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1983e90_0 .net "out", 0 0, L_0x1c3d1d0;  alias, 1 drivers
L_0x1c3d1d0 .part/v L_0x1c3d4e0, v0x1b1bbf0_0, 1;
S_0x19a3860 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3d040 .functor NAND 1, L_0x1c3d800, L_0x1c3c620, C4<1>, C4<1>;
v0x19a3a80_0 .net "A", 0 0, L_0x1c3d800;  alias, 1 drivers
v0x19a3b90_0 .net "B", 0 0, L_0x1c3c620;  alias, 1 drivers
v0x1988740_0 .net "out", 0 0, L_0x1c3d040;  1 drivers
S_0x1988820 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3d0b0 .functor NOR 1, L_0x1c3d800, L_0x1c3c620, C4<0>, C4<0>;
v0x1988a90_0 .net "A", 0 0, L_0x1c3d800;  alias, 1 drivers
v0x1989890_0 .net "B", 0 0, L_0x1c3c620;  alias, 1 drivers
v0x19899a0_0 .net "out", 0 0, L_0x1c3d0b0;  1 drivers
S_0x1989ac0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3d140 .functor OR 1, L_0x1c3d800, L_0x1c3c620, C4<0>, C4<0>;
v0x19a7190_0 .net "A", 0 0, L_0x1c3d800;  alias, 1 drivers
v0x19a7230_0 .net "B", 0 0, L_0x1c3c620;  alias, 1 drivers
v0x19a72f0_0 .net "out", 0 0, L_0x1c3d140;  1 drivers
S_0x19a73f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c33270 .functor XOR 1, L_0x1c3c620, L_0x1c332e0, C4<0>, C4<0>;
v0x19a5060_0 .net "A", 0 0, L_0x1c3c620;  alias, 1 drivers
v0x19a5190_0 .net "B", 0 0, L_0x1c332e0;  1 drivers
v0x19a5250_0 .net "out", 0 0, L_0x1c33270;  alias, 1 drivers
S_0x19d13f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x19cf0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3cec0 .functor XOR 1, L_0x1c3d800, L_0x1c3c620, C4<0>, C4<0>;
v0x19d15c0_0 .net "A", 0 0, L_0x1c3d800;  alias, 1 drivers
v0x19d1680_0 .net "B", 0 0, L_0x1c3c620;  alias, 1 drivers
v0x19d1740_0 .net "out", 0 0, L_0x1c3cec0;  1 drivers
S_0x199f1f0 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c3e590 .functor BUFZ 1, L_0x1c3dd30, C4<0>, C4<0>, C4<0>;
L_0x1c3e620 .functor BUFZ 1, L_0x1c3dd30, C4<0>, C4<0>, C4<0>;
v0x1bb0890_0 .net "A", 0 0, L_0x1c3ea60;  1 drivers
v0x1bb0930_0 .net "B", 0 0, L_0x1c3eb00;  1 drivers
v0x1bb09f0_0 .net "I", 7 0, L_0x1c3e740;  1 drivers
v0x1bb0af0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bb0b90_0 .net *"_s15", 0 0, L_0x1c3e590;  1 drivers
v0x1bb0ca0_0 .net *"_s19", 0 0, L_0x1c3e620;  1 drivers
L_0x7f20eb31d6d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bb0d80_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d6d8;  1 drivers
v0x1bb0e60_0 .net "addORsub", 0 0, L_0x1c3dd30;  1 drivers
v0x1bb0f00_0 .net "carryin", 0 0, L_0x1c3dae0;  1 drivers
v0x1bb1060_0 .net "carryout", 0 0, L_0x1bafca0;  1 drivers
v0x1bb1130_0 .net "modB", 0 0, L_0x1c3d8a0;  1 drivers
v0x1bb11d0_0 .net "out", 0 0, L_0x1c3e430;  1 drivers
L_0x1c3d910 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c3e740_0_0 .concat8 [ 1 1 1 1], L_0x1c3e590, L_0x1c3e620, L_0x1c3e120, L_0x7f20eb31d6d8;
LS_0x1c3e740_0_4 .concat8 [ 1 1 1 1], L_0x1bb0180, L_0x1c3e2a0, L_0x1c3e310, L_0x1c3e3a0;
L_0x1c3e740 .concat8 [ 4 4 0 0], LS_0x1c3e740_0_0, LS_0x1c3e740_0_4;
S_0x199f460 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c3d9b0 .functor XOR 1, L_0x1c3ea60, L_0x1c3d8a0, C4<0>, C4<0>;
L_0x1c3dd30 .functor XOR 1, L_0x1c3d9b0, L_0x1c3dae0, C4<0>, C4<0>;
L_0x1c3de40 .functor AND 1, L_0x1c3d9b0, L_0x1c3dae0, C4<1>, C4<1>;
L_0x1c3deb0 .functor AND 1, L_0x1c3ea60, L_0x1c3d8a0, C4<1>, C4<1>;
L_0x1bafca0 .functor OR 1, L_0x1c3de40, L_0x1c3deb0, C4<0>, C4<0>;
v0x19a06c0_0 .net "A", 0 0, L_0x1c3ea60;  alias, 1 drivers
v0x19a07a0_0 .net "B", 0 0, L_0x1c3d8a0;  alias, 1 drivers
v0x19a0860_0 .net "carryin", 0 0, L_0x1c3dae0;  alias, 1 drivers
v0x19a0900_0 .net "carryout", 0 0, L_0x1bafca0;  alias, 1 drivers
v0x19a09c0_0 .net "out1", 0 0, L_0x1c3d9b0;  1 drivers
v0x19a1ee0_0 .net "out2", 0 0, L_0x1c3de40;  1 drivers
v0x19a1fa0_0 .net "out3", 0 0, L_0x1c3deb0;  1 drivers
v0x19a2060_0 .net "sum", 0 0, L_0x1c3dd30;  alias, 1 drivers
S_0x19d5690 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bb0180 .functor AND 1, L_0x1c3ea60, L_0x1c3eb00, C4<1>, C4<1>;
v0x19d58f0_0 .net "A", 0 0, L_0x1c3ea60;  alias, 1 drivers
v0x19d59b0_0 .net "B", 0 0, L_0x1c3eb00;  alias, 1 drivers
v0x19a21c0_0 .net "out", 0 0, L_0x1bb0180;  1 drivers
S_0x19b17a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x19b19f0_0 .net "I", 7 0, L_0x1c3e740;  alias, 1 drivers
v0x19b1ab0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1baef60_0 .net "out", 0 0, L_0x1c3e430;  alias, 1 drivers
L_0x1c3e430 .part/v L_0x1c3e740, v0x1b1bbf0_0, 1;
S_0x1baf000 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3e2a0 .functor NAND 1, L_0x1c3ea60, L_0x1c3eb00, C4<1>, C4<1>;
v0x1baf1d0_0 .net "A", 0 0, L_0x1c3ea60;  alias, 1 drivers
v0x1baf2c0_0 .net "B", 0 0, L_0x1c3eb00;  alias, 1 drivers
v0x1baf380_0 .net "out", 0 0, L_0x1c3e2a0;  1 drivers
S_0x1baf480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3e310 .functor NOR 1, L_0x1c3ea60, L_0x1c3eb00, C4<0>, C4<0>;
v0x1baf6f0_0 .net "A", 0 0, L_0x1c3ea60;  alias, 1 drivers
v0x1baf7b0_0 .net "B", 0 0, L_0x1c3eb00;  alias, 1 drivers
v0x1baf8c0_0 .net "out", 0 0, L_0x1c3e310;  1 drivers
S_0x1baf9c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3e3a0 .functor OR 1, L_0x1c3ea60, L_0x1c3eb00, C4<0>, C4<0>;
v0x1bafbe0_0 .net "A", 0 0, L_0x1c3ea60;  alias, 1 drivers
v0x1bafd30_0 .net "B", 0 0, L_0x1c3eb00;  alias, 1 drivers
v0x1bafdf0_0 .net "out", 0 0, L_0x1c3e3a0;  1 drivers
S_0x1bafef0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3d8a0 .functor XOR 1, L_0x1c3eb00, L_0x1c3d910, C4<0>, C4<0>;
v0x1bb00c0_0 .net "A", 0 0, L_0x1c3eb00;  alias, 1 drivers
v0x1bb0210_0 .net "B", 0 0, L_0x1c3d910;  1 drivers
v0x1bb02d0_0 .net "out", 0 0, L_0x1c3d8a0;  alias, 1 drivers
S_0x1bb0410 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x199f1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3e120 .functor XOR 1, L_0x1c3ea60, L_0x1c3eb00, C4<0>, C4<0>;
v0x1bb05e0_0 .net "A", 0 0, L_0x1c3ea60;  alias, 1 drivers
v0x1bb06a0_0 .net "B", 0 0, L_0x1c3eb00;  alias, 1 drivers
v0x1bb0760_0 .net "out", 0 0, L_0x1c3e120;  1 drivers
S_0x1bb12b0 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c3f7b0 .functor BUFZ 1, L_0x1c3ef10, C4<0>, C4<0>, C4<0>;
L_0x1c3f840 .functor BUFZ 1, L_0x1c3ef10, C4<0>, C4<0>, C4<0>;
v0x1bb4220_0 .net "A", 0 0, L_0x1c3fc80;  1 drivers
v0x1bb42c0_0 .net "B", 0 0, L_0x1c3eba0;  1 drivers
v0x1bb4380_0 .net "I", 7 0, L_0x1c3f960;  1 drivers
v0x1bb4480_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bb4520_0 .net *"_s15", 0 0, L_0x1c3f7b0;  1 drivers
v0x1bb4630_0 .net *"_s19", 0 0, L_0x1c3f840;  1 drivers
L_0x7f20eb31d720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bb4710_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d720;  1 drivers
v0x1bb47f0_0 .net "addORsub", 0 0, L_0x1c3ef10;  1 drivers
v0x1bb4890_0 .net "carryin", 0 0, L_0x1c3ec40;  1 drivers
v0x1bb49f0_0 .net "carryout", 0 0, L_0x1bb3630;  1 drivers
v0x1bb4ac0_0 .net "modB", 0 0, L_0x1c3dc10;  1 drivers
v0x1bb4b60_0 .net "out", 0 0, L_0x1c3f650;  1 drivers
L_0x1c3ed70 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c3f960_0_0 .concat8 [ 1 1 1 1], L_0x1c3f7b0, L_0x1c3f840, L_0x1c3f340, L_0x7f20eb31d720;
LS_0x1c3f960_0_4 .concat8 [ 1 1 1 1], L_0x1bb3b10, L_0x1c3f4c0, L_0x1c3f530, L_0x1c3f5c0;
L_0x1c3f960 .concat8 [ 4 4 0 0], LS_0x1c3f960_0_0, LS_0x1c3f960_0_4;
S_0x1bb1520 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c3ee10 .functor XOR 1, L_0x1c3fc80, L_0x1c3dc10, C4<0>, C4<0>;
L_0x1c3ef10 .functor XOR 1, L_0x1c3ee10, L_0x1c3ec40, C4<0>, C4<0>;
L_0x1c3f040 .functor AND 1, L_0x1c3ee10, L_0x1c3ec40, C4<1>, C4<1>;
L_0x1c3f0d0 .functor AND 1, L_0x1c3fc80, L_0x1c3dc10, C4<1>, C4<1>;
L_0x1bb3630 .functor OR 1, L_0x1c3f040, L_0x1c3f0d0, C4<0>, C4<0>;
v0x1bb17c0_0 .net "A", 0 0, L_0x1c3fc80;  alias, 1 drivers
v0x1bb18a0_0 .net "B", 0 0, L_0x1c3dc10;  alias, 1 drivers
v0x1bb1960_0 .net "carryin", 0 0, L_0x1c3ec40;  alias, 1 drivers
v0x1bb1a30_0 .net "carryout", 0 0, L_0x1bb3630;  alias, 1 drivers
v0x1bb1af0_0 .net "out1", 0 0, L_0x1c3ee10;  1 drivers
v0x1bb1c00_0 .net "out2", 0 0, L_0x1c3f040;  1 drivers
v0x1bb1cc0_0 .net "out3", 0 0, L_0x1c3f0d0;  1 drivers
v0x1bb1d80_0 .net "sum", 0 0, L_0x1c3ef10;  alias, 1 drivers
S_0x1bb1ee0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bb3b10 .functor AND 1, L_0x1c3fc80, L_0x1c3eba0, C4<1>, C4<1>;
v0x1bb2120_0 .net "A", 0 0, L_0x1c3fc80;  alias, 1 drivers
v0x1bb21e0_0 .net "B", 0 0, L_0x1c3eba0;  alias, 1 drivers
v0x1bb2280_0 .net "out", 0 0, L_0x1bb3b10;  1 drivers
S_0x1bb23d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bb2620_0 .net "I", 7 0, L_0x1c3f960;  alias, 1 drivers
v0x1bb2700_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bb27c0_0 .net "out", 0 0, L_0x1c3f650;  alias, 1 drivers
L_0x1c3f650 .part/v L_0x1c3f960, v0x1b1bbf0_0, 1;
S_0x1bb2910 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3f4c0 .functor NAND 1, L_0x1c3fc80, L_0x1c3eba0, C4<1>, C4<1>;
v0x1bb2b30_0 .net "A", 0 0, L_0x1c3fc80;  alias, 1 drivers
v0x1bb2c40_0 .net "B", 0 0, L_0x1c3eba0;  alias, 1 drivers
v0x1bb2d00_0 .net "out", 0 0, L_0x1c3f4c0;  1 drivers
S_0x1bb2e10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3f530 .functor NOR 1, L_0x1c3fc80, L_0x1c3eba0, C4<0>, C4<0>;
v0x1bb3080_0 .net "A", 0 0, L_0x1c3fc80;  alias, 1 drivers
v0x1bb3140_0 .net "B", 0 0, L_0x1c3eba0;  alias, 1 drivers
v0x1bb3250_0 .net "out", 0 0, L_0x1c3f530;  1 drivers
S_0x1bb3350 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3f5c0 .functor OR 1, L_0x1c3fc80, L_0x1c3eba0, C4<0>, C4<0>;
v0x1bb3570_0 .net "A", 0 0, L_0x1c3fc80;  alias, 1 drivers
v0x1bb36c0_0 .net "B", 0 0, L_0x1c3eba0;  alias, 1 drivers
v0x1bb3780_0 .net "out", 0 0, L_0x1c3f5c0;  1 drivers
S_0x1bb3880 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3dc10 .functor XOR 1, L_0x1c3eba0, L_0x1c3ed70, C4<0>, C4<0>;
v0x1bb3a50_0 .net "A", 0 0, L_0x1c3eba0;  alias, 1 drivers
v0x1bb3ba0_0 .net "B", 0 0, L_0x1c3ed70;  1 drivers
v0x1bb3c60_0 .net "out", 0 0, L_0x1c3dc10;  alias, 1 drivers
S_0x1bb3da0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bb12b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3f340 .functor XOR 1, L_0x1c3fc80, L_0x1c3eba0, C4<0>, C4<0>;
v0x1bb3f70_0 .net "A", 0 0, L_0x1c3fc80;  alias, 1 drivers
v0x1bb4030_0 .net "B", 0 0, L_0x1c3eba0;  alias, 1 drivers
v0x1bb40f0_0 .net "out", 0 0, L_0x1c3f340;  1 drivers
S_0x1bb4c80 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c2bf60 .functor BUFZ 1, L_0x1c2b730, C4<0>, C4<0>, C4<0>;
L_0x1c2bff0 .functor BUFZ 1, L_0x1c2b730, C4<0>, C4<0>, C4<0>;
v0x1bb7bf0_0 .net "A", 0 0, L_0x1c2c4c0;  1 drivers
v0x1bb7c90_0 .net "B", 0 0, L_0x1c2c560;  1 drivers
v0x1bb7d50_0 .net "I", 7 0, L_0x1c2c110;  1 drivers
v0x1bb7e50_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bb7ef0_0 .net *"_s15", 0 0, L_0x1c2bf60;  1 drivers
v0x1bb8000_0 .net *"_s19", 0 0, L_0x1c2bff0;  1 drivers
L_0x7f20eb31d258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bb80e0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d258;  1 drivers
v0x1bb81c0_0 .net "addORsub", 0 0, L_0x1c2b730;  1 drivers
v0x1bb8260_0 .net "carryin", 0 0, L_0x1c2c600;  1 drivers
v0x1bb83c0_0 .net "carryout", 0 0, L_0x1bb7000;  1 drivers
v0x1bb8490_0 .net "modB", 0 0, L_0x1c2b520;  1 drivers
v0x1bb8530_0 .net "out", 0 0, L_0x1c2be00;  1 drivers
L_0x1c2b590 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c2c110_0_0 .concat8 [ 1 1 1 1], L_0x1c2bf60, L_0x1c2bff0, L_0x1c2baf0, L_0x7f20eb31d258;
LS_0x1c2c110_0_4 .concat8 [ 1 1 1 1], L_0x1bb74e0, L_0x1c2bc70, L_0x1c2bce0, L_0x1c2bd70;
L_0x1c2c110 .concat8 [ 4 4 0 0], LS_0x1c2c110_0_0, LS_0x1c2c110_0_4;
S_0x1bb4ef0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c2b630 .functor XOR 1, L_0x1c2c4c0, L_0x1c2b520, C4<0>, C4<0>;
L_0x1c2b730 .functor XOR 1, L_0x1c2b630, L_0x1c2c600, C4<0>, C4<0>;
L_0x1c2b7f0 .functor AND 1, L_0x1c2b630, L_0x1c2c600, C4<1>, C4<1>;
L_0x1c2b880 .functor AND 1, L_0x1c2c4c0, L_0x1c2b520, C4<1>, C4<1>;
L_0x1bb7000 .functor OR 1, L_0x1c2b7f0, L_0x1c2b880, C4<0>, C4<0>;
v0x1bb5190_0 .net "A", 0 0, L_0x1c2c4c0;  alias, 1 drivers
v0x1bb5270_0 .net "B", 0 0, L_0x1c2b520;  alias, 1 drivers
v0x1bb5330_0 .net "carryin", 0 0, L_0x1c2c600;  alias, 1 drivers
v0x1bb5400_0 .net "carryout", 0 0, L_0x1bb7000;  alias, 1 drivers
v0x1bb54c0_0 .net "out1", 0 0, L_0x1c2b630;  1 drivers
v0x1bb55d0_0 .net "out2", 0 0, L_0x1c2b7f0;  1 drivers
v0x1bb5690_0 .net "out3", 0 0, L_0x1c2b880;  1 drivers
v0x1bb5750_0 .net "sum", 0 0, L_0x1c2b730;  alias, 1 drivers
S_0x1bb58b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bb74e0 .functor AND 1, L_0x1c2c4c0, L_0x1c2c560, C4<1>, C4<1>;
v0x1bb5af0_0 .net "A", 0 0, L_0x1c2c4c0;  alias, 1 drivers
v0x1bb5bb0_0 .net "B", 0 0, L_0x1c2c560;  alias, 1 drivers
v0x1bb5c50_0 .net "out", 0 0, L_0x1bb74e0;  1 drivers
S_0x1bb5da0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bb5ff0_0 .net "I", 7 0, L_0x1c2c110;  alias, 1 drivers
v0x1bb60d0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bb6190_0 .net "out", 0 0, L_0x1c2be00;  alias, 1 drivers
L_0x1c2be00 .part/v L_0x1c2c110, v0x1b1bbf0_0, 1;
S_0x1bb62e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2bc70 .functor NAND 1, L_0x1c2c4c0, L_0x1c2c560, C4<1>, C4<1>;
v0x1bb6500_0 .net "A", 0 0, L_0x1c2c4c0;  alias, 1 drivers
v0x1bb6610_0 .net "B", 0 0, L_0x1c2c560;  alias, 1 drivers
v0x1bb66d0_0 .net "out", 0 0, L_0x1c2bc70;  1 drivers
S_0x1bb67e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2bce0 .functor NOR 1, L_0x1c2c4c0, L_0x1c2c560, C4<0>, C4<0>;
v0x1bb6a50_0 .net "A", 0 0, L_0x1c2c4c0;  alias, 1 drivers
v0x1bb6b10_0 .net "B", 0 0, L_0x1c2c560;  alias, 1 drivers
v0x1bb6c20_0 .net "out", 0 0, L_0x1c2bce0;  1 drivers
S_0x1bb6d20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2bd70 .functor OR 1, L_0x1c2c4c0, L_0x1c2c560, C4<0>, C4<0>;
v0x1bb6f40_0 .net "A", 0 0, L_0x1c2c4c0;  alias, 1 drivers
v0x1bb7090_0 .net "B", 0 0, L_0x1c2c560;  alias, 1 drivers
v0x1bb7150_0 .net "out", 0 0, L_0x1c2bd70;  1 drivers
S_0x1bb7250 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2b520 .functor XOR 1, L_0x1c2c560, L_0x1c2b590, C4<0>, C4<0>;
v0x1bb7420_0 .net "A", 0 0, L_0x1c2c560;  alias, 1 drivers
v0x1bb7570_0 .net "B", 0 0, L_0x1c2b590;  1 drivers
v0x1bb7630_0 .net "out", 0 0, L_0x1c2b520;  alias, 1 drivers
S_0x1bb7770 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bb4c80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2baf0 .functor XOR 1, L_0x1c2c4c0, L_0x1c2c560, C4<0>, C4<0>;
v0x1bb7940_0 .net "A", 0 0, L_0x1c2c4c0;  alias, 1 drivers
v0x1bb7a00_0 .net "B", 0 0, L_0x1c2c560;  alias, 1 drivers
v0x1bb7ac0_0 .net "out", 0 0, L_0x1c2baf0;  1 drivers
S_0x1bb8650 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c409e0 .functor BUFZ 1, L_0x1c40140, C4<0>, C4<0>, C4<0>;
L_0x1c40a70 .functor BUFZ 1, L_0x1c40140, C4<0>, C4<0>, C4<0>;
v0x1bbb5c0_0 .net "A", 0 0, L_0x1c40eb0;  1 drivers
v0x1bbb660_0 .net "B", 0 0, L_0x1c40f50;  1 drivers
v0x1bbb720_0 .net "I", 7 0, L_0x1c40b90;  1 drivers
v0x1bbb820_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bbb8c0_0 .net *"_s15", 0 0, L_0x1c409e0;  1 drivers
v0x1bbb9d0_0 .net *"_s19", 0 0, L_0x1c40a70;  1 drivers
L_0x7f20eb31d768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bbbab0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d768;  1 drivers
v0x1bbbb90_0 .net "addORsub", 0 0, L_0x1c40140;  1 drivers
v0x1bbbc30_0 .net "carryin", 0 0, L_0x1c3fd20;  1 drivers
v0x1bbbd90_0 .net "carryout", 0 0, L_0x1bba9d0;  1 drivers
v0x1bbbe60_0 .net "modB", 0 0, L_0x1c3ff10;  1 drivers
v0x1bbbf00_0 .net "out", 0 0, L_0x1c40880;  1 drivers
L_0x1c3ff80 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c40b90_0_0 .concat8 [ 1 1 1 1], L_0x1c409e0, L_0x1c40a70, L_0x1c40570, L_0x7f20eb31d768;
LS_0x1c40b90_0_4 .concat8 [ 1 1 1 1], L_0x1bbaeb0, L_0x1c406f0, L_0x1c40760, L_0x1c407f0;
L_0x1c40b90 .concat8 [ 4 4 0 0], LS_0x1c40b90_0_0, LS_0x1c40b90_0_4;
S_0x1bb88c0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c40020 .functor XOR 1, L_0x1c40eb0, L_0x1c3ff10, C4<0>, C4<0>;
L_0x1c40140 .functor XOR 1, L_0x1c40020, L_0x1c3fd20, C4<0>, C4<0>;
L_0x1c40270 .functor AND 1, L_0x1c40020, L_0x1c3fd20, C4<1>, C4<1>;
L_0x1c40300 .functor AND 1, L_0x1c40eb0, L_0x1c3ff10, C4<1>, C4<1>;
L_0x1bba9d0 .functor OR 1, L_0x1c40270, L_0x1c40300, C4<0>, C4<0>;
v0x1bb8b60_0 .net "A", 0 0, L_0x1c40eb0;  alias, 1 drivers
v0x1bb8c40_0 .net "B", 0 0, L_0x1c3ff10;  alias, 1 drivers
v0x1bb8d00_0 .net "carryin", 0 0, L_0x1c3fd20;  alias, 1 drivers
v0x1bb8dd0_0 .net "carryout", 0 0, L_0x1bba9d0;  alias, 1 drivers
v0x1bb8e90_0 .net "out1", 0 0, L_0x1c40020;  1 drivers
v0x1bb8fa0_0 .net "out2", 0 0, L_0x1c40270;  1 drivers
v0x1bb9060_0 .net "out3", 0 0, L_0x1c40300;  1 drivers
v0x1bb9120_0 .net "sum", 0 0, L_0x1c40140;  alias, 1 drivers
S_0x1bb9280 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bbaeb0 .functor AND 1, L_0x1c40eb0, L_0x1c40f50, C4<1>, C4<1>;
v0x1bb94c0_0 .net "A", 0 0, L_0x1c40eb0;  alias, 1 drivers
v0x1bb9580_0 .net "B", 0 0, L_0x1c40f50;  alias, 1 drivers
v0x1bb9620_0 .net "out", 0 0, L_0x1bbaeb0;  1 drivers
S_0x1bb9770 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bb99c0_0 .net "I", 7 0, L_0x1c40b90;  alias, 1 drivers
v0x1bb9aa0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bb9b60_0 .net "out", 0 0, L_0x1c40880;  alias, 1 drivers
L_0x1c40880 .part/v L_0x1c40b90, v0x1b1bbf0_0, 1;
S_0x1bb9cb0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c406f0 .functor NAND 1, L_0x1c40eb0, L_0x1c40f50, C4<1>, C4<1>;
v0x1bb9ed0_0 .net "A", 0 0, L_0x1c40eb0;  alias, 1 drivers
v0x1bb9fe0_0 .net "B", 0 0, L_0x1c40f50;  alias, 1 drivers
v0x1bba0a0_0 .net "out", 0 0, L_0x1c406f0;  1 drivers
S_0x1bba1b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c40760 .functor NOR 1, L_0x1c40eb0, L_0x1c40f50, C4<0>, C4<0>;
v0x1bba420_0 .net "A", 0 0, L_0x1c40eb0;  alias, 1 drivers
v0x1bba4e0_0 .net "B", 0 0, L_0x1c40f50;  alias, 1 drivers
v0x1bba5f0_0 .net "out", 0 0, L_0x1c40760;  1 drivers
S_0x1bba6f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c407f0 .functor OR 1, L_0x1c40eb0, L_0x1c40f50, C4<0>, C4<0>;
v0x1bba910_0 .net "A", 0 0, L_0x1c40eb0;  alias, 1 drivers
v0x1bbaa60_0 .net "B", 0 0, L_0x1c40f50;  alias, 1 drivers
v0x1bbab20_0 .net "out", 0 0, L_0x1c407f0;  1 drivers
S_0x1bbac20 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3ff10 .functor XOR 1, L_0x1c40f50, L_0x1c3ff80, C4<0>, C4<0>;
v0x1bbadf0_0 .net "A", 0 0, L_0x1c40f50;  alias, 1 drivers
v0x1bbaf40_0 .net "B", 0 0, L_0x1c3ff80;  1 drivers
v0x1bbb000_0 .net "out", 0 0, L_0x1c3ff10;  alias, 1 drivers
S_0x1bbb140 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bb8650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c40570 .functor XOR 1, L_0x1c40eb0, L_0x1c40f50, C4<0>, C4<0>;
v0x1bbb310_0 .net "A", 0 0, L_0x1c40eb0;  alias, 1 drivers
v0x1bbb3d0_0 .net "B", 0 0, L_0x1c40f50;  alias, 1 drivers
v0x1bbb490_0 .net "out", 0 0, L_0x1c40570;  1 drivers
S_0x1bbc020 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c41c10 .functor BUFZ 1, L_0x1c41390, C4<0>, C4<0>, C4<0>;
L_0x1c41ca0 .functor BUFZ 1, L_0x1c41390, C4<0>, C4<0>, C4<0>;
v0x1bbef90_0 .net "A", 0 0, L_0x1c420e0;  1 drivers
v0x1bbf030_0 .net "B", 0 0, L_0x1c40ff0;  1 drivers
v0x1bbf0f0_0 .net "I", 7 0, L_0x1c41dc0;  1 drivers
v0x1bbf1f0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bbf290_0 .net *"_s15", 0 0, L_0x1c41c10;  1 drivers
v0x1bbf3a0_0 .net *"_s19", 0 0, L_0x1c41ca0;  1 drivers
L_0x7f20eb31d7b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bbf480_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d7b0;  1 drivers
v0x1bbf560_0 .net "addORsub", 0 0, L_0x1c41390;  1 drivers
v0x1bbf600_0 .net "carryin", 0 0, L_0x1c41090;  1 drivers
v0x1bbf760_0 .net "carryout", 0 0, L_0x1bbe3a0;  1 drivers
v0x1bbf830_0 .net "modB", 0 0, L_0x1c3fe50;  1 drivers
v0x1bbf8d0_0 .net "out", 0 0, L_0x1c41ab0;  1 drivers
L_0x1c411f0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c41dc0_0_0 .concat8 [ 1 1 1 1], L_0x1c41c10, L_0x1c41ca0, L_0x1c417a0, L_0x7f20eb31d7b0;
LS_0x1c41dc0_0_4 .concat8 [ 1 1 1 1], L_0x1bbe880, L_0x1c41920, L_0x1c41990, L_0x1c41a20;
L_0x1c41dc0 .concat8 [ 4 4 0 0], LS_0x1c41dc0_0_0, LS_0x1c41dc0_0_4;
S_0x1bbc290 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c41290 .functor XOR 1, L_0x1c420e0, L_0x1c3fe50, C4<0>, C4<0>;
L_0x1c41390 .functor XOR 1, L_0x1c41290, L_0x1c41090, C4<0>, C4<0>;
L_0x1c414a0 .functor AND 1, L_0x1c41290, L_0x1c41090, C4<1>, C4<1>;
L_0x1c41530 .functor AND 1, L_0x1c420e0, L_0x1c3fe50, C4<1>, C4<1>;
L_0x1bbe3a0 .functor OR 1, L_0x1c414a0, L_0x1c41530, C4<0>, C4<0>;
v0x1bbc530_0 .net "A", 0 0, L_0x1c420e0;  alias, 1 drivers
v0x1bbc610_0 .net "B", 0 0, L_0x1c3fe50;  alias, 1 drivers
v0x1bbc6d0_0 .net "carryin", 0 0, L_0x1c41090;  alias, 1 drivers
v0x1bbc7a0_0 .net "carryout", 0 0, L_0x1bbe3a0;  alias, 1 drivers
v0x1bbc860_0 .net "out1", 0 0, L_0x1c41290;  1 drivers
v0x1bbc970_0 .net "out2", 0 0, L_0x1c414a0;  1 drivers
v0x1bbca30_0 .net "out3", 0 0, L_0x1c41530;  1 drivers
v0x1bbcaf0_0 .net "sum", 0 0, L_0x1c41390;  alias, 1 drivers
S_0x1bbcc50 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bbe880 .functor AND 1, L_0x1c420e0, L_0x1c40ff0, C4<1>, C4<1>;
v0x1bbce90_0 .net "A", 0 0, L_0x1c420e0;  alias, 1 drivers
v0x1bbcf50_0 .net "B", 0 0, L_0x1c40ff0;  alias, 1 drivers
v0x1bbcff0_0 .net "out", 0 0, L_0x1bbe880;  1 drivers
S_0x1bbd140 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bbd390_0 .net "I", 7 0, L_0x1c41dc0;  alias, 1 drivers
v0x1bbd470_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bbd530_0 .net "out", 0 0, L_0x1c41ab0;  alias, 1 drivers
L_0x1c41ab0 .part/v L_0x1c41dc0, v0x1b1bbf0_0, 1;
S_0x1bbd680 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c41920 .functor NAND 1, L_0x1c420e0, L_0x1c40ff0, C4<1>, C4<1>;
v0x1bbd8a0_0 .net "A", 0 0, L_0x1c420e0;  alias, 1 drivers
v0x1bbd9b0_0 .net "B", 0 0, L_0x1c40ff0;  alias, 1 drivers
v0x1bbda70_0 .net "out", 0 0, L_0x1c41920;  1 drivers
S_0x1bbdb80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c41990 .functor NOR 1, L_0x1c420e0, L_0x1c40ff0, C4<0>, C4<0>;
v0x1bbddf0_0 .net "A", 0 0, L_0x1c420e0;  alias, 1 drivers
v0x1bbdeb0_0 .net "B", 0 0, L_0x1c40ff0;  alias, 1 drivers
v0x1bbdfc0_0 .net "out", 0 0, L_0x1c41990;  1 drivers
S_0x1bbe0c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c41a20 .functor OR 1, L_0x1c420e0, L_0x1c40ff0, C4<0>, C4<0>;
v0x1bbe2e0_0 .net "A", 0 0, L_0x1c420e0;  alias, 1 drivers
v0x1bbe430_0 .net "B", 0 0, L_0x1c40ff0;  alias, 1 drivers
v0x1bbe4f0_0 .net "out", 0 0, L_0x1c41a20;  1 drivers
S_0x1bbe5f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c3fe50 .functor XOR 1, L_0x1c40ff0, L_0x1c411f0, C4<0>, C4<0>;
v0x1bbe7c0_0 .net "A", 0 0, L_0x1c40ff0;  alias, 1 drivers
v0x1bbe910_0 .net "B", 0 0, L_0x1c411f0;  1 drivers
v0x1bbe9d0_0 .net "out", 0 0, L_0x1c3fe50;  alias, 1 drivers
S_0x1bbeb10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bbc020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c417a0 .functor XOR 1, L_0x1c420e0, L_0x1c40ff0, C4<0>, C4<0>;
v0x1bbece0_0 .net "A", 0 0, L_0x1c420e0;  alias, 1 drivers
v0x1bbeda0_0 .net "B", 0 0, L_0x1c40ff0;  alias, 1 drivers
v0x1bbee60_0 .net "out", 0 0, L_0x1c417a0;  1 drivers
S_0x1bbf9f0 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c42e50 .functor BUFZ 1, L_0x1c425b0, C4<0>, C4<0>, C4<0>;
L_0x1c42ee0 .functor BUFZ 1, L_0x1c425b0, C4<0>, C4<0>, C4<0>;
v0x1bc2960_0 .net "A", 0 0, L_0x1c43320;  1 drivers
v0x1bc2a00_0 .net "B", 0 0, L_0x1c433c0;  1 drivers
v0x1bc2ac0_0 .net "I", 7 0, L_0x1c43000;  1 drivers
v0x1bc2bc0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1b96850_0 .net *"_s15", 0 0, L_0x1c42e50;  1 drivers
v0x1b96960_0 .net *"_s19", 0 0, L_0x1c42ee0;  1 drivers
L_0x7f20eb31d7f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bc3070_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d7f8;  1 drivers
v0x1bc3110_0 .net "addORsub", 0 0, L_0x1c425b0;  1 drivers
v0x1bc31b0_0 .net "carryin", 0 0, L_0x1c42180;  1 drivers
v0x1bc32e0_0 .net "carryout", 0 0, L_0x1bc1d70;  1 drivers
v0x1bc3380_0 .net "modB", 0 0, L_0x1c423a0;  1 drivers
v0x1bc3420_0 .net "out", 0 0, L_0x1c42cf0;  1 drivers
L_0x1c42410 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c43000_0_0 .concat8 [ 1 1 1 1], L_0x1c42e50, L_0x1c42ee0, L_0x1c429e0, L_0x7f20eb31d7f8;
LS_0x1c43000_0_4 .concat8 [ 1 1 1 1], L_0x1bc2250, L_0x1c42b60, L_0x1c42bd0, L_0x1c42c60;
L_0x1c43000 .concat8 [ 4 4 0 0], LS_0x1c43000_0_0, LS_0x1c43000_0_4;
S_0x1bbfc60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c424b0 .functor XOR 1, L_0x1c43320, L_0x1c423a0, C4<0>, C4<0>;
L_0x1c425b0 .functor XOR 1, L_0x1c424b0, L_0x1c42180, C4<0>, C4<0>;
L_0x1c426e0 .functor AND 1, L_0x1c424b0, L_0x1c42180, C4<1>, C4<1>;
L_0x1c42770 .functor AND 1, L_0x1c43320, L_0x1c423a0, C4<1>, C4<1>;
L_0x1bc1d70 .functor OR 1, L_0x1c426e0, L_0x1c42770, C4<0>, C4<0>;
v0x1bbff00_0 .net "A", 0 0, L_0x1c43320;  alias, 1 drivers
v0x1bbffe0_0 .net "B", 0 0, L_0x1c423a0;  alias, 1 drivers
v0x1bc00a0_0 .net "carryin", 0 0, L_0x1c42180;  alias, 1 drivers
v0x1bc0170_0 .net "carryout", 0 0, L_0x1bc1d70;  alias, 1 drivers
v0x1bc0230_0 .net "out1", 0 0, L_0x1c424b0;  1 drivers
v0x1bc0340_0 .net "out2", 0 0, L_0x1c426e0;  1 drivers
v0x1bc0400_0 .net "out3", 0 0, L_0x1c42770;  1 drivers
v0x1bc04c0_0 .net "sum", 0 0, L_0x1c425b0;  alias, 1 drivers
S_0x1bc0620 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc2250 .functor AND 1, L_0x1c43320, L_0x1c433c0, C4<1>, C4<1>;
v0x1bc0860_0 .net "A", 0 0, L_0x1c43320;  alias, 1 drivers
v0x1bc0920_0 .net "B", 0 0, L_0x1c433c0;  alias, 1 drivers
v0x1bc09c0_0 .net "out", 0 0, L_0x1bc2250;  1 drivers
S_0x1bc0b10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bc0d60_0 .net "I", 7 0, L_0x1c43000;  alias, 1 drivers
v0x1bc0e40_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bc0f00_0 .net "out", 0 0, L_0x1c42cf0;  alias, 1 drivers
L_0x1c42cf0 .part/v L_0x1c43000, v0x1b1bbf0_0, 1;
S_0x1bc1050 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c42b60 .functor NAND 1, L_0x1c43320, L_0x1c433c0, C4<1>, C4<1>;
v0x1bc1270_0 .net "A", 0 0, L_0x1c43320;  alias, 1 drivers
v0x1bc1380_0 .net "B", 0 0, L_0x1c433c0;  alias, 1 drivers
v0x1bc1440_0 .net "out", 0 0, L_0x1c42b60;  1 drivers
S_0x1bc1550 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c42bd0 .functor NOR 1, L_0x1c43320, L_0x1c433c0, C4<0>, C4<0>;
v0x1bc17c0_0 .net "A", 0 0, L_0x1c43320;  alias, 1 drivers
v0x1bc1880_0 .net "B", 0 0, L_0x1c433c0;  alias, 1 drivers
v0x1bc1990_0 .net "out", 0 0, L_0x1c42bd0;  1 drivers
S_0x1bc1a90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c42c60 .functor OR 1, L_0x1c43320, L_0x1c433c0, C4<0>, C4<0>;
v0x1bc1cb0_0 .net "A", 0 0, L_0x1c43320;  alias, 1 drivers
v0x1bc1e00_0 .net "B", 0 0, L_0x1c433c0;  alias, 1 drivers
v0x1bc1ec0_0 .net "out", 0 0, L_0x1c42c60;  1 drivers
S_0x1bc1fc0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c423a0 .functor XOR 1, L_0x1c433c0, L_0x1c42410, C4<0>, C4<0>;
v0x1bc2190_0 .net "A", 0 0, L_0x1c433c0;  alias, 1 drivers
v0x1bc22e0_0 .net "B", 0 0, L_0x1c42410;  1 drivers
v0x1bc23a0_0 .net "out", 0 0, L_0x1c423a0;  alias, 1 drivers
S_0x1bc24e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bbf9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c429e0 .functor XOR 1, L_0x1c43320, L_0x1c433c0, C4<0>, C4<0>;
v0x1bc26b0_0 .net "A", 0 0, L_0x1c43320;  alias, 1 drivers
v0x1bc2770_0 .net "B", 0 0, L_0x1c433c0;  alias, 1 drivers
v0x1bc2830_0 .net "out", 0 0, L_0x1c429e0;  1 drivers
S_0x1bc3520 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c44080 .functor BUFZ 1, L_0x1c437e0, C4<0>, C4<0>, C4<0>;
L_0x1c44110 .functor BUFZ 1, L_0x1c437e0, C4<0>, C4<0>, C4<0>;
v0x1bc6510_0 .net "A", 0 0, L_0x1c44550;  1 drivers
v0x1bc65b0_0 .net "B", 0 0, L_0x1c43460;  1 drivers
v0x1bc6670_0 .net "I", 7 0, L_0x1c44230;  1 drivers
v0x1bc6770_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bc6810_0 .net *"_s15", 0 0, L_0x1c44080;  1 drivers
v0x1bc6920_0 .net *"_s19", 0 0, L_0x1c44110;  1 drivers
L_0x7f20eb31d840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bc6a00_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d840;  1 drivers
v0x1bc6ae0_0 .net "addORsub", 0 0, L_0x1c437e0;  1 drivers
v0x1bc6b80_0 .net "carryin", 0 0, L_0x1c43500;  1 drivers
v0x1bc6ce0_0 .net "carryout", 0 0, L_0x1bc5920;  1 drivers
v0x1bc6db0_0 .net "modB", 0 0, L_0x1c422b0;  1 drivers
v0x1bc6e50_0 .net "out", 0 0, L_0x1c43f20;  1 drivers
L_0x1c43690 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c44230_0_0 .concat8 [ 1 1 1 1], L_0x1c44080, L_0x1c44110, L_0x1c43c10, L_0x7f20eb31d840;
LS_0x1c44230_0_4 .concat8 [ 1 1 1 1], L_0x1bc5e00, L_0x1c43d90, L_0x1c43e00, L_0x1c43e90;
L_0x1c44230 .concat8 [ 4 4 0 0], LS_0x1c44230_0_0, LS_0x1c44230_0_4;
S_0x1bc38a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c42320 .functor XOR 1, L_0x1c44550, L_0x1c422b0, C4<0>, C4<0>;
L_0x1c437e0 .functor XOR 1, L_0x1c42320, L_0x1c43500, C4<0>, C4<0>;
L_0x1c43910 .functor AND 1, L_0x1c42320, L_0x1c43500, C4<1>, C4<1>;
L_0x1c439a0 .functor AND 1, L_0x1c44550, L_0x1c422b0, C4<1>, C4<1>;
L_0x1bc5920 .functor OR 1, L_0x1c43910, L_0x1c439a0, C4<0>, C4<0>;
v0x1bc3ad0_0 .net "A", 0 0, L_0x1c44550;  alias, 1 drivers
v0x1bc3b90_0 .net "B", 0 0, L_0x1c422b0;  alias, 1 drivers
v0x1bc3c50_0 .net "carryin", 0 0, L_0x1c43500;  alias, 1 drivers
v0x1bc3d20_0 .net "carryout", 0 0, L_0x1bc5920;  alias, 1 drivers
v0x1bc3de0_0 .net "out1", 0 0, L_0x1c42320;  1 drivers
v0x1bc3ef0_0 .net "out2", 0 0, L_0x1c43910;  1 drivers
v0x1bc3fb0_0 .net "out3", 0 0, L_0x1c439a0;  1 drivers
v0x1bc4070_0 .net "sum", 0 0, L_0x1c437e0;  alias, 1 drivers
S_0x1bc41d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc5e00 .functor AND 1, L_0x1c44550, L_0x1c43460, C4<1>, C4<1>;
v0x1bc4410_0 .net "A", 0 0, L_0x1c44550;  alias, 1 drivers
v0x1bc44d0_0 .net "B", 0 0, L_0x1c43460;  alias, 1 drivers
v0x1bc4570_0 .net "out", 0 0, L_0x1bc5e00;  1 drivers
S_0x1bc46c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bc4910_0 .net "I", 7 0, L_0x1c44230;  alias, 1 drivers
v0x1bc49f0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bc4ab0_0 .net "out", 0 0, L_0x1c43f20;  alias, 1 drivers
L_0x1c43f20 .part/v L_0x1c44230, v0x1b1bbf0_0, 1;
S_0x1bc4c00 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c43d90 .functor NAND 1, L_0x1c44550, L_0x1c43460, C4<1>, C4<1>;
v0x1bc4e20_0 .net "A", 0 0, L_0x1c44550;  alias, 1 drivers
v0x1bc4f30_0 .net "B", 0 0, L_0x1c43460;  alias, 1 drivers
v0x1bc4ff0_0 .net "out", 0 0, L_0x1c43d90;  1 drivers
S_0x1bc5100 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c43e00 .functor NOR 1, L_0x1c44550, L_0x1c43460, C4<0>, C4<0>;
v0x1bc5370_0 .net "A", 0 0, L_0x1c44550;  alias, 1 drivers
v0x1bc5430_0 .net "B", 0 0, L_0x1c43460;  alias, 1 drivers
v0x1bc5540_0 .net "out", 0 0, L_0x1c43e00;  1 drivers
S_0x1bc5640 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c43e90 .functor OR 1, L_0x1c44550, L_0x1c43460, C4<0>, C4<0>;
v0x1bc5860_0 .net "A", 0 0, L_0x1c44550;  alias, 1 drivers
v0x1bc59b0_0 .net "B", 0 0, L_0x1c43460;  alias, 1 drivers
v0x1bc5a70_0 .net "out", 0 0, L_0x1c43e90;  1 drivers
S_0x1bc5b70 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c422b0 .functor XOR 1, L_0x1c43460, L_0x1c43690, C4<0>, C4<0>;
v0x1bc5d40_0 .net "A", 0 0, L_0x1c43460;  alias, 1 drivers
v0x1bc5e90_0 .net "B", 0 0, L_0x1c43690;  1 drivers
v0x1bc5f50_0 .net "out", 0 0, L_0x1c422b0;  alias, 1 drivers
S_0x1bc6090 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bc3520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c43c10 .functor XOR 1, L_0x1c44550, L_0x1c43460, C4<0>, C4<0>;
v0x1bc6260_0 .net "A", 0 0, L_0x1c44550;  alias, 1 drivers
v0x1bc6320_0 .net "B", 0 0, L_0x1c43460;  alias, 1 drivers
v0x1bc63e0_0 .net "out", 0 0, L_0x1c43c10;  1 drivers
S_0x1bc6f70 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c452b0 .functor BUFZ 1, L_0x1c44a50, C4<0>, C4<0>, C4<0>;
L_0x1c45340 .functor BUFZ 1, L_0x1c44a50, C4<0>, C4<0>, C4<0>;
v0x1bc9ee0_0 .net "A", 0 0, L_0x1c45780;  1 drivers
v0x1bc9f80_0 .net "B", 0 0, L_0x1c45820;  1 drivers
v0x1bca040_0 .net "I", 7 0, L_0x1c45460;  1 drivers
v0x1bca140_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bca1e0_0 .net *"_s15", 0 0, L_0x1c452b0;  1 drivers
v0x1bca2f0_0 .net *"_s19", 0 0, L_0x1c45340;  1 drivers
L_0x7f20eb31d888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bca3d0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d888;  1 drivers
v0x1bca4b0_0 .net "addORsub", 0 0, L_0x1c44a50;  1 drivers
v0x1bca550_0 .net "carryin", 0 0, L_0x1c445f0;  1 drivers
v0x1bca6b0_0 .net "carryout", 0 0, L_0x1bc92f0;  1 drivers
v0x1bca780_0 .net "modB", 0 0, L_0x1c44840;  1 drivers
v0x1bca820_0 .net "out", 0 0, L_0x1c45150;  1 drivers
L_0x1c448b0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c45460_0_0 .concat8 [ 1 1 1 1], L_0x1c452b0, L_0x1c45340, L_0x1c44e40, L_0x7f20eb31d888;
LS_0x1c45460_0_4 .concat8 [ 1 1 1 1], L_0x1bc97d0, L_0x1c44fc0, L_0x1c45030, L_0x1c450c0;
L_0x1c45460 .concat8 [ 4 4 0 0], LS_0x1c45460_0_0, LS_0x1c45460_0_4;
S_0x1bc71e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c44950 .functor XOR 1, L_0x1c45780, L_0x1c44840, C4<0>, C4<0>;
L_0x1c44a50 .functor XOR 1, L_0x1c44950, L_0x1c445f0, C4<0>, C4<0>;
L_0x1c44b60 .functor AND 1, L_0x1c44950, L_0x1c445f0, C4<1>, C4<1>;
L_0x1c44bd0 .functor AND 1, L_0x1c45780, L_0x1c44840, C4<1>, C4<1>;
L_0x1bc92f0 .functor OR 1, L_0x1c44b60, L_0x1c44bd0, C4<0>, C4<0>;
v0x1bc7480_0 .net "A", 0 0, L_0x1c45780;  alias, 1 drivers
v0x1bc7560_0 .net "B", 0 0, L_0x1c44840;  alias, 1 drivers
v0x1bc7620_0 .net "carryin", 0 0, L_0x1c445f0;  alias, 1 drivers
v0x1bc76f0_0 .net "carryout", 0 0, L_0x1bc92f0;  alias, 1 drivers
v0x1bc77b0_0 .net "out1", 0 0, L_0x1c44950;  1 drivers
v0x1bc78c0_0 .net "out2", 0 0, L_0x1c44b60;  1 drivers
v0x1bc7980_0 .net "out3", 0 0, L_0x1c44bd0;  1 drivers
v0x1bc7a40_0 .net "sum", 0 0, L_0x1c44a50;  alias, 1 drivers
S_0x1bc7ba0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc97d0 .functor AND 1, L_0x1c45780, L_0x1c45820, C4<1>, C4<1>;
v0x1bc7de0_0 .net "A", 0 0, L_0x1c45780;  alias, 1 drivers
v0x1bc7ea0_0 .net "B", 0 0, L_0x1c45820;  alias, 1 drivers
v0x1bc7f40_0 .net "out", 0 0, L_0x1bc97d0;  1 drivers
S_0x1bc8090 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bc82e0_0 .net "I", 7 0, L_0x1c45460;  alias, 1 drivers
v0x1bc83c0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bc8480_0 .net "out", 0 0, L_0x1c45150;  alias, 1 drivers
L_0x1c45150 .part/v L_0x1c45460, v0x1b1bbf0_0, 1;
S_0x1bc85d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c44fc0 .functor NAND 1, L_0x1c45780, L_0x1c45820, C4<1>, C4<1>;
v0x1bc87f0_0 .net "A", 0 0, L_0x1c45780;  alias, 1 drivers
v0x1bc8900_0 .net "B", 0 0, L_0x1c45820;  alias, 1 drivers
v0x1bc89c0_0 .net "out", 0 0, L_0x1c44fc0;  1 drivers
S_0x1bc8ad0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c45030 .functor NOR 1, L_0x1c45780, L_0x1c45820, C4<0>, C4<0>;
v0x1bc8d40_0 .net "A", 0 0, L_0x1c45780;  alias, 1 drivers
v0x1bc8e00_0 .net "B", 0 0, L_0x1c45820;  alias, 1 drivers
v0x1bc8f10_0 .net "out", 0 0, L_0x1c45030;  1 drivers
S_0x1bc9010 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c450c0 .functor OR 1, L_0x1c45780, L_0x1c45820, C4<0>, C4<0>;
v0x1bc9230_0 .net "A", 0 0, L_0x1c45780;  alias, 1 drivers
v0x1bc9380_0 .net "B", 0 0, L_0x1c45820;  alias, 1 drivers
v0x1bc9440_0 .net "out", 0 0, L_0x1c450c0;  1 drivers
S_0x1bc9540 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c44840 .functor XOR 1, L_0x1c45820, L_0x1c448b0, C4<0>, C4<0>;
v0x1bc9710_0 .net "A", 0 0, L_0x1c45820;  alias, 1 drivers
v0x1bc9860_0 .net "B", 0 0, L_0x1c448b0;  1 drivers
v0x1bc9920_0 .net "out", 0 0, L_0x1c44840;  alias, 1 drivers
S_0x1bc9a60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bc6f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c44e40 .functor XOR 1, L_0x1c45780, L_0x1c45820, C4<0>, C4<0>;
v0x1bc9c30_0 .net "A", 0 0, L_0x1c45780;  alias, 1 drivers
v0x1bc9cf0_0 .net "B", 0 0, L_0x1c45820;  alias, 1 drivers
v0x1bc9db0_0 .net "out", 0 0, L_0x1c44e40;  1 drivers
S_0x1bca940 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c464e0 .functor BUFZ 1, L_0x1c45c40, C4<0>, C4<0>, C4<0>;
L_0x1c46570 .functor BUFZ 1, L_0x1c45c40, C4<0>, C4<0>, C4<0>;
v0x1bcd8b0_0 .net "A", 0 0, L_0x1c469b0;  1 drivers
v0x1bcd950_0 .net "B", 0 0, L_0x1c34310;  1 drivers
v0x1bcda10_0 .net "I", 7 0, L_0x1c46690;  1 drivers
v0x1bcdb10_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bcdbb0_0 .net *"_s15", 0 0, L_0x1c464e0;  1 drivers
v0x1bcdcc0_0 .net *"_s19", 0 0, L_0x1c46570;  1 drivers
L_0x7f20eb31d8d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bcdda0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d8d0;  1 drivers
v0x1bcde80_0 .net "addORsub", 0 0, L_0x1c45c40;  1 drivers
v0x1bcdf20_0 .net "carryin", 0 0, L_0x1c343b0;  1 drivers
v0x1bce080_0 .net "carryout", 0 0, L_0x1bcccc0;  1 drivers
v0x1bce150_0 .net "modB", 0 0, L_0x1c44720;  1 drivers
v0x1bce1f0_0 .net "out", 0 0, L_0x1c46380;  1 drivers
L_0x1c44790 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c46690_0_0 .concat8 [ 1 1 1 1], L_0x1c464e0, L_0x1c46570, L_0x1c46070, L_0x7f20eb31d8d0;
LS_0x1c46690_0_4 .concat8 [ 1 1 1 1], L_0x1bcd1a0, L_0x1c461f0, L_0x1c46260, L_0x1c462f0;
L_0x1c46690 .concat8 [ 4 4 0 0], LS_0x1c46690_0_0, LS_0x1c46690_0_4;
S_0x1bcabb0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c45b20 .functor XOR 1, L_0x1c469b0, L_0x1c44720, C4<0>, C4<0>;
L_0x1c45c40 .functor XOR 1, L_0x1c45b20, L_0x1c343b0, C4<0>, C4<0>;
L_0x1c45d70 .functor AND 1, L_0x1c45b20, L_0x1c343b0, C4<1>, C4<1>;
L_0x1c45e00 .functor AND 1, L_0x1c469b0, L_0x1c44720, C4<1>, C4<1>;
L_0x1bcccc0 .functor OR 1, L_0x1c45d70, L_0x1c45e00, C4<0>, C4<0>;
v0x1bcae50_0 .net "A", 0 0, L_0x1c469b0;  alias, 1 drivers
v0x1bcaf30_0 .net "B", 0 0, L_0x1c44720;  alias, 1 drivers
v0x1bcaff0_0 .net "carryin", 0 0, L_0x1c343b0;  alias, 1 drivers
v0x1bcb0c0_0 .net "carryout", 0 0, L_0x1bcccc0;  alias, 1 drivers
v0x1bcb180_0 .net "out1", 0 0, L_0x1c45b20;  1 drivers
v0x1bcb290_0 .net "out2", 0 0, L_0x1c45d70;  1 drivers
v0x1bcb350_0 .net "out3", 0 0, L_0x1c45e00;  1 drivers
v0x1bcb410_0 .net "sum", 0 0, L_0x1c45c40;  alias, 1 drivers
S_0x1bcb570 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcd1a0 .functor AND 1, L_0x1c469b0, L_0x1c34310, C4<1>, C4<1>;
v0x1bcb7b0_0 .net "A", 0 0, L_0x1c469b0;  alias, 1 drivers
v0x1bcb870_0 .net "B", 0 0, L_0x1c34310;  alias, 1 drivers
v0x1bcb910_0 .net "out", 0 0, L_0x1bcd1a0;  1 drivers
S_0x1bcba60 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bcbcb0_0 .net "I", 7 0, L_0x1c46690;  alias, 1 drivers
v0x1bcbd90_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bcbe50_0 .net "out", 0 0, L_0x1c46380;  alias, 1 drivers
L_0x1c46380 .part/v L_0x1c46690, v0x1b1bbf0_0, 1;
S_0x1bcbfa0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c461f0 .functor NAND 1, L_0x1c469b0, L_0x1c34310, C4<1>, C4<1>;
v0x1bcc1c0_0 .net "A", 0 0, L_0x1c469b0;  alias, 1 drivers
v0x1bcc2d0_0 .net "B", 0 0, L_0x1c34310;  alias, 1 drivers
v0x1bcc390_0 .net "out", 0 0, L_0x1c461f0;  1 drivers
S_0x1bcc4a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c46260 .functor NOR 1, L_0x1c469b0, L_0x1c34310, C4<0>, C4<0>;
v0x1bcc710_0 .net "A", 0 0, L_0x1c469b0;  alias, 1 drivers
v0x1bcc7d0_0 .net "B", 0 0, L_0x1c34310;  alias, 1 drivers
v0x1bcc8e0_0 .net "out", 0 0, L_0x1c46260;  1 drivers
S_0x1bcc9e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c462f0 .functor OR 1, L_0x1c469b0, L_0x1c34310, C4<0>, C4<0>;
v0x1bccc00_0 .net "A", 0 0, L_0x1c469b0;  alias, 1 drivers
v0x1bccd50_0 .net "B", 0 0, L_0x1c34310;  alias, 1 drivers
v0x1bcce10_0 .net "out", 0 0, L_0x1c462f0;  1 drivers
S_0x1bccf10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c44720 .functor XOR 1, L_0x1c34310, L_0x1c44790, C4<0>, C4<0>;
v0x1bcd0e0_0 .net "A", 0 0, L_0x1c34310;  alias, 1 drivers
v0x1bcd230_0 .net "B", 0 0, L_0x1c44790;  1 drivers
v0x1bcd2f0_0 .net "out", 0 0, L_0x1c44720;  alias, 1 drivers
S_0x1bcd430 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bca940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c46070 .functor XOR 1, L_0x1c469b0, L_0x1c34310, C4<0>, C4<0>;
v0x1bcd600_0 .net "A", 0 0, L_0x1c469b0;  alias, 1 drivers
v0x1bcd6c0_0 .net "B", 0 0, L_0x1c34310;  alias, 1 drivers
v0x1bcd780_0 .net "out", 0 0, L_0x1c46070;  1 drivers
S_0x1bce310 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c47760 .functor BUFZ 1, L_0x1c45a80, C4<0>, C4<0>, C4<0>;
L_0x1c477d0 .functor BUFZ 1, L_0x1c45a80, C4<0>, C4<0>, C4<0>;
v0x1bd1280_0 .net "A", 0 0, L_0x1c355b0;  1 drivers
v0x1bd1320_0 .net "B", 0 0, L_0x1c47e00;  1 drivers
v0x1bd13e0_0 .net "I", 7 0, L_0x1c478d0;  1 drivers
v0x1bd14e0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bd1580_0 .net *"_s15", 0 0, L_0x1c47760;  1 drivers
v0x1bd1690_0 .net *"_s19", 0 0, L_0x1c477d0;  1 drivers
L_0x7f20eb31d918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bd1770_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d918;  1 drivers
v0x1bd1850_0 .net "addORsub", 0 0, L_0x1c45a80;  1 drivers
v0x1bd18f0_0 .net "carryin", 0 0, L_0x1c46e60;  1 drivers
v0x1bd1a50_0 .net "carryout", 0 0, L_0x1bd0690;  1 drivers
v0x1bd1b20_0 .net "modB", 0 0, L_0x1af10c0;  1 drivers
v0x1bd1bc0_0 .net "out", 0 0, L_0x1c47620;  1 drivers
L_0x1c458c0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c478d0_0_0 .concat8 [ 1 1 1 1], L_0x1c47760, L_0x1c477d0, L_0x1c47350, L_0x7f20eb31d918;
LS_0x1c478d0_0_4 .concat8 [ 1 1 1 1], L_0x1bd0b70, L_0x1c474d0, L_0x1c47540, L_0x1c475b0;
L_0x1c478d0 .concat8 [ 4 4 0 0], LS_0x1c478d0_0_0, LS_0x1c478d0_0_4;
S_0x1bce580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c45960 .functor XOR 1, L_0x1c355b0, L_0x1af10c0, C4<0>, C4<0>;
L_0x1c45a80 .functor XOR 1, L_0x1c45960, L_0x1c46e60, C4<0>, C4<0>;
L_0x1c2e8e0 .functor AND 1, L_0x1c45960, L_0x1c46e60, C4<1>, C4<1>;
L_0x1c470e0 .functor AND 1, L_0x1c355b0, L_0x1af10c0, C4<1>, C4<1>;
L_0x1bd0690 .functor OR 1, L_0x1c2e8e0, L_0x1c470e0, C4<0>, C4<0>;
v0x1bce820_0 .net "A", 0 0, L_0x1c355b0;  alias, 1 drivers
v0x1bce900_0 .net "B", 0 0, L_0x1af10c0;  alias, 1 drivers
v0x1bce9c0_0 .net "carryin", 0 0, L_0x1c46e60;  alias, 1 drivers
v0x1bcea90_0 .net "carryout", 0 0, L_0x1bd0690;  alias, 1 drivers
v0x1bceb50_0 .net "out1", 0 0, L_0x1c45960;  1 drivers
v0x1bcec60_0 .net "out2", 0 0, L_0x1c2e8e0;  1 drivers
v0x1bced20_0 .net "out3", 0 0, L_0x1c470e0;  1 drivers
v0x1bcede0_0 .net "sum", 0 0, L_0x1c45a80;  alias, 1 drivers
S_0x1bcef40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd0b70 .functor AND 1, L_0x1c355b0, L_0x1c47e00, C4<1>, C4<1>;
v0x1bcf180_0 .net "A", 0 0, L_0x1c355b0;  alias, 1 drivers
v0x1bcf240_0 .net "B", 0 0, L_0x1c47e00;  alias, 1 drivers
v0x1bcf2e0_0 .net "out", 0 0, L_0x1bd0b70;  1 drivers
S_0x1bcf430 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bcf680_0 .net "I", 7 0, L_0x1c478d0;  alias, 1 drivers
v0x1bcf760_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bcf820_0 .net "out", 0 0, L_0x1c47620;  alias, 1 drivers
L_0x1c47620 .part/v L_0x1c478d0, v0x1b1bbf0_0, 1;
S_0x1bcf970 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c474d0 .functor NAND 1, L_0x1c355b0, L_0x1c47e00, C4<1>, C4<1>;
v0x1bcfb90_0 .net "A", 0 0, L_0x1c355b0;  alias, 1 drivers
v0x1bcfca0_0 .net "B", 0 0, L_0x1c47e00;  alias, 1 drivers
v0x1bcfd60_0 .net "out", 0 0, L_0x1c474d0;  1 drivers
S_0x1bcfe70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c47540 .functor NOR 1, L_0x1c355b0, L_0x1c47e00, C4<0>, C4<0>;
v0x1bd00e0_0 .net "A", 0 0, L_0x1c355b0;  alias, 1 drivers
v0x1bd01a0_0 .net "B", 0 0, L_0x1c47e00;  alias, 1 drivers
v0x1bd02b0_0 .net "out", 0 0, L_0x1c47540;  1 drivers
S_0x1bd03b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c475b0 .functor OR 1, L_0x1c355b0, L_0x1c47e00, C4<0>, C4<0>;
v0x1bd05d0_0 .net "A", 0 0, L_0x1c355b0;  alias, 1 drivers
v0x1bd0720_0 .net "B", 0 0, L_0x1c47e00;  alias, 1 drivers
v0x1bd07e0_0 .net "out", 0 0, L_0x1c475b0;  1 drivers
S_0x1bd08e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1af10c0 .functor XOR 1, L_0x1c47e00, L_0x1c458c0, C4<0>, C4<0>;
v0x1bd0ab0_0 .net "A", 0 0, L_0x1c47e00;  alias, 1 drivers
v0x1bd0c00_0 .net "B", 0 0, L_0x1c458c0;  1 drivers
v0x1bd0cc0_0 .net "out", 0 0, L_0x1af10c0;  alias, 1 drivers
S_0x1bd0e00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bce310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c47350 .functor XOR 1, L_0x1c355b0, L_0x1c47e00, C4<0>, C4<0>;
v0x1bd0fd0_0 .net "A", 0 0, L_0x1c355b0;  alias, 1 drivers
v0x1bd1090_0 .net "B", 0 0, L_0x1c47e00;  alias, 1 drivers
v0x1bd1150_0 .net "out", 0 0, L_0x1c47350;  1 drivers
S_0x1bd1ce0 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c489e0 .functor BUFZ 1, L_0x1c48230, C4<0>, C4<0>, C4<0>;
L_0x1c48a50 .functor BUFZ 1, L_0x1c48230, C4<0>, C4<0>, C4<0>;
v0x1bd4c50_0 .net "A", 0 0, L_0x1c48e70;  1 drivers
v0x1bd4cf0_0 .net "B", 0 0, L_0x1c47ea0;  1 drivers
v0x1bd4db0_0 .net "I", 7 0, L_0x1c48b50;  1 drivers
v0x1bd4eb0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bd4f50_0 .net *"_s15", 0 0, L_0x1c489e0;  1 drivers
v0x1bd5060_0 .net *"_s19", 0 0, L_0x1c48a50;  1 drivers
L_0x7f20eb31d960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bd5140_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d960;  1 drivers
v0x1bd5220_0 .net "addORsub", 0 0, L_0x1c48230;  1 drivers
v0x1bd52c0_0 .net "carryin", 0 0, L_0x1c47f40;  1 drivers
v0x1bd5420_0 .net "carryout", 0 0, L_0x1bd4060;  1 drivers
v0x1bd54f0_0 .net "modB", 0 0, L_0x1c35650;  1 drivers
v0x1bd5590_0 .net "out", 0 0, L_0x1c488a0;  1 drivers
L_0x1c46f90 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c48b50_0_0 .concat8 [ 1 1 1 1], L_0x1c489e0, L_0x1c48a50, L_0x1c485d0, L_0x7f20eb31d960;
LS_0x1c48b50_0_4 .concat8 [ 1 1 1 1], L_0x1bd4540, L_0x1c48750, L_0x1c487c0, L_0x1c48830;
L_0x1c48b50 .concat8 [ 4 4 0 0], LS_0x1c48b50_0_0, LS_0x1c48b50_0_4;
S_0x1bd1f50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c48130 .functor XOR 1, L_0x1c48e70, L_0x1c35650, C4<0>, C4<0>;
L_0x1c48230 .functor XOR 1, L_0x1c48130, L_0x1c47f40, C4<0>, C4<0>;
L_0x1c482f0 .functor AND 1, L_0x1c48130, L_0x1c47f40, C4<1>, C4<1>;
L_0x1c48360 .functor AND 1, L_0x1c48e70, L_0x1c35650, C4<1>, C4<1>;
L_0x1bd4060 .functor OR 1, L_0x1c482f0, L_0x1c48360, C4<0>, C4<0>;
v0x1bd21f0_0 .net "A", 0 0, L_0x1c48e70;  alias, 1 drivers
v0x1bd22d0_0 .net "B", 0 0, L_0x1c35650;  alias, 1 drivers
v0x1bd2390_0 .net "carryin", 0 0, L_0x1c47f40;  alias, 1 drivers
v0x1bd2460_0 .net "carryout", 0 0, L_0x1bd4060;  alias, 1 drivers
v0x1bd2520_0 .net "out1", 0 0, L_0x1c48130;  1 drivers
v0x1bd2630_0 .net "out2", 0 0, L_0x1c482f0;  1 drivers
v0x1bd26f0_0 .net "out3", 0 0, L_0x1c48360;  1 drivers
v0x1bd27b0_0 .net "sum", 0 0, L_0x1c48230;  alias, 1 drivers
S_0x1bd2910 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd4540 .functor AND 1, L_0x1c48e70, L_0x1c47ea0, C4<1>, C4<1>;
v0x1bd2b50_0 .net "A", 0 0, L_0x1c48e70;  alias, 1 drivers
v0x1bd2c10_0 .net "B", 0 0, L_0x1c47ea0;  alias, 1 drivers
v0x1bd2cb0_0 .net "out", 0 0, L_0x1bd4540;  1 drivers
S_0x1bd2e00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bd3050_0 .net "I", 7 0, L_0x1c48b50;  alias, 1 drivers
v0x1bd3130_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bd31f0_0 .net "out", 0 0, L_0x1c488a0;  alias, 1 drivers
L_0x1c488a0 .part/v L_0x1c48b50, v0x1b1bbf0_0, 1;
S_0x1bd3340 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c48750 .functor NAND 1, L_0x1c48e70, L_0x1c47ea0, C4<1>, C4<1>;
v0x1bd3560_0 .net "A", 0 0, L_0x1c48e70;  alias, 1 drivers
v0x1bd3670_0 .net "B", 0 0, L_0x1c47ea0;  alias, 1 drivers
v0x1bd3730_0 .net "out", 0 0, L_0x1c48750;  1 drivers
S_0x1bd3840 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c487c0 .functor NOR 1, L_0x1c48e70, L_0x1c47ea0, C4<0>, C4<0>;
v0x1bd3ab0_0 .net "A", 0 0, L_0x1c48e70;  alias, 1 drivers
v0x1bd3b70_0 .net "B", 0 0, L_0x1c47ea0;  alias, 1 drivers
v0x1bd3c80_0 .net "out", 0 0, L_0x1c487c0;  1 drivers
S_0x1bd3d80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c48830 .functor OR 1, L_0x1c48e70, L_0x1c47ea0, C4<0>, C4<0>;
v0x1bd3fa0_0 .net "A", 0 0, L_0x1c48e70;  alias, 1 drivers
v0x1bd40f0_0 .net "B", 0 0, L_0x1c47ea0;  alias, 1 drivers
v0x1bd41b0_0 .net "out", 0 0, L_0x1c48830;  1 drivers
S_0x1bd42b0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c35650 .functor XOR 1, L_0x1c47ea0, L_0x1c46f90, C4<0>, C4<0>;
v0x1bd4480_0 .net "A", 0 0, L_0x1c47ea0;  alias, 1 drivers
v0x1bd45d0_0 .net "B", 0 0, L_0x1c46f90;  1 drivers
v0x1bd4690_0 .net "out", 0 0, L_0x1c35650;  alias, 1 drivers
S_0x1bd47d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bd1ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c485d0 .functor XOR 1, L_0x1c48e70, L_0x1c47ea0, C4<0>, C4<0>;
v0x1bd49a0_0 .net "A", 0 0, L_0x1c48e70;  alias, 1 drivers
v0x1bd4a60_0 .net "B", 0 0, L_0x1c47ea0;  alias, 1 drivers
v0x1bd4b20_0 .net "out", 0 0, L_0x1c485d0;  1 drivers
S_0x1bd56b0 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c49b10 .functor BUFZ 1, L_0x1c49360, C4<0>, C4<0>, C4<0>;
L_0x1c49b80 .functor BUFZ 1, L_0x1c49360, C4<0>, C4<0>, C4<0>;
v0x1bd8620_0 .net "A", 0 0, L_0x1c49fa0;  1 drivers
v0x1bd86c0_0 .net "B", 0 0, L_0x1c4a040;  1 drivers
v0x1bd8780_0 .net "I", 7 0, L_0x1c49c80;  1 drivers
v0x1bd8880_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bd8920_0 .net *"_s15", 0 0, L_0x1c49b10;  1 drivers
v0x1bd8a30_0 .net *"_s19", 0 0, L_0x1c49b80;  1 drivers
L_0x7f20eb31d9a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bd8b10_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d9a8;  1 drivers
v0x1bd8bf0_0 .net "addORsub", 0 0, L_0x1c49360;  1 drivers
v0x1bd8c90_0 .net "carryin", 0 0, L_0x1c48f10;  1 drivers
v0x1bd8df0_0 .net "carryout", 0 0, L_0x1bd7a30;  1 drivers
v0x1bd8ec0_0 .net "modB", 0 0, L_0x1c48070;  1 drivers
v0x1bd8f60_0 .net "out", 0 0, L_0x1c499d0;  1 drivers
L_0x1c491c0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c49c80_0_0 .concat8 [ 1 1 1 1], L_0x1c49b10, L_0x1c49b80, L_0x1c49700, L_0x7f20eb31d9a8;
LS_0x1c49c80_0_4 .concat8 [ 1 1 1 1], L_0x1bd7f10, L_0x1c49880, L_0x1c498f0, L_0x1c49960;
L_0x1c49c80 .concat8 [ 4 4 0 0], LS_0x1c49c80_0_0, LS_0x1c49c80_0_4;
S_0x1bd5920 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c49260 .functor XOR 1, L_0x1c49fa0, L_0x1c48070, C4<0>, C4<0>;
L_0x1c49360 .functor XOR 1, L_0x1c49260, L_0x1c48f10, C4<0>, C4<0>;
L_0x1c49420 .functor AND 1, L_0x1c49260, L_0x1c48f10, C4<1>, C4<1>;
L_0x1c49490 .functor AND 1, L_0x1c49fa0, L_0x1c48070, C4<1>, C4<1>;
L_0x1bd7a30 .functor OR 1, L_0x1c49420, L_0x1c49490, C4<0>, C4<0>;
v0x1bd5bc0_0 .net "A", 0 0, L_0x1c49fa0;  alias, 1 drivers
v0x1bd5ca0_0 .net "B", 0 0, L_0x1c48070;  alias, 1 drivers
v0x1bd5d60_0 .net "carryin", 0 0, L_0x1c48f10;  alias, 1 drivers
v0x1bd5e30_0 .net "carryout", 0 0, L_0x1bd7a30;  alias, 1 drivers
v0x1bd5ef0_0 .net "out1", 0 0, L_0x1c49260;  1 drivers
v0x1bd6000_0 .net "out2", 0 0, L_0x1c49420;  1 drivers
v0x1bd60c0_0 .net "out3", 0 0, L_0x1c49490;  1 drivers
v0x1bd6180_0 .net "sum", 0 0, L_0x1c49360;  alias, 1 drivers
S_0x1bd62e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd7f10 .functor AND 1, L_0x1c49fa0, L_0x1c4a040, C4<1>, C4<1>;
v0x1bd6520_0 .net "A", 0 0, L_0x1c49fa0;  alias, 1 drivers
v0x1bd65e0_0 .net "B", 0 0, L_0x1c4a040;  alias, 1 drivers
v0x1bd6680_0 .net "out", 0 0, L_0x1bd7f10;  1 drivers
S_0x1bd67d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bd6a20_0 .net "I", 7 0, L_0x1c49c80;  alias, 1 drivers
v0x1bd6b00_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bd6bc0_0 .net "out", 0 0, L_0x1c499d0;  alias, 1 drivers
L_0x1c499d0 .part/v L_0x1c49c80, v0x1b1bbf0_0, 1;
S_0x1bd6d10 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c49880 .functor NAND 1, L_0x1c49fa0, L_0x1c4a040, C4<1>, C4<1>;
v0x1bd6f30_0 .net "A", 0 0, L_0x1c49fa0;  alias, 1 drivers
v0x1bd7040_0 .net "B", 0 0, L_0x1c4a040;  alias, 1 drivers
v0x1bd7100_0 .net "out", 0 0, L_0x1c49880;  1 drivers
S_0x1bd7210 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c498f0 .functor NOR 1, L_0x1c49fa0, L_0x1c4a040, C4<0>, C4<0>;
v0x1bd7480_0 .net "A", 0 0, L_0x1c49fa0;  alias, 1 drivers
v0x1bd7540_0 .net "B", 0 0, L_0x1c4a040;  alias, 1 drivers
v0x1bd7650_0 .net "out", 0 0, L_0x1c498f0;  1 drivers
S_0x1bd7750 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c49960 .functor OR 1, L_0x1c49fa0, L_0x1c4a040, C4<0>, C4<0>;
v0x1bd7970_0 .net "A", 0 0, L_0x1c49fa0;  alias, 1 drivers
v0x1bd7ac0_0 .net "B", 0 0, L_0x1c4a040;  alias, 1 drivers
v0x1bd7b80_0 .net "out", 0 0, L_0x1c49960;  1 drivers
S_0x1bd7c80 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c48070 .functor XOR 1, L_0x1c4a040, L_0x1c491c0, C4<0>, C4<0>;
v0x1bd7e50_0 .net "A", 0 0, L_0x1c4a040;  alias, 1 drivers
v0x1bd7fa0_0 .net "B", 0 0, L_0x1c491c0;  1 drivers
v0x1bd8060_0 .net "out", 0 0, L_0x1c48070;  alias, 1 drivers
S_0x1bd81a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bd56b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c49700 .functor XOR 1, L_0x1c49fa0, L_0x1c4a040, C4<0>, C4<0>;
v0x1bd8370_0 .net "A", 0 0, L_0x1c49fa0;  alias, 1 drivers
v0x1bd8430_0 .net "B", 0 0, L_0x1c4a040;  alias, 1 drivers
v0x1bd84f0_0 .net "out", 0 0, L_0x1c49700;  1 drivers
S_0x1bd9080 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c4ac30 .functor BUFZ 1, L_0x1c4a430, C4<0>, C4<0>, C4<0>;
L_0x1c4aca0 .functor BUFZ 1, L_0x1c4a430, C4<0>, C4<0>, C4<0>;
v0x1bdbff0_0 .net "A", 0 0, L_0x1c4b0c0;  1 drivers
v0x1bdc090_0 .net "B", 0 0, L_0x1c4a0e0;  1 drivers
v0x1bdc150_0 .net "I", 7 0, L_0x1c4ada0;  1 drivers
v0x1bdc250_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bdc2f0_0 .net *"_s15", 0 0, L_0x1c4ac30;  1 drivers
v0x1bdc400_0 .net *"_s19", 0 0, L_0x1c4aca0;  1 drivers
L_0x7f20eb31d9f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bdc4e0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d9f0;  1 drivers
v0x1bdc5c0_0 .net "addORsub", 0 0, L_0x1c4a430;  1 drivers
v0x1bdc660_0 .net "carryin", 0 0, L_0x1c38ee0;  1 drivers
v0x1bdc7c0_0 .net "carryout", 0 0, L_0x1bdb400;  1 drivers
v0x1bdc890_0 .net "modB", 0 0, L_0x1c49040;  1 drivers
v0x1bdc930_0 .net "out", 0 0, L_0x1c4aaf0;  1 drivers
L_0x1c490b0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c4ada0_0_0 .concat8 [ 1 1 1 1], L_0x1c4ac30, L_0x1c4aca0, L_0x1c4a820, L_0x7f20eb31d9f0;
LS_0x1c4ada0_0_4 .concat8 [ 1 1 1 1], L_0x1bdb8e0, L_0x1c4a9a0, L_0x1c4aa10, L_0x1c4aa80;
L_0x1c4ada0 .concat8 [ 4 4 0 0], LS_0x1c4ada0_0_0, LS_0x1c4ada0_0_4;
S_0x1bd92f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c49150 .functor XOR 1, L_0x1c4b0c0, L_0x1c49040, C4<0>, C4<0>;
L_0x1c4a430 .functor XOR 1, L_0x1c49150, L_0x1c38ee0, C4<0>, C4<0>;
L_0x1c4a540 .functor AND 1, L_0x1c49150, L_0x1c38ee0, C4<1>, C4<1>;
L_0x1c4a5b0 .functor AND 1, L_0x1c4b0c0, L_0x1c49040, C4<1>, C4<1>;
L_0x1bdb400 .functor OR 1, L_0x1c4a540, L_0x1c4a5b0, C4<0>, C4<0>;
v0x1bd9590_0 .net "A", 0 0, L_0x1c4b0c0;  alias, 1 drivers
v0x1bd9670_0 .net "B", 0 0, L_0x1c49040;  alias, 1 drivers
v0x1bd9730_0 .net "carryin", 0 0, L_0x1c38ee0;  alias, 1 drivers
v0x1bd9800_0 .net "carryout", 0 0, L_0x1bdb400;  alias, 1 drivers
v0x1bd98c0_0 .net "out1", 0 0, L_0x1c49150;  1 drivers
v0x1bd99d0_0 .net "out2", 0 0, L_0x1c4a540;  1 drivers
v0x1bd9a90_0 .net "out3", 0 0, L_0x1c4a5b0;  1 drivers
v0x1bd9b50_0 .net "sum", 0 0, L_0x1c4a430;  alias, 1 drivers
S_0x1bd9cb0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdb8e0 .functor AND 1, L_0x1c4b0c0, L_0x1c4a0e0, C4<1>, C4<1>;
v0x1bd9ef0_0 .net "A", 0 0, L_0x1c4b0c0;  alias, 1 drivers
v0x1bd9fb0_0 .net "B", 0 0, L_0x1c4a0e0;  alias, 1 drivers
v0x1bda050_0 .net "out", 0 0, L_0x1bdb8e0;  1 drivers
S_0x1bda1a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bda3f0_0 .net "I", 7 0, L_0x1c4ada0;  alias, 1 drivers
v0x1bda4d0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bda590_0 .net "out", 0 0, L_0x1c4aaf0;  alias, 1 drivers
L_0x1c4aaf0 .part/v L_0x1c4ada0, v0x1b1bbf0_0, 1;
S_0x1bda6e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4a9a0 .functor NAND 1, L_0x1c4b0c0, L_0x1c4a0e0, C4<1>, C4<1>;
v0x1bda900_0 .net "A", 0 0, L_0x1c4b0c0;  alias, 1 drivers
v0x1bdaa10_0 .net "B", 0 0, L_0x1c4a0e0;  alias, 1 drivers
v0x1bdaad0_0 .net "out", 0 0, L_0x1c4a9a0;  1 drivers
S_0x1bdabe0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4aa10 .functor NOR 1, L_0x1c4b0c0, L_0x1c4a0e0, C4<0>, C4<0>;
v0x1bdae50_0 .net "A", 0 0, L_0x1c4b0c0;  alias, 1 drivers
v0x1bdaf10_0 .net "B", 0 0, L_0x1c4a0e0;  alias, 1 drivers
v0x1bdb020_0 .net "out", 0 0, L_0x1c4aa10;  1 drivers
S_0x1bdb120 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4aa80 .functor OR 1, L_0x1c4b0c0, L_0x1c4a0e0, C4<0>, C4<0>;
v0x1bdb340_0 .net "A", 0 0, L_0x1c4b0c0;  alias, 1 drivers
v0x1bdb490_0 .net "B", 0 0, L_0x1c4a0e0;  alias, 1 drivers
v0x1bdb550_0 .net "out", 0 0, L_0x1c4aa80;  1 drivers
S_0x1bdb650 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c49040 .functor XOR 1, L_0x1c4a0e0, L_0x1c490b0, C4<0>, C4<0>;
v0x1bdb820_0 .net "A", 0 0, L_0x1c4a0e0;  alias, 1 drivers
v0x1bdb970_0 .net "B", 0 0, L_0x1c490b0;  1 drivers
v0x1bdba30_0 .net "out", 0 0, L_0x1c49040;  alias, 1 drivers
S_0x1bdbb70 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bd9080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4a820 .functor XOR 1, L_0x1c4b0c0, L_0x1c4a0e0, C4<0>, C4<0>;
v0x1bdbd40_0 .net "A", 0 0, L_0x1c4b0c0;  alias, 1 drivers
v0x1bdbe00_0 .net "B", 0 0, L_0x1c4a0e0;  alias, 1 drivers
v0x1bdbec0_0 .net "out", 0 0, L_0x1c4a820;  1 drivers
S_0x1bdca50 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c2d250 .functor BUFZ 1, L_0x1c2c9b0, C4<0>, C4<0>, C4<0>;
L_0x1c2d2e0 .functor BUFZ 1, L_0x1c2c9b0, C4<0>, C4<0>, C4<0>;
v0x1bdf9c0_0 .net "A", 0 0, L_0x1c2d720;  1 drivers
v0x1bdfa60_0 .net "B", 0 0, L_0x1c2d7c0;  1 drivers
v0x1bdfb20_0 .net "I", 7 0, L_0x1c2d400;  1 drivers
v0x1bdfc20_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bdfcc0_0 .net *"_s15", 0 0, L_0x1c2d250;  1 drivers
v0x1bdfdd0_0 .net *"_s19", 0 0, L_0x1c2d2e0;  1 drivers
L_0x7f20eb31d2a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bdfeb0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d2a0;  1 drivers
v0x1bdff90_0 .net "addORsub", 0 0, L_0x1c2c9b0;  1 drivers
v0x1be0030_0 .net "carryin", 0 0, L_0x1c2d860;  1 drivers
v0x1be0190_0 .net "carryout", 0 0, L_0x1bdedd0;  1 drivers
v0x1be0260_0 .net "modB", 0 0, L_0x1c2c730;  1 drivers
v0x1be0300_0 .net "out", 0 0, L_0x1c2d0f0;  1 drivers
L_0x1c2c7a0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c2d400_0_0 .concat8 [ 1 1 1 1], L_0x1c2d250, L_0x1c2d2e0, L_0x1c2cde0, L_0x7f20eb31d2a0;
LS_0x1c2d400_0_4 .concat8 [ 1 1 1 1], L_0x1bdf2b0, L_0x1c2cf60, L_0x1c2cfd0, L_0x1c2d060;
L_0x1c2d400 .concat8 [ 4 4 0 0], LS_0x1c2d400_0_0, LS_0x1c2d400_0_4;
S_0x1bdccc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c2c890 .functor XOR 1, L_0x1c2d720, L_0x1c2c730, C4<0>, C4<0>;
L_0x1c2c9b0 .functor XOR 1, L_0x1c2c890, L_0x1c2d860, C4<0>, C4<0>;
L_0x1c2cae0 .functor AND 1, L_0x1c2c890, L_0x1c2d860, C4<1>, C4<1>;
L_0x1c2cb70 .functor AND 1, L_0x1c2d720, L_0x1c2c730, C4<1>, C4<1>;
L_0x1bdedd0 .functor OR 1, L_0x1c2cae0, L_0x1c2cb70, C4<0>, C4<0>;
v0x1bdcf60_0 .net "A", 0 0, L_0x1c2d720;  alias, 1 drivers
v0x1bdd040_0 .net "B", 0 0, L_0x1c2c730;  alias, 1 drivers
v0x1bdd100_0 .net "carryin", 0 0, L_0x1c2d860;  alias, 1 drivers
v0x1bdd1d0_0 .net "carryout", 0 0, L_0x1bdedd0;  alias, 1 drivers
v0x1bdd290_0 .net "out1", 0 0, L_0x1c2c890;  1 drivers
v0x1bdd3a0_0 .net "out2", 0 0, L_0x1c2cae0;  1 drivers
v0x1bdd460_0 .net "out3", 0 0, L_0x1c2cb70;  1 drivers
v0x1bdd520_0 .net "sum", 0 0, L_0x1c2c9b0;  alias, 1 drivers
S_0x1bdd680 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdf2b0 .functor AND 1, L_0x1c2d720, L_0x1c2d7c0, C4<1>, C4<1>;
v0x1bdd8c0_0 .net "A", 0 0, L_0x1c2d720;  alias, 1 drivers
v0x1bdd980_0 .net "B", 0 0, L_0x1c2d7c0;  alias, 1 drivers
v0x1bdda20_0 .net "out", 0 0, L_0x1bdf2b0;  1 drivers
S_0x1bddb70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bdddc0_0 .net "I", 7 0, L_0x1c2d400;  alias, 1 drivers
v0x1bddea0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bddf60_0 .net "out", 0 0, L_0x1c2d0f0;  alias, 1 drivers
L_0x1c2d0f0 .part/v L_0x1c2d400, v0x1b1bbf0_0, 1;
S_0x1bde0b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2cf60 .functor NAND 1, L_0x1c2d720, L_0x1c2d7c0, C4<1>, C4<1>;
v0x1bde2d0_0 .net "A", 0 0, L_0x1c2d720;  alias, 1 drivers
v0x1bde3e0_0 .net "B", 0 0, L_0x1c2d7c0;  alias, 1 drivers
v0x1bde4a0_0 .net "out", 0 0, L_0x1c2cf60;  1 drivers
S_0x1bde5b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2cfd0 .functor NOR 1, L_0x1c2d720, L_0x1c2d7c0, C4<0>, C4<0>;
v0x1bde820_0 .net "A", 0 0, L_0x1c2d720;  alias, 1 drivers
v0x1bde8e0_0 .net "B", 0 0, L_0x1c2d7c0;  alias, 1 drivers
v0x1bde9f0_0 .net "out", 0 0, L_0x1c2cfd0;  1 drivers
S_0x1bdeaf0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2d060 .functor OR 1, L_0x1c2d720, L_0x1c2d7c0, C4<0>, C4<0>;
v0x1bded10_0 .net "A", 0 0, L_0x1c2d720;  alias, 1 drivers
v0x1bdee60_0 .net "B", 0 0, L_0x1c2d7c0;  alias, 1 drivers
v0x1bdef20_0 .net "out", 0 0, L_0x1c2d060;  1 drivers
S_0x1bdf020 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2c730 .functor XOR 1, L_0x1c2d7c0, L_0x1c2c7a0, C4<0>, C4<0>;
v0x1bdf1f0_0 .net "A", 0 0, L_0x1c2d7c0;  alias, 1 drivers
v0x1bdf340_0 .net "B", 0 0, L_0x1c2c7a0;  1 drivers
v0x1bdf400_0 .net "out", 0 0, L_0x1c2c730;  alias, 1 drivers
S_0x1bdf540 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bdca50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2cde0 .functor XOR 1, L_0x1c2d720, L_0x1c2d7c0, C4<0>, C4<0>;
v0x1bdf710_0 .net "A", 0 0, L_0x1c2d720;  alias, 1 drivers
v0x1bdf7d0_0 .net "B", 0 0, L_0x1c2d7c0;  alias, 1 drivers
v0x1bdf890_0 .net "out", 0 0, L_0x1c2cde0;  1 drivers
S_0x1be0420 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bfda40 .functor BUFZ 1, L_0x1c4a2b0, C4<0>, C4<0>, C4<0>;
L_0x1bfdad0 .functor BUFZ 1, L_0x1c4a2b0, C4<0>, C4<0>, C4<0>;
v0x1be3390_0 .net "A", 0 0, L_0x1c4ce70;  1 drivers
v0x1be3430_0 .net "B", 0 0, L_0x1c4b840;  1 drivers
v0x1be34f0_0 .net "I", 7 0, L_0x1bfdbf0;  1 drivers
v0x1be35f0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1be3690_0 .net *"_s15", 0 0, L_0x1bfda40;  1 drivers
v0x1be37a0_0 .net *"_s19", 0 0, L_0x1bfdad0;  1 drivers
L_0x7f20eb31da38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1be3880_0 .net/2s *"_s23", 0 0, L_0x7f20eb31da38;  1 drivers
v0x1be3960_0 .net "addORsub", 0 0, L_0x1c4a2b0;  1 drivers
v0x1be3a00_0 .net "carryin", 0 0, L_0x1c4b8e0;  1 drivers
v0x1be3b60_0 .net "carryout", 0 0, L_0x1be27a0;  1 drivers
v0x1be3c30_0 .net "modB", 0 0, L_0x1c39010;  1 drivers
v0x1be3cd0_0 .net "out", 0 0, L_0x1bfd8e0;  1 drivers
L_0x1c4a180 .part v0x1b1bbf0_0, 0, 1;
LS_0x1bfdbf0_0_0 .concat8 [ 1 1 1 1], L_0x1bfda40, L_0x1bfdad0, L_0x1bfd5f0, L_0x7f20eb31da38;
LS_0x1bfdbf0_0_4 .concat8 [ 1 1 1 1], L_0x1be2c80, L_0x1bfd770, L_0x1bfd7e0, L_0x1bfd850;
L_0x1bfdbf0 .concat8 [ 4 4 0 0], LS_0x1bfdbf0_0_0, LS_0x1bfdbf0_0_4;
S_0x1be0690 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c39080 .functor XOR 1, L_0x1c4ce70, L_0x1c39010, C4<0>, C4<0>;
L_0x1c4a2b0 .functor XOR 1, L_0x1c39080, L_0x1c4b8e0, C4<0>, C4<0>;
L_0x1c4b160 .functor AND 1, L_0x1c39080, L_0x1c4b8e0, C4<1>, C4<1>;
L_0x1c4b1f0 .functor AND 1, L_0x1c4ce70, L_0x1c39010, C4<1>, C4<1>;
L_0x1be27a0 .functor OR 1, L_0x1c4b160, L_0x1c4b1f0, C4<0>, C4<0>;
v0x1be0930_0 .net "A", 0 0, L_0x1c4ce70;  alias, 1 drivers
v0x1be0a10_0 .net "B", 0 0, L_0x1c39010;  alias, 1 drivers
v0x1be0ad0_0 .net "carryin", 0 0, L_0x1c4b8e0;  alias, 1 drivers
v0x1be0ba0_0 .net "carryout", 0 0, L_0x1be27a0;  alias, 1 drivers
v0x1be0c60_0 .net "out1", 0 0, L_0x1c39080;  1 drivers
v0x1be0d70_0 .net "out2", 0 0, L_0x1c4b160;  1 drivers
v0x1be0e30_0 .net "out3", 0 0, L_0x1c4b1f0;  1 drivers
v0x1be0ef0_0 .net "sum", 0 0, L_0x1c4a2b0;  alias, 1 drivers
S_0x1be1050 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be2c80 .functor AND 1, L_0x1c4ce70, L_0x1c4b840, C4<1>, C4<1>;
v0x1be1290_0 .net "A", 0 0, L_0x1c4ce70;  alias, 1 drivers
v0x1be1350_0 .net "B", 0 0, L_0x1c4b840;  alias, 1 drivers
v0x1be13f0_0 .net "out", 0 0, L_0x1be2c80;  1 drivers
S_0x1be1540 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1be1790_0 .net "I", 7 0, L_0x1bfdbf0;  alias, 1 drivers
v0x1be1870_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1be1930_0 .net "out", 0 0, L_0x1bfd8e0;  alias, 1 drivers
L_0x1bfd8e0 .part/v L_0x1bfdbf0, v0x1b1bbf0_0, 1;
S_0x1be1a80 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bfd770 .functor NAND 1, L_0x1c4ce70, L_0x1c4b840, C4<1>, C4<1>;
v0x1be1ca0_0 .net "A", 0 0, L_0x1c4ce70;  alias, 1 drivers
v0x1be1db0_0 .net "B", 0 0, L_0x1c4b840;  alias, 1 drivers
v0x1be1e70_0 .net "out", 0 0, L_0x1bfd770;  1 drivers
S_0x1be1f80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bfd7e0 .functor NOR 1, L_0x1c4ce70, L_0x1c4b840, C4<0>, C4<0>;
v0x1be21f0_0 .net "A", 0 0, L_0x1c4ce70;  alias, 1 drivers
v0x1be22b0_0 .net "B", 0 0, L_0x1c4b840;  alias, 1 drivers
v0x1be23c0_0 .net "out", 0 0, L_0x1bfd7e0;  1 drivers
S_0x1be24c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bfd850 .functor OR 1, L_0x1c4ce70, L_0x1c4b840, C4<0>, C4<0>;
v0x1be26e0_0 .net "A", 0 0, L_0x1c4ce70;  alias, 1 drivers
v0x1be2830_0 .net "B", 0 0, L_0x1c4b840;  alias, 1 drivers
v0x1be28f0_0 .net "out", 0 0, L_0x1bfd850;  1 drivers
S_0x1be29f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c39010 .functor XOR 1, L_0x1c4b840, L_0x1c4a180, C4<0>, C4<0>;
v0x1be2bc0_0 .net "A", 0 0, L_0x1c4b840;  alias, 1 drivers
v0x1be2d10_0 .net "B", 0 0, L_0x1c4a180;  1 drivers
v0x1be2dd0_0 .net "out", 0 0, L_0x1c39010;  alias, 1 drivers
S_0x1be2f10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1be0420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bfd5f0 .functor XOR 1, L_0x1c4ce70, L_0x1c4b840, C4<0>, C4<0>;
v0x1be30e0_0 .net "A", 0 0, L_0x1c4ce70;  alias, 1 drivers
v0x1be31a0_0 .net "B", 0 0, L_0x1c4b840;  alias, 1 drivers
v0x1be3260_0 .net "out", 0 0, L_0x1bfd5f0;  1 drivers
S_0x1be3df0 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x1c4ba10 .functor BUFZ 1, L_0x1c4d4b0, C4<0>, C4<0>, C4<0>;
L_0x1c4ba80 .functor BUFZ 1, L_0x1c4d4b0, C4<0>, C4<0>, C4<0>;
v0x1be7790_0 .net "A", 0 0, L_0x1c4e200;  1 drivers
v0x1be7830_0 .net "B", 0 0, L_0x1c4cf10;  1 drivers
v0x1be78f0_0 .net "I", 7 0, L_0x1c4dce0;  1 drivers
v0x1be79f0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1be7a90_0 .net *"_s3", 0 0, L_0x1c4ba10;  1 drivers
v0x1be7ba0_0 .net *"_s7", 0 0, L_0x1c4ba80;  1 drivers
v0x1be7c80_0 .net "as", 0 0, L_0x1c4d4b0;  1 drivers
v0x1be7d70_0 .net "carryin", 0 0, L_0x1c4cfb0;  1 drivers
v0x1be7e60_0 .net "carryout", 0 0, L_0x1be6180;  alias, 1 drivers
v0x1be7f90_0 .net "modB", 0 0, L_0x1c4d2a0;  1 drivers
v0x1be8080_0 .net "out", 0 0, L_0x1c4dac0;  1 drivers
v0x1be8120_0 .net "overflow", 0 0, L_0x1c4dc00;  alias, 1 drivers
L_0x1c4d310 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c4dce0_0_0 .concat8 [ 1 1 1 1], L_0x1c4ba10, L_0x1c4ba80, L_0x1c4d7f0, L_0x1c4dc70;
LS_0x1c4dce0_0_4 .concat8 [ 1 1 1 1], L_0x1be6660, L_0x1c4d970, L_0x1c4d9e0, L_0x1c4da50;
L_0x1c4dce0 .concat8 [ 4 4 0 0], LS_0x1c4dce0_0_0, LS_0x1c4dce0_0_4;
S_0x1be4070 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c4d3b0 .functor XOR 1, L_0x1c4e200, L_0x1c4d2a0, C4<0>, C4<0>;
L_0x1c4d4b0 .functor XOR 1, L_0x1c4d3b0, L_0x1c4cfb0, C4<0>, C4<0>;
L_0x1c4d520 .functor AND 1, L_0x1c4d3b0, L_0x1c4cfb0, C4<1>, C4<1>;
L_0x1c4d620 .functor AND 1, L_0x1c4e200, L_0x1c4d2a0, C4<1>, C4<1>;
L_0x1be6180 .functor OR 1, L_0x1c4d520, L_0x1c4d620, C4<0>, C4<0>;
v0x1be4310_0 .net "A", 0 0, L_0x1c4e200;  alias, 1 drivers
v0x1be43f0_0 .net "B", 0 0, L_0x1c4d2a0;  alias, 1 drivers
v0x1be44b0_0 .net "carryin", 0 0, L_0x1c4cfb0;  alias, 1 drivers
v0x1be4580_0 .net "carryout", 0 0, L_0x1be6180;  alias, 1 drivers
v0x1be4640_0 .net "out1", 0 0, L_0x1c4d3b0;  1 drivers
v0x1be4750_0 .net "out2", 0 0, L_0x1c4d520;  1 drivers
v0x1be4810_0 .net "out3", 0 0, L_0x1c4d620;  1 drivers
v0x1be48d0_0 .net "sum", 0 0, L_0x1c4d4b0;  alias, 1 drivers
S_0x1be4a30 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be6660 .functor AND 1, L_0x1c4e200, L_0x1c4cf10, C4<1>, C4<1>;
v0x1be4c70_0 .net "A", 0 0, L_0x1c4e200;  alias, 1 drivers
v0x1be4d30_0 .net "B", 0 0, L_0x1c4cf10;  alias, 1 drivers
v0x1be4dd0_0 .net "out", 0 0, L_0x1be6660;  1 drivers
S_0x1be4f20 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1be5170_0 .net "I", 7 0, L_0x1c4dce0;  alias, 1 drivers
v0x1be5250_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1be5310_0 .net "out", 0 0, L_0x1c4dac0;  alias, 1 drivers
L_0x1c4dac0 .part/v L_0x1c4dce0, v0x1b1bbf0_0, 1;
S_0x1be5460 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4d970 .functor NAND 1, L_0x1c4e200, L_0x1c4cf10, C4<1>, C4<1>;
v0x1be5680_0 .net "A", 0 0, L_0x1c4e200;  alias, 1 drivers
v0x1be5790_0 .net "B", 0 0, L_0x1c4cf10;  alias, 1 drivers
v0x1be5850_0 .net "out", 0 0, L_0x1c4d970;  1 drivers
S_0x1be5960 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4d9e0 .functor NOR 1, L_0x1c4e200, L_0x1c4cf10, C4<0>, C4<0>;
v0x1be5bd0_0 .net "A", 0 0, L_0x1c4e200;  alias, 1 drivers
v0x1be5c90_0 .net "B", 0 0, L_0x1c4cf10;  alias, 1 drivers
v0x1be5da0_0 .net "out", 0 0, L_0x1c4d9e0;  1 drivers
S_0x1be5ea0 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4da50 .functor OR 1, L_0x1c4e200, L_0x1c4cf10, C4<0>, C4<0>;
v0x1be60c0_0 .net "A", 0 0, L_0x1c4e200;  alias, 1 drivers
v0x1be6210_0 .net "B", 0 0, L_0x1c4cf10;  alias, 1 drivers
v0x1be62d0_0 .net "out", 0 0, L_0x1c4da50;  1 drivers
S_0x1be63d0 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4d2a0 .functor XOR 1, L_0x1c4cf10, L_0x1c4d310, C4<0>, C4<0>;
v0x1be65a0_0 .net "A", 0 0, L_0x1c4cf10;  alias, 1 drivers
v0x1be66f0_0 .net "B", 0 0, L_0x1c4d310;  1 drivers
v0x1be67b0_0 .net "out", 0 0, L_0x1c4d2a0;  alias, 1 drivers
S_0x1be68f0 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4d7f0 .functor XOR 1, L_0x1c4e200, L_0x1c4cf10, C4<0>, C4<0>;
v0x1be6ac0_0 .net "A", 0 0, L_0x1c4e200;  alias, 1 drivers
v0x1be6b80_0 .net "B", 0 0, L_0x1c4cf10;  alias, 1 drivers
v0x1be6c40_0 .net "out", 0 0, L_0x1c4d7f0;  1 drivers
S_0x1be6d70 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4dc00 .functor XOR 1, L_0x1c4cfb0, L_0x1be6180, C4<0>, C4<0>;
v0x1be6fd0_0 .net "A", 0 0, L_0x1c4cfb0;  alias, 1 drivers
v0x1be70c0_0 .net "B", 0 0, L_0x1be6180;  alias, 1 drivers
v0x1be7190_0 .net "out", 0 0, L_0x1c4dc00;  alias, 1 drivers
S_0x1be72a0 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0x1be3df0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c4dc70 .functor XOR 1, L_0x1c4dc00, L_0x1c4d4b0, C4<0>, C4<0>;
v0x1be74c0_0 .net "A", 0 0, L_0x1c4dc00;  alias, 1 drivers
v0x1be75b0_0 .net "B", 0 0, L_0x1c4d4b0;  alias, 1 drivers
v0x1be7680_0 .net "out", 0 0, L_0x1c4dc70;  1 drivers
S_0x1be8310 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c2e310 .functor BUFZ 1, L_0x1c2dc30, C4<0>, C4<0>, C4<0>;
L_0x1c2e380 .functor BUFZ 1, L_0x1c2dc30, C4<0>, C4<0>, C4<0>;
v0x1beb190_0 .net "A", 0 0, L_0x1c2e7a0;  1 drivers
v0x1beb230_0 .net "B", 0 0, L_0x1c2e840;  1 drivers
v0x1beb2f0_0 .net "I", 7 0, L_0x1c2e480;  1 drivers
v0x1beb3f0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1beb490_0 .net *"_s15", 0 0, L_0x1c2e310;  1 drivers
v0x1beb5a0_0 .net *"_s19", 0 0, L_0x1c2e380;  1 drivers
L_0x7f20eb31d2e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1beb680_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d2e8;  1 drivers
v0x1beb760_0 .net "addORsub", 0 0, L_0x1c2dc30;  1 drivers
v0x1beb800_0 .net "carryin", 0 0, L_0x1c2e960;  1 drivers
v0x1beb960_0 .net "carryout", 0 0, L_0x1bea5a0;  1 drivers
v0x1beba30_0 .net "modB", 0 0, L_0x1c2da00;  1 drivers
v0x1bebad0_0 .net "out", 0 0, L_0x1c2e220;  1 drivers
L_0x1c2da70 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c2e480_0_0 .concat8 [ 1 1 1 1], L_0x1c2e310, L_0x1c2e380, L_0x1c263e0, L_0x7f20eb31d2e8;
LS_0x1c2e480_0_4 .concat8 [ 1 1 1 1], L_0x1beaa80, L_0x1c2e0d0, L_0x1c2e140, L_0x1c2e1b0;
L_0x1c2e480 .concat8 [ 4 4 0 0], LS_0x1c2e480_0_0, LS_0x1c2e480_0_4;
S_0x1be8580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c2db10 .functor XOR 1, L_0x1c2e7a0, L_0x1c2da00, C4<0>, C4<0>;
L_0x1c2dc30 .functor XOR 1, L_0x1c2db10, L_0x1c2e960, C4<0>, C4<0>;
L_0x1c2dd10 .functor AND 1, L_0x1c2db10, L_0x1c2e960, C4<1>, C4<1>;
L_0x1c2dda0 .functor AND 1, L_0x1c2e7a0, L_0x1c2da00, C4<1>, C4<1>;
L_0x1bea5a0 .functor OR 1, L_0x1c2dd10, L_0x1c2dda0, C4<0>, C4<0>;
v0x1be87f0_0 .net "A", 0 0, L_0x1c2e7a0;  alias, 1 drivers
v0x1be88d0_0 .net "B", 0 0, L_0x1c2da00;  alias, 1 drivers
v0x1be8990_0 .net "carryin", 0 0, L_0x1c2e960;  alias, 1 drivers
v0x1be8a30_0 .net "carryout", 0 0, L_0x1bea5a0;  alias, 1 drivers
v0x1be8af0_0 .net "out1", 0 0, L_0x1c2db10;  1 drivers
v0x1be8c00_0 .net "out2", 0 0, L_0x1c2dd10;  1 drivers
v0x1be8cc0_0 .net "out3", 0 0, L_0x1c2dda0;  1 drivers
v0x1be8d80_0 .net "sum", 0 0, L_0x1c2dc30;  alias, 1 drivers
S_0x1be8ee0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1beaa80 .functor AND 1, L_0x1c2e7a0, L_0x1c2e840, C4<1>, C4<1>;
v0x1be9120_0 .net "A", 0 0, L_0x1c2e7a0;  alias, 1 drivers
v0x1be91e0_0 .net "B", 0 0, L_0x1c2e840;  alias, 1 drivers
v0x1be9280_0 .net "out", 0 0, L_0x1beaa80;  1 drivers
S_0x1be93a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1be95c0_0 .net "I", 7 0, L_0x1c2e480;  alias, 1 drivers
v0x1be96a0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1be9760_0 .net "out", 0 0, L_0x1c2e220;  alias, 1 drivers
L_0x1c2e220 .part/v L_0x1c2e480, v0x1b1bbf0_0, 1;
S_0x1be9880 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2e0d0 .functor NAND 1, L_0x1c2e7a0, L_0x1c2e840, C4<1>, C4<1>;
v0x1be9aa0_0 .net "A", 0 0, L_0x1c2e7a0;  alias, 1 drivers
v0x1be9bb0_0 .net "B", 0 0, L_0x1c2e840;  alias, 1 drivers
v0x1be9c70_0 .net "out", 0 0, L_0x1c2e0d0;  1 drivers
S_0x1be9d80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2e140 .functor NOR 1, L_0x1c2e7a0, L_0x1c2e840, C4<0>, C4<0>;
v0x1be9ff0_0 .net "A", 0 0, L_0x1c2e7a0;  alias, 1 drivers
v0x1bea0b0_0 .net "B", 0 0, L_0x1c2e840;  alias, 1 drivers
v0x1bea1c0_0 .net "out", 0 0, L_0x1c2e140;  1 drivers
S_0x1bea2c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2e1b0 .functor OR 1, L_0x1c2e7a0, L_0x1c2e840, C4<0>, C4<0>;
v0x1bea4e0_0 .net "A", 0 0, L_0x1c2e7a0;  alias, 1 drivers
v0x1bea630_0 .net "B", 0 0, L_0x1c2e840;  alias, 1 drivers
v0x1bea6f0_0 .net "out", 0 0, L_0x1c2e1b0;  1 drivers
S_0x1bea7f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2da00 .functor XOR 1, L_0x1c2e840, L_0x1c2da70, C4<0>, C4<0>;
v0x1bea9c0_0 .net "A", 0 0, L_0x1c2e840;  alias, 1 drivers
v0x1beab10_0 .net "B", 0 0, L_0x1c2da70;  1 drivers
v0x1beabd0_0 .net "out", 0 0, L_0x1c2da00;  alias, 1 drivers
S_0x1bead10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1be8310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c263e0 .functor XOR 1, L_0x1c2e7a0, L_0x1c2e840, C4<0>, C4<0>;
v0x1beaee0_0 .net "A", 0 0, L_0x1c2e7a0;  alias, 1 drivers
v0x1beafa0_0 .net "B", 0 0, L_0x1c2e840;  alias, 1 drivers
v0x1beb060_0 .net "out", 0 0, L_0x1c263e0;  1 drivers
S_0x1bebbf0 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c2f470 .functor BUFZ 1, L_0x1c2ecc0, C4<0>, C4<0>, C4<0>;
L_0x1c2f4e0 .functor BUFZ 1, L_0x1c2ecc0, C4<0>, C4<0>, C4<0>;
v0x1beeb60_0 .net "A", 0 0, L_0x1c2f900;  1 drivers
v0x1beec00_0 .net "B", 0 0, L_0x1c2fa30;  1 drivers
v0x1beecc0_0 .net "I", 7 0, L_0x1c2f5e0;  1 drivers
v0x1beedc0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1beee60_0 .net *"_s15", 0 0, L_0x1c2f470;  1 drivers
v0x1beef70_0 .net *"_s19", 0 0, L_0x1c2f4e0;  1 drivers
L_0x7f20eb31d330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bef050_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d330;  1 drivers
v0x1bef130_0 .net "addORsub", 0 0, L_0x1c2ecc0;  1 drivers
v0x1bef1d0_0 .net "carryin", 0 0, L_0x1c2fbe0;  1 drivers
v0x1bef330_0 .net "carryout", 0 0, L_0x1bedf70;  1 drivers
v0x1bef400_0 .net "modB", 0 0, L_0x1c2d990;  1 drivers
v0x1bef4a0_0 .net "out", 0 0, L_0x1c2f330;  1 drivers
L_0x1c2eb20 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c2f5e0_0_0 .concat8 [ 1 1 1 1], L_0x1c2f470, L_0x1c2f4e0, L_0x1c2f060, L_0x7f20eb31d330;
LS_0x1c2f5e0_0_4 .concat8 [ 1 1 1 1], L_0x1bee450, L_0x1c2f1e0, L_0x1c2f250, L_0x1c2f2c0;
L_0x1c2f5e0 .concat8 [ 4 4 0 0], LS_0x1c2f5e0_0_0, LS_0x1c2f5e0_0_4;
S_0x1bebe60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c2ebc0 .functor XOR 1, L_0x1c2f900, L_0x1c2d990, C4<0>, C4<0>;
L_0x1c2ecc0 .functor XOR 1, L_0x1c2ebc0, L_0x1c2fbe0, C4<0>, C4<0>;
L_0x1c2ed80 .functor AND 1, L_0x1c2ebc0, L_0x1c2fbe0, C4<1>, C4<1>;
L_0x1c2edf0 .functor AND 1, L_0x1c2f900, L_0x1c2d990, C4<1>, C4<1>;
L_0x1bedf70 .functor OR 1, L_0x1c2ed80, L_0x1c2edf0, C4<0>, C4<0>;
v0x1bec100_0 .net "A", 0 0, L_0x1c2f900;  alias, 1 drivers
v0x1bec1e0_0 .net "B", 0 0, L_0x1c2d990;  alias, 1 drivers
v0x1bec2a0_0 .net "carryin", 0 0, L_0x1c2fbe0;  alias, 1 drivers
v0x1bec370_0 .net "carryout", 0 0, L_0x1bedf70;  alias, 1 drivers
v0x1bec430_0 .net "out1", 0 0, L_0x1c2ebc0;  1 drivers
v0x1bec540_0 .net "out2", 0 0, L_0x1c2ed80;  1 drivers
v0x1bec600_0 .net "out3", 0 0, L_0x1c2edf0;  1 drivers
v0x1bec6c0_0 .net "sum", 0 0, L_0x1c2ecc0;  alias, 1 drivers
S_0x1bec820 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bee450 .functor AND 1, L_0x1c2f900, L_0x1c2fa30, C4<1>, C4<1>;
v0x1beca60_0 .net "A", 0 0, L_0x1c2f900;  alias, 1 drivers
v0x1becb20_0 .net "B", 0 0, L_0x1c2fa30;  alias, 1 drivers
v0x1becbc0_0 .net "out", 0 0, L_0x1bee450;  1 drivers
S_0x1becd10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1becf60_0 .net "I", 7 0, L_0x1c2f5e0;  alias, 1 drivers
v0x1bed040_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bed100_0 .net "out", 0 0, L_0x1c2f330;  alias, 1 drivers
L_0x1c2f330 .part/v L_0x1c2f5e0, v0x1b1bbf0_0, 1;
S_0x1bed250 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2f1e0 .functor NAND 1, L_0x1c2f900, L_0x1c2fa30, C4<1>, C4<1>;
v0x1bed470_0 .net "A", 0 0, L_0x1c2f900;  alias, 1 drivers
v0x1bed580_0 .net "B", 0 0, L_0x1c2fa30;  alias, 1 drivers
v0x1bed640_0 .net "out", 0 0, L_0x1c2f1e0;  1 drivers
S_0x1bed750 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2f250 .functor NOR 1, L_0x1c2f900, L_0x1c2fa30, C4<0>, C4<0>;
v0x1bed9c0_0 .net "A", 0 0, L_0x1c2f900;  alias, 1 drivers
v0x1beda80_0 .net "B", 0 0, L_0x1c2fa30;  alias, 1 drivers
v0x1bedb90_0 .net "out", 0 0, L_0x1c2f250;  1 drivers
S_0x1bedc90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2f2c0 .functor OR 1, L_0x1c2f900, L_0x1c2fa30, C4<0>, C4<0>;
v0x1bedeb0_0 .net "A", 0 0, L_0x1c2f900;  alias, 1 drivers
v0x1bee000_0 .net "B", 0 0, L_0x1c2fa30;  alias, 1 drivers
v0x1bee0c0_0 .net "out", 0 0, L_0x1c2f2c0;  1 drivers
S_0x1bee1c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2d990 .functor XOR 1, L_0x1c2fa30, L_0x1c2eb20, C4<0>, C4<0>;
v0x1bee390_0 .net "A", 0 0, L_0x1c2fa30;  alias, 1 drivers
v0x1bee4e0_0 .net "B", 0 0, L_0x1c2eb20;  1 drivers
v0x1bee5a0_0 .net "out", 0 0, L_0x1c2d990;  alias, 1 drivers
S_0x1bee6e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bebbf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2f060 .functor XOR 1, L_0x1c2f900, L_0x1c2fa30, C4<0>, C4<0>;
v0x1bee8b0_0 .net "A", 0 0, L_0x1c2f900;  alias, 1 drivers
v0x1bee970_0 .net "B", 0 0, L_0x1c2fa30;  alias, 1 drivers
v0x1beea30_0 .net "out", 0 0, L_0x1c2f060;  1 drivers
S_0x1bef5c0 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c306c0 .functor BUFZ 1, L_0x1c2fec0, C4<0>, C4<0>, C4<0>;
L_0x1c30730 .functor BUFZ 1, L_0x1c2fec0, C4<0>, C4<0>, C4<0>;
v0x1bf2530_0 .net "A", 0 0, L_0x1c30b50;  1 drivers
v0x1bf25d0_0 .net "B", 0 0, L_0x1c30bf0;  1 drivers
v0x1bf2690_0 .net "I", 7 0, L_0x1c30830;  1 drivers
v0x1bf2790_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bf2830_0 .net *"_s15", 0 0, L_0x1c306c0;  1 drivers
v0x1bf2940_0 .net *"_s19", 0 0, L_0x1c30730;  1 drivers
L_0x7f20eb31d378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bf2a20_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d378;  1 drivers
v0x1bf2b00_0 .net "addORsub", 0 0, L_0x1c2fec0;  1 drivers
v0x1bf2ba0_0 .net "carryin", 0 0, L_0x1c2fc80;  1 drivers
v0x1bf2d00_0 .net "carryout", 0 0, L_0x1bf1940;  1 drivers
v0x1bf2dd0_0 .net "modB", 0 0, L_0x1c2f9a0;  1 drivers
v0x1bf2e70_0 .net "out", 0 0, L_0x1c30580;  1 drivers
L_0x1c2fd20 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c30830_0_0 .concat8 [ 1 1 1 1], L_0x1c306c0, L_0x1c30730, L_0x1c302b0, L_0x7f20eb31d378;
LS_0x1c30830_0_4 .concat8 [ 1 1 1 1], L_0x1bf1e20, L_0x1c30430, L_0x1c304a0, L_0x1c30510;
L_0x1c30830 .concat8 [ 4 4 0 0], LS_0x1c30830_0_0, LS_0x1c30830_0_4;
S_0x1bef830 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c2fdc0 .functor XOR 1, L_0x1c30b50, L_0x1c2f9a0, C4<0>, C4<0>;
L_0x1c2fec0 .functor XOR 1, L_0x1c2fdc0, L_0x1c2fc80, C4<0>, C4<0>;
L_0x1c2ffd0 .functor AND 1, L_0x1c2fdc0, L_0x1c2fc80, C4<1>, C4<1>;
L_0x1c30040 .functor AND 1, L_0x1c30b50, L_0x1c2f9a0, C4<1>, C4<1>;
L_0x1bf1940 .functor OR 1, L_0x1c2ffd0, L_0x1c30040, C4<0>, C4<0>;
v0x1befad0_0 .net "A", 0 0, L_0x1c30b50;  alias, 1 drivers
v0x1befbb0_0 .net "B", 0 0, L_0x1c2f9a0;  alias, 1 drivers
v0x1befc70_0 .net "carryin", 0 0, L_0x1c2fc80;  alias, 1 drivers
v0x1befd40_0 .net "carryout", 0 0, L_0x1bf1940;  alias, 1 drivers
v0x1befe00_0 .net "out1", 0 0, L_0x1c2fdc0;  1 drivers
v0x1beff10_0 .net "out2", 0 0, L_0x1c2ffd0;  1 drivers
v0x1beffd0_0 .net "out3", 0 0, L_0x1c30040;  1 drivers
v0x1bf0090_0 .net "sum", 0 0, L_0x1c2fec0;  alias, 1 drivers
S_0x1bf01f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bf1e20 .functor AND 1, L_0x1c30b50, L_0x1c30bf0, C4<1>, C4<1>;
v0x1bf0430_0 .net "A", 0 0, L_0x1c30b50;  alias, 1 drivers
v0x1bf04f0_0 .net "B", 0 0, L_0x1c30bf0;  alias, 1 drivers
v0x1bf0590_0 .net "out", 0 0, L_0x1bf1e20;  1 drivers
S_0x1bf06e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bf0930_0 .net "I", 7 0, L_0x1c30830;  alias, 1 drivers
v0x1bf0a10_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bf0ad0_0 .net "out", 0 0, L_0x1c30580;  alias, 1 drivers
L_0x1c30580 .part/v L_0x1c30830, v0x1b1bbf0_0, 1;
S_0x1bf0c20 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c30430 .functor NAND 1, L_0x1c30b50, L_0x1c30bf0, C4<1>, C4<1>;
v0x1bf0e40_0 .net "A", 0 0, L_0x1c30b50;  alias, 1 drivers
v0x1bf0f50_0 .net "B", 0 0, L_0x1c30bf0;  alias, 1 drivers
v0x1bf1010_0 .net "out", 0 0, L_0x1c30430;  1 drivers
S_0x1bf1120 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c304a0 .functor NOR 1, L_0x1c30b50, L_0x1c30bf0, C4<0>, C4<0>;
v0x1bf1390_0 .net "A", 0 0, L_0x1c30b50;  alias, 1 drivers
v0x1bf1450_0 .net "B", 0 0, L_0x1c30bf0;  alias, 1 drivers
v0x1bf1560_0 .net "out", 0 0, L_0x1c304a0;  1 drivers
S_0x1bf1660 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c30510 .functor OR 1, L_0x1c30b50, L_0x1c30bf0, C4<0>, C4<0>;
v0x1bf1880_0 .net "A", 0 0, L_0x1c30b50;  alias, 1 drivers
v0x1bf19d0_0 .net "B", 0 0, L_0x1c30bf0;  alias, 1 drivers
v0x1bf1a90_0 .net "out", 0 0, L_0x1c30510;  1 drivers
S_0x1bf1b90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2f9a0 .functor XOR 1, L_0x1c30bf0, L_0x1c2fd20, C4<0>, C4<0>;
v0x1bf1d60_0 .net "A", 0 0, L_0x1c30bf0;  alias, 1 drivers
v0x1bf1eb0_0 .net "B", 0 0, L_0x1c2fd20;  1 drivers
v0x1bf1f70_0 .net "out", 0 0, L_0x1c2f9a0;  alias, 1 drivers
S_0x1bf20b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bef5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c302b0 .functor XOR 1, L_0x1c30b50, L_0x1c30bf0, C4<0>, C4<0>;
v0x1bf2280_0 .net "A", 0 0, L_0x1c30b50;  alias, 1 drivers
v0x1bf2340_0 .net "B", 0 0, L_0x1c30bf0;  alias, 1 drivers
v0x1bf2400_0 .net "out", 0 0, L_0x1c302b0;  1 drivers
S_0x1bf2f90 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c318a0 .functor BUFZ 1, L_0x1c31000, C4<0>, C4<0>, C4<0>;
L_0x1c31930 .functor BUFZ 1, L_0x1c31000, C4<0>, C4<0>, C4<0>;
v0x1bf5f00_0 .net "A", 0 0, L_0x1c31d70;  1 drivers
v0x1bf5fa0_0 .net "B", 0 0, L_0x1c30c90;  1 drivers
v0x1bf6060_0 .net "I", 7 0, L_0x1c31a50;  1 drivers
v0x1bf6160_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bf6200_0 .net *"_s15", 0 0, L_0x1c318a0;  1 drivers
v0x1bf6310_0 .net *"_s19", 0 0, L_0x1c31930;  1 drivers
L_0x7f20eb31d3c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bf63f0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d3c0;  1 drivers
v0x1bf64d0_0 .net "addORsub", 0 0, L_0x1c31000;  1 drivers
v0x1bf6570_0 .net "carryin", 0 0, L_0x1c31ed0;  1 drivers
v0x1bf66d0_0 .net "carryout", 0 0, L_0x1bf5310;  1 drivers
v0x1bf67a0_0 .net "modB", 0 0, L_0x1c30dd0;  1 drivers
v0x1bf6840_0 .net "out", 0 0, L_0x1c31740;  1 drivers
L_0x1c30e40 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c31a50_0_0 .concat8 [ 1 1 1 1], L_0x1c318a0, L_0x1c31930, L_0x1c31430, L_0x7f20eb31d3c0;
LS_0x1c31a50_0_4 .concat8 [ 1 1 1 1], L_0x1bf57f0, L_0x1c315b0, L_0x1c31620, L_0x1c316b0;
L_0x1c31a50 .concat8 [ 4 4 0 0], LS_0x1c31a50_0_0, LS_0x1c31a50_0_4;
S_0x1bf3200 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c30ee0 .functor XOR 1, L_0x1c31d70, L_0x1c30dd0, C4<0>, C4<0>;
L_0x1c31000 .functor XOR 1, L_0x1c30ee0, L_0x1c31ed0, C4<0>, C4<0>;
L_0x1c31130 .functor AND 1, L_0x1c30ee0, L_0x1c31ed0, C4<1>, C4<1>;
L_0x1c311c0 .functor AND 1, L_0x1c31d70, L_0x1c30dd0, C4<1>, C4<1>;
L_0x1bf5310 .functor OR 1, L_0x1c31130, L_0x1c311c0, C4<0>, C4<0>;
v0x1bf34a0_0 .net "A", 0 0, L_0x1c31d70;  alias, 1 drivers
v0x1bf3580_0 .net "B", 0 0, L_0x1c30dd0;  alias, 1 drivers
v0x1bf3640_0 .net "carryin", 0 0, L_0x1c31ed0;  alias, 1 drivers
v0x1bf3710_0 .net "carryout", 0 0, L_0x1bf5310;  alias, 1 drivers
v0x1bf37d0_0 .net "out1", 0 0, L_0x1c30ee0;  1 drivers
v0x1bf38e0_0 .net "out2", 0 0, L_0x1c31130;  1 drivers
v0x1bf39a0_0 .net "out3", 0 0, L_0x1c311c0;  1 drivers
v0x1bf3a60_0 .net "sum", 0 0, L_0x1c31000;  alias, 1 drivers
S_0x1bf3bc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bf57f0 .functor AND 1, L_0x1c31d70, L_0x1c30c90, C4<1>, C4<1>;
v0x1bf3e00_0 .net "A", 0 0, L_0x1c31d70;  alias, 1 drivers
v0x1bf3ec0_0 .net "B", 0 0, L_0x1c30c90;  alias, 1 drivers
v0x1bf3f60_0 .net "out", 0 0, L_0x1bf57f0;  1 drivers
S_0x1bf40b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bf4300_0 .net "I", 7 0, L_0x1c31a50;  alias, 1 drivers
v0x1bf43e0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bf44a0_0 .net "out", 0 0, L_0x1c31740;  alias, 1 drivers
L_0x1c31740 .part/v L_0x1c31a50, v0x1b1bbf0_0, 1;
S_0x1bf45f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c315b0 .functor NAND 1, L_0x1c31d70, L_0x1c30c90, C4<1>, C4<1>;
v0x1bf4810_0 .net "A", 0 0, L_0x1c31d70;  alias, 1 drivers
v0x1bf4920_0 .net "B", 0 0, L_0x1c30c90;  alias, 1 drivers
v0x1bf49e0_0 .net "out", 0 0, L_0x1c315b0;  1 drivers
S_0x1bf4af0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c31620 .functor NOR 1, L_0x1c31d70, L_0x1c30c90, C4<0>, C4<0>;
v0x1bf4d60_0 .net "A", 0 0, L_0x1c31d70;  alias, 1 drivers
v0x1bf4e20_0 .net "B", 0 0, L_0x1c30c90;  alias, 1 drivers
v0x1bf4f30_0 .net "out", 0 0, L_0x1c31620;  1 drivers
S_0x1bf5030 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c316b0 .functor OR 1, L_0x1c31d70, L_0x1c30c90, C4<0>, C4<0>;
v0x1bf5250_0 .net "A", 0 0, L_0x1c31d70;  alias, 1 drivers
v0x1bf53a0_0 .net "B", 0 0, L_0x1c30c90;  alias, 1 drivers
v0x1bf5460_0 .net "out", 0 0, L_0x1c316b0;  1 drivers
S_0x1bf5560 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c30dd0 .functor XOR 1, L_0x1c30c90, L_0x1c30e40, C4<0>, C4<0>;
v0x1bf5730_0 .net "A", 0 0, L_0x1c30c90;  alias, 1 drivers
v0x1bf5880_0 .net "B", 0 0, L_0x1c30e40;  1 drivers
v0x1bf5940_0 .net "out", 0 0, L_0x1c30dd0;  alias, 1 drivers
S_0x1bf5a80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bf2f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c31430 .functor XOR 1, L_0x1c31d70, L_0x1c30c90, C4<0>, C4<0>;
v0x1bf5c50_0 .net "A", 0 0, L_0x1c31d70;  alias, 1 drivers
v0x1bf5d10_0 .net "B", 0 0, L_0x1c30c90;  alias, 1 drivers
v0x1bf5dd0_0 .net "out", 0 0, L_0x1c31430;  1 drivers
S_0x1bf6960 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c32af0 .functor BUFZ 1, L_0x1c32270, C4<0>, C4<0>, C4<0>;
L_0x1c32b80 .functor BUFZ 1, L_0x1c32270, C4<0>, C4<0>, C4<0>;
v0x1bf98d0_0 .net "A", 0 0, L_0x1c32fc0;  1 drivers
v0x1bf9970_0 .net "B", 0 0, L_0x1c33060;  1 drivers
v0x1bf9a30_0 .net "I", 7 0, L_0x1c32ca0;  1 drivers
v0x1bf9b30_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bf9bd0_0 .net *"_s15", 0 0, L_0x1c32af0;  1 drivers
v0x1bf9ce0_0 .net *"_s19", 0 0, L_0x1c32b80;  1 drivers
L_0x7f20eb31d408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bf9dc0_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d408;  1 drivers
v0x1bf9ea0_0 .net "addORsub", 0 0, L_0x1c32270;  1 drivers
v0x1bf9f40_0 .net "carryin", 0 0, L_0x1c32000;  1 drivers
v0x1bfa0a0_0 .net "carryout", 0 0, L_0x1bf8ce0;  1 drivers
v0x1bfa170_0 .net "modB", 0 0, L_0x1c31e10;  1 drivers
v0x1bfa210_0 .net "out", 0 0, L_0x1c32990;  1 drivers
L_0x1c320d0 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c32ca0_0_0 .concat8 [ 1 1 1 1], L_0x1c32af0, L_0x1c32b80, L_0x1c32680, L_0x7f20eb31d408;
LS_0x1c32ca0_0_4 .concat8 [ 1 1 1 1], L_0x1bf91c0, L_0x1c32800, L_0x1c32870, L_0x1c32900;
L_0x1c32ca0 .concat8 [ 4 4 0 0], LS_0x1c32ca0_0_0, LS_0x1c32ca0_0_4;
S_0x1bf6bd0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c32170 .functor XOR 1, L_0x1c32fc0, L_0x1c31e10, C4<0>, C4<0>;
L_0x1c32270 .functor XOR 1, L_0x1c32170, L_0x1c32000, C4<0>, C4<0>;
L_0x1c32380 .functor AND 1, L_0x1c32170, L_0x1c32000, C4<1>, C4<1>;
L_0x1c32410 .functor AND 1, L_0x1c32fc0, L_0x1c31e10, C4<1>, C4<1>;
L_0x1bf8ce0 .functor OR 1, L_0x1c32380, L_0x1c32410, C4<0>, C4<0>;
v0x1bf6e70_0 .net "A", 0 0, L_0x1c32fc0;  alias, 1 drivers
v0x1bf6f50_0 .net "B", 0 0, L_0x1c31e10;  alias, 1 drivers
v0x1bf7010_0 .net "carryin", 0 0, L_0x1c32000;  alias, 1 drivers
v0x1bf70e0_0 .net "carryout", 0 0, L_0x1bf8ce0;  alias, 1 drivers
v0x1bf71a0_0 .net "out1", 0 0, L_0x1c32170;  1 drivers
v0x1bf72b0_0 .net "out2", 0 0, L_0x1c32380;  1 drivers
v0x1bf7370_0 .net "out3", 0 0, L_0x1c32410;  1 drivers
v0x1bf7430_0 .net "sum", 0 0, L_0x1c32270;  alias, 1 drivers
S_0x1bf7590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bf91c0 .functor AND 1, L_0x1c32fc0, L_0x1c33060, C4<1>, C4<1>;
v0x1bf77d0_0 .net "A", 0 0, L_0x1c32fc0;  alias, 1 drivers
v0x1bf7890_0 .net "B", 0 0, L_0x1c33060;  alias, 1 drivers
v0x1bf7930_0 .net "out", 0 0, L_0x1bf91c0;  1 drivers
S_0x1bf7a80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bf7cd0_0 .net "I", 7 0, L_0x1c32ca0;  alias, 1 drivers
v0x1bf7db0_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bf7e70_0 .net "out", 0 0, L_0x1c32990;  alias, 1 drivers
L_0x1c32990 .part/v L_0x1c32ca0, v0x1b1bbf0_0, 1;
S_0x1bf7fc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c32800 .functor NAND 1, L_0x1c32fc0, L_0x1c33060, C4<1>, C4<1>;
v0x1bf81e0_0 .net "A", 0 0, L_0x1c32fc0;  alias, 1 drivers
v0x1bf82f0_0 .net "B", 0 0, L_0x1c33060;  alias, 1 drivers
v0x1bf83b0_0 .net "out", 0 0, L_0x1c32800;  1 drivers
S_0x1bf84c0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c32870 .functor NOR 1, L_0x1c32fc0, L_0x1c33060, C4<0>, C4<0>;
v0x1bf8730_0 .net "A", 0 0, L_0x1c32fc0;  alias, 1 drivers
v0x1bf87f0_0 .net "B", 0 0, L_0x1c33060;  alias, 1 drivers
v0x1bf8900_0 .net "out", 0 0, L_0x1c32870;  1 drivers
S_0x1bf8a00 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c32900 .functor OR 1, L_0x1c32fc0, L_0x1c33060, C4<0>, C4<0>;
v0x1bf8c20_0 .net "A", 0 0, L_0x1c32fc0;  alias, 1 drivers
v0x1bf8d70_0 .net "B", 0 0, L_0x1c33060;  alias, 1 drivers
v0x1bf8e30_0 .net "out", 0 0, L_0x1c32900;  1 drivers
S_0x1bf8f30 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c31e10 .functor XOR 1, L_0x1c33060, L_0x1c320d0, C4<0>, C4<0>;
v0x1bf9100_0 .net "A", 0 0, L_0x1c33060;  alias, 1 drivers
v0x1bf9250_0 .net "B", 0 0, L_0x1c320d0;  1 drivers
v0x1bf9310_0 .net "out", 0 0, L_0x1c31e10;  alias, 1 drivers
S_0x1bf9450 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bf6960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c32680 .functor XOR 1, L_0x1c32fc0, L_0x1c33060, C4<0>, C4<0>;
v0x1bf9620_0 .net "A", 0 0, L_0x1c32fc0;  alias, 1 drivers
v0x1bf96e0_0 .net "B", 0 0, L_0x1c33060;  alias, 1 drivers
v0x1bf97a0_0 .net "out", 0 0, L_0x1c32680;  1 drivers
S_0x1bfa330 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0x1b75060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1c33da0 .functor BUFZ 1, L_0x1c33520, C4<0>, C4<0>, C4<0>;
L_0x1c33e30 .functor BUFZ 1, L_0x1c33520, C4<0>, C4<0>, C4<0>;
v0x1bfd2a0_0 .net "A", 0 0, L_0x1c34270;  1 drivers
v0x1bfd340_0 .net "B", 0 0, L_0x1c33100;  1 drivers
v0x1bfd400_0 .net "I", 7 0, L_0x1c33f50;  1 drivers
v0x1bfd500_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bc2c60_0 .net *"_s15", 0 0, L_0x1c33da0;  1 drivers
v0x1bc2d70_0 .net *"_s19", 0 0, L_0x1c33e30;  1 drivers
L_0x7f20eb31d450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1bc2e50_0 .net/2s *"_s23", 0 0, L_0x7f20eb31d450;  1 drivers
v0x1bc2f30_0 .net "addORsub", 0 0, L_0x1c33520;  1 drivers
v0x1bc2fd0_0 .net "carryin", 0 0, L_0x1c34520;  1 drivers
v0x1bfde70_0 .net "carryout", 0 0, L_0x1bfc6b0;  1 drivers
v0x1bfdf40_0 .net "modB", 0 0, L_0x1c2ea90;  1 drivers
v0x1bfdfe0_0 .net "out", 0 0, L_0x1c33c40;  1 drivers
L_0x1c33380 .part v0x1b1bbf0_0, 0, 1;
LS_0x1c33f50_0_0 .concat8 [ 1 1 1 1], L_0x1c33da0, L_0x1c33e30, L_0x1c33930, L_0x7f20eb31d450;
LS_0x1c33f50_0_4 .concat8 [ 1 1 1 1], L_0x1bfcb90, L_0x1c33ab0, L_0x1c33b20, L_0x1c33bb0;
L_0x1c33f50 .concat8 [ 4 4 0 0], LS_0x1c33f50_0_0, LS_0x1c33f50_0_4;
S_0x1bfa5a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1c33420 .functor XOR 1, L_0x1c34270, L_0x1c2ea90, C4<0>, C4<0>;
L_0x1c33520 .functor XOR 1, L_0x1c33420, L_0x1c34520, C4<0>, C4<0>;
L_0x1c33630 .functor AND 1, L_0x1c33420, L_0x1c34520, C4<1>, C4<1>;
L_0x1c336c0 .functor AND 1, L_0x1c34270, L_0x1c2ea90, C4<1>, C4<1>;
L_0x1bfc6b0 .functor OR 1, L_0x1c33630, L_0x1c336c0, C4<0>, C4<0>;
v0x1bfa840_0 .net "A", 0 0, L_0x1c34270;  alias, 1 drivers
v0x1bfa920_0 .net "B", 0 0, L_0x1c2ea90;  alias, 1 drivers
v0x1bfa9e0_0 .net "carryin", 0 0, L_0x1c34520;  alias, 1 drivers
v0x1bfaab0_0 .net "carryout", 0 0, L_0x1bfc6b0;  alias, 1 drivers
v0x1bfab70_0 .net "out1", 0 0, L_0x1c33420;  1 drivers
v0x1bfac80_0 .net "out2", 0 0, L_0x1c33630;  1 drivers
v0x1bfad40_0 .net "out3", 0 0, L_0x1c336c0;  1 drivers
v0x1bfae00_0 .net "sum", 0 0, L_0x1c33520;  alias, 1 drivers
S_0x1bfaf60 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bfcb90 .functor AND 1, L_0x1c34270, L_0x1c33100, C4<1>, C4<1>;
v0x1bfb1a0_0 .net "A", 0 0, L_0x1c34270;  alias, 1 drivers
v0x1bfb260_0 .net "B", 0 0, L_0x1c33100;  alias, 1 drivers
v0x1bfb300_0 .net "out", 0 0, L_0x1bfcb90;  1 drivers
S_0x1bfb450 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1bfb6a0_0 .net "I", 7 0, L_0x1c33f50;  alias, 1 drivers
v0x1bfb780_0 .net "S", 2 0, v0x1b1bbf0_0;  alias, 1 drivers
v0x1bfb840_0 .net "out", 0 0, L_0x1c33c40;  alias, 1 drivers
L_0x1c33c40 .part/v L_0x1c33f50, v0x1b1bbf0_0, 1;
S_0x1bfb990 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c33ab0 .functor NAND 1, L_0x1c34270, L_0x1c33100, C4<1>, C4<1>;
v0x1bfbbb0_0 .net "A", 0 0, L_0x1c34270;  alias, 1 drivers
v0x1bfbcc0_0 .net "B", 0 0, L_0x1c33100;  alias, 1 drivers
v0x1bfbd80_0 .net "out", 0 0, L_0x1c33ab0;  1 drivers
S_0x1bfbe90 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c33b20 .functor NOR 1, L_0x1c34270, L_0x1c33100, C4<0>, C4<0>;
v0x1bfc100_0 .net "A", 0 0, L_0x1c34270;  alias, 1 drivers
v0x1bfc1c0_0 .net "B", 0 0, L_0x1c33100;  alias, 1 drivers
v0x1bfc2d0_0 .net "out", 0 0, L_0x1c33b20;  1 drivers
S_0x1bfc3d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c33bb0 .functor OR 1, L_0x1c34270, L_0x1c33100, C4<0>, C4<0>;
v0x1bfc5f0_0 .net "A", 0 0, L_0x1c34270;  alias, 1 drivers
v0x1bfc740_0 .net "B", 0 0, L_0x1c33100;  alias, 1 drivers
v0x1bfc800_0 .net "out", 0 0, L_0x1c33bb0;  1 drivers
S_0x1bfc900 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c2ea90 .functor XOR 1, L_0x1c33100, L_0x1c33380, C4<0>, C4<0>;
v0x1bfcad0_0 .net "A", 0 0, L_0x1c33100;  alias, 1 drivers
v0x1bfcc20_0 .net "B", 0 0, L_0x1c33380;  1 drivers
v0x1bfcce0_0 .net "out", 0 0, L_0x1c2ea90;  alias, 1 drivers
S_0x1bfce20 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1bfa330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1c33930 .functor XOR 1, L_0x1c34270, L_0x1c33100, C4<0>, C4<0>;
v0x1bfcff0_0 .net "A", 0 0, L_0x1c34270;  alias, 1 drivers
v0x1bfd0b0_0 .net "B", 0 0, L_0x1c33100;  alias, 1 drivers
v0x1bfd170_0 .net "out", 0 0, L_0x1c33930;  1 drivers
S_0x1c00850 .scope module, "mem" "memory" 4 51, 10 1 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "regWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x1c15260 .functor BUFZ 32, L_0x1c151c0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c15410 .functor BUFZ 32, L_0x1c15320, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c155b0 .functor BUFZ 32, L_0x1c15510, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c00b00_0 .net "Addr0", 31 0, L_0x1c15670;  1 drivers
v0x1c00c00_0 .net "DataIn0", 31 0, L_0x1c297b0;  alias, 1 drivers
v0x1c00ce0_0 .net "DataOut0", 31 0, L_0x1c15410;  alias, 1 drivers
v0x1c00dd0_0 .net *"_s0", 31 0, L_0x1c151c0;  1 drivers
v0x1c00eb0_0 .net *"_s4", 31 0, L_0x1c15320;  1 drivers
v0x1c00fe0_0 .net *"_s8", 31 0, L_0x1c15510;  1 drivers
v0x1c010c0_0 .net "clk", 0 0, v0x1c13bf0_0;  alias, 1 drivers
v0x1c01160_0 .net "instruct_Addr1", 31 0, L_0x1c158b0;  1 drivers
v0x1c01220_0 .net "instruct_DataOut1", 31 0, L_0x1c155b0;  alias, 1 drivers
v0x1c013a0 .array "mem", 0 65536, 31 0;
v0x1c01440_0 .net "memAtAdd", 31 0, L_0x1c15260;  1 drivers
v0x1c01520_0 .net "regWE", 0 0, v0x1b85150_0;  alias, 1 drivers
E_0x1c00a80 .event posedge, v0x1b84e50_0;
L_0x1c151c0 .array/port v0x1c013a0, L_0x1c15670;
L_0x1c15320 .array/port v0x1c013a0, L_0x1c15670;
L_0x1c15510 .array/port v0x1c013a0, L_0x1c158b0;
S_0x1c016f0 .scope module, "op_imm_mux" "mux2" 4 64, 11 1 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x1c01930_0 .net "input0", 31 0, v0x1b80860_0;  alias, 1 drivers
v0x1c01a40_0 .net "input1", 31 0, L_0x1c297b0;  alias, 1 drivers
v0x1c01b10_0 .net "out", 31 0, L_0x1c51b60;  alias, 1 drivers
v0x1c01c10_0 .net "select0", 0 0, v0x1b7c5b0_0;  alias, 1 drivers
L_0x1c51b60 .functor MUXZ 32, L_0x1c297b0, v0x1b80860_0, v0x1b7c5b0_0, C4<>;
S_0x1c01d30 .scope module, "pcmux" "pc_multiplexer" 4 48, 12 7 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x1c02000_0 .net "JumpAddress", 25 0, v0x1b84d90_0;  alias, 1 drivers
v0x1c02110_0 .var "PC", 31 0;
v0x1c021d0_0 .net "S", 1 0, v0x1b20120_0;  alias, 1 drivers
v0x1c022d0_0 .net "clk", 0 0, v0x1c13bf0_0;  alias, 1 drivers
v0x1c023c0_0 .net "immediate", 31 0, v0x1b80860_0;  alias, 1 drivers
v0x1c02500_0 .var "mux_out", 31 0;
v0x1c025e0_0 .var "nextPC", 31 0;
v0x1c026c0_0 .net "regRs", 31 0, L_0x1c27050;  alias, 1 drivers
v0x1c02780_0 .var "tempimmediate", 31 0;
E_0x1c01fa0/0 .event edge, v0x1b20120_0, v0x1bfe100_0, v0x1b80860_0, v0x1b84d90_0;
E_0x1c01fa0/1 .event edge, v0x1c025e0_0;
E_0x1c01fa0 .event/or E_0x1c01fa0/0, E_0x1c01fa0/1;
S_0x1c029d0 .scope module, "reg_in_mux" "mux3_32bit" 4 63, 11 21 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x1c02bd0_0 .net *"_s1", 0 0, L_0x1c513d0;  1 drivers
v0x1c02cd0_0 .net *"_s10", 31 0, L_0x1c51730;  1 drivers
v0x1c02db0_0 .net *"_s3", 0 0, L_0x1c51470;  1 drivers
L_0x7f20eb31db10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1c02e70_0 .net/2u *"_s4", 31 0, L_0x7f20eb31db10;  1 drivers
v0x1c02f50_0 .net *"_s6", 31 0, L_0x1c515a0;  1 drivers
v0x1c03080_0 .net *"_s9", 0 0, L_0x1c51690;  1 drivers
v0x1c03160_0 .net "input0", 31 0, L_0x1c4e050;  alias, 1 drivers
v0x1c03220_0 .net "input1", 31 0, L_0x1c15410;  alias, 1 drivers
v0x1c032f0_0 .net "input2", 31 0, L_0x1c519b0;  1 drivers
v0x1c03440_0 .net "out", 31 0, L_0x1c51820;  alias, 1 drivers
v0x1c03520_0 .net "select0", 1 0, v0x1b661c0_0;  alias, 1 drivers
L_0x1c513d0 .part v0x1b661c0_0, 1, 1;
L_0x1c51470 .part v0x1b661c0_0, 0, 1;
L_0x1c515a0 .functor MUXZ 32, L_0x1c519b0, L_0x7f20eb31db10, L_0x1c51470, C4<>;
L_0x1c51690 .part v0x1b661c0_0, 0, 1;
L_0x1c51730 .functor MUXZ 32, L_0x1c4e050, L_0x1c15410, L_0x1c51690, C4<>;
L_0x1c51820 .functor MUXZ 32, L_0x1c51730, L_0x1c515a0, L_0x1c513d0, C4<>;
S_0x1c036c0 .scope module, "reg_select_mux" "mux3_5bit" 4 62, 11 11 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x1c038c0_0 .net *"_s1", 0 0, L_0x1c50470;  1 drivers
v0x1c039c0_0 .net *"_s10", 4 0, L_0x1c51100;  1 drivers
v0x1c03aa0_0 .net *"_s3", 0 0, L_0x1c50ed0;  1 drivers
L_0x7f20eb31da80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x1c03b90_0 .net/2u *"_s4", 4 0, L_0x7f20eb31da80;  1 drivers
v0x1c03c70_0 .net *"_s6", 4 0, L_0x1c50f70;  1 drivers
v0x1c03da0_0 .net *"_s9", 0 0, L_0x1c51060;  1 drivers
v0x1c03e80_0 .net "input0", 4 0, v0x1b665a0_0;  alias, 1 drivers
v0x1c03f40_0 .net "input1", 4 0, v0x1b61b30_0;  alias, 1 drivers
L_0x7f20eb31dac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x1c04010_0 .net "input2", 4 0, L_0x7f20eb31dac8;  1 drivers
v0x1c04180_0 .net "out", 4 0, L_0x1c511f0;  alias, 1 drivers
v0x1c04260_0 .net "select0", 1 0, v0x1b80bd0_0;  alias, 1 drivers
L_0x1c50470 .part v0x1b80bd0_0, 1, 1;
L_0x1c50ed0 .part v0x1b80bd0_0, 0, 1;
L_0x1c50f70 .functor MUXZ 5, L_0x7f20eb31dac8, L_0x7f20eb31da80, L_0x1c50ed0, C4<>;
L_0x1c51060 .part v0x1b80bd0_0, 0, 1;
L_0x1c51100 .functor MUXZ 5, v0x1b665a0_0, v0x1b61b30_0, L_0x1c51060, C4<>;
L_0x1c511f0 .functor MUXZ 5, L_0x1c51100, L_0x1c50f70, L_0x1c50470, C4<>;
S_0x1c043c0 .scope module, "regi" "regfile" 4 57, 13 12 0, S_0x1b93c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x1c0d850_0 .net "Clk", 0 0, v0x1c13bf0_0;  alias, 1 drivers
v0x1c107a0_0 .net "ReadData1", 31 0, L_0x1c27050;  alias, 1 drivers
v0x1c10840_0 .net "ReadData2", 31 0, L_0x1c297b0;  alias, 1 drivers
v0x1c108e0_0 .net "ReadRegister1", 4 0, v0x1b61ef0_0;  alias, 1 drivers
v0x1c109d0_0 .net "ReadRegister2", 4 0, v0x1b61b30_0;  alias, 1 drivers
v0x1c10ac0_0 .net "RegWrite", 0 0, v0x1b66120_0;  alias, 1 drivers
v0x1c10bb0_0 .net "WriteData", 31 0, L_0x1c51820;  alias, 1 drivers
v0x1c10c70_0 .net "WriteRegister", 4 0, L_0x1c511f0;  alias, 1 drivers
v0x1c10d60_0 .net "decoded", 31 0, L_0x1c25ae0;  1 drivers
v0x1c10eb0 .array "registers", 0 31, 31 0;
S_0x1c046a0 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x1c043c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x1c04900_0 .net *"_s0", 31 0, L_0x1c159a0;  1 drivers
L_0x7f20eb31d060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1c04a00_0 .net *"_s3", 30 0, L_0x7f20eb31d060;  1 drivers
v0x1c04ae0_0 .net "address", 4 0, L_0x1c511f0;  alias, 1 drivers
v0x1c04bb0_0 .net "enable", 0 0, v0x1b66120_0;  alias, 1 drivers
v0x1c04c80_0 .net "out", 31 0, L_0x1c25ae0;  alias, 1 drivers
L_0x1c159a0 .concat [ 1 31 0 0], v0x1b66120_0, L_0x7f20eb31d060;
L_0x1c25ae0 .shift/l 32, L_0x1c159a0, L_0x1c511f0;
S_0x1c04df0 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c04fe0 .param/l "i" 0 13 33, +C4<01>;
S_0x1c050a0 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c05290 .param/l "i" 0 13 33, +C4<010>;
S_0x1c05330 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c05520 .param/l "i" 0 13 33, +C4<011>;
S_0x1c055e0 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c05820 .param/l "i" 0 13 33, +C4<0100>;
S_0x1c058e0 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c05ad0 .param/l "i" 0 13 33, +C4<0101>;
S_0x1c05b90 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c05d80 .param/l "i" 0 13 33, +C4<0110>;
S_0x1c05e40 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c06030 .param/l "i" 0 13 33, +C4<0111>;
S_0x1c060f0 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c057d0 .param/l "i" 0 13 33, +C4<01000>;
S_0x1c063e0 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c065d0 .param/l "i" 0 13 33, +C4<01001>;
S_0x1c06690 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c06880 .param/l "i" 0 13 33, +C4<01010>;
S_0x1c06940 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c06b30 .param/l "i" 0 13 33, +C4<01011>;
S_0x1c06bf0 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c06de0 .param/l "i" 0 13 33, +C4<01100>;
S_0x1c06ea0 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c07090 .param/l "i" 0 13 33, +C4<01101>;
S_0x1c07150 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c07340 .param/l "i" 0 13 33, +C4<01110>;
S_0x1c07400 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c075f0 .param/l "i" 0 13 33, +C4<01111>;
S_0x1c076b0 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c062e0 .param/l "i" 0 13 33, +C4<010000>;
S_0x1c07a00 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c07bd0 .param/l "i" 0 13 33, +C4<010001>;
S_0x1c07c90 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c07e80 .param/l "i" 0 13 33, +C4<010010>;
S_0x1c07f40 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c08130 .param/l "i" 0 13 33, +C4<010011>;
S_0x1c081f0 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c083e0 .param/l "i" 0 13 33, +C4<010100>;
S_0x1c084a0 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c08690 .param/l "i" 0 13 33, +C4<010101>;
S_0x1c08750 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c08940 .param/l "i" 0 13 33, +C4<010110>;
S_0x1c08a00 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c08bf0 .param/l "i" 0 13 33, +C4<010111>;
S_0x1c08cb0 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c08ea0 .param/l "i" 0 13 33, +C4<011000>;
S_0x1c08f60 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c09150 .param/l "i" 0 13 33, +C4<011001>;
S_0x1c09210 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c09400 .param/l "i" 0 13 33, +C4<011010>;
S_0x1c094c0 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c096b0 .param/l "i" 0 13 33, +C4<011011>;
S_0x1c09770 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c09960 .param/l "i" 0 13 33, +C4<011100>;
S_0x1c09a20 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c09c10 .param/l "i" 0 13 33, +C4<011101>;
S_0x1c09cd0 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c09ec0 .param/l "i" 0 13 33, +C4<011110>;
S_0x1c09f80 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x1c043c0;
 .timescale 0 0;
P_0x1c0a170 .param/l "i" 0 13 33, +C4<011111>;
S_0x1c0a230 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x1c043c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "input0"
    .port_info 3 /INPUT 32 "input1"
    .port_info 4 /INPUT 32 "input2"
    .port_info 5 /INPUT 32 "input3"
    .port_info 6 /INPUT 32 "input4"
    .port_info 7 /INPUT 32 "input5"
    .port_info 8 /INPUT 32 "input6"
    .port_info 9 /INPUT 32 "input7"
    .port_info 10 /INPUT 32 "input8"
    .port_info 11 /INPUT 32 "input9"
    .port_info 12 /INPUT 32 "input10"
    .port_info 13 /INPUT 32 "input11"
    .port_info 14 /INPUT 32 "input12"
    .port_info 15 /INPUT 32 "input13"
    .port_info 16 /INPUT 32 "input14"
    .port_info 17 /INPUT 32 "input15"
    .port_info 18 /INPUT 32 "input16"
    .port_info 19 /INPUT 32 "input17"
    .port_info 20 /INPUT 32 "input18"
    .port_info 21 /INPUT 32 "input19"
    .port_info 22 /INPUT 32 "input20"
    .port_info 23 /INPUT 32 "input21"
    .port_info 24 /INPUT 32 "input22"
    .port_info 25 /INPUT 32 "input23"
    .port_info 26 /INPUT 32 "input24"
    .port_info 27 /INPUT 32 "input25"
    .port_info 28 /INPUT 32 "input26"
    .port_info 29 /INPUT 32 "input27"
    .port_info 30 /INPUT 32 "input28"
    .port_info 31 /INPUT 32 "input29"
    .port_info 32 /INPUT 32 "input30"
    .port_info 33 /INPUT 32 "input31"
L_0x7f20eb31d0f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1c25cb0 .functor BUFZ 32, L_0x7f20eb31d0f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_1 .array/port v0x1c10eb0, 1;
L_0x1c25d20 .functor BUFZ 32, v0x1c10eb0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_2 .array/port v0x1c10eb0, 2;
L_0x1c25d90 .functor BUFZ 32, v0x1c10eb0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_3 .array/port v0x1c10eb0, 3;
L_0x1c25e00 .functor BUFZ 32, v0x1c10eb0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_4 .array/port v0x1c10eb0, 4;
L_0x1c25e70 .functor BUFZ 32, v0x1c10eb0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_5 .array/port v0x1c10eb0, 5;
L_0x1c25ee0 .functor BUFZ 32, v0x1c10eb0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_6 .array/port v0x1c10eb0, 6;
L_0x1c25f90 .functor BUFZ 32, v0x1c10eb0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_7 .array/port v0x1c10eb0, 7;
L_0x1c26000 .functor BUFZ 32, v0x1c10eb0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_8 .array/port v0x1c10eb0, 8;
L_0x1c26070 .functor BUFZ 32, v0x1c10eb0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_9 .array/port v0x1c10eb0, 9;
L_0x1c260e0 .functor BUFZ 32, v0x1c10eb0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_10 .array/port v0x1c10eb0, 10;
L_0x1c261b0 .functor BUFZ 32, v0x1c10eb0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_11 .array/port v0x1c10eb0, 11;
L_0x1c26220 .functor BUFZ 32, v0x1c10eb0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_12 .array/port v0x1c10eb0, 12;
L_0x1c26300 .functor BUFZ 32, v0x1c10eb0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_13 .array/port v0x1c10eb0, 13;
L_0x1c26370 .functor BUFZ 32, v0x1c10eb0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_14 .array/port v0x1c10eb0, 14;
L_0x1c26290 .functor BUFZ 32, v0x1c10eb0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_15 .array/port v0x1c10eb0, 15;
L_0x1c26460 .functor BUFZ 32, v0x1c10eb0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_16 .array/port v0x1c10eb0, 16;
L_0x1c26560 .functor BUFZ 32, v0x1c10eb0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_17 .array/port v0x1c10eb0, 17;
L_0x1c265d0 .functor BUFZ 32, v0x1c10eb0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_18 .array/port v0x1c10eb0, 18;
L_0x1c264d0 .functor BUFZ 32, v0x1c10eb0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_19 .array/port v0x1c10eb0, 19;
L_0x1c266e0 .functor BUFZ 32, v0x1c10eb0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_20 .array/port v0x1c10eb0, 20;
L_0x1c26640 .functor BUFZ 32, v0x1c10eb0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_21 .array/port v0x1c10eb0, 21;
L_0x1c26800 .functor BUFZ 32, v0x1c10eb0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_22 .array/port v0x1c10eb0, 22;
L_0x1c26750 .functor BUFZ 32, v0x1c10eb0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_23 .array/port v0x1c10eb0, 23;
L_0x1c26930 .functor BUFZ 32, v0x1c10eb0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_24 .array/port v0x1c10eb0, 24;
L_0x1c26870 .functor BUFZ 32, v0x1c10eb0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_25 .array/port v0x1c10eb0, 25;
L_0x1c26a70 .functor BUFZ 32, v0x1c10eb0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_26 .array/port v0x1c10eb0, 26;
L_0x1c269a0 .functor BUFZ 32, v0x1c10eb0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_27 .array/port v0x1c10eb0, 27;
L_0x1c26bc0 .functor BUFZ 32, v0x1c10eb0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_28 .array/port v0x1c10eb0, 28;
L_0x1c26ae0 .functor BUFZ 32, v0x1c10eb0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_29 .array/port v0x1c10eb0, 29;
L_0x1c26b50 .functor BUFZ 32, v0x1c10eb0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_30 .array/port v0x1c10eb0, 30;
L_0x1c26d30 .functor BUFZ 32, v0x1c10eb0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1c10eb0_31 .array/port v0x1c10eb0, 31;
L_0x1c26da0 .functor BUFZ 32, v0x1c10eb0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27050 .functor BUFZ 32, L_0x1c26c30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f20eb31d0a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1c078a0_0 .net *"_s101", 1 0, L_0x7f20eb31d0a8;  1 drivers
v0x1c0aa70_0 .net *"_s96", 31 0, L_0x1c26c30;  1 drivers
v0x1c0ab30_0 .net *"_s98", 6 0, L_0x1c26f20;  1 drivers
v0x1c0ac10_0 .net "address", 4 0, v0x1b61ef0_0;  alias, 1 drivers
v0x1c0acd0_0 .net "input0", 31 0, L_0x7f20eb31d0f0;  1 drivers
v0x1c0ade0_0 .net "input1", 31 0, v0x1c10eb0_1;  1 drivers
v0x1c0aec0_0 .net "input10", 31 0, v0x1c10eb0_10;  1 drivers
v0x1c0afa0_0 .net "input11", 31 0, v0x1c10eb0_11;  1 drivers
v0x1c0b080_0 .net "input12", 31 0, v0x1c10eb0_12;  1 drivers
v0x1c0b1f0_0 .net "input13", 31 0, v0x1c10eb0_13;  1 drivers
v0x1c0b2d0_0 .net "input14", 31 0, v0x1c10eb0_14;  1 drivers
v0x1c0b3b0_0 .net "input15", 31 0, v0x1c10eb0_15;  1 drivers
v0x1c0b490_0 .net "input16", 31 0, v0x1c10eb0_16;  1 drivers
v0x1c0b570_0 .net "input17", 31 0, v0x1c10eb0_17;  1 drivers
v0x1c0b650_0 .net "input18", 31 0, v0x1c10eb0_18;  1 drivers
v0x1c0b730_0 .net "input19", 31 0, v0x1c10eb0_19;  1 drivers
v0x1c0b810_0 .net "input2", 31 0, v0x1c10eb0_2;  1 drivers
v0x1c0b9c0_0 .net "input20", 31 0, v0x1c10eb0_20;  1 drivers
v0x1c0ba60_0 .net "input21", 31 0, v0x1c10eb0_21;  1 drivers
v0x1c0bb40_0 .net "input22", 31 0, v0x1c10eb0_22;  1 drivers
v0x1c0bc20_0 .net "input23", 31 0, v0x1c10eb0_23;  1 drivers
v0x1c0bd00_0 .net "input24", 31 0, v0x1c10eb0_24;  1 drivers
v0x1c0bde0_0 .net "input25", 31 0, v0x1c10eb0_25;  1 drivers
v0x1c0bec0_0 .net "input26", 31 0, v0x1c10eb0_26;  1 drivers
v0x1c0bfa0_0 .net "input27", 31 0, v0x1c10eb0_27;  1 drivers
v0x1c0c080_0 .net "input28", 31 0, v0x1c10eb0_28;  1 drivers
v0x1c0c160_0 .net "input29", 31 0, v0x1c10eb0_29;  1 drivers
v0x1c0c240_0 .net "input3", 31 0, v0x1c10eb0_3;  1 drivers
v0x1c0c320_0 .net "input30", 31 0, v0x1c10eb0_30;  1 drivers
v0x1c0c400_0 .net "input31", 31 0, v0x1c10eb0_31;  1 drivers
v0x1c0c4e0_0 .net "input4", 31 0, v0x1c10eb0_4;  1 drivers
v0x1c0c5c0_0 .net "input5", 31 0, v0x1c10eb0_5;  1 drivers
v0x1c0c6a0_0 .net "input6", 31 0, v0x1c10eb0_6;  1 drivers
v0x1c0b8f0_0 .net "input7", 31 0, v0x1c10eb0_7;  1 drivers
v0x1c0c970_0 .net "input8", 31 0, v0x1c10eb0_8;  1 drivers
v0x1c0ca50_0 .net "input9", 31 0, v0x1c10eb0_9;  1 drivers
v0x1c0cb30 .array "mux", 0 31;
v0x1c0cb30_0 .net v0x1c0cb30 0, 31 0, L_0x1c25cb0; 1 drivers
v0x1c0cb30_1 .net v0x1c0cb30 1, 31 0, L_0x1c25d20; 1 drivers
v0x1c0cb30_2 .net v0x1c0cb30 2, 31 0, L_0x1c25d90; 1 drivers
v0x1c0cb30_3 .net v0x1c0cb30 3, 31 0, L_0x1c25e00; 1 drivers
v0x1c0cb30_4 .net v0x1c0cb30 4, 31 0, L_0x1c25e70; 1 drivers
v0x1c0cb30_5 .net v0x1c0cb30 5, 31 0, L_0x1c25ee0; 1 drivers
v0x1c0cb30_6 .net v0x1c0cb30 6, 31 0, L_0x1c25f90; 1 drivers
v0x1c0cb30_7 .net v0x1c0cb30 7, 31 0, L_0x1c26000; 1 drivers
v0x1c0cb30_8 .net v0x1c0cb30 8, 31 0, L_0x1c26070; 1 drivers
v0x1c0cb30_9 .net v0x1c0cb30 9, 31 0, L_0x1c260e0; 1 drivers
v0x1c0cb30_10 .net v0x1c0cb30 10, 31 0, L_0x1c261b0; 1 drivers
v0x1c0cb30_11 .net v0x1c0cb30 11, 31 0, L_0x1c26220; 1 drivers
v0x1c0cb30_12 .net v0x1c0cb30 12, 31 0, L_0x1c26300; 1 drivers
v0x1c0cb30_13 .net v0x1c0cb30 13, 31 0, L_0x1c26370; 1 drivers
v0x1c0cb30_14 .net v0x1c0cb30 14, 31 0, L_0x1c26290; 1 drivers
v0x1c0cb30_15 .net v0x1c0cb30 15, 31 0, L_0x1c26460; 1 drivers
v0x1c0cb30_16 .net v0x1c0cb30 16, 31 0, L_0x1c26560; 1 drivers
v0x1c0cb30_17 .net v0x1c0cb30 17, 31 0, L_0x1c265d0; 1 drivers
v0x1c0cb30_18 .net v0x1c0cb30 18, 31 0, L_0x1c264d0; 1 drivers
v0x1c0cb30_19 .net v0x1c0cb30 19, 31 0, L_0x1c266e0; 1 drivers
v0x1c0cb30_20 .net v0x1c0cb30 20, 31 0, L_0x1c26640; 1 drivers
v0x1c0cb30_21 .net v0x1c0cb30 21, 31 0, L_0x1c26800; 1 drivers
v0x1c0cb30_22 .net v0x1c0cb30 22, 31 0, L_0x1c26750; 1 drivers
v0x1c0cb30_23 .net v0x1c0cb30 23, 31 0, L_0x1c26930; 1 drivers
v0x1c0cb30_24 .net v0x1c0cb30 24, 31 0, L_0x1c26870; 1 drivers
v0x1c0cb30_25 .net v0x1c0cb30 25, 31 0, L_0x1c26a70; 1 drivers
v0x1c0cb30_26 .net v0x1c0cb30 26, 31 0, L_0x1c269a0; 1 drivers
v0x1c0cb30_27 .net v0x1c0cb30 27, 31 0, L_0x1c26bc0; 1 drivers
v0x1c0cb30_28 .net v0x1c0cb30 28, 31 0, L_0x1c26ae0; 1 drivers
v0x1c0cb30_29 .net v0x1c0cb30 29, 31 0, L_0x1c26b50; 1 drivers
v0x1c0cb30_30 .net v0x1c0cb30 30, 31 0, L_0x1c26d30; 1 drivers
v0x1c0cb30_31 .net v0x1c0cb30 31, 31 0, L_0x1c26da0; 1 drivers
v0x1c0d060_0 .net "out", 31 0, L_0x1c27050;  alias, 1 drivers
L_0x1c26c30 .array/port v0x1c0cb30, L_0x1c26f20;
L_0x1c26f20 .concat [ 5 2 0 0], v0x1b61ef0_0, L_0x7f20eb31d0a8;
S_0x1c0d6d0 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x1c043c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "input0"
    .port_info 3 /INPUT 32 "input1"
    .port_info 4 /INPUT 32 "input2"
    .port_info 5 /INPUT 32 "input3"
    .port_info 6 /INPUT 32 "input4"
    .port_info 7 /INPUT 32 "input5"
    .port_info 8 /INPUT 32 "input6"
    .port_info 9 /INPUT 32 "input7"
    .port_info 10 /INPUT 32 "input8"
    .port_info 11 /INPUT 32 "input9"
    .port_info 12 /INPUT 32 "input10"
    .port_info 13 /INPUT 32 "input11"
    .port_info 14 /INPUT 32 "input12"
    .port_info 15 /INPUT 32 "input13"
    .port_info 16 /INPUT 32 "input14"
    .port_info 17 /INPUT 32 "input15"
    .port_info 18 /INPUT 32 "input16"
    .port_info 19 /INPUT 32 "input17"
    .port_info 20 /INPUT 32 "input18"
    .port_info 21 /INPUT 32 "input19"
    .port_info 22 /INPUT 32 "input20"
    .port_info 23 /INPUT 32 "input21"
    .port_info 24 /INPUT 32 "input22"
    .port_info 25 /INPUT 32 "input23"
    .port_info 26 /INPUT 32 "input24"
    .port_info 27 /INPUT 32 "input25"
    .port_info 28 /INPUT 32 "input26"
    .port_info 29 /INPUT 32 "input27"
    .port_info 30 /INPUT 32 "input28"
    .port_info 31 /INPUT 32 "input29"
    .port_info 32 /INPUT 32 "input30"
    .port_info 33 /INPUT 32 "input31"
L_0x7f20eb31d180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1c270c0 .functor BUFZ 32, L_0x7f20eb31d180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27130 .functor BUFZ 32, v0x1c10eb0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27230 .functor BUFZ 32, v0x1c10eb0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27330 .functor BUFZ 32, v0x1c10eb0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27430 .functor BUFZ 32, v0x1c10eb0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27530 .functor BUFZ 32, v0x1c10eb0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27630 .functor BUFZ 32, v0x1c10eb0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27730 .functor BUFZ 32, v0x1c10eb0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27830 .functor BUFZ 32, v0x1c10eb0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27930 .functor BUFZ 32, v0x1c10eb0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27a60 .functor BUFZ 32, v0x1c10eb0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27b90 .functor BUFZ 32, v0x1c10eb0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27d30 .functor BUFZ 32, v0x1c10eb0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27e60 .functor BUFZ 32, v0x1c10eb0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c27cc0 .functor BUFZ 32, v0x1c10eb0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28050 .functor BUFZ 32, v0x1c10eb0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28210 .functor BUFZ 32, v0x1c10eb0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28340 .functor BUFZ 32, v0x1c10eb0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28180 .functor BUFZ 32, v0x1c10eb0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c285d0 .functor BUFZ 32, v0x1c10eb0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28470 .functor BUFZ 32, v0x1c10eb0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28840 .functor BUFZ 32, v0x1c10eb0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28700 .functor BUFZ 32, v0x1c10eb0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28ac0 .functor BUFZ 32, v0x1c10eb0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28970 .functor BUFZ 32, v0x1c10eb0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28d50 .functor BUFZ 32, v0x1c10eb0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28bf0 .functor BUFZ 32, v0x1c10eb0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28ff0 .functor BUFZ 32, v0x1c10eb0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c28e80 .functor BUFZ 32, v0x1c10eb0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c29270 .functor BUFZ 32, v0x1c10eb0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c290f0 .functor BUFZ 32, v0x1c10eb0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c29500 .functor BUFZ 32, v0x1c10eb0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1c297b0 .functor BUFZ 32, L_0x1c29370, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f20eb31d138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1c0a660_0 .net *"_s101", 1 0, L_0x7f20eb31d138;  1 drivers
v0x1c0dcf0_0 .net *"_s96", 31 0, L_0x1c29370;  1 drivers
v0x1c0ddf0_0 .net *"_s98", 6 0, L_0x1c29710;  1 drivers
v0x1c0deb0_0 .net "address", 4 0, v0x1b61b30_0;  alias, 1 drivers
v0x1c0dfc0_0 .net "input0", 31 0, L_0x7f20eb31d180;  1 drivers
v0x1c0e0f0_0 .net "input1", 31 0, v0x1c10eb0_1;  alias, 1 drivers
v0x1c0e1b0_0 .net "input10", 31 0, v0x1c10eb0_10;  alias, 1 drivers
v0x1c0e250_0 .net "input11", 31 0, v0x1c10eb0_11;  alias, 1 drivers
v0x1c0e2f0_0 .net "input12", 31 0, v0x1c10eb0_12;  alias, 1 drivers
v0x1c0e450_0 .net "input13", 31 0, v0x1c10eb0_13;  alias, 1 drivers
v0x1c0e520_0 .net "input14", 31 0, v0x1c10eb0_14;  alias, 1 drivers
v0x1c0e5f0_0 .net "input15", 31 0, v0x1c10eb0_15;  alias, 1 drivers
v0x1c0e6c0_0 .net "input16", 31 0, v0x1c10eb0_16;  alias, 1 drivers
v0x1c0e790_0 .net "input17", 31 0, v0x1c10eb0_17;  alias, 1 drivers
v0x1c0e860_0 .net "input18", 31 0, v0x1c10eb0_18;  alias, 1 drivers
v0x1c0e930_0 .net "input19", 31 0, v0x1c10eb0_19;  alias, 1 drivers
v0x1c0ea00_0 .net "input2", 31 0, v0x1c10eb0_2;  alias, 1 drivers
v0x1c0ebb0_0 .net "input20", 31 0, v0x1c10eb0_20;  alias, 1 drivers
v0x1c0ec50_0 .net "input21", 31 0, v0x1c10eb0_21;  alias, 1 drivers
v0x1c0ecf0_0 .net "input22", 31 0, v0x1c10eb0_22;  alias, 1 drivers
v0x1c0edc0_0 .net "input23", 31 0, v0x1c10eb0_23;  alias, 1 drivers
v0x1c0ee90_0 .net "input24", 31 0, v0x1c10eb0_24;  alias, 1 drivers
v0x1c0ef60_0 .net "input25", 31 0, v0x1c10eb0_25;  alias, 1 drivers
v0x1c0f030_0 .net "input26", 31 0, v0x1c10eb0_26;  alias, 1 drivers
v0x1c0f100_0 .net "input27", 31 0, v0x1c10eb0_27;  alias, 1 drivers
v0x1c0f1d0_0 .net "input28", 31 0, v0x1c10eb0_28;  alias, 1 drivers
v0x1c0f2a0_0 .net "input29", 31 0, v0x1c10eb0_29;  alias, 1 drivers
v0x1c0f370_0 .net "input3", 31 0, v0x1c10eb0_3;  alias, 1 drivers
v0x1c0f440_0 .net "input30", 31 0, v0x1c10eb0_30;  alias, 1 drivers
v0x1c0f510_0 .net "input31", 31 0, v0x1c10eb0_31;  alias, 1 drivers
v0x1c0f5e0_0 .net "input4", 31 0, v0x1c10eb0_4;  alias, 1 drivers
v0x1c0f6b0_0 .net "input5", 31 0, v0x1c10eb0_5;  alias, 1 drivers
v0x1c0f780_0 .net "input6", 31 0, v0x1c10eb0_6;  alias, 1 drivers
v0x1c0ead0_0 .net "input7", 31 0, v0x1c10eb0_7;  alias, 1 drivers
v0x1c0fa30_0 .net "input8", 31 0, v0x1c10eb0_8;  alias, 1 drivers
v0x1c0fb00_0 .net "input9", 31 0, v0x1c10eb0_9;  alias, 1 drivers
v0x1c0fbd0 .array "mux", 0 31;
v0x1c0fbd0_0 .net v0x1c0fbd0 0, 31 0, L_0x1c270c0; 1 drivers
v0x1c0fbd0_1 .net v0x1c0fbd0 1, 31 0, L_0x1c27130; 1 drivers
v0x1c0fbd0_2 .net v0x1c0fbd0 2, 31 0, L_0x1c27230; 1 drivers
v0x1c0fbd0_3 .net v0x1c0fbd0 3, 31 0, L_0x1c27330; 1 drivers
v0x1c0fbd0_4 .net v0x1c0fbd0 4, 31 0, L_0x1c27430; 1 drivers
v0x1c0fbd0_5 .net v0x1c0fbd0 5, 31 0, L_0x1c27530; 1 drivers
v0x1c0fbd0_6 .net v0x1c0fbd0 6, 31 0, L_0x1c27630; 1 drivers
v0x1c0fbd0_7 .net v0x1c0fbd0 7, 31 0, L_0x1c27730; 1 drivers
v0x1c0fbd0_8 .net v0x1c0fbd0 8, 31 0, L_0x1c27830; 1 drivers
v0x1c0fbd0_9 .net v0x1c0fbd0 9, 31 0, L_0x1c27930; 1 drivers
v0x1c0fbd0_10 .net v0x1c0fbd0 10, 31 0, L_0x1c27a60; 1 drivers
v0x1c0fbd0_11 .net v0x1c0fbd0 11, 31 0, L_0x1c27b90; 1 drivers
v0x1c0fbd0_12 .net v0x1c0fbd0 12, 31 0, L_0x1c27d30; 1 drivers
v0x1c0fbd0_13 .net v0x1c0fbd0 13, 31 0, L_0x1c27e60; 1 drivers
v0x1c0fbd0_14 .net v0x1c0fbd0 14, 31 0, L_0x1c27cc0; 1 drivers
v0x1c0fbd0_15 .net v0x1c0fbd0 15, 31 0, L_0x1c28050; 1 drivers
v0x1c0fbd0_16 .net v0x1c0fbd0 16, 31 0, L_0x1c28210; 1 drivers
v0x1c0fbd0_17 .net v0x1c0fbd0 17, 31 0, L_0x1c28340; 1 drivers
v0x1c0fbd0_18 .net v0x1c0fbd0 18, 31 0, L_0x1c28180; 1 drivers
v0x1c0fbd0_19 .net v0x1c0fbd0 19, 31 0, L_0x1c285d0; 1 drivers
v0x1c0fbd0_20 .net v0x1c0fbd0 20, 31 0, L_0x1c28470; 1 drivers
v0x1c0fbd0_21 .net v0x1c0fbd0 21, 31 0, L_0x1c28840; 1 drivers
v0x1c0fbd0_22 .net v0x1c0fbd0 22, 31 0, L_0x1c28700; 1 drivers
v0x1c0fbd0_23 .net v0x1c0fbd0 23, 31 0, L_0x1c28ac0; 1 drivers
v0x1c0fbd0_24 .net v0x1c0fbd0 24, 31 0, L_0x1c28970; 1 drivers
v0x1c0fbd0_25 .net v0x1c0fbd0 25, 31 0, L_0x1c28d50; 1 drivers
v0x1c0fbd0_26 .net v0x1c0fbd0 26, 31 0, L_0x1c28bf0; 1 drivers
v0x1c0fbd0_27 .net v0x1c0fbd0 27, 31 0, L_0x1c28ff0; 1 drivers
v0x1c0fbd0_28 .net v0x1c0fbd0 28, 31 0, L_0x1c28e80; 1 drivers
v0x1c0fbd0_29 .net v0x1c0fbd0 29, 31 0, L_0x1c29270; 1 drivers
v0x1c0fbd0_30 .net v0x1c0fbd0 30, 31 0, L_0x1c290f0; 1 drivers
v0x1c0fbd0_31 .net v0x1c0fbd0 31, 31 0, L_0x1c29500; 1 drivers
v0x1c10180_0 .net "out", 31 0, L_0x1c297b0;  alias, 1 drivers
L_0x1c29370 .array/port v0x1c0fbd0, L_0x1c29710;
L_0x1c29710 .concat [ 5 2 0 0], v0x1b61b30_0, L_0x7f20eb31d138;
S_0x1b37890 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f20eb37db08 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1c13dd0_0 .net "address", 4 0, o0x7f20eb37db08;  0 drivers
o0x7f20eb37db38 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1c13e70_0 .net "inputs", 31 0, o0x7f20eb37db38;  0 drivers
v0x1c13f50_0 .net "out", 0 0, L_0x1c51c00;  1 drivers
L_0x1c51c00 .part/v o0x7f20eb37db38, o0x7f20eb37db08, 1;
S_0x1b33200 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f20eb37dc28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c14090_0 .net "clk", 0 0, o0x7f20eb37dc28;  0 drivers
o0x7f20eb37dc58 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c14170_0 .net "d", 0 0, o0x7f20eb37dc58;  0 drivers
v0x1c14230_0 .var "q", 0 0;
o0x7f20eb37dcb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c142d0_0 .net "wrenable", 0 0, o0x7f20eb37dcb8;  0 drivers
E_0x1c0eb70 .event posedge, v0x1c14090_0;
S_0x1b2eb70 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f20eb37dda8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c14490_0 .net "clk", 0 0, o0x7f20eb37dda8;  0 drivers
o0x7f20eb37ddd8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1c14570_0 .net "d", 31 0, o0x7f20eb37ddd8;  0 drivers
v0x1c14650_0 .var "q", 31 0;
o0x7f20eb37de38 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c14710_0 .net "wrenable", 0 0, o0x7f20eb37de38;  0 drivers
E_0x1c14410 .event posedge, v0x1c14490_0;
S_0x1b98fb0 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f20eb37df28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c148d0_0 .net "clk", 0 0, o0x7f20eb37df28;  0 drivers
o0x7f20eb37df58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1c149b0_0 .net "d", 31 0, o0x7f20eb37df58;  0 drivers
v0x1c14a90_0 .var "q", 31 0;
o0x7f20eb37dfb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1c14b50_0 .net "wrenable", 0 0, o0x7f20eb37dfb8;  0 drivers
E_0x1c14850 .event posedge, v0x1c148d0_0;
    .scope S_0x1c01d30;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1c02110_0, 0;
    %end;
    .thread T_0;
    .scope S_0x1c01d30;
T_1 ;
    %wait E_0x1c01fa0;
    %load/vec4 v0x1c021d0_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x1c025e0_0;
    %assign/vec4 v0x1c02500_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x1c021d0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x1c02000_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1c02500_0, 4, 5;
    %load/vec4 v0x1c025e0_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1c02500_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1c02500_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x1c021d0_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x1c023c0_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x1c02780_0, 0, 32;
    %load/vec4 v0x1c02780_0;
    %load/vec4 v0x1c025e0_0;
    %add;
    %store/vec4 v0x1c02500_0, 0, 32;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x1c026c0_0;
    %assign/vec4 v0x1c02500_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0x1c02110_0;
    %addi 4, 0, 32;
    %assign/vec4 v0x1c025e0_0, 0;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x1c01d30;
T_2 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c02500_0;
    %store/vec4 v0x1c02110_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x1b8f5b0;
T_3 ;
    %wait E_0x1b0aa60;
    %load/vec4 v0x1b89740_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1b1fd60_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1b20120_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x1b89740_0;
    %pushi/vec4 4, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1b89380_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.2, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b20120_0, 0, 2;
    %vpi_call 5 17 "$display", "I AM GOING TO BRANCH ON EQUAL: Flag = %b", v0x1b89380_0 {0 0 0};
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x1b89740_0;
    %pushi/vec4 5, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1b89380_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b20120_0, 0, 2;
    %vpi_call 5 18 "$display", "I AM GOING TO BRANCH ON NOT EQUAL: Flag = %b", v0x1b89380_0 {0 0 0};
    %jmp T_3.5;
T_3.4 ;
    %load/vec4 v0x1b89740_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x1b89740_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.6, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b20120_0, 0, 2;
    %jmp T_3.7;
T_3.6 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b20120_0, 0, 2;
T_3.7 ;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %vpi_call 5 21 "$display", "grrr,opcode: %b, zeroflag: %b, controlSig: %b", v0x1b89740_0, v0x1b89380_0, v0x1b20120_0 {0 0 0};
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x1c00850;
T_4 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c01520_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x1c00c00_0;
    %ix/getv 3, v0x1c00b00_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c013a0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x1c00850;
T_5 ;
    %vpi_call 10 20 "$readmemh", "array.text", v0x1c013a0 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x1b796f0;
T_6 ;
    %wait E_0x1b20240;
    %load/vec4 v0x1b1b790_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1b80860_0, 4, 16;
    %jmp T_6.1;
T_6.0 ;
    %pushi/vec4 65535, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1b80860_0, 4, 16;
T_6.1 ;
    %load/vec4 v0x1b1b790_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x1b7c1b0_0, 0, 6;
    %load/vec4 v0x1b1b790_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x1b807a0_0, 0, 6;
    %load/vec4 v0x1b1b790_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x1b61ef0_0, 0, 5;
    %load/vec4 v0x1b1b790_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x1b61b30_0, 0, 5;
    %load/vec4 v0x1b1b790_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x1b665a0_0, 0, 5;
    %load/vec4 v0x1b1b790_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x1b1b830_0, 0, 6;
    %load/vec4 v0x1b1b790_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1b80860_0, 4, 16;
    %load/vec4 v0x1b1b790_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x1b84d90_0, 0, 26;
    %load/vec4 v0x1b7c1b0_0;
    %dup/vec4;
    %pushi/vec4 35, 0, 6;
    %cmp/u;
    %jmp/1 T_6.2, 6;
    %dup/vec4;
    %pushi/vec4 43, 0, 6;
    %cmp/u;
    %jmp/1 T_6.3, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 6;
    %cmp/u;
    %jmp/1 T_6.4, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 6;
    %cmp/u;
    %jmp/1 T_6.5, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 6;
    %cmp/u;
    %jmp/1 T_6.6, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 6;
    %cmp/u;
    %jmp/1 T_6.7, 6;
    %dup/vec4;
    %pushi/vec4 14, 0, 6;
    %cmp/u;
    %jmp/1 T_6.8, 6;
    %dup/vec4;
    %pushi/vec4 8, 0, 6;
    %cmp/u;
    %jmp/1 T_6.9, 6;
    %dup/vec4;
    %pushi/vec4 0, 0, 6;
    %cmp/u;
    %jmp/1 T_6.10, 6;
    %jmp T_6.11;
T_6.2 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.5 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.6 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.8 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.9 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x1b807a0_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x1b807a0_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x1b807a0_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
    %jmp T_6.17;
T_6.16 ;
    %load/vec4 v0x1b807a0_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.18, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b66120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1b1bbf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b7c5b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b85150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b80bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b661c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b851f0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1b664e0_0, 0, 2;
T_6.18 ;
T_6.17 ;
T_6.15 ;
T_6.13 ;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x1c04df0;
T_7 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x1c050a0;
T_8 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x1c05330;
T_9 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x1c055e0;
T_10 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x1c058e0;
T_11 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x1c05b90;
T_12 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x1c05e40;
T_13 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x1c060f0;
T_14 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x1c063e0;
T_15 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x1c06690;
T_16 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x1c06940;
T_17 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x1c06bf0;
T_18 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x1c06ea0;
T_19 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x1c07150;
T_20 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x1c07400;
T_21 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x1c076b0;
T_22 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x1c07a00;
T_23 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x1c07c90;
T_24 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x1c07f40;
T_25 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x1c081f0;
T_26 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x1c084a0;
T_27 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x1c08750;
T_28 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x1c08a00;
T_29 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x1c08cb0;
T_30 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x1c08f60;
T_31 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x1c09210;
T_32 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x1c094c0;
T_33 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x1c09770;
T_34 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x1c09a20;
T_35 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x1c09cd0;
T_36 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x1c09f80;
T_37 ;
    %wait E_0x1c00a80;
    %load/vec4 v0x1c10d60_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x1c10bb0_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1c10eb0, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x1b3a620;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1c13bf0_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x1b3a620;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x1c13bf0_0;
    %nor/r;
    %store/vec4 v0x1c13bf0_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x1b3a620;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x1c13c90_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x1c13d30_0 {0 0 0};
    %delay 200000, 0;
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x1b33200;
T_41 ;
    %wait E_0x1c0eb70;
    %load/vec4 v0x1c142d0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x1c14170_0;
    %assign/vec4 v0x1c14230_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x1b2eb70;
T_42 ;
    %wait E_0x1c14410;
    %load/vec4 v0x1c14710_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x1c14570_0;
    %assign/vec4 v0x1c14650_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x1b98fb0;
T_43 ;
    %wait E_0x1c14850;
    %load/vec4 v0x1c14b50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1c14a90_0, 0;
T_43.0 ;
    %jmp T_43;
    .thread T_43;
# The file index is used to find the file name in the following table.
:file_names 17;
    "N/A";
    "<interactive>";
    "./ALU/operations/add_sub.v";
    "cpu.t.v";
    "./singlecycleCPU.v";
    "./pcController.v";
    "./instruction_decoder.v";
    "./ALU/alu.v";
    "./ALU/operations/gates.v";
    "./ALU/operations/multiplexer.v";
    "./memory.v";
    "./muxes.v";
    "./pc_multiplexer.v";
    "./regfile.v";
    "./decoders.v";
    "./mux.v";
    "./register.v";
