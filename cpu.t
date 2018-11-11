#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1f6bcd0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7f4bb5db0018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7f4bb5db0048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x20abc90 .functor XOR 1, o0x7f4bb5db0018, o0x7f4bb5db0048, C4<0>, C4<0>;
o0x7f4bb5db0078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x20abd20 .functor XOR 1, L_0x20abc90, o0x7f4bb5db0078, C4<0>, C4<0>;
L_0x20abde0 .functor AND 1, L_0x20abc90, o0x7f4bb5db0078, C4<1>, C4<1>;
L_0x20abea0 .functor AND 1, o0x7f4bb5db0018, o0x7f4bb5db0048, C4<1>, C4<1>;
L_0x20abfb0 .functor OR 1, L_0x20abde0, L_0x20abea0, C4<0>, C4<0>;
L_0x20ac0c0 .functor XOR 1, L_0x20abfb0, o0x7f4bb5db0078, C4<0>, C4<0>;
v0x1f769f0_0 .net "A", 0 0, o0x7f4bb5db0018;  0 drivers
v0x1f8fa30_0 .net "B", 0 0, o0x7f4bb5db0048;  0 drivers
v0x1f8faf0_0 .net "carryin", 0 0, o0x7f4bb5db0078;  0 drivers
v0x1f82400_0 .net "carryout", 0 0, L_0x20abfb0;  1 drivers
v0x1f824c0_0 .net "out1", 0 0, L_0x20abc90;  1 drivers
v0x1fd12d0_0 .net "out2", 0 0, L_0x20abde0;  1 drivers
v0x1fbfd00_0 .net "out3", 0 0, L_0x20abea0;  1 drivers
v0x1fbfdc0_0 .net "overflow", 0 0, L_0x20ac0c0;  1 drivers
v0x1fbf940_0 .net "sum", 0 0, L_0x20abd20;  1 drivers
S_0x1fd1620 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x20aabf0_0 .var "clk", 0 0;
v0x20aac90_0 .net "dataMem", 31 0, L_0x20ac410;  1 drivers
v0x20aad30_0 .net "regRT", 31 0, L_0x20c07b0;  1 drivers
S_0x202ac50 .scope module, "cpu" "singlecycleCPU" 3 9, 4 16 0, S_0x1fd1620;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x20a8b30_0 .net "ALU_op", 2 0, v0x1fb2bf0_0;  1 drivers
v0x20a8c10_0 .net "DM_WE", 0 0, v0x201c150_0;  1 drivers
v0x20a8cd0_0 .net "DM_add", 0 0, v0x201c1f0_0;  1 drivers
v0x20a8d70_0 .net "JumpAddress", 25 0, v0x201bd90_0;  1 drivers
v0x20a8e60_0 .net "PC", 31 0, v0x2099110_0;  1 drivers
v0x20a8f50_0 .net "S", 1 0, v0x1fb7120_0;  1 drivers
L_0x7f4bb5d67b58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x20a9040_0 .net/2u *"_s10", 31 0, L_0x7f4bb5d67b58;  1 drivers
v0x20a9100_0 .net *"_s4", 29 0, L_0x20ac810;  1 drivers
L_0x7f4bb5d67018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x20a91e0_0 .net *"_s6", 1 0, L_0x7f4bb5d67018;  1 drivers
v0x20a9350_0 .net "alu2", 31 0, L_0x20e8b60;  1 drivers
v0x20a9410_0 .net "alu_out", 31 0, L_0x20e5050;  1 drivers
v0x20a9520_0 .net "clk", 0 0, v0x20aabf0_0;  1 drivers
v0x20a9650_0 .net "co_flag", 0 0, L_0x207d180;  1 drivers
v0x20a9780_0 .net "dataMem", 31 0, L_0x20ac410;  alias, 1 drivers
v0x20a9840_0 .net "dest_add", 1 0, v0x2017bd0_0;  1 drivers
v0x20a9900_0 .net "funct", 5 0, v0x20177a0_0;  1 drivers
v0x20a9a10_0 .net "immediate", 31 0, v0x2017860_0;  1 drivers
v0x20a9bc0_0 .net "instruction", 31 0, L_0x20ac5b0;  1 drivers
v0x20a9c60_0 .net "op_imm", 0 0, v0x20135b0_0;  1 drivers
v0x20a9d50_0 .net "opcode", 5 0, v0x20131b0_0;  1 drivers
v0x20a9e60_0 .net "ov_flag", 0 0, L_0x20e4c00;  1 drivers
v0x20a9f90_0 .net "pc", 1 0, v0x1ffd4e0_0;  1 drivers
v0x20aa050_0 .net "rd", 4 0, v0x1ffd5a0_0;  1 drivers
v0x20aa0f0_0 .net "regRS", 31 0, L_0x20be050;  1 drivers
v0x20aa240_0 .net "regRT", 31 0, L_0x20c07b0;  alias, 1 drivers
v0x20aa390_0 .net "reg_WE", 0 0, v0x1ffd120_0;  1 drivers
v0x20aa430_0 .net "reg_in", 1 0, v0x1ffd1c0_0;  1 drivers
v0x20aa4f0_0 .net "reg_in_mux_out", 31 0, L_0x20e8820;  1 drivers
v0x20aa5b0_0 .net "reg_select_mux_out", 4 0, L_0x20e81f0;  1 drivers
v0x20aa670_0 .net "rs", 4 0, v0x1ff8ef0_0;  1 drivers
v0x20aa730_0 .net "rt", 4 0, v0x1ff8b30_0;  1 drivers
v0x20aa880_0 .net "shamt", 5 0, v0x1fb2830_0;  1 drivers
v0x20aa940_0 .net "zero_flag", 0 0, L_0x20e4050;  1 drivers
L_0x20ac670 .arith/sum 32, v0x2017860_0, L_0x20be050;
L_0x20ac810 .part v0x2099110_0, 2, 30;
L_0x20ac8b0 .concat [ 30 2 0 0], L_0x20ac810, L_0x7f4bb5d67018;
L_0x20e89b0 .arith/sum 32, v0x2099110_0, L_0x7f4bb5d67b58;
S_0x20265b0 .scope module, "controlPC" "pcController" 4 49, 5 8 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x1fb7120_0 .var "controlSig", 1 0;
v0x1fb6d60_0 .net "function1", 5 0, v0x20177a0_0;  alias, 1 drivers
v0x2020740_0 .net "opcode", 5 0, v0x20131b0_0;  alias, 1 drivers
v0x2020380_0 .net "zeroFlag", 0 0, L_0x20e4050;  alias, 1 drivers
E_0x1fa1a60 .event edge, v0x1fb6d60_0, v0x2020380_0, v0x2020740_0;
S_0x20106f0 .scope module, "decode" "instructionDecoder" 4 53, 6 20 0, S_0x202ac50;
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
v0x1fb2bf0_0 .var "ALU_op", 2 0;
v0x201c150_0 .var "DM_WE", 0 0;
v0x201c1f0_0 .var "DM_add", 0 0;
v0x201bd90_0 .var "address", 25 0;
v0x201be50_0 .net "clk", 0 0, v0x20aabf0_0;  alias, 1 drivers
v0x2017bd0_0 .var "dest_add", 1 0;
v0x20177a0_0 .var "funct", 5 0;
v0x2017860_0 .var "immediate", 31 0;
v0x1fb2790_0 .net "instruction", 31 0, L_0x20ac5b0;  alias, 1 drivers
v0x20135b0_0 .var "op_imm", 0 0;
v0x20131b0_0 .var "opcode", 5 0;
v0x1ffd4e0_0 .var "pc", 1 0;
v0x1ffd5a0_0 .var "rd", 4 0;
v0x1ffd120_0 .var "reg_WE", 0 0;
v0x1ffd1c0_0 .var "reg_in", 1 0;
v0x1ff8ef0_0 .var "rs", 4 0;
v0x1ff8b30_0 .var "rt", 4 0;
v0x1fb2830_0 .var "shamt", 5 0;
E_0x1fb7240 .event edge, v0x1fb2790_0;
S_0x200c060 .scope module, "lulu" "ALU" 4 59, 7 105 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x20e4050/0/0 .functor OR 1, L_0x20d37c0, L_0x20e52a0, L_0x20e5340, L_0x20e5430;
L_0x20e4050/0/4 .functor OR 1, L_0x20e5d00, L_0x20d38b0, L_0x20e59c0, L_0x20e5ab0;
L_0x20e4050/0/8 .functor OR 1, L_0x20e5ba0, L_0x20e6210, L_0x20e5eb0, L_0x20e5fa0;
L_0x20e4050/0/12 .functor OR 1, L_0x20e6090, L_0x20e5da0, L_0x20e62b0, L_0x20e63a0;
L_0x20e4050/0/16 .functor OR 1, L_0x20e6490, L_0x20e6580, L_0x20e6bf0, L_0x20e6c90;
L_0x20e4050/0/20 .functor OR 1, L_0x20e6840, L_0x20e6930, L_0x20e6a20, L_0x20e6b10;
L_0x20e4050/0/24 .functor OR 1, L_0x20e6d80, L_0x20e6e70, L_0x20e6f60, L_0x20e7050;
L_0x20e4050/0/28 .functor OR 1, L_0x20e75a0, L_0x20e6630, L_0x20e6720, L_0x20e71a0;
L_0x20e4050/0/32 .functor OR 1, L_0x20e7290, L_0x20e7380, C4<0>, C4<0>;
L_0x20e4050/1/0 .functor OR 1, L_0x20e4050/0/0, L_0x20e4050/0/4, L_0x20e4050/0/8, L_0x20e4050/0/12;
L_0x20e4050/1/4 .functor OR 1, L_0x20e4050/0/16, L_0x20e4050/0/20, L_0x20e4050/0/24, L_0x20e4050/0/28;
L_0x20e4050/1/8 .functor OR 1, L_0x20e4050/0/32, C4<0>, C4<0>, C4<0>;
L_0x20e4050 .functor NOR 1, L_0x20e4050/1/0, L_0x20e4050/1/4, L_0x20e4050/1/8, C4<0>;
v0x2095100_0 .net "A", 31 0, L_0x20be050;  alias, 1 drivers
v0x2095200_0 .net "B", 31 0, L_0x20e8b60;  alias, 1 drivers
v0x20952e0_0 .net *"_s322", 0 0, L_0x20d37c0;  1 drivers
v0x20953d0_0 .net *"_s324", 0 0, L_0x20e52a0;  1 drivers
v0x20954b0_0 .net *"_s326", 0 0, L_0x20e5340;  1 drivers
v0x20955e0_0 .net *"_s328", 0 0, L_0x20e5430;  1 drivers
v0x20956c0_0 .net *"_s330", 0 0, L_0x20e5d00;  1 drivers
v0x20957a0_0 .net *"_s332", 0 0, L_0x20d38b0;  1 drivers
v0x2095880_0 .net *"_s334", 0 0, L_0x20e59c0;  1 drivers
v0x20959f0_0 .net *"_s336", 0 0, L_0x20e5ab0;  1 drivers
v0x2095ad0_0 .net *"_s338", 0 0, L_0x20e5ba0;  1 drivers
v0x2095bb0_0 .net *"_s340", 0 0, L_0x20e6210;  1 drivers
v0x2095c90_0 .net *"_s342", 0 0, L_0x20e5eb0;  1 drivers
v0x2095d70_0 .net *"_s344", 0 0, L_0x20e5fa0;  1 drivers
v0x2095e50_0 .net *"_s346", 0 0, L_0x20e6090;  1 drivers
v0x2095f30_0 .net *"_s348", 0 0, L_0x20e5da0;  1 drivers
v0x2096010_0 .net *"_s350", 0 0, L_0x20e62b0;  1 drivers
v0x20961c0_0 .net *"_s352", 0 0, L_0x20e63a0;  1 drivers
v0x2096260_0 .net *"_s354", 0 0, L_0x20e6490;  1 drivers
v0x2096340_0 .net *"_s356", 0 0, L_0x20e6580;  1 drivers
v0x2096420_0 .net *"_s358", 0 0, L_0x20e6bf0;  1 drivers
v0x2096500_0 .net *"_s360", 0 0, L_0x20e6c90;  1 drivers
v0x20965e0_0 .net *"_s362", 0 0, L_0x20e6840;  1 drivers
v0x20966c0_0 .net *"_s364", 0 0, L_0x20e6930;  1 drivers
v0x20967a0_0 .net *"_s366", 0 0, L_0x20e6a20;  1 drivers
v0x2096880_0 .net *"_s368", 0 0, L_0x20e6b10;  1 drivers
v0x2096960_0 .net *"_s370", 0 0, L_0x20e6d80;  1 drivers
v0x2096a40_0 .net *"_s372", 0 0, L_0x20e6e70;  1 drivers
v0x2096b20_0 .net *"_s374", 0 0, L_0x20e6f60;  1 drivers
v0x2096c00_0 .net *"_s376", 0 0, L_0x20e7050;  1 drivers
v0x2096ce0_0 .net *"_s378", 0 0, L_0x20e75a0;  1 drivers
v0x2096dc0_0 .net *"_s380", 0 0, L_0x20e6630;  1 drivers
v0x2096ea0_0 .net *"_s382", 0 0, L_0x20e6720;  1 drivers
v0x20960f0_0 .net *"_s384", 0 0, L_0x20e71a0;  1 drivers
v0x2097170_0 .net *"_s386", 0 0, L_0x20e7290;  1 drivers
v0x2097250_0 .net *"_s388", 0 0, L_0x20e7380;  1 drivers
v0x2097330_0 .net "carryout", 0 0, L_0x207d180;  alias, 1 drivers
v0x20973d0_0 .net "command", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2097490_0 .net "cout", 30 0, L_0x20e3cc0;  1 drivers
v0x2097570_0 .net "overflow", 0 0, L_0x20e4c00;  alias, 1 drivers
v0x2097610_0 .net "result", 31 0, L_0x20e5050;  alias, 1 drivers
v0x20976f0_0 .net "zero", 0 0, L_0x20e4050;  alias, 1 drivers
L_0x20c1270 .part L_0x20be050, 0, 1;
L_0x20c1310 .part L_0x20e8b60, 0, 1;
L_0x20c13b0 .part v0x1fb2bf0_0, 0, 1;
L_0x20c21a0 .part L_0x20be050, 1, 1;
L_0x20c2350 .part L_0x20e8b60, 1, 1;
L_0x20c23f0 .part L_0x20e3cc0, 0, 1;
L_0x20c34c0 .part L_0x20be050, 2, 1;
L_0x20c3560 .part L_0x20e8b60, 2, 1;
L_0x20c3600 .part L_0x20e3cc0, 1, 1;
L_0x20c4720 .part L_0x20be050, 3, 1;
L_0x20c47c0 .part L_0x20e8b60, 3, 1;
L_0x20c4860 .part L_0x20e3cc0, 2, 1;
L_0x20c57a0 .part L_0x20be050, 4, 1;
L_0x20c5840 .part L_0x20e8b60, 4, 1;
L_0x20c5960 .part L_0x20e3cc0, 3, 1;
L_0x20c6900 .part L_0x20be050, 5, 1;
L_0x20c6a30 .part L_0x20e8b60, 5, 1;
L_0x20c6be0 .part L_0x20e3cc0, 4, 1;
L_0x20c7b50 .part L_0x20be050, 6, 1;
L_0x20c7bf0 .part L_0x20e8b60, 6, 1;
L_0x20c6c80 .part L_0x20e3cc0, 5, 1;
L_0x20c8d70 .part L_0x20be050, 7, 1;
L_0x20c7c90 .part L_0x20e8b60, 7, 1;
L_0x20c8ed0 .part L_0x20e3cc0, 6, 1;
L_0x20c9fc0 .part L_0x20be050, 8, 1;
L_0x20ca060 .part L_0x20e8b60, 8, 1;
L_0x20c9000 .part L_0x20e3cc0, 7, 1;
L_0x20cb270 .part L_0x20be050, 9, 1;
L_0x20ca100 .part L_0x20e8b60, 9, 1;
L_0x20cb520 .part L_0x20e3cc0, 8, 1;
L_0x20cc6c0 .part L_0x20be050, 10, 1;
L_0x20cc760 .part L_0x20e8b60, 10, 1;
L_0x20cc800 .part L_0x20e3cc0, 9, 1;
L_0x20cd840 .part L_0x20be050, 11, 1;
L_0x20c2240 .part L_0x20e8b60, 11, 1;
L_0x20cda00 .part L_0x20e3cc0, 10, 1;
L_0x20ceab0 .part L_0x20be050, 12, 1;
L_0x20ceb50 .part L_0x20e8b60, 12, 1;
L_0x20cdb30 .part L_0x20e3cc0, 11, 1;
L_0x20cfcf0 .part L_0x20be050, 13, 1;
L_0x20cebf0 .part L_0x20e8b60, 13, 1;
L_0x20cec90 .part L_0x20e3cc0, 12, 1;
L_0x20d1050 .part L_0x20be050, 14, 1;
L_0x20d10f0 .part L_0x20e8b60, 14, 1;
L_0x20d00f0 .part L_0x20e3cc0, 13, 1;
L_0x20d22a0 .part L_0x20be050, 15, 1;
L_0x20d1190 .part L_0x20e8b60, 15, 1;
L_0x20d1230 .part L_0x20e3cc0, 14, 1;
L_0x20d34e0 .part L_0x20be050, 16, 1;
L_0x20d3580 .part L_0x20e8b60, 16, 1;
L_0x20d2550 .part L_0x20e3cc0, 15, 1;
L_0x20d4800 .part L_0x20be050, 17, 1;
L_0x20d3620 .part L_0x20e8b60, 17, 1;
L_0x20d36c0 .part L_0x20e3cc0, 16, 1;
L_0x20d5a60 .part L_0x20be050, 18, 1;
L_0x20d5b00 .part L_0x20e8b60, 18, 1;
L_0x20d4ae0 .part L_0x20e3cc0, 17, 1;
L_0x20d6c80 .part L_0x20be050, 19, 1;
L_0x20d5ba0 .part L_0x20e8b60, 19, 1;
L_0x20d5c40 .part L_0x20e3cc0, 18, 1;
L_0x20d7eb0 .part L_0x20be050, 20, 1;
L_0x20d7f50 .part L_0x20e8b60, 20, 1;
L_0x20d6d20 .part L_0x20e3cc0, 19, 1;
L_0x20d90e0 .part L_0x20be050, 21, 1;
L_0x20d7ff0 .part L_0x20e8b60, 21, 1;
L_0x20d8090 .part L_0x20e3cc0, 20, 1;
L_0x20da320 .part L_0x20be050, 22, 1;
L_0x20da3c0 .part L_0x20e8b60, 22, 1;
L_0x20d9180 .part L_0x20e3cc0, 21, 1;
L_0x20db550 .part L_0x20be050, 23, 1;
L_0x20da460 .part L_0x20e8b60, 23, 1;
L_0x20da500 .part L_0x20e3cc0, 22, 1;
L_0x20dc780 .part L_0x20be050, 24, 1;
L_0x20dc820 .part L_0x20e8b60, 24, 1;
L_0x20db5f0 .part L_0x20e3cc0, 23, 1;
L_0x20dd9b0 .part L_0x20be050, 25, 1;
L_0x20cb310 .part L_0x20e8b60, 25, 1;
L_0x20cb3b0 .part L_0x20e3cc0, 24, 1;
L_0x20cc5b0 .part L_0x20be050, 26, 1;
L_0x20dee00 .part L_0x20e8b60, 26, 1;
L_0x20dde60 .part L_0x20e3cc0, 25, 1;
L_0x20dfe70 .part L_0x20be050, 27, 1;
L_0x20deea0 .part L_0x20e8b60, 27, 1;
L_0x20def40 .part L_0x20e3cc0, 26, 1;
L_0x20e0fa0 .part L_0x20be050, 28, 1;
L_0x20e1040 .part L_0x20e8b60, 28, 1;
L_0x20dff10 .part L_0x20e3cc0, 27, 1;
L_0x20e20c0 .part L_0x20be050, 29, 1;
L_0x20e10e0 .part L_0x20e8b60, 29, 1;
L_0x20cfee0 .part L_0x20e3cc0, 28, 1;
LS_0x20e3cc0_0_0 .concat8 [ 1 1 1 1], L_0x1fe5bc0, L_0x1f968a0, L_0x204e000, L_0x2075dd0;
LS_0x20e3cc0_0_4 .concat8 [ 1 1 1 1], L_0x20815a0, L_0x2084f70, L_0x2088940, L_0x208c310;
LS_0x20e3cc0_0_8 .concat8 [ 1 1 1 1], L_0x208fce0, L_0x20936b0, L_0x1fa3550, L_0x1ff97a0;
LS_0x20e3cc0_0_12 .concat8 [ 1 1 1 1], L_0x1fced70, L_0x1f8a680, L_0x1fc8d80, L_0x1feb6d0;
LS_0x20e3cc0_0_16 .concat8 [ 1 1 1 1], L_0x1e61620, L_0x1e641e0, L_0x2046ca0, L_0x204a630;
LS_0x20e3cc0_0_20 .concat8 [ 1 1 1 1], L_0x20519d0, L_0x20553a0, L_0x2058d70, L_0x205c920;
LS_0x20e3cc0_0_24 .concat8 [ 1 1 1 1], L_0x20602f0, L_0x2063cc0, L_0x2067690, L_0x206b060;
LS_0x20e3cc0_0_28 .concat8 [ 1 1 1 0], L_0x206ea30, L_0x2072400, L_0x20797a0;
LS_0x20e3cc0_1_0 .concat8 [ 4 4 4 4], LS_0x20e3cc0_0_0, LS_0x20e3cc0_0_4, LS_0x20e3cc0_0_8, LS_0x20e3cc0_0_12;
LS_0x20e3cc0_1_4 .concat8 [ 4 4 4 3], LS_0x20e3cc0_0_16, LS_0x20e3cc0_0_20, LS_0x20e3cc0_0_24, LS_0x20e3cc0_0_28;
L_0x20e3cc0 .concat8 [ 16 15 0 0], LS_0x20e3cc0_1_0, LS_0x20e3cc0_1_4;
L_0x20e3e70 .part L_0x20be050, 30, 1;
L_0x20e2840 .part L_0x20e8b60, 30, 1;
L_0x20e28e0 .part L_0x20e3cc0, 29, 1;
LS_0x20e5050_0_0 .concat8 [ 1 1 1 1], L_0x20c0f60, L_0x20c1d00, L_0x20c2e00, L_0x20c40f0;
LS_0x20e5050_0_4 .concat8 [ 1 1 1 1], L_0x20c5220, L_0x20c6330, L_0x20c7580, L_0x20c8740;
LS_0x20e5050_0_8 .concat8 [ 1 1 1 1], L_0x20c9990, L_0x20cac40, L_0x20cbf80, L_0x20cd210;
LS_0x20e5050_0_12 .concat8 [ 1 1 1 1], L_0x20ce480, L_0x20cf6c0, L_0x20d0a20, L_0x20d1c70;
LS_0x20e5050_0_16 .concat8 [ 1 1 1 1], L_0x20d2eb0, L_0x20d41d0, L_0x20d5430, L_0x20d6650;
LS_0x20e5050_0_20 .concat8 [ 1 1 1 1], L_0x20d7880, L_0x20d8ab0, L_0x20d9cf0, L_0x20daf20;
LS_0x20e5050_0_24 .concat8 [ 1 1 1 1], L_0x20dc150, L_0x20dd380, L_0x20de620, L_0x20df8a0;
LS_0x20e5050_0_28 .concat8 [ 1 1 1 1], L_0x20e09d0, L_0x20e1af0, L_0x20948e0, L_0x20e4ac0;
LS_0x20e5050_1_0 .concat8 [ 4 4 4 4], LS_0x20e5050_0_0, LS_0x20e5050_0_4, LS_0x20e5050_0_8, LS_0x20e5050_0_12;
LS_0x20e5050_1_4 .concat8 [ 4 4 4 4], LS_0x20e5050_0_16, LS_0x20e5050_0_20, LS_0x20e5050_0_24, LS_0x20e5050_0_28;
L_0x20e5050 .concat8 [ 16 16 0 0], LS_0x20e5050_1_0, LS_0x20e5050_1_4;
L_0x20e5200 .part L_0x20be050, 31, 1;
L_0x20e3f10 .part L_0x20e8b60, 31, 1;
L_0x20e3fb0 .part L_0x20e3cc0, 30, 1;
L_0x20d37c0 .part L_0x20e5050, 0, 1;
L_0x20e52a0 .part L_0x20e5050, 1, 1;
L_0x20e5340 .part L_0x20e5050, 2, 1;
L_0x20e5430 .part L_0x20e5050, 3, 1;
L_0x20e5d00 .part L_0x20e5050, 4, 1;
L_0x20d38b0 .part L_0x20e5050, 5, 1;
L_0x20e59c0 .part L_0x20e5050, 6, 1;
L_0x20e5ab0 .part L_0x20e5050, 7, 1;
L_0x20e5ba0 .part L_0x20e5050, 8, 1;
L_0x20e6210 .part L_0x20e5050, 9, 1;
L_0x20e5eb0 .part L_0x20e5050, 10, 1;
L_0x20e5fa0 .part L_0x20e5050, 11, 1;
L_0x20e6090 .part L_0x20e5050, 12, 1;
L_0x20e5da0 .part L_0x20e5050, 13, 1;
L_0x20e62b0 .part L_0x20e5050, 14, 1;
L_0x20e63a0 .part L_0x20e5050, 15, 1;
L_0x20e6490 .part L_0x20e5050, 16, 1;
L_0x20e6580 .part L_0x20e5050, 17, 1;
L_0x20e6bf0 .part L_0x20e5050, 18, 1;
L_0x20e6c90 .part L_0x20e5050, 19, 1;
L_0x20e6840 .part L_0x20e5050, 20, 1;
L_0x20e6930 .part L_0x20e5050, 21, 1;
L_0x20e6a20 .part L_0x20e5050, 22, 1;
L_0x20e6b10 .part L_0x20e5050, 23, 1;
L_0x20e6d80 .part L_0x20e5050, 24, 1;
L_0x20e6e70 .part L_0x20e5050, 25, 1;
L_0x20e6f60 .part L_0x20e5050, 26, 1;
L_0x20e7050 .part L_0x20e5050, 27, 1;
L_0x20e75a0 .part L_0x20e5050, 28, 1;
L_0x20e6630 .part L_0x20e5050, 29, 1;
L_0x20e6720 .part L_0x20e5050, 28, 1;
L_0x20e71a0 .part L_0x20e5050, 29, 1;
L_0x20e7290 .part L_0x20e5050, 30, 1;
L_0x20e7380 .part L_0x20e5050, 31, 1;
S_0x20079c0 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c1000 .functor BUFZ 1, L_0x20c0a30, C4<0>, C4<0>, C4<0>;
L_0x20c10b0 .functor BUFZ 1, L_0x20c0a30, C4<0>, C4<0>, C4<0>;
v0x1f9d750_0 .net "A", 0 0, L_0x20c1270;  1 drivers
v0x1f9d7f0_0 .net "B", 0 0, L_0x20c1310;  1 drivers
v0x1f9d280_0 .net "I", 7 0, L_0x20c11d0;  1 drivers
v0x1f9d320_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1f9ce00_0 .net *"_s15", 0 0, L_0x20c1000;  1 drivers
v0x1f9c8e0_0 .net *"_s19", 0 0, L_0x20c10b0;  1 drivers
L_0x7f4bb5d671c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f95560_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d671c8;  1 drivers
v0x1f9c410_0 .net "addORsub", 0 0, L_0x20c0a30;  1 drivers
v0x1f9c4b0_0 .net "carryin", 0 0, L_0x20c13b0;  1 drivers
v0x1f9bf40_0 .net "carryout", 0 0, L_0x1fe5bc0;  1 drivers
v0x1f9bfe0_0 .net "modB", 0 0, L_0x20c0820;  1 drivers
v0x1f9ba70_0 .net "out", 0 0, L_0x20c0f60;  1 drivers
L_0x20c0890 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c11d0_0_0 .concat8 [ 1 1 1 1], L_0x20c1000, L_0x20c10b0, L_0x20c0c90, L_0x7f4bb5d671c8;
LS_0x20c11d0_0_4 .concat8 [ 1 1 1 1], L_0x1fa8330, L_0x20c0e10, L_0x20c0e80, L_0x20c0ef0;
L_0x20c11d0 .concat8 [ 4 4 0 0], LS_0x20c11d0_0_0, LS_0x20c11d0_0_4;
S_0x1fafcc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c0930 .functor XOR 1, L_0x20c1270, L_0x20c0820, C4<0>, C4<0>;
L_0x20c0a30 .functor XOR 1, L_0x20c0930, L_0x20c13b0, C4<0>, C4<0>;
L_0x20c0aa0 .functor AND 1, L_0x20c0930, L_0x20c13b0, C4<1>, C4<1>;
L_0x20c0b10 .functor AND 1, L_0x20c1270, L_0x20c0820, C4<1>, C4<1>;
L_0x1fe5bc0 .functor OR 1, L_0x20c0aa0, L_0x20c0b10, C4<0>, C4<0>;
v0x1fda3c0_0 .net "A", 0 0, L_0x20c1270;  alias, 1 drivers
v0x1fd9f80_0 .net "B", 0 0, L_0x20c0820;  alias, 1 drivers
v0x1fda040_0 .net "carryin", 0 0, L_0x20c13b0;  alias, 1 drivers
v0x1fd5d50_0 .net "carryout", 0 0, L_0x1fe5bc0;  alias, 1 drivers
v0x1fd5e10_0 .net "out1", 0 0, L_0x20c0930;  1 drivers
v0x1fd5a00_0 .net "out2", 0 0, L_0x20c0aa0;  1 drivers
v0x1fcfd20_0 .net "out3", 0 0, L_0x20c0b10;  1 drivers
v0x1fcfde0_0 .net "sum", 0 0, L_0x20c0a30;  alias, 1 drivers
S_0x1fed430 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fa8330 .functor AND 1, L_0x20c1270, L_0x20c1310, C4<1>, C4<1>;
v0x1fc7000_0 .net "A", 0 0, L_0x20c1270;  alias, 1 drivers
v0x1fc70c0_0 .net "B", 0 0, L_0x20c1310;  alias, 1 drivers
v0x1fc2960_0 .net "out", 0 0, L_0x1fa8330;  1 drivers
S_0x1fe8da0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x202c0e0_0 .net "I", 7 0, L_0x20c11d0;  alias, 1 drivers
v0x2027a40_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x20233a0_0 .net "out", 0 0, L_0x20c0f60;  alias, 1 drivers
L_0x20c0f60 .part/v L_0x20c11d0, v0x1fb2bf0_0, 1;
S_0x1fe4710 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c0e10 .functor NAND 1, L_0x20c1270, L_0x20c1310, C4<1>, C4<1>;
v0x200d4f0_0 .net "A", 0 0, L_0x20c1270;  alias, 1 drivers
v0x2008e50_0 .net "B", 0 0, L_0x20c1310;  alias, 1 drivers
v0x2008f10_0 .net "out", 0 0, L_0x20c0e10;  1 drivers
S_0x1fe0f30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c0e80 .functor NOR 1, L_0x20c1270, L_0x20c1310, C4<0>, C4<0>;
v0x2004800_0 .net "A", 0 0, L_0x20c1270;  alias, 1 drivers
v0x1fee8c0_0 .net "B", 0 0, L_0x20c1310;  alias, 1 drivers
v0x1fee980_0 .net "out", 0 0, L_0x20c0e80;  1 drivers
S_0x1fd2030 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c0ef0 .functor OR 1, L_0x20c1270, L_0x20c1310, C4<0>, C4<0>;
v0x1fea2f0_0 .net "A", 0 0, L_0x20c1270;  alias, 1 drivers
v0x1fe5c50_0 .net "B", 0 0, L_0x20c1310;  alias, 1 drivers
v0x1facad0_0 .net "out", 0 0, L_0x20c0ef0;  1 drivers
S_0x1fab620 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c0820 .functor XOR 1, L_0x20c1310, L_0x20c0890, C4<0>, C4<0>;
v0x1fa6040_0 .net "A", 0 0, L_0x20c1310;  alias, 1 drivers
v0x1fa83c0_0 .net "B", 0 0, L_0x20c0890;  1 drivers
v0x1e26180_0 .net "out", 0 0, L_0x20c0820;  alias, 1 drivers
S_0x1fc19b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x20079c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c0c90 .functor XOR 1, L_0x20c1270, L_0x20c1310, C4<0>, C4<0>;
v0x1f9e0f0_0 .net "A", 0 0, L_0x20c1270;  alias, 1 drivers
v0x1f9e1b0_0 .net "B", 0 0, L_0x20c1310;  alias, 1 drivers
v0x1f9dc20_0 .net "out", 0 0, L_0x20c0c90;  1 drivers
S_0x202ee60 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c1dc0 .functor BUFZ 1, L_0x20c1750, C4<0>, C4<0>, C4<0>;
L_0x20c1e50 .functor BUFZ 1, L_0x20c1750, C4<0>, C4<0>, C4<0>;
v0x1fbaf00_0 .net "A", 0 0, L_0x20c21a0;  1 drivers
v0x1fb68d0_0 .net "B", 0 0, L_0x20c2350;  1 drivers
v0x1fb6990_0 .net "I", 7 0, L_0x20c1f70;  1 drivers
v0x201fef0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x201b900_0 .net *"_s15", 0 0, L_0x20c1dc0;  1 drivers
v0x201b9c0_0 .net *"_s19", 0 0, L_0x20c1e50;  1 drivers
L_0x7f4bb5d67210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2017310_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67210;  1 drivers
v0x20173d0_0 .net "addORsub", 0 0, L_0x20c1750;  1 drivers
v0x2012d20_0 .net "carryin", 0 0, L_0x20c23f0;  1 drivers
v0x1fb22e0_0 .net "carryout", 0 0, L_0x1f968a0;  1 drivers
v0x1fb23b0_0 .net "modB", 0 0, L_0x20c14e0;  1 drivers
v0x1ffcc90_0 .net "out", 0 0, L_0x20c1d00;  1 drivers
L_0x20c1550 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c1f70_0_0 .concat8 [ 1 1 1 1], L_0x20c1dc0, L_0x20c1e50, L_0x20c19f0, L_0x7f4bb5d67210;
LS_0x20c1f70_0_4 .concat8 [ 1 1 1 1], L_0x1f94ca0, L_0x20c1b70, L_0x20c1be0, L_0x20c1c70;
L_0x20c1f70 .concat8 [ 4 4 0 0], LS_0x20c1f70_0_0, LS_0x20c1f70_0_4;
S_0x1fbd390 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c1610 .functor XOR 1, L_0x20c21a0, L_0x20c14e0, C4<0>, C4<0>;
L_0x20c1750 .functor XOR 1, L_0x20c1610, L_0x20c23f0, C4<0>, C4<0>;
L_0x20c17e0 .functor AND 1, L_0x20c1610, L_0x20c23f0, C4<1>, C4<1>;
L_0x20c1870 .functor AND 1, L_0x20c21a0, L_0x20c14e0, C4<1>, C4<1>;
L_0x1f968a0 .functor OR 1, L_0x20c17e0, L_0x20c1870, C4<0>, C4<0>;
v0x1f9b0d0_0 .net "A", 0 0, L_0x20c21a0;  alias, 1 drivers
v0x1f9ac00_0 .net "B", 0 0, L_0x20c14e0;  alias, 1 drivers
v0x1f9acc0_0 .net "carryin", 0 0, L_0x20c23f0;  alias, 1 drivers
v0x1f9a730_0 .net "carryout", 0 0, L_0x1f968a0;  alias, 1 drivers
v0x1f9a7f0_0 .net "out1", 0 0, L_0x20c1610;  1 drivers
v0x1f9a260_0 .net "out2", 0 0, L_0x20c17e0;  1 drivers
v0x1f9a320_0 .net "out3", 0 0, L_0x20c1870;  1 drivers
v0x1f99d90_0 .net "sum", 0 0, L_0x20c1750;  alias, 1 drivers
S_0x1fb8da0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f94ca0 .functor AND 1, L_0x20c21a0, L_0x20c2350, C4<1>, C4<1>;
v0x1f99910_0 .net "A", 0 0, L_0x20c21a0;  alias, 1 drivers
v0x1f95090_0 .net "B", 0 0, L_0x20c2350;  alias, 1 drivers
v0x1f95130_0 .net "out", 0 0, L_0x1f94ca0;  1 drivers
S_0x1fb47b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f994c0_0 .net "I", 7 0, L_0x20c1f70;  alias, 1 drivers
v0x1f98f60_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1f98a50_0 .net "out", 0 0, L_0x20c1d00;  alias, 1 drivers
L_0x20c1d00 .part/v L_0x20c1f70, v0x1fb2bf0_0, 1;
S_0x201ddd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c1b70 .functor NAND 1, L_0x20c21a0, L_0x20c2350, C4<1>, C4<1>;
v0x1f98580_0 .net "A", 0 0, L_0x20c21a0;  alias, 1 drivers
v0x1f980b0_0 .net "B", 0 0, L_0x20c2350;  alias, 1 drivers
v0x1f98170_0 .net "out", 0 0, L_0x20c1b70;  1 drivers
S_0x20197e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c1be0 .functor NOR 1, L_0x20c21a0, L_0x20c2350, C4<0>, C4<0>;
v0x1f97710_0 .net "A", 0 0, L_0x20c21a0;  alias, 1 drivers
v0x1f977d0_0 .net "B", 0 0, L_0x20c2350;  alias, 1 drivers
v0x1f97240_0 .net "out", 0 0, L_0x20c1be0;  1 drivers
S_0x20151f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c1c70 .functor OR 1, L_0x20c21a0, L_0x20c2350, C4<0>, C4<0>;
v0x1f96dc0_0 .net "A", 0 0, L_0x20c21a0;  alias, 1 drivers
v0x1f96930_0 .net "B", 0 0, L_0x20c2350;  alias, 1 drivers
v0x1f94bc0_0 .net "out", 0 0, L_0x20c1c70;  1 drivers
S_0x1fff160 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c14e0 .functor XOR 1, L_0x20c2350, L_0x20c1550, C4<0>, C4<0>;
v0x1f963d0_0 .net "A", 0 0, L_0x20c2350;  alias, 1 drivers
v0x1f96490_0 .net "B", 0 0, L_0x20c1550;  1 drivers
v0x1f95f00_0 .net "out", 0 0, L_0x20c14e0;  alias, 1 drivers
S_0x1fb06a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x202ee60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c19f0 .functor XOR 1, L_0x20c21a0, L_0x20c2350, C4<0>, C4<0>;
v0x1f95ad0_0 .net "A", 0 0, L_0x20c21a0;  alias, 1 drivers
v0x1fbf4b0_0 .net "B", 0 0, L_0x20c2350;  alias, 1 drivers
v0x1fbf570_0 .net "out", 0 0, L_0x20c19f0;  1 drivers
S_0x1ffab70 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20cc0e0 .functor BUFZ 1, L_0x20cb860, C4<0>, C4<0>, C4<0>;
L_0x20cc170 .functor BUFZ 1, L_0x20cb860, C4<0>, C4<0>, C4<0>;
v0x1fa1b50_0 .net "A", 0 0, L_0x20cc6c0;  1 drivers
v0x1fa1bf0_0 .net "B", 0 0, L_0x20cc760;  1 drivers
v0x1fa1820_0 .net "I", 7 0, L_0x20cc290;  1 drivers
v0x1fa18f0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1fa14f0_0 .net *"_s15", 0 0, L_0x20cc0e0;  1 drivers
v0x1fa15e0_0 .net *"_s19", 0 0, L_0x20cc170;  1 drivers
L_0x7f4bb5d67498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fa11c0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67498;  1 drivers
v0x1fa12a0_0 .net "addORsub", 0 0, L_0x20cb860;  1 drivers
v0x1fa0e90_0 .net "carryin", 0 0, L_0x20cc800;  1 drivers
v0x1fa0b60_0 .net "carryout", 0 0, L_0x1fa3550;  1 drivers
v0x1fa0c30_0 .net "modB", 0 0, L_0x20cb650;  1 drivers
v0x1fa0830_0 .net "out", 0 0, L_0x20cbf80;  1 drivers
L_0x20cb6c0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20cc290_0_0 .concat8 [ 1 1 1 1], L_0x20cc0e0, L_0x20cc170, L_0x20cbc70, L_0x7f4bb5d67498;
LS_0x20cc290_0_4 .concat8 [ 1 1 1 1], L_0x1fa2c80, L_0x20cbdf0, L_0x20cbe60, L_0x20cbef0;
L_0x20cc290 .concat8 [ 4 4 0 0], LS_0x20cc290_0_0, LS_0x20cc290_0_4;
S_0x1ff6580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20cb760 .functor XOR 1, L_0x20cc6c0, L_0x20cb650, C4<0>, C4<0>;
L_0x20cb860 .functor XOR 1, L_0x20cb760, L_0x20cc800, C4<0>, C4<0>;
L_0x20cb970 .functor AND 1, L_0x20cb760, L_0x20cc800, C4<1>, C4<1>;
L_0x20cba00 .functor AND 1, L_0x20cc6c0, L_0x20cb650, C4<1>, C4<1>;
L_0x1fa3550 .functor OR 1, L_0x20cb970, L_0x20cba00, C4<0>, C4<0>;
v0x1ff4130_0 .net "A", 0 0, L_0x20cc6c0;  alias, 1 drivers
v0x1fde0e0_0 .net "B", 0 0, L_0x20cb650;  alias, 1 drivers
v0x1fde1a0_0 .net "carryin", 0 0, L_0x20cc800;  alias, 1 drivers
v0x1fd9af0_0 .net "carryout", 0 0, L_0x1fa3550;  alias, 1 drivers
v0x1fd9bb0_0 .net "out1", 0 0, L_0x20cb760;  1 drivers
v0x1fd5570_0 .net "out2", 0 0, L_0x20cb970;  1 drivers
v0x1ff1fa0_0 .net "out3", 0 0, L_0x20cba00;  1 drivers
v0x1ff2060_0 .net "sum", 0 0, L_0x20cb860;  alias, 1 drivers
S_0x1fdbfc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fa2c80 .functor AND 1, L_0x20cc6c0, L_0x20cc760, C4<1>, C4<1>;
v0x1fd79d0_0 .net "A", 0 0, L_0x20cc6c0;  alias, 1 drivers
v0x1fd7a90_0 .net "B", 0 0, L_0x20cc760;  alias, 1 drivers
v0x1fd33e0_0 .net "out", 0 0, L_0x1fa2c80;  1 drivers
S_0x1f8ef90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fa59b0_0 .net "I", 7 0, L_0x20cc290;  alias, 1 drivers
v0x1fa5630_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1fa56f0_0 .net "out", 0 0, L_0x20cbf80;  alias, 1 drivers
L_0x20cbf80 .part/v L_0x20cc290, v0x1fb2bf0_0, 1;
S_0x1fa5200 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cbdf0 .functor NAND 1, L_0x20cc6c0, L_0x20cc760, C4<1>, C4<1>;
v0x1fa4f70_0 .net "A", 0 0, L_0x20cc6c0;  alias, 1 drivers
v0x1fa4bf0_0 .net "B", 0 0, L_0x20cc760;  alias, 1 drivers
v0x1fa4870_0 .net "out", 0 0, L_0x20cbdf0;  1 drivers
S_0x1fa4540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cbe60 .functor NOR 1, L_0x20cc6c0, L_0x20cc760, C4<0>, C4<0>;
v0x1fa4210_0 .net "A", 0 0, L_0x20cc6c0;  alias, 1 drivers
v0x1fa42d0_0 .net "B", 0 0, L_0x20cc760;  alias, 1 drivers
v0x1fa3f30_0 .net "out", 0 0, L_0x20cbe60;  1 drivers
S_0x1fa3bb0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cbef0 .functor OR 1, L_0x20cc6c0, L_0x20cc760, C4<0>, C4<0>;
v0x1fa3920_0 .net "A", 0 0, L_0x20cc6c0;  alias, 1 drivers
v0x1fa35e0_0 .net "B", 0 0, L_0x20cc760;  alias, 1 drivers
v0x1fa3220_0 .net "out", 0 0, L_0x20cbef0;  1 drivers
S_0x1fa2ef0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cb650 .functor XOR 1, L_0x20cc760, L_0x20cb6c0, C4<0>, C4<0>;
v0x1fa2bc0_0 .net "A", 0 0, L_0x20cc760;  alias, 1 drivers
v0x1fa2890_0 .net "B", 0 0, L_0x20cb6c0;  1 drivers
v0x1fa2950_0 .net "out", 0 0, L_0x20cb650;  alias, 1 drivers
S_0x1f8e890 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1ffab70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cbc70 .functor XOR 1, L_0x20cc6c0, L_0x20cc760, C4<0>, C4<0>;
v0x1fa25b0_0 .net "A", 0 0, L_0x20cc6c0;  alias, 1 drivers
v0x1fa2650_0 .net "B", 0 0, L_0x20cc760;  alias, 1 drivers
v0x1fa2230_0 .net "out", 0 0, L_0x20cbc70;  1 drivers
S_0x1f8e530 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20cd370 .functor BUFZ 1, L_0x20ccad0, C4<0>, C4<0>, C4<0>;
L_0x20cd400 .functor BUFZ 1, L_0x20ccad0, C4<0>, C4<0>, C4<0>;
v0x1fc5870_0 .net "A", 0 0, L_0x20cd840;  1 drivers
v0x1fc14d0_0 .net "B", 0 0, L_0x20c2240;  1 drivers
v0x1fc1590_0 .net "I", 7 0, L_0x20cd520;  1 drivers
v0x202a850_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x20261b0_0 .net *"_s15", 0 0, L_0x20cd370;  1 drivers
v0x2026270_0 .net *"_s19", 0 0, L_0x20cd400;  1 drivers
L_0x7f4bb5d674e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x200bc60_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d674e0;  1 drivers
v0x200bd40_0 .net "addORsub", 0 0, L_0x20ccad0;  1 drivers
v0x20075c0_0 .net "carryin", 0 0, L_0x20cda00;  1 drivers
v0x2007660_0 .net "carryout", 0 0, L_0x1ff97a0;  1 drivers
v0x1fed030_0 .net "modB", 0 0, L_0x20cc8a0;  1 drivers
v0x1fed0d0_0 .net "out", 0 0, L_0x20cd210;  1 drivers
L_0x20cc910 .part v0x1fb2bf0_0, 0, 1;
LS_0x20cd520_0_0 .concat8 [ 1 1 1 1], L_0x20cd370, L_0x20cd400, L_0x20ccf00, L_0x7f4bb5d674e0;
LS_0x20cd520_0_4 .concat8 [ 1 1 1 1], L_0x1fdabf0, L_0x20cd080, L_0x20cd0f0, L_0x20cd180;
L_0x20cd520 .concat8 [ 4 4 0 0], LS_0x20cd520_0_0, LS_0x20cd520_0_4;
S_0x1fa04b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20cc9b0 .functor XOR 1, L_0x20cd840, L_0x20cc8a0, C4<0>, C4<0>;
L_0x20ccad0 .functor XOR 1, L_0x20cc9b0, L_0x20cda00, C4<0>, C4<0>;
L_0x20ccc00 .functor AND 1, L_0x20cc9b0, L_0x20cda00, C4<1>, C4<1>;
L_0x20ccc90 .functor AND 1, L_0x20cd840, L_0x20cc8a0, C4<1>, C4<1>;
L_0x1ff97a0 .functor OR 1, L_0x20ccc00, L_0x20ccc90, C4<0>, C4<0>;
v0x1fa0200_0 .net "A", 0 0, L_0x20cd840;  alias, 1 drivers
v0x1f9fe50_0 .net "B", 0 0, L_0x20cc8a0;  alias, 1 drivers
v0x1f9ff10_0 .net "carryin", 0 0, L_0x20cda00;  alias, 1 drivers
v0x1f9f7e0_0 .net "carryout", 0 0, L_0x1ff97a0;  alias, 1 drivers
v0x1f9f8a0_0 .net "out1", 0 0, L_0x20cc9b0;  1 drivers
v0x1f8e220_0 .net "out2", 0 0, L_0x20ccc00;  1 drivers
v0x1fe1520_0 .net "out3", 0 0, L_0x20ccc90;  1 drivers
v0x1fe15e0_0 .net "sum", 0 0, L_0x20ccad0;  alias, 1 drivers
S_0x203cbd0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fdabf0 .functor AND 1, L_0x20cd840, L_0x20c2240, C4<1>, C4<1>;
v0x1f9f410_0 .net "A", 0 0, L_0x20cd840;  alias, 1 drivers
v0x1f8d5b0_0 .net "B", 0 0, L_0x20c2240;  alias, 1 drivers
v0x1f8d650_0 .net "out", 0 0, L_0x1fdabf0;  1 drivers
S_0x203c2b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2020aa0_0 .net "I", 7 0, L_0x20cd520;  alias, 1 drivers
v0x2020b60_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1fbbfc0_0 .net "out", 0 0, L_0x20cd210;  alias, 1 drivers
L_0x20cd210 .part/v L_0x20cd520, v0x1fb2bf0_0, 1;
S_0x1fb79d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cd080 .functor NAND 1, L_0x20cd840, L_0x20c2240, C4<1>, C4<1>;
v0x202e430_0 .net "A", 0 0, L_0x20cd840;  alias, 1 drivers
v0x202e520_0 .net "B", 0 0, L_0x20c2240;  alias, 1 drivers
v0x1fb33e0_0 .net "out", 0 0, L_0x20cd080;  1 drivers
S_0x2020ff0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cd0f0 .functor NOR 1, L_0x20cd840, L_0x20c2240, C4<0>, C4<0>;
v0x201caa0_0 .net "A", 0 0, L_0x20cd840;  alias, 1 drivers
v0x2018410_0 .net "B", 0 0, L_0x20c2240;  alias, 1 drivers
v0x2013e20_0 .net "out", 0 0, L_0x20cd0f0;  1 drivers
S_0x1ffdd90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cd180 .functor OR 1, L_0x20cd840, L_0x20c2240, C4<0>, C4<0>;
v0x2013f20_0 .net "A", 0 0, L_0x20cd840;  alias, 1 drivers
v0x1ff9830_0 .net "B", 0 0, L_0x20c2240;  alias, 1 drivers
v0x1ff51b0_0 .net "out", 0 0, L_0x20cd180;  1 drivers
S_0x1fdf1e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cc8a0 .functor XOR 1, L_0x20c2240, L_0x20cc910, C4<0>, C4<0>;
v0x1ff52b0_0 .net "A", 0 0, L_0x20c2240;  alias, 1 drivers
v0x1fdac80_0 .net "B", 0 0, L_0x20cc910;  1 drivers
v0x1fd6600_0 .net "out", 0 0, L_0x20cc8a0;  alias, 1 drivers
S_0x1fce490 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1f8e530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ccf00 .functor XOR 1, L_0x20cd840, L_0x20c2240, C4<0>, C4<0>;
v0x1fc9e00_0 .net "A", 0 0, L_0x20cd840;  alias, 1 drivers
v0x1fc9ec0_0 .net "B", 0 0, L_0x20c2240;  alias, 1 drivers
v0x1fc5770_0 .net "out", 0 0, L_0x20ccf00;  1 drivers
S_0x1fe89a0 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20ce5e0 .functor BUFZ 1, L_0x20cdd60, C4<0>, C4<0>, C4<0>;
L_0x20ce670 .functor BUFZ 1, L_0x20cdd60, C4<0>, C4<0>, C4<0>;
v0x2007ea0_0 .net "A", 0 0, L_0x20ceab0;  1 drivers
v0x2007f40_0 .net "B", 0 0, L_0x20ceb50;  1 drivers
v0x1fed910_0 .net "I", 7 0, L_0x20ce790;  1 drivers
v0x1feda10_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1fe9280_0 .net *"_s15", 0 0, L_0x20ce5e0;  1 drivers
v0x1fe9390_0 .net *"_s19", 0 0, L_0x20ce670;  1 drivers
L_0x7f4bb5d67528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fe4bf0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67528;  1 drivers
v0x1fe4cd0_0 .net "addORsub", 0 0, L_0x20cdd60;  1 drivers
v0x1fabb00_0 .net "carryin", 0 0, L_0x20cdb30;  1 drivers
v0x1fbba70_0 .net "carryout", 0 0, L_0x1fced70;  1 drivers
v0x1fbbb10_0 .net "modB", 0 0, L_0x20c22e0;  1 drivers
v0x1fb7480_0 .net "out", 0 0, L_0x20ce480;  1 drivers
L_0x20cd8e0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20ce790_0_0 .concat8 [ 1 1 1 1], L_0x20ce5e0, L_0x20ce670, L_0x20ce170, L_0x7f4bb5d67528;
LS_0x20ce790_0_4 .concat8 [ 1 1 1 1], L_0x202b130, L_0x20ce2f0, L_0x20ce360, L_0x20ce3f0;
L_0x20ce790 .concat8 [ 4 4 0 0], LS_0x20ce790_0_0, LS_0x20ce790_0_4;
S_0x1fab220 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20cdc60 .functor XOR 1, L_0x20ceab0, L_0x20c22e0, C4<0>, C4<0>;
L_0x20cdd60 .functor XOR 1, L_0x20cdc60, L_0x20cdb30, C4<0>, C4<0>;
L_0x20cde70 .functor AND 1, L_0x20cdc60, L_0x20cdb30, C4<1>, C4<1>;
L_0x20cdee0 .functor AND 1, L_0x20ceab0, L_0x20c22e0, C4<1>, C4<1>;
L_0x1fced70 .functor OR 1, L_0x20cde70, L_0x20cdee0, C4<0>, C4<0>;
v0x1fbdd30_0 .net "A", 0 0, L_0x20ceab0;  alias, 1 drivers
v0x1fbde10_0 .net "B", 0 0, L_0x20c22e0;  alias, 1 drivers
v0x1fb9740_0 .net "carryin", 0 0, L_0x20cdb30;  alias, 1 drivers
v0x1fb9800_0 .net "carryout", 0 0, L_0x1fced70;  alias, 1 drivers
v0x1fb5150_0 .net "out1", 0 0, L_0x20cdc60;  1 drivers
v0x1fb5260_0 .net "out2", 0 0, L_0x20cde70;  1 drivers
v0x201e770_0 .net "out3", 0 0, L_0x20cdee0;  1 drivers
v0x201e830_0 .net "sum", 0 0, L_0x20cdd60;  alias, 1 drivers
S_0x201a180 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202b130 .functor AND 1, L_0x20ceab0, L_0x20ceb50, C4<1>, C4<1>;
v0x2015c30_0 .net "A", 0 0, L_0x20ceab0;  alias, 1 drivers
v0x20115b0_0 .net "B", 0 0, L_0x20ceb50;  alias, 1 drivers
v0x2011650_0 .net "out", 0 0, L_0x202b130;  1 drivers
S_0x1fffb00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1ffb560_0 .net "I", 7 0, L_0x20ce790;  alias, 1 drivers
v0x1ff6f20_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1ff6fe0_0 .net "out", 0 0, L_0x20ce480;  alias, 1 drivers
L_0x20ce480 .part/v L_0x20ce790, v0x1fb2bf0_0, 1;
S_0x1ff2940 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ce2f0 .functor NAND 1, L_0x20ceab0, L_0x20ceb50, C4<1>, C4<1>;
v0x1fdca00_0 .net "A", 0 0, L_0x20ceab0;  alias, 1 drivers
v0x1fd8370_0 .net "B", 0 0, L_0x20ceb50;  alias, 1 drivers
v0x1fd8430_0 .net "out", 0 0, L_0x20ce2f0;  1 drivers
S_0x1fd3d80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ce360 .functor NOR 1, L_0x20ceab0, L_0x20ceb50, C4<0>, C4<0>;
v0x1f8ece0_0 .net "A", 0 0, L_0x20ceab0;  alias, 1 drivers
v0x1f83260_0 .net "B", 0 0, L_0x20ceb50;  alias, 1 drivers
v0x1f83370_0 .net "out", 0 0, L_0x20ce360;  1 drivers
S_0x1f82d70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ce3f0 .functor OR 1, L_0x20ceab0, L_0x20ceb50, C4<0>, C4<0>;
v0x1fa6f40_0 .net "A", 0 0, L_0x20ceab0;  alias, 1 drivers
v0x1fcee00_0 .net "B", 0 0, L_0x20ceb50;  alias, 1 drivers
v0x1fca6e0_0 .net "out", 0 0, L_0x20ce3f0;  1 drivers
S_0x1fc6050 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c22e0 .functor XOR 1, L_0x20ceb50, L_0x20cd8e0, C4<0>, C4<0>;
v0x1fca7e0_0 .net "A", 0 0, L_0x20ceb50;  alias, 1 drivers
v0x202b1c0_0 .net "B", 0 0, L_0x20cd8e0;  1 drivers
v0x2026a90_0 .net "out", 0 0, L_0x20c22e0;  alias, 1 drivers
S_0x2010bd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1fe89a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ce170 .functor XOR 1, L_0x20ceab0, L_0x20ceb50, C4<0>, C4<0>;
v0x2026b70_0 .net "A", 0 0, L_0x20ceab0;  alias, 1 drivers
v0x200c540_0 .net "B", 0 0, L_0x20ceb50;  alias, 1 drivers
v0x200c600_0 .net "out", 0 0, L_0x20ce170;  1 drivers
S_0x1fb2e90 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20cf820 .functor BUFZ 1, L_0x20cef80, C4<0>, C4<0>, C4<0>;
L_0x20cf8b0 .functor BUFZ 1, L_0x20cef80, C4<0>, C4<0>, C4<0>;
v0x1f88560_0 .net "A", 0 0, L_0x20cfcf0;  1 drivers
v0x1f87f60_0 .net "B", 0 0, L_0x20cebf0;  1 drivers
v0x1f88020_0 .net "I", 7 0, L_0x20cf9d0;  1 drivers
v0x1f87a90_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1f87b30_0 .net *"_s15", 0 0, L_0x20cf820;  1 drivers
v0x1f875c0_0 .net *"_s19", 0 0, L_0x20cf8b0;  1 drivers
L_0x7f4bb5d67570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f876a0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67570;  1 drivers
v0x1f870f0_0 .net "addORsub", 0 0, L_0x20cef80;  1 drivers
v0x1f87190_0 .net "carryin", 0 0, L_0x20cec90;  1 drivers
v0x1f86c20_0 .net "carryout", 0 0, L_0x1f8a680;  1 drivers
v0x1f86cf0_0 .net "modB", 0 0, L_0x20ced30;  1 drivers
v0x1f86750_0 .net "out", 0 0, L_0x20cf6c0;  1 drivers
L_0x20ceda0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20cf9d0_0_0 .concat8 [ 1 1 1 1], L_0x20cf820, L_0x20cf8b0, L_0x20cf3b0, L_0x7f4bb5d67570;
LS_0x20cf9d0_0_4 .concat8 [ 1 1 1 1], L_0x1f89830, L_0x20cf530, L_0x20cf5a0, L_0x20cf630;
L_0x20cf9d0 .concat8 [ 4 4 0 0], LS_0x20cf9d0_0_0, LS_0x20cf9d0_0_4;
S_0x201c4b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20cee40 .functor XOR 1, L_0x20cfcf0, L_0x20ced30, C4<0>, C4<0>;
L_0x20cef80 .functor XOR 1, L_0x20cee40, L_0x20cec90, C4<0>, C4<0>;
L_0x20cf0b0 .functor AND 1, L_0x20cee40, L_0x20cec90, C4<1>, C4<1>;
L_0x20cf140 .functor AND 1, L_0x20cfcf0, L_0x20ced30, C4<1>, C4<1>;
L_0x1f8a680 .functor OR 1, L_0x20cf0b0, L_0x20cf140, C4<0>, C4<0>;
v0x2017f40_0 .net "A", 0 0, L_0x20cfcf0;  alias, 1 drivers
v0x20138d0_0 .net "B", 0 0, L_0x20ced30;  alias, 1 drivers
v0x2013990_0 .net "carryin", 0 0, L_0x20cec90;  alias, 1 drivers
v0x1ffd840_0 .net "carryout", 0 0, L_0x1f8a680;  alias, 1 drivers
v0x1ffd900_0 .net "out1", 0 0, L_0x20cee40;  1 drivers
v0x1ff9250_0 .net "out2", 0 0, L_0x20cf0b0;  1 drivers
v0x1ff9310_0 .net "out3", 0 0, L_0x20cf140;  1 drivers
v0x1ff4c60_0 .net "sum", 0 0, L_0x20cef80;  alias, 1 drivers
S_0x1fdec90 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f89830 .functor AND 1, L_0x20cfcf0, L_0x20cebf0, C4<1>, C4<1>;
v0x1fda6a0_0 .net "A", 0 0, L_0x20cfcf0;  alias, 1 drivers
v0x1fda760_0 .net "B", 0 0, L_0x20cebf0;  alias, 1 drivers
v0x1fd60b0_0 .net "out", 0 0, L_0x1f89830;  1 drivers
S_0x1fd1a20 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f9ec70_0 .net "I", 7 0, L_0x20cf9d0;  alias, 1 drivers
v0x1f9ed50_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1f8c2c0_0 .net "out", 0 0, L_0x20cf6c0;  alias, 1 drivers
L_0x20cf6c0 .part/v L_0x20cf9d0, v0x1fb2bf0_0, 1;
S_0x1f8bdf0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cf530 .functor NAND 1, L_0x20cfcf0, L_0x20cebf0, C4<1>, C4<1>;
v0x1f8c3e0_0 .net "A", 0 0, L_0x20cfcf0;  alias, 1 drivers
v0x1f8b970_0 .net "B", 0 0, L_0x20cebf0;  alias, 1 drivers
v0x1f8ba10_0 .net "out", 0 0, L_0x20cf530;  1 drivers
S_0x1f8b450 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cf5a0 .functor NOR 1, L_0x20cfcf0, L_0x20cebf0, C4<0>, C4<0>;
v0x1f8b020_0 .net "A", 0 0, L_0x20cfcf0;  alias, 1 drivers
v0x1f8aab0_0 .net "B", 0 0, L_0x20cebf0;  alias, 1 drivers
v0x1f8abc0_0 .net "out", 0 0, L_0x20cf5a0;  1 drivers
S_0x1f83720 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cf630 .functor OR 1, L_0x20cfcf0, L_0x20cebf0, C4<0>, C4<0>;
v0x1f8a5e0_0 .net "A", 0 0, L_0x20cfcf0;  alias, 1 drivers
v0x1f8a710_0 .net "B", 0 0, L_0x20cebf0;  alias, 1 drivers
v0x1f8a130_0 .net "out", 0 0, L_0x20cf630;  1 drivers
S_0x1f89c40 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ced30 .functor XOR 1, L_0x20cebf0, L_0x20ceda0, C4<0>, C4<0>;
v0x1f89770_0 .net "A", 0 0, L_0x20cebf0;  alias, 1 drivers
v0x1f892a0_0 .net "B", 0 0, L_0x20ceda0;  1 drivers
v0x1f89360_0 .net "out", 0 0, L_0x20ced30;  alias, 1 drivers
S_0x1f88dd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1fb2e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cf3b0 .functor XOR 1, L_0x20cfcf0, L_0x20cebf0, C4<0>, C4<0>;
v0x1f88900_0 .net "A", 0 0, L_0x20cfcf0;  alias, 1 drivers
v0x1f889c0_0 .net "B", 0 0, L_0x20cebf0;  alias, 1 drivers
v0x1f88430_0 .net "out", 0 0, L_0x20cf3b0;  1 drivers
S_0x1f86280 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d0b80 .functor BUFZ 1, L_0x20d02e0, C4<0>, C4<0>, C4<0>;
L_0x20d0c10 .functor BUFZ 1, L_0x20d02e0, C4<0>, C4<0>, C4<0>;
v0x1fa99a0_0 .net "A", 0 0, L_0x20d1050;  1 drivers
v0x20296e0_0 .net "B", 0 0, L_0x20d10f0;  1 drivers
v0x20297a0_0 .net "I", 7 0, L_0x20d0d30;  1 drivers
v0x20292e0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2029380_0 .net *"_s15", 0 0, L_0x20d0b80;  1 drivers
v0x2028ef0_0 .net *"_s19", 0 0, L_0x20d0c10;  1 drivers
L_0x7f4bb5d675b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2028fd0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d675b8;  1 drivers
v0x2025040_0 .net "addORsub", 0 0, L_0x20d02e0;  1 drivers
v0x20250e0_0 .net "carryin", 0 0, L_0x20d00f0;  1 drivers
v0x2024c40_0 .net "carryout", 0 0, L_0x1fc8d80;  1 drivers
v0x2024d10_0 .net "modB", 0 0, L_0x20c6b60;  1 drivers
v0x2024850_0 .net "out", 0 0, L_0x20d0a20;  1 drivers
L_0x20cfd90 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d0d30_0_0 .concat8 [ 1 1 1 1], L_0x20d0b80, L_0x20d0c10, L_0x20d0710, L_0x7f4bb5d675b8;
LS_0x20d0d30_0_4 .concat8 [ 1 1 1 1], L_0x1fa9d50, L_0x20d0890, L_0x20d0900, L_0x20d0990;
L_0x20d0d30 .concat8 [ 4 4 0 0], LS_0x20d0d30_0_0, LS_0x20d0d30_0_4;
S_0x1f85db0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20cfe50 .functor XOR 1, L_0x20d1050, L_0x20c6b60, C4<0>, C4<0>;
L_0x20d02e0 .functor XOR 1, L_0x20cfe50, L_0x20d00f0, C4<0>, C4<0>;
L_0x20d0410 .functor AND 1, L_0x20cfe50, L_0x20d00f0, C4<1>, C4<1>;
L_0x20d04a0 .functor AND 1, L_0x20d1050, L_0x20c6b60, C4<1>, C4<1>;
L_0x1fc8d80 .functor OR 1, L_0x20d0410, L_0x20d04a0, C4<0>, C4<0>;
v0x1f858e0_0 .net "A", 0 0, L_0x20d1050;  alias, 1 drivers
v0x1f859c0_0 .net "B", 0 0, L_0x20c6b60;  alias, 1 drivers
v0x1f85410_0 .net "carryin", 0 0, L_0x20d00f0;  alias, 1 drivers
v0x1f854b0_0 .net "carryout", 0 0, L_0x1fc8d80;  alias, 1 drivers
v0x1f84f40_0 .net "out1", 0 0, L_0x20cfe50;  1 drivers
v0x1f85050_0 .net "out2", 0 0, L_0x20d0410;  1 drivers
v0x1f84a70_0 .net "out3", 0 0, L_0x20d04a0;  1 drivers
v0x1f84b30_0 .net "sum", 0 0, L_0x20d02e0;  alias, 1 drivers
S_0x1f84590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fa9d50 .functor AND 1, L_0x20d1050, L_0x20d10f0, C4<1>, C4<1>;
v0x1f840c0_0 .net "A", 0 0, L_0x20d1050;  alias, 1 drivers
v0x1f84160_0 .net "B", 0 0, L_0x20d10f0;  alias, 1 drivers
v0x1f83be0_0 .net "out", 0 0, L_0x1fa9d50;  1 drivers
S_0x1f8ced0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f6a950_0 .net "I", 7 0, L_0x20d0d30;  alias, 1 drivers
v0x1f6aa50_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1f6a240_0 .net "out", 0 0, L_0x20d0a20;  alias, 1 drivers
L_0x20d0a20 .part/v L_0x20d0d30, v0x1fb2bf0_0, 1;
S_0x1f6b090 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d0890 .functor NAND 1, L_0x20d1050, L_0x20d10f0, C4<1>, C4<1>;
v0x1ece990_0 .net "A", 0 0, L_0x20d1050;  alias, 1 drivers
v0x1eceaa0_0 .net "B", 0 0, L_0x20d10f0;  alias, 1 drivers
v0x1faa0b0_0 .net "out", 0 0, L_0x20d0890;  1 drivers
S_0x1fcd320 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d0900 .functor NOR 1, L_0x20d1050, L_0x20d10f0, C4<0>, C4<0>;
v0x1faa1e0_0 .net "A", 0 0, L_0x20d1050;  alias, 1 drivers
v0x1fccf20_0 .net "B", 0 0, L_0x20d10f0;  alias, 1 drivers
v0x1fcd010_0 .net "out", 0 0, L_0x20d0900;  1 drivers
S_0x1fccb30 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d0990 .functor OR 1, L_0x20d1050, L_0x20d10f0, C4<0>, C4<0>;
v0x1fc8ce0_0 .net "A", 0 0, L_0x20d1050;  alias, 1 drivers
v0x1fc8890_0 .net "B", 0 0, L_0x20d10f0;  alias, 1 drivers
v0x1fc8950_0 .net "out", 0 0, L_0x20d0990;  1 drivers
S_0x1fc84a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c6b60 .functor XOR 1, L_0x20d10f0, L_0x20cfd90, C4<0>, C4<0>;
v0x1fa9c90_0 .net "A", 0 0, L_0x20d10f0;  alias, 1 drivers
v0x1fc4600_0 .net "B", 0 0, L_0x20cfd90;  1 drivers
v0x1fc46c0_0 .net "out", 0 0, L_0x20c6b60;  alias, 1 drivers
S_0x1fc4200 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1f86280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d0710 .functor XOR 1, L_0x20d1050, L_0x20d10f0, C4<0>, C4<0>;
v0x1fc3e10_0 .net "A", 0 0, L_0x20d1050;  alias, 1 drivers
v0x1fc3ed0_0 .net "B", 0 0, L_0x20d10f0;  alias, 1 drivers
v0x1fa9870_0 .net "out", 0 0, L_0x20d0710;  1 drivers
S_0x200f180 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d1dd0 .functor BUFZ 1, L_0x20d1530, C4<0>, C4<0>, C4<0>;
L_0x20d1e60 .functor BUFZ 1, L_0x20d1530, C4<0>, C4<0>, C4<0>;
v0x1fe2ae0_0 .net "A", 0 0, L_0x20d22a0;  1 drivers
v0x1fcd970_0 .net "B", 0 0, L_0x20d1190;  1 drivers
v0x1fcda30_0 .net "I", 7 0, L_0x20d1f80;  1 drivers
v0x1fc92e0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x202a8f0_0 .net *"_s15", 0 0, L_0x20d1dd0;  1 drivers
v0x1fc9380_0 .net *"_s19", 0 0, L_0x20d1e60;  1 drivers
L_0x7f4bb5d67600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x202da60_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67600;  1 drivers
v0x1fc4c50_0 .net "addORsub", 0 0, L_0x20d1530;  1 drivers
v0x1fc4cf0_0 .net "carryin", 0 0, L_0x20d1230;  1 drivers
v0x1fc05b0_0 .net "carryout", 0 0, L_0x1feb6d0;  1 drivers
v0x1fc0680_0 .net "modB", 0 0, L_0x20d1300;  1 drivers
v0x2029d30_0 .net "out", 0 0, L_0x20d1c70;  1 drivers
L_0x20d1370 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d1f80_0_0 .concat8 [ 1 1 1 1], L_0x20d1dd0, L_0x20d1e60, L_0x20d1960, L_0x7f4bb5d67600;
LS_0x20d1f80_0_4 .concat8 [ 1 1 1 1], L_0x1fe7430, L_0x20d1ae0, L_0x20d1b50, L_0x20d1be0;
L_0x20d1f80 .concat8 [ 4 4 0 0], LS_0x20d1f80_0_0, LS_0x20d1f80_0_4;
S_0x200ed80 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d1410 .functor XOR 1, L_0x20d22a0, L_0x20d1300, C4<0>, C4<0>;
L_0x20d1530 .functor XOR 1, L_0x20d1410, L_0x20d1230, C4<0>, C4<0>;
L_0x20d1660 .functor AND 1, L_0x20d1410, L_0x20d1230, C4<1>, C4<1>;
L_0x20d16f0 .functor AND 1, L_0x20d22a0, L_0x20d1300, C4<1>, C4<1>;
L_0x1feb6d0 .functor OR 1, L_0x20d1660, L_0x20d16f0, C4<0>, C4<0>;
v0x200e990_0 .net "A", 0 0, L_0x20d22a0;  alias, 1 drivers
v0x200ea70_0 .net "B", 0 0, L_0x20d1300;  alias, 1 drivers
v0x200aaf0_0 .net "carryin", 0 0, L_0x20d1230;  alias, 1 drivers
v0x200ab90_0 .net "carryout", 0 0, L_0x1feb6d0;  alias, 1 drivers
v0x200a6f0_0 .net "out1", 0 0, L_0x20d1410;  1 drivers
v0x200a800_0 .net "out2", 0 0, L_0x20d1660;  1 drivers
v0x200a300_0 .net "out3", 0 0, L_0x20d16f0;  1 drivers
v0x200a3c0_0 .net "sum", 0 0, L_0x20d1530;  alias, 1 drivers
S_0x2006450 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe7430 .functor AND 1, L_0x20d22a0, L_0x20d1190, C4<1>, C4<1>;
v0x2006050_0 .net "A", 0 0, L_0x20d22a0;  alias, 1 drivers
v0x2006140_0 .net "B", 0 0, L_0x20d1190;  alias, 1 drivers
v0x2005c60_0 .net "out", 0 0, L_0x1fe7430;  1 drivers
S_0x2001d80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2001970_0 .net "I", 7 0, L_0x20d1f80;  alias, 1 drivers
v0x2001a50_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2001580_0 .net "out", 0 0, L_0x20d1c70;  alias, 1 drivers
L_0x20d1c70 .part/v L_0x20d1f80, v0x1fb2bf0_0, 1;
S_0x1fae750 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d1ae0 .functor NAND 1, L_0x20d22a0, L_0x20d1190, C4<1>, C4<1>;
v0x1fae350_0 .net "A", 0 0, L_0x20d22a0;  alias, 1 drivers
v0x1fae460_0 .net "B", 0 0, L_0x20d1190;  alias, 1 drivers
v0x1ff0550_0 .net "out", 0 0, L_0x20d1ae0;  1 drivers
S_0x1ff0150 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d1b50 .functor NOR 1, L_0x20d22a0, L_0x20d1190, C4<0>, C4<0>;
v0x1ff0680_0 .net "A", 0 0, L_0x20d22a0;  alias, 1 drivers
v0x1fefd80_0 .net "B", 0 0, L_0x20d1190;  alias, 1 drivers
v0x1fefe90_0 .net "out", 0 0, L_0x20d1b50;  1 drivers
S_0x1febac0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d1be0 .functor OR 1, L_0x20d22a0, L_0x20d1190, C4<0>, C4<0>;
v0x1febf70_0 .net "A", 0 0, L_0x20d22a0;  alias, 1 drivers
v0x1feb760_0 .net "B", 0 0, L_0x20d1190;  alias, 1 drivers
v0x1fadf60_0 .net "out", 0 0, L_0x20d1be0;  1 drivers
S_0x1fe7830 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d1300 .functor XOR 1, L_0x20d1190, L_0x20d1370, C4<0>, C4<0>;
v0x1fae090_0 .net "A", 0 0, L_0x20d1190;  alias, 1 drivers
v0x1fe74c0_0 .net "B", 0 0, L_0x20d1370;  1 drivers
v0x1fe7040_0 .net "out", 0 0, L_0x20d1300;  alias, 1 drivers
S_0x1fe31a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x200f180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d1960 .functor XOR 1, L_0x20d22a0, L_0x20d1190, C4<0>, C4<0>;
v0x1fe2da0_0 .net "A", 0 0, L_0x20d22a0;  alias, 1 drivers
v0x1fe2e60_0 .net "B", 0 0, L_0x20d1190;  alias, 1 drivers
v0x1fe29b0_0 .net "out", 0 0, L_0x20d1960;  1 drivers
S_0x2025690 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d3010 .functor BUFZ 1, L_0x20d2770, C4<0>, C4<0>, C4<0>;
L_0x20d30a0 .functor BUFZ 1, L_0x20d2770, C4<0>, C4<0>, C4<0>;
v0x1e630c0_0 .net "A", 0 0, L_0x20d34e0;  1 drivers
v0x1e63160_0 .net "B", 0 0, L_0x20d3580;  1 drivers
v0x1e63200_0 .net "I", 7 0, L_0x20d31c0;  1 drivers
v0x1e63300_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1e633a0_0 .net *"_s15", 0 0, L_0x20d3010;  1 drivers
v0x1e63e50_0 .net *"_s19", 0 0, L_0x20d30a0;  1 drivers
L_0x7f4bb5d67648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1e63f30_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67648;  1 drivers
v0x1e64010_0 .net "addORsub", 0 0, L_0x20d2770;  1 drivers
v0x1e640b0_0 .net "carryin", 0 0, L_0x20d2550;  1 drivers
v0x1e65ea0_0 .net "carryout", 0 0, L_0x1e61620;  1 drivers
v0x1e65f70_0 .net "modB", 0 0, L_0x20d2340;  1 drivers
v0x1e66010_0 .net "out", 0 0, L_0x20d2eb0;  1 drivers
L_0x20d23b0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d31c0_0_0 .concat8 [ 1 1 1 1], L_0x20d3010, L_0x20d30a0, L_0x20d2ba0, L_0x7f4bb5d67648;
LS_0x20d31c0_0_4 .concat8 [ 1 1 1 1], L_0x1e62430, L_0x20d2d20, L_0x20d2d90, L_0x20d2e20;
L_0x20d31c0 .concat8 [ 4 4 0 0], LS_0x20d31c0_0_0, LS_0x20d31c0_0_4;
S_0x200b140 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d2450 .functor XOR 1, L_0x20d34e0, L_0x20d2340, C4<0>, C4<0>;
L_0x20d2770 .functor XOR 1, L_0x20d2450, L_0x20d2550, C4<0>, C4<0>;
L_0x20d28a0 .functor AND 1, L_0x20d2450, L_0x20d2550, C4<1>, C4<1>;
L_0x20d2930 .functor AND 1, L_0x20d34e0, L_0x20d2340, C4<1>, C4<1>;
L_0x1e61620 .functor OR 1, L_0x20d28a0, L_0x20d2930, C4<0>, C4<0>;
v0x200f870_0 .net "A", 0 0, L_0x20d34e0;  alias, 1 drivers
v0x2006aa0_0 .net "B", 0 0, L_0x20d2340;  alias, 1 drivers
v0x2006b60_0 .net "carryin", 0 0, L_0x20d2550;  alias, 1 drivers
v0x20023d0_0 .net "carryout", 0 0, L_0x1e61620;  alias, 1 drivers
v0x2002490_0 .net "out1", 0 0, L_0x20d2450;  1 drivers
v0x1faeda0_0 .net "out2", 0 0, L_0x20d28a0;  1 drivers
v0x1faee60_0 .net "out3", 0 0, L_0x20d2930;  1 drivers
v0x1ff0ba0_0 .net "sum", 0 0, L_0x20d2770;  alias, 1 drivers
S_0x1fec510 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1e62430 .functor AND 1, L_0x20d34e0, L_0x20d3580, C4<1>, C4<1>;
v0x1fe7e80_0 .net "A", 0 0, L_0x20d34e0;  alias, 1 drivers
v0x1fe7f40_0 .net "B", 0 0, L_0x20d3580;  alias, 1 drivers
v0x1fe37f0_0 .net "out", 0 0, L_0x1e62430;  1 drivers
S_0x1faa700 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fe3910_0 .net "I", 7 0, L_0x20d31c0;  alias, 1 drivers
v0x2030b70_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2030c30_0 .net "out", 0 0, L_0x20d2eb0;  alias, 1 drivers
L_0x20d2eb0 .part/v L_0x20d31c0, v0x1fb2bf0_0, 1;
S_0x1e44a40 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d2d20 .functor NAND 1, L_0x20d34e0, L_0x20d3580, C4<1>, C4<1>;
v0x1e44c10_0 .net "A", 0 0, L_0x20d34e0;  alias, 1 drivers
v0x1e44d20_0 .net "B", 0 0, L_0x20d3580;  alias, 1 drivers
v0x2030d80_0 .net "out", 0 0, L_0x20d2d20;  1 drivers
S_0x1e40480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d2d90 .functor NOR 1, L_0x20d34e0, L_0x20d3580, C4<0>, C4<0>;
v0x1e406f0_0 .net "A", 0 0, L_0x20d34e0;  alias, 1 drivers
v0x1e407b0_0 .net "B", 0 0, L_0x20d3580;  alias, 1 drivers
v0x1e5fb40_0 .net "out", 0 0, L_0x20d2d90;  1 drivers
S_0x1e5fc40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d2e20 .functor OR 1, L_0x20d34e0, L_0x20d3580, C4<0>, C4<0>;
v0x1e5fe60_0 .net "A", 0 0, L_0x20d34e0;  alias, 1 drivers
v0x1e616b0_0 .net "B", 0 0, L_0x20d3580;  alias, 1 drivers
v0x1e61770_0 .net "out", 0 0, L_0x20d2e20;  1 drivers
S_0x1e61870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d2340 .functor XOR 1, L_0x20d3580, L_0x20d23b0, C4<0>, C4<0>;
v0x1e62370_0 .net "A", 0 0, L_0x20d3580;  alias, 1 drivers
v0x1e624c0_0 .net "B", 0 0, L_0x20d23b0;  1 drivers
v0x1e62580_0 .net "out", 0 0, L_0x20d2340;  alias, 1 drivers
S_0x1e608d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2025690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d2ba0 .functor XOR 1, L_0x20d34e0, L_0x20d3580, C4<0>, C4<0>;
v0x1e60af0_0 .net "A", 0 0, L_0x20d34e0;  alias, 1 drivers
v0x1e60bb0_0 .net "B", 0 0, L_0x20d3580;  alias, 1 drivers
v0x1e626c0_0 .net "out", 0 0, L_0x20d2ba0;  1 drivers
S_0x1e660f0 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d4330 .functor BUFZ 1, L_0x20d3ad0, C4<0>, C4<0>, C4<0>;
L_0x20d43c0 .functor BUFZ 1, L_0x20d3ad0, C4<0>, C4<0>, C4<0>;
v0x1e3c330_0 .net "A", 0 0, L_0x20d4800;  1 drivers
v0x1e3c3d0_0 .net "B", 0 0, L_0x20d3620;  1 drivers
v0x1dcccf0_0 .net "I", 7 0, L_0x20d44e0;  1 drivers
v0x1dccdf0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1dcce90_0 .net *"_s15", 0 0, L_0x20d4330;  1 drivers
v0x1dccf50_0 .net *"_s19", 0 0, L_0x20d43c0;  1 drivers
L_0x7f4bb5d67690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1dcd030_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67690;  1 drivers
v0x1e2c710_0 .net "addORsub", 0 0, L_0x20d3ad0;  1 drivers
v0x1e2c7b0_0 .net "carryin", 0 0, L_0x20d36c0;  1 drivers
v0x1e2c910_0 .net "carryout", 0 0, L_0x1e641e0;  1 drivers
v0x1e2c9e0_0 .net "modB", 0 0, L_0x20ca270;  1 drivers
v0x1e2ca80_0 .net "out", 0 0, L_0x20d41d0;  1 drivers
L_0x20ca2e0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d44e0_0_0 .concat8 [ 1 1 1 1], L_0x20d4330, L_0x20d43c0, L_0x20d3ec0, L_0x7f4bb5d67690;
LS_0x20d44e0_0_4 .concat8 [ 1 1 1 1], L_0x1e3c100, L_0x20d4040, L_0x20d40b0, L_0x20d4140;
L_0x20d44e0 .concat8 [ 4 4 0 0], LS_0x20d44e0_0_0, LS_0x20d44e0_0_4;
S_0x1e76160 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d39d0 .functor XOR 1, L_0x20d4800, L_0x20ca270, C4<0>, C4<0>;
L_0x20d3ad0 .functor XOR 1, L_0x20d39d0, L_0x20d36c0, C4<0>, C4<0>;
L_0x20d3be0 .functor AND 1, L_0x20d39d0, L_0x20d36c0, C4<1>, C4<1>;
L_0x20d3c50 .functor AND 1, L_0x20d4800, L_0x20ca270, C4<1>, C4<1>;
L_0x1e641e0 .functor OR 1, L_0x20d3be0, L_0x20d3c50, C4<0>, C4<0>;
v0x1e76380_0 .net "A", 0 0, L_0x20d4800;  alias, 1 drivers
v0x1e1e5a0_0 .net "B", 0 0, L_0x20ca270;  alias, 1 drivers
v0x1e1e660_0 .net "carryin", 0 0, L_0x20d36c0;  alias, 1 drivers
v0x1e1e730_0 .net "carryout", 0 0, L_0x1e641e0;  alias, 1 drivers
v0x1e1e7f0_0 .net "out1", 0 0, L_0x20d39d0;  1 drivers
v0x1e1e900_0 .net "out2", 0 0, L_0x20d3be0;  1 drivers
v0x1e06eb0_0 .net "out3", 0 0, L_0x20d3c50;  1 drivers
v0x1e06f70_0 .net "sum", 0 0, L_0x20d3ad0;  alias, 1 drivers
S_0x1e070d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1e3c100 .functor AND 1, L_0x20d4800, L_0x20d3620, C4<1>, C4<1>;
v0x1e1abe0_0 .net "A", 0 0, L_0x20d4800;  alias, 1 drivers
v0x1e1aca0_0 .net "B", 0 0, L_0x20d3620;  alias, 1 drivers
v0x1e1ad40_0 .net "out", 0 0, L_0x1e3c100;  1 drivers
S_0x1e5e9d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1e5ec20_0 .net "I", 7 0, L_0x20d44e0;  alias, 1 drivers
v0x1e5ed20_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x1e1ae90_0 .net "out", 0 0, L_0x20d41d0;  alias, 1 drivers
L_0x20d41d0 .part/v L_0x20d44e0, v0x1fb2bf0_0, 1;
S_0x1e3a860 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d4040 .functor NAND 1, L_0x20d4800, L_0x20d3620, C4<1>, C4<1>;
v0x1e3aa80_0 .net "A", 0 0, L_0x20d4800;  alias, 1 drivers
v0x1e3ab90_0 .net "B", 0 0, L_0x20d3620;  alias, 1 drivers
v0x1e1f740_0 .net "out", 0 0, L_0x20d4040;  1 drivers
S_0x1e1f820 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d40b0 .functor NOR 1, L_0x20d4800, L_0x20d3620, C4<0>, C4<0>;
v0x1e1fa90_0 .net "A", 0 0, L_0x20d4800;  alias, 1 drivers
v0x1e20890_0 .net "B", 0 0, L_0x20d3620;  alias, 1 drivers
v0x1e209a0_0 .net "out", 0 0, L_0x20d40b0;  1 drivers
S_0x1e20ac0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d4140 .functor OR 1, L_0x20d4800, L_0x20d3620, C4<0>, C4<0>;
v0x1e3e190_0 .net "A", 0 0, L_0x20d4800;  alias, 1 drivers
v0x1e3e230_0 .net "B", 0 0, L_0x20d3620;  alias, 1 drivers
v0x1e3e2f0_0 .net "out", 0 0, L_0x20d4140;  1 drivers
S_0x1e3e3f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ca270 .functor XOR 1, L_0x20d3620, L_0x20ca2e0, C4<0>, C4<0>;
v0x1e3c060_0 .net "A", 0 0, L_0x20d3620;  alias, 1 drivers
v0x1e3c190_0 .net "B", 0 0, L_0x20ca2e0;  1 drivers
v0x1e3c250_0 .net "out", 0 0, L_0x20ca270;  alias, 1 drivers
S_0x1e683f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1e660f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d3ec0 .functor XOR 1, L_0x20d4800, L_0x20d3620, C4<0>, C4<0>;
v0x1e685c0_0 .net "A", 0 0, L_0x20d4800;  alias, 1 drivers
v0x1e68680_0 .net "B", 0 0, L_0x20d3620;  alias, 1 drivers
v0x1e68740_0 .net "out", 0 0, L_0x20d3ec0;  1 drivers
S_0x1e361f0 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d5590 .functor BUFZ 1, L_0x20d4d30, C4<0>, C4<0>, C4<0>;
L_0x20d5620 .functor BUFZ 1, L_0x20d4d30, C4<0>, C4<0>, C4<0>;
v0x2047890_0 .net "A", 0 0, L_0x20d5a60;  1 drivers
v0x2047930_0 .net "B", 0 0, L_0x20d5b00;  1 drivers
v0x20479f0_0 .net "I", 7 0, L_0x20d5740;  1 drivers
v0x2047af0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2047b90_0 .net *"_s15", 0 0, L_0x20d5590;  1 drivers
v0x2047ca0_0 .net *"_s19", 0 0, L_0x20d5620;  1 drivers
L_0x7f4bb5d676d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2047d80_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d676d8;  1 drivers
v0x2047e60_0 .net "addORsub", 0 0, L_0x20d4d30;  1 drivers
v0x2047f00_0 .net "carryin", 0 0, L_0x20d4ae0;  1 drivers
v0x2048060_0 .net "carryout", 0 0, L_0x2046ca0;  1 drivers
v0x2048130_0 .net "modB", 0 0, L_0x20d48a0;  1 drivers
v0x20481d0_0 .net "out", 0 0, L_0x20d5430;  1 drivers
L_0x20d4910 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d5740_0_0 .concat8 [ 1 1 1 1], L_0x20d5590, L_0x20d5620, L_0x20d5120, L_0x7f4bb5d676d8;
LS_0x20d5740_0_4 .concat8 [ 1 1 1 1], L_0x2047180, L_0x20d52a0, L_0x20d5310, L_0x20d53a0;
L_0x20d5740 .concat8 [ 4 4 0 0], LS_0x20d5740_0_0, LS_0x20d5740_0_4;
S_0x1e36460 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d49b0 .functor XOR 1, L_0x20d5a60, L_0x20d48a0, C4<0>, C4<0>;
L_0x20d4d30 .functor XOR 1, L_0x20d49b0, L_0x20d4ae0, C4<0>, C4<0>;
L_0x20d4e40 .functor AND 1, L_0x20d49b0, L_0x20d4ae0, C4<1>, C4<1>;
L_0x20d4eb0 .functor AND 1, L_0x20d5a60, L_0x20d48a0, C4<1>, C4<1>;
L_0x2046ca0 .functor OR 1, L_0x20d4e40, L_0x20d4eb0, C4<0>, C4<0>;
v0x1e376c0_0 .net "A", 0 0, L_0x20d5a60;  alias, 1 drivers
v0x1e377a0_0 .net "B", 0 0, L_0x20d48a0;  alias, 1 drivers
v0x1e37860_0 .net "carryin", 0 0, L_0x20d4ae0;  alias, 1 drivers
v0x1e37900_0 .net "carryout", 0 0, L_0x2046ca0;  alias, 1 drivers
v0x1e379c0_0 .net "out1", 0 0, L_0x20d49b0;  1 drivers
v0x1e38ee0_0 .net "out2", 0 0, L_0x20d4e40;  1 drivers
v0x1e38fa0_0 .net "out3", 0 0, L_0x20d4eb0;  1 drivers
v0x1e39060_0 .net "sum", 0 0, L_0x20d4d30;  alias, 1 drivers
S_0x1e6c690 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2047180 .functor AND 1, L_0x20d5a60, L_0x20d5b00, C4<1>, C4<1>;
v0x1e6c8f0_0 .net "A", 0 0, L_0x20d5a60;  alias, 1 drivers
v0x1e6c9b0_0 .net "B", 0 0, L_0x20d5b00;  alias, 1 drivers
v0x1e391c0_0 .net "out", 0 0, L_0x2047180;  1 drivers
S_0x1e487a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1e489f0_0 .net "I", 7 0, L_0x20d5740;  alias, 1 drivers
v0x1e48ab0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2045f60_0 .net "out", 0 0, L_0x20d5430;  alias, 1 drivers
L_0x20d5430 .part/v L_0x20d5740, v0x1fb2bf0_0, 1;
S_0x2046000 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d52a0 .functor NAND 1, L_0x20d5a60, L_0x20d5b00, C4<1>, C4<1>;
v0x20461d0_0 .net "A", 0 0, L_0x20d5a60;  alias, 1 drivers
v0x20462c0_0 .net "B", 0 0, L_0x20d5b00;  alias, 1 drivers
v0x2046380_0 .net "out", 0 0, L_0x20d52a0;  1 drivers
S_0x2046480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d5310 .functor NOR 1, L_0x20d5a60, L_0x20d5b00, C4<0>, C4<0>;
v0x20466f0_0 .net "A", 0 0, L_0x20d5a60;  alias, 1 drivers
v0x20467b0_0 .net "B", 0 0, L_0x20d5b00;  alias, 1 drivers
v0x20468c0_0 .net "out", 0 0, L_0x20d5310;  1 drivers
S_0x20469c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d53a0 .functor OR 1, L_0x20d5a60, L_0x20d5b00, C4<0>, C4<0>;
v0x2046be0_0 .net "A", 0 0, L_0x20d5a60;  alias, 1 drivers
v0x2046d30_0 .net "B", 0 0, L_0x20d5b00;  alias, 1 drivers
v0x2046df0_0 .net "out", 0 0, L_0x20d53a0;  1 drivers
S_0x2046ef0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d48a0 .functor XOR 1, L_0x20d5b00, L_0x20d4910, C4<0>, C4<0>;
v0x20470c0_0 .net "A", 0 0, L_0x20d5b00;  alias, 1 drivers
v0x2047210_0 .net "B", 0 0, L_0x20d4910;  1 drivers
v0x20472d0_0 .net "out", 0 0, L_0x20d48a0;  alias, 1 drivers
S_0x2047410 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1e361f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d5120 .functor XOR 1, L_0x20d5a60, L_0x20d5b00, C4<0>, C4<0>;
v0x20475e0_0 .net "A", 0 0, L_0x20d5a60;  alias, 1 drivers
v0x20476a0_0 .net "B", 0 0, L_0x20d5b00;  alias, 1 drivers
v0x2047760_0 .net "out", 0 0, L_0x20d5120;  1 drivers
S_0x20482b0 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d67b0 .functor BUFZ 1, L_0x20d5f10, C4<0>, C4<0>, C4<0>;
L_0x20d6840 .functor BUFZ 1, L_0x20d5f10, C4<0>, C4<0>, C4<0>;
v0x204b220_0 .net "A", 0 0, L_0x20d6c80;  1 drivers
v0x204b2c0_0 .net "B", 0 0, L_0x20d5ba0;  1 drivers
v0x204b380_0 .net "I", 7 0, L_0x20d6960;  1 drivers
v0x204b480_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x204b520_0 .net *"_s15", 0 0, L_0x20d67b0;  1 drivers
v0x204b630_0 .net *"_s19", 0 0, L_0x20d6840;  1 drivers
L_0x7f4bb5d67720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x204b710_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67720;  1 drivers
v0x204b7f0_0 .net "addORsub", 0 0, L_0x20d5f10;  1 drivers
v0x204b890_0 .net "carryin", 0 0, L_0x20d5c40;  1 drivers
v0x204b9f0_0 .net "carryout", 0 0, L_0x204a630;  1 drivers
v0x204bac0_0 .net "modB", 0 0, L_0x20d4c10;  1 drivers
v0x204bb60_0 .net "out", 0 0, L_0x20d6650;  1 drivers
L_0x20d5d70 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d6960_0_0 .concat8 [ 1 1 1 1], L_0x20d67b0, L_0x20d6840, L_0x20d6340, L_0x7f4bb5d67720;
LS_0x20d6960_0_4 .concat8 [ 1 1 1 1], L_0x204ab10, L_0x20d64c0, L_0x20d6530, L_0x20d65c0;
L_0x20d6960 .concat8 [ 4 4 0 0], LS_0x20d6960_0_0, LS_0x20d6960_0_4;
S_0x2048520 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d5e10 .functor XOR 1, L_0x20d6c80, L_0x20d4c10, C4<0>, C4<0>;
L_0x20d5f10 .functor XOR 1, L_0x20d5e10, L_0x20d5c40, C4<0>, C4<0>;
L_0x20d6040 .functor AND 1, L_0x20d5e10, L_0x20d5c40, C4<1>, C4<1>;
L_0x20d60d0 .functor AND 1, L_0x20d6c80, L_0x20d4c10, C4<1>, C4<1>;
L_0x204a630 .functor OR 1, L_0x20d6040, L_0x20d60d0, C4<0>, C4<0>;
v0x20487c0_0 .net "A", 0 0, L_0x20d6c80;  alias, 1 drivers
v0x20488a0_0 .net "B", 0 0, L_0x20d4c10;  alias, 1 drivers
v0x2048960_0 .net "carryin", 0 0, L_0x20d5c40;  alias, 1 drivers
v0x2048a30_0 .net "carryout", 0 0, L_0x204a630;  alias, 1 drivers
v0x2048af0_0 .net "out1", 0 0, L_0x20d5e10;  1 drivers
v0x2048c00_0 .net "out2", 0 0, L_0x20d6040;  1 drivers
v0x2048cc0_0 .net "out3", 0 0, L_0x20d60d0;  1 drivers
v0x2048d80_0 .net "sum", 0 0, L_0x20d5f10;  alias, 1 drivers
S_0x2048ee0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x204ab10 .functor AND 1, L_0x20d6c80, L_0x20d5ba0, C4<1>, C4<1>;
v0x2049120_0 .net "A", 0 0, L_0x20d6c80;  alias, 1 drivers
v0x20491e0_0 .net "B", 0 0, L_0x20d5ba0;  alias, 1 drivers
v0x2049280_0 .net "out", 0 0, L_0x204ab10;  1 drivers
S_0x20493d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2049620_0 .net "I", 7 0, L_0x20d6960;  alias, 1 drivers
v0x2049700_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x20497c0_0 .net "out", 0 0, L_0x20d6650;  alias, 1 drivers
L_0x20d6650 .part/v L_0x20d6960, v0x1fb2bf0_0, 1;
S_0x2049910 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d64c0 .functor NAND 1, L_0x20d6c80, L_0x20d5ba0, C4<1>, C4<1>;
v0x2049b30_0 .net "A", 0 0, L_0x20d6c80;  alias, 1 drivers
v0x2049c40_0 .net "B", 0 0, L_0x20d5ba0;  alias, 1 drivers
v0x2049d00_0 .net "out", 0 0, L_0x20d64c0;  1 drivers
S_0x2049e10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d6530 .functor NOR 1, L_0x20d6c80, L_0x20d5ba0, C4<0>, C4<0>;
v0x204a080_0 .net "A", 0 0, L_0x20d6c80;  alias, 1 drivers
v0x204a140_0 .net "B", 0 0, L_0x20d5ba0;  alias, 1 drivers
v0x204a250_0 .net "out", 0 0, L_0x20d6530;  1 drivers
S_0x204a350 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d65c0 .functor OR 1, L_0x20d6c80, L_0x20d5ba0, C4<0>, C4<0>;
v0x204a570_0 .net "A", 0 0, L_0x20d6c80;  alias, 1 drivers
v0x204a6c0_0 .net "B", 0 0, L_0x20d5ba0;  alias, 1 drivers
v0x204a780_0 .net "out", 0 0, L_0x20d65c0;  1 drivers
S_0x204a880 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d4c10 .functor XOR 1, L_0x20d5ba0, L_0x20d5d70, C4<0>, C4<0>;
v0x204aa50_0 .net "A", 0 0, L_0x20d5ba0;  alias, 1 drivers
v0x204aba0_0 .net "B", 0 0, L_0x20d5d70;  1 drivers
v0x204ac60_0 .net "out", 0 0, L_0x20d4c10;  alias, 1 drivers
S_0x204ada0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x20482b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d6340 .functor XOR 1, L_0x20d6c80, L_0x20d5ba0, C4<0>, C4<0>;
v0x204af70_0 .net "A", 0 0, L_0x20d6c80;  alias, 1 drivers
v0x204b030_0 .net "B", 0 0, L_0x20d5ba0;  alias, 1 drivers
v0x204b0f0_0 .net "out", 0 0, L_0x20d6340;  1 drivers
S_0x204bc80 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c2f60 .functor BUFZ 1, L_0x20c2730, C4<0>, C4<0>, C4<0>;
L_0x20c2ff0 .functor BUFZ 1, L_0x20c2730, C4<0>, C4<0>, C4<0>;
v0x204ebf0_0 .net "A", 0 0, L_0x20c34c0;  1 drivers
v0x204ec90_0 .net "B", 0 0, L_0x20c3560;  1 drivers
v0x204ed50_0 .net "I", 7 0, L_0x20c3110;  1 drivers
v0x204ee50_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x204eef0_0 .net *"_s15", 0 0, L_0x20c2f60;  1 drivers
v0x204f000_0 .net *"_s19", 0 0, L_0x20c2ff0;  1 drivers
L_0x7f4bb5d67258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x204f0e0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67258;  1 drivers
v0x204f1c0_0 .net "addORsub", 0 0, L_0x20c2730;  1 drivers
v0x204f260_0 .net "carryin", 0 0, L_0x20c3600;  1 drivers
v0x204f3c0_0 .net "carryout", 0 0, L_0x204e000;  1 drivers
v0x204f490_0 .net "modB", 0 0, L_0x20c2520;  1 drivers
v0x204f530_0 .net "out", 0 0, L_0x20c2e00;  1 drivers
L_0x20c2590 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c3110_0_0 .concat8 [ 1 1 1 1], L_0x20c2f60, L_0x20c2ff0, L_0x20c2af0, L_0x7f4bb5d67258;
LS_0x20c3110_0_4 .concat8 [ 1 1 1 1], L_0x204e4e0, L_0x20c2c70, L_0x20c2ce0, L_0x20c2d70;
L_0x20c3110 .concat8 [ 4 4 0 0], LS_0x20c3110_0_0, LS_0x20c3110_0_4;
S_0x204bef0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c2630 .functor XOR 1, L_0x20c34c0, L_0x20c2520, C4<0>, C4<0>;
L_0x20c2730 .functor XOR 1, L_0x20c2630, L_0x20c3600, C4<0>, C4<0>;
L_0x20c27f0 .functor AND 1, L_0x20c2630, L_0x20c3600, C4<1>, C4<1>;
L_0x20c2880 .functor AND 1, L_0x20c34c0, L_0x20c2520, C4<1>, C4<1>;
L_0x204e000 .functor OR 1, L_0x20c27f0, L_0x20c2880, C4<0>, C4<0>;
v0x204c190_0 .net "A", 0 0, L_0x20c34c0;  alias, 1 drivers
v0x204c270_0 .net "B", 0 0, L_0x20c2520;  alias, 1 drivers
v0x204c330_0 .net "carryin", 0 0, L_0x20c3600;  alias, 1 drivers
v0x204c400_0 .net "carryout", 0 0, L_0x204e000;  alias, 1 drivers
v0x204c4c0_0 .net "out1", 0 0, L_0x20c2630;  1 drivers
v0x204c5d0_0 .net "out2", 0 0, L_0x20c27f0;  1 drivers
v0x204c690_0 .net "out3", 0 0, L_0x20c2880;  1 drivers
v0x204c750_0 .net "sum", 0 0, L_0x20c2730;  alias, 1 drivers
S_0x204c8b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x204e4e0 .functor AND 1, L_0x20c34c0, L_0x20c3560, C4<1>, C4<1>;
v0x204caf0_0 .net "A", 0 0, L_0x20c34c0;  alias, 1 drivers
v0x204cbb0_0 .net "B", 0 0, L_0x20c3560;  alias, 1 drivers
v0x204cc50_0 .net "out", 0 0, L_0x204e4e0;  1 drivers
S_0x204cda0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x204cff0_0 .net "I", 7 0, L_0x20c3110;  alias, 1 drivers
v0x204d0d0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x204d190_0 .net "out", 0 0, L_0x20c2e00;  alias, 1 drivers
L_0x20c2e00 .part/v L_0x20c3110, v0x1fb2bf0_0, 1;
S_0x204d2e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c2c70 .functor NAND 1, L_0x20c34c0, L_0x20c3560, C4<1>, C4<1>;
v0x204d500_0 .net "A", 0 0, L_0x20c34c0;  alias, 1 drivers
v0x204d610_0 .net "B", 0 0, L_0x20c3560;  alias, 1 drivers
v0x204d6d0_0 .net "out", 0 0, L_0x20c2c70;  1 drivers
S_0x204d7e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c2ce0 .functor NOR 1, L_0x20c34c0, L_0x20c3560, C4<0>, C4<0>;
v0x204da50_0 .net "A", 0 0, L_0x20c34c0;  alias, 1 drivers
v0x204db10_0 .net "B", 0 0, L_0x20c3560;  alias, 1 drivers
v0x204dc20_0 .net "out", 0 0, L_0x20c2ce0;  1 drivers
S_0x204dd20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c2d70 .functor OR 1, L_0x20c34c0, L_0x20c3560, C4<0>, C4<0>;
v0x204df40_0 .net "A", 0 0, L_0x20c34c0;  alias, 1 drivers
v0x204e090_0 .net "B", 0 0, L_0x20c3560;  alias, 1 drivers
v0x204e150_0 .net "out", 0 0, L_0x20c2d70;  1 drivers
S_0x204e250 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c2520 .functor XOR 1, L_0x20c3560, L_0x20c2590, C4<0>, C4<0>;
v0x204e420_0 .net "A", 0 0, L_0x20c3560;  alias, 1 drivers
v0x204e570_0 .net "B", 0 0, L_0x20c2590;  1 drivers
v0x204e630_0 .net "out", 0 0, L_0x20c2520;  alias, 1 drivers
S_0x204e770 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x204bc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c2af0 .functor XOR 1, L_0x20c34c0, L_0x20c3560, C4<0>, C4<0>;
v0x204e940_0 .net "A", 0 0, L_0x20c34c0;  alias, 1 drivers
v0x204ea00_0 .net "B", 0 0, L_0x20c3560;  alias, 1 drivers
v0x204eac0_0 .net "out", 0 0, L_0x20c2af0;  1 drivers
S_0x204f650 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d79e0 .functor BUFZ 1, L_0x20d7140, C4<0>, C4<0>, C4<0>;
L_0x20d7a70 .functor BUFZ 1, L_0x20d7140, C4<0>, C4<0>, C4<0>;
v0x20525c0_0 .net "A", 0 0, L_0x20d7eb0;  1 drivers
v0x2052660_0 .net "B", 0 0, L_0x20d7f50;  1 drivers
v0x2052720_0 .net "I", 7 0, L_0x20d7b90;  1 drivers
v0x2052820_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x20528c0_0 .net *"_s15", 0 0, L_0x20d79e0;  1 drivers
v0x20529d0_0 .net *"_s19", 0 0, L_0x20d7a70;  1 drivers
L_0x7f4bb5d67768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2052ab0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67768;  1 drivers
v0x2052b90_0 .net "addORsub", 0 0, L_0x20d7140;  1 drivers
v0x2052c30_0 .net "carryin", 0 0, L_0x20d6d20;  1 drivers
v0x2052d90_0 .net "carryout", 0 0, L_0x20519d0;  1 drivers
v0x2052e60_0 .net "modB", 0 0, L_0x20d6f10;  1 drivers
v0x2052f00_0 .net "out", 0 0, L_0x20d7880;  1 drivers
L_0x20d6f80 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d7b90_0_0 .concat8 [ 1 1 1 1], L_0x20d79e0, L_0x20d7a70, L_0x20d7570, L_0x7f4bb5d67768;
LS_0x20d7b90_0_4 .concat8 [ 1 1 1 1], L_0x2051eb0, L_0x20d76f0, L_0x20d7760, L_0x20d77f0;
L_0x20d7b90 .concat8 [ 4 4 0 0], LS_0x20d7b90_0_0, LS_0x20d7b90_0_4;
S_0x204f8c0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d7020 .functor XOR 1, L_0x20d7eb0, L_0x20d6f10, C4<0>, C4<0>;
L_0x20d7140 .functor XOR 1, L_0x20d7020, L_0x20d6d20, C4<0>, C4<0>;
L_0x20d7270 .functor AND 1, L_0x20d7020, L_0x20d6d20, C4<1>, C4<1>;
L_0x20d7300 .functor AND 1, L_0x20d7eb0, L_0x20d6f10, C4<1>, C4<1>;
L_0x20519d0 .functor OR 1, L_0x20d7270, L_0x20d7300, C4<0>, C4<0>;
v0x204fb60_0 .net "A", 0 0, L_0x20d7eb0;  alias, 1 drivers
v0x204fc40_0 .net "B", 0 0, L_0x20d6f10;  alias, 1 drivers
v0x204fd00_0 .net "carryin", 0 0, L_0x20d6d20;  alias, 1 drivers
v0x204fdd0_0 .net "carryout", 0 0, L_0x20519d0;  alias, 1 drivers
v0x204fe90_0 .net "out1", 0 0, L_0x20d7020;  1 drivers
v0x204ffa0_0 .net "out2", 0 0, L_0x20d7270;  1 drivers
v0x2050060_0 .net "out3", 0 0, L_0x20d7300;  1 drivers
v0x2050120_0 .net "sum", 0 0, L_0x20d7140;  alias, 1 drivers
S_0x2050280 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2051eb0 .functor AND 1, L_0x20d7eb0, L_0x20d7f50, C4<1>, C4<1>;
v0x20504c0_0 .net "A", 0 0, L_0x20d7eb0;  alias, 1 drivers
v0x2050580_0 .net "B", 0 0, L_0x20d7f50;  alias, 1 drivers
v0x2050620_0 .net "out", 0 0, L_0x2051eb0;  1 drivers
S_0x2050770 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x20509c0_0 .net "I", 7 0, L_0x20d7b90;  alias, 1 drivers
v0x2050aa0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2050b60_0 .net "out", 0 0, L_0x20d7880;  alias, 1 drivers
L_0x20d7880 .part/v L_0x20d7b90, v0x1fb2bf0_0, 1;
S_0x2050cb0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d76f0 .functor NAND 1, L_0x20d7eb0, L_0x20d7f50, C4<1>, C4<1>;
v0x2050ed0_0 .net "A", 0 0, L_0x20d7eb0;  alias, 1 drivers
v0x2050fe0_0 .net "B", 0 0, L_0x20d7f50;  alias, 1 drivers
v0x20510a0_0 .net "out", 0 0, L_0x20d76f0;  1 drivers
S_0x20511b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d7760 .functor NOR 1, L_0x20d7eb0, L_0x20d7f50, C4<0>, C4<0>;
v0x2051420_0 .net "A", 0 0, L_0x20d7eb0;  alias, 1 drivers
v0x20514e0_0 .net "B", 0 0, L_0x20d7f50;  alias, 1 drivers
v0x20515f0_0 .net "out", 0 0, L_0x20d7760;  1 drivers
S_0x20516f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d77f0 .functor OR 1, L_0x20d7eb0, L_0x20d7f50, C4<0>, C4<0>;
v0x2051910_0 .net "A", 0 0, L_0x20d7eb0;  alias, 1 drivers
v0x2051a60_0 .net "B", 0 0, L_0x20d7f50;  alias, 1 drivers
v0x2051b20_0 .net "out", 0 0, L_0x20d77f0;  1 drivers
S_0x2051c20 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d6f10 .functor XOR 1, L_0x20d7f50, L_0x20d6f80, C4<0>, C4<0>;
v0x2051df0_0 .net "A", 0 0, L_0x20d7f50;  alias, 1 drivers
v0x2051f40_0 .net "B", 0 0, L_0x20d6f80;  1 drivers
v0x2052000_0 .net "out", 0 0, L_0x20d6f10;  alias, 1 drivers
S_0x2052140 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x204f650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d7570 .functor XOR 1, L_0x20d7eb0, L_0x20d7f50, C4<0>, C4<0>;
v0x2052310_0 .net "A", 0 0, L_0x20d7eb0;  alias, 1 drivers
v0x20523d0_0 .net "B", 0 0, L_0x20d7f50;  alias, 1 drivers
v0x2052490_0 .net "out", 0 0, L_0x20d7570;  1 drivers
S_0x2053020 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d8c10 .functor BUFZ 1, L_0x20d8390, C4<0>, C4<0>, C4<0>;
L_0x20d8ca0 .functor BUFZ 1, L_0x20d8390, C4<0>, C4<0>, C4<0>;
v0x2055f90_0 .net "A", 0 0, L_0x20d90e0;  1 drivers
v0x2056030_0 .net "B", 0 0, L_0x20d7ff0;  1 drivers
v0x20560f0_0 .net "I", 7 0, L_0x20d8dc0;  1 drivers
v0x20561f0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2056290_0 .net *"_s15", 0 0, L_0x20d8c10;  1 drivers
v0x20563a0_0 .net *"_s19", 0 0, L_0x20d8ca0;  1 drivers
L_0x7f4bb5d677b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2056480_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d677b0;  1 drivers
v0x2056560_0 .net "addORsub", 0 0, L_0x20d8390;  1 drivers
v0x2056600_0 .net "carryin", 0 0, L_0x20d8090;  1 drivers
v0x2056760_0 .net "carryout", 0 0, L_0x20553a0;  1 drivers
v0x2056830_0 .net "modB", 0 0, L_0x20d6e50;  1 drivers
v0x20568d0_0 .net "out", 0 0, L_0x20d8ab0;  1 drivers
L_0x20d81f0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20d8dc0_0_0 .concat8 [ 1 1 1 1], L_0x20d8c10, L_0x20d8ca0, L_0x20d87a0, L_0x7f4bb5d677b0;
LS_0x20d8dc0_0_4 .concat8 [ 1 1 1 1], L_0x2055880, L_0x20d8920, L_0x20d8990, L_0x20d8a20;
L_0x20d8dc0 .concat8 [ 4 4 0 0], LS_0x20d8dc0_0_0, LS_0x20d8dc0_0_4;
S_0x2053290 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d8290 .functor XOR 1, L_0x20d90e0, L_0x20d6e50, C4<0>, C4<0>;
L_0x20d8390 .functor XOR 1, L_0x20d8290, L_0x20d8090, C4<0>, C4<0>;
L_0x20d84a0 .functor AND 1, L_0x20d8290, L_0x20d8090, C4<1>, C4<1>;
L_0x20d8530 .functor AND 1, L_0x20d90e0, L_0x20d6e50, C4<1>, C4<1>;
L_0x20553a0 .functor OR 1, L_0x20d84a0, L_0x20d8530, C4<0>, C4<0>;
v0x2053530_0 .net "A", 0 0, L_0x20d90e0;  alias, 1 drivers
v0x2053610_0 .net "B", 0 0, L_0x20d6e50;  alias, 1 drivers
v0x20536d0_0 .net "carryin", 0 0, L_0x20d8090;  alias, 1 drivers
v0x20537a0_0 .net "carryout", 0 0, L_0x20553a0;  alias, 1 drivers
v0x2053860_0 .net "out1", 0 0, L_0x20d8290;  1 drivers
v0x2053970_0 .net "out2", 0 0, L_0x20d84a0;  1 drivers
v0x2053a30_0 .net "out3", 0 0, L_0x20d8530;  1 drivers
v0x2053af0_0 .net "sum", 0 0, L_0x20d8390;  alias, 1 drivers
S_0x2053c50 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2055880 .functor AND 1, L_0x20d90e0, L_0x20d7ff0, C4<1>, C4<1>;
v0x2053e90_0 .net "A", 0 0, L_0x20d90e0;  alias, 1 drivers
v0x2053f50_0 .net "B", 0 0, L_0x20d7ff0;  alias, 1 drivers
v0x2053ff0_0 .net "out", 0 0, L_0x2055880;  1 drivers
S_0x2054140 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2054390_0 .net "I", 7 0, L_0x20d8dc0;  alias, 1 drivers
v0x2054470_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2054530_0 .net "out", 0 0, L_0x20d8ab0;  alias, 1 drivers
L_0x20d8ab0 .part/v L_0x20d8dc0, v0x1fb2bf0_0, 1;
S_0x2054680 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d8920 .functor NAND 1, L_0x20d90e0, L_0x20d7ff0, C4<1>, C4<1>;
v0x20548a0_0 .net "A", 0 0, L_0x20d90e0;  alias, 1 drivers
v0x20549b0_0 .net "B", 0 0, L_0x20d7ff0;  alias, 1 drivers
v0x2054a70_0 .net "out", 0 0, L_0x20d8920;  1 drivers
S_0x2054b80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d8990 .functor NOR 1, L_0x20d90e0, L_0x20d7ff0, C4<0>, C4<0>;
v0x2054df0_0 .net "A", 0 0, L_0x20d90e0;  alias, 1 drivers
v0x2054eb0_0 .net "B", 0 0, L_0x20d7ff0;  alias, 1 drivers
v0x2054fc0_0 .net "out", 0 0, L_0x20d8990;  1 drivers
S_0x20550c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d8a20 .functor OR 1, L_0x20d90e0, L_0x20d7ff0, C4<0>, C4<0>;
v0x20552e0_0 .net "A", 0 0, L_0x20d90e0;  alias, 1 drivers
v0x2055430_0 .net "B", 0 0, L_0x20d7ff0;  alias, 1 drivers
v0x20554f0_0 .net "out", 0 0, L_0x20d8a20;  1 drivers
S_0x20555f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d6e50 .functor XOR 1, L_0x20d7ff0, L_0x20d81f0, C4<0>, C4<0>;
v0x20557c0_0 .net "A", 0 0, L_0x20d7ff0;  alias, 1 drivers
v0x2055910_0 .net "B", 0 0, L_0x20d81f0;  1 drivers
v0x20559d0_0 .net "out", 0 0, L_0x20d6e50;  alias, 1 drivers
S_0x2055b10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2053020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d87a0 .functor XOR 1, L_0x20d90e0, L_0x20d7ff0, C4<0>, C4<0>;
v0x2055ce0_0 .net "A", 0 0, L_0x20d90e0;  alias, 1 drivers
v0x2055da0_0 .net "B", 0 0, L_0x20d7ff0;  alias, 1 drivers
v0x2055e60_0 .net "out", 0 0, L_0x20d87a0;  1 drivers
S_0x20569f0 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20d9e50 .functor BUFZ 1, L_0x20d95b0, C4<0>, C4<0>, C4<0>;
L_0x20d9ee0 .functor BUFZ 1, L_0x20d95b0, C4<0>, C4<0>, C4<0>;
v0x2059960_0 .net "A", 0 0, L_0x20da320;  1 drivers
v0x2059a00_0 .net "B", 0 0, L_0x20da3c0;  1 drivers
v0x2059ac0_0 .net "I", 7 0, L_0x20da000;  1 drivers
v0x2059bc0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x202d850_0 .net *"_s15", 0 0, L_0x20d9e50;  1 drivers
v0x202d960_0 .net *"_s19", 0 0, L_0x20d9ee0;  1 drivers
L_0x7f4bb5d677f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x205a070_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d677f8;  1 drivers
v0x205a110_0 .net "addORsub", 0 0, L_0x20d95b0;  1 drivers
v0x205a1b0_0 .net "carryin", 0 0, L_0x20d9180;  1 drivers
v0x205a2e0_0 .net "carryout", 0 0, L_0x2058d70;  1 drivers
v0x205a380_0 .net "modB", 0 0, L_0x20d93a0;  1 drivers
v0x205a420_0 .net "out", 0 0, L_0x20d9cf0;  1 drivers
L_0x20d9410 .part v0x1fb2bf0_0, 0, 1;
LS_0x20da000_0_0 .concat8 [ 1 1 1 1], L_0x20d9e50, L_0x20d9ee0, L_0x20d99e0, L_0x7f4bb5d677f8;
LS_0x20da000_0_4 .concat8 [ 1 1 1 1], L_0x2059250, L_0x20d9b60, L_0x20d9bd0, L_0x20d9c60;
L_0x20da000 .concat8 [ 4 4 0 0], LS_0x20da000_0_0, LS_0x20da000_0_4;
S_0x2056c60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d94b0 .functor XOR 1, L_0x20da320, L_0x20d93a0, C4<0>, C4<0>;
L_0x20d95b0 .functor XOR 1, L_0x20d94b0, L_0x20d9180, C4<0>, C4<0>;
L_0x20d96e0 .functor AND 1, L_0x20d94b0, L_0x20d9180, C4<1>, C4<1>;
L_0x20d9770 .functor AND 1, L_0x20da320, L_0x20d93a0, C4<1>, C4<1>;
L_0x2058d70 .functor OR 1, L_0x20d96e0, L_0x20d9770, C4<0>, C4<0>;
v0x2056f00_0 .net "A", 0 0, L_0x20da320;  alias, 1 drivers
v0x2056fe0_0 .net "B", 0 0, L_0x20d93a0;  alias, 1 drivers
v0x20570a0_0 .net "carryin", 0 0, L_0x20d9180;  alias, 1 drivers
v0x2057170_0 .net "carryout", 0 0, L_0x2058d70;  alias, 1 drivers
v0x2057230_0 .net "out1", 0 0, L_0x20d94b0;  1 drivers
v0x2057340_0 .net "out2", 0 0, L_0x20d96e0;  1 drivers
v0x2057400_0 .net "out3", 0 0, L_0x20d9770;  1 drivers
v0x20574c0_0 .net "sum", 0 0, L_0x20d95b0;  alias, 1 drivers
S_0x2057620 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2059250 .functor AND 1, L_0x20da320, L_0x20da3c0, C4<1>, C4<1>;
v0x2057860_0 .net "A", 0 0, L_0x20da320;  alias, 1 drivers
v0x2057920_0 .net "B", 0 0, L_0x20da3c0;  alias, 1 drivers
v0x20579c0_0 .net "out", 0 0, L_0x2059250;  1 drivers
S_0x2057b10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2057d60_0 .net "I", 7 0, L_0x20da000;  alias, 1 drivers
v0x2057e40_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2057f00_0 .net "out", 0 0, L_0x20d9cf0;  alias, 1 drivers
L_0x20d9cf0 .part/v L_0x20da000, v0x1fb2bf0_0, 1;
S_0x2058050 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d9b60 .functor NAND 1, L_0x20da320, L_0x20da3c0, C4<1>, C4<1>;
v0x2058270_0 .net "A", 0 0, L_0x20da320;  alias, 1 drivers
v0x2058380_0 .net "B", 0 0, L_0x20da3c0;  alias, 1 drivers
v0x2058440_0 .net "out", 0 0, L_0x20d9b60;  1 drivers
S_0x2058550 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d9bd0 .functor NOR 1, L_0x20da320, L_0x20da3c0, C4<0>, C4<0>;
v0x20587c0_0 .net "A", 0 0, L_0x20da320;  alias, 1 drivers
v0x2058880_0 .net "B", 0 0, L_0x20da3c0;  alias, 1 drivers
v0x2058990_0 .net "out", 0 0, L_0x20d9bd0;  1 drivers
S_0x2058a90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d9c60 .functor OR 1, L_0x20da320, L_0x20da3c0, C4<0>, C4<0>;
v0x2058cb0_0 .net "A", 0 0, L_0x20da320;  alias, 1 drivers
v0x2058e00_0 .net "B", 0 0, L_0x20da3c0;  alias, 1 drivers
v0x2058ec0_0 .net "out", 0 0, L_0x20d9c60;  1 drivers
S_0x2058fc0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d93a0 .functor XOR 1, L_0x20da3c0, L_0x20d9410, C4<0>, C4<0>;
v0x2059190_0 .net "A", 0 0, L_0x20da3c0;  alias, 1 drivers
v0x20592e0_0 .net "B", 0 0, L_0x20d9410;  1 drivers
v0x20593a0_0 .net "out", 0 0, L_0x20d93a0;  alias, 1 drivers
S_0x20594e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x20569f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d99e0 .functor XOR 1, L_0x20da320, L_0x20da3c0, C4<0>, C4<0>;
v0x20596b0_0 .net "A", 0 0, L_0x20da320;  alias, 1 drivers
v0x2059770_0 .net "B", 0 0, L_0x20da3c0;  alias, 1 drivers
v0x2059830_0 .net "out", 0 0, L_0x20d99e0;  1 drivers
S_0x205a520 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20db080 .functor BUFZ 1, L_0x20da7e0, C4<0>, C4<0>, C4<0>;
L_0x20db110 .functor BUFZ 1, L_0x20da7e0, C4<0>, C4<0>, C4<0>;
v0x205d510_0 .net "A", 0 0, L_0x20db550;  1 drivers
v0x205d5b0_0 .net "B", 0 0, L_0x20da460;  1 drivers
v0x205d670_0 .net "I", 7 0, L_0x20db230;  1 drivers
v0x205d770_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x205d810_0 .net *"_s15", 0 0, L_0x20db080;  1 drivers
v0x205d920_0 .net *"_s19", 0 0, L_0x20db110;  1 drivers
L_0x7f4bb5d67840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x205da00_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67840;  1 drivers
v0x205dae0_0 .net "addORsub", 0 0, L_0x20da7e0;  1 drivers
v0x205db80_0 .net "carryin", 0 0, L_0x20da500;  1 drivers
v0x205dce0_0 .net "carryout", 0 0, L_0x205c920;  1 drivers
v0x205ddb0_0 .net "modB", 0 0, L_0x20d92b0;  1 drivers
v0x205de50_0 .net "out", 0 0, L_0x20daf20;  1 drivers
L_0x20da690 .part v0x1fb2bf0_0, 0, 1;
LS_0x20db230_0_0 .concat8 [ 1 1 1 1], L_0x20db080, L_0x20db110, L_0x20dac10, L_0x7f4bb5d67840;
LS_0x20db230_0_4 .concat8 [ 1 1 1 1], L_0x205ce00, L_0x20dad90, L_0x20dae00, L_0x20dae90;
L_0x20db230 .concat8 [ 4 4 0 0], LS_0x20db230_0_0, LS_0x20db230_0_4;
S_0x205a8a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d9320 .functor XOR 1, L_0x20db550, L_0x20d92b0, C4<0>, C4<0>;
L_0x20da7e0 .functor XOR 1, L_0x20d9320, L_0x20da500, C4<0>, C4<0>;
L_0x20da910 .functor AND 1, L_0x20d9320, L_0x20da500, C4<1>, C4<1>;
L_0x20da9a0 .functor AND 1, L_0x20db550, L_0x20d92b0, C4<1>, C4<1>;
L_0x205c920 .functor OR 1, L_0x20da910, L_0x20da9a0, C4<0>, C4<0>;
v0x205aad0_0 .net "A", 0 0, L_0x20db550;  alias, 1 drivers
v0x205ab90_0 .net "B", 0 0, L_0x20d92b0;  alias, 1 drivers
v0x205ac50_0 .net "carryin", 0 0, L_0x20da500;  alias, 1 drivers
v0x205ad20_0 .net "carryout", 0 0, L_0x205c920;  alias, 1 drivers
v0x205ade0_0 .net "out1", 0 0, L_0x20d9320;  1 drivers
v0x205aef0_0 .net "out2", 0 0, L_0x20da910;  1 drivers
v0x205afb0_0 .net "out3", 0 0, L_0x20da9a0;  1 drivers
v0x205b070_0 .net "sum", 0 0, L_0x20da7e0;  alias, 1 drivers
S_0x205b1d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x205ce00 .functor AND 1, L_0x20db550, L_0x20da460, C4<1>, C4<1>;
v0x205b410_0 .net "A", 0 0, L_0x20db550;  alias, 1 drivers
v0x205b4d0_0 .net "B", 0 0, L_0x20da460;  alias, 1 drivers
v0x205b570_0 .net "out", 0 0, L_0x205ce00;  1 drivers
S_0x205b6c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x205b910_0 .net "I", 7 0, L_0x20db230;  alias, 1 drivers
v0x205b9f0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x205bab0_0 .net "out", 0 0, L_0x20daf20;  alias, 1 drivers
L_0x20daf20 .part/v L_0x20db230, v0x1fb2bf0_0, 1;
S_0x205bc00 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dad90 .functor NAND 1, L_0x20db550, L_0x20da460, C4<1>, C4<1>;
v0x205be20_0 .net "A", 0 0, L_0x20db550;  alias, 1 drivers
v0x205bf30_0 .net "B", 0 0, L_0x20da460;  alias, 1 drivers
v0x205bff0_0 .net "out", 0 0, L_0x20dad90;  1 drivers
S_0x205c100 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dae00 .functor NOR 1, L_0x20db550, L_0x20da460, C4<0>, C4<0>;
v0x205c370_0 .net "A", 0 0, L_0x20db550;  alias, 1 drivers
v0x205c430_0 .net "B", 0 0, L_0x20da460;  alias, 1 drivers
v0x205c540_0 .net "out", 0 0, L_0x20dae00;  1 drivers
S_0x205c640 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dae90 .functor OR 1, L_0x20db550, L_0x20da460, C4<0>, C4<0>;
v0x205c860_0 .net "A", 0 0, L_0x20db550;  alias, 1 drivers
v0x205c9b0_0 .net "B", 0 0, L_0x20da460;  alias, 1 drivers
v0x205ca70_0 .net "out", 0 0, L_0x20dae90;  1 drivers
S_0x205cb70 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d92b0 .functor XOR 1, L_0x20da460, L_0x20da690, C4<0>, C4<0>;
v0x205cd40_0 .net "A", 0 0, L_0x20da460;  alias, 1 drivers
v0x205ce90_0 .net "B", 0 0, L_0x20da690;  1 drivers
v0x205cf50_0 .net "out", 0 0, L_0x20d92b0;  alias, 1 drivers
S_0x205d090 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x205a520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dac10 .functor XOR 1, L_0x20db550, L_0x20da460, C4<0>, C4<0>;
v0x205d260_0 .net "A", 0 0, L_0x20db550;  alias, 1 drivers
v0x205d320_0 .net "B", 0 0, L_0x20da460;  alias, 1 drivers
v0x205d3e0_0 .net "out", 0 0, L_0x20dac10;  1 drivers
S_0x205df70 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20dc2b0 .functor BUFZ 1, L_0x20dba50, C4<0>, C4<0>, C4<0>;
L_0x20dc340 .functor BUFZ 1, L_0x20dba50, C4<0>, C4<0>, C4<0>;
v0x2060ee0_0 .net "A", 0 0, L_0x20dc780;  1 drivers
v0x2060f80_0 .net "B", 0 0, L_0x20dc820;  1 drivers
v0x2061040_0 .net "I", 7 0, L_0x20dc460;  1 drivers
v0x2061140_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x20611e0_0 .net *"_s15", 0 0, L_0x20dc2b0;  1 drivers
v0x20612f0_0 .net *"_s19", 0 0, L_0x20dc340;  1 drivers
L_0x7f4bb5d67888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x20613d0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67888;  1 drivers
v0x20614b0_0 .net "addORsub", 0 0, L_0x20dba50;  1 drivers
v0x2061550_0 .net "carryin", 0 0, L_0x20db5f0;  1 drivers
v0x20616b0_0 .net "carryout", 0 0, L_0x20602f0;  1 drivers
v0x2061780_0 .net "modB", 0 0, L_0x20db840;  1 drivers
v0x2061820_0 .net "out", 0 0, L_0x20dc150;  1 drivers
L_0x20db8b0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20dc460_0_0 .concat8 [ 1 1 1 1], L_0x20dc2b0, L_0x20dc340, L_0x20dbe40, L_0x7f4bb5d67888;
LS_0x20dc460_0_4 .concat8 [ 1 1 1 1], L_0x20607d0, L_0x20dbfc0, L_0x20dc030, L_0x20dc0c0;
L_0x20dc460 .concat8 [ 4 4 0 0], LS_0x20dc460_0_0, LS_0x20dc460_0_4;
S_0x205e1e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20db950 .functor XOR 1, L_0x20dc780, L_0x20db840, C4<0>, C4<0>;
L_0x20dba50 .functor XOR 1, L_0x20db950, L_0x20db5f0, C4<0>, C4<0>;
L_0x20dbb60 .functor AND 1, L_0x20db950, L_0x20db5f0, C4<1>, C4<1>;
L_0x20dbbd0 .functor AND 1, L_0x20dc780, L_0x20db840, C4<1>, C4<1>;
L_0x20602f0 .functor OR 1, L_0x20dbb60, L_0x20dbbd0, C4<0>, C4<0>;
v0x205e480_0 .net "A", 0 0, L_0x20dc780;  alias, 1 drivers
v0x205e560_0 .net "B", 0 0, L_0x20db840;  alias, 1 drivers
v0x205e620_0 .net "carryin", 0 0, L_0x20db5f0;  alias, 1 drivers
v0x205e6f0_0 .net "carryout", 0 0, L_0x20602f0;  alias, 1 drivers
v0x205e7b0_0 .net "out1", 0 0, L_0x20db950;  1 drivers
v0x205e8c0_0 .net "out2", 0 0, L_0x20dbb60;  1 drivers
v0x205e980_0 .net "out3", 0 0, L_0x20dbbd0;  1 drivers
v0x205ea40_0 .net "sum", 0 0, L_0x20dba50;  alias, 1 drivers
S_0x205eba0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20607d0 .functor AND 1, L_0x20dc780, L_0x20dc820, C4<1>, C4<1>;
v0x205ede0_0 .net "A", 0 0, L_0x20dc780;  alias, 1 drivers
v0x205eea0_0 .net "B", 0 0, L_0x20dc820;  alias, 1 drivers
v0x205ef40_0 .net "out", 0 0, L_0x20607d0;  1 drivers
S_0x205f090 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x205f2e0_0 .net "I", 7 0, L_0x20dc460;  alias, 1 drivers
v0x205f3c0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x205f480_0 .net "out", 0 0, L_0x20dc150;  alias, 1 drivers
L_0x20dc150 .part/v L_0x20dc460, v0x1fb2bf0_0, 1;
S_0x205f5d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dbfc0 .functor NAND 1, L_0x20dc780, L_0x20dc820, C4<1>, C4<1>;
v0x205f7f0_0 .net "A", 0 0, L_0x20dc780;  alias, 1 drivers
v0x205f900_0 .net "B", 0 0, L_0x20dc820;  alias, 1 drivers
v0x205f9c0_0 .net "out", 0 0, L_0x20dbfc0;  1 drivers
S_0x205fad0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dc030 .functor NOR 1, L_0x20dc780, L_0x20dc820, C4<0>, C4<0>;
v0x205fd40_0 .net "A", 0 0, L_0x20dc780;  alias, 1 drivers
v0x205fe00_0 .net "B", 0 0, L_0x20dc820;  alias, 1 drivers
v0x205ff10_0 .net "out", 0 0, L_0x20dc030;  1 drivers
S_0x2060010 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dc0c0 .functor OR 1, L_0x20dc780, L_0x20dc820, C4<0>, C4<0>;
v0x2060230_0 .net "A", 0 0, L_0x20dc780;  alias, 1 drivers
v0x2060380_0 .net "B", 0 0, L_0x20dc820;  alias, 1 drivers
v0x2060440_0 .net "out", 0 0, L_0x20dc0c0;  1 drivers
S_0x2060540 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20db840 .functor XOR 1, L_0x20dc820, L_0x20db8b0, C4<0>, C4<0>;
v0x2060710_0 .net "A", 0 0, L_0x20dc820;  alias, 1 drivers
v0x2060860_0 .net "B", 0 0, L_0x20db8b0;  1 drivers
v0x2060920_0 .net "out", 0 0, L_0x20db840;  alias, 1 drivers
S_0x2060a60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x205df70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dbe40 .functor XOR 1, L_0x20dc780, L_0x20dc820, C4<0>, C4<0>;
v0x2060c30_0 .net "A", 0 0, L_0x20dc780;  alias, 1 drivers
v0x2060cf0_0 .net "B", 0 0, L_0x20dc820;  alias, 1 drivers
v0x2060db0_0 .net "out", 0 0, L_0x20dbe40;  1 drivers
S_0x2061940 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20dd4e0 .functor BUFZ 1, L_0x20dcc40, C4<0>, C4<0>, C4<0>;
L_0x20dd570 .functor BUFZ 1, L_0x20dcc40, C4<0>, C4<0>, C4<0>;
v0x20648b0_0 .net "A", 0 0, L_0x20dd9b0;  1 drivers
v0x2064950_0 .net "B", 0 0, L_0x20cb310;  1 drivers
v0x2064a10_0 .net "I", 7 0, L_0x20dd690;  1 drivers
v0x2064b10_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2064bb0_0 .net *"_s15", 0 0, L_0x20dd4e0;  1 drivers
v0x2064cc0_0 .net *"_s19", 0 0, L_0x20dd570;  1 drivers
L_0x7f4bb5d678d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2064da0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d678d0;  1 drivers
v0x2064e80_0 .net "addORsub", 0 0, L_0x20dcc40;  1 drivers
v0x2064f20_0 .net "carryin", 0 0, L_0x20cb3b0;  1 drivers
v0x2065080_0 .net "carryout", 0 0, L_0x2063cc0;  1 drivers
v0x2065150_0 .net "modB", 0 0, L_0x20db720;  1 drivers
v0x20651f0_0 .net "out", 0 0, L_0x20dd380;  1 drivers
L_0x20db790 .part v0x1fb2bf0_0, 0, 1;
LS_0x20dd690_0_0 .concat8 [ 1 1 1 1], L_0x20dd4e0, L_0x20dd570, L_0x20dd070, L_0x7f4bb5d678d0;
LS_0x20dd690_0_4 .concat8 [ 1 1 1 1], L_0x20641a0, L_0x20dd1f0, L_0x20dd260, L_0x20dd2f0;
L_0x20dd690 .concat8 [ 4 4 0 0], LS_0x20dd690_0_0, LS_0x20dd690_0_4;
S_0x2061bb0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20dcb20 .functor XOR 1, L_0x20dd9b0, L_0x20db720, C4<0>, C4<0>;
L_0x20dcc40 .functor XOR 1, L_0x20dcb20, L_0x20cb3b0, C4<0>, C4<0>;
L_0x20dcd70 .functor AND 1, L_0x20dcb20, L_0x20cb3b0, C4<1>, C4<1>;
L_0x20dce00 .functor AND 1, L_0x20dd9b0, L_0x20db720, C4<1>, C4<1>;
L_0x2063cc0 .functor OR 1, L_0x20dcd70, L_0x20dce00, C4<0>, C4<0>;
v0x2061e50_0 .net "A", 0 0, L_0x20dd9b0;  alias, 1 drivers
v0x2061f30_0 .net "B", 0 0, L_0x20db720;  alias, 1 drivers
v0x2061ff0_0 .net "carryin", 0 0, L_0x20cb3b0;  alias, 1 drivers
v0x20620c0_0 .net "carryout", 0 0, L_0x2063cc0;  alias, 1 drivers
v0x2062180_0 .net "out1", 0 0, L_0x20dcb20;  1 drivers
v0x2062290_0 .net "out2", 0 0, L_0x20dcd70;  1 drivers
v0x2062350_0 .net "out3", 0 0, L_0x20dce00;  1 drivers
v0x2062410_0 .net "sum", 0 0, L_0x20dcc40;  alias, 1 drivers
S_0x2062570 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20641a0 .functor AND 1, L_0x20dd9b0, L_0x20cb310, C4<1>, C4<1>;
v0x20627b0_0 .net "A", 0 0, L_0x20dd9b0;  alias, 1 drivers
v0x2062870_0 .net "B", 0 0, L_0x20cb310;  alias, 1 drivers
v0x2062910_0 .net "out", 0 0, L_0x20641a0;  1 drivers
S_0x2062a60 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2062cb0_0 .net "I", 7 0, L_0x20dd690;  alias, 1 drivers
v0x2062d90_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2062e50_0 .net "out", 0 0, L_0x20dd380;  alias, 1 drivers
L_0x20dd380 .part/v L_0x20dd690, v0x1fb2bf0_0, 1;
S_0x2062fa0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dd1f0 .functor NAND 1, L_0x20dd9b0, L_0x20cb310, C4<1>, C4<1>;
v0x20631c0_0 .net "A", 0 0, L_0x20dd9b0;  alias, 1 drivers
v0x20632d0_0 .net "B", 0 0, L_0x20cb310;  alias, 1 drivers
v0x2063390_0 .net "out", 0 0, L_0x20dd1f0;  1 drivers
S_0x20634a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dd260 .functor NOR 1, L_0x20dd9b0, L_0x20cb310, C4<0>, C4<0>;
v0x2063710_0 .net "A", 0 0, L_0x20dd9b0;  alias, 1 drivers
v0x20637d0_0 .net "B", 0 0, L_0x20cb310;  alias, 1 drivers
v0x20638e0_0 .net "out", 0 0, L_0x20dd260;  1 drivers
S_0x20639e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dd2f0 .functor OR 1, L_0x20dd9b0, L_0x20cb310, C4<0>, C4<0>;
v0x2063c00_0 .net "A", 0 0, L_0x20dd9b0;  alias, 1 drivers
v0x2063d50_0 .net "B", 0 0, L_0x20cb310;  alias, 1 drivers
v0x2063e10_0 .net "out", 0 0, L_0x20dd2f0;  1 drivers
S_0x2063f10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20db720 .functor XOR 1, L_0x20cb310, L_0x20db790, C4<0>, C4<0>;
v0x20640e0_0 .net "A", 0 0, L_0x20cb310;  alias, 1 drivers
v0x2064230_0 .net "B", 0 0, L_0x20db790;  1 drivers
v0x20642f0_0 .net "out", 0 0, L_0x20db720;  alias, 1 drivers
S_0x2064430 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2061940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20dd070 .functor XOR 1, L_0x20dd9b0, L_0x20cb310, C4<0>, C4<0>;
v0x2064600_0 .net "A", 0 0, L_0x20dd9b0;  alias, 1 drivers
v0x20646c0_0 .net "B", 0 0, L_0x20cb310;  alias, 1 drivers
v0x2064780_0 .net "out", 0 0, L_0x20dd070;  1 drivers
S_0x2065310 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20de760 .functor BUFZ 1, L_0x20dca80, C4<0>, C4<0>, C4<0>;
L_0x20de7d0 .functor BUFZ 1, L_0x20dca80, C4<0>, C4<0>, C4<0>;
v0x2068280_0 .net "A", 0 0, L_0x20cc5b0;  1 drivers
v0x2068320_0 .net "B", 0 0, L_0x20dee00;  1 drivers
v0x20683e0_0 .net "I", 7 0, L_0x20de8d0;  1 drivers
v0x20684e0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2068580_0 .net *"_s15", 0 0, L_0x20de760;  1 drivers
v0x2068690_0 .net *"_s19", 0 0, L_0x20de7d0;  1 drivers
L_0x7f4bb5d67918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2068770_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67918;  1 drivers
v0x2068850_0 .net "addORsub", 0 0, L_0x20dca80;  1 drivers
v0x20688f0_0 .net "carryin", 0 0, L_0x20dde60;  1 drivers
v0x2068a50_0 .net "carryout", 0 0, L_0x2067690;  1 drivers
v0x2068b20_0 .net "modB", 0 0, L_0x1f880c0;  1 drivers
v0x2068bc0_0 .net "out", 0 0, L_0x20de620;  1 drivers
L_0x20dc8c0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20de8d0_0_0 .concat8 [ 1 1 1 1], L_0x20de760, L_0x20de7d0, L_0x20de350, L_0x7f4bb5d67918;
LS_0x20de8d0_0_4 .concat8 [ 1 1 1 1], L_0x2067b70, L_0x20de4d0, L_0x20de540, L_0x20de5b0;
L_0x20de8d0 .concat8 [ 4 4 0 0], LS_0x20de8d0_0_0, LS_0x20de8d0_0_4;
S_0x2065580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20dc960 .functor XOR 1, L_0x20cc5b0, L_0x1f880c0, C4<0>, C4<0>;
L_0x20dca80 .functor XOR 1, L_0x20dc960, L_0x20dde60, C4<0>, C4<0>;
L_0x20c58e0 .functor AND 1, L_0x20dc960, L_0x20dde60, C4<1>, C4<1>;
L_0x20de0e0 .functor AND 1, L_0x20cc5b0, L_0x1f880c0, C4<1>, C4<1>;
L_0x2067690 .functor OR 1, L_0x20c58e0, L_0x20de0e0, C4<0>, C4<0>;
v0x2065820_0 .net "A", 0 0, L_0x20cc5b0;  alias, 1 drivers
v0x2065900_0 .net "B", 0 0, L_0x1f880c0;  alias, 1 drivers
v0x20659c0_0 .net "carryin", 0 0, L_0x20dde60;  alias, 1 drivers
v0x2065a90_0 .net "carryout", 0 0, L_0x2067690;  alias, 1 drivers
v0x2065b50_0 .net "out1", 0 0, L_0x20dc960;  1 drivers
v0x2065c60_0 .net "out2", 0 0, L_0x20c58e0;  1 drivers
v0x2065d20_0 .net "out3", 0 0, L_0x20de0e0;  1 drivers
v0x2065de0_0 .net "sum", 0 0, L_0x20dca80;  alias, 1 drivers
S_0x2065f40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2067b70 .functor AND 1, L_0x20cc5b0, L_0x20dee00, C4<1>, C4<1>;
v0x2066180_0 .net "A", 0 0, L_0x20cc5b0;  alias, 1 drivers
v0x2066240_0 .net "B", 0 0, L_0x20dee00;  alias, 1 drivers
v0x20662e0_0 .net "out", 0 0, L_0x2067b70;  1 drivers
S_0x2066430 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2066680_0 .net "I", 7 0, L_0x20de8d0;  alias, 1 drivers
v0x2066760_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2066820_0 .net "out", 0 0, L_0x20de620;  alias, 1 drivers
L_0x20de620 .part/v L_0x20de8d0, v0x1fb2bf0_0, 1;
S_0x2066970 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20de4d0 .functor NAND 1, L_0x20cc5b0, L_0x20dee00, C4<1>, C4<1>;
v0x2066b90_0 .net "A", 0 0, L_0x20cc5b0;  alias, 1 drivers
v0x2066ca0_0 .net "B", 0 0, L_0x20dee00;  alias, 1 drivers
v0x2066d60_0 .net "out", 0 0, L_0x20de4d0;  1 drivers
S_0x2066e70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20de540 .functor NOR 1, L_0x20cc5b0, L_0x20dee00, C4<0>, C4<0>;
v0x20670e0_0 .net "A", 0 0, L_0x20cc5b0;  alias, 1 drivers
v0x20671a0_0 .net "B", 0 0, L_0x20dee00;  alias, 1 drivers
v0x20672b0_0 .net "out", 0 0, L_0x20de540;  1 drivers
S_0x20673b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20de5b0 .functor OR 1, L_0x20cc5b0, L_0x20dee00, C4<0>, C4<0>;
v0x20675d0_0 .net "A", 0 0, L_0x20cc5b0;  alias, 1 drivers
v0x2067720_0 .net "B", 0 0, L_0x20dee00;  alias, 1 drivers
v0x20677e0_0 .net "out", 0 0, L_0x20de5b0;  1 drivers
S_0x20678e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f880c0 .functor XOR 1, L_0x20dee00, L_0x20dc8c0, C4<0>, C4<0>;
v0x2067ab0_0 .net "A", 0 0, L_0x20dee00;  alias, 1 drivers
v0x2067c00_0 .net "B", 0 0, L_0x20dc8c0;  1 drivers
v0x2067cc0_0 .net "out", 0 0, L_0x1f880c0;  alias, 1 drivers
S_0x2067e00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2065310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20de350 .functor XOR 1, L_0x20cc5b0, L_0x20dee00, C4<0>, C4<0>;
v0x2067fd0_0 .net "A", 0 0, L_0x20cc5b0;  alias, 1 drivers
v0x2068090_0 .net "B", 0 0, L_0x20dee00;  alias, 1 drivers
v0x2068150_0 .net "out", 0 0, L_0x20de350;  1 drivers
S_0x2068ce0 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20df9e0 .functor BUFZ 1, L_0x20df230, C4<0>, C4<0>, C4<0>;
L_0x20dfa50 .functor BUFZ 1, L_0x20df230, C4<0>, C4<0>, C4<0>;
v0x206bc50_0 .net "A", 0 0, L_0x20dfe70;  1 drivers
v0x206bcf0_0 .net "B", 0 0, L_0x20deea0;  1 drivers
v0x206bdb0_0 .net "I", 7 0, L_0x20dfb50;  1 drivers
v0x206beb0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x206bf50_0 .net *"_s15", 0 0, L_0x20df9e0;  1 drivers
v0x206c060_0 .net *"_s19", 0 0, L_0x20dfa50;  1 drivers
L_0x7f4bb5d67960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x206c140_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67960;  1 drivers
v0x206c220_0 .net "addORsub", 0 0, L_0x20df230;  1 drivers
v0x206c2c0_0 .net "carryin", 0 0, L_0x20def40;  1 drivers
v0x206c420_0 .net "carryout", 0 0, L_0x206b060;  1 drivers
v0x206c4f0_0 .net "modB", 0 0, L_0x20cc650;  1 drivers
v0x206c590_0 .net "out", 0 0, L_0x20df8a0;  1 drivers
L_0x20ddf90 .part v0x1fb2bf0_0, 0, 1;
LS_0x20dfb50_0_0 .concat8 [ 1 1 1 1], L_0x20df9e0, L_0x20dfa50, L_0x20df5d0, L_0x7f4bb5d67960;
LS_0x20dfb50_0_4 .concat8 [ 1 1 1 1], L_0x206b540, L_0x20df750, L_0x20df7c0, L_0x20df830;
L_0x20dfb50 .concat8 [ 4 4 0 0], LS_0x20dfb50_0_0, LS_0x20dfb50_0_4;
S_0x2068f50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20df130 .functor XOR 1, L_0x20dfe70, L_0x20cc650, C4<0>, C4<0>;
L_0x20df230 .functor XOR 1, L_0x20df130, L_0x20def40, C4<0>, C4<0>;
L_0x20df2f0 .functor AND 1, L_0x20df130, L_0x20def40, C4<1>, C4<1>;
L_0x20df360 .functor AND 1, L_0x20dfe70, L_0x20cc650, C4<1>, C4<1>;
L_0x206b060 .functor OR 1, L_0x20df2f0, L_0x20df360, C4<0>, C4<0>;
v0x20691f0_0 .net "A", 0 0, L_0x20dfe70;  alias, 1 drivers
v0x20692d0_0 .net "B", 0 0, L_0x20cc650;  alias, 1 drivers
v0x2069390_0 .net "carryin", 0 0, L_0x20def40;  alias, 1 drivers
v0x2069460_0 .net "carryout", 0 0, L_0x206b060;  alias, 1 drivers
v0x2069520_0 .net "out1", 0 0, L_0x20df130;  1 drivers
v0x2069630_0 .net "out2", 0 0, L_0x20df2f0;  1 drivers
v0x20696f0_0 .net "out3", 0 0, L_0x20df360;  1 drivers
v0x20697b0_0 .net "sum", 0 0, L_0x20df230;  alias, 1 drivers
S_0x2069910 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x206b540 .functor AND 1, L_0x20dfe70, L_0x20deea0, C4<1>, C4<1>;
v0x2069b50_0 .net "A", 0 0, L_0x20dfe70;  alias, 1 drivers
v0x2069c10_0 .net "B", 0 0, L_0x20deea0;  alias, 1 drivers
v0x2069cb0_0 .net "out", 0 0, L_0x206b540;  1 drivers
S_0x2069e00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x206a050_0 .net "I", 7 0, L_0x20dfb50;  alias, 1 drivers
v0x206a130_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x206a1f0_0 .net "out", 0 0, L_0x20df8a0;  alias, 1 drivers
L_0x20df8a0 .part/v L_0x20dfb50, v0x1fb2bf0_0, 1;
S_0x206a340 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20df750 .functor NAND 1, L_0x20dfe70, L_0x20deea0, C4<1>, C4<1>;
v0x206a560_0 .net "A", 0 0, L_0x20dfe70;  alias, 1 drivers
v0x206a670_0 .net "B", 0 0, L_0x20deea0;  alias, 1 drivers
v0x206a730_0 .net "out", 0 0, L_0x20df750;  1 drivers
S_0x206a840 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20df7c0 .functor NOR 1, L_0x20dfe70, L_0x20deea0, C4<0>, C4<0>;
v0x206aab0_0 .net "A", 0 0, L_0x20dfe70;  alias, 1 drivers
v0x206ab70_0 .net "B", 0 0, L_0x20deea0;  alias, 1 drivers
v0x206ac80_0 .net "out", 0 0, L_0x20df7c0;  1 drivers
S_0x206ad80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20df830 .functor OR 1, L_0x20dfe70, L_0x20deea0, C4<0>, C4<0>;
v0x206afa0_0 .net "A", 0 0, L_0x20dfe70;  alias, 1 drivers
v0x206b0f0_0 .net "B", 0 0, L_0x20deea0;  alias, 1 drivers
v0x206b1b0_0 .net "out", 0 0, L_0x20df830;  1 drivers
S_0x206b2b0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cc650 .functor XOR 1, L_0x20deea0, L_0x20ddf90, C4<0>, C4<0>;
v0x206b480_0 .net "A", 0 0, L_0x20deea0;  alias, 1 drivers
v0x206b5d0_0 .net "B", 0 0, L_0x20ddf90;  1 drivers
v0x206b690_0 .net "out", 0 0, L_0x20cc650;  alias, 1 drivers
S_0x206b7d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2068ce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20df5d0 .functor XOR 1, L_0x20dfe70, L_0x20deea0, C4<0>, C4<0>;
v0x206b9a0_0 .net "A", 0 0, L_0x20dfe70;  alias, 1 drivers
v0x206ba60_0 .net "B", 0 0, L_0x20deea0;  alias, 1 drivers
v0x206bb20_0 .net "out", 0 0, L_0x20df5d0;  1 drivers
S_0x206c6b0 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20e0b10 .functor BUFZ 1, L_0x20e0360, C4<0>, C4<0>, C4<0>;
L_0x20e0b80 .functor BUFZ 1, L_0x20e0360, C4<0>, C4<0>, C4<0>;
v0x206f620_0 .net "A", 0 0, L_0x20e0fa0;  1 drivers
v0x206f6c0_0 .net "B", 0 0, L_0x20e1040;  1 drivers
v0x206f780_0 .net "I", 7 0, L_0x20e0c80;  1 drivers
v0x206f880_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x206f920_0 .net *"_s15", 0 0, L_0x20e0b10;  1 drivers
v0x206fa30_0 .net *"_s19", 0 0, L_0x20e0b80;  1 drivers
L_0x7f4bb5d679a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x206fb10_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d679a8;  1 drivers
v0x206fbf0_0 .net "addORsub", 0 0, L_0x20e0360;  1 drivers
v0x206fc90_0 .net "carryin", 0 0, L_0x20dff10;  1 drivers
v0x206fdf0_0 .net "carryout", 0 0, L_0x206ea30;  1 drivers
v0x206fec0_0 .net "modB", 0 0, L_0x20df070;  1 drivers
v0x206ff60_0 .net "out", 0 0, L_0x20e09d0;  1 drivers
L_0x20e01c0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20e0c80_0_0 .concat8 [ 1 1 1 1], L_0x20e0b10, L_0x20e0b80, L_0x20e0700, L_0x7f4bb5d679a8;
LS_0x20e0c80_0_4 .concat8 [ 1 1 1 1], L_0x206ef10, L_0x20e0880, L_0x20e08f0, L_0x20e0960;
L_0x20e0c80 .concat8 [ 4 4 0 0], LS_0x20e0c80_0_0, LS_0x20e0c80_0_4;
S_0x206c920 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20e0260 .functor XOR 1, L_0x20e0fa0, L_0x20df070, C4<0>, C4<0>;
L_0x20e0360 .functor XOR 1, L_0x20e0260, L_0x20dff10, C4<0>, C4<0>;
L_0x20e0420 .functor AND 1, L_0x20e0260, L_0x20dff10, C4<1>, C4<1>;
L_0x20e0490 .functor AND 1, L_0x20e0fa0, L_0x20df070, C4<1>, C4<1>;
L_0x206ea30 .functor OR 1, L_0x20e0420, L_0x20e0490, C4<0>, C4<0>;
v0x206cbc0_0 .net "A", 0 0, L_0x20e0fa0;  alias, 1 drivers
v0x206cca0_0 .net "B", 0 0, L_0x20df070;  alias, 1 drivers
v0x206cd60_0 .net "carryin", 0 0, L_0x20dff10;  alias, 1 drivers
v0x206ce30_0 .net "carryout", 0 0, L_0x206ea30;  alias, 1 drivers
v0x206cef0_0 .net "out1", 0 0, L_0x20e0260;  1 drivers
v0x206d000_0 .net "out2", 0 0, L_0x20e0420;  1 drivers
v0x206d0c0_0 .net "out3", 0 0, L_0x20e0490;  1 drivers
v0x206d180_0 .net "sum", 0 0, L_0x20e0360;  alias, 1 drivers
S_0x206d2e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x206ef10 .functor AND 1, L_0x20e0fa0, L_0x20e1040, C4<1>, C4<1>;
v0x206d520_0 .net "A", 0 0, L_0x20e0fa0;  alias, 1 drivers
v0x206d5e0_0 .net "B", 0 0, L_0x20e1040;  alias, 1 drivers
v0x206d680_0 .net "out", 0 0, L_0x206ef10;  1 drivers
S_0x206d7d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x206da20_0 .net "I", 7 0, L_0x20e0c80;  alias, 1 drivers
v0x206db00_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x206dbc0_0 .net "out", 0 0, L_0x20e09d0;  alias, 1 drivers
L_0x20e09d0 .part/v L_0x20e0c80, v0x1fb2bf0_0, 1;
S_0x206dd10 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e0880 .functor NAND 1, L_0x20e0fa0, L_0x20e1040, C4<1>, C4<1>;
v0x206df30_0 .net "A", 0 0, L_0x20e0fa0;  alias, 1 drivers
v0x206e040_0 .net "B", 0 0, L_0x20e1040;  alias, 1 drivers
v0x206e100_0 .net "out", 0 0, L_0x20e0880;  1 drivers
S_0x206e210 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e08f0 .functor NOR 1, L_0x20e0fa0, L_0x20e1040, C4<0>, C4<0>;
v0x206e480_0 .net "A", 0 0, L_0x20e0fa0;  alias, 1 drivers
v0x206e540_0 .net "B", 0 0, L_0x20e1040;  alias, 1 drivers
v0x206e650_0 .net "out", 0 0, L_0x20e08f0;  1 drivers
S_0x206e750 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e0960 .functor OR 1, L_0x20e0fa0, L_0x20e1040, C4<0>, C4<0>;
v0x206e970_0 .net "A", 0 0, L_0x20e0fa0;  alias, 1 drivers
v0x206eac0_0 .net "B", 0 0, L_0x20e1040;  alias, 1 drivers
v0x206eb80_0 .net "out", 0 0, L_0x20e0960;  1 drivers
S_0x206ec80 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20df070 .functor XOR 1, L_0x20e1040, L_0x20e01c0, C4<0>, C4<0>;
v0x206ee50_0 .net "A", 0 0, L_0x20e1040;  alias, 1 drivers
v0x206efa0_0 .net "B", 0 0, L_0x20e01c0;  1 drivers
v0x206f060_0 .net "out", 0 0, L_0x20df070;  alias, 1 drivers
S_0x206f1a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x206c6b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e0700 .functor XOR 1, L_0x20e0fa0, L_0x20e1040, C4<0>, C4<0>;
v0x206f370_0 .net "A", 0 0, L_0x20e0fa0;  alias, 1 drivers
v0x206f430_0 .net "B", 0 0, L_0x20e1040;  alias, 1 drivers
v0x206f4f0_0 .net "out", 0 0, L_0x20e0700;  1 drivers
S_0x2070080 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20e1c30 .functor BUFZ 1, L_0x20e1430, C4<0>, C4<0>, C4<0>;
L_0x20e1ca0 .functor BUFZ 1, L_0x20e1430, C4<0>, C4<0>, C4<0>;
v0x2072ff0_0 .net "A", 0 0, L_0x20e20c0;  1 drivers
v0x2073090_0 .net "B", 0 0, L_0x20e10e0;  1 drivers
v0x2073150_0 .net "I", 7 0, L_0x20e1da0;  1 drivers
v0x2073250_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x20732f0_0 .net *"_s15", 0 0, L_0x20e1c30;  1 drivers
v0x2073400_0 .net *"_s19", 0 0, L_0x20e1ca0;  1 drivers
L_0x7f4bb5d679f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x20734e0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d679f0;  1 drivers
v0x20735c0_0 .net "addORsub", 0 0, L_0x20e1430;  1 drivers
v0x2073660_0 .net "carryin", 0 0, L_0x20cfee0;  1 drivers
v0x20737c0_0 .net "carryout", 0 0, L_0x2072400;  1 drivers
v0x2073890_0 .net "modB", 0 0, L_0x20e0040;  1 drivers
v0x2073930_0 .net "out", 0 0, L_0x20e1af0;  1 drivers
L_0x20e00b0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20e1da0_0_0 .concat8 [ 1 1 1 1], L_0x20e1c30, L_0x20e1ca0, L_0x20e1820, L_0x7f4bb5d679f0;
LS_0x20e1da0_0_4 .concat8 [ 1 1 1 1], L_0x20728e0, L_0x20e19a0, L_0x20e1a10, L_0x20e1a80;
L_0x20e1da0 .concat8 [ 4 4 0 0], LS_0x20e1da0_0_0, LS_0x20e1da0_0_4;
S_0x20702f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20e0150 .functor XOR 1, L_0x20e20c0, L_0x20e0040, C4<0>, C4<0>;
L_0x20e1430 .functor XOR 1, L_0x20e0150, L_0x20cfee0, C4<0>, C4<0>;
L_0x20e1540 .functor AND 1, L_0x20e0150, L_0x20cfee0, C4<1>, C4<1>;
L_0x20e15b0 .functor AND 1, L_0x20e20c0, L_0x20e0040, C4<1>, C4<1>;
L_0x2072400 .functor OR 1, L_0x20e1540, L_0x20e15b0, C4<0>, C4<0>;
v0x2070590_0 .net "A", 0 0, L_0x20e20c0;  alias, 1 drivers
v0x2070670_0 .net "B", 0 0, L_0x20e0040;  alias, 1 drivers
v0x2070730_0 .net "carryin", 0 0, L_0x20cfee0;  alias, 1 drivers
v0x2070800_0 .net "carryout", 0 0, L_0x2072400;  alias, 1 drivers
v0x20708c0_0 .net "out1", 0 0, L_0x20e0150;  1 drivers
v0x20709d0_0 .net "out2", 0 0, L_0x20e1540;  1 drivers
v0x2070a90_0 .net "out3", 0 0, L_0x20e15b0;  1 drivers
v0x2070b50_0 .net "sum", 0 0, L_0x20e1430;  alias, 1 drivers
S_0x2070cb0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20728e0 .functor AND 1, L_0x20e20c0, L_0x20e10e0, C4<1>, C4<1>;
v0x2070ef0_0 .net "A", 0 0, L_0x20e20c0;  alias, 1 drivers
v0x2070fb0_0 .net "B", 0 0, L_0x20e10e0;  alias, 1 drivers
v0x2071050_0 .net "out", 0 0, L_0x20728e0;  1 drivers
S_0x20711a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x20713f0_0 .net "I", 7 0, L_0x20e1da0;  alias, 1 drivers
v0x20714d0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2071590_0 .net "out", 0 0, L_0x20e1af0;  alias, 1 drivers
L_0x20e1af0 .part/v L_0x20e1da0, v0x1fb2bf0_0, 1;
S_0x20716e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e19a0 .functor NAND 1, L_0x20e20c0, L_0x20e10e0, C4<1>, C4<1>;
v0x2071900_0 .net "A", 0 0, L_0x20e20c0;  alias, 1 drivers
v0x2071a10_0 .net "B", 0 0, L_0x20e10e0;  alias, 1 drivers
v0x2071ad0_0 .net "out", 0 0, L_0x20e19a0;  1 drivers
S_0x2071be0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e1a10 .functor NOR 1, L_0x20e20c0, L_0x20e10e0, C4<0>, C4<0>;
v0x2071e50_0 .net "A", 0 0, L_0x20e20c0;  alias, 1 drivers
v0x2071f10_0 .net "B", 0 0, L_0x20e10e0;  alias, 1 drivers
v0x2072020_0 .net "out", 0 0, L_0x20e1a10;  1 drivers
S_0x2072120 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e1a80 .functor OR 1, L_0x20e20c0, L_0x20e10e0, C4<0>, C4<0>;
v0x2072340_0 .net "A", 0 0, L_0x20e20c0;  alias, 1 drivers
v0x2072490_0 .net "B", 0 0, L_0x20e10e0;  alias, 1 drivers
v0x2072550_0 .net "out", 0 0, L_0x20e1a80;  1 drivers
S_0x2072650 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e0040 .functor XOR 1, L_0x20e10e0, L_0x20e00b0, C4<0>, C4<0>;
v0x2072820_0 .net "A", 0 0, L_0x20e10e0;  alias, 1 drivers
v0x2072970_0 .net "B", 0 0, L_0x20e00b0;  1 drivers
v0x2072a30_0 .net "out", 0 0, L_0x20e0040;  alias, 1 drivers
S_0x2072b70 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2070080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e1820 .functor XOR 1, L_0x20e20c0, L_0x20e10e0, C4<0>, C4<0>;
v0x2072d40_0 .net "A", 0 0, L_0x20e20c0;  alias, 1 drivers
v0x2072e00_0 .net "B", 0 0, L_0x20e10e0;  alias, 1 drivers
v0x2072ec0_0 .net "out", 0 0, L_0x20e1820;  1 drivers
S_0x2073a50 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c4250 .functor BUFZ 1, L_0x20c39b0, C4<0>, C4<0>, C4<0>;
L_0x20c42e0 .functor BUFZ 1, L_0x20c39b0, C4<0>, C4<0>, C4<0>;
v0x20769c0_0 .net "A", 0 0, L_0x20c4720;  1 drivers
v0x2076a60_0 .net "B", 0 0, L_0x20c47c0;  1 drivers
v0x2076b20_0 .net "I", 7 0, L_0x20c4400;  1 drivers
v0x2076c20_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2076cc0_0 .net *"_s15", 0 0, L_0x20c4250;  1 drivers
v0x2076dd0_0 .net *"_s19", 0 0, L_0x20c42e0;  1 drivers
L_0x7f4bb5d672a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2076eb0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d672a0;  1 drivers
v0x2076f90_0 .net "addORsub", 0 0, L_0x20c39b0;  1 drivers
v0x2077030_0 .net "carryin", 0 0, L_0x20c4860;  1 drivers
v0x2077190_0 .net "carryout", 0 0, L_0x2075dd0;  1 drivers
v0x2077260_0 .net "modB", 0 0, L_0x20c3730;  1 drivers
v0x2077300_0 .net "out", 0 0, L_0x20c40f0;  1 drivers
L_0x20c37a0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c4400_0_0 .concat8 [ 1 1 1 1], L_0x20c4250, L_0x20c42e0, L_0x20c3de0, L_0x7f4bb5d672a0;
LS_0x20c4400_0_4 .concat8 [ 1 1 1 1], L_0x20762b0, L_0x20c3f60, L_0x20c3fd0, L_0x20c4060;
L_0x20c4400 .concat8 [ 4 4 0 0], LS_0x20c4400_0_0, LS_0x20c4400_0_4;
S_0x2073cc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c3890 .functor XOR 1, L_0x20c4720, L_0x20c3730, C4<0>, C4<0>;
L_0x20c39b0 .functor XOR 1, L_0x20c3890, L_0x20c4860, C4<0>, C4<0>;
L_0x20c3ae0 .functor AND 1, L_0x20c3890, L_0x20c4860, C4<1>, C4<1>;
L_0x20c3b70 .functor AND 1, L_0x20c4720, L_0x20c3730, C4<1>, C4<1>;
L_0x2075dd0 .functor OR 1, L_0x20c3ae0, L_0x20c3b70, C4<0>, C4<0>;
v0x2073f60_0 .net "A", 0 0, L_0x20c4720;  alias, 1 drivers
v0x2074040_0 .net "B", 0 0, L_0x20c3730;  alias, 1 drivers
v0x2074100_0 .net "carryin", 0 0, L_0x20c4860;  alias, 1 drivers
v0x20741d0_0 .net "carryout", 0 0, L_0x2075dd0;  alias, 1 drivers
v0x2074290_0 .net "out1", 0 0, L_0x20c3890;  1 drivers
v0x20743a0_0 .net "out2", 0 0, L_0x20c3ae0;  1 drivers
v0x2074460_0 .net "out3", 0 0, L_0x20c3b70;  1 drivers
v0x2074520_0 .net "sum", 0 0, L_0x20c39b0;  alias, 1 drivers
S_0x2074680 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20762b0 .functor AND 1, L_0x20c4720, L_0x20c47c0, C4<1>, C4<1>;
v0x20748c0_0 .net "A", 0 0, L_0x20c4720;  alias, 1 drivers
v0x2074980_0 .net "B", 0 0, L_0x20c47c0;  alias, 1 drivers
v0x2074a20_0 .net "out", 0 0, L_0x20762b0;  1 drivers
S_0x2074b70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2074dc0_0 .net "I", 7 0, L_0x20c4400;  alias, 1 drivers
v0x2074ea0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2074f60_0 .net "out", 0 0, L_0x20c40f0;  alias, 1 drivers
L_0x20c40f0 .part/v L_0x20c4400, v0x1fb2bf0_0, 1;
S_0x20750b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c3f60 .functor NAND 1, L_0x20c4720, L_0x20c47c0, C4<1>, C4<1>;
v0x20752d0_0 .net "A", 0 0, L_0x20c4720;  alias, 1 drivers
v0x20753e0_0 .net "B", 0 0, L_0x20c47c0;  alias, 1 drivers
v0x20754a0_0 .net "out", 0 0, L_0x20c3f60;  1 drivers
S_0x20755b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c3fd0 .functor NOR 1, L_0x20c4720, L_0x20c47c0, C4<0>, C4<0>;
v0x2075820_0 .net "A", 0 0, L_0x20c4720;  alias, 1 drivers
v0x20758e0_0 .net "B", 0 0, L_0x20c47c0;  alias, 1 drivers
v0x20759f0_0 .net "out", 0 0, L_0x20c3fd0;  1 drivers
S_0x2075af0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c4060 .functor OR 1, L_0x20c4720, L_0x20c47c0, C4<0>, C4<0>;
v0x2075d10_0 .net "A", 0 0, L_0x20c4720;  alias, 1 drivers
v0x2075e60_0 .net "B", 0 0, L_0x20c47c0;  alias, 1 drivers
v0x2075f20_0 .net "out", 0 0, L_0x20c4060;  1 drivers
S_0x2076020 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c3730 .functor XOR 1, L_0x20c47c0, L_0x20c37a0, C4<0>, C4<0>;
v0x20761f0_0 .net "A", 0 0, L_0x20c47c0;  alias, 1 drivers
v0x2076340_0 .net "B", 0 0, L_0x20c37a0;  1 drivers
v0x2076400_0 .net "out", 0 0, L_0x20c3730;  alias, 1 drivers
S_0x2076540 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2073a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c3de0 .functor XOR 1, L_0x20c4720, L_0x20c47c0, C4<0>, C4<0>;
v0x2076710_0 .net "A", 0 0, L_0x20c4720;  alias, 1 drivers
v0x20767d0_0 .net "B", 0 0, L_0x20c47c0;  alias, 1 drivers
v0x2076890_0 .net "out", 0 0, L_0x20c3de0;  1 drivers
S_0x2077420 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2094a40 .functor BUFZ 1, L_0x20e12b0, C4<0>, C4<0>, C4<0>;
L_0x2094ad0 .functor BUFZ 1, L_0x20e12b0, C4<0>, C4<0>, C4<0>;
v0x207a390_0 .net "A", 0 0, L_0x20e3e70;  1 drivers
v0x207a430_0 .net "B", 0 0, L_0x20e2840;  1 drivers
v0x207a4f0_0 .net "I", 7 0, L_0x2094bf0;  1 drivers
v0x207a5f0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x207a690_0 .net *"_s15", 0 0, L_0x2094a40;  1 drivers
v0x207a7a0_0 .net *"_s19", 0 0, L_0x2094ad0;  1 drivers
L_0x7f4bb5d67a38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x207a880_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67a38;  1 drivers
v0x207a960_0 .net "addORsub", 0 0, L_0x20e12b0;  1 drivers
v0x207aa00_0 .net "carryin", 0 0, L_0x20e28e0;  1 drivers
v0x207ab60_0 .net "carryout", 0 0, L_0x20797a0;  1 drivers
v0x207ac30_0 .net "modB", 0 0, L_0x20d0010;  1 drivers
v0x207acd0_0 .net "out", 0 0, L_0x20948e0;  1 drivers
L_0x20e1180 .part v0x1fb2bf0_0, 0, 1;
LS_0x2094bf0_0_0 .concat8 [ 1 1 1 1], L_0x2094a40, L_0x2094ad0, L_0x20945f0, L_0x7f4bb5d67a38;
LS_0x2094bf0_0_4 .concat8 [ 1 1 1 1], L_0x2079c80, L_0x2094770, L_0x20947e0, L_0x2094850;
L_0x2094bf0 .concat8 [ 4 4 0 0], LS_0x2094bf0_0_0, LS_0x2094bf0_0_4;
S_0x2077690 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20d0080 .functor XOR 1, L_0x20e3e70, L_0x20d0010, C4<0>, C4<0>;
L_0x20e12b0 .functor XOR 1, L_0x20d0080, L_0x20e28e0, C4<0>, C4<0>;
L_0x20e2160 .functor AND 1, L_0x20d0080, L_0x20e28e0, C4<1>, C4<1>;
L_0x20e21f0 .functor AND 1, L_0x20e3e70, L_0x20d0010, C4<1>, C4<1>;
L_0x20797a0 .functor OR 1, L_0x20e2160, L_0x20e21f0, C4<0>, C4<0>;
v0x2077930_0 .net "A", 0 0, L_0x20e3e70;  alias, 1 drivers
v0x2077a10_0 .net "B", 0 0, L_0x20d0010;  alias, 1 drivers
v0x2077ad0_0 .net "carryin", 0 0, L_0x20e28e0;  alias, 1 drivers
v0x2077ba0_0 .net "carryout", 0 0, L_0x20797a0;  alias, 1 drivers
v0x2077c60_0 .net "out1", 0 0, L_0x20d0080;  1 drivers
v0x2077d70_0 .net "out2", 0 0, L_0x20e2160;  1 drivers
v0x2077e30_0 .net "out3", 0 0, L_0x20e21f0;  1 drivers
v0x2077ef0_0 .net "sum", 0 0, L_0x20e12b0;  alias, 1 drivers
S_0x2078050 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2079c80 .functor AND 1, L_0x20e3e70, L_0x20e2840, C4<1>, C4<1>;
v0x2078290_0 .net "A", 0 0, L_0x20e3e70;  alias, 1 drivers
v0x2078350_0 .net "B", 0 0, L_0x20e2840;  alias, 1 drivers
v0x20783f0_0 .net "out", 0 0, L_0x2079c80;  1 drivers
S_0x2078540 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2078790_0 .net "I", 7 0, L_0x2094bf0;  alias, 1 drivers
v0x2078870_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2078930_0 .net "out", 0 0, L_0x20948e0;  alias, 1 drivers
L_0x20948e0 .part/v L_0x2094bf0, v0x1fb2bf0_0, 1;
S_0x2078a80 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2094770 .functor NAND 1, L_0x20e3e70, L_0x20e2840, C4<1>, C4<1>;
v0x2078ca0_0 .net "A", 0 0, L_0x20e3e70;  alias, 1 drivers
v0x2078db0_0 .net "B", 0 0, L_0x20e2840;  alias, 1 drivers
v0x2078e70_0 .net "out", 0 0, L_0x2094770;  1 drivers
S_0x2078f80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20947e0 .functor NOR 1, L_0x20e3e70, L_0x20e2840, C4<0>, C4<0>;
v0x20791f0_0 .net "A", 0 0, L_0x20e3e70;  alias, 1 drivers
v0x20792b0_0 .net "B", 0 0, L_0x20e2840;  alias, 1 drivers
v0x20793c0_0 .net "out", 0 0, L_0x20947e0;  1 drivers
S_0x20794c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2094850 .functor OR 1, L_0x20e3e70, L_0x20e2840, C4<0>, C4<0>;
v0x20796e0_0 .net "A", 0 0, L_0x20e3e70;  alias, 1 drivers
v0x2079830_0 .net "B", 0 0, L_0x20e2840;  alias, 1 drivers
v0x20798f0_0 .net "out", 0 0, L_0x2094850;  1 drivers
S_0x20799f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20d0010 .functor XOR 1, L_0x20e2840, L_0x20e1180, C4<0>, C4<0>;
v0x2079bc0_0 .net "A", 0 0, L_0x20e2840;  alias, 1 drivers
v0x2079d10_0 .net "B", 0 0, L_0x20e1180;  1 drivers
v0x2079dd0_0 .net "out", 0 0, L_0x20d0010;  alias, 1 drivers
S_0x2079f10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2077420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20945f0 .functor XOR 1, L_0x20e3e70, L_0x20e2840, C4<0>, C4<0>;
v0x207a0e0_0 .net "A", 0 0, L_0x20e3e70;  alias, 1 drivers
v0x207a1a0_0 .net "B", 0 0, L_0x20e2840;  alias, 1 drivers
v0x207a260_0 .net "out", 0 0, L_0x20945f0;  1 drivers
S_0x207adf0 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x20e2a10 .functor BUFZ 1, L_0x20e44b0, C4<0>, C4<0>, C4<0>;
L_0x20e2a80 .functor BUFZ 1, L_0x20e44b0, C4<0>, C4<0>, C4<0>;
v0x207e790_0 .net "A", 0 0, L_0x20e5200;  1 drivers
v0x207e830_0 .net "B", 0 0, L_0x20e3f10;  1 drivers
v0x207e8f0_0 .net "I", 7 0, L_0x20e4ce0;  1 drivers
v0x207e9f0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x207ea90_0 .net *"_s3", 0 0, L_0x20e2a10;  1 drivers
v0x207eba0_0 .net *"_s7", 0 0, L_0x20e2a80;  1 drivers
v0x207ec80_0 .net "as", 0 0, L_0x20e44b0;  1 drivers
v0x207ed70_0 .net "carryin", 0 0, L_0x20e3fb0;  1 drivers
v0x207ee60_0 .net "carryout", 0 0, L_0x207d180;  alias, 1 drivers
v0x207ef90_0 .net "modB", 0 0, L_0x20e42a0;  1 drivers
v0x207f080_0 .net "out", 0 0, L_0x20e4ac0;  1 drivers
v0x207f120_0 .net "overflow", 0 0, L_0x20e4c00;  alias, 1 drivers
L_0x20e4310 .part v0x1fb2bf0_0, 0, 1;
LS_0x20e4ce0_0_0 .concat8 [ 1 1 1 1], L_0x20e2a10, L_0x20e2a80, L_0x20e47f0, L_0x20e4c70;
LS_0x20e4ce0_0_4 .concat8 [ 1 1 1 1], L_0x207d660, L_0x20e4970, L_0x20e49e0, L_0x20e4a50;
L_0x20e4ce0 .concat8 [ 4 4 0 0], LS_0x20e4ce0_0_0, LS_0x20e4ce0_0_4;
S_0x207b070 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20e43b0 .functor XOR 1, L_0x20e5200, L_0x20e42a0, C4<0>, C4<0>;
L_0x20e44b0 .functor XOR 1, L_0x20e43b0, L_0x20e3fb0, C4<0>, C4<0>;
L_0x20e4520 .functor AND 1, L_0x20e43b0, L_0x20e3fb0, C4<1>, C4<1>;
L_0x20e4620 .functor AND 1, L_0x20e5200, L_0x20e42a0, C4<1>, C4<1>;
L_0x207d180 .functor OR 1, L_0x20e4520, L_0x20e4620, C4<0>, C4<0>;
v0x207b310_0 .net "A", 0 0, L_0x20e5200;  alias, 1 drivers
v0x207b3f0_0 .net "B", 0 0, L_0x20e42a0;  alias, 1 drivers
v0x207b4b0_0 .net "carryin", 0 0, L_0x20e3fb0;  alias, 1 drivers
v0x207b580_0 .net "carryout", 0 0, L_0x207d180;  alias, 1 drivers
v0x207b640_0 .net "out1", 0 0, L_0x20e43b0;  1 drivers
v0x207b750_0 .net "out2", 0 0, L_0x20e4520;  1 drivers
v0x207b810_0 .net "out3", 0 0, L_0x20e4620;  1 drivers
v0x207b8d0_0 .net "sum", 0 0, L_0x20e44b0;  alias, 1 drivers
S_0x207ba30 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x207d660 .functor AND 1, L_0x20e5200, L_0x20e3f10, C4<1>, C4<1>;
v0x207bc70_0 .net "A", 0 0, L_0x20e5200;  alias, 1 drivers
v0x207bd30_0 .net "B", 0 0, L_0x20e3f10;  alias, 1 drivers
v0x207bdd0_0 .net "out", 0 0, L_0x207d660;  1 drivers
S_0x207bf20 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x207c170_0 .net "I", 7 0, L_0x20e4ce0;  alias, 1 drivers
v0x207c250_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x207c310_0 .net "out", 0 0, L_0x20e4ac0;  alias, 1 drivers
L_0x20e4ac0 .part/v L_0x20e4ce0, v0x1fb2bf0_0, 1;
S_0x207c460 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e4970 .functor NAND 1, L_0x20e5200, L_0x20e3f10, C4<1>, C4<1>;
v0x207c680_0 .net "A", 0 0, L_0x20e5200;  alias, 1 drivers
v0x207c790_0 .net "B", 0 0, L_0x20e3f10;  alias, 1 drivers
v0x207c850_0 .net "out", 0 0, L_0x20e4970;  1 drivers
S_0x207c960 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e49e0 .functor NOR 1, L_0x20e5200, L_0x20e3f10, C4<0>, C4<0>;
v0x207cbd0_0 .net "A", 0 0, L_0x20e5200;  alias, 1 drivers
v0x207cc90_0 .net "B", 0 0, L_0x20e3f10;  alias, 1 drivers
v0x207cda0_0 .net "out", 0 0, L_0x20e49e0;  1 drivers
S_0x207cea0 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e4a50 .functor OR 1, L_0x20e5200, L_0x20e3f10, C4<0>, C4<0>;
v0x207d0c0_0 .net "A", 0 0, L_0x20e5200;  alias, 1 drivers
v0x207d210_0 .net "B", 0 0, L_0x20e3f10;  alias, 1 drivers
v0x207d2d0_0 .net "out", 0 0, L_0x20e4a50;  1 drivers
S_0x207d3d0 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e42a0 .functor XOR 1, L_0x20e3f10, L_0x20e4310, C4<0>, C4<0>;
v0x207d5a0_0 .net "A", 0 0, L_0x20e3f10;  alias, 1 drivers
v0x207d6f0_0 .net "B", 0 0, L_0x20e4310;  1 drivers
v0x207d7b0_0 .net "out", 0 0, L_0x20e42a0;  alias, 1 drivers
S_0x207d8f0 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e47f0 .functor XOR 1, L_0x20e5200, L_0x20e3f10, C4<0>, C4<0>;
v0x207dac0_0 .net "A", 0 0, L_0x20e5200;  alias, 1 drivers
v0x207db80_0 .net "B", 0 0, L_0x20e3f10;  alias, 1 drivers
v0x207dc40_0 .net "out", 0 0, L_0x20e47f0;  1 drivers
S_0x207dd70 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e4c00 .functor XOR 1, L_0x20e3fb0, L_0x207d180, C4<0>, C4<0>;
v0x207dfd0_0 .net "A", 0 0, L_0x20e3fb0;  alias, 1 drivers
v0x207e0c0_0 .net "B", 0 0, L_0x207d180;  alias, 1 drivers
v0x207e190_0 .net "out", 0 0, L_0x20e4c00;  alias, 1 drivers
S_0x207e2a0 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0x207adf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20e4c70 .functor XOR 1, L_0x20e4c00, L_0x20e44b0, C4<0>, C4<0>;
v0x207e4c0_0 .net "A", 0 0, L_0x20e4c00;  alias, 1 drivers
v0x207e5b0_0 .net "B", 0 0, L_0x20e44b0;  alias, 1 drivers
v0x207e680_0 .net "out", 0 0, L_0x20e4c70;  1 drivers
S_0x207f310 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c5310 .functor BUFZ 1, L_0x20c4c30, C4<0>, C4<0>, C4<0>;
L_0x20c5380 .functor BUFZ 1, L_0x20c4c30, C4<0>, C4<0>, C4<0>;
v0x2082190_0 .net "A", 0 0, L_0x20c57a0;  1 drivers
v0x2082230_0 .net "B", 0 0, L_0x20c5840;  1 drivers
v0x20822f0_0 .net "I", 7 0, L_0x20c5480;  1 drivers
v0x20823f0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2082490_0 .net *"_s15", 0 0, L_0x20c5310;  1 drivers
v0x20825a0_0 .net *"_s19", 0 0, L_0x20c5380;  1 drivers
L_0x7f4bb5d672e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2082680_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d672e8;  1 drivers
v0x2082760_0 .net "addORsub", 0 0, L_0x20c4c30;  1 drivers
v0x2082800_0 .net "carryin", 0 0, L_0x20c5960;  1 drivers
v0x2082960_0 .net "carryout", 0 0, L_0x20815a0;  1 drivers
v0x2082a30_0 .net "modB", 0 0, L_0x20c4a00;  1 drivers
v0x2082ad0_0 .net "out", 0 0, L_0x20c5220;  1 drivers
L_0x20c4a70 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c5480_0_0 .concat8 [ 1 1 1 1], L_0x20c5310, L_0x20c5380, L_0x20bd3e0, L_0x7f4bb5d672e8;
LS_0x20c5480_0_4 .concat8 [ 1 1 1 1], L_0x2081a80, L_0x20c50d0, L_0x20c5140, L_0x20c51b0;
L_0x20c5480 .concat8 [ 4 4 0 0], LS_0x20c5480_0_0, LS_0x20c5480_0_4;
S_0x207f580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c4b10 .functor XOR 1, L_0x20c57a0, L_0x20c4a00, C4<0>, C4<0>;
L_0x20c4c30 .functor XOR 1, L_0x20c4b10, L_0x20c5960, C4<0>, C4<0>;
L_0x20c4d10 .functor AND 1, L_0x20c4b10, L_0x20c5960, C4<1>, C4<1>;
L_0x20c4da0 .functor AND 1, L_0x20c57a0, L_0x20c4a00, C4<1>, C4<1>;
L_0x20815a0 .functor OR 1, L_0x20c4d10, L_0x20c4da0, C4<0>, C4<0>;
v0x207f7f0_0 .net "A", 0 0, L_0x20c57a0;  alias, 1 drivers
v0x207f8d0_0 .net "B", 0 0, L_0x20c4a00;  alias, 1 drivers
v0x207f990_0 .net "carryin", 0 0, L_0x20c5960;  alias, 1 drivers
v0x207fa30_0 .net "carryout", 0 0, L_0x20815a0;  alias, 1 drivers
v0x207faf0_0 .net "out1", 0 0, L_0x20c4b10;  1 drivers
v0x207fc00_0 .net "out2", 0 0, L_0x20c4d10;  1 drivers
v0x207fcc0_0 .net "out3", 0 0, L_0x20c4da0;  1 drivers
v0x207fd80_0 .net "sum", 0 0, L_0x20c4c30;  alias, 1 drivers
S_0x207fee0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2081a80 .functor AND 1, L_0x20c57a0, L_0x20c5840, C4<1>, C4<1>;
v0x2080120_0 .net "A", 0 0, L_0x20c57a0;  alias, 1 drivers
v0x20801e0_0 .net "B", 0 0, L_0x20c5840;  alias, 1 drivers
v0x2080280_0 .net "out", 0 0, L_0x2081a80;  1 drivers
S_0x20803a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x20805c0_0 .net "I", 7 0, L_0x20c5480;  alias, 1 drivers
v0x20806a0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2080760_0 .net "out", 0 0, L_0x20c5220;  alias, 1 drivers
L_0x20c5220 .part/v L_0x20c5480, v0x1fb2bf0_0, 1;
S_0x2080880 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c50d0 .functor NAND 1, L_0x20c57a0, L_0x20c5840, C4<1>, C4<1>;
v0x2080aa0_0 .net "A", 0 0, L_0x20c57a0;  alias, 1 drivers
v0x2080bb0_0 .net "B", 0 0, L_0x20c5840;  alias, 1 drivers
v0x2080c70_0 .net "out", 0 0, L_0x20c50d0;  1 drivers
S_0x2080d80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c5140 .functor NOR 1, L_0x20c57a0, L_0x20c5840, C4<0>, C4<0>;
v0x2080ff0_0 .net "A", 0 0, L_0x20c57a0;  alias, 1 drivers
v0x20810b0_0 .net "B", 0 0, L_0x20c5840;  alias, 1 drivers
v0x20811c0_0 .net "out", 0 0, L_0x20c5140;  1 drivers
S_0x20812c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c51b0 .functor OR 1, L_0x20c57a0, L_0x20c5840, C4<0>, C4<0>;
v0x20814e0_0 .net "A", 0 0, L_0x20c57a0;  alias, 1 drivers
v0x2081630_0 .net "B", 0 0, L_0x20c5840;  alias, 1 drivers
v0x20816f0_0 .net "out", 0 0, L_0x20c51b0;  1 drivers
S_0x20817f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c4a00 .functor XOR 1, L_0x20c5840, L_0x20c4a70, C4<0>, C4<0>;
v0x20819c0_0 .net "A", 0 0, L_0x20c5840;  alias, 1 drivers
v0x2081b10_0 .net "B", 0 0, L_0x20c4a70;  1 drivers
v0x2081bd0_0 .net "out", 0 0, L_0x20c4a00;  alias, 1 drivers
S_0x2081d10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x207f310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20bd3e0 .functor XOR 1, L_0x20c57a0, L_0x20c5840, C4<0>, C4<0>;
v0x2081ee0_0 .net "A", 0 0, L_0x20c57a0;  alias, 1 drivers
v0x2081fa0_0 .net "B", 0 0, L_0x20c5840;  alias, 1 drivers
v0x2082060_0 .net "out", 0 0, L_0x20bd3e0;  1 drivers
S_0x2082bf0 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c6470 .functor BUFZ 1, L_0x20c5cc0, C4<0>, C4<0>, C4<0>;
L_0x20c64e0 .functor BUFZ 1, L_0x20c5cc0, C4<0>, C4<0>, C4<0>;
v0x2085b60_0 .net "A", 0 0, L_0x20c6900;  1 drivers
v0x2085c00_0 .net "B", 0 0, L_0x20c6a30;  1 drivers
v0x2085cc0_0 .net "I", 7 0, L_0x20c65e0;  1 drivers
v0x2085dc0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2085e60_0 .net *"_s15", 0 0, L_0x20c6470;  1 drivers
v0x2085f70_0 .net *"_s19", 0 0, L_0x20c64e0;  1 drivers
L_0x7f4bb5d67330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2086050_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67330;  1 drivers
v0x2086130_0 .net "addORsub", 0 0, L_0x20c5cc0;  1 drivers
v0x20861d0_0 .net "carryin", 0 0, L_0x20c6be0;  1 drivers
v0x2086330_0 .net "carryout", 0 0, L_0x2084f70;  1 drivers
v0x2086400_0 .net "modB", 0 0, L_0x20c4990;  1 drivers
v0x20864a0_0 .net "out", 0 0, L_0x20c6330;  1 drivers
L_0x20c5b20 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c65e0_0_0 .concat8 [ 1 1 1 1], L_0x20c6470, L_0x20c64e0, L_0x20c6060, L_0x7f4bb5d67330;
LS_0x20c65e0_0_4 .concat8 [ 1 1 1 1], L_0x2085450, L_0x20c61e0, L_0x20c6250, L_0x20c62c0;
L_0x20c65e0 .concat8 [ 4 4 0 0], LS_0x20c65e0_0_0, LS_0x20c65e0_0_4;
S_0x2082e60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c5bc0 .functor XOR 1, L_0x20c6900, L_0x20c4990, C4<0>, C4<0>;
L_0x20c5cc0 .functor XOR 1, L_0x20c5bc0, L_0x20c6be0, C4<0>, C4<0>;
L_0x20c5d80 .functor AND 1, L_0x20c5bc0, L_0x20c6be0, C4<1>, C4<1>;
L_0x20c5df0 .functor AND 1, L_0x20c6900, L_0x20c4990, C4<1>, C4<1>;
L_0x2084f70 .functor OR 1, L_0x20c5d80, L_0x20c5df0, C4<0>, C4<0>;
v0x2083100_0 .net "A", 0 0, L_0x20c6900;  alias, 1 drivers
v0x20831e0_0 .net "B", 0 0, L_0x20c4990;  alias, 1 drivers
v0x20832a0_0 .net "carryin", 0 0, L_0x20c6be0;  alias, 1 drivers
v0x2083370_0 .net "carryout", 0 0, L_0x2084f70;  alias, 1 drivers
v0x2083430_0 .net "out1", 0 0, L_0x20c5bc0;  1 drivers
v0x2083540_0 .net "out2", 0 0, L_0x20c5d80;  1 drivers
v0x2083600_0 .net "out3", 0 0, L_0x20c5df0;  1 drivers
v0x20836c0_0 .net "sum", 0 0, L_0x20c5cc0;  alias, 1 drivers
S_0x2083820 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2085450 .functor AND 1, L_0x20c6900, L_0x20c6a30, C4<1>, C4<1>;
v0x2083a60_0 .net "A", 0 0, L_0x20c6900;  alias, 1 drivers
v0x2083b20_0 .net "B", 0 0, L_0x20c6a30;  alias, 1 drivers
v0x2083bc0_0 .net "out", 0 0, L_0x2085450;  1 drivers
S_0x2083d10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2083f60_0 .net "I", 7 0, L_0x20c65e0;  alias, 1 drivers
v0x2084040_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2084100_0 .net "out", 0 0, L_0x20c6330;  alias, 1 drivers
L_0x20c6330 .part/v L_0x20c65e0, v0x1fb2bf0_0, 1;
S_0x2084250 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c61e0 .functor NAND 1, L_0x20c6900, L_0x20c6a30, C4<1>, C4<1>;
v0x2084470_0 .net "A", 0 0, L_0x20c6900;  alias, 1 drivers
v0x2084580_0 .net "B", 0 0, L_0x20c6a30;  alias, 1 drivers
v0x2084640_0 .net "out", 0 0, L_0x20c61e0;  1 drivers
S_0x2084750 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c6250 .functor NOR 1, L_0x20c6900, L_0x20c6a30, C4<0>, C4<0>;
v0x20849c0_0 .net "A", 0 0, L_0x20c6900;  alias, 1 drivers
v0x2084a80_0 .net "B", 0 0, L_0x20c6a30;  alias, 1 drivers
v0x2084b90_0 .net "out", 0 0, L_0x20c6250;  1 drivers
S_0x2084c90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c62c0 .functor OR 1, L_0x20c6900, L_0x20c6a30, C4<0>, C4<0>;
v0x2084eb0_0 .net "A", 0 0, L_0x20c6900;  alias, 1 drivers
v0x2085000_0 .net "B", 0 0, L_0x20c6a30;  alias, 1 drivers
v0x20850c0_0 .net "out", 0 0, L_0x20c62c0;  1 drivers
S_0x20851c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c4990 .functor XOR 1, L_0x20c6a30, L_0x20c5b20, C4<0>, C4<0>;
v0x2085390_0 .net "A", 0 0, L_0x20c6a30;  alias, 1 drivers
v0x20854e0_0 .net "B", 0 0, L_0x20c5b20;  1 drivers
v0x20855a0_0 .net "out", 0 0, L_0x20c4990;  alias, 1 drivers
S_0x20856e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2082bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c6060 .functor XOR 1, L_0x20c6900, L_0x20c6a30, C4<0>, C4<0>;
v0x20858b0_0 .net "A", 0 0, L_0x20c6900;  alias, 1 drivers
v0x2085970_0 .net "B", 0 0, L_0x20c6a30;  alias, 1 drivers
v0x2085a30_0 .net "out", 0 0, L_0x20c6060;  1 drivers
S_0x20865c0 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c76c0 .functor BUFZ 1, L_0x20c6ec0, C4<0>, C4<0>, C4<0>;
L_0x20c7730 .functor BUFZ 1, L_0x20c6ec0, C4<0>, C4<0>, C4<0>;
v0x2089530_0 .net "A", 0 0, L_0x20c7b50;  1 drivers
v0x20895d0_0 .net "B", 0 0, L_0x20c7bf0;  1 drivers
v0x2089690_0 .net "I", 7 0, L_0x20c7830;  1 drivers
v0x2089790_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2089830_0 .net *"_s15", 0 0, L_0x20c76c0;  1 drivers
v0x2089940_0 .net *"_s19", 0 0, L_0x20c7730;  1 drivers
L_0x7f4bb5d67378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2089a20_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67378;  1 drivers
v0x2089b00_0 .net "addORsub", 0 0, L_0x20c6ec0;  1 drivers
v0x2089ba0_0 .net "carryin", 0 0, L_0x20c6c80;  1 drivers
v0x2089d00_0 .net "carryout", 0 0, L_0x2088940;  1 drivers
v0x2089dd0_0 .net "modB", 0 0, L_0x20c69a0;  1 drivers
v0x2089e70_0 .net "out", 0 0, L_0x20c7580;  1 drivers
L_0x20c6d20 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c7830_0_0 .concat8 [ 1 1 1 1], L_0x20c76c0, L_0x20c7730, L_0x20c72b0, L_0x7f4bb5d67378;
LS_0x20c7830_0_4 .concat8 [ 1 1 1 1], L_0x2088e20, L_0x20c7430, L_0x20c74a0, L_0x20c7510;
L_0x20c7830 .concat8 [ 4 4 0 0], LS_0x20c7830_0_0, LS_0x20c7830_0_4;
S_0x2086830 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c6dc0 .functor XOR 1, L_0x20c7b50, L_0x20c69a0, C4<0>, C4<0>;
L_0x20c6ec0 .functor XOR 1, L_0x20c6dc0, L_0x20c6c80, C4<0>, C4<0>;
L_0x20c6fd0 .functor AND 1, L_0x20c6dc0, L_0x20c6c80, C4<1>, C4<1>;
L_0x20c7040 .functor AND 1, L_0x20c7b50, L_0x20c69a0, C4<1>, C4<1>;
L_0x2088940 .functor OR 1, L_0x20c6fd0, L_0x20c7040, C4<0>, C4<0>;
v0x2086ad0_0 .net "A", 0 0, L_0x20c7b50;  alias, 1 drivers
v0x2086bb0_0 .net "B", 0 0, L_0x20c69a0;  alias, 1 drivers
v0x2086c70_0 .net "carryin", 0 0, L_0x20c6c80;  alias, 1 drivers
v0x2086d40_0 .net "carryout", 0 0, L_0x2088940;  alias, 1 drivers
v0x2086e00_0 .net "out1", 0 0, L_0x20c6dc0;  1 drivers
v0x2086f10_0 .net "out2", 0 0, L_0x20c6fd0;  1 drivers
v0x2086fd0_0 .net "out3", 0 0, L_0x20c7040;  1 drivers
v0x2087090_0 .net "sum", 0 0, L_0x20c6ec0;  alias, 1 drivers
S_0x20871f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2088e20 .functor AND 1, L_0x20c7b50, L_0x20c7bf0, C4<1>, C4<1>;
v0x2087430_0 .net "A", 0 0, L_0x20c7b50;  alias, 1 drivers
v0x20874f0_0 .net "B", 0 0, L_0x20c7bf0;  alias, 1 drivers
v0x2087590_0 .net "out", 0 0, L_0x2088e20;  1 drivers
S_0x20876e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2087930_0 .net "I", 7 0, L_0x20c7830;  alias, 1 drivers
v0x2087a10_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2087ad0_0 .net "out", 0 0, L_0x20c7580;  alias, 1 drivers
L_0x20c7580 .part/v L_0x20c7830, v0x1fb2bf0_0, 1;
S_0x2087c20 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c7430 .functor NAND 1, L_0x20c7b50, L_0x20c7bf0, C4<1>, C4<1>;
v0x2087e40_0 .net "A", 0 0, L_0x20c7b50;  alias, 1 drivers
v0x2087f50_0 .net "B", 0 0, L_0x20c7bf0;  alias, 1 drivers
v0x2088010_0 .net "out", 0 0, L_0x20c7430;  1 drivers
S_0x2088120 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c74a0 .functor NOR 1, L_0x20c7b50, L_0x20c7bf0, C4<0>, C4<0>;
v0x2088390_0 .net "A", 0 0, L_0x20c7b50;  alias, 1 drivers
v0x2088450_0 .net "B", 0 0, L_0x20c7bf0;  alias, 1 drivers
v0x2088560_0 .net "out", 0 0, L_0x20c74a0;  1 drivers
S_0x2088660 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c7510 .functor OR 1, L_0x20c7b50, L_0x20c7bf0, C4<0>, C4<0>;
v0x2088880_0 .net "A", 0 0, L_0x20c7b50;  alias, 1 drivers
v0x20889d0_0 .net "B", 0 0, L_0x20c7bf0;  alias, 1 drivers
v0x2088a90_0 .net "out", 0 0, L_0x20c7510;  1 drivers
S_0x2088b90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c69a0 .functor XOR 1, L_0x20c7bf0, L_0x20c6d20, C4<0>, C4<0>;
v0x2088d60_0 .net "A", 0 0, L_0x20c7bf0;  alias, 1 drivers
v0x2088eb0_0 .net "B", 0 0, L_0x20c6d20;  1 drivers
v0x2088f70_0 .net "out", 0 0, L_0x20c69a0;  alias, 1 drivers
S_0x20890b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x20865c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c72b0 .functor XOR 1, L_0x20c7b50, L_0x20c7bf0, C4<0>, C4<0>;
v0x2089280_0 .net "A", 0 0, L_0x20c7b50;  alias, 1 drivers
v0x2089340_0 .net "B", 0 0, L_0x20c7bf0;  alias, 1 drivers
v0x2089400_0 .net "out", 0 0, L_0x20c72b0;  1 drivers
S_0x2089f90 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c88a0 .functor BUFZ 1, L_0x20c8000, C4<0>, C4<0>, C4<0>;
L_0x20c8930 .functor BUFZ 1, L_0x20c8000, C4<0>, C4<0>, C4<0>;
v0x208cf00_0 .net "A", 0 0, L_0x20c8d70;  1 drivers
v0x208cfa0_0 .net "B", 0 0, L_0x20c7c90;  1 drivers
v0x208d060_0 .net "I", 7 0, L_0x20c8a50;  1 drivers
v0x208d160_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x208d200_0 .net *"_s15", 0 0, L_0x20c88a0;  1 drivers
v0x208d310_0 .net *"_s19", 0 0, L_0x20c8930;  1 drivers
L_0x7f4bb5d673c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x208d3f0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d673c0;  1 drivers
v0x208d4d0_0 .net "addORsub", 0 0, L_0x20c8000;  1 drivers
v0x208d570_0 .net "carryin", 0 0, L_0x20c8ed0;  1 drivers
v0x208d6d0_0 .net "carryout", 0 0, L_0x208c310;  1 drivers
v0x208d7a0_0 .net "modB", 0 0, L_0x20c7dd0;  1 drivers
v0x208d840_0 .net "out", 0 0, L_0x20c8740;  1 drivers
L_0x20c7e40 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c8a50_0_0 .concat8 [ 1 1 1 1], L_0x20c88a0, L_0x20c8930, L_0x20c8430, L_0x7f4bb5d673c0;
LS_0x20c8a50_0_4 .concat8 [ 1 1 1 1], L_0x208c7f0, L_0x20c85b0, L_0x20c8620, L_0x20c86b0;
L_0x20c8a50 .concat8 [ 4 4 0 0], LS_0x20c8a50_0_0, LS_0x20c8a50_0_4;
S_0x208a200 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c7ee0 .functor XOR 1, L_0x20c8d70, L_0x20c7dd0, C4<0>, C4<0>;
L_0x20c8000 .functor XOR 1, L_0x20c7ee0, L_0x20c8ed0, C4<0>, C4<0>;
L_0x20c8130 .functor AND 1, L_0x20c7ee0, L_0x20c8ed0, C4<1>, C4<1>;
L_0x20c81c0 .functor AND 1, L_0x20c8d70, L_0x20c7dd0, C4<1>, C4<1>;
L_0x208c310 .functor OR 1, L_0x20c8130, L_0x20c81c0, C4<0>, C4<0>;
v0x208a4a0_0 .net "A", 0 0, L_0x20c8d70;  alias, 1 drivers
v0x208a580_0 .net "B", 0 0, L_0x20c7dd0;  alias, 1 drivers
v0x208a640_0 .net "carryin", 0 0, L_0x20c8ed0;  alias, 1 drivers
v0x208a710_0 .net "carryout", 0 0, L_0x208c310;  alias, 1 drivers
v0x208a7d0_0 .net "out1", 0 0, L_0x20c7ee0;  1 drivers
v0x208a8e0_0 .net "out2", 0 0, L_0x20c8130;  1 drivers
v0x208a9a0_0 .net "out3", 0 0, L_0x20c81c0;  1 drivers
v0x208aa60_0 .net "sum", 0 0, L_0x20c8000;  alias, 1 drivers
S_0x208abc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x208c7f0 .functor AND 1, L_0x20c8d70, L_0x20c7c90, C4<1>, C4<1>;
v0x208ae00_0 .net "A", 0 0, L_0x20c8d70;  alias, 1 drivers
v0x208aec0_0 .net "B", 0 0, L_0x20c7c90;  alias, 1 drivers
v0x208af60_0 .net "out", 0 0, L_0x208c7f0;  1 drivers
S_0x208b0b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x208b300_0 .net "I", 7 0, L_0x20c8a50;  alias, 1 drivers
v0x208b3e0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x208b4a0_0 .net "out", 0 0, L_0x20c8740;  alias, 1 drivers
L_0x20c8740 .part/v L_0x20c8a50, v0x1fb2bf0_0, 1;
S_0x208b5f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c85b0 .functor NAND 1, L_0x20c8d70, L_0x20c7c90, C4<1>, C4<1>;
v0x208b810_0 .net "A", 0 0, L_0x20c8d70;  alias, 1 drivers
v0x208b920_0 .net "B", 0 0, L_0x20c7c90;  alias, 1 drivers
v0x208b9e0_0 .net "out", 0 0, L_0x20c85b0;  1 drivers
S_0x208baf0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c8620 .functor NOR 1, L_0x20c8d70, L_0x20c7c90, C4<0>, C4<0>;
v0x208bd60_0 .net "A", 0 0, L_0x20c8d70;  alias, 1 drivers
v0x208be20_0 .net "B", 0 0, L_0x20c7c90;  alias, 1 drivers
v0x208bf30_0 .net "out", 0 0, L_0x20c8620;  1 drivers
S_0x208c030 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c86b0 .functor OR 1, L_0x20c8d70, L_0x20c7c90, C4<0>, C4<0>;
v0x208c250_0 .net "A", 0 0, L_0x20c8d70;  alias, 1 drivers
v0x208c3a0_0 .net "B", 0 0, L_0x20c7c90;  alias, 1 drivers
v0x208c460_0 .net "out", 0 0, L_0x20c86b0;  1 drivers
S_0x208c560 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c7dd0 .functor XOR 1, L_0x20c7c90, L_0x20c7e40, C4<0>, C4<0>;
v0x208c730_0 .net "A", 0 0, L_0x20c7c90;  alias, 1 drivers
v0x208c880_0 .net "B", 0 0, L_0x20c7e40;  1 drivers
v0x208c940_0 .net "out", 0 0, L_0x20c7dd0;  alias, 1 drivers
S_0x208ca80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2089f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c8430 .functor XOR 1, L_0x20c8d70, L_0x20c7c90, C4<0>, C4<0>;
v0x208cc50_0 .net "A", 0 0, L_0x20c8d70;  alias, 1 drivers
v0x208cd10_0 .net "B", 0 0, L_0x20c7c90;  alias, 1 drivers
v0x208cdd0_0 .net "out", 0 0, L_0x20c8430;  1 drivers
S_0x208d960 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20c9af0 .functor BUFZ 1, L_0x20c9270, C4<0>, C4<0>, C4<0>;
L_0x20c9b80 .functor BUFZ 1, L_0x20c9270, C4<0>, C4<0>, C4<0>;
v0x20908d0_0 .net "A", 0 0, L_0x20c9fc0;  1 drivers
v0x2090970_0 .net "B", 0 0, L_0x20ca060;  1 drivers
v0x2090a30_0 .net "I", 7 0, L_0x20c9ca0;  1 drivers
v0x2090b30_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2090bd0_0 .net *"_s15", 0 0, L_0x20c9af0;  1 drivers
v0x2090ce0_0 .net *"_s19", 0 0, L_0x20c9b80;  1 drivers
L_0x7f4bb5d67408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2090dc0_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67408;  1 drivers
v0x2090ea0_0 .net "addORsub", 0 0, L_0x20c9270;  1 drivers
v0x2090f40_0 .net "carryin", 0 0, L_0x20c9000;  1 drivers
v0x20910a0_0 .net "carryout", 0 0, L_0x208fce0;  1 drivers
v0x2091170_0 .net "modB", 0 0, L_0x20c8e10;  1 drivers
v0x2091210_0 .net "out", 0 0, L_0x20c9990;  1 drivers
L_0x20c90d0 .part v0x1fb2bf0_0, 0, 1;
LS_0x20c9ca0_0_0 .concat8 [ 1 1 1 1], L_0x20c9af0, L_0x20c9b80, L_0x20c9680, L_0x7f4bb5d67408;
LS_0x20c9ca0_0_4 .concat8 [ 1 1 1 1], L_0x20901c0, L_0x20c9800, L_0x20c9870, L_0x20c9900;
L_0x20c9ca0 .concat8 [ 4 4 0 0], LS_0x20c9ca0_0_0, LS_0x20c9ca0_0_4;
S_0x208dbd0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20c9170 .functor XOR 1, L_0x20c9fc0, L_0x20c8e10, C4<0>, C4<0>;
L_0x20c9270 .functor XOR 1, L_0x20c9170, L_0x20c9000, C4<0>, C4<0>;
L_0x20c9380 .functor AND 1, L_0x20c9170, L_0x20c9000, C4<1>, C4<1>;
L_0x20c9410 .functor AND 1, L_0x20c9fc0, L_0x20c8e10, C4<1>, C4<1>;
L_0x208fce0 .functor OR 1, L_0x20c9380, L_0x20c9410, C4<0>, C4<0>;
v0x208de70_0 .net "A", 0 0, L_0x20c9fc0;  alias, 1 drivers
v0x208df50_0 .net "B", 0 0, L_0x20c8e10;  alias, 1 drivers
v0x208e010_0 .net "carryin", 0 0, L_0x20c9000;  alias, 1 drivers
v0x208e0e0_0 .net "carryout", 0 0, L_0x208fce0;  alias, 1 drivers
v0x208e1a0_0 .net "out1", 0 0, L_0x20c9170;  1 drivers
v0x208e2b0_0 .net "out2", 0 0, L_0x20c9380;  1 drivers
v0x208e370_0 .net "out3", 0 0, L_0x20c9410;  1 drivers
v0x208e430_0 .net "sum", 0 0, L_0x20c9270;  alias, 1 drivers
S_0x208e590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20901c0 .functor AND 1, L_0x20c9fc0, L_0x20ca060, C4<1>, C4<1>;
v0x208e7d0_0 .net "A", 0 0, L_0x20c9fc0;  alias, 1 drivers
v0x208e890_0 .net "B", 0 0, L_0x20ca060;  alias, 1 drivers
v0x208e930_0 .net "out", 0 0, L_0x20901c0;  1 drivers
S_0x208ea80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x208ecd0_0 .net "I", 7 0, L_0x20c9ca0;  alias, 1 drivers
v0x208edb0_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x208ee70_0 .net "out", 0 0, L_0x20c9990;  alias, 1 drivers
L_0x20c9990 .part/v L_0x20c9ca0, v0x1fb2bf0_0, 1;
S_0x208efc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c9800 .functor NAND 1, L_0x20c9fc0, L_0x20ca060, C4<1>, C4<1>;
v0x208f1e0_0 .net "A", 0 0, L_0x20c9fc0;  alias, 1 drivers
v0x208f2f0_0 .net "B", 0 0, L_0x20ca060;  alias, 1 drivers
v0x208f3b0_0 .net "out", 0 0, L_0x20c9800;  1 drivers
S_0x208f4c0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c9870 .functor NOR 1, L_0x20c9fc0, L_0x20ca060, C4<0>, C4<0>;
v0x208f730_0 .net "A", 0 0, L_0x20c9fc0;  alias, 1 drivers
v0x208f7f0_0 .net "B", 0 0, L_0x20ca060;  alias, 1 drivers
v0x208f900_0 .net "out", 0 0, L_0x20c9870;  1 drivers
S_0x208fa00 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c9900 .functor OR 1, L_0x20c9fc0, L_0x20ca060, C4<0>, C4<0>;
v0x208fc20_0 .net "A", 0 0, L_0x20c9fc0;  alias, 1 drivers
v0x208fd70_0 .net "B", 0 0, L_0x20ca060;  alias, 1 drivers
v0x208fe30_0 .net "out", 0 0, L_0x20c9900;  1 drivers
S_0x208ff30 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c8e10 .functor XOR 1, L_0x20ca060, L_0x20c90d0, C4<0>, C4<0>;
v0x2090100_0 .net "A", 0 0, L_0x20ca060;  alias, 1 drivers
v0x2090250_0 .net "B", 0 0, L_0x20c90d0;  1 drivers
v0x2090310_0 .net "out", 0 0, L_0x20c8e10;  alias, 1 drivers
S_0x2090450 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x208d960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c9680 .functor XOR 1, L_0x20c9fc0, L_0x20ca060, C4<0>, C4<0>;
v0x2090620_0 .net "A", 0 0, L_0x20c9fc0;  alias, 1 drivers
v0x20906e0_0 .net "B", 0 0, L_0x20ca060;  alias, 1 drivers
v0x20907a0_0 .net "out", 0 0, L_0x20c9680;  1 drivers
S_0x2091330 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0x200c060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20cada0 .functor BUFZ 1, L_0x20ca520, C4<0>, C4<0>, C4<0>;
L_0x20cae30 .functor BUFZ 1, L_0x20ca520, C4<0>, C4<0>, C4<0>;
v0x20942a0_0 .net "A", 0 0, L_0x20cb270;  1 drivers
v0x2094340_0 .net "B", 0 0, L_0x20ca100;  1 drivers
v0x2094400_0 .net "I", 7 0, L_0x20caf50;  1 drivers
v0x2094500_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2059c60_0 .net *"_s15", 0 0, L_0x20cada0;  1 drivers
v0x2059d70_0 .net *"_s19", 0 0, L_0x20cae30;  1 drivers
L_0x7f4bb5d67450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2059e50_0 .net/2s *"_s23", 0 0, L_0x7f4bb5d67450;  1 drivers
v0x2059f30_0 .net "addORsub", 0 0, L_0x20ca520;  1 drivers
v0x2059fd0_0 .net "carryin", 0 0, L_0x20cb520;  1 drivers
v0x2094e70_0 .net "carryout", 0 0, L_0x20936b0;  1 drivers
v0x2094f40_0 .net "modB", 0 0, L_0x20c5a90;  1 drivers
v0x2094fe0_0 .net "out", 0 0, L_0x20cac40;  1 drivers
L_0x20ca380 .part v0x1fb2bf0_0, 0, 1;
LS_0x20caf50_0_0 .concat8 [ 1 1 1 1], L_0x20cada0, L_0x20cae30, L_0x20ca930, L_0x7f4bb5d67450;
LS_0x20caf50_0_4 .concat8 [ 1 1 1 1], L_0x2093b90, L_0x20caab0, L_0x20cab20, L_0x20cabb0;
L_0x20caf50 .concat8 [ 4 4 0 0], LS_0x20caf50_0_0, LS_0x20caf50_0_4;
S_0x20915a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20ca420 .functor XOR 1, L_0x20cb270, L_0x20c5a90, C4<0>, C4<0>;
L_0x20ca520 .functor XOR 1, L_0x20ca420, L_0x20cb520, C4<0>, C4<0>;
L_0x20ca630 .functor AND 1, L_0x20ca420, L_0x20cb520, C4<1>, C4<1>;
L_0x20ca6c0 .functor AND 1, L_0x20cb270, L_0x20c5a90, C4<1>, C4<1>;
L_0x20936b0 .functor OR 1, L_0x20ca630, L_0x20ca6c0, C4<0>, C4<0>;
v0x2091840_0 .net "A", 0 0, L_0x20cb270;  alias, 1 drivers
v0x2091920_0 .net "B", 0 0, L_0x20c5a90;  alias, 1 drivers
v0x20919e0_0 .net "carryin", 0 0, L_0x20cb520;  alias, 1 drivers
v0x2091ab0_0 .net "carryout", 0 0, L_0x20936b0;  alias, 1 drivers
v0x2091b70_0 .net "out1", 0 0, L_0x20ca420;  1 drivers
v0x2091c80_0 .net "out2", 0 0, L_0x20ca630;  1 drivers
v0x2091d40_0 .net "out3", 0 0, L_0x20ca6c0;  1 drivers
v0x2091e00_0 .net "sum", 0 0, L_0x20ca520;  alias, 1 drivers
S_0x2091f60 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2093b90 .functor AND 1, L_0x20cb270, L_0x20ca100, C4<1>, C4<1>;
v0x20921a0_0 .net "A", 0 0, L_0x20cb270;  alias, 1 drivers
v0x2092260_0 .net "B", 0 0, L_0x20ca100;  alias, 1 drivers
v0x2092300_0 .net "out", 0 0, L_0x2093b90;  1 drivers
S_0x2092450 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x20926a0_0 .net "I", 7 0, L_0x20caf50;  alias, 1 drivers
v0x2092780_0 .net "S", 2 0, v0x1fb2bf0_0;  alias, 1 drivers
v0x2092840_0 .net "out", 0 0, L_0x20cac40;  alias, 1 drivers
L_0x20cac40 .part/v L_0x20caf50, v0x1fb2bf0_0, 1;
S_0x2092990 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20caab0 .functor NAND 1, L_0x20cb270, L_0x20ca100, C4<1>, C4<1>;
v0x2092bb0_0 .net "A", 0 0, L_0x20cb270;  alias, 1 drivers
v0x2092cc0_0 .net "B", 0 0, L_0x20ca100;  alias, 1 drivers
v0x2092d80_0 .net "out", 0 0, L_0x20caab0;  1 drivers
S_0x2092e90 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cab20 .functor NOR 1, L_0x20cb270, L_0x20ca100, C4<0>, C4<0>;
v0x2093100_0 .net "A", 0 0, L_0x20cb270;  alias, 1 drivers
v0x20931c0_0 .net "B", 0 0, L_0x20ca100;  alias, 1 drivers
v0x20932d0_0 .net "out", 0 0, L_0x20cab20;  1 drivers
S_0x20933d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20cabb0 .functor OR 1, L_0x20cb270, L_0x20ca100, C4<0>, C4<0>;
v0x20935f0_0 .net "A", 0 0, L_0x20cb270;  alias, 1 drivers
v0x2093740_0 .net "B", 0 0, L_0x20ca100;  alias, 1 drivers
v0x2093800_0 .net "out", 0 0, L_0x20cabb0;  1 drivers
S_0x2093900 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20c5a90 .functor XOR 1, L_0x20ca100, L_0x20ca380, C4<0>, C4<0>;
v0x2093ad0_0 .net "A", 0 0, L_0x20ca100;  alias, 1 drivers
v0x2093c20_0 .net "B", 0 0, L_0x20ca380;  1 drivers
v0x2093ce0_0 .net "out", 0 0, L_0x20c5a90;  alias, 1 drivers
S_0x2093e20 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2091330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20ca930 .functor XOR 1, L_0x20cb270, L_0x20ca100, C4<0>, C4<0>;
v0x2093ff0_0 .net "A", 0 0, L_0x20cb270;  alias, 1 drivers
v0x20940b0_0 .net "B", 0 0, L_0x20ca100;  alias, 1 drivers
v0x2094170_0 .net "out", 0 0, L_0x20ca930;  1 drivers
S_0x2097850 .scope module, "mem" "memory" 4 51, 10 1 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "dmWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x20ac260 .functor BUFZ 32, L_0x20ac1c0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20ac410 .functor BUFZ 32, L_0x20ac320, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20ac5b0 .functor BUFZ 32, L_0x20ac510, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x2097b00_0 .net "Addr0", 31 0, L_0x20ac670;  1 drivers
v0x2097c00_0 .net "DataIn0", 31 0, L_0x20c07b0;  alias, 1 drivers
v0x2097ce0_0 .net "DataOut0", 31 0, L_0x20ac410;  alias, 1 drivers
v0x2097dd0_0 .net *"_s0", 31 0, L_0x20ac1c0;  1 drivers
v0x2097eb0_0 .net *"_s4", 31 0, L_0x20ac320;  1 drivers
v0x2097fe0_0 .net *"_s8", 31 0, L_0x20ac510;  1 drivers
v0x20980c0_0 .net "clk", 0 0, v0x20aabf0_0;  alias, 1 drivers
v0x2098160_0 .net "dmWE", 0 0, v0x201c150_0;  alias, 1 drivers
v0x2098230_0 .net "instruct_Addr1", 31 0, L_0x20ac8b0;  1 drivers
v0x2098360_0 .net "instruct_DataOut1", 31 0, L_0x20ac5b0;  alias, 1 drivers
v0x2098450 .array "mem", 0 32767, 31 0;
v0x20984f0_0 .net "memAtAdd", 31 0, L_0x20ac260;  1 drivers
E_0x2097a80 .event posedge, v0x201be50_0;
L_0x20ac1c0 .array/port v0x2098450, L_0x20ac670;
L_0x20ac320 .array/port v0x2098450, L_0x20ac670;
L_0x20ac510 .array/port v0x2098450, L_0x20ac8b0;
S_0x20986f0 .scope module, "op_imm_mux" "mux2" 4 64, 11 1 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x2098930_0 .net "input0", 31 0, v0x2017860_0;  alias, 1 drivers
v0x2098a40_0 .net "input1", 31 0, L_0x20c07b0;  alias, 1 drivers
v0x2098b10_0 .net "out", 31 0, L_0x20e8b60;  alias, 1 drivers
v0x2098c10_0 .net "select0", 0 0, v0x20135b0_0;  alias, 1 drivers
L_0x20e8b60 .functor MUXZ 32, L_0x20c07b0, v0x2017860_0, v0x20135b0_0, C4<>;
S_0x2098d30 .scope module, "pcmux" "pc_multiplexer" 4 48, 12 7 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x2099000_0 .net "JumpAddress", 25 0, v0x201bd90_0;  alias, 1 drivers
v0x2099110_0 .var "PC", 31 0;
v0x20991d0_0 .net "S", 1 0, v0x1fb7120_0;  alias, 1 drivers
v0x20992d0_0 .net "clk", 0 0, v0x20aabf0_0;  alias, 1 drivers
v0x20993c0_0 .net "immediate", 31 0, v0x2017860_0;  alias, 1 drivers
v0x2099500_0 .var "mux_out", 31 0;
v0x20995e0_0 .var "nextPC", 31 0;
v0x20996c0_0 .net "regRs", 31 0, L_0x20be050;  alias, 1 drivers
v0x2099780_0 .var "tempimmediate", 31 0;
E_0x2098fa0/0 .event edge, v0x1fb7120_0, v0x2095100_0, v0x2017860_0, v0x201bd90_0;
E_0x2098fa0/1 .event edge, v0x20995e0_0;
E_0x2098fa0 .event/or E_0x2098fa0/0, E_0x2098fa0/1;
S_0x20999d0 .scope module, "reg_in_mux" "mux3_32bit" 4 63, 11 21 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x2099bd0_0 .net *"_s1", 0 0, L_0x20e83d0;  1 drivers
v0x2099cd0_0 .net *"_s10", 31 0, L_0x20e8730;  1 drivers
v0x2099db0_0 .net *"_s3", 0 0, L_0x20e8470;  1 drivers
L_0x7f4bb5d67b10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x2099e70_0 .net/2u *"_s4", 31 0, L_0x7f4bb5d67b10;  1 drivers
v0x2099f50_0 .net *"_s6", 31 0, L_0x20e85a0;  1 drivers
v0x209a080_0 .net *"_s9", 0 0, L_0x20e8690;  1 drivers
v0x209a160_0 .net "input0", 31 0, L_0x20e5050;  alias, 1 drivers
v0x209a220_0 .net "input1", 31 0, L_0x20ac410;  alias, 1 drivers
v0x209a2f0_0 .net "input2", 31 0, L_0x20e89b0;  1 drivers
v0x209a440_0 .net "out", 31 0, L_0x20e8820;  alias, 1 drivers
v0x209a520_0 .net "select0", 1 0, v0x1ffd1c0_0;  alias, 1 drivers
L_0x20e83d0 .part v0x1ffd1c0_0, 1, 1;
L_0x20e8470 .part v0x1ffd1c0_0, 0, 1;
L_0x20e85a0 .functor MUXZ 32, L_0x20e89b0, L_0x7f4bb5d67b10, L_0x20e8470, C4<>;
L_0x20e8690 .part v0x1ffd1c0_0, 0, 1;
L_0x20e8730 .functor MUXZ 32, L_0x20e5050, L_0x20ac410, L_0x20e8690, C4<>;
L_0x20e8820 .functor MUXZ 32, L_0x20e8730, L_0x20e85a0, L_0x20e83d0, C4<>;
S_0x209a6c0 .scope module, "reg_select_mux" "mux3_5bit" 4 62, 11 11 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x209a8c0_0 .net *"_s1", 0 0, L_0x20e7470;  1 drivers
v0x209a9c0_0 .net *"_s10", 4 0, L_0x20e8100;  1 drivers
v0x209aaa0_0 .net *"_s3", 0 0, L_0x20e7ed0;  1 drivers
L_0x7f4bb5d67a80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x209ab90_0 .net/2u *"_s4", 4 0, L_0x7f4bb5d67a80;  1 drivers
v0x209ac70_0 .net *"_s6", 4 0, L_0x20e7f70;  1 drivers
v0x209ada0_0 .net *"_s9", 0 0, L_0x20e8060;  1 drivers
v0x209ae80_0 .net "input0", 4 0, v0x1ffd5a0_0;  alias, 1 drivers
v0x209af40_0 .net "input1", 4 0, v0x1ff8b30_0;  alias, 1 drivers
L_0x7f4bb5d67ac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x209b010_0 .net "input2", 4 0, L_0x7f4bb5d67ac8;  1 drivers
v0x209b180_0 .net "out", 4 0, L_0x20e81f0;  alias, 1 drivers
v0x209b260_0 .net "select0", 1 0, v0x2017bd0_0;  alias, 1 drivers
L_0x20e7470 .part v0x2017bd0_0, 1, 1;
L_0x20e7ed0 .part v0x2017bd0_0, 0, 1;
L_0x20e7f70 .functor MUXZ 5, L_0x7f4bb5d67ac8, L_0x7f4bb5d67a80, L_0x20e7ed0, C4<>;
L_0x20e8060 .part v0x2017bd0_0, 0, 1;
L_0x20e8100 .functor MUXZ 5, v0x1ffd5a0_0, v0x1ff8b30_0, L_0x20e8060, C4<>;
L_0x20e81f0 .functor MUXZ 5, L_0x20e8100, L_0x20e7f70, L_0x20e7470, C4<>;
S_0x209b3c0 .scope module, "regi" "regfile" 4 57, 13 12 0, S_0x202ac50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x20a4850_0 .net "Clk", 0 0, v0x20aabf0_0;  alias, 1 drivers
v0x20a77a0_0 .net "ReadData1", 31 0, L_0x20be050;  alias, 1 drivers
v0x20a7840_0 .net "ReadData2", 31 0, L_0x20c07b0;  alias, 1 drivers
v0x20a78e0_0 .net "ReadRegister1", 4 0, v0x1ff8ef0_0;  alias, 1 drivers
v0x20a79d0_0 .net "ReadRegister2", 4 0, v0x1ff8b30_0;  alias, 1 drivers
v0x20a7ac0_0 .net "RegWrite", 0 0, v0x1ffd120_0;  alias, 1 drivers
v0x20a7bb0_0 .net "WriteData", 31 0, L_0x20e8820;  alias, 1 drivers
v0x20a7c70_0 .net "WriteRegister", 4 0, L_0x20e81f0;  alias, 1 drivers
v0x20a7d60_0 .net "decoded", 31 0, L_0x20bcae0;  1 drivers
v0x20a7eb0 .array "registers", 0 31, 31 0;
S_0x209b6a0 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x209b3c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x209b900_0 .net *"_s0", 31 0, L_0x20ac9a0;  1 drivers
L_0x7f4bb5d67060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x209ba00_0 .net *"_s3", 30 0, L_0x7f4bb5d67060;  1 drivers
v0x209bae0_0 .net "address", 4 0, L_0x20e81f0;  alias, 1 drivers
v0x209bbb0_0 .net "enable", 0 0, v0x1ffd120_0;  alias, 1 drivers
v0x209bc80_0 .net "out", 31 0, L_0x20bcae0;  alias, 1 drivers
L_0x20ac9a0 .concat [ 1 31 0 0], v0x1ffd120_0, L_0x7f4bb5d67060;
L_0x20bcae0 .shift/l 32, L_0x20ac9a0, L_0x20e81f0;
S_0x209bdf0 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209bfe0 .param/l "i" 0 13 33, +C4<01>;
S_0x209c0a0 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209c290 .param/l "i" 0 13 33, +C4<010>;
S_0x209c330 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209c520 .param/l "i" 0 13 33, +C4<011>;
S_0x209c5e0 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209c820 .param/l "i" 0 13 33, +C4<0100>;
S_0x209c8e0 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209cad0 .param/l "i" 0 13 33, +C4<0101>;
S_0x209cb90 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209cd80 .param/l "i" 0 13 33, +C4<0110>;
S_0x209ce40 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209d030 .param/l "i" 0 13 33, +C4<0111>;
S_0x209d0f0 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209c7d0 .param/l "i" 0 13 33, +C4<01000>;
S_0x209d3e0 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209d5d0 .param/l "i" 0 13 33, +C4<01001>;
S_0x209d690 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209d880 .param/l "i" 0 13 33, +C4<01010>;
S_0x209d940 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209db30 .param/l "i" 0 13 33, +C4<01011>;
S_0x209dbf0 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209dde0 .param/l "i" 0 13 33, +C4<01100>;
S_0x209dea0 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209e090 .param/l "i" 0 13 33, +C4<01101>;
S_0x209e150 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209e340 .param/l "i" 0 13 33, +C4<01110>;
S_0x209e400 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209e5f0 .param/l "i" 0 13 33, +C4<01111>;
S_0x209e6b0 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209d2e0 .param/l "i" 0 13 33, +C4<010000>;
S_0x209ea00 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209ebd0 .param/l "i" 0 13 33, +C4<010001>;
S_0x209ec90 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209ee80 .param/l "i" 0 13 33, +C4<010010>;
S_0x209ef40 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209f130 .param/l "i" 0 13 33, +C4<010011>;
S_0x209f1f0 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209f3e0 .param/l "i" 0 13 33, +C4<010100>;
S_0x209f4a0 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209f690 .param/l "i" 0 13 33, +C4<010101>;
S_0x209f750 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209f940 .param/l "i" 0 13 33, +C4<010110>;
S_0x209fa00 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209fbf0 .param/l "i" 0 13 33, +C4<010111>;
S_0x209fcb0 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x209fea0 .param/l "i" 0 13 33, +C4<011000>;
S_0x209ff60 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a0150 .param/l "i" 0 13 33, +C4<011001>;
S_0x20a0210 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a0400 .param/l "i" 0 13 33, +C4<011010>;
S_0x20a04c0 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a06b0 .param/l "i" 0 13 33, +C4<011011>;
S_0x20a0770 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a0960 .param/l "i" 0 13 33, +C4<011100>;
S_0x20a0a20 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a0c10 .param/l "i" 0 13 33, +C4<011101>;
S_0x20a0cd0 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a0ec0 .param/l "i" 0 13 33, +C4<011110>;
S_0x20a0f80 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x209b3c0;
 .timescale 0 0;
P_0x20a1170 .param/l "i" 0 13 33, +C4<011111>;
S_0x20a1230 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x209b3c0;
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
L_0x7f4bb5d670f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x20bccb0 .functor BUFZ 32, L_0x7f4bb5d670f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_1 .array/port v0x20a7eb0, 1;
L_0x20bcd20 .functor BUFZ 32, v0x20a7eb0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_2 .array/port v0x20a7eb0, 2;
L_0x20bcd90 .functor BUFZ 32, v0x20a7eb0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_3 .array/port v0x20a7eb0, 3;
L_0x20bce00 .functor BUFZ 32, v0x20a7eb0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_4 .array/port v0x20a7eb0, 4;
L_0x20bce70 .functor BUFZ 32, v0x20a7eb0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_5 .array/port v0x20a7eb0, 5;
L_0x20bcee0 .functor BUFZ 32, v0x20a7eb0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_6 .array/port v0x20a7eb0, 6;
L_0x20bcf90 .functor BUFZ 32, v0x20a7eb0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_7 .array/port v0x20a7eb0, 7;
L_0x20bd000 .functor BUFZ 32, v0x20a7eb0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_8 .array/port v0x20a7eb0, 8;
L_0x20bd070 .functor BUFZ 32, v0x20a7eb0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_9 .array/port v0x20a7eb0, 9;
L_0x20bd0e0 .functor BUFZ 32, v0x20a7eb0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_10 .array/port v0x20a7eb0, 10;
L_0x20bd1b0 .functor BUFZ 32, v0x20a7eb0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_11 .array/port v0x20a7eb0, 11;
L_0x20bd220 .functor BUFZ 32, v0x20a7eb0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_12 .array/port v0x20a7eb0, 12;
L_0x20bd300 .functor BUFZ 32, v0x20a7eb0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_13 .array/port v0x20a7eb0, 13;
L_0x20bd370 .functor BUFZ 32, v0x20a7eb0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_14 .array/port v0x20a7eb0, 14;
L_0x20bd290 .functor BUFZ 32, v0x20a7eb0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_15 .array/port v0x20a7eb0, 15;
L_0x20bd460 .functor BUFZ 32, v0x20a7eb0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_16 .array/port v0x20a7eb0, 16;
L_0x20bd560 .functor BUFZ 32, v0x20a7eb0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_17 .array/port v0x20a7eb0, 17;
L_0x20bd5d0 .functor BUFZ 32, v0x20a7eb0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_18 .array/port v0x20a7eb0, 18;
L_0x20bd4d0 .functor BUFZ 32, v0x20a7eb0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_19 .array/port v0x20a7eb0, 19;
L_0x20bd6e0 .functor BUFZ 32, v0x20a7eb0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_20 .array/port v0x20a7eb0, 20;
L_0x20bd640 .functor BUFZ 32, v0x20a7eb0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_21 .array/port v0x20a7eb0, 21;
L_0x20bd800 .functor BUFZ 32, v0x20a7eb0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_22 .array/port v0x20a7eb0, 22;
L_0x20bd750 .functor BUFZ 32, v0x20a7eb0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_23 .array/port v0x20a7eb0, 23;
L_0x20bd930 .functor BUFZ 32, v0x20a7eb0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_24 .array/port v0x20a7eb0, 24;
L_0x20bd870 .functor BUFZ 32, v0x20a7eb0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_25 .array/port v0x20a7eb0, 25;
L_0x20bda70 .functor BUFZ 32, v0x20a7eb0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_26 .array/port v0x20a7eb0, 26;
L_0x20bd9a0 .functor BUFZ 32, v0x20a7eb0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_27 .array/port v0x20a7eb0, 27;
L_0x20bdbc0 .functor BUFZ 32, v0x20a7eb0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_28 .array/port v0x20a7eb0, 28;
L_0x20bdae0 .functor BUFZ 32, v0x20a7eb0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_29 .array/port v0x20a7eb0, 29;
L_0x20bdb50 .functor BUFZ 32, v0x20a7eb0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_30 .array/port v0x20a7eb0, 30;
L_0x20bdd30 .functor BUFZ 32, v0x20a7eb0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x20a7eb0_31 .array/port v0x20a7eb0, 31;
L_0x20bdda0 .functor BUFZ 32, v0x20a7eb0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be050 .functor BUFZ 32, L_0x20bdc30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f4bb5d670a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x209e8a0_0 .net *"_s101", 1 0, L_0x7f4bb5d670a8;  1 drivers
v0x20a1a70_0 .net *"_s96", 31 0, L_0x20bdc30;  1 drivers
v0x20a1b30_0 .net *"_s98", 6 0, L_0x20bdf20;  1 drivers
v0x20a1c10_0 .net "address", 4 0, v0x1ff8ef0_0;  alias, 1 drivers
v0x20a1cd0_0 .net "input0", 31 0, L_0x7f4bb5d670f0;  1 drivers
v0x20a1de0_0 .net "input1", 31 0, v0x20a7eb0_1;  1 drivers
v0x20a1ec0_0 .net "input10", 31 0, v0x20a7eb0_10;  1 drivers
v0x20a1fa0_0 .net "input11", 31 0, v0x20a7eb0_11;  1 drivers
v0x20a2080_0 .net "input12", 31 0, v0x20a7eb0_12;  1 drivers
v0x20a21f0_0 .net "input13", 31 0, v0x20a7eb0_13;  1 drivers
v0x20a22d0_0 .net "input14", 31 0, v0x20a7eb0_14;  1 drivers
v0x20a23b0_0 .net "input15", 31 0, v0x20a7eb0_15;  1 drivers
v0x20a2490_0 .net "input16", 31 0, v0x20a7eb0_16;  1 drivers
v0x20a2570_0 .net "input17", 31 0, v0x20a7eb0_17;  1 drivers
v0x20a2650_0 .net "input18", 31 0, v0x20a7eb0_18;  1 drivers
v0x20a2730_0 .net "input19", 31 0, v0x20a7eb0_19;  1 drivers
v0x20a2810_0 .net "input2", 31 0, v0x20a7eb0_2;  1 drivers
v0x20a29c0_0 .net "input20", 31 0, v0x20a7eb0_20;  1 drivers
v0x20a2a60_0 .net "input21", 31 0, v0x20a7eb0_21;  1 drivers
v0x20a2b40_0 .net "input22", 31 0, v0x20a7eb0_22;  1 drivers
v0x20a2c20_0 .net "input23", 31 0, v0x20a7eb0_23;  1 drivers
v0x20a2d00_0 .net "input24", 31 0, v0x20a7eb0_24;  1 drivers
v0x20a2de0_0 .net "input25", 31 0, v0x20a7eb0_25;  1 drivers
v0x20a2ec0_0 .net "input26", 31 0, v0x20a7eb0_26;  1 drivers
v0x20a2fa0_0 .net "input27", 31 0, v0x20a7eb0_27;  1 drivers
v0x20a3080_0 .net "input28", 31 0, v0x20a7eb0_28;  1 drivers
v0x20a3160_0 .net "input29", 31 0, v0x20a7eb0_29;  1 drivers
v0x20a3240_0 .net "input3", 31 0, v0x20a7eb0_3;  1 drivers
v0x20a3320_0 .net "input30", 31 0, v0x20a7eb0_30;  1 drivers
v0x20a3400_0 .net "input31", 31 0, v0x20a7eb0_31;  1 drivers
v0x20a34e0_0 .net "input4", 31 0, v0x20a7eb0_4;  1 drivers
v0x20a35c0_0 .net "input5", 31 0, v0x20a7eb0_5;  1 drivers
v0x20a36a0_0 .net "input6", 31 0, v0x20a7eb0_6;  1 drivers
v0x20a28f0_0 .net "input7", 31 0, v0x20a7eb0_7;  1 drivers
v0x20a3970_0 .net "input8", 31 0, v0x20a7eb0_8;  1 drivers
v0x20a3a50_0 .net "input9", 31 0, v0x20a7eb0_9;  1 drivers
v0x20a3b30 .array "mux", 0 31;
v0x20a3b30_0 .net v0x20a3b30 0, 31 0, L_0x20bccb0; 1 drivers
v0x20a3b30_1 .net v0x20a3b30 1, 31 0, L_0x20bcd20; 1 drivers
v0x20a3b30_2 .net v0x20a3b30 2, 31 0, L_0x20bcd90; 1 drivers
v0x20a3b30_3 .net v0x20a3b30 3, 31 0, L_0x20bce00; 1 drivers
v0x20a3b30_4 .net v0x20a3b30 4, 31 0, L_0x20bce70; 1 drivers
v0x20a3b30_5 .net v0x20a3b30 5, 31 0, L_0x20bcee0; 1 drivers
v0x20a3b30_6 .net v0x20a3b30 6, 31 0, L_0x20bcf90; 1 drivers
v0x20a3b30_7 .net v0x20a3b30 7, 31 0, L_0x20bd000; 1 drivers
v0x20a3b30_8 .net v0x20a3b30 8, 31 0, L_0x20bd070; 1 drivers
v0x20a3b30_9 .net v0x20a3b30 9, 31 0, L_0x20bd0e0; 1 drivers
v0x20a3b30_10 .net v0x20a3b30 10, 31 0, L_0x20bd1b0; 1 drivers
v0x20a3b30_11 .net v0x20a3b30 11, 31 0, L_0x20bd220; 1 drivers
v0x20a3b30_12 .net v0x20a3b30 12, 31 0, L_0x20bd300; 1 drivers
v0x20a3b30_13 .net v0x20a3b30 13, 31 0, L_0x20bd370; 1 drivers
v0x20a3b30_14 .net v0x20a3b30 14, 31 0, L_0x20bd290; 1 drivers
v0x20a3b30_15 .net v0x20a3b30 15, 31 0, L_0x20bd460; 1 drivers
v0x20a3b30_16 .net v0x20a3b30 16, 31 0, L_0x20bd560; 1 drivers
v0x20a3b30_17 .net v0x20a3b30 17, 31 0, L_0x20bd5d0; 1 drivers
v0x20a3b30_18 .net v0x20a3b30 18, 31 0, L_0x20bd4d0; 1 drivers
v0x20a3b30_19 .net v0x20a3b30 19, 31 0, L_0x20bd6e0; 1 drivers
v0x20a3b30_20 .net v0x20a3b30 20, 31 0, L_0x20bd640; 1 drivers
v0x20a3b30_21 .net v0x20a3b30 21, 31 0, L_0x20bd800; 1 drivers
v0x20a3b30_22 .net v0x20a3b30 22, 31 0, L_0x20bd750; 1 drivers
v0x20a3b30_23 .net v0x20a3b30 23, 31 0, L_0x20bd930; 1 drivers
v0x20a3b30_24 .net v0x20a3b30 24, 31 0, L_0x20bd870; 1 drivers
v0x20a3b30_25 .net v0x20a3b30 25, 31 0, L_0x20bda70; 1 drivers
v0x20a3b30_26 .net v0x20a3b30 26, 31 0, L_0x20bd9a0; 1 drivers
v0x20a3b30_27 .net v0x20a3b30 27, 31 0, L_0x20bdbc0; 1 drivers
v0x20a3b30_28 .net v0x20a3b30 28, 31 0, L_0x20bdae0; 1 drivers
v0x20a3b30_29 .net v0x20a3b30 29, 31 0, L_0x20bdb50; 1 drivers
v0x20a3b30_30 .net v0x20a3b30 30, 31 0, L_0x20bdd30; 1 drivers
v0x20a3b30_31 .net v0x20a3b30 31, 31 0, L_0x20bdda0; 1 drivers
v0x20a4060_0 .net "out", 31 0, L_0x20be050;  alias, 1 drivers
L_0x20bdc30 .array/port v0x20a3b30, L_0x20bdf20;
L_0x20bdf20 .concat [ 5 2 0 0], v0x1ff8ef0_0, L_0x7f4bb5d670a8;
S_0x20a46d0 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x209b3c0;
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
L_0x7f4bb5d67180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x20be0c0 .functor BUFZ 32, L_0x7f4bb5d67180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be130 .functor BUFZ 32, v0x20a7eb0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be230 .functor BUFZ 32, v0x20a7eb0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be330 .functor BUFZ 32, v0x20a7eb0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be430 .functor BUFZ 32, v0x20a7eb0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be530 .functor BUFZ 32, v0x20a7eb0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be630 .functor BUFZ 32, v0x20a7eb0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be730 .functor BUFZ 32, v0x20a7eb0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be830 .functor BUFZ 32, v0x20a7eb0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20be930 .functor BUFZ 32, v0x20a7eb0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bea60 .functor BUFZ 32, v0x20a7eb0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20beb90 .functor BUFZ 32, v0x20a7eb0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bed30 .functor BUFZ 32, v0x20a7eb0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bee60 .functor BUFZ 32, v0x20a7eb0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20becc0 .functor BUFZ 32, v0x20a7eb0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf050 .functor BUFZ 32, v0x20a7eb0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf210 .functor BUFZ 32, v0x20a7eb0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf340 .functor BUFZ 32, v0x20a7eb0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf180 .functor BUFZ 32, v0x20a7eb0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf5d0 .functor BUFZ 32, v0x20a7eb0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf470 .functor BUFZ 32, v0x20a7eb0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf840 .functor BUFZ 32, v0x20a7eb0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf700 .functor BUFZ 32, v0x20a7eb0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bfac0 .functor BUFZ 32, v0x20a7eb0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bf970 .functor BUFZ 32, v0x20a7eb0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bfd50 .functor BUFZ 32, v0x20a7eb0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bfbf0 .functor BUFZ 32, v0x20a7eb0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bfff0 .functor BUFZ 32, v0x20a7eb0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20bfe80 .functor BUFZ 32, v0x20a7eb0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20c0270 .functor BUFZ 32, v0x20a7eb0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20c00f0 .functor BUFZ 32, v0x20a7eb0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20c0500 .functor BUFZ 32, v0x20a7eb0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x20c07b0 .functor BUFZ 32, L_0x20c0370, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f4bb5d67138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x20a1660_0 .net *"_s101", 1 0, L_0x7f4bb5d67138;  1 drivers
v0x20a4cf0_0 .net *"_s96", 31 0, L_0x20c0370;  1 drivers
v0x20a4df0_0 .net *"_s98", 6 0, L_0x20c0710;  1 drivers
v0x20a4eb0_0 .net "address", 4 0, v0x1ff8b30_0;  alias, 1 drivers
v0x20a4fc0_0 .net "input0", 31 0, L_0x7f4bb5d67180;  1 drivers
v0x20a50f0_0 .net "input1", 31 0, v0x20a7eb0_1;  alias, 1 drivers
v0x20a51b0_0 .net "input10", 31 0, v0x20a7eb0_10;  alias, 1 drivers
v0x20a5250_0 .net "input11", 31 0, v0x20a7eb0_11;  alias, 1 drivers
v0x20a52f0_0 .net "input12", 31 0, v0x20a7eb0_12;  alias, 1 drivers
v0x20a5450_0 .net "input13", 31 0, v0x20a7eb0_13;  alias, 1 drivers
v0x20a5520_0 .net "input14", 31 0, v0x20a7eb0_14;  alias, 1 drivers
v0x20a55f0_0 .net "input15", 31 0, v0x20a7eb0_15;  alias, 1 drivers
v0x20a56c0_0 .net "input16", 31 0, v0x20a7eb0_16;  alias, 1 drivers
v0x20a5790_0 .net "input17", 31 0, v0x20a7eb0_17;  alias, 1 drivers
v0x20a5860_0 .net "input18", 31 0, v0x20a7eb0_18;  alias, 1 drivers
v0x20a5930_0 .net "input19", 31 0, v0x20a7eb0_19;  alias, 1 drivers
v0x20a5a00_0 .net "input2", 31 0, v0x20a7eb0_2;  alias, 1 drivers
v0x20a5bb0_0 .net "input20", 31 0, v0x20a7eb0_20;  alias, 1 drivers
v0x20a5c50_0 .net "input21", 31 0, v0x20a7eb0_21;  alias, 1 drivers
v0x20a5cf0_0 .net "input22", 31 0, v0x20a7eb0_22;  alias, 1 drivers
v0x20a5dc0_0 .net "input23", 31 0, v0x20a7eb0_23;  alias, 1 drivers
v0x20a5e90_0 .net "input24", 31 0, v0x20a7eb0_24;  alias, 1 drivers
v0x20a5f60_0 .net "input25", 31 0, v0x20a7eb0_25;  alias, 1 drivers
v0x20a6030_0 .net "input26", 31 0, v0x20a7eb0_26;  alias, 1 drivers
v0x20a6100_0 .net "input27", 31 0, v0x20a7eb0_27;  alias, 1 drivers
v0x20a61d0_0 .net "input28", 31 0, v0x20a7eb0_28;  alias, 1 drivers
v0x20a62a0_0 .net "input29", 31 0, v0x20a7eb0_29;  alias, 1 drivers
v0x20a6370_0 .net "input3", 31 0, v0x20a7eb0_3;  alias, 1 drivers
v0x20a6440_0 .net "input30", 31 0, v0x20a7eb0_30;  alias, 1 drivers
v0x20a6510_0 .net "input31", 31 0, v0x20a7eb0_31;  alias, 1 drivers
v0x20a65e0_0 .net "input4", 31 0, v0x20a7eb0_4;  alias, 1 drivers
v0x20a66b0_0 .net "input5", 31 0, v0x20a7eb0_5;  alias, 1 drivers
v0x20a6780_0 .net "input6", 31 0, v0x20a7eb0_6;  alias, 1 drivers
v0x20a5ad0_0 .net "input7", 31 0, v0x20a7eb0_7;  alias, 1 drivers
v0x20a6a30_0 .net "input8", 31 0, v0x20a7eb0_8;  alias, 1 drivers
v0x20a6b00_0 .net "input9", 31 0, v0x20a7eb0_9;  alias, 1 drivers
v0x20a6bd0 .array "mux", 0 31;
v0x20a6bd0_0 .net v0x20a6bd0 0, 31 0, L_0x20be0c0; 1 drivers
v0x20a6bd0_1 .net v0x20a6bd0 1, 31 0, L_0x20be130; 1 drivers
v0x20a6bd0_2 .net v0x20a6bd0 2, 31 0, L_0x20be230; 1 drivers
v0x20a6bd0_3 .net v0x20a6bd0 3, 31 0, L_0x20be330; 1 drivers
v0x20a6bd0_4 .net v0x20a6bd0 4, 31 0, L_0x20be430; 1 drivers
v0x20a6bd0_5 .net v0x20a6bd0 5, 31 0, L_0x20be530; 1 drivers
v0x20a6bd0_6 .net v0x20a6bd0 6, 31 0, L_0x20be630; 1 drivers
v0x20a6bd0_7 .net v0x20a6bd0 7, 31 0, L_0x20be730; 1 drivers
v0x20a6bd0_8 .net v0x20a6bd0 8, 31 0, L_0x20be830; 1 drivers
v0x20a6bd0_9 .net v0x20a6bd0 9, 31 0, L_0x20be930; 1 drivers
v0x20a6bd0_10 .net v0x20a6bd0 10, 31 0, L_0x20bea60; 1 drivers
v0x20a6bd0_11 .net v0x20a6bd0 11, 31 0, L_0x20beb90; 1 drivers
v0x20a6bd0_12 .net v0x20a6bd0 12, 31 0, L_0x20bed30; 1 drivers
v0x20a6bd0_13 .net v0x20a6bd0 13, 31 0, L_0x20bee60; 1 drivers
v0x20a6bd0_14 .net v0x20a6bd0 14, 31 0, L_0x20becc0; 1 drivers
v0x20a6bd0_15 .net v0x20a6bd0 15, 31 0, L_0x20bf050; 1 drivers
v0x20a6bd0_16 .net v0x20a6bd0 16, 31 0, L_0x20bf210; 1 drivers
v0x20a6bd0_17 .net v0x20a6bd0 17, 31 0, L_0x20bf340; 1 drivers
v0x20a6bd0_18 .net v0x20a6bd0 18, 31 0, L_0x20bf180; 1 drivers
v0x20a6bd0_19 .net v0x20a6bd0 19, 31 0, L_0x20bf5d0; 1 drivers
v0x20a6bd0_20 .net v0x20a6bd0 20, 31 0, L_0x20bf470; 1 drivers
v0x20a6bd0_21 .net v0x20a6bd0 21, 31 0, L_0x20bf840; 1 drivers
v0x20a6bd0_22 .net v0x20a6bd0 22, 31 0, L_0x20bf700; 1 drivers
v0x20a6bd0_23 .net v0x20a6bd0 23, 31 0, L_0x20bfac0; 1 drivers
v0x20a6bd0_24 .net v0x20a6bd0 24, 31 0, L_0x20bf970; 1 drivers
v0x20a6bd0_25 .net v0x20a6bd0 25, 31 0, L_0x20bfd50; 1 drivers
v0x20a6bd0_26 .net v0x20a6bd0 26, 31 0, L_0x20bfbf0; 1 drivers
v0x20a6bd0_27 .net v0x20a6bd0 27, 31 0, L_0x20bfff0; 1 drivers
v0x20a6bd0_28 .net v0x20a6bd0 28, 31 0, L_0x20bfe80; 1 drivers
v0x20a6bd0_29 .net v0x20a6bd0 29, 31 0, L_0x20c0270; 1 drivers
v0x20a6bd0_30 .net v0x20a6bd0 30, 31 0, L_0x20c00f0; 1 drivers
v0x20a6bd0_31 .net v0x20a6bd0 31, 31 0, L_0x20c0500; 1 drivers
v0x20a7180_0 .net "out", 31 0, L_0x20c07b0;  alias, 1 drivers
L_0x20c0370 .array/port v0x20a6bd0, L_0x20c0710;
L_0x20c0710 .concat [ 5 2 0 0], v0x1ff8b30_0, L_0x7f4bb5d67138;
S_0x1fce890 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f4bb5dc7b08 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x20aadd0_0 .net "address", 4 0, o0x7f4bb5dc7b08;  0 drivers
o0x7f4bb5dc7b38 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x20aae70_0 .net "inputs", 31 0, o0x7f4bb5dc7b38;  0 drivers
v0x20aaf50_0 .net "out", 0 0, L_0x20e8c00;  1 drivers
L_0x20e8c00 .part/v o0x7f4bb5dc7b38, o0x7f4bb5dc7b08, 1;
S_0x1fca200 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f4bb5dc7c28 .functor BUFZ 1, C4<z>; HiZ drive
v0x20ab090_0 .net "clk", 0 0, o0x7f4bb5dc7c28;  0 drivers
o0x7f4bb5dc7c58 .functor BUFZ 1, C4<z>; HiZ drive
v0x20ab170_0 .net "d", 0 0, o0x7f4bb5dc7c58;  0 drivers
v0x20ab230_0 .var "q", 0 0;
o0x7f4bb5dc7cb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x20ab2d0_0 .net "wrenable", 0 0, o0x7f4bb5dc7cb8;  0 drivers
E_0x20a5b70 .event posedge, v0x20ab090_0;
S_0x1fc5b70 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f4bb5dc7da8 .functor BUFZ 1, C4<z>; HiZ drive
v0x20ab490_0 .net "clk", 0 0, o0x7f4bb5dc7da8;  0 drivers
o0x7f4bb5dc7dd8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x20ab570_0 .net "d", 31 0, o0x7f4bb5dc7dd8;  0 drivers
v0x20ab650_0 .var "q", 31 0;
o0x7f4bb5dc7e38 .functor BUFZ 1, C4<z>; HiZ drive
v0x20ab710_0 .net "wrenable", 0 0, o0x7f4bb5dc7e38;  0 drivers
E_0x20ab410 .event posedge, v0x20ab490_0;
S_0x202ffb0 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f4bb5dc7f28 .functor BUFZ 1, C4<z>; HiZ drive
v0x20ab8d0_0 .net "clk", 0 0, o0x7f4bb5dc7f28;  0 drivers
o0x7f4bb5dc7f58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x20ab9b0_0 .net "d", 31 0, o0x7f4bb5dc7f58;  0 drivers
v0x20aba90_0 .var "q", 31 0;
o0x7f4bb5dc7fb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x20abb50_0 .net "wrenable", 0 0, o0x7f4bb5dc7fb8;  0 drivers
E_0x20ab850 .event posedge, v0x20ab8d0_0;
    .scope S_0x2098d30;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x2099110_0, 0;
    %end;
    .thread T_0;
    .scope S_0x2098d30;
T_1 ;
    %wait E_0x2098fa0;
    %load/vec4 v0x20991d0_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x20995e0_0;
    %assign/vec4 v0x2099500_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x20991d0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x2099000_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x2099500_0, 4, 5;
    %load/vec4 v0x20995e0_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x2099500_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x2099500_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x20991d0_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x20993c0_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x2099780_0, 0, 32;
    %load/vec4 v0x2099780_0;
    %load/vec4 v0x20995e0_0;
    %add;
    %store/vec4 v0x2099500_0, 0, 32;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x20996c0_0;
    %assign/vec4 v0x2099500_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0x2099110_0;
    %addi 4, 0, 32;
    %assign/vec4 v0x20995e0_0, 0;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x2098d30;
T_2 ;
    %wait E_0x2097a80;
    %load/vec4 v0x2099500_0;
    %store/vec4 v0x2099110_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x20265b0;
T_3 ;
    %wait E_0x1fa1a60;
    %load/vec4 v0x2020740_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1fb6d60_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1fb7120_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x2020740_0;
    %pushi/vec4 4, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x2020380_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.2, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1fb7120_0, 0, 2;
    %vpi_call 5 17 "$display", "I AM GOING TO BRANCH ON EQUAL: Flag = %b", v0x2020380_0 {0 0 0};
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x2020740_0;
    %pushi/vec4 5, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x2020380_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1fb7120_0, 0, 2;
    %vpi_call 5 18 "$display", "I AM GOING TO BRANCH ON NOT EQUAL: Flag = %b", v0x2020380_0 {0 0 0};
    %jmp T_3.5;
T_3.4 ;
    %load/vec4 v0x2020740_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x2020740_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.6, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1fb7120_0, 0, 2;
    %jmp T_3.7;
T_3.6 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1fb7120_0, 0, 2;
T_3.7 ;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %vpi_call 5 21 "$display", "grrr,opcode: %b, zeroflag: %b, controlSig: %b", v0x2020740_0, v0x2020380_0, v0x1fb7120_0 {0 0 0};
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x2097850;
T_4 ;
    %wait E_0x2097a80;
    %load/vec4 v0x2098160_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x2097c00_0;
    %ix/getv 3, v0x2097b00_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x2098450, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x2097850;
T_5 ;
    %vpi_call 10 20 "$readmemh", "hanoi.text", v0x2098450 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x20106f0;
T_6 ;
    %wait E_0x1fb7240;
    %load/vec4 v0x1fb2790_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2017860_0, 4, 16;
    %jmp T_6.1;
T_6.0 ;
    %pushi/vec4 65535, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2017860_0, 4, 16;
T_6.1 ;
    %load/vec4 v0x1fb2790_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x20131b0_0, 0, 6;
    %load/vec4 v0x1fb2790_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x20177a0_0, 0, 6;
    %load/vec4 v0x1fb2790_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x1ff8ef0_0, 0, 5;
    %load/vec4 v0x1fb2790_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x1ff8b30_0, 0, 5;
    %load/vec4 v0x1fb2790_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x1ffd5a0_0, 0, 5;
    %load/vec4 v0x1fb2790_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x1fb2830_0, 0, 6;
    %load/vec4 v0x1fb2790_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2017860_0, 4, 16;
    %load/vec4 v0x1fb2790_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x201bd90_0, 0, 26;
    %load/vec4 v0x20131b0_0;
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
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.5 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.6 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.8 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.9 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x20177a0_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x20177a0_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x20177a0_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
    %jmp T_6.17;
T_6.16 ;
    %load/vec4 v0x20177a0_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.18, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1ffd120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1fb2bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x20135b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2017bd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1ffd1c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x201c1f0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1ffd4e0_0, 0, 2;
T_6.18 ;
T_6.17 ;
T_6.15 ;
T_6.13 ;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x209bdf0;
T_7 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x209c0a0;
T_8 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x209c330;
T_9 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x209c5e0;
T_10 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x209c8e0;
T_11 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x209cb90;
T_12 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x209ce40;
T_13 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x209d0f0;
T_14 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x209d3e0;
T_15 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x209d690;
T_16 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x209d940;
T_17 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x209dbf0;
T_18 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x209dea0;
T_19 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x209e150;
T_20 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x209e400;
T_21 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x209e6b0;
T_22 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x209ea00;
T_23 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x209ec90;
T_24 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x209ef40;
T_25 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x209f1f0;
T_26 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x209f4a0;
T_27 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x209f750;
T_28 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x209fa00;
T_29 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x209fcb0;
T_30 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x209ff60;
T_31 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x20a0210;
T_32 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x20a04c0;
T_33 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x20a0770;
T_34 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x20a0a20;
T_35 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x20a0cd0;
T_36 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x20a0f80;
T_37 ;
    %wait E_0x2097a80;
    %load/vec4 v0x20a7d60_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x20a7bb0_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x20a7eb0, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x1fd1620;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x20aabf0_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x1fd1620;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x20aabf0_0;
    %nor/r;
    %store/vec4 v0x20aabf0_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x1fd1620;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x20aac90_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x20aad30_0 {0 0 0};
    %delay 200000, 0;
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x1fca200;
T_41 ;
    %wait E_0x20a5b70;
    %load/vec4 v0x20ab2d0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x20ab170_0;
    %assign/vec4 v0x20ab230_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x1fc5b70;
T_42 ;
    %wait E_0x20ab410;
    %load/vec4 v0x20ab710_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x20ab570_0;
    %assign/vec4 v0x20ab650_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x202ffb0;
T_43 ;
    %wait E_0x20ab850;
    %load/vec4 v0x20abb50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x20aba90_0, 0;
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
