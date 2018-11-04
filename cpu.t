#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1f1de90 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7f90268f4018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7f90268f4048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1ffb8b0 .functor XOR 1, o0x7f90268f4018, o0x7f90268f4048, C4<0>, C4<0>;
o0x7f90268f4078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1ffb940 .functor XOR 1, L_0x1ffb8b0, o0x7f90268f4078, C4<0>, C4<0>;
L_0x1ffb9b0 .functor AND 1, L_0x1ffb8b0, o0x7f90268f4078, C4<1>, C4<1>;
L_0x1ffba70 .functor AND 1, o0x7f90268f4018, o0x7f90268f4048, C4<1>, C4<1>;
L_0x1ffbb80 .functor OR 1, L_0x1ffb9b0, L_0x1ffba70, C4<0>, C4<0>;
L_0x1ffbc90 .functor XOR 1, L_0x1ffbb80, o0x7f90268f4078, C4<0>, C4<0>;
v0x1ec5a80_0 .net "A", 0 0, o0x7f90268f4018;  0 drivers
v0x1f62760_0 .net "B", 0 0, o0x7f90268f4048;  0 drivers
v0x1f62820_0 .net "carryin", 0 0, o0x7f90268f4078;  0 drivers
v0x1f51470_0 .net "carryout", 0 0, L_0x1ffbb80;  1 drivers
v0x1f51530_0 .net "out1", 0 0, L_0x1ffb8b0;  1 drivers
v0x1f51180_0 .net "out2", 0 0, L_0x1ffb9b0;  1 drivers
v0x1f50d50_0 .net "out3", 0 0, L_0x1ffba70;  1 drivers
v0x1f50e10_0 .net "overflow", 0 0, L_0x1ffbc90;  1 drivers
v0x1f4cb20_0 .net "sum", 0 0, L_0x1ffb940;  1 drivers
S_0x1f19800 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x1ffa7d0_0 .var "clk", 0 0;
v0x1ffa870_0 .net "dataMem", 31 0, L_0x1ffbe30;  1 drivers
v0x1ffa930_0 .net "regRT", 31 0, L_0x200ff00;  1 drivers
S_0x1f75b00 .scope module, "cpu" "singlecycleCPU" 3 9, 4 21 0, S_0x1f19800;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x1ff8990_0 .net "ALU_op", 2 0, v0x1f2dc50_0;  1 drivers
v0x1ff8a70_0 .net "DM_WE", 0 0, v0x1f29960_0;  1 drivers
v0x1ff8b30_0 .net "DM_add", 0 0, v0x1f29a00_0;  1 drivers
v0x1ff8bd0_0 .net "JumpAddress", 25 0, v0x1f295a0_0;  1 drivers
v0x1ff8cc0_0 .net "PC", 31 0, v0x1fe90e0_0;  1 drivers
v0x1ff8db0_0 .net "S", 1 0, v0x1f48170_0;  1 drivers
v0x1ff8e50_0 .net "alu2", 31 0, L_0x20381e0;  1 drivers
v0x1ff8f40_0 .net "alu_out", 31 0, L_0x2034840;  1 drivers
v0x1ff9000_0 .net "clk", 0 0, v0x1ffa7d0_0;  1 drivers
v0x1ff91c0_0 .net "co_flag", 0 0, L_0x1fcd320;  1 drivers
v0x1ff92f0_0 .net "dataMem", 31 0, L_0x1ffbe30;  alias, 1 drivers
v0x1ff93b0_0 .net "data_mem_address", 31 0, L_0x2038280;  1 drivers
v0x1ff9470_0 .net "dest_add", 1 0, v0x1f253e0_0;  1 drivers
v0x1ff9530_0 .net "funct", 5 0, v0x1f24fb0_0;  1 drivers
v0x1ff9640_0 .net "immediate", 31 0, v0x1f25070_0;  1 drivers
v0x1ff9790_0 .net "instruction", 31 0, L_0x1ffc060;  1 drivers
v0x1ff9850_0 .net "op_imm", 0 0, v0x1f1acd0_0;  1 drivers
v0x1ff9a00_0 .net "opcode", 5 0, v0x1f16600_0;  1 drivers
v0x1ff9af0_0 .net "ov_flag", 0 0, L_0x20343f0;  1 drivers
v0x1ff9c20_0 .net "pc", 1 0, v0x1f11f60_0;  1 drivers
v0x1ff9cc0_0 .net "rd", 4 0, v0x1f12020_0;  1 drivers
v0x1ff9dd0_0 .net "regRS", 31 0, L_0x200d710;  1 drivers
v0x1ff9f20_0 .net "regRT", 31 0, L_0x200ff00;  alias, 1 drivers
v0x1ffa070_0 .net "reg_WE", 0 0, v0x1f7eeb0_0;  1 drivers
v0x1ffa1a0_0 .net "reg_in", 1 0, v0x1f7ef50_0;  1 drivers
v0x1ffa260_0 .net "reg_in_mux_out", 31 0, L_0x2038050;  1 drivers
v0x1ffa320_0 .net "reg_select_mux_out", 4 0, L_0x2037a20;  1 drivers
v0x1ffa3e0_0 .net "rs", 4 0, v0x1f7b620_0;  1 drivers
v0x1ffa4a0_0 .net "rt", 4 0, v0x1f76f90_0;  1 drivers
v0x1ffa5f0_0 .net "shamt", 5 0, v0x1f1f3e0_0;  1 drivers
v0x1ffa6b0_0 .net "zero_flag", 0 0, L_0x2033840;  1 drivers
S_0x1f5fc70 .scope module, "controlPC" "pcController" 4 54, 5 8 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x1f48170_0 .var "controlSig", 1 0;
v0x1f43f40_0 .net "function1", 5 0, v0x1f24fb0_0;  alias, 1 drivers
v0x1f43b80_0 .net "opcode", 5 0, v0x1f16600_0;  alias, 1 drivers
v0x1f2df50_0 .net "zeroFlag", 0 0, L_0x2033840;  alias, 1 drivers
E_0x1ef0150 .event edge, v0x1f43b80_0;
S_0x1f5b5e0 .scope module, "decode" "instructionDecoder" 4 58, 6 20 0, S_0x1f75b00;
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
v0x1f2dc50_0 .var "ALU_op", 2 0;
v0x1f29960_0 .var "DM_WE", 0 0;
v0x1f29a00_0 .var "DM_add", 0 0;
v0x1f295a0_0 .var "address", 25 0;
v0x1f29660_0 .net "clk", 0 0, v0x1ffa7d0_0;  alias, 1 drivers
v0x1f253e0_0 .var "dest_add", 1 0;
v0x1f24fb0_0 .var "funct", 5 0;
v0x1f25070_0 .var "immediate", 31 0;
v0x1f1f340_0 .net "instruction", 31 0, L_0x1ffc060;  alias, 1 drivers
v0x1f1acd0_0 .var "op_imm", 0 0;
v0x1f16600_0 .var "opcode", 5 0;
v0x1f11f60_0 .var "pc", 1 0;
v0x1f12020_0 .var "rd", 4 0;
v0x1f7eeb0_0 .var "reg_WE", 0 0;
v0x1f7ef50_0 .var "reg_in", 1 0;
v0x1f7b620_0 .var "rs", 4 0;
v0x1f76f90_0 .var "rt", 4 0;
v0x1f1f3e0_0 .var "shamt", 5 0;
E_0x1f48290 .event edge, v0x1f1f340_0;
S_0x1f56f50 .scope module, "dm_we_mux" "mux2" 4 69, 7 1 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x1f5cb20_0 .net "input0", 31 0, v0x1f25070_0;  alias, 1 drivers
v0x1f58410_0 .net "input1", 31 0, L_0x2034840;  alias, 1 drivers
v0x1f53d40_0 .net "out", 31 0, L_0x2038280;  alias, 1 drivers
v0x1f00780_0 .net "select0", 0 0, v0x1f29a00_0;  alias, 1 drivers
L_0x2038280 .functor MUXZ 32, L_0x2034840, v0x1f25070_0, v0x1f29a00_0, C4<>;
S_0x1f528b0 .scope module, "lulu" "ALU" 4 64, 8 105 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x2033840/0/0 .functor OR 1, L_0x2022ea0, L_0x2022f40, L_0x2034b20, L_0x2034c10;
L_0x2033840/0/4 .functor OR 1, L_0x2035580, L_0x2035620, L_0x2035240, L_0x2035330;
L_0x2033840/0/8 .functor OR 1, L_0x2035420, L_0x2035a20, L_0x20356c0, L_0x20357b0;
L_0x2033840/0/12 .functor OR 1, L_0x2034d00, L_0x20358a0, L_0x2035ac0, L_0x2035bb0;
L_0x2033840/0/16 .functor OR 1, L_0x2035ca0, L_0x2035d90, L_0x20363f0, L_0x2036490;
L_0x2033840/0/20 .functor OR 1, L_0x2036040, L_0x2036130, L_0x2036220, L_0x2036310;
L_0x2033840/0/24 .functor OR 1, L_0x2036580, L_0x2036670, L_0x2036760, L_0x2036850;
L_0x2033840/0/28 .functor OR 1, L_0x2035e30, L_0x2035f20, L_0x20369a0, L_0x2036a90;
L_0x2033840/0/32 .functor OR 1, L_0x2036b80, L_0x2036c70, C4<0>, C4<0>;
L_0x2033840/1/0 .functor OR 1, L_0x2033840/0/0, L_0x2033840/0/4, L_0x2033840/0/8, L_0x2033840/0/12;
L_0x2033840/1/4 .functor OR 1, L_0x2033840/0/16, L_0x2033840/0/20, L_0x2033840/0/24, L_0x2033840/0/28;
L_0x2033840/1/8 .functor OR 1, L_0x2033840/0/32, C4<0>, C4<0>, C4<0>;
L_0x2033840 .functor NOR 1, L_0x2033840/1/0, L_0x2033840/1/4, L_0x2033840/1/8, C4<0>;
v0x1fe52a0_0 .net "A", 31 0, L_0x200d710;  alias, 1 drivers
v0x1fe53a0_0 .net "B", 31 0, L_0x20381e0;  alias, 1 drivers
v0x1fe5480_0 .net *"_s322", 0 0, L_0x2022ea0;  1 drivers
v0x1fe5570_0 .net *"_s324", 0 0, L_0x2022f40;  1 drivers
v0x1fe5650_0 .net *"_s326", 0 0, L_0x2034b20;  1 drivers
v0x1fe5780_0 .net *"_s328", 0 0, L_0x2034c10;  1 drivers
v0x1fe5860_0 .net *"_s330", 0 0, L_0x2035580;  1 drivers
v0x1fe5940_0 .net *"_s332", 0 0, L_0x2035620;  1 drivers
v0x1fe5a20_0 .net *"_s334", 0 0, L_0x2035240;  1 drivers
v0x1fe5b90_0 .net *"_s336", 0 0, L_0x2035330;  1 drivers
v0x1fe5c70_0 .net *"_s338", 0 0, L_0x2035420;  1 drivers
v0x1fe5d50_0 .net *"_s340", 0 0, L_0x2035a20;  1 drivers
v0x1fe5e30_0 .net *"_s342", 0 0, L_0x20356c0;  1 drivers
v0x1fe5f10_0 .net *"_s344", 0 0, L_0x20357b0;  1 drivers
v0x1fe5ff0_0 .net *"_s346", 0 0, L_0x2034d00;  1 drivers
v0x1fe60d0_0 .net *"_s348", 0 0, L_0x20358a0;  1 drivers
v0x1fe61b0_0 .net *"_s350", 0 0, L_0x2035ac0;  1 drivers
v0x1fe6360_0 .net *"_s352", 0 0, L_0x2035bb0;  1 drivers
v0x1fe6400_0 .net *"_s354", 0 0, L_0x2035ca0;  1 drivers
v0x1fe64e0_0 .net *"_s356", 0 0, L_0x2035d90;  1 drivers
v0x1fe65c0_0 .net *"_s358", 0 0, L_0x20363f0;  1 drivers
v0x1fe66a0_0 .net *"_s360", 0 0, L_0x2036490;  1 drivers
v0x1fe6780_0 .net *"_s362", 0 0, L_0x2036040;  1 drivers
v0x1fe6860_0 .net *"_s364", 0 0, L_0x2036130;  1 drivers
v0x1fe6940_0 .net *"_s366", 0 0, L_0x2036220;  1 drivers
v0x1fe6a20_0 .net *"_s368", 0 0, L_0x2036310;  1 drivers
v0x1fe6b00_0 .net *"_s370", 0 0, L_0x2036580;  1 drivers
v0x1fe6be0_0 .net *"_s372", 0 0, L_0x2036670;  1 drivers
v0x1fe6cc0_0 .net *"_s374", 0 0, L_0x2036760;  1 drivers
v0x1fe6da0_0 .net *"_s376", 0 0, L_0x2036850;  1 drivers
v0x1fe6e80_0 .net *"_s378", 0 0, L_0x2035e30;  1 drivers
v0x1fe6f60_0 .net *"_s380", 0 0, L_0x2035f20;  1 drivers
v0x1fe7040_0 .net *"_s382", 0 0, L_0x20369a0;  1 drivers
v0x1fe6290_0 .net *"_s384", 0 0, L_0x2036a90;  1 drivers
v0x1fe7310_0 .net *"_s386", 0 0, L_0x2036b80;  1 drivers
v0x1fe73f0_0 .net *"_s388", 0 0, L_0x2036c70;  1 drivers
v0x1fe74d0_0 .net "carryout", 0 0, L_0x1fcd320;  alias, 1 drivers
v0x1fe7570_0 .net "command", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fe7630_0 .net "cout", 30 0, L_0x20334b0;  1 drivers
v0x1fe7710_0 .net "overflow", 0 0, L_0x20343f0;  alias, 1 drivers
v0x1fe77b0_0 .net "result", 31 0, L_0x2034840;  alias, 1 drivers
v0x1fe7870_0 .net "zero", 0 0, L_0x2033840;  alias, 1 drivers
L_0x20109c0 .part L_0x200d710, 0, 1;
L_0x2010a60 .part L_0x20381e0, 0, 1;
L_0x2010b00 .part v0x1f2dc50_0, 0, 1;
L_0x20118d0 .part L_0x200d710, 1, 1;
L_0x2011970 .part L_0x20381e0, 1, 1;
L_0x2011aa0 .part L_0x20334b0, 0, 1;
L_0x2012ae0 .part L_0x200d710, 2, 1;
L_0x2012c90 .part L_0x20381e0, 2, 1;
L_0x2012d30 .part L_0x20334b0, 1, 1;
L_0x2013ea0 .part L_0x200d710, 3, 1;
L_0x2013f40 .part L_0x20381e0, 3, 1;
L_0x2013fe0 .part L_0x20334b0, 2, 1;
L_0x2015080 .part L_0x200d710, 4, 1;
L_0x2015120 .part L_0x20381e0, 4, 1;
L_0x20151c0 .part L_0x20334b0, 3, 1;
L_0x20161c0 .part L_0x200d710, 5, 1;
L_0x20162f0 .part L_0x20381e0, 5, 1;
L_0x20164a0 .part L_0x20334b0, 4, 1;
L_0x2017410 .part L_0x200d710, 6, 1;
L_0x20174b0 .part L_0x20381e0, 6, 1;
L_0x2016540 .part L_0x20334b0, 5, 1;
L_0x2018530 .part L_0x200d710, 7, 1;
L_0x2017550 .part L_0x20381e0, 7, 1;
L_0x2018690 .part L_0x20334b0, 6, 1;
L_0x2019670 .part L_0x200d710, 8, 1;
L_0x2019710 .part L_0x20381e0, 8, 1;
L_0x20187c0 .part L_0x20334b0, 7, 1;
L_0x201a920 .part L_0x200d710, 9, 1;
L_0x20197b0 .part L_0x20381e0, 9, 1;
L_0x201aab0 .part L_0x20334b0, 8, 1;
L_0x201bba0 .part L_0x200d710, 10, 1;
L_0x2012b80 .part L_0x20381e0, 10, 1;
L_0x201abe0 .part L_0x20334b0, 9, 1;
L_0x201cfd0 .part L_0x200d710, 11, 1;
L_0x201be50 .part L_0x20381e0, 11, 1;
L_0x201d190 .part L_0x20334b0, 10, 1;
L_0x201e1b0 .part L_0x200d710, 12, 1;
L_0x201e250 .part L_0x20381e0, 12, 1;
L_0x201d230 .part L_0x20334b0, 11, 1;
L_0x201f3d0 .part L_0x200d710, 13, 1;
L_0x201e2f0 .part L_0x20381e0, 13, 1;
L_0x201e390 .part L_0x20334b0, 12, 1;
L_0x2020730 .part L_0x200d710, 14, 1;
L_0x20207d0 .part L_0x20381e0, 14, 1;
L_0x201f7d0 .part L_0x20334b0, 13, 1;
L_0x2021980 .part L_0x200d710, 15, 1;
L_0x2020870 .part L_0x20381e0, 15, 1;
L_0x2020910 .part L_0x20334b0, 14, 1;
L_0x2022bc0 .part L_0x200d710, 16, 1;
L_0x2022c60 .part L_0x20381e0, 16, 1;
L_0x2021c30 .part L_0x20334b0, 15, 1;
L_0x2023ee0 .part L_0x200d710, 17, 1;
L_0x2022d00 .part L_0x20381e0, 17, 1;
L_0x2022da0 .part L_0x20334b0, 16, 1;
L_0x2025120 .part L_0x200d710, 18, 1;
L_0x20251c0 .part L_0x20381e0, 18, 1;
L_0x20241c0 .part L_0x20334b0, 17, 1;
L_0x2026340 .part L_0x200d710, 19, 1;
L_0x2025260 .part L_0x20381e0, 19, 1;
L_0x2025300 .part L_0x20334b0, 18, 1;
L_0x2027570 .part L_0x200d710, 20, 1;
L_0x2027610 .part L_0x20381e0, 20, 1;
L_0x20263e0 .part L_0x20334b0, 19, 1;
L_0x20287a0 .part L_0x200d710, 21, 1;
L_0x20276b0 .part L_0x20381e0, 21, 1;
L_0x2027750 .part L_0x20334b0, 20, 1;
L_0x20299e0 .part L_0x200d710, 22, 1;
L_0x2029a80 .part L_0x20381e0, 22, 1;
L_0x2028840 .part L_0x20334b0, 21, 1;
L_0x202ac10 .part L_0x200d710, 23, 1;
L_0x2029b20 .part L_0x20381e0, 23, 1;
L_0x2029bc0 .part L_0x20334b0, 22, 1;
L_0x202be40 .part L_0x200d710, 24, 1;
L_0x202bee0 .part L_0x20381e0, 24, 1;
L_0x202acb0 .part L_0x20334b0, 23, 1;
L_0x202d070 .part L_0x200d710, 25, 1;
L_0x202bf80 .part L_0x20381e0, 25, 1;
L_0x202c020 .part L_0x20334b0, 24, 1;
L_0x202e2a0 .part L_0x200d710, 26, 1;
L_0x201bc40 .part L_0x20381e0, 26, 1;
L_0x201bce0 .part L_0x20334b0, 25, 1;
L_0x201cec0 .part L_0x200d710, 27, 1;
L_0x202e750 .part L_0x20381e0, 27, 1;
L_0x202e7f0 .part L_0x20334b0, 26, 1;
L_0x2030790 .part L_0x200d710, 28, 1;
L_0x2030830 .part L_0x20381e0, 28, 1;
L_0x202f700 .part L_0x20334b0, 27, 1;
L_0x20318b0 .part L_0x200d710, 29, 1;
L_0x20308d0 .part L_0x20381e0, 29, 1;
L_0x201f5c0 .part L_0x20334b0, 28, 1;
LS_0x20334b0_0_0 .concat8 [ 1 1 1 1], L_0x1eea700, L_0x1f2d7a0, L_0x1f9e150, L_0x1fc5f70;
LS_0x20334b0_0_4 .concat8 [ 1 1 1 1], L_0x1fd1740, L_0x1fd5110, L_0x1fd8ae0, L_0x1fdc4b0;
LS_0x20334b0_0_8 .concat8 [ 1 1 1 1], L_0x1fdfe80, L_0x1fe3850, L_0x1ee0580, L_0x1efa850;
LS_0x20334b0_0_12 .concat8 [ 1 1 1 1], L_0x1f0b100, L_0x1ed6cb0, L_0x1f78ce0, L_0x1f14340;
LS_0x20334b0_0_16 .concat8 [ 1 1 1 1], L_0x1db64a0, L_0x1d20cf0, L_0x1f96e30, L_0x1f9a7c0;
LS_0x20334b0_0_20 .concat8 [ 1 1 1 1], L_0x1fa1b20, L_0x1fa54f0, L_0x1fa8ec0, L_0x1facac0;
LS_0x20334b0_0_24 .concat8 [ 1 1 1 1], L_0x1fb0490, L_0x1fb3e60, L_0x1fb7830, L_0x1fbb200;
LS_0x20334b0_0_28 .concat8 [ 1 1 1 0], L_0x1fbebd0, L_0x1fc25a0, L_0x1fc9940;
LS_0x20334b0_1_0 .concat8 [ 4 4 4 4], LS_0x20334b0_0_0, LS_0x20334b0_0_4, LS_0x20334b0_0_8, LS_0x20334b0_0_12;
LS_0x20334b0_1_4 .concat8 [ 4 4 4 3], LS_0x20334b0_0_16, LS_0x20334b0_0_20, LS_0x20334b0_0_24, LS_0x20334b0_0_28;
L_0x20334b0 .concat8 [ 16 15 0 0], LS_0x20334b0_1_0, LS_0x20334b0_1_4;
L_0x2033660 .part L_0x200d710, 30, 1;
L_0x2032030 .part L_0x20381e0, 30, 1;
L_0x20320d0 .part L_0x20334b0, 29, 1;
LS_0x2034840_0_0 .concat8 [ 1 1 1 1], L_0x20106b0, L_0x2011430, L_0x20124b0, L_0x20137e0;
LS_0x2034840_0_4 .concat8 [ 1 1 1 1], L_0x2014a50, L_0x2015c30, L_0x2016e40, L_0x2017f60;
LS_0x2034840_0_8 .concat8 [ 1 1 1 1], L_0x20190a0, L_0x201a2f0, L_0x201b570, L_0x201c890;
LS_0x2034840_0_12 .concat8 [ 1 1 1 1], L_0x201db80, L_0x201eda0, L_0x2020100, L_0x2021350;
LS_0x2034840_0_16 .concat8 [ 1 1 1 1], L_0x2022590, L_0x20238b0, L_0x2024af0, L_0x2025d10;
LS_0x2034840_0_20 .concat8 [ 1 1 1 1], L_0x2026f40, L_0x2028170, L_0x20293b0, L_0x202a5e0;
LS_0x2034840_0_24 .concat8 [ 1 1 1 1], L_0x202b810, L_0x202ca40, L_0x202dc70, L_0x202ef20;
LS_0x2034840_0_28 .concat8 [ 1 1 1 1], L_0x20301c0, L_0x20312e0, L_0x1fe4a80, L_0x20342b0;
LS_0x2034840_1_0 .concat8 [ 4 4 4 4], LS_0x2034840_0_0, LS_0x2034840_0_4, LS_0x2034840_0_8, LS_0x2034840_0_12;
LS_0x2034840_1_4 .concat8 [ 4 4 4 4], LS_0x2034840_0_16, LS_0x2034840_0_20, LS_0x2034840_0_24, LS_0x2034840_0_28;
L_0x2034840 .concat8 [ 16 16 0 0], LS_0x2034840_1_0, LS_0x2034840_1_4;
L_0x2034a80 .part L_0x200d710, 31, 1;
L_0x2033700 .part L_0x20381e0, 31, 1;
L_0x20337a0 .part L_0x20334b0, 30, 1;
L_0x2022ea0 .part L_0x2034840, 0, 1;
L_0x2022f40 .part L_0x2034840, 1, 1;
L_0x2034b20 .part L_0x2034840, 2, 1;
L_0x2034c10 .part L_0x2034840, 3, 1;
L_0x2035580 .part L_0x2034840, 4, 1;
L_0x2035620 .part L_0x2034840, 5, 1;
L_0x2035240 .part L_0x2034840, 6, 1;
L_0x2035330 .part L_0x2034840, 7, 1;
L_0x2035420 .part L_0x2034840, 8, 1;
L_0x2035a20 .part L_0x2034840, 9, 1;
L_0x20356c0 .part L_0x2034840, 10, 1;
L_0x20357b0 .part L_0x2034840, 11, 1;
L_0x2034d00 .part L_0x2034840, 12, 1;
L_0x20358a0 .part L_0x2034840, 13, 1;
L_0x2035ac0 .part L_0x2034840, 14, 1;
L_0x2035bb0 .part L_0x2034840, 15, 1;
L_0x2035ca0 .part L_0x2034840, 16, 1;
L_0x2035d90 .part L_0x2034840, 17, 1;
L_0x20363f0 .part L_0x2034840, 18, 1;
L_0x2036490 .part L_0x2034840, 19, 1;
L_0x2036040 .part L_0x2034840, 20, 1;
L_0x2036130 .part L_0x2034840, 21, 1;
L_0x2036220 .part L_0x2034840, 22, 1;
L_0x2036310 .part L_0x2034840, 23, 1;
L_0x2036580 .part L_0x2034840, 24, 1;
L_0x2036670 .part L_0x2034840, 25, 1;
L_0x2036760 .part L_0x2034840, 26, 1;
L_0x2036850 .part L_0x2034840, 27, 1;
L_0x2035e30 .part L_0x2034840, 28, 1;
L_0x2035f20 .part L_0x2034840, 29, 1;
L_0x20369a0 .part L_0x2034840, 28, 1;
L_0x2036a90 .part L_0x2034840, 29, 1;
L_0x2036b80 .part L_0x2034840, 30, 1;
L_0x2036c70 .part L_0x2034840, 31, 1;
S_0x1eff2f0 .scope module, "alu0" "ALU_1bit" 8 118, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2010770 .functor BUFZ 1, L_0x2010180, C4<0>, C4<0>, C4<0>;
L_0x2010800 .functor BUFZ 1, L_0x2010180, C4<0>, C4<0>, C4<0>;
v0x1ee46c0_0 .net "A", 0 0, L_0x20109c0;  1 drivers
v0x1ee4760_0 .net "B", 0 0, L_0x2010a60;  1 drivers
v0x1ee8a20_0 .net "I", 7 0, L_0x2010920;  1 drivers
v0x1ee8af0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1ee85a0_0 .net *"_s15", 0 0, L_0x2010770;  1 drivers
v0x1ee8080_0 .net *"_s19", 0 0, L_0x2010800;  1 drivers
L_0x7f90268ab180 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1ee8140_0 .net/2s *"_s23", 0 0, L_0x7f90268ab180;  1 drivers
v0x1ee7bf0_0 .net "addORsub", 0 0, L_0x2010180;  1 drivers
v0x1ee76e0_0 .net "carryin", 0 0, L_0x2010b00;  1 drivers
v0x1ee7780_0 .net "carryout", 0 0, L_0x1eea700;  1 drivers
v0x1ee7210_0 .net "modB", 0 0, L_0x200ff70;  1 drivers
v0x1ee72b0_0 .net "out", 0 0, L_0x20106b0;  1 drivers
L_0x200ffe0 .part v0x1f2dc50_0, 0, 1;
LS_0x2010920_0_0 .concat8 [ 1 1 1 1], L_0x2010770, L_0x2010800, L_0x20103e0, L_0x7f90268ab180;
LS_0x2010920_0_4 .concat8 [ 1 1 1 1], L_0x1ee9e20, L_0x2010560, L_0x20105d0, L_0x2010640;
L_0x2010920 .concat8 [ 4 4 0 0], LS_0x2010920_0_0, LS_0x2010920_0_4;
S_0x1f410b0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2010080 .functor XOR 1, L_0x20109c0, L_0x200ff70, C4<0>, C4<0>;
L_0x2010180 .functor XOR 1, L_0x2010080, L_0x2010b00, C4<0>, C4<0>;
L_0x20101f0 .functor AND 1, L_0x2010080, L_0x2010b00, C4<1>, C4<1>;
L_0x2010260 .functor AND 1, L_0x20109c0, L_0x200ff70, C4<1>, C4<1>;
L_0x1eea700 .functor OR 1, L_0x20101f0, L_0x2010260, C4<0>, C4<0>;
v0x1f35210_0 .net "A", 0 0, L_0x20109c0;  alias, 1 drivers
v0x1efc0e0_0 .net "B", 0 0, L_0x200ff70;  alias, 1 drivers
v0x1efc1a0_0 .net "carryin", 0 0, L_0x2010b00;  alias, 1 drivers
v0x1ef5620_0 .net "carryout", 0 0, L_0x1eea700;  alias, 1 drivers
v0x1ef56c0_0 .net "out1", 0 0, L_0x2010080;  1 drivers
v0x1ef7960_0 .net "out2", 0 0, L_0x20101f0;  1 drivers
v0x1ef7a00_0 .net "out3", 0 0, L_0x2010260;  1 drivers
v0x1d79570_0 .net "sum", 0 0, L_0x2010180;  alias, 1 drivers
S_0x1f3ca20 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1ee9e20 .functor AND 1, L_0x20109c0, L_0x2010a60, C4<1>, C4<1>;
v0x1eeeaf0_0 .net "A", 0 0, L_0x20109c0;  alias, 1 drivers
v0x1eed740_0 .net "B", 0 0, L_0x2010a60;  alias, 1 drivers
v0x1eed7e0_0 .net "out", 0 0, L_0x1ee9e20;  1 drivers
S_0x1f38390 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1eecdd0_0 .net "I", 7 0, L_0x2010920;  alias, 1 drivers
v0x1eec8b0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1eec3e0_0 .net "out", 0 0, L_0x20106b0;  alias, 1 drivers
L_0x20106b0 .part/v L_0x2010920, v0x1f2dc50_0, 1;
S_0x1f33d00 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2010560 .functor NAND 1, L_0x20109c0, L_0x2010a60, C4<1>, C4<1>;
v0x1eebf60_0 .net "A", 0 0, L_0x20109c0;  alias, 1 drivers
v0x1ee4b90_0 .net "B", 0 0, L_0x2010a60;  alias, 1 drivers
v0x1ee4c50_0 .net "out", 0 0, L_0x2010560;  1 drivers
S_0x1efac50 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20105d0 .functor NOR 1, L_0x20109c0, L_0x2010a60, C4<0>, C4<0>;
v0x1eeb570_0 .net "A", 0 0, L_0x20109c0;  alias, 1 drivers
v0x1eeb630_0 .net "B", 0 0, L_0x2010a60;  alias, 1 drivers
v0x1eeb0a0_0 .net "out", 0 0, L_0x20105d0;  1 drivers
S_0x1f622a0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2010640 .functor OR 1, L_0x20109c0, L_0x2010a60, C4<0>, C4<0>;
v0x1eeac20_0 .net "A", 0 0, L_0x20109c0;  alias, 1 drivers
v0x1eea790_0 .net "B", 0 0, L_0x2010a60;  alias, 1 drivers
v0x1eea230_0 .net "out", 0 0, L_0x2010640;  1 drivers
S_0x1f11010 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x200ff70 .functor XOR 1, L_0x2010a60, L_0x200ffe0, C4<0>, C4<0>;
v0x1ee9d60_0 .net "A", 0 0, L_0x2010a60;  alias, 1 drivers
v0x1ee9890_0 .net "B", 0 0, L_0x200ffe0;  1 drivers
v0x1ee9930_0 .net "out", 0 0, L_0x200ff70;  alias, 1 drivers
S_0x1f0ca20 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1eff2f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20103e0 .functor XOR 1, L_0x20109c0, L_0x2010a60, C4<0>, C4<0>;
v0x1ee9410_0 .net "A", 0 0, L_0x20109c0;  alias, 1 drivers
v0x1ee8ef0_0 .net "B", 0 0, L_0x2010a60;  alias, 1 drivers
v0x1ee8fb0_0 .net "out", 0 0, L_0x20103e0;  1 drivers
S_0x1f08430 .scope module, "alu1" "ALU_1bit" 8 119, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20114f0 .functor BUFZ 1, L_0x2010e80, C4<0>, C4<0>, C4<0>;
L_0x2011580 .functor BUFZ 1, L_0x2010e80, C4<0>, C4<0>, C4<0>;
v0x1f22a10_0 .net "A", 0 0, L_0x20118d0;  1 drivers
v0x1f22ab0_0 .net "B", 0 0, L_0x2011970;  1 drivers
v0x1edeca0_0 .net "I", 7 0, L_0x20116a0;  1 drivers
v0x1eded70_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1ede9d0_0 .net *"_s15", 0 0, L_0x20114f0;  1 drivers
v0x1ede5c0_0 .net *"_s19", 0 0, L_0x2011580;  1 drivers
L_0x7f90268ab1c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1ede6a0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab1c8;  1 drivers
v0x1ef4f90_0 .net "addORsub", 0 0, L_0x2010e80;  1 drivers
v0x1ef5030_0 .net "carryin", 0 0, L_0x2011aa0;  1 drivers
v0x1ef4d20_0 .net "carryout", 0 0, L_0x1f2d7a0;  1 drivers
v0x1ef4830_0 .net "modB", 0 0, L_0x2010c30;  1 drivers
v0x1ef48d0_0 .net "out", 0 0, L_0x2011430;  1 drivers
L_0x2010ca0 .part v0x1f2dc50_0, 0, 1;
LS_0x20116a0_0_0 .concat8 [ 1 1 1 1], L_0x20114f0, L_0x2011580, L_0x2011120, L_0x7f90268ab1c8;
LS_0x20116a0_0_4 .concat8 [ 1 1 1 1], L_0x1f24be0, L_0x20112a0, L_0x2011310, L_0x20113a0;
L_0x20116a0 .concat8 [ 4 4 0 0], LS_0x20116a0_0_0, LS_0x20116a0_0_4;
S_0x1f03e40 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2010d60 .functor XOR 1, L_0x20118d0, L_0x2010c30, C4<0>, C4<0>;
L_0x2010e80 .functor XOR 1, L_0x2010d60, L_0x2011aa0, C4<0>, C4<0>;
L_0x2010f10 .functor AND 1, L_0x2010d60, L_0x2011aa0, C4<1>, C4<1>;
L_0x2010fa0 .functor AND 1, L_0x20118d0, L_0x2010c30, C4<1>, C4<1>;
L_0x1f2d7a0 .functor OR 1, L_0x2010f10, L_0x2010fa0, C4<0>, C4<0>;
v0x1ee63a0_0 .net "A", 0 0, L_0x20118d0;  alias, 1 drivers
v0x1ee5ed0_0 .net "B", 0 0, L_0x2010c30;  alias, 1 drivers
v0x1ee5f90_0 .net "carryin", 0 0, L_0x2011aa0;  alias, 1 drivers
v0x1ee41f0_0 .net "carryout", 0 0, L_0x1f2d7a0;  alias, 1 drivers
v0x1ee42b0_0 .net "out1", 0 0, L_0x2010d60;  1 drivers
v0x1ee5a00_0 .net "out2", 0 0, L_0x2010f10;  1 drivers
v0x1ee5ac0_0 .net "out3", 0 0, L_0x2010fa0;  1 drivers
v0x1ee5530_0 .net "sum", 0 0, L_0x2010e80;  alias, 1 drivers
S_0x1f71970 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f24be0 .functor AND 1, L_0x20118d0, L_0x2011970, C4<1>, C4<1>;
v0x1ee50d0_0 .net "A", 0 0, L_0x20118d0;  alias, 1 drivers
v0x1f0eb40_0 .net "B", 0 0, L_0x2011970;  alias, 1 drivers
v0x1f0ebe0_0 .net "out", 0 0, L_0x1f24be0;  1 drivers
S_0x1f6d380 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f05f60_0 .net "I", 7 0, L_0x20116a0;  alias, 1 drivers
v0x1f6f4a0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f6f560_0 .net "out", 0 0, L_0x2011430;  alias, 1 drivers
L_0x2011430 .part/v L_0x20116a0, v0x1f2dc50_0, 1;
S_0x1f68d90 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20112a0 .functor NAND 1, L_0x20118d0, L_0x2011970, C4<1>, C4<1>;
v0x1f6af50_0 .net "A", 0 0, L_0x20118d0;  alias, 1 drivers
v0x1f66910_0 .net "B", 0 0, L_0x2011970;  alias, 1 drivers
v0x1f508c0_0 .net "out", 0 0, L_0x20112a0;  1 drivers
S_0x1f647a0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2011310 .functor NOR 1, L_0x20118d0, L_0x2011970, C4<0>, C4<0>;
v0x1f4c320_0 .net "A", 0 0, L_0x20118d0;  alias, 1 drivers
v0x1f436f0_0 .net "B", 0 0, L_0x2011970;  alias, 1 drivers
v0x1f31cf0_0 .net "out", 0 0, L_0x2011310;  1 drivers
S_0x1f4e7a0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20113a0 .functor OR 1, L_0x20118d0, L_0x2011970, C4<0>, C4<0>;
v0x1f2d700_0 .net "A", 0 0, L_0x20118d0;  alias, 1 drivers
v0x1f29110_0 .net "B", 0 0, L_0x2011970;  alias, 1 drivers
v0x1f291d0_0 .net "out", 0 0, L_0x20113a0;  1 drivers
S_0x1f4a1b0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2010c30 .functor XOR 1, L_0x2011970, L_0x2010ca0, C4<0>, C4<0>;
v0x1f24b20_0 .net "A", 0 0, L_0x2011970;  alias, 1 drivers
v0x1f45bc0_0 .net "B", 0 0, L_0x2010ca0;  1 drivers
v0x1f45c60_0 .net "out", 0 0, L_0x2010c30;  alias, 1 drivers
S_0x1f2b5e0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f08430;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2011120 .functor XOR 1, L_0x20118d0, L_0x2011970, C4<0>, C4<0>;
v0x1f2fc40_0 .net "A", 0 0, L_0x20118d0;  alias, 1 drivers
v0x1f26ff0_0 .net "B", 0 0, L_0x2011970;  alias, 1 drivers
v0x1f270b0_0 .net "out", 0 0, L_0x2011120;  1 drivers
S_0x1ef4500 .scope module, "alu10" "ALU_1bit" 8 128, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x201b6d0 .functor BUFZ 1, L_0x201ae10, C4<0>, C4<0>, C4<0>;
L_0x201b760 .functor BUFZ 1, L_0x201ae10, C4<0>, C4<0>, C4<0>;
v0x1edcc00_0 .net "A", 0 0, L_0x201bba0;  1 drivers
v0x1edcca0_0 .net "B", 0 0, L_0x2012b80;  1 drivers
v0x1f89500_0 .net "I", 7 0, L_0x201b880;  1 drivers
v0x1f89600_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f8b8f0_0 .net *"_s15", 0 0, L_0x201b6d0;  1 drivers
v0x1f8b9e0_0 .net *"_s19", 0 0, L_0x201b760;  1 drivers
L_0x7f90268ab450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f0fc80_0 .net/2s *"_s23", 0 0, L_0x7f90268ab450;  1 drivers
v0x1f0b650_0 .net "addORsub", 0 0, L_0x201ae10;  1 drivers
v0x1f0b6f0_0 .net "carryin", 0 0, L_0x201abe0;  1 drivers
v0x1f07120_0 .net "carryout", 0 0, L_0x1ee0580;  1 drivers
v0x1f705a0_0 .net "modB", 0 0, L_0x201a9c0;  1 drivers
v0x1f70640_0 .net "out", 0 0, L_0x201b570;  1 drivers
L_0x201ace0 .part v0x1f2dc50_0, 0, 1;
LS_0x201b880_0_0 .concat8 [ 1 1 1 1], L_0x201b6d0, L_0x201b760, L_0x201b240, L_0x7f90268ab450;
LS_0x201b880_0_4 .concat8 [ 1 1 1 1], L_0x1edfb10, L_0x201b3c0, L_0x201b450, L_0x201b4e0;
L_0x201b880 .concat8 [ 4 4 0 0], LS_0x201b880_0_0, LS_0x201b880_0_4;
S_0x1ef3ea0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x201aa30 .functor XOR 1, L_0x201bba0, L_0x201a9c0, C4<0>, C4<0>;
L_0x201ae10 .functor XOR 1, L_0x201aa30, L_0x201abe0, C4<0>, C4<0>;
L_0x201af40 .functor AND 1, L_0x201aa30, L_0x201abe0, C4<1>, C4<1>;
L_0x201afd0 .functor AND 1, L_0x201bba0, L_0x201a9c0, C4<1>, C4<1>;
L_0x1ee0580 .functor OR 1, L_0x201af40, L_0x201afd0, C4<0>, C4<0>;
v0x1ef3bf0_0 .net "A", 0 0, L_0x201bba0;  alias, 1 drivers
v0x1ef3840_0 .net "B", 0 0, L_0x201a9c0;  alias, 1 drivers
v0x1ef3900_0 .net "carryin", 0 0, L_0x201abe0;  alias, 1 drivers
v0x1ef3510_0 .net "carryout", 0 0, L_0x1ee0580;  alias, 1 drivers
v0x1ef35d0_0 .net "out1", 0 0, L_0x201aa30;  1 drivers
v0x1ef31e0_0 .net "out2", 0 0, L_0x201af40;  1 drivers
v0x1ef32a0_0 .net "out3", 0 0, L_0x201afd0;  1 drivers
v0x1ef2eb0_0 .net "sum", 0 0, L_0x201ae10;  alias, 1 drivers
S_0x1ef2b80 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1edfb10 .functor AND 1, L_0x201bba0, L_0x2012b80, C4<1>, C4<1>;
v0x1ef2910_0 .net "A", 0 0, L_0x201bba0;  alias, 1 drivers
v0x1ef2520_0 .net "B", 0 0, L_0x2012b80;  alias, 1 drivers
v0x1ef25e0_0 .net "out", 0 0, L_0x1edfb10;  1 drivers
S_0x1eddec0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1eddb60_0 .net "I", 7 0, L_0x201b880;  alias, 1 drivers
v0x1eddc40_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1edd7e0_0 .net "out", 0 0, L_0x201b570;  alias, 1 drivers
L_0x201b570 .part/v L_0x201b880, v0x1f2dc50_0, 1;
S_0x1ee1fc0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201b3c0 .functor NAND 1, L_0x201bba0, L_0x2012b80, C4<1>, C4<1>;
v0x1ee1cb0_0 .net "A", 0 0, L_0x201bba0;  alias, 1 drivers
v0x1ee1900_0 .net "B", 0 0, L_0x2012b80;  alias, 1 drivers
v0x1ee19c0_0 .net "out", 0 0, L_0x201b3c0;  1 drivers
S_0x1ee15a0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201b450 .functor NOR 1, L_0x201bba0, L_0x2012b80, C4<0>, C4<0>;
v0x1ee1330_0 .net "A", 0 0, L_0x201bba0;  alias, 1 drivers
v0x1ee0ee0_0 .net "B", 0 0, L_0x2012b80;  alias, 1 drivers
v0x1ee0b80_0 .net "out", 0 0, L_0x201b450;  1 drivers
S_0x1ee0820 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201b4e0 .functor OR 1, L_0x201bba0, L_0x2012b80, C4<0>, C4<0>;
v0x1ee04c0_0 .net "A", 0 0, L_0x201bba0;  alias, 1 drivers
v0x1ee0140_0 .net "B", 0 0, L_0x2012b80;  alias, 1 drivers
v0x1ee0200_0 .net "out", 0 0, L_0x201b4e0;  1 drivers
S_0x1edfd80 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201a9c0 .functor XOR 1, L_0x2012b80, L_0x201ace0, C4<0>, C4<0>;
v0x1edfa70_0 .net "A", 0 0, L_0x2012b80;  alias, 1 drivers
v0x1edf6c0_0 .net "B", 0 0, L_0x201ace0;  1 drivers
v0x1edf780_0 .net "out", 0 0, L_0x201a9c0;  alias, 1 drivers
S_0x1edf000 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1ef4500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201b240 .functor XOR 1, L_0x201bba0, L_0x2012b80, C4<0>, C4<0>;
v0x1edf3f0_0 .net "A", 0 0, L_0x201bba0;  alias, 1 drivers
v0x1f47ce0_0 .net "B", 0 0, L_0x2012b80;  alias, 1 drivers
v0x1f47da0_0 .net "out", 0 0, L_0x201b240;  1 drivers
S_0x1f6bfb0 .scope module, "alu11" "ALU_1bit" 8 129, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x201c9f0 .functor BUFZ 1, L_0x201c190, C4<0>, C4<0>, C4<0>;
L_0x201ca80 .functor BUFZ 1, L_0x201c190, C4<0>, C4<0>, C4<0>;
v0x1f65140_0 .net "A", 0 0, L_0x201cfd0;  1 drivers
v0x1f651e0_0 .net "B", 0 0, L_0x201be50;  1 drivers
v0x1f4f140_0 .net "I", 7 0, L_0x201cba0;  1 drivers
v0x1f4f1e0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f4ac60_0 .net *"_s15", 0 0, L_0x201c9f0;  1 drivers
v0x1f46560_0 .net *"_s19", 0 0, L_0x201ca80;  1 drivers
L_0x7f90268ab498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f46620_0 .net/2s *"_s23", 0 0, L_0x7f90268ab498;  1 drivers
v0x1f30570_0 .net "addORsub", 0 0, L_0x201c190;  1 drivers
v0x1f30610_0 .net "carryin", 0 0, L_0x201d190;  1 drivers
v0x1f2bf80_0 .net "carryout", 0 0, L_0x1efa850;  1 drivers
v0x1f2c050_0 .net "modB", 0 0, L_0x2012c20;  1 drivers
v0x1f27990_0 .net "out", 0 0, L_0x201c890;  1 drivers
L_0x201bff0 .part v0x1f2dc50_0, 0, 1;
LS_0x201cba0_0_0 .concat8 [ 1 1 1 1], L_0x201c9f0, L_0x201ca80, L_0x201c580, L_0x7f90268ab498;
LS_0x201cba0_0_4 .concat8 [ 1 1 1 1], L_0x1f08dd0, L_0x201c700, L_0x201c770, L_0x201c800;
L_0x201cba0 .concat8 [ 4 4 0 0], LS_0x201cba0_0_0, LS_0x201cba0_0_4;
S_0x1f633d0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x201c090 .functor XOR 1, L_0x201cfd0, L_0x2012c20, C4<0>, C4<0>;
L_0x201c190 .functor XOR 1, L_0x201c090, L_0x201d190, C4<0>, C4<0>;
L_0x201c2a0 .functor AND 1, L_0x201c090, L_0x201d190, C4<1>, C4<1>;
L_0x201c310 .functor AND 1, L_0x201cfd0, L_0x2012c20, C4<1>, C4<1>;
L_0x1efa850 .functor OR 1, L_0x201c2a0, L_0x201c310, C4<0>, C4<0>;
v0x1f519c0_0 .net "A", 0 0, L_0x201cfd0;  alias, 1 drivers
v0x1f51a80_0 .net "B", 0 0, L_0x2012c20;  alias, 1 drivers
v0x1f4d3d0_0 .net "carryin", 0 0, L_0x201d190;  alias, 1 drivers
v0x1f4d4c0_0 .net "carryout", 0 0, L_0x1efa850;  alias, 1 drivers
v0x1f48de0_0 .net "out1", 0 0, L_0x201c090;  1 drivers
v0x1f48ed0_0 .net "out2", 0 0, L_0x201c2a0;  1 drivers
v0x1f447f0_0 .net "out3", 0 0, L_0x201c310;  1 drivers
v0x1f44890_0 .net "sum", 0 0, L_0x201c190;  alias, 1 drivers
S_0x1f2a210 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f08dd0 .functor AND 1, L_0x201cfd0, L_0x201be50, C4<1>, C4<1>;
v0x1f2e900_0 .net "A", 0 0, L_0x201cfd0;  alias, 1 drivers
v0x1f25c40_0 .net "B", 0 0, L_0x201be50;  alias, 1 drivers
v0x1f25ce0_0 .net "out", 0 0, L_0x1f08dd0;  1 drivers
S_0x1f19400 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f1db70_0 .net "I", 7 0, L_0x201cba0;  alias, 1 drivers
v0x1f14d90_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f14e50_0 .net "out", 0 0, L_0x201c890;  alias, 1 drivers
L_0x201c890 .part/v L_0x201cba0, v0x1f2dc50_0, 1;
S_0x1f75700 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201c700 .functor NAND 1, L_0x201cfd0, L_0x201be50, C4<1>, C4<1>;
v0x1f5b1e0_0 .net "A", 0 0, L_0x201cfd0;  alias, 1 drivers
v0x1f5b2f0_0 .net "B", 0 0, L_0x201be50;  alias, 1 drivers
v0x1f56b50_0 .net "out", 0 0, L_0x201c700;  1 drivers
S_0x1f524b0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201c770 .functor NOR 1, L_0x201cfd0, L_0x201be50, C4<0>, C4<0>;
v0x1efef40_0 .net "A", 0 0, L_0x201cfd0;  alias, 1 drivers
v0x1eff000_0 .net "B", 0 0, L_0x201be50;  alias, 1 drivers
v0x1f3c670_0 .net "out", 0 0, L_0x201c770;  1 drivers
S_0x1f37f90 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201c800 .functor OR 1, L_0x201cfd0, L_0x201be50, C4<0>, C4<0>;
v0x1f339a0_0 .net "A", 0 0, L_0x201cfd0;  alias, 1 drivers
v0x1efa8e0_0 .net "B", 0 0, L_0x201be50;  alias, 1 drivers
v0x1f119b0_0 .net "out", 0 0, L_0x201c800;  1 drivers
S_0x1f0d3c0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2012c20 .functor XOR 1, L_0x201be50, L_0x201bff0, C4<0>, C4<0>;
v0x1f11ab0_0 .net "A", 0 0, L_0x201be50;  alias, 1 drivers
v0x1f08e60_0 .net "B", 0 0, L_0x201bff0;  1 drivers
v0x1f047e0_0 .net "out", 0 0, L_0x2012c20;  alias, 1 drivers
S_0x1f6dd20 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f6bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201c580 .functor XOR 1, L_0x201cfd0, L_0x201be50, C4<0>, C4<0>;
v0x1f048c0_0 .net "A", 0 0, L_0x201cfd0;  alias, 1 drivers
v0x1f69730_0 .net "B", 0 0, L_0x201be50;  alias, 1 drivers
v0x1f697f0_0 .net "out", 0 0, L_0x201c580;  1 drivers
S_0x1f233b0 .scope module, "alu12" "ALU_1bit" 8 130, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x201dce0 .functor BUFZ 1, L_0x201d460, C4<0>, C4<0>, C4<0>;
L_0x201dd70 .functor BUFZ 1, L_0x201d460, C4<0>, C4<0>, C4<0>;
v0x1f4ce80_0 .net "A", 0 0, L_0x201e1b0;  1 drivers
v0x1f4cf20_0 .net "B", 0 0, L_0x201e250;  1 drivers
v0x1f48890_0 .net "I", 7 0, L_0x201de90;  1 drivers
v0x1f48990_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f442a0_0 .net *"_s15", 0 0, L_0x201dce0;  1 drivers
v0x1f44390_0 .net *"_s19", 0 0, L_0x201dd70;  1 drivers
L_0x7f90268ab4e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f2e2b0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab4e0;  1 drivers
v0x1f2e370_0 .net "addORsub", 0 0, L_0x201d460;  1 drivers
v0x1f29cc0_0 .net "carryin", 0 0, L_0x201d230;  1 drivers
v0x1f256d0_0 .net "carryout", 0 0, L_0x1f0b100;  1 drivers
v0x1f257a0_0 .net "modB", 0 0, L_0x201bef0;  1 drivers
v0x1eee2a0_0 .net "out", 0 0, L_0x201db80;  1 drivers
L_0x201d070 .part v0x1f2dc50_0, 0, 1;
LS_0x201de90_0_0 .concat8 [ 1 1 1 1], L_0x201dce0, L_0x201dd70, L_0x201d870, L_0x7f90268ab4e0;
LS_0x201de90_0_4 .concat8 [ 1 1 1 1], L_0x1f70050, L_0x201d9f0, L_0x201da60, L_0x201daf0;
L_0x201de90 .concat8 [ 4 4 0 0], LS_0x201de90_0_0, LS_0x201de90_0_4;
S_0x1f7e8c0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x201d360 .functor XOR 1, L_0x201e1b0, L_0x201bef0, C4<0>, C4<0>;
L_0x201d460 .functor XOR 1, L_0x201d360, L_0x201d230, C4<0>, C4<0>;
L_0x201d570 .functor AND 1, L_0x201d360, L_0x201d230, C4<1>, C4<1>;
L_0x201d5e0 .functor AND 1, L_0x201e1b0, L_0x201bef0, C4<1>, C4<1>;
L_0x1f0b100 .functor OR 1, L_0x201d570, L_0x201d5e0, C4<0>, C4<0>;
v0x1f60b10_0 .net "A", 0 0, L_0x201e1b0;  alias, 1 drivers
v0x1f60bf0_0 .net "B", 0 0, L_0x201bef0;  alias, 1 drivers
v0x1ef64d0_0 .net "carryin", 0 0, L_0x201d230;  alias, 1 drivers
v0x1ef6590_0 .net "carryout", 0 0, L_0x1f0b100;  alias, 1 drivers
v0x1f1e370_0 .net "out1", 0 0, L_0x201d360;  1 drivers
v0x1f1e480_0 .net "out2", 0 0, L_0x201d570;  1 drivers
v0x1f19ce0_0 .net "out3", 0 0, L_0x201d5e0;  1 drivers
v0x1f19da0_0 .net "sum", 0 0, L_0x201d460;  alias, 1 drivers
S_0x1f15650 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f70050 .functor AND 1, L_0x201e1b0, L_0x201e250, C4<1>, C4<1>;
v0x1f7e430_0 .net "A", 0 0, L_0x201e1b0;  alias, 1 drivers
v0x1f7e4f0_0 .net "B", 0 0, L_0x201e250;  alias, 1 drivers
v0x1f7a670_0 .net "out", 0 0, L_0x1f70050;  1 drivers
S_0x1f75fe0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f601a0_0 .net "I", 7 0, L_0x201de90;  alias, 1 drivers
v0x1f5bac0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f5bb80_0 .net "out", 0 0, L_0x201db80;  alias, 1 drivers
L_0x201db80 .part/v L_0x201de90, v0x1f2dc50_0, 1;
S_0x1f57430 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201d9f0 .functor NAND 1, L_0x201e1b0, L_0x201e250, C4<1>, C4<1>;
v0x1f52de0_0 .net "A", 0 0, L_0x201e1b0;  alias, 1 drivers
v0x1eff7d0_0 .net "B", 0 0, L_0x201e250;  alias, 1 drivers
v0x1eff890_0 .net "out", 0 0, L_0x201d9f0;  1 drivers
S_0x1f41590 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201da60 .functor NOR 1, L_0x201e1b0, L_0x201e250, C4<0>, C4<0>;
v0x1f3cfa0_0 .net "A", 0 0, L_0x201e1b0;  alias, 1 drivers
v0x1f38870_0 .net "B", 0 0, L_0x201e250;  alias, 1 drivers
v0x1f38930_0 .net "out", 0 0, L_0x201da60;  1 drivers
S_0x1f341e0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201daf0 .functor OR 1, L_0x201e1b0, L_0x201e250, C4<0>, C4<0>;
v0x1efb1d0_0 .net "A", 0 0, L_0x201e1b0;  alias, 1 drivers
v0x1f0b190_0 .net "B", 0 0, L_0x201e250;  alias, 1 drivers
v0x1f06b10_0 .net "out", 0 0, L_0x201daf0;  1 drivers
S_0x1f02480 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201bef0 .functor XOR 1, L_0x201e250, L_0x201d070, C4<0>, C4<0>;
v0x1f06c10_0 .net "A", 0 0, L_0x201e250;  alias, 1 drivers
v0x1f700e0_0 .net "B", 0 0, L_0x201d070;  1 drivers
v0x1f6ba60_0 .net "out", 0 0, L_0x201bef0;  alias, 1 drivers
S_0x1f67470 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f233b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201d870 .functor XOR 1, L_0x201e1b0, L_0x201e250, C4<0>, C4<0>;
v0x1f6bb70_0 .net "A", 0 0, L_0x201e1b0;  alias, 1 drivers
v0x1f62e80_0 .net "B", 0 0, L_0x201e250;  alias, 1 drivers
v0x1f62f40_0 .net "out", 0 0, L_0x201d870;  1 drivers
S_0x1edb8f0 .scope module, "alu13" "ALU_1bit" 8 131, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x201ef00 .functor BUFZ 1, L_0x201e660, C4<0>, C4<0>, C4<0>;
L_0x201ef90 .functor BUFZ 1, L_0x201e660, C4<0>, C4<0>, C4<0>;
v0x1ed4b70_0 .net "A", 0 0, L_0x201f3d0;  1 drivers
v0x1ed4570_0 .net "B", 0 0, L_0x201e2f0;  1 drivers
v0x1ed4630_0 .net "I", 7 0, L_0x201f0b0;  1 drivers
v0x1ed40a0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1ed4140_0 .net *"_s15", 0 0, L_0x201ef00;  1 drivers
v0x1ed23b0_0 .net *"_s19", 0 0, L_0x201ef90;  1 drivers
L_0x7f90268ab528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1ed2490_0 .net/2s *"_s23", 0 0, L_0x7f90268ab528;  1 drivers
v0x1ed3bd0_0 .net "addORsub", 0 0, L_0x201e660;  1 drivers
v0x1ed3c70_0 .net "carryin", 0 0, L_0x201e390;  1 drivers
v0x1ed3700_0 .net "carryout", 0 0, L_0x1ed6cb0;  1 drivers
v0x1ed37d0_0 .net "modB", 0 0, L_0x201e430;  1 drivers
v0x1ed3230_0 .net "out", 0 0, L_0x201eda0;  1 drivers
L_0x201e4a0 .part v0x1f2dc50_0, 0, 1;
LS_0x201f0b0_0_0 .concat8 [ 1 1 1 1], L_0x201ef00, L_0x201ef90, L_0x201ea90, L_0x7f90268ab528;
LS_0x201f0b0_0_4 .concat8 [ 1 1 1 1], L_0x1ed5e40, L_0x201ec10, L_0x201ec80, L_0x201ed10;
L_0x201f0b0 .concat8 [ 4 4 0 0], LS_0x201f0b0_0_0, LS_0x201f0b0_0_4;
S_0x1edb420 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x201e540 .functor XOR 1, L_0x201f3d0, L_0x201e430, C4<0>, C4<0>;
L_0x201e660 .functor XOR 1, L_0x201e540, L_0x201e390, C4<0>, C4<0>;
L_0x201e790 .functor AND 1, L_0x201e540, L_0x201e390, C4<1>, C4<1>;
L_0x201e820 .functor AND 1, L_0x201f3d0, L_0x201e430, C4<1>, C4<1>;
L_0x1ed6cb0 .functor OR 1, L_0x201e790, L_0x201e820, C4<0>, C4<0>;
v0x1edafd0_0 .net "A", 0 0, L_0x201f3d0;  alias, 1 drivers
v0x1edaa80_0 .net "B", 0 0, L_0x201e430;  alias, 1 drivers
v0x1edab40_0 .net "carryin", 0 0, L_0x201e390;  alias, 1 drivers
v0x1eda5b0_0 .net "carryout", 0 0, L_0x1ed6cb0;  alias, 1 drivers
v0x1eda670_0 .net "out1", 0 0, L_0x201e540;  1 drivers
v0x1eda0e0_0 .net "out2", 0 0, L_0x201e790;  1 drivers
v0x1eda1a0_0 .net "out3", 0 0, L_0x201e820;  1 drivers
v0x1ed2d60_0 .net "sum", 0 0, L_0x201e660;  alias, 1 drivers
S_0x1ed9c10 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1ed5e40 .functor AND 1, L_0x201f3d0, L_0x201e2f0, C4<1>, C4<1>;
v0x1ed9740_0 .net "A", 0 0, L_0x201f3d0;  alias, 1 drivers
v0x1ed9800_0 .net "B", 0 0, L_0x201e2f0;  alias, 1 drivers
v0x1ed9270_0 .net "out", 0 0, L_0x1ed5e40;  1 drivers
S_0x1ed8da0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1ed9390_0 .net "I", 7 0, L_0x201f0b0;  alias, 1 drivers
v0x1ed88d0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1ed8990_0 .net "out", 0 0, L_0x201eda0;  alias, 1 drivers
L_0x201eda0 .part/v L_0x201f0b0, v0x1f2dc50_0, 1;
S_0x1ed8400 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201ec10 .functor NAND 1, L_0x201f3d0, L_0x201e2f0, C4<1>, C4<1>;
v0x1ed7f30_0 .net "A", 0 0, L_0x201f3d0;  alias, 1 drivers
v0x1ed8040_0 .net "B", 0 0, L_0x201e2f0;  alias, 1 drivers
v0x1ed7a60_0 .net "out", 0 0, L_0x201ec10;  1 drivers
S_0x1ed7590 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201ec80 .functor NOR 1, L_0x201f3d0, L_0x201e2f0, C4<0>, C4<0>;
v0x1ed7b70_0 .net "A", 0 0, L_0x201f3d0;  alias, 1 drivers
v0x1ed70c0_0 .net "B", 0 0, L_0x201e2f0;  alias, 1 drivers
v0x1ed71b0_0 .net "out", 0 0, L_0x201ec80;  1 drivers
S_0x1ed2890 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201ed10 .functor OR 1, L_0x201f3d0, L_0x201e2f0, C4<0>, C4<0>;
v0x1ed6bf0_0 .net "A", 0 0, L_0x201f3d0;  alias, 1 drivers
v0x1ed6720_0 .net "B", 0 0, L_0x201e2f0;  alias, 1 drivers
v0x1ed67e0_0 .net "out", 0 0, L_0x201ed10;  1 drivers
S_0x1ed6250 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201e430 .functor XOR 1, L_0x201e2f0, L_0x201e4a0, C4<0>, C4<0>;
v0x1ed5d80_0 .net "A", 0 0, L_0x201e2f0;  alias, 1 drivers
v0x1ed58b0_0 .net "B", 0 0, L_0x201e4a0;  1 drivers
v0x1ed5970_0 .net "out", 0 0, L_0x201e430;  alias, 1 drivers
S_0x1ed53e0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1edb8f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201ea90 .functor XOR 1, L_0x201f3d0, L_0x201e2f0, C4<0>, C4<0>;
v0x1ed4f10_0 .net "A", 0 0, L_0x201f3d0;  alias, 1 drivers
v0x1ed4fd0_0 .net "B", 0 0, L_0x201e2f0;  alias, 1 drivers
v0x1ed4a40_0 .net "out", 0 0, L_0x201ea90;  1 drivers
S_0x1edc500 .scope module, "alu14" "ALU_1bit" 8 132, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2020260 .functor BUFZ 1, L_0x201f9c0, C4<0>, C4<0>, C4<0>;
L_0x20202f0 .functor BUFZ 1, L_0x201f9c0, C4<0>, C4<0>, C4<0>;
v0x1f5e830_0 .net "A", 0 0, L_0x2020730;  1 drivers
v0x1f5e300_0 .net "B", 0 0, L_0x20207d0;  1 drivers
v0x1f5e3c0_0 .net "I", 7 0, L_0x2020410;  1 drivers
v0x1f5df10_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f5dfb0_0 .net *"_s15", 0 0, L_0x2020260;  1 drivers
v0x1f5a070_0 .net *"_s19", 0 0, L_0x20202f0;  1 drivers
L_0x7f90268ab570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f5a150_0 .net/2s *"_s23", 0 0, L_0x7f90268ab570;  1 drivers
v0x1f59c70_0 .net "addORsub", 0 0, L_0x201f9c0;  1 drivers
v0x1f59d10_0 .net "carryin", 0 0, L_0x201f7d0;  1 drivers
v0x1f59880_0 .net "carryout", 0 0, L_0x1f78ce0;  1 drivers
v0x1f59950_0 .net "modB", 0 0, L_0x2016420;  1 drivers
v0x1f559e0_0 .net "out", 0 0, L_0x2020100;  1 drivers
L_0x201f470 .part v0x1f2dc50_0, 0, 1;
LS_0x2020410_0_0 .concat8 [ 1 1 1 1], L_0x2020260, L_0x20202f0, L_0x201fdf0, L_0x7f90268ab570;
LS_0x2020410_0_4 .concat8 [ 1 1 1 1], L_0x1f74650, L_0x201ff70, L_0x201ffe0, L_0x2020070;
L_0x2020410 .concat8 [ 4 4 0 0], LS_0x2020410_0_0, LS_0x2020410_0_4;
S_0x1ebb770 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x201f530 .functor XOR 1, L_0x2020730, L_0x2016420, C4<0>, C4<0>;
L_0x201f9c0 .functor XOR 1, L_0x201f530, L_0x201f7d0, C4<0>, C4<0>;
L_0x201faf0 .functor AND 1, L_0x201f530, L_0x201f7d0, C4<1>, C4<1>;
L_0x201fb80 .functor AND 1, L_0x2020730, L_0x2016420, C4<1>, C4<1>;
L_0x1f78ce0 .functor OR 1, L_0x201faf0, L_0x201fb80, C4<0>, C4<0>;
v0x1e20a50_0 .net "A", 0 0, L_0x2020730;  alias, 1 drivers
v0x1e20b30_0 .net "B", 0 0, L_0x2016420;  alias, 1 drivers
v0x1f20fb0_0 .net "carryin", 0 0, L_0x201f7d0;  alias, 1 drivers
v0x1f21050_0 .net "carryout", 0 0, L_0x1f78ce0;  alias, 1 drivers
v0x1f20bb0_0 .net "out1", 0 0, L_0x201f530;  1 drivers
v0x1f20cc0_0 .net "out2", 0 0, L_0x201faf0;  1 drivers
v0x1f207c0_0 .net "out3", 0 0, L_0x201fb80;  1 drivers
v0x1f20880_0 .net "sum", 0 0, L_0x201f9c0;  alias, 1 drivers
S_0x1ef96e0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f74650 .functor AND 1, L_0x2020730, L_0x20207d0, C4<1>, C4<1>;
v0x1f1c920_0 .net "A", 0 0, L_0x2020730;  alias, 1 drivers
v0x1f1ca10_0 .net "B", 0 0, L_0x20207d0;  alias, 1 drivers
v0x1f1c520_0 .net "out", 0 0, L_0x1f74650;  1 drivers
S_0x1f1c130 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f18290_0 .net "I", 7 0, L_0x2020410;  alias, 1 drivers
v0x1f18350_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f17e90_0 .net "out", 0 0, L_0x2020100;  alias, 1 drivers
L_0x2020100 .part/v L_0x2020410, v0x1f2dc50_0, 1;
S_0x1f17aa0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201ff70 .functor NAND 1, L_0x2020730, L_0x20207d0, C4<1>, C4<1>;
v0x1ef92c0_0 .net "A", 0 0, L_0x2020730;  alias, 1 drivers
v0x1ef93d0_0 .net "B", 0 0, L_0x20207d0;  alias, 1 drivers
v0x1f13c00_0 .net "out", 0 0, L_0x201ff70;  1 drivers
S_0x1f13800 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201ffe0 .functor NOR 1, L_0x2020730, L_0x20207d0, C4<0>, C4<0>;
v0x1f13d10_0 .net "A", 0 0, L_0x2020730;  alias, 1 drivers
v0x1f13410_0 .net "B", 0 0, L_0x20207d0;  alias, 1 drivers
v0x1f13520_0 .net "out", 0 0, L_0x201ffe0;  1 drivers
S_0x1ef8ea0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2020070 .functor OR 1, L_0x2020730, L_0x20207d0, C4<0>, C4<0>;
v0x1f78c20_0 .net "A", 0 0, L_0x2020730;  alias, 1 drivers
v0x1f78820_0 .net "B", 0 0, L_0x20207d0;  alias, 1 drivers
v0x1f788e0_0 .net "out", 0 0, L_0x2020070;  1 drivers
S_0x1f78430 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2016420 .functor XOR 1, L_0x20207d0, L_0x201f470, C4<0>, C4<0>;
v0x1f74590_0 .net "A", 0 0, L_0x20207d0;  alias, 1 drivers
v0x1f74190_0 .net "B", 0 0, L_0x201f470;  1 drivers
v0x1f74250_0 .net "out", 0 0, L_0x2016420;  alias, 1 drivers
S_0x1f73da0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1edc500;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201fdf0 .functor XOR 1, L_0x2020730, L_0x20207d0, C4<0>, C4<0>;
v0x1f01c20_0 .net "A", 0 0, L_0x2020730;  alias, 1 drivers
v0x1f01ce0_0 .net "B", 0 0, L_0x20207d0;  alias, 1 drivers
v0x1f5e700_0 .net "out", 0 0, L_0x201fdf0;  1 drivers
S_0x1f555e0 .scope module, "alu15" "ALU_1bit" 8 133, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20214b0 .functor BUFZ 1, L_0x2020c10, C4<0>, C4<0>, C4<0>;
L_0x2021540 .functor BUFZ 1, L_0x2020c10, C4<0>, C4<0>, C4<0>;
v0x1f402c0_0 .net "A", 0 0, L_0x2021980;  1 drivers
v0x1f3bb00_0 .net "B", 0 0, L_0x2020870;  1 drivers
v0x1f3bbc0_0 .net "I", 7 0, L_0x2021660;  1 drivers
v0x1f37470_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f7f740_0 .net *"_s15", 0 0, L_0x20214b0;  1 drivers
v0x1f4ab50_0 .net *"_s19", 0 0, L_0x2021540;  1 drivers
L_0x7f90268ab5b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f37510_0 .net/2s *"_s23", 0 0, L_0x7f90268ab5b8;  1 drivers
v0x1f32de0_0 .net "addORsub", 0 0, L_0x2020c10;  1 drivers
v0x1f32e80_0 .net "carryin", 0 0, L_0x2020910;  1 drivers
v0x1f21600_0 .net "carryout", 0 0, L_0x1f14340;  1 drivers
v0x1f216d0_0 .net "modB", 0 0, L_0x20209e0;  1 drivers
v0x1ef9d30_0 .net "out", 0 0, L_0x2021350;  1 drivers
L_0x2020a50 .part v0x1f2dc50_0, 0, 1;
LS_0x2021660_0_0 .concat8 [ 1 1 1 1], L_0x20214b0, L_0x2021540, L_0x2021040, L_0x7f90268ab5b8;
LS_0x2021660_0_4 .concat8 [ 1 1 1 1], L_0x1f5ee10, L_0x20211c0, L_0x2021230, L_0x20212c0;
L_0x2021660 .concat8 [ 4 4 0 0], LS_0x2021660_0_0, LS_0x2021660_0_4;
S_0x1f551f0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2020af0 .functor XOR 1, L_0x2021980, L_0x20209e0, C4<0>, C4<0>;
L_0x2020c10 .functor XOR 1, L_0x2020af0, L_0x2020910, C4<0>, C4<0>;
L_0x2020d40 .functor AND 1, L_0x2020af0, L_0x2020910, C4<1>, C4<1>;
L_0x2020dd0 .functor AND 1, L_0x2021980, L_0x20209e0, C4<1>, C4<1>;
L_0x1f14340 .functor OR 1, L_0x2020d40, L_0x2020dd0, C4<0>, C4<0>;
v0x1efdd80_0 .net "A", 0 0, L_0x2021980;  alias, 1 drivers
v0x1efde60_0 .net "B", 0 0, L_0x20209e0;  alias, 1 drivers
v0x1efd980_0 .net "carryin", 0 0, L_0x2020910;  alias, 1 drivers
v0x1efda20_0 .net "carryout", 0 0, L_0x1f14340;  alias, 1 drivers
v0x1f3fb40_0 .net "out1", 0 0, L_0x2020af0;  1 drivers
v0x1f3fc50_0 .net "out2", 0 0, L_0x2020d40;  1 drivers
v0x1f3f740_0 .net "out3", 0 0, L_0x2020dd0;  1 drivers
v0x1f3f800_0 .net "sum", 0 0, L_0x2020c10;  alias, 1 drivers
S_0x1f3f350 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f5ee10 .functor AND 1, L_0x2021980, L_0x2020870, C4<1>, C4<1>;
v0x1f3b4b0_0 .net "A", 0 0, L_0x2021980;  alias, 1 drivers
v0x1f3b550_0 .net "B", 0 0, L_0x2020870;  alias, 1 drivers
v0x1f3b0b0_0 .net "out", 0 0, L_0x1f5ee10;  1 drivers
S_0x1f3acc0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1efd590_0 .net "I", 7 0, L_0x2021660;  alias, 1 drivers
v0x1efd690_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f36e20_0 .net "out", 0 0, L_0x2021350;  alias, 1 drivers
L_0x2021350 .part/v L_0x2021660, v0x1f2dc50_0, 1;
S_0x1f36a20 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20211c0 .functor NAND 1, L_0x2021980, L_0x2020870, C4<1>, C4<1>;
v0x1f36630_0 .net "A", 0 0, L_0x2021980;  alias, 1 drivers
v0x1f36740_0 .net "B", 0 0, L_0x2020870;  alias, 1 drivers
v0x1f32790_0 .net "out", 0 0, L_0x20211c0;  1 drivers
S_0x1f323b0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2021230 .functor NOR 1, L_0x2021980, L_0x2020870, C4<0>, C4<0>;
v0x1f328c0_0 .net "A", 0 0, L_0x2021980;  alias, 1 drivers
v0x1f1cf70_0 .net "B", 0 0, L_0x2020870;  alias, 1 drivers
v0x1f1d060_0 .net "out", 0 0, L_0x2021230;  1 drivers
S_0x1f188e0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20212c0 .functor OR 1, L_0x2021980, L_0x2020870, C4<0>, C4<0>;
v0x1f142a0_0 .net "A", 0 0, L_0x2021980;  alias, 1 drivers
v0x1f79270_0 .net "B", 0 0, L_0x2020870;  alias, 1 drivers
v0x1f79330_0 .net "out", 0 0, L_0x20212c0;  1 drivers
S_0x1f74be0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20209e0 .functor XOR 1, L_0x2020870, L_0x2020a50, C4<0>, C4<0>;
v0x1f5ed50_0 .net "A", 0 0, L_0x2020870;  alias, 1 drivers
v0x1f5a6c0_0 .net "B", 0 0, L_0x2020a50;  1 drivers
v0x1f5a780_0 .net "out", 0 0, L_0x20209e0;  alias, 1 drivers
S_0x1f56030 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f555e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2021040 .functor XOR 1, L_0x2021980, L_0x2020870, C4<0>, C4<0>;
v0x1efe3d0_0 .net "A", 0 0, L_0x2021980;  alias, 1 drivers
v0x1efe490_0 .net "B", 0 0, L_0x2020870;  alias, 1 drivers
v0x1f40190_0 .net "out", 0 0, L_0x2021040;  1 drivers
S_0x1ebb030 .scope module, "alu16" "ALU_1bit" 8 134, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20226f0 .functor BUFZ 1, L_0x2021e50, C4<0>, C4<0>, C4<0>;
L_0x2022780 .functor BUFZ 1, L_0x2021e50, C4<0>, C4<0>, C4<0>;
v0x1db7550_0 .net "A", 0 0, L_0x2022bc0;  1 drivers
v0x1dc8350_0 .net "B", 0 0, L_0x2022c60;  1 drivers
v0x1dc83f0_0 .net "I", 7 0, L_0x20228a0;  1 drivers
v0x1dc84f0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1dc8590_0 .net *"_s15", 0 0, L_0x20226f0;  1 drivers
v0x1dc86a0_0 .net *"_s19", 0 0, L_0x2022780;  1 drivers
L_0x7f90268ab600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1d71990_0 .net/2s *"_s23", 0 0, L_0x7f90268ab600;  1 drivers
v0x1d71a70_0 .net "addORsub", 0 0, L_0x2021e50;  1 drivers
v0x1d71b10_0 .net "carryin", 0 0, L_0x2021c30;  1 drivers
v0x1d71c40_0 .net "carryout", 0 0, L_0x1db64a0;  1 drivers
v0x1d71d10_0 .net "modB", 0 0, L_0x2021a20;  1 drivers
v0x1d5abc0_0 .net "out", 0 0, L_0x2022590;  1 drivers
L_0x2021a90 .part v0x1f2dc50_0, 0, 1;
LS_0x20228a0_0_0 .concat8 [ 1 1 1 1], L_0x20226f0, L_0x2022780, L_0x2022280, L_0x7f90268ab600;
LS_0x20228a0_0_4 .concat8 [ 1 1 1 1], L_0x1db72f0, L_0x2022400, L_0x2022470, L_0x2022500;
L_0x20228a0 .concat8 [ 4 4 0 0], LS_0x20228a0_0_0, LS_0x20228a0_0_4;
S_0x1f7cd90 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2021b30 .functor XOR 1, L_0x2022bc0, L_0x2021a20, C4<0>, C4<0>;
L_0x2021e50 .functor XOR 1, L_0x2021b30, L_0x2021c30, C4<0>, C4<0>;
L_0x2021f80 .functor AND 1, L_0x2021b30, L_0x2021c30, C4<1>, C4<1>;
L_0x2022010 .functor AND 1, L_0x2022bc0, L_0x2021a20, C4<1>, C4<1>;
L_0x1db64a0 .functor OR 1, L_0x2021f80, L_0x2022010, C4<0>, C4<0>;
v0x1f7cf60_0 .net "A", 0 0, L_0x2022bc0;  alias, 1 drivers
v0x1f7d040_0 .net "B", 0 0, L_0x2021a20;  alias, 1 drivers
v0x1f020b0_0 .net "carryin", 0 0, L_0x2021c30;  alias, 1 drivers
v0x1f02150_0 .net "carryout", 0 0, L_0x1db64a0;  alias, 1 drivers
v0x1f7ffd0_0 .net "out1", 0 0, L_0x2021b30;  1 drivers
v0x1f800e0_0 .net "out2", 0 0, L_0x2021f80;  1 drivers
v0x1f801a0_0 .net "out3", 0 0, L_0x2022010;  1 drivers
v0x1f80260_0 .net "sum", 0 0, L_0x2021e50;  alias, 1 drivers
S_0x1d97e30 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1db72f0 .functor AND 1, L_0x2022bc0, L_0x2022c60, C4<1>, C4<1>;
v0x1d98070_0 .net "A", 0 0, L_0x2022bc0;  alias, 1 drivers
v0x1d98130_0 .net "B", 0 0, L_0x2022c60;  alias, 1 drivers
v0x1d93870_0 .net "out", 0 0, L_0x1db72f0;  1 drivers
S_0x1d939c0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1db2f20_0 .net "I", 7 0, L_0x20228a0;  alias, 1 drivers
v0x1db3000_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1db30c0_0 .net "out", 0 0, L_0x2022590;  alias, 1 drivers
L_0x2022590 .part/v L_0x20228a0, v0x1f2dc50_0, 1;
S_0x1db4a00 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2022400 .functor NAND 1, L_0x2022bc0, L_0x2022c60, C4<1>, C4<1>;
v0x1db4c20_0 .net "A", 0 0, L_0x2022bc0;  alias, 1 drivers
v0x1db4d30_0 .net "B", 0 0, L_0x2022c60;  alias, 1 drivers
v0x1db3210_0 .net "out", 0 0, L_0x2022400;  1 drivers
S_0x1db5750 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2022470 .functor NOR 1, L_0x2022bc0, L_0x2022c60, C4<0>, C4<0>;
v0x1db5970_0 .net "A", 0 0, L_0x2022bc0;  alias, 1 drivers
v0x1db5a30_0 .net "B", 0 0, L_0x2022c60;  alias, 1 drivers
v0x1db3cb0_0 .net "out", 0 0, L_0x2022470;  1 drivers
S_0x1db3db0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2022500 .functor OR 1, L_0x2022bc0, L_0x2022c60, C4<0>, C4<0>;
v0x1db3fd0_0 .net "A", 0 0, L_0x2022bc0;  alias, 1 drivers
v0x1db6530_0 .net "B", 0 0, L_0x2022c60;  alias, 1 drivers
v0x1db65f0_0 .net "out", 0 0, L_0x2022500;  1 drivers
S_0x1db66f0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2021a20 .functor XOR 1, L_0x2022c60, L_0x2021a90, C4<0>, C4<0>;
v0x1db7230_0 .net "A", 0 0, L_0x2022c60;  alias, 1 drivers
v0x1db7380_0 .net "B", 0 0, L_0x2021a90;  1 drivers
v0x1db7440_0 .net "out", 0 0, L_0x2021a20;  alias, 1 drivers
S_0x1db9280 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1ebb030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2022280 .functor XOR 1, L_0x2022bc0, L_0x2022c60, C4<0>, C4<0>;
v0x1db9450_0 .net "A", 0 0, L_0x2022bc0;  alias, 1 drivers
v0x1db9510_0 .net "B", 0 0, L_0x2022c60;  alias, 1 drivers
v0x1db95d0_0 .net "out", 0 0, L_0x2022280;  1 drivers
S_0x1d5acc0 .scope module, "alu17" "ALU_1bit" 8 135, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2023a10 .functor BUFZ 1, L_0x20231b0, C4<0>, C4<0>, C4<0>;
L_0x2023aa0 .functor BUFZ 1, L_0x20231b0, C4<0>, C4<0>, C4<0>;
v0x1d7fe20_0 .net "A", 0 0, L_0x2023ee0;  1 drivers
v0x1d8aab0_0 .net "B", 0 0, L_0x2022d00;  1 drivers
v0x1d8ab70_0 .net "I", 7 0, L_0x2023bc0;  1 drivers
v0x1d8ac70_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1d8ad10_0 .net *"_s15", 0 0, L_0x2023a10;  1 drivers
v0x1d8ae20_0 .net *"_s19", 0 0, L_0x2023aa0;  1 drivers
L_0x7f90268ab648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1d8c2d0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab648;  1 drivers
v0x1d8c390_0 .net "addORsub", 0 0, L_0x20231b0;  1 drivers
v0x1d8c430_0 .net "carryin", 0 0, L_0x2022da0;  1 drivers
v0x1d8c560_0 .net "carryout", 0 0, L_0x1d20cf0;  1 drivers
v0x1d8c630_0 .net "modB", 0 0, L_0x2019920;  1 drivers
v0x1dbe670_0 .net "out", 0 0, L_0x20238b0;  1 drivers
L_0x2019990 .part v0x1f2dc50_0, 0, 1;
LS_0x2023bc0_0_0 .concat8 [ 1 1 1 1], L_0x2023a10, L_0x2023aa0, L_0x20235a0, L_0x7f90268ab648;
LS_0x2023bc0_0_4 .concat8 [ 1 1 1 1], L_0x1d7fbc0, L_0x2023720, L_0x2023790, L_0x2023820;
L_0x2023bc0 .concat8 [ 4 4 0 0], LS_0x2023bc0_0_0, LS_0x2023bc0_0_4;
S_0x1d6e350 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20230b0 .functor XOR 1, L_0x2023ee0, L_0x2019920, C4<0>, C4<0>;
L_0x20231b0 .functor XOR 1, L_0x20230b0, L_0x2022da0, C4<0>, C4<0>;
L_0x20232c0 .functor AND 1, L_0x20230b0, L_0x2022da0, C4<1>, C4<1>;
L_0x2023330 .functor AND 1, L_0x2023ee0, L_0x2019920, C4<1>, C4<1>;
L_0x1d20cf0 .functor OR 1, L_0x20232c0, L_0x2023330, C4<0>, C4<0>;
v0x1d6e570_0 .net "A", 0 0, L_0x2023ee0;  alias, 1 drivers
v0x1d6e650_0 .net "B", 0 0, L_0x2019920;  alias, 1 drivers
v0x1d5af30_0 .net "carryin", 0 0, L_0x2022da0;  alias, 1 drivers
v0x1db1db0_0 .net "carryout", 0 0, L_0x1d20cf0;  alias, 1 drivers
v0x1db1e70_0 .net "out1", 0 0, L_0x20230b0;  1 drivers
v0x1db1f80_0 .net "out2", 0 0, L_0x20232c0;  1 drivers
v0x1db2040_0 .net "out3", 0 0, L_0x2023330;  1 drivers
v0x1db2100_0 .net "sum", 0 0, L_0x20231b0;  alias, 1 drivers
S_0x1d8dc50 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1d7fbc0 .functor AND 1, L_0x2023ee0, L_0x2022d00, C4<1>, C4<1>;
v0x1d8de90_0 .net "A", 0 0, L_0x2023ee0;  alias, 1 drivers
v0x1d8df50_0 .net "B", 0 0, L_0x2022d00;  alias, 1 drivers
v0x1d72b30_0 .net "out", 0 0, L_0x1d7fbc0;  1 drivers
S_0x1d72c80 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1d73c80_0 .net "I", 7 0, L_0x2023bc0;  alias, 1 drivers
v0x1d73d60_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1d73e20_0 .net "out", 0 0, L_0x20238b0;  alias, 1 drivers
L_0x20238b0 .part/v L_0x2023bc0, v0x1f2dc50_0, 1;
S_0x1d91580 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2023720 .functor NAND 1, L_0x2023ee0, L_0x2022d00, C4<1>, C4<1>;
v0x1d917a0_0 .net "A", 0 0, L_0x2023ee0;  alias, 1 drivers
v0x1d918b0_0 .net "B", 0 0, L_0x2022d00;  alias, 1 drivers
v0x1d73f70_0 .net "out", 0 0, L_0x2023720;  1 drivers
S_0x1d8f450 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2023790 .functor NOR 1, L_0x2023ee0, L_0x2022d00, C4<0>, C4<0>;
v0x1d8f670_0 .net "A", 0 0, L_0x2023ee0;  alias, 1 drivers
v0x1d8f730_0 .net "B", 0 0, L_0x2022d00;  alias, 1 drivers
v0x1dbb7d0_0 .net "out", 0 0, L_0x2023790;  1 drivers
S_0x1dbb8d0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2023820 .functor OR 1, L_0x2023ee0, L_0x2022d00, C4<0>, C4<0>;
v0x1dbbaf0_0 .net "A", 0 0, L_0x2023ee0;  alias, 1 drivers
v0x1d20d80_0 .net "B", 0 0, L_0x2022d00;  alias, 1 drivers
v0x1d20e40_0 .net "out", 0 0, L_0x2023820;  1 drivers
S_0x1d20f40 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2019920 .functor XOR 1, L_0x2022d00, L_0x2019990, C4<0>, C4<0>;
v0x1d7fb00_0 .net "A", 0 0, L_0x2022d00;  alias, 1 drivers
v0x1d7fc50_0 .net "B", 0 0, L_0x2019990;  1 drivers
v0x1d7fd10_0 .net "out", 0 0, L_0x2019920;  alias, 1 drivers
S_0x1d895e0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1d5acc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20235a0 .functor XOR 1, L_0x2023ee0, L_0x2022d00, C4<0>, C4<0>;
v0x1d897b0_0 .net "A", 0 0, L_0x2023ee0;  alias, 1 drivers
v0x1d89870_0 .net "B", 0 0, L_0x2022d00;  alias, 1 drivers
v0x1d89930_0 .net "out", 0 0, L_0x20235a0;  1 drivers
S_0x1dbe750 .scope module, "alu18" "ALU_1bit" 8 136, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2024c50 .functor BUFZ 1, L_0x2024410, C4<0>, C4<0>, C4<0>;
L_0x2024ce0 .functor BUFZ 1, L_0x2024410, C4<0>, C4<0>, C4<0>;
v0x1f97a20_0 .net "A", 0 0, L_0x2025120;  1 drivers
v0x1f97ac0_0 .net "B", 0 0, L_0x20251c0;  1 drivers
v0x1f97b80_0 .net "I", 7 0, L_0x2024e00;  1 drivers
v0x1f97c80_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f97d20_0 .net *"_s15", 0 0, L_0x2024c50;  1 drivers
v0x1f97e30_0 .net *"_s19", 0 0, L_0x2024ce0;  1 drivers
L_0x7f90268ab690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f97f10_0 .net/2s *"_s23", 0 0, L_0x7f90268ab690;  1 drivers
v0x1f97ff0_0 .net "addORsub", 0 0, L_0x2024410;  1 drivers
v0x1f98090_0 .net "carryin", 0 0, L_0x20241c0;  1 drivers
v0x1f981f0_0 .net "carryout", 0 0, L_0x1f96e30;  1 drivers
v0x1f982c0_0 .net "modB", 0 0, L_0x2023f80;  1 drivers
v0x1f98360_0 .net "out", 0 0, L_0x2024af0;  1 drivers
L_0x2023ff0 .part v0x1f2dc50_0, 0, 1;
LS_0x2024e00_0_0 .concat8 [ 1 1 1 1], L_0x2024c50, L_0x2024ce0, L_0x2024800, L_0x7f90268ab690;
LS_0x2024e00_0_4 .concat8 [ 1 1 1 1], L_0x1f97310, L_0x2024980, L_0x20249f0, L_0x2024a60;
L_0x2024e00 .concat8 [ 4 4 0 0], LS_0x2024e00_0_0, LS_0x2024e00_0_4;
S_0x1d9bb90 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2024090 .functor XOR 1, L_0x2025120, L_0x2023f80, C4<0>, C4<0>;
L_0x2024410 .functor XOR 1, L_0x2024090, L_0x20241c0, C4<0>, C4<0>;
L_0x2024520 .functor AND 1, L_0x2024090, L_0x20241c0, C4<1>, C4<1>;
L_0x2024590 .functor AND 1, L_0x2025120, L_0x2023f80, C4<1>, C4<1>;
L_0x1f96e30 .functor OR 1, L_0x2024520, L_0x2024590, C4<0>, C4<0>;
v0x1d9bdb0_0 .net "A", 0 0, L_0x2025120;  alias, 1 drivers
v0x1d9be90_0 .net "B", 0 0, L_0x2023f80;  alias, 1 drivers
v0x1dbe9c0_0 .net "carryin", 0 0, L_0x20241c0;  alias, 1 drivers
v0x1f952e0_0 .net "carryout", 0 0, L_0x1f96e30;  alias, 1 drivers
v0x1f95380_0 .net "out1", 0 0, L_0x2024090;  1 drivers
v0x1f95420_0 .net "out2", 0 0, L_0x2024520;  1 drivers
v0x1f954c0_0 .net "out3", 0 0, L_0x2024590;  1 drivers
v0x1f95580_0 .net "sum", 0 0, L_0x2024410;  alias, 1 drivers
S_0x1f956e0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f97310 .functor AND 1, L_0x2025120, L_0x20251c0, C4<1>, C4<1>;
v0x1f95920_0 .net "A", 0 0, L_0x2025120;  alias, 1 drivers
v0x1f959e0_0 .net "B", 0 0, L_0x20251c0;  alias, 1 drivers
v0x1f95a80_0 .net "out", 0 0, L_0x1f97310;  1 drivers
S_0x1f95bd0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f95e20_0 .net "I", 7 0, L_0x2024e00;  alias, 1 drivers
v0x1f95f00_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f95fc0_0 .net "out", 0 0, L_0x2024af0;  alias, 1 drivers
L_0x2024af0 .part/v L_0x2024e00, v0x1f2dc50_0, 1;
S_0x1f96110 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2024980 .functor NAND 1, L_0x2025120, L_0x20251c0, C4<1>, C4<1>;
v0x1f96330_0 .net "A", 0 0, L_0x2025120;  alias, 1 drivers
v0x1f96440_0 .net "B", 0 0, L_0x20251c0;  alias, 1 drivers
v0x1f96500_0 .net "out", 0 0, L_0x2024980;  1 drivers
S_0x1f96610 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20249f0 .functor NOR 1, L_0x2025120, L_0x20251c0, C4<0>, C4<0>;
v0x1f96880_0 .net "A", 0 0, L_0x2025120;  alias, 1 drivers
v0x1f96940_0 .net "B", 0 0, L_0x20251c0;  alias, 1 drivers
v0x1f96a50_0 .net "out", 0 0, L_0x20249f0;  1 drivers
S_0x1f96b50 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2024a60 .functor OR 1, L_0x2025120, L_0x20251c0, C4<0>, C4<0>;
v0x1f96d70_0 .net "A", 0 0, L_0x2025120;  alias, 1 drivers
v0x1f96ec0_0 .net "B", 0 0, L_0x20251c0;  alias, 1 drivers
v0x1f96f80_0 .net "out", 0 0, L_0x2024a60;  1 drivers
S_0x1f97080 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2023f80 .functor XOR 1, L_0x20251c0, L_0x2023ff0, C4<0>, C4<0>;
v0x1f97250_0 .net "A", 0 0, L_0x20251c0;  alias, 1 drivers
v0x1f973a0_0 .net "B", 0 0, L_0x2023ff0;  1 drivers
v0x1f97460_0 .net "out", 0 0, L_0x2023f80;  alias, 1 drivers
S_0x1f975a0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1dbe750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2024800 .functor XOR 1, L_0x2025120, L_0x20251c0, C4<0>, C4<0>;
v0x1f97770_0 .net "A", 0 0, L_0x2025120;  alias, 1 drivers
v0x1f97830_0 .net "B", 0 0, L_0x20251c0;  alias, 1 drivers
v0x1f978f0_0 .net "out", 0 0, L_0x2024800;  1 drivers
S_0x1f98440 .scope module, "alu19" "ALU_1bit" 8 137, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2025e70 .functor BUFZ 1, L_0x20255d0, C4<0>, C4<0>, C4<0>;
L_0x2025f00 .functor BUFZ 1, L_0x20255d0, C4<0>, C4<0>, C4<0>;
v0x1f9b3b0_0 .net "A", 0 0, L_0x2026340;  1 drivers
v0x1f9b450_0 .net "B", 0 0, L_0x2025260;  1 drivers
v0x1f9b510_0 .net "I", 7 0, L_0x2026020;  1 drivers
v0x1f9b610_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f9b6b0_0 .net *"_s15", 0 0, L_0x2025e70;  1 drivers
v0x1f9b7c0_0 .net *"_s19", 0 0, L_0x2025f00;  1 drivers
L_0x7f90268ab6d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f9b8a0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab6d8;  1 drivers
v0x1f9b980_0 .net "addORsub", 0 0, L_0x20255d0;  1 drivers
v0x1f9ba20_0 .net "carryin", 0 0, L_0x2025300;  1 drivers
v0x1f9bb80_0 .net "carryout", 0 0, L_0x1f9a7c0;  1 drivers
v0x1f9bc50_0 .net "modB", 0 0, L_0x20242f0;  1 drivers
v0x1f9bcf0_0 .net "out", 0 0, L_0x2025d10;  1 drivers
L_0x2025430 .part v0x1f2dc50_0, 0, 1;
LS_0x2026020_0_0 .concat8 [ 1 1 1 1], L_0x2025e70, L_0x2025f00, L_0x2025a00, L_0x7f90268ab6d8;
LS_0x2026020_0_4 .concat8 [ 1 1 1 1], L_0x1f9aca0, L_0x2025b80, L_0x2025bf0, L_0x2025c80;
L_0x2026020 .concat8 [ 4 4 0 0], LS_0x2026020_0_0, LS_0x2026020_0_4;
S_0x1f986b0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20254d0 .functor XOR 1, L_0x2026340, L_0x20242f0, C4<0>, C4<0>;
L_0x20255d0 .functor XOR 1, L_0x20254d0, L_0x2025300, C4<0>, C4<0>;
L_0x2025700 .functor AND 1, L_0x20254d0, L_0x2025300, C4<1>, C4<1>;
L_0x2025790 .functor AND 1, L_0x2026340, L_0x20242f0, C4<1>, C4<1>;
L_0x1f9a7c0 .functor OR 1, L_0x2025700, L_0x2025790, C4<0>, C4<0>;
v0x1f98950_0 .net "A", 0 0, L_0x2026340;  alias, 1 drivers
v0x1f98a30_0 .net "B", 0 0, L_0x20242f0;  alias, 1 drivers
v0x1f98af0_0 .net "carryin", 0 0, L_0x2025300;  alias, 1 drivers
v0x1f98bc0_0 .net "carryout", 0 0, L_0x1f9a7c0;  alias, 1 drivers
v0x1f98c80_0 .net "out1", 0 0, L_0x20254d0;  1 drivers
v0x1f98d90_0 .net "out2", 0 0, L_0x2025700;  1 drivers
v0x1f98e50_0 .net "out3", 0 0, L_0x2025790;  1 drivers
v0x1f98f10_0 .net "sum", 0 0, L_0x20255d0;  alias, 1 drivers
S_0x1f99070 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f9aca0 .functor AND 1, L_0x2026340, L_0x2025260, C4<1>, C4<1>;
v0x1f992b0_0 .net "A", 0 0, L_0x2026340;  alias, 1 drivers
v0x1f99370_0 .net "B", 0 0, L_0x2025260;  alias, 1 drivers
v0x1f99410_0 .net "out", 0 0, L_0x1f9aca0;  1 drivers
S_0x1f99560 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f997b0_0 .net "I", 7 0, L_0x2026020;  alias, 1 drivers
v0x1f99890_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f99950_0 .net "out", 0 0, L_0x2025d10;  alias, 1 drivers
L_0x2025d10 .part/v L_0x2026020, v0x1f2dc50_0, 1;
S_0x1f99aa0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2025b80 .functor NAND 1, L_0x2026340, L_0x2025260, C4<1>, C4<1>;
v0x1f99cc0_0 .net "A", 0 0, L_0x2026340;  alias, 1 drivers
v0x1f99dd0_0 .net "B", 0 0, L_0x2025260;  alias, 1 drivers
v0x1f99e90_0 .net "out", 0 0, L_0x2025b80;  1 drivers
S_0x1f99fa0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2025bf0 .functor NOR 1, L_0x2026340, L_0x2025260, C4<0>, C4<0>;
v0x1f9a210_0 .net "A", 0 0, L_0x2026340;  alias, 1 drivers
v0x1f9a2d0_0 .net "B", 0 0, L_0x2025260;  alias, 1 drivers
v0x1f9a3e0_0 .net "out", 0 0, L_0x2025bf0;  1 drivers
S_0x1f9a4e0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2025c80 .functor OR 1, L_0x2026340, L_0x2025260, C4<0>, C4<0>;
v0x1f9a700_0 .net "A", 0 0, L_0x2026340;  alias, 1 drivers
v0x1f9a850_0 .net "B", 0 0, L_0x2025260;  alias, 1 drivers
v0x1f9a910_0 .net "out", 0 0, L_0x2025c80;  1 drivers
S_0x1f9aa10 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20242f0 .functor XOR 1, L_0x2025260, L_0x2025430, C4<0>, C4<0>;
v0x1f9abe0_0 .net "A", 0 0, L_0x2025260;  alias, 1 drivers
v0x1f9ad30_0 .net "B", 0 0, L_0x2025430;  1 drivers
v0x1f9adf0_0 .net "out", 0 0, L_0x20242f0;  alias, 1 drivers
S_0x1f9af30 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f98440;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2025a00 .functor XOR 1, L_0x2026340, L_0x2025260, C4<0>, C4<0>;
v0x1f9b100_0 .net "A", 0 0, L_0x2026340;  alias, 1 drivers
v0x1f9b1c0_0 .net "B", 0 0, L_0x2025260;  alias, 1 drivers
v0x1f9b280_0 .net "out", 0 0, L_0x2025a00;  1 drivers
S_0x1f9bdd0 .scope module, "alu2" "ALU_1bit" 8 120, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2012610 .functor BUFZ 1, L_0x2011de0, C4<0>, C4<0>, C4<0>;
L_0x20126a0 .functor BUFZ 1, L_0x2011de0, C4<0>, C4<0>, C4<0>;
v0x1f9ed40_0 .net "A", 0 0, L_0x2012ae0;  1 drivers
v0x1f9ede0_0 .net "B", 0 0, L_0x2012c90;  1 drivers
v0x1f9eea0_0 .net "I", 7 0, L_0x20127c0;  1 drivers
v0x1f9efa0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f9f040_0 .net *"_s15", 0 0, L_0x2012610;  1 drivers
v0x1f9f150_0 .net *"_s19", 0 0, L_0x20126a0;  1 drivers
L_0x7f90268ab210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1f9f230_0 .net/2s *"_s23", 0 0, L_0x7f90268ab210;  1 drivers
v0x1f9f310_0 .net "addORsub", 0 0, L_0x2011de0;  1 drivers
v0x1f9f3b0_0 .net "carryin", 0 0, L_0x2012d30;  1 drivers
v0x1f9f510_0 .net "carryout", 0 0, L_0x1f9e150;  1 drivers
v0x1f9f5e0_0 .net "modB", 0 0, L_0x2011bd0;  1 drivers
v0x1f9f680_0 .net "out", 0 0, L_0x20124b0;  1 drivers
L_0x2011c40 .part v0x1f2dc50_0, 0, 1;
LS_0x20127c0_0_0 .concat8 [ 1 1 1 1], L_0x2012610, L_0x20126a0, L_0x20121a0, L_0x7f90268ab210;
LS_0x20127c0_0_4 .concat8 [ 1 1 1 1], L_0x1f9e630, L_0x2012320, L_0x2012390, L_0x2012420;
L_0x20127c0 .concat8 [ 4 4 0 0], LS_0x20127c0_0_0, LS_0x20127c0_0_4;
S_0x1f9c040 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2011ce0 .functor XOR 1, L_0x2012ae0, L_0x2011bd0, C4<0>, C4<0>;
L_0x2011de0 .functor XOR 1, L_0x2011ce0, L_0x2012d30, C4<0>, C4<0>;
L_0x2011ea0 .functor AND 1, L_0x2011ce0, L_0x2012d30, C4<1>, C4<1>;
L_0x2011f30 .functor AND 1, L_0x2012ae0, L_0x2011bd0, C4<1>, C4<1>;
L_0x1f9e150 .functor OR 1, L_0x2011ea0, L_0x2011f30, C4<0>, C4<0>;
v0x1f9c2e0_0 .net "A", 0 0, L_0x2012ae0;  alias, 1 drivers
v0x1f9c3c0_0 .net "B", 0 0, L_0x2011bd0;  alias, 1 drivers
v0x1f9c480_0 .net "carryin", 0 0, L_0x2012d30;  alias, 1 drivers
v0x1f9c550_0 .net "carryout", 0 0, L_0x1f9e150;  alias, 1 drivers
v0x1f9c610_0 .net "out1", 0 0, L_0x2011ce0;  1 drivers
v0x1f9c720_0 .net "out2", 0 0, L_0x2011ea0;  1 drivers
v0x1f9c7e0_0 .net "out3", 0 0, L_0x2011f30;  1 drivers
v0x1f9c8a0_0 .net "sum", 0 0, L_0x2011de0;  alias, 1 drivers
S_0x1f9ca00 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f9e630 .functor AND 1, L_0x2012ae0, L_0x2012c90, C4<1>, C4<1>;
v0x1f9cc40_0 .net "A", 0 0, L_0x2012ae0;  alias, 1 drivers
v0x1f9cd00_0 .net "B", 0 0, L_0x2012c90;  alias, 1 drivers
v0x1f9cda0_0 .net "out", 0 0, L_0x1f9e630;  1 drivers
S_0x1f9cef0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1f9d140_0 .net "I", 7 0, L_0x20127c0;  alias, 1 drivers
v0x1f9d220_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f9d2e0_0 .net "out", 0 0, L_0x20124b0;  alias, 1 drivers
L_0x20124b0 .part/v L_0x20127c0, v0x1f2dc50_0, 1;
S_0x1f9d430 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2012320 .functor NAND 1, L_0x2012ae0, L_0x2012c90, C4<1>, C4<1>;
v0x1f9d650_0 .net "A", 0 0, L_0x2012ae0;  alias, 1 drivers
v0x1f9d760_0 .net "B", 0 0, L_0x2012c90;  alias, 1 drivers
v0x1f9d820_0 .net "out", 0 0, L_0x2012320;  1 drivers
S_0x1f9d930 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2012390 .functor NOR 1, L_0x2012ae0, L_0x2012c90, C4<0>, C4<0>;
v0x1f9dba0_0 .net "A", 0 0, L_0x2012ae0;  alias, 1 drivers
v0x1f9dc60_0 .net "B", 0 0, L_0x2012c90;  alias, 1 drivers
v0x1f9dd70_0 .net "out", 0 0, L_0x2012390;  1 drivers
S_0x1f9de70 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2012420 .functor OR 1, L_0x2012ae0, L_0x2012c90, C4<0>, C4<0>;
v0x1f9e090_0 .net "A", 0 0, L_0x2012ae0;  alias, 1 drivers
v0x1f9e1e0_0 .net "B", 0 0, L_0x2012c90;  alias, 1 drivers
v0x1f9e2a0_0 .net "out", 0 0, L_0x2012420;  1 drivers
S_0x1f9e3a0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2011bd0 .functor XOR 1, L_0x2012c90, L_0x2011c40, C4<0>, C4<0>;
v0x1f9e570_0 .net "A", 0 0, L_0x2012c90;  alias, 1 drivers
v0x1f9e6c0_0 .net "B", 0 0, L_0x2011c40;  1 drivers
v0x1f9e780_0 .net "out", 0 0, L_0x2011bd0;  alias, 1 drivers
S_0x1f9e8c0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f9bdd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20121a0 .functor XOR 1, L_0x2012ae0, L_0x2012c90, C4<0>, C4<0>;
v0x1f9ea90_0 .net "A", 0 0, L_0x2012ae0;  alias, 1 drivers
v0x1f9eb50_0 .net "B", 0 0, L_0x2012c90;  alias, 1 drivers
v0x1f9ec10_0 .net "out", 0 0, L_0x20121a0;  1 drivers
S_0x1f9f7a0 .scope module, "alu20" "ALU_1bit" 8 138, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20270a0 .functor BUFZ 1, L_0x2026800, C4<0>, C4<0>, C4<0>;
L_0x2027130 .functor BUFZ 1, L_0x2026800, C4<0>, C4<0>, C4<0>;
v0x1fa2710_0 .net "A", 0 0, L_0x2027570;  1 drivers
v0x1fa27b0_0 .net "B", 0 0, L_0x2027610;  1 drivers
v0x1fa2870_0 .net "I", 7 0, L_0x2027250;  1 drivers
v0x1fa2970_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fa2a10_0 .net *"_s15", 0 0, L_0x20270a0;  1 drivers
v0x1fa2b20_0 .net *"_s19", 0 0, L_0x2027130;  1 drivers
L_0x7f90268ab720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fa2c00_0 .net/2s *"_s23", 0 0, L_0x7f90268ab720;  1 drivers
v0x1fa2ce0_0 .net "addORsub", 0 0, L_0x2026800;  1 drivers
v0x1fa2d80_0 .net "carryin", 0 0, L_0x20263e0;  1 drivers
v0x1fa2ee0_0 .net "carryout", 0 0, L_0x1fa1b20;  1 drivers
v0x1fa2fb0_0 .net "modB", 0 0, L_0x20265d0;  1 drivers
v0x1fa3050_0 .net "out", 0 0, L_0x2026f40;  1 drivers
L_0x2026640 .part v0x1f2dc50_0, 0, 1;
LS_0x2027250_0_0 .concat8 [ 1 1 1 1], L_0x20270a0, L_0x2027130, L_0x2026c30, L_0x7f90268ab720;
LS_0x2027250_0_4 .concat8 [ 1 1 1 1], L_0x1fa2000, L_0x2026db0, L_0x2026e20, L_0x2026eb0;
L_0x2027250 .concat8 [ 4 4 0 0], LS_0x2027250_0_0, LS_0x2027250_0_4;
S_0x1f9fa10 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20266e0 .functor XOR 1, L_0x2027570, L_0x20265d0, C4<0>, C4<0>;
L_0x2026800 .functor XOR 1, L_0x20266e0, L_0x20263e0, C4<0>, C4<0>;
L_0x2026930 .functor AND 1, L_0x20266e0, L_0x20263e0, C4<1>, C4<1>;
L_0x20269c0 .functor AND 1, L_0x2027570, L_0x20265d0, C4<1>, C4<1>;
L_0x1fa1b20 .functor OR 1, L_0x2026930, L_0x20269c0, C4<0>, C4<0>;
v0x1f9fcb0_0 .net "A", 0 0, L_0x2027570;  alias, 1 drivers
v0x1f9fd90_0 .net "B", 0 0, L_0x20265d0;  alias, 1 drivers
v0x1f9fe50_0 .net "carryin", 0 0, L_0x20263e0;  alias, 1 drivers
v0x1f9ff20_0 .net "carryout", 0 0, L_0x1fa1b20;  alias, 1 drivers
v0x1f9ffe0_0 .net "out1", 0 0, L_0x20266e0;  1 drivers
v0x1fa00f0_0 .net "out2", 0 0, L_0x2026930;  1 drivers
v0x1fa01b0_0 .net "out3", 0 0, L_0x20269c0;  1 drivers
v0x1fa0270_0 .net "sum", 0 0, L_0x2026800;  alias, 1 drivers
S_0x1fa03d0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fa2000 .functor AND 1, L_0x2027570, L_0x2027610, C4<1>, C4<1>;
v0x1fa0610_0 .net "A", 0 0, L_0x2027570;  alias, 1 drivers
v0x1fa06d0_0 .net "B", 0 0, L_0x2027610;  alias, 1 drivers
v0x1fa0770_0 .net "out", 0 0, L_0x1fa2000;  1 drivers
S_0x1fa08c0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fa0b10_0 .net "I", 7 0, L_0x2027250;  alias, 1 drivers
v0x1fa0bf0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fa0cb0_0 .net "out", 0 0, L_0x2026f40;  alias, 1 drivers
L_0x2026f40 .part/v L_0x2027250, v0x1f2dc50_0, 1;
S_0x1fa0e00 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2026db0 .functor NAND 1, L_0x2027570, L_0x2027610, C4<1>, C4<1>;
v0x1fa1020_0 .net "A", 0 0, L_0x2027570;  alias, 1 drivers
v0x1fa1130_0 .net "B", 0 0, L_0x2027610;  alias, 1 drivers
v0x1fa11f0_0 .net "out", 0 0, L_0x2026db0;  1 drivers
S_0x1fa1300 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2026e20 .functor NOR 1, L_0x2027570, L_0x2027610, C4<0>, C4<0>;
v0x1fa1570_0 .net "A", 0 0, L_0x2027570;  alias, 1 drivers
v0x1fa1630_0 .net "B", 0 0, L_0x2027610;  alias, 1 drivers
v0x1fa1740_0 .net "out", 0 0, L_0x2026e20;  1 drivers
S_0x1fa1840 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2026eb0 .functor OR 1, L_0x2027570, L_0x2027610, C4<0>, C4<0>;
v0x1fa1a60_0 .net "A", 0 0, L_0x2027570;  alias, 1 drivers
v0x1fa1bb0_0 .net "B", 0 0, L_0x2027610;  alias, 1 drivers
v0x1fa1c70_0 .net "out", 0 0, L_0x2026eb0;  1 drivers
S_0x1fa1d70 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20265d0 .functor XOR 1, L_0x2027610, L_0x2026640, C4<0>, C4<0>;
v0x1fa1f40_0 .net "A", 0 0, L_0x2027610;  alias, 1 drivers
v0x1fa2090_0 .net "B", 0 0, L_0x2026640;  1 drivers
v0x1fa2150_0 .net "out", 0 0, L_0x20265d0;  alias, 1 drivers
S_0x1fa2290 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1f9f7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2026c30 .functor XOR 1, L_0x2027570, L_0x2027610, C4<0>, C4<0>;
v0x1fa2460_0 .net "A", 0 0, L_0x2027570;  alias, 1 drivers
v0x1fa2520_0 .net "B", 0 0, L_0x2027610;  alias, 1 drivers
v0x1fa25e0_0 .net "out", 0 0, L_0x2026c30;  1 drivers
S_0x1fa3170 .scope module, "alu21" "ALU_1bit" 8 139, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20282d0 .functor BUFZ 1, L_0x2027a50, C4<0>, C4<0>, C4<0>;
L_0x2028360 .functor BUFZ 1, L_0x2027a50, C4<0>, C4<0>, C4<0>;
v0x1fa60e0_0 .net "A", 0 0, L_0x20287a0;  1 drivers
v0x1fa6180_0 .net "B", 0 0, L_0x20276b0;  1 drivers
v0x1fa6240_0 .net "I", 7 0, L_0x2028480;  1 drivers
v0x1fa6340_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fa63e0_0 .net *"_s15", 0 0, L_0x20282d0;  1 drivers
v0x1fa64f0_0 .net *"_s19", 0 0, L_0x2028360;  1 drivers
L_0x7f90268ab768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fa65d0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab768;  1 drivers
v0x1fa66b0_0 .net "addORsub", 0 0, L_0x2027a50;  1 drivers
v0x1fa6750_0 .net "carryin", 0 0, L_0x2027750;  1 drivers
v0x1fa68b0_0 .net "carryout", 0 0, L_0x1fa54f0;  1 drivers
v0x1fa6980_0 .net "modB", 0 0, L_0x2026510;  1 drivers
v0x1fa6a20_0 .net "out", 0 0, L_0x2028170;  1 drivers
L_0x20278b0 .part v0x1f2dc50_0, 0, 1;
LS_0x2028480_0_0 .concat8 [ 1 1 1 1], L_0x20282d0, L_0x2028360, L_0x2027e60, L_0x7f90268ab768;
LS_0x2028480_0_4 .concat8 [ 1 1 1 1], L_0x1fa59d0, L_0x2027fe0, L_0x2028050, L_0x20280e0;
L_0x2028480 .concat8 [ 4 4 0 0], LS_0x2028480_0_0, LS_0x2028480_0_4;
S_0x1fa33e0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2027950 .functor XOR 1, L_0x20287a0, L_0x2026510, C4<0>, C4<0>;
L_0x2027a50 .functor XOR 1, L_0x2027950, L_0x2027750, C4<0>, C4<0>;
L_0x2027b60 .functor AND 1, L_0x2027950, L_0x2027750, C4<1>, C4<1>;
L_0x2027bf0 .functor AND 1, L_0x20287a0, L_0x2026510, C4<1>, C4<1>;
L_0x1fa54f0 .functor OR 1, L_0x2027b60, L_0x2027bf0, C4<0>, C4<0>;
v0x1fa3680_0 .net "A", 0 0, L_0x20287a0;  alias, 1 drivers
v0x1fa3760_0 .net "B", 0 0, L_0x2026510;  alias, 1 drivers
v0x1fa3820_0 .net "carryin", 0 0, L_0x2027750;  alias, 1 drivers
v0x1fa38f0_0 .net "carryout", 0 0, L_0x1fa54f0;  alias, 1 drivers
v0x1fa39b0_0 .net "out1", 0 0, L_0x2027950;  1 drivers
v0x1fa3ac0_0 .net "out2", 0 0, L_0x2027b60;  1 drivers
v0x1fa3b80_0 .net "out3", 0 0, L_0x2027bf0;  1 drivers
v0x1fa3c40_0 .net "sum", 0 0, L_0x2027a50;  alias, 1 drivers
S_0x1fa3da0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fa59d0 .functor AND 1, L_0x20287a0, L_0x20276b0, C4<1>, C4<1>;
v0x1fa3fe0_0 .net "A", 0 0, L_0x20287a0;  alias, 1 drivers
v0x1fa40a0_0 .net "B", 0 0, L_0x20276b0;  alias, 1 drivers
v0x1fa4140_0 .net "out", 0 0, L_0x1fa59d0;  1 drivers
S_0x1fa4290 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fa44e0_0 .net "I", 7 0, L_0x2028480;  alias, 1 drivers
v0x1fa45c0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fa4680_0 .net "out", 0 0, L_0x2028170;  alias, 1 drivers
L_0x2028170 .part/v L_0x2028480, v0x1f2dc50_0, 1;
S_0x1fa47d0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2027fe0 .functor NAND 1, L_0x20287a0, L_0x20276b0, C4<1>, C4<1>;
v0x1fa49f0_0 .net "A", 0 0, L_0x20287a0;  alias, 1 drivers
v0x1fa4b00_0 .net "B", 0 0, L_0x20276b0;  alias, 1 drivers
v0x1fa4bc0_0 .net "out", 0 0, L_0x2027fe0;  1 drivers
S_0x1fa4cd0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2028050 .functor NOR 1, L_0x20287a0, L_0x20276b0, C4<0>, C4<0>;
v0x1fa4f40_0 .net "A", 0 0, L_0x20287a0;  alias, 1 drivers
v0x1fa5000_0 .net "B", 0 0, L_0x20276b0;  alias, 1 drivers
v0x1fa5110_0 .net "out", 0 0, L_0x2028050;  1 drivers
S_0x1fa5210 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20280e0 .functor OR 1, L_0x20287a0, L_0x20276b0, C4<0>, C4<0>;
v0x1fa5430_0 .net "A", 0 0, L_0x20287a0;  alias, 1 drivers
v0x1fa5580_0 .net "B", 0 0, L_0x20276b0;  alias, 1 drivers
v0x1fa5640_0 .net "out", 0 0, L_0x20280e0;  1 drivers
S_0x1fa5740 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2026510 .functor XOR 1, L_0x20276b0, L_0x20278b0, C4<0>, C4<0>;
v0x1fa5910_0 .net "A", 0 0, L_0x20276b0;  alias, 1 drivers
v0x1fa5a60_0 .net "B", 0 0, L_0x20278b0;  1 drivers
v0x1fa5b20_0 .net "out", 0 0, L_0x2026510;  alias, 1 drivers
S_0x1fa5c60 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fa3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2027e60 .functor XOR 1, L_0x20287a0, L_0x20276b0, C4<0>, C4<0>;
v0x1fa5e30_0 .net "A", 0 0, L_0x20287a0;  alias, 1 drivers
v0x1fa5ef0_0 .net "B", 0 0, L_0x20276b0;  alias, 1 drivers
v0x1fa5fb0_0 .net "out", 0 0, L_0x2027e60;  1 drivers
S_0x1fa6b40 .scope module, "alu22" "ALU_1bit" 8 140, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2029510 .functor BUFZ 1, L_0x2028c70, C4<0>, C4<0>, C4<0>;
L_0x20295a0 .functor BUFZ 1, L_0x2028c70, C4<0>, C4<0>, C4<0>;
v0x1fa9ab0_0 .net "A", 0 0, L_0x20299e0;  1 drivers
v0x1fa9b50_0 .net "B", 0 0, L_0x2029a80;  1 drivers
v0x1fa9c10_0 .net "I", 7 0, L_0x20296c0;  1 drivers
v0x1fa9d10_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1f7f530_0 .net *"_s15", 0 0, L_0x2029510;  1 drivers
v0x1f7f640_0 .net *"_s19", 0 0, L_0x20295a0;  1 drivers
L_0x7f90268ab7b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1faa1c0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab7b0;  1 drivers
v0x1faa260_0 .net "addORsub", 0 0, L_0x2028c70;  1 drivers
v0x1faa300_0 .net "carryin", 0 0, L_0x2028840;  1 drivers
v0x1faa430_0 .net "carryout", 0 0, L_0x1fa8ec0;  1 drivers
v0x1faa500_0 .net "modB", 0 0, L_0x2028a60;  1 drivers
v0x1faa5a0_0 .net "out", 0 0, L_0x20293b0;  1 drivers
L_0x2028ad0 .part v0x1f2dc50_0, 0, 1;
LS_0x20296c0_0_0 .concat8 [ 1 1 1 1], L_0x2029510, L_0x20295a0, L_0x20290a0, L_0x7f90268ab7b0;
LS_0x20296c0_0_4 .concat8 [ 1 1 1 1], L_0x1fa93a0, L_0x2029220, L_0x2029290, L_0x2029320;
L_0x20296c0 .concat8 [ 4 4 0 0], LS_0x20296c0_0_0, LS_0x20296c0_0_4;
S_0x1fa6db0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2028b70 .functor XOR 1, L_0x20299e0, L_0x2028a60, C4<0>, C4<0>;
L_0x2028c70 .functor XOR 1, L_0x2028b70, L_0x2028840, C4<0>, C4<0>;
L_0x2028da0 .functor AND 1, L_0x2028b70, L_0x2028840, C4<1>, C4<1>;
L_0x2028e30 .functor AND 1, L_0x20299e0, L_0x2028a60, C4<1>, C4<1>;
L_0x1fa8ec0 .functor OR 1, L_0x2028da0, L_0x2028e30, C4<0>, C4<0>;
v0x1fa7050_0 .net "A", 0 0, L_0x20299e0;  alias, 1 drivers
v0x1fa7130_0 .net "B", 0 0, L_0x2028a60;  alias, 1 drivers
v0x1fa71f0_0 .net "carryin", 0 0, L_0x2028840;  alias, 1 drivers
v0x1fa72c0_0 .net "carryout", 0 0, L_0x1fa8ec0;  alias, 1 drivers
v0x1fa7380_0 .net "out1", 0 0, L_0x2028b70;  1 drivers
v0x1fa7490_0 .net "out2", 0 0, L_0x2028da0;  1 drivers
v0x1fa7550_0 .net "out3", 0 0, L_0x2028e30;  1 drivers
v0x1fa7610_0 .net "sum", 0 0, L_0x2028c70;  alias, 1 drivers
S_0x1fa7770 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fa93a0 .functor AND 1, L_0x20299e0, L_0x2029a80, C4<1>, C4<1>;
v0x1fa79b0_0 .net "A", 0 0, L_0x20299e0;  alias, 1 drivers
v0x1fa7a70_0 .net "B", 0 0, L_0x2029a80;  alias, 1 drivers
v0x1fa7b10_0 .net "out", 0 0, L_0x1fa93a0;  1 drivers
S_0x1fa7c60 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fa7eb0_0 .net "I", 7 0, L_0x20296c0;  alias, 1 drivers
v0x1fa7f90_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fa8050_0 .net "out", 0 0, L_0x20293b0;  alias, 1 drivers
L_0x20293b0 .part/v L_0x20296c0, v0x1f2dc50_0, 1;
S_0x1fa81a0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2029220 .functor NAND 1, L_0x20299e0, L_0x2029a80, C4<1>, C4<1>;
v0x1fa83c0_0 .net "A", 0 0, L_0x20299e0;  alias, 1 drivers
v0x1fa84d0_0 .net "B", 0 0, L_0x2029a80;  alias, 1 drivers
v0x1fa8590_0 .net "out", 0 0, L_0x2029220;  1 drivers
S_0x1fa86a0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2029290 .functor NOR 1, L_0x20299e0, L_0x2029a80, C4<0>, C4<0>;
v0x1fa8910_0 .net "A", 0 0, L_0x20299e0;  alias, 1 drivers
v0x1fa89d0_0 .net "B", 0 0, L_0x2029a80;  alias, 1 drivers
v0x1fa8ae0_0 .net "out", 0 0, L_0x2029290;  1 drivers
S_0x1fa8be0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2029320 .functor OR 1, L_0x20299e0, L_0x2029a80, C4<0>, C4<0>;
v0x1fa8e00_0 .net "A", 0 0, L_0x20299e0;  alias, 1 drivers
v0x1fa8f50_0 .net "B", 0 0, L_0x2029a80;  alias, 1 drivers
v0x1fa9010_0 .net "out", 0 0, L_0x2029320;  1 drivers
S_0x1fa9110 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2028a60 .functor XOR 1, L_0x2029a80, L_0x2028ad0, C4<0>, C4<0>;
v0x1fa92e0_0 .net "A", 0 0, L_0x2029a80;  alias, 1 drivers
v0x1fa9430_0 .net "B", 0 0, L_0x2028ad0;  1 drivers
v0x1fa94f0_0 .net "out", 0 0, L_0x2028a60;  alias, 1 drivers
S_0x1fa9630 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fa6b40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20290a0 .functor XOR 1, L_0x20299e0, L_0x2029a80, C4<0>, C4<0>;
v0x1fa9800_0 .net "A", 0 0, L_0x20299e0;  alias, 1 drivers
v0x1fa98c0_0 .net "B", 0 0, L_0x2029a80;  alias, 1 drivers
v0x1fa9980_0 .net "out", 0 0, L_0x20290a0;  1 drivers
S_0x1faa6c0 .scope module, "alu23" "ALU_1bit" 8 141, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x202a740 .functor BUFZ 1, L_0x2029ea0, C4<0>, C4<0>, C4<0>;
L_0x202a7d0 .functor BUFZ 1, L_0x2029ea0, C4<0>, C4<0>, C4<0>;
v0x1fad6b0_0 .net "A", 0 0, L_0x202ac10;  1 drivers
v0x1fad750_0 .net "B", 0 0, L_0x2029b20;  1 drivers
v0x1fad810_0 .net "I", 7 0, L_0x202a8f0;  1 drivers
v0x1fad910_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fad9b0_0 .net *"_s15", 0 0, L_0x202a740;  1 drivers
v0x1fadac0_0 .net *"_s19", 0 0, L_0x202a7d0;  1 drivers
L_0x7f90268ab7f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fadba0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab7f8;  1 drivers
v0x1fadc80_0 .net "addORsub", 0 0, L_0x2029ea0;  1 drivers
v0x1fadd20_0 .net "carryin", 0 0, L_0x2029bc0;  1 drivers
v0x1fade80_0 .net "carryout", 0 0, L_0x1facac0;  1 drivers
v0x1fadf50_0 .net "modB", 0 0, L_0x2028970;  1 drivers
v0x1fadff0_0 .net "out", 0 0, L_0x202a5e0;  1 drivers
L_0x2029d50 .part v0x1f2dc50_0, 0, 1;
LS_0x202a8f0_0_0 .concat8 [ 1 1 1 1], L_0x202a740, L_0x202a7d0, L_0x202a2d0, L_0x7f90268ab7f8;
LS_0x202a8f0_0_4 .concat8 [ 1 1 1 1], L_0x1facfa0, L_0x202a450, L_0x202a4c0, L_0x202a550;
L_0x202a8f0 .concat8 [ 4 4 0 0], LS_0x202a8f0_0_0, LS_0x202a8f0_0_4;
S_0x1faaa40 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20289e0 .functor XOR 1, L_0x202ac10, L_0x2028970, C4<0>, C4<0>;
L_0x2029ea0 .functor XOR 1, L_0x20289e0, L_0x2029bc0, C4<0>, C4<0>;
L_0x2029fd0 .functor AND 1, L_0x20289e0, L_0x2029bc0, C4<1>, C4<1>;
L_0x202a060 .functor AND 1, L_0x202ac10, L_0x2028970, C4<1>, C4<1>;
L_0x1facac0 .functor OR 1, L_0x2029fd0, L_0x202a060, C4<0>, C4<0>;
v0x1faac70_0 .net "A", 0 0, L_0x202ac10;  alias, 1 drivers
v0x1faad30_0 .net "B", 0 0, L_0x2028970;  alias, 1 drivers
v0x1faadf0_0 .net "carryin", 0 0, L_0x2029bc0;  alias, 1 drivers
v0x1faaec0_0 .net "carryout", 0 0, L_0x1facac0;  alias, 1 drivers
v0x1faaf80_0 .net "out1", 0 0, L_0x20289e0;  1 drivers
v0x1fab090_0 .net "out2", 0 0, L_0x2029fd0;  1 drivers
v0x1fab150_0 .net "out3", 0 0, L_0x202a060;  1 drivers
v0x1fab210_0 .net "sum", 0 0, L_0x2029ea0;  alias, 1 drivers
S_0x1fab370 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1facfa0 .functor AND 1, L_0x202ac10, L_0x2029b20, C4<1>, C4<1>;
v0x1fab5b0_0 .net "A", 0 0, L_0x202ac10;  alias, 1 drivers
v0x1fab670_0 .net "B", 0 0, L_0x2029b20;  alias, 1 drivers
v0x1fab710_0 .net "out", 0 0, L_0x1facfa0;  1 drivers
S_0x1fab860 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fabab0_0 .net "I", 7 0, L_0x202a8f0;  alias, 1 drivers
v0x1fabb90_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fabc50_0 .net "out", 0 0, L_0x202a5e0;  alias, 1 drivers
L_0x202a5e0 .part/v L_0x202a8f0, v0x1f2dc50_0, 1;
S_0x1fabda0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202a450 .functor NAND 1, L_0x202ac10, L_0x2029b20, C4<1>, C4<1>;
v0x1fabfc0_0 .net "A", 0 0, L_0x202ac10;  alias, 1 drivers
v0x1fac0d0_0 .net "B", 0 0, L_0x2029b20;  alias, 1 drivers
v0x1fac190_0 .net "out", 0 0, L_0x202a450;  1 drivers
S_0x1fac2a0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202a4c0 .functor NOR 1, L_0x202ac10, L_0x2029b20, C4<0>, C4<0>;
v0x1fac510_0 .net "A", 0 0, L_0x202ac10;  alias, 1 drivers
v0x1fac5d0_0 .net "B", 0 0, L_0x2029b20;  alias, 1 drivers
v0x1fac6e0_0 .net "out", 0 0, L_0x202a4c0;  1 drivers
S_0x1fac7e0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202a550 .functor OR 1, L_0x202ac10, L_0x2029b20, C4<0>, C4<0>;
v0x1faca00_0 .net "A", 0 0, L_0x202ac10;  alias, 1 drivers
v0x1facb50_0 .net "B", 0 0, L_0x2029b20;  alias, 1 drivers
v0x1facc10_0 .net "out", 0 0, L_0x202a550;  1 drivers
S_0x1facd10 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2028970 .functor XOR 1, L_0x2029b20, L_0x2029d50, C4<0>, C4<0>;
v0x1facee0_0 .net "A", 0 0, L_0x2029b20;  alias, 1 drivers
v0x1fad030_0 .net "B", 0 0, L_0x2029d50;  1 drivers
v0x1fad0f0_0 .net "out", 0 0, L_0x2028970;  alias, 1 drivers
S_0x1fad230 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1faa6c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202a2d0 .functor XOR 1, L_0x202ac10, L_0x2029b20, C4<0>, C4<0>;
v0x1fad400_0 .net "A", 0 0, L_0x202ac10;  alias, 1 drivers
v0x1fad4c0_0 .net "B", 0 0, L_0x2029b20;  alias, 1 drivers
v0x1fad580_0 .net "out", 0 0, L_0x202a2d0;  1 drivers
S_0x1fae110 .scope module, "alu24" "ALU_1bit" 8 142, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x202b970 .functor BUFZ 1, L_0x202b110, C4<0>, C4<0>, C4<0>;
L_0x202ba00 .functor BUFZ 1, L_0x202b110, C4<0>, C4<0>, C4<0>;
v0x1fb1080_0 .net "A", 0 0, L_0x202be40;  1 drivers
v0x1fb1120_0 .net "B", 0 0, L_0x202bee0;  1 drivers
v0x1fb11e0_0 .net "I", 7 0, L_0x202bb20;  1 drivers
v0x1fb12e0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fb1380_0 .net *"_s15", 0 0, L_0x202b970;  1 drivers
v0x1fb1490_0 .net *"_s19", 0 0, L_0x202ba00;  1 drivers
L_0x7f90268ab840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fb1570_0 .net/2s *"_s23", 0 0, L_0x7f90268ab840;  1 drivers
v0x1fb1650_0 .net "addORsub", 0 0, L_0x202b110;  1 drivers
v0x1fb16f0_0 .net "carryin", 0 0, L_0x202acb0;  1 drivers
v0x1fb1850_0 .net "carryout", 0 0, L_0x1fb0490;  1 drivers
v0x1fb1920_0 .net "modB", 0 0, L_0x202af00;  1 drivers
v0x1fb19c0_0 .net "out", 0 0, L_0x202b810;  1 drivers
L_0x202af70 .part v0x1f2dc50_0, 0, 1;
LS_0x202bb20_0_0 .concat8 [ 1 1 1 1], L_0x202b970, L_0x202ba00, L_0x202b500, L_0x7f90268ab840;
LS_0x202bb20_0_4 .concat8 [ 1 1 1 1], L_0x1fb0970, L_0x202b680, L_0x202b6f0, L_0x202b780;
L_0x202bb20 .concat8 [ 4 4 0 0], LS_0x202bb20_0_0, LS_0x202bb20_0_4;
S_0x1fae380 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x202b010 .functor XOR 1, L_0x202be40, L_0x202af00, C4<0>, C4<0>;
L_0x202b110 .functor XOR 1, L_0x202b010, L_0x202acb0, C4<0>, C4<0>;
L_0x202b220 .functor AND 1, L_0x202b010, L_0x202acb0, C4<1>, C4<1>;
L_0x202b290 .functor AND 1, L_0x202be40, L_0x202af00, C4<1>, C4<1>;
L_0x1fb0490 .functor OR 1, L_0x202b220, L_0x202b290, C4<0>, C4<0>;
v0x1fae620_0 .net "A", 0 0, L_0x202be40;  alias, 1 drivers
v0x1fae700_0 .net "B", 0 0, L_0x202af00;  alias, 1 drivers
v0x1fae7c0_0 .net "carryin", 0 0, L_0x202acb0;  alias, 1 drivers
v0x1fae890_0 .net "carryout", 0 0, L_0x1fb0490;  alias, 1 drivers
v0x1fae950_0 .net "out1", 0 0, L_0x202b010;  1 drivers
v0x1faea60_0 .net "out2", 0 0, L_0x202b220;  1 drivers
v0x1faeb20_0 .net "out3", 0 0, L_0x202b290;  1 drivers
v0x1faebe0_0 .net "sum", 0 0, L_0x202b110;  alias, 1 drivers
S_0x1faed40 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fb0970 .functor AND 1, L_0x202be40, L_0x202bee0, C4<1>, C4<1>;
v0x1faef80_0 .net "A", 0 0, L_0x202be40;  alias, 1 drivers
v0x1faf040_0 .net "B", 0 0, L_0x202bee0;  alias, 1 drivers
v0x1faf0e0_0 .net "out", 0 0, L_0x1fb0970;  1 drivers
S_0x1faf230 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1faf480_0 .net "I", 7 0, L_0x202bb20;  alias, 1 drivers
v0x1faf560_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1faf620_0 .net "out", 0 0, L_0x202b810;  alias, 1 drivers
L_0x202b810 .part/v L_0x202bb20, v0x1f2dc50_0, 1;
S_0x1faf770 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202b680 .functor NAND 1, L_0x202be40, L_0x202bee0, C4<1>, C4<1>;
v0x1faf990_0 .net "A", 0 0, L_0x202be40;  alias, 1 drivers
v0x1fafaa0_0 .net "B", 0 0, L_0x202bee0;  alias, 1 drivers
v0x1fafb60_0 .net "out", 0 0, L_0x202b680;  1 drivers
S_0x1fafc70 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202b6f0 .functor NOR 1, L_0x202be40, L_0x202bee0, C4<0>, C4<0>;
v0x1fafee0_0 .net "A", 0 0, L_0x202be40;  alias, 1 drivers
v0x1faffa0_0 .net "B", 0 0, L_0x202bee0;  alias, 1 drivers
v0x1fb00b0_0 .net "out", 0 0, L_0x202b6f0;  1 drivers
S_0x1fb01b0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202b780 .functor OR 1, L_0x202be40, L_0x202bee0, C4<0>, C4<0>;
v0x1fb03d0_0 .net "A", 0 0, L_0x202be40;  alias, 1 drivers
v0x1fb0520_0 .net "B", 0 0, L_0x202bee0;  alias, 1 drivers
v0x1fb05e0_0 .net "out", 0 0, L_0x202b780;  1 drivers
S_0x1fb06e0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202af00 .functor XOR 1, L_0x202bee0, L_0x202af70, C4<0>, C4<0>;
v0x1fb08b0_0 .net "A", 0 0, L_0x202bee0;  alias, 1 drivers
v0x1fb0a00_0 .net "B", 0 0, L_0x202af70;  1 drivers
v0x1fb0ac0_0 .net "out", 0 0, L_0x202af00;  alias, 1 drivers
S_0x1fb0c00 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fae110;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202b500 .functor XOR 1, L_0x202be40, L_0x202bee0, C4<0>, C4<0>;
v0x1fb0dd0_0 .net "A", 0 0, L_0x202be40;  alias, 1 drivers
v0x1fb0e90_0 .net "B", 0 0, L_0x202bee0;  alias, 1 drivers
v0x1fb0f50_0 .net "out", 0 0, L_0x202b500;  1 drivers
S_0x1fb1ae0 .scope module, "alu25" "ALU_1bit" 8 143, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x202cba0 .functor BUFZ 1, L_0x202c300, C4<0>, C4<0>, C4<0>;
L_0x202cc30 .functor BUFZ 1, L_0x202c300, C4<0>, C4<0>, C4<0>;
v0x1fb4a50_0 .net "A", 0 0, L_0x202d070;  1 drivers
v0x1fb4af0_0 .net "B", 0 0, L_0x202bf80;  1 drivers
v0x1fb4bb0_0 .net "I", 7 0, L_0x202cd50;  1 drivers
v0x1fb4cb0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fb4d50_0 .net *"_s15", 0 0, L_0x202cba0;  1 drivers
v0x1fb4e60_0 .net *"_s19", 0 0, L_0x202cc30;  1 drivers
L_0x7f90268ab888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fb4f40_0 .net/2s *"_s23", 0 0, L_0x7f90268ab888;  1 drivers
v0x1fb5020_0 .net "addORsub", 0 0, L_0x202c300;  1 drivers
v0x1fb50c0_0 .net "carryin", 0 0, L_0x202c020;  1 drivers
v0x1fb5220_0 .net "carryout", 0 0, L_0x1fb3e60;  1 drivers
v0x1fb52f0_0 .net "modB", 0 0, L_0x202ade0;  1 drivers
v0x1fb5390_0 .net "out", 0 0, L_0x202ca40;  1 drivers
L_0x202ae50 .part v0x1f2dc50_0, 0, 1;
LS_0x202cd50_0_0 .concat8 [ 1 1 1 1], L_0x202cba0, L_0x202cc30, L_0x202c730, L_0x7f90268ab888;
LS_0x202cd50_0_4 .concat8 [ 1 1 1 1], L_0x1fb4340, L_0x202c8b0, L_0x202c920, L_0x202c9b0;
L_0x202cd50 .concat8 [ 4 4 0 0], LS_0x202cd50_0_0, LS_0x202cd50_0_4;
S_0x1fb1d50 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x202c1e0 .functor XOR 1, L_0x202d070, L_0x202ade0, C4<0>, C4<0>;
L_0x202c300 .functor XOR 1, L_0x202c1e0, L_0x202c020, C4<0>, C4<0>;
L_0x202c430 .functor AND 1, L_0x202c1e0, L_0x202c020, C4<1>, C4<1>;
L_0x202c4c0 .functor AND 1, L_0x202d070, L_0x202ade0, C4<1>, C4<1>;
L_0x1fb3e60 .functor OR 1, L_0x202c430, L_0x202c4c0, C4<0>, C4<0>;
v0x1fb1ff0_0 .net "A", 0 0, L_0x202d070;  alias, 1 drivers
v0x1fb20d0_0 .net "B", 0 0, L_0x202ade0;  alias, 1 drivers
v0x1fb2190_0 .net "carryin", 0 0, L_0x202c020;  alias, 1 drivers
v0x1fb2260_0 .net "carryout", 0 0, L_0x1fb3e60;  alias, 1 drivers
v0x1fb2320_0 .net "out1", 0 0, L_0x202c1e0;  1 drivers
v0x1fb2430_0 .net "out2", 0 0, L_0x202c430;  1 drivers
v0x1fb24f0_0 .net "out3", 0 0, L_0x202c4c0;  1 drivers
v0x1fb25b0_0 .net "sum", 0 0, L_0x202c300;  alias, 1 drivers
S_0x1fb2710 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fb4340 .functor AND 1, L_0x202d070, L_0x202bf80, C4<1>, C4<1>;
v0x1fb2950_0 .net "A", 0 0, L_0x202d070;  alias, 1 drivers
v0x1fb2a10_0 .net "B", 0 0, L_0x202bf80;  alias, 1 drivers
v0x1fb2ab0_0 .net "out", 0 0, L_0x1fb4340;  1 drivers
S_0x1fb2c00 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fb2e50_0 .net "I", 7 0, L_0x202cd50;  alias, 1 drivers
v0x1fb2f30_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fb2ff0_0 .net "out", 0 0, L_0x202ca40;  alias, 1 drivers
L_0x202ca40 .part/v L_0x202cd50, v0x1f2dc50_0, 1;
S_0x1fb3140 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202c8b0 .functor NAND 1, L_0x202d070, L_0x202bf80, C4<1>, C4<1>;
v0x1fb3360_0 .net "A", 0 0, L_0x202d070;  alias, 1 drivers
v0x1fb3470_0 .net "B", 0 0, L_0x202bf80;  alias, 1 drivers
v0x1fb3530_0 .net "out", 0 0, L_0x202c8b0;  1 drivers
S_0x1fb3640 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202c920 .functor NOR 1, L_0x202d070, L_0x202bf80, C4<0>, C4<0>;
v0x1fb38b0_0 .net "A", 0 0, L_0x202d070;  alias, 1 drivers
v0x1fb3970_0 .net "B", 0 0, L_0x202bf80;  alias, 1 drivers
v0x1fb3a80_0 .net "out", 0 0, L_0x202c920;  1 drivers
S_0x1fb3b80 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202c9b0 .functor OR 1, L_0x202d070, L_0x202bf80, C4<0>, C4<0>;
v0x1fb3da0_0 .net "A", 0 0, L_0x202d070;  alias, 1 drivers
v0x1fb3ef0_0 .net "B", 0 0, L_0x202bf80;  alias, 1 drivers
v0x1fb3fb0_0 .net "out", 0 0, L_0x202c9b0;  1 drivers
S_0x1fb40b0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202ade0 .functor XOR 1, L_0x202bf80, L_0x202ae50, C4<0>, C4<0>;
v0x1fb4280_0 .net "A", 0 0, L_0x202bf80;  alias, 1 drivers
v0x1fb43d0_0 .net "B", 0 0, L_0x202ae50;  1 drivers
v0x1fb4490_0 .net "out", 0 0, L_0x202ade0;  alias, 1 drivers
S_0x1fb45d0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fb1ae0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202c730 .functor XOR 1, L_0x202d070, L_0x202bf80, C4<0>, C4<0>;
v0x1fb47a0_0 .net "A", 0 0, L_0x202d070;  alias, 1 drivers
v0x1fb4860_0 .net "B", 0 0, L_0x202bf80;  alias, 1 drivers
v0x1fb4920_0 .net "out", 0 0, L_0x202c730;  1 drivers
S_0x1fb54b0 .scope module, "alu26" "ALU_1bit" 8 144, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x202ddd0 .functor BUFZ 1, L_0x202d530, C4<0>, C4<0>, C4<0>;
L_0x202de60 .functor BUFZ 1, L_0x202d530, C4<0>, C4<0>, C4<0>;
v0x1fb8420_0 .net "A", 0 0, L_0x202e2a0;  1 drivers
v0x1fb84c0_0 .net "B", 0 0, L_0x201bc40;  1 drivers
v0x1fb8580_0 .net "I", 7 0, L_0x202df80;  1 drivers
v0x1fb8680_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fb8720_0 .net *"_s15", 0 0, L_0x202ddd0;  1 drivers
v0x1fb8830_0 .net *"_s19", 0 0, L_0x202de60;  1 drivers
L_0x7f90268ab8d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fb8910_0 .net/2s *"_s23", 0 0, L_0x7f90268ab8d0;  1 drivers
v0x1fb89f0_0 .net "addORsub", 0 0, L_0x202d530;  1 drivers
v0x1fb8a90_0 .net "carryin", 0 0, L_0x201bce0;  1 drivers
v0x1fb8bf0_0 .net "carryout", 0 0, L_0x1fb7830;  1 drivers
v0x1fb8cc0_0 .net "modB", 0 0, L_0x202c150;  1 drivers
v0x1fb8d60_0 .net "out", 0 0, L_0x202dc70;  1 drivers
L_0x202d390 .part v0x1f2dc50_0, 0, 1;
LS_0x202df80_0_0 .concat8 [ 1 1 1 1], L_0x202ddd0, L_0x202de60, L_0x202d960, L_0x7f90268ab8d0;
LS_0x202df80_0_4 .concat8 [ 1 1 1 1], L_0x1fb7d10, L_0x202dae0, L_0x202db50, L_0x202dbe0;
L_0x202df80 .concat8 [ 4 4 0 0], LS_0x202df80_0_0, LS_0x202df80_0_4;
S_0x1fb5720 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x202d430 .functor XOR 1, L_0x202e2a0, L_0x202c150, C4<0>, C4<0>;
L_0x202d530 .functor XOR 1, L_0x202d430, L_0x201bce0, C4<0>, C4<0>;
L_0x202d660 .functor AND 1, L_0x202d430, L_0x201bce0, C4<1>, C4<1>;
L_0x202d6f0 .functor AND 1, L_0x202e2a0, L_0x202c150, C4<1>, C4<1>;
L_0x1fb7830 .functor OR 1, L_0x202d660, L_0x202d6f0, C4<0>, C4<0>;
v0x1fb59c0_0 .net "A", 0 0, L_0x202e2a0;  alias, 1 drivers
v0x1fb5aa0_0 .net "B", 0 0, L_0x202c150;  alias, 1 drivers
v0x1fb5b60_0 .net "carryin", 0 0, L_0x201bce0;  alias, 1 drivers
v0x1fb5c30_0 .net "carryout", 0 0, L_0x1fb7830;  alias, 1 drivers
v0x1fb5cf0_0 .net "out1", 0 0, L_0x202d430;  1 drivers
v0x1fb5e00_0 .net "out2", 0 0, L_0x202d660;  1 drivers
v0x1fb5ec0_0 .net "out3", 0 0, L_0x202d6f0;  1 drivers
v0x1fb5f80_0 .net "sum", 0 0, L_0x202d530;  alias, 1 drivers
S_0x1fb60e0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fb7d10 .functor AND 1, L_0x202e2a0, L_0x201bc40, C4<1>, C4<1>;
v0x1fb6320_0 .net "A", 0 0, L_0x202e2a0;  alias, 1 drivers
v0x1fb63e0_0 .net "B", 0 0, L_0x201bc40;  alias, 1 drivers
v0x1fb6480_0 .net "out", 0 0, L_0x1fb7d10;  1 drivers
S_0x1fb65d0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fb6820_0 .net "I", 7 0, L_0x202df80;  alias, 1 drivers
v0x1fb6900_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fb69c0_0 .net "out", 0 0, L_0x202dc70;  alias, 1 drivers
L_0x202dc70 .part/v L_0x202df80, v0x1f2dc50_0, 1;
S_0x1fb6b10 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202dae0 .functor NAND 1, L_0x202e2a0, L_0x201bc40, C4<1>, C4<1>;
v0x1fb6d30_0 .net "A", 0 0, L_0x202e2a0;  alias, 1 drivers
v0x1fb6e40_0 .net "B", 0 0, L_0x201bc40;  alias, 1 drivers
v0x1fb6f00_0 .net "out", 0 0, L_0x202dae0;  1 drivers
S_0x1fb7010 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202db50 .functor NOR 1, L_0x202e2a0, L_0x201bc40, C4<0>, C4<0>;
v0x1fb7280_0 .net "A", 0 0, L_0x202e2a0;  alias, 1 drivers
v0x1fb7340_0 .net "B", 0 0, L_0x201bc40;  alias, 1 drivers
v0x1fb7450_0 .net "out", 0 0, L_0x202db50;  1 drivers
S_0x1fb7550 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202dbe0 .functor OR 1, L_0x202e2a0, L_0x201bc40, C4<0>, C4<0>;
v0x1fb7770_0 .net "A", 0 0, L_0x202e2a0;  alias, 1 drivers
v0x1fb78c0_0 .net "B", 0 0, L_0x201bc40;  alias, 1 drivers
v0x1fb7980_0 .net "out", 0 0, L_0x202dbe0;  1 drivers
S_0x1fb7a80 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202c150 .functor XOR 1, L_0x201bc40, L_0x202d390, C4<0>, C4<0>;
v0x1fb7c50_0 .net "A", 0 0, L_0x201bc40;  alias, 1 drivers
v0x1fb7da0_0 .net "B", 0 0, L_0x202d390;  1 drivers
v0x1fb7e60_0 .net "out", 0 0, L_0x202c150;  alias, 1 drivers
S_0x1fb7fa0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fb54b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202d960 .functor XOR 1, L_0x202e2a0, L_0x201bc40, C4<0>, C4<0>;
v0x1fb8170_0 .net "A", 0 0, L_0x202e2a0;  alias, 1 drivers
v0x1fb8230_0 .net "B", 0 0, L_0x201bc40;  alias, 1 drivers
v0x1fb82f0_0 .net "out", 0 0, L_0x202d960;  1 drivers
S_0x1fb8e80 .scope module, "alu27" "ALU_1bit" 8 145, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x202f060 .functor BUFZ 1, L_0x202d2d0, C4<0>, C4<0>, C4<0>;
L_0x202f0d0 .functor BUFZ 1, L_0x202d2d0, C4<0>, C4<0>, C4<0>;
v0x1fbbdf0_0 .net "A", 0 0, L_0x201cec0;  1 drivers
v0x1fbbe90_0 .net "B", 0 0, L_0x202e750;  1 drivers
v0x1fbbf50_0 .net "I", 7 0, L_0x202f1d0;  1 drivers
v0x1fbc050_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fbc0f0_0 .net *"_s15", 0 0, L_0x202f060;  1 drivers
v0x1fbc200_0 .net *"_s19", 0 0, L_0x202f0d0;  1 drivers
L_0x7f90268ab918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fbc2e0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab918;  1 drivers
v0x1fbc3c0_0 .net "addORsub", 0 0, L_0x202d2d0;  1 drivers
v0x1fbc460_0 .net "carryin", 0 0, L_0x202e7f0;  1 drivers
v0x1fbc5c0_0 .net "carryout", 0 0, L_0x1fbb200;  1 drivers
v0x1fbc690_0 .net "modB", 0 0, L_0x1f5e460;  1 drivers
v0x1fbc730_0 .net "out", 0 0, L_0x202ef20;  1 drivers
L_0x202d110 .part v0x1f2dc50_0, 0, 1;
LS_0x202f1d0_0_0 .concat8 [ 1 1 1 1], L_0x202f060, L_0x202f0d0, L_0x202ec50, L_0x7f90268ab918;
LS_0x202f1d0_0_4 .concat8 [ 1 1 1 1], L_0x1fbb6e0, L_0x202edd0, L_0x202ee40, L_0x202eeb0;
L_0x202f1d0 .concat8 [ 4 4 0 0], LS_0x202f1d0_0_0, LS_0x202f1d0_0_4;
S_0x1fb90f0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x202d1b0 .functor XOR 1, L_0x201cec0, L_0x1f5e460, C4<0>, C4<0>;
L_0x202d2d0 .functor XOR 1, L_0x202d1b0, L_0x202e7f0, C4<0>, C4<0>;
L_0x200caa0 .functor AND 1, L_0x202d1b0, L_0x202e7f0, C4<1>, C4<1>;
L_0x202e9e0 .functor AND 1, L_0x201cec0, L_0x1f5e460, C4<1>, C4<1>;
L_0x1fbb200 .functor OR 1, L_0x200caa0, L_0x202e9e0, C4<0>, C4<0>;
v0x1fb9390_0 .net "A", 0 0, L_0x201cec0;  alias, 1 drivers
v0x1fb9470_0 .net "B", 0 0, L_0x1f5e460;  alias, 1 drivers
v0x1fb9530_0 .net "carryin", 0 0, L_0x202e7f0;  alias, 1 drivers
v0x1fb9600_0 .net "carryout", 0 0, L_0x1fbb200;  alias, 1 drivers
v0x1fb96c0_0 .net "out1", 0 0, L_0x202d1b0;  1 drivers
v0x1fb97d0_0 .net "out2", 0 0, L_0x200caa0;  1 drivers
v0x1fb9890_0 .net "out3", 0 0, L_0x202e9e0;  1 drivers
v0x1fb9950_0 .net "sum", 0 0, L_0x202d2d0;  alias, 1 drivers
S_0x1fb9ab0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fbb6e0 .functor AND 1, L_0x201cec0, L_0x202e750, C4<1>, C4<1>;
v0x1fb9cf0_0 .net "A", 0 0, L_0x201cec0;  alias, 1 drivers
v0x1fb9db0_0 .net "B", 0 0, L_0x202e750;  alias, 1 drivers
v0x1fb9e50_0 .net "out", 0 0, L_0x1fbb6e0;  1 drivers
S_0x1fb9fa0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fba1f0_0 .net "I", 7 0, L_0x202f1d0;  alias, 1 drivers
v0x1fba2d0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fba390_0 .net "out", 0 0, L_0x202ef20;  alias, 1 drivers
L_0x202ef20 .part/v L_0x202f1d0, v0x1f2dc50_0, 1;
S_0x1fba4e0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202edd0 .functor NAND 1, L_0x201cec0, L_0x202e750, C4<1>, C4<1>;
v0x1fba700_0 .net "A", 0 0, L_0x201cec0;  alias, 1 drivers
v0x1fba810_0 .net "B", 0 0, L_0x202e750;  alias, 1 drivers
v0x1fba8d0_0 .net "out", 0 0, L_0x202edd0;  1 drivers
S_0x1fba9e0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202ee40 .functor NOR 1, L_0x201cec0, L_0x202e750, C4<0>, C4<0>;
v0x1fbac50_0 .net "A", 0 0, L_0x201cec0;  alias, 1 drivers
v0x1fbad10_0 .net "B", 0 0, L_0x202e750;  alias, 1 drivers
v0x1fbae20_0 .net "out", 0 0, L_0x202ee40;  1 drivers
S_0x1fbaf20 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202eeb0 .functor OR 1, L_0x201cec0, L_0x202e750, C4<0>, C4<0>;
v0x1fbb140_0 .net "A", 0 0, L_0x201cec0;  alias, 1 drivers
v0x1fbb290_0 .net "B", 0 0, L_0x202e750;  alias, 1 drivers
v0x1fbb350_0 .net "out", 0 0, L_0x202eeb0;  1 drivers
S_0x1fbb450 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1f5e460 .functor XOR 1, L_0x202e750, L_0x202d110, C4<0>, C4<0>;
v0x1fbb620_0 .net "A", 0 0, L_0x202e750;  alias, 1 drivers
v0x1fbb770_0 .net "B", 0 0, L_0x202d110;  1 drivers
v0x1fbb830_0 .net "out", 0 0, L_0x1f5e460;  alias, 1 drivers
S_0x1fbb970 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fb8e80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202ec50 .functor XOR 1, L_0x201cec0, L_0x202e750, C4<0>, C4<0>;
v0x1fbbb40_0 .net "A", 0 0, L_0x201cec0;  alias, 1 drivers
v0x1fbbc00_0 .net "B", 0 0, L_0x202e750;  alias, 1 drivers
v0x1fbbcc0_0 .net "out", 0 0, L_0x202ec50;  1 drivers
S_0x1fbc850 .scope module, "alu28" "ALU_1bit" 8 146, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2030300 .functor BUFZ 1, L_0x202fb00, C4<0>, C4<0>, C4<0>;
L_0x2030370 .functor BUFZ 1, L_0x202fb00, C4<0>, C4<0>, C4<0>;
v0x1fbf7c0_0 .net "A", 0 0, L_0x2030790;  1 drivers
v0x1fbf860_0 .net "B", 0 0, L_0x2030830;  1 drivers
v0x1fbf920_0 .net "I", 7 0, L_0x2030470;  1 drivers
v0x1fbfa20_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fbfac0_0 .net *"_s15", 0 0, L_0x2030300;  1 drivers
v0x1fbfbd0_0 .net *"_s19", 0 0, L_0x2030370;  1 drivers
L_0x7f90268ab960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fbfcb0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab960;  1 drivers
v0x1fbfd90_0 .net "addORsub", 0 0, L_0x202fb00;  1 drivers
v0x1fbfe30_0 .net "carryin", 0 0, L_0x202f700;  1 drivers
v0x1fbff90_0 .net "carryout", 0 0, L_0x1fbebd0;  1 drivers
v0x1fc0060_0 .net "modB", 0 0, L_0x201cf60;  1 drivers
v0x1fc0100_0 .net "out", 0 0, L_0x20301c0;  1 drivers
L_0x202e920 .part v0x1f2dc50_0, 0, 1;
LS_0x2030470_0_0 .concat8 [ 1 1 1 1], L_0x2030300, L_0x2030370, L_0x202fef0, L_0x7f90268ab960;
LS_0x2030470_0_4 .concat8 [ 1 1 1 1], L_0x1fbf0b0, L_0x2030070, L_0x20300e0, L_0x2030150;
L_0x2030470 .concat8 [ 4 4 0 0], LS_0x2030470_0_0, LS_0x2030470_0_4;
S_0x1fbcac0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x202fa00 .functor XOR 1, L_0x2030790, L_0x201cf60, C4<0>, C4<0>;
L_0x202fb00 .functor XOR 1, L_0x202fa00, L_0x202f700, C4<0>, C4<0>;
L_0x202fc10 .functor AND 1, L_0x202fa00, L_0x202f700, C4<1>, C4<1>;
L_0x202fc80 .functor AND 1, L_0x2030790, L_0x201cf60, C4<1>, C4<1>;
L_0x1fbebd0 .functor OR 1, L_0x202fc10, L_0x202fc80, C4<0>, C4<0>;
v0x1fbcd60_0 .net "A", 0 0, L_0x2030790;  alias, 1 drivers
v0x1fbce40_0 .net "B", 0 0, L_0x201cf60;  alias, 1 drivers
v0x1fbcf00_0 .net "carryin", 0 0, L_0x202f700;  alias, 1 drivers
v0x1fbcfd0_0 .net "carryout", 0 0, L_0x1fbebd0;  alias, 1 drivers
v0x1fbd090_0 .net "out1", 0 0, L_0x202fa00;  1 drivers
v0x1fbd1a0_0 .net "out2", 0 0, L_0x202fc10;  1 drivers
v0x1fbd260_0 .net "out3", 0 0, L_0x202fc80;  1 drivers
v0x1fbd320_0 .net "sum", 0 0, L_0x202fb00;  alias, 1 drivers
S_0x1fbd480 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fbf0b0 .functor AND 1, L_0x2030790, L_0x2030830, C4<1>, C4<1>;
v0x1fbd6c0_0 .net "A", 0 0, L_0x2030790;  alias, 1 drivers
v0x1fbd780_0 .net "B", 0 0, L_0x2030830;  alias, 1 drivers
v0x1fbd820_0 .net "out", 0 0, L_0x1fbf0b0;  1 drivers
S_0x1fbd970 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fbdbc0_0 .net "I", 7 0, L_0x2030470;  alias, 1 drivers
v0x1fbdca0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fbdd60_0 .net "out", 0 0, L_0x20301c0;  alias, 1 drivers
L_0x20301c0 .part/v L_0x2030470, v0x1f2dc50_0, 1;
S_0x1fbdeb0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2030070 .functor NAND 1, L_0x2030790, L_0x2030830, C4<1>, C4<1>;
v0x1fbe0d0_0 .net "A", 0 0, L_0x2030790;  alias, 1 drivers
v0x1fbe1e0_0 .net "B", 0 0, L_0x2030830;  alias, 1 drivers
v0x1fbe2a0_0 .net "out", 0 0, L_0x2030070;  1 drivers
S_0x1fbe3b0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20300e0 .functor NOR 1, L_0x2030790, L_0x2030830, C4<0>, C4<0>;
v0x1fbe620_0 .net "A", 0 0, L_0x2030790;  alias, 1 drivers
v0x1fbe6e0_0 .net "B", 0 0, L_0x2030830;  alias, 1 drivers
v0x1fbe7f0_0 .net "out", 0 0, L_0x20300e0;  1 drivers
S_0x1fbe8f0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2030150 .functor OR 1, L_0x2030790, L_0x2030830, C4<0>, C4<0>;
v0x1fbeb10_0 .net "A", 0 0, L_0x2030790;  alias, 1 drivers
v0x1fbec60_0 .net "B", 0 0, L_0x2030830;  alias, 1 drivers
v0x1fbed20_0 .net "out", 0 0, L_0x2030150;  1 drivers
S_0x1fbee20 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201cf60 .functor XOR 1, L_0x2030830, L_0x202e920, C4<0>, C4<0>;
v0x1fbeff0_0 .net "A", 0 0, L_0x2030830;  alias, 1 drivers
v0x1fbf140_0 .net "B", 0 0, L_0x202e920;  1 drivers
v0x1fbf200_0 .net "out", 0 0, L_0x201cf60;  alias, 1 drivers
S_0x1fbf340 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fbc850;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202fef0 .functor XOR 1, L_0x2030790, L_0x2030830, C4<0>, C4<0>;
v0x1fbf510_0 .net "A", 0 0, L_0x2030790;  alias, 1 drivers
v0x1fbf5d0_0 .net "B", 0 0, L_0x2030830;  alias, 1 drivers
v0x1fbf690_0 .net "out", 0 0, L_0x202fef0;  1 drivers
S_0x1fc0220 .scope module, "alu29" "ALU_1bit" 8 147, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2031420 .functor BUFZ 1, L_0x2030c20, C4<0>, C4<0>, C4<0>;
L_0x2031490 .functor BUFZ 1, L_0x2030c20, C4<0>, C4<0>, C4<0>;
v0x1fc3190_0 .net "A", 0 0, L_0x20318b0;  1 drivers
v0x1fc3230_0 .net "B", 0 0, L_0x20308d0;  1 drivers
v0x1fc32f0_0 .net "I", 7 0, L_0x2031590;  1 drivers
v0x1fc33f0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fc3490_0 .net *"_s15", 0 0, L_0x2031420;  1 drivers
v0x1fc35a0_0 .net *"_s19", 0 0, L_0x2031490;  1 drivers
L_0x7f90268ab9a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fc3680_0 .net/2s *"_s23", 0 0, L_0x7f90268ab9a8;  1 drivers
v0x1fc3760_0 .net "addORsub", 0 0, L_0x2030c20;  1 drivers
v0x1fc3800_0 .net "carryin", 0 0, L_0x201f5c0;  1 drivers
v0x1fc3960_0 .net "carryout", 0 0, L_0x1fc25a0;  1 drivers
v0x1fc3a30_0 .net "modB", 0 0, L_0x202f830;  1 drivers
v0x1fc3ad0_0 .net "out", 0 0, L_0x20312e0;  1 drivers
L_0x202f8a0 .part v0x1f2dc50_0, 0, 1;
LS_0x2031590_0_0 .concat8 [ 1 1 1 1], L_0x2031420, L_0x2031490, L_0x2031010, L_0x7f90268ab9a8;
LS_0x2031590_0_4 .concat8 [ 1 1 1 1], L_0x1fc2a80, L_0x2031190, L_0x2031200, L_0x2031270;
L_0x2031590 .concat8 [ 4 4 0 0], LS_0x2031590_0_0, LS_0x2031590_0_4;
S_0x1fc0490 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x202f940 .functor XOR 1, L_0x20318b0, L_0x202f830, C4<0>, C4<0>;
L_0x2030c20 .functor XOR 1, L_0x202f940, L_0x201f5c0, C4<0>, C4<0>;
L_0x2030d30 .functor AND 1, L_0x202f940, L_0x201f5c0, C4<1>, C4<1>;
L_0x2030da0 .functor AND 1, L_0x20318b0, L_0x202f830, C4<1>, C4<1>;
L_0x1fc25a0 .functor OR 1, L_0x2030d30, L_0x2030da0, C4<0>, C4<0>;
v0x1fc0730_0 .net "A", 0 0, L_0x20318b0;  alias, 1 drivers
v0x1fc0810_0 .net "B", 0 0, L_0x202f830;  alias, 1 drivers
v0x1fc08d0_0 .net "carryin", 0 0, L_0x201f5c0;  alias, 1 drivers
v0x1fc09a0_0 .net "carryout", 0 0, L_0x1fc25a0;  alias, 1 drivers
v0x1fc0a60_0 .net "out1", 0 0, L_0x202f940;  1 drivers
v0x1fc0b70_0 .net "out2", 0 0, L_0x2030d30;  1 drivers
v0x1fc0c30_0 .net "out3", 0 0, L_0x2030da0;  1 drivers
v0x1fc0cf0_0 .net "sum", 0 0, L_0x2030c20;  alias, 1 drivers
S_0x1fc0e50 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fc2a80 .functor AND 1, L_0x20318b0, L_0x20308d0, C4<1>, C4<1>;
v0x1fc1090_0 .net "A", 0 0, L_0x20318b0;  alias, 1 drivers
v0x1fc1150_0 .net "B", 0 0, L_0x20308d0;  alias, 1 drivers
v0x1fc11f0_0 .net "out", 0 0, L_0x1fc2a80;  1 drivers
S_0x1fc1340 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fc1590_0 .net "I", 7 0, L_0x2031590;  alias, 1 drivers
v0x1fc1670_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fc1730_0 .net "out", 0 0, L_0x20312e0;  alias, 1 drivers
L_0x20312e0 .part/v L_0x2031590, v0x1f2dc50_0, 1;
S_0x1fc1880 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2031190 .functor NAND 1, L_0x20318b0, L_0x20308d0, C4<1>, C4<1>;
v0x1fc1aa0_0 .net "A", 0 0, L_0x20318b0;  alias, 1 drivers
v0x1fc1bb0_0 .net "B", 0 0, L_0x20308d0;  alias, 1 drivers
v0x1fc1c70_0 .net "out", 0 0, L_0x2031190;  1 drivers
S_0x1fc1d80 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2031200 .functor NOR 1, L_0x20318b0, L_0x20308d0, C4<0>, C4<0>;
v0x1fc1ff0_0 .net "A", 0 0, L_0x20318b0;  alias, 1 drivers
v0x1fc20b0_0 .net "B", 0 0, L_0x20308d0;  alias, 1 drivers
v0x1fc21c0_0 .net "out", 0 0, L_0x2031200;  1 drivers
S_0x1fc22c0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2031270 .functor OR 1, L_0x20318b0, L_0x20308d0, C4<0>, C4<0>;
v0x1fc24e0_0 .net "A", 0 0, L_0x20318b0;  alias, 1 drivers
v0x1fc2630_0 .net "B", 0 0, L_0x20308d0;  alias, 1 drivers
v0x1fc26f0_0 .net "out", 0 0, L_0x2031270;  1 drivers
S_0x1fc27f0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x202f830 .functor XOR 1, L_0x20308d0, L_0x202f8a0, C4<0>, C4<0>;
v0x1fc29c0_0 .net "A", 0 0, L_0x20308d0;  alias, 1 drivers
v0x1fc2b10_0 .net "B", 0 0, L_0x202f8a0;  1 drivers
v0x1fc2bd0_0 .net "out", 0 0, L_0x202f830;  alias, 1 drivers
S_0x1fc2d10 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fc0220;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2031010 .functor XOR 1, L_0x20318b0, L_0x20308d0, C4<0>, C4<0>;
v0x1fc2ee0_0 .net "A", 0 0, L_0x20318b0;  alias, 1 drivers
v0x1fc2fa0_0 .net "B", 0 0, L_0x20308d0;  alias, 1 drivers
v0x1fc3060_0 .net "out", 0 0, L_0x2031010;  1 drivers
S_0x1fc3bf0 .scope module, "alu3" "ALU_1bit" 8 121, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2013940 .functor BUFZ 1, L_0x20130c0, C4<0>, C4<0>, C4<0>;
L_0x20139d0 .functor BUFZ 1, L_0x20130c0, C4<0>, C4<0>, C4<0>;
v0x1fc6b60_0 .net "A", 0 0, L_0x2013ea0;  1 drivers
v0x1fc6c00_0 .net "B", 0 0, L_0x2013f40;  1 drivers
v0x1fc6cc0_0 .net "I", 7 0, L_0x2013af0;  1 drivers
v0x1fc6dc0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fc6e60_0 .net *"_s15", 0 0, L_0x2013940;  1 drivers
v0x1fc6f70_0 .net *"_s19", 0 0, L_0x20139d0;  1 drivers
L_0x7f90268ab258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fc7050_0 .net/2s *"_s23", 0 0, L_0x7f90268ab258;  1 drivers
v0x1fc7130_0 .net "addORsub", 0 0, L_0x20130c0;  1 drivers
v0x1fc71d0_0 .net "carryin", 0 0, L_0x2013fe0;  1 drivers
v0x1fc7330_0 .net "carryout", 0 0, L_0x1fc5f70;  1 drivers
v0x1fc7400_0 .net "modB", 0 0, L_0x2012e60;  1 drivers
v0x1fc74a0_0 .net "out", 0 0, L_0x20137e0;  1 drivers
L_0x2012ed0 .part v0x1f2dc50_0, 0, 1;
LS_0x2013af0_0_0 .concat8 [ 1 1 1 1], L_0x2013940, L_0x20139d0, L_0x20134d0, L_0x7f90268ab258;
LS_0x2013af0_0_4 .concat8 [ 1 1 1 1], L_0x1fc6450, L_0x2013650, L_0x20136c0, L_0x2013750;
L_0x2013af0 .concat8 [ 4 4 0 0], LS_0x2013af0_0_0, LS_0x2013af0_0_4;
S_0x1fc3e60 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2012fc0 .functor XOR 1, L_0x2013ea0, L_0x2012e60, C4<0>, C4<0>;
L_0x20130c0 .functor XOR 1, L_0x2012fc0, L_0x2013fe0, C4<0>, C4<0>;
L_0x20131d0 .functor AND 1, L_0x2012fc0, L_0x2013fe0, C4<1>, C4<1>;
L_0x2013260 .functor AND 1, L_0x2013ea0, L_0x2012e60, C4<1>, C4<1>;
L_0x1fc5f70 .functor OR 1, L_0x20131d0, L_0x2013260, C4<0>, C4<0>;
v0x1fc4100_0 .net "A", 0 0, L_0x2013ea0;  alias, 1 drivers
v0x1fc41e0_0 .net "B", 0 0, L_0x2012e60;  alias, 1 drivers
v0x1fc42a0_0 .net "carryin", 0 0, L_0x2013fe0;  alias, 1 drivers
v0x1fc4370_0 .net "carryout", 0 0, L_0x1fc5f70;  alias, 1 drivers
v0x1fc4430_0 .net "out1", 0 0, L_0x2012fc0;  1 drivers
v0x1fc4540_0 .net "out2", 0 0, L_0x20131d0;  1 drivers
v0x1fc4600_0 .net "out3", 0 0, L_0x2013260;  1 drivers
v0x1fc46c0_0 .net "sum", 0 0, L_0x20130c0;  alias, 1 drivers
S_0x1fc4820 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fc6450 .functor AND 1, L_0x2013ea0, L_0x2013f40, C4<1>, C4<1>;
v0x1fc4a60_0 .net "A", 0 0, L_0x2013ea0;  alias, 1 drivers
v0x1fc4b20_0 .net "B", 0 0, L_0x2013f40;  alias, 1 drivers
v0x1fc4bc0_0 .net "out", 0 0, L_0x1fc6450;  1 drivers
S_0x1fc4d10 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fc4f60_0 .net "I", 7 0, L_0x2013af0;  alias, 1 drivers
v0x1fc5040_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fc5100_0 .net "out", 0 0, L_0x20137e0;  alias, 1 drivers
L_0x20137e0 .part/v L_0x2013af0, v0x1f2dc50_0, 1;
S_0x1fc5250 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2013650 .functor NAND 1, L_0x2013ea0, L_0x2013f40, C4<1>, C4<1>;
v0x1fc5470_0 .net "A", 0 0, L_0x2013ea0;  alias, 1 drivers
v0x1fc5580_0 .net "B", 0 0, L_0x2013f40;  alias, 1 drivers
v0x1fc5640_0 .net "out", 0 0, L_0x2013650;  1 drivers
S_0x1fc5750 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20136c0 .functor NOR 1, L_0x2013ea0, L_0x2013f40, C4<0>, C4<0>;
v0x1fc59c0_0 .net "A", 0 0, L_0x2013ea0;  alias, 1 drivers
v0x1fc5a80_0 .net "B", 0 0, L_0x2013f40;  alias, 1 drivers
v0x1fc5b90_0 .net "out", 0 0, L_0x20136c0;  1 drivers
S_0x1fc5c90 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2013750 .functor OR 1, L_0x2013ea0, L_0x2013f40, C4<0>, C4<0>;
v0x1fc5eb0_0 .net "A", 0 0, L_0x2013ea0;  alias, 1 drivers
v0x1fc6000_0 .net "B", 0 0, L_0x2013f40;  alias, 1 drivers
v0x1fc60c0_0 .net "out", 0 0, L_0x2013750;  1 drivers
S_0x1fc61c0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2012e60 .functor XOR 1, L_0x2013f40, L_0x2012ed0, C4<0>, C4<0>;
v0x1fc6390_0 .net "A", 0 0, L_0x2013f40;  alias, 1 drivers
v0x1fc64e0_0 .net "B", 0 0, L_0x2012ed0;  1 drivers
v0x1fc65a0_0 .net "out", 0 0, L_0x2012e60;  alias, 1 drivers
S_0x1fc66e0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fc3bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20134d0 .functor XOR 1, L_0x2013ea0, L_0x2013f40, C4<0>, C4<0>;
v0x1fc68b0_0 .net "A", 0 0, L_0x2013ea0;  alias, 1 drivers
v0x1fc6970_0 .net "B", 0 0, L_0x2013f40;  alias, 1 drivers
v0x1fc6a30_0 .net "out", 0 0, L_0x20134d0;  1 drivers
S_0x1fc75c0 .scope module, "alu30" "ALU_1bit" 8 148, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1fe4be0 .functor BUFZ 1, L_0x2030aa0, C4<0>, C4<0>, C4<0>;
L_0x1fe4c70 .functor BUFZ 1, L_0x2030aa0, C4<0>, C4<0>, C4<0>;
v0x1fca530_0 .net "A", 0 0, L_0x2033660;  1 drivers
v0x1fca5d0_0 .net "B", 0 0, L_0x2032030;  1 drivers
v0x1fca690_0 .net "I", 7 0, L_0x1fe4d90;  1 drivers
v0x1fca790_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fca830_0 .net *"_s15", 0 0, L_0x1fe4be0;  1 drivers
v0x1fca940_0 .net *"_s19", 0 0, L_0x1fe4c70;  1 drivers
L_0x7f90268ab9f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fcaa20_0 .net/2s *"_s23", 0 0, L_0x7f90268ab9f0;  1 drivers
v0x1fcab00_0 .net "addORsub", 0 0, L_0x2030aa0;  1 drivers
v0x1fcaba0_0 .net "carryin", 0 0, L_0x20320d0;  1 drivers
v0x1fcad00_0 .net "carryout", 0 0, L_0x1fc9940;  1 drivers
v0x1fcadd0_0 .net "modB", 0 0, L_0x201f6f0;  1 drivers
v0x1fcae70_0 .net "out", 0 0, L_0x1fe4a80;  1 drivers
L_0x2030970 .part v0x1f2dc50_0, 0, 1;
LS_0x1fe4d90_0_0 .concat8 [ 1 1 1 1], L_0x1fe4be0, L_0x1fe4c70, L_0x1fe4790, L_0x7f90268ab9f0;
LS_0x1fe4d90_0_4 .concat8 [ 1 1 1 1], L_0x1fc9e20, L_0x1fe4910, L_0x1fe4980, L_0x1fe49f0;
L_0x1fe4d90 .concat8 [ 4 4 0 0], LS_0x1fe4d90_0_0, LS_0x1fe4d90_0_4;
S_0x1fc7830 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x201f760 .functor XOR 1, L_0x2033660, L_0x201f6f0, C4<0>, C4<0>;
L_0x2030aa0 .functor XOR 1, L_0x201f760, L_0x20320d0, C4<0>, C4<0>;
L_0x2031950 .functor AND 1, L_0x201f760, L_0x20320d0, C4<1>, C4<1>;
L_0x20319e0 .functor AND 1, L_0x2033660, L_0x201f6f0, C4<1>, C4<1>;
L_0x1fc9940 .functor OR 1, L_0x2031950, L_0x20319e0, C4<0>, C4<0>;
v0x1fc7ad0_0 .net "A", 0 0, L_0x2033660;  alias, 1 drivers
v0x1fc7bb0_0 .net "B", 0 0, L_0x201f6f0;  alias, 1 drivers
v0x1fc7c70_0 .net "carryin", 0 0, L_0x20320d0;  alias, 1 drivers
v0x1fc7d40_0 .net "carryout", 0 0, L_0x1fc9940;  alias, 1 drivers
v0x1fc7e00_0 .net "out1", 0 0, L_0x201f760;  1 drivers
v0x1fc7f10_0 .net "out2", 0 0, L_0x2031950;  1 drivers
v0x1fc7fd0_0 .net "out3", 0 0, L_0x20319e0;  1 drivers
v0x1fc8090_0 .net "sum", 0 0, L_0x2030aa0;  alias, 1 drivers
S_0x1fc81f0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fc9e20 .functor AND 1, L_0x2033660, L_0x2032030, C4<1>, C4<1>;
v0x1fc8430_0 .net "A", 0 0, L_0x2033660;  alias, 1 drivers
v0x1fc84f0_0 .net "B", 0 0, L_0x2032030;  alias, 1 drivers
v0x1fc8590_0 .net "out", 0 0, L_0x1fc9e20;  1 drivers
S_0x1fc86e0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fc8930_0 .net "I", 7 0, L_0x1fe4d90;  alias, 1 drivers
v0x1fc8a10_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fc8ad0_0 .net "out", 0 0, L_0x1fe4a80;  alias, 1 drivers
L_0x1fe4a80 .part/v L_0x1fe4d90, v0x1f2dc50_0, 1;
S_0x1fc8c20 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe4910 .functor NAND 1, L_0x2033660, L_0x2032030, C4<1>, C4<1>;
v0x1fc8e40_0 .net "A", 0 0, L_0x2033660;  alias, 1 drivers
v0x1fc8f50_0 .net "B", 0 0, L_0x2032030;  alias, 1 drivers
v0x1fc9010_0 .net "out", 0 0, L_0x1fe4910;  1 drivers
S_0x1fc9120 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe4980 .functor NOR 1, L_0x2033660, L_0x2032030, C4<0>, C4<0>;
v0x1fc9390_0 .net "A", 0 0, L_0x2033660;  alias, 1 drivers
v0x1fc9450_0 .net "B", 0 0, L_0x2032030;  alias, 1 drivers
v0x1fc9560_0 .net "out", 0 0, L_0x1fe4980;  1 drivers
S_0x1fc9660 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe49f0 .functor OR 1, L_0x2033660, L_0x2032030, C4<0>, C4<0>;
v0x1fc9880_0 .net "A", 0 0, L_0x2033660;  alias, 1 drivers
v0x1fc99d0_0 .net "B", 0 0, L_0x2032030;  alias, 1 drivers
v0x1fc9a90_0 .net "out", 0 0, L_0x1fe49f0;  1 drivers
S_0x1fc9b90 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201f6f0 .functor XOR 1, L_0x2032030, L_0x2030970, C4<0>, C4<0>;
v0x1fc9d60_0 .net "A", 0 0, L_0x2032030;  alias, 1 drivers
v0x1fc9eb0_0 .net "B", 0 0, L_0x2030970;  1 drivers
v0x1fc9f70_0 .net "out", 0 0, L_0x201f6f0;  alias, 1 drivers
S_0x1fca0b0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fc75c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe4790 .functor XOR 1, L_0x2033660, L_0x2032030, C4<0>, C4<0>;
v0x1fca280_0 .net "A", 0 0, L_0x2033660;  alias, 1 drivers
v0x1fca340_0 .net "B", 0 0, L_0x2032030;  alias, 1 drivers
v0x1fca400_0 .net "out", 0 0, L_0x1fe4790;  1 drivers
S_0x1fcaf90 .scope module, "alu31" "ALU_last" 8 149, 8 22 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x2032200 .functor BUFZ 1, L_0x2033ca0, C4<0>, C4<0>, C4<0>;
L_0x2032270 .functor BUFZ 1, L_0x2033ca0, C4<0>, C4<0>, C4<0>;
v0x1fce930_0 .net "A", 0 0, L_0x2034a80;  1 drivers
v0x1fce9d0_0 .net "B", 0 0, L_0x2033700;  1 drivers
v0x1fcea90_0 .net "I", 7 0, L_0x20344d0;  1 drivers
v0x1fceb90_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fcec30_0 .net *"_s3", 0 0, L_0x2032200;  1 drivers
v0x1fced40_0 .net *"_s7", 0 0, L_0x2032270;  1 drivers
v0x1fcee20_0 .net "as", 0 0, L_0x2033ca0;  1 drivers
v0x1fcef10_0 .net "carryin", 0 0, L_0x20337a0;  1 drivers
v0x1fcf000_0 .net "carryout", 0 0, L_0x1fcd320;  alias, 1 drivers
v0x1fcf130_0 .net "modB", 0 0, L_0x2033a90;  1 drivers
v0x1fcf220_0 .net "out", 0 0, L_0x20342b0;  1 drivers
v0x1fcf2c0_0 .net "overflow", 0 0, L_0x20343f0;  alias, 1 drivers
L_0x2033b00 .part v0x1f2dc50_0, 0, 1;
LS_0x20344d0_0_0 .concat8 [ 1 1 1 1], L_0x2032200, L_0x2032270, L_0x2033fe0, L_0x2034460;
LS_0x20344d0_0_4 .concat8 [ 1 1 1 1], L_0x1fcd800, L_0x2034160, L_0x20341d0, L_0x2034240;
L_0x20344d0 .concat8 [ 4 4 0 0], LS_0x20344d0_0_0, LS_0x20344d0_0_4;
S_0x1fcb210 .scope module, "addsub" "add_sub" 8 42, 2 8 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2033ba0 .functor XOR 1, L_0x2034a80, L_0x2033a90, C4<0>, C4<0>;
L_0x2033ca0 .functor XOR 1, L_0x2033ba0, L_0x20337a0, C4<0>, C4<0>;
L_0x2033d10 .functor AND 1, L_0x2033ba0, L_0x20337a0, C4<1>, C4<1>;
L_0x2033e10 .functor AND 1, L_0x2034a80, L_0x2033a90, C4<1>, C4<1>;
L_0x1fcd320 .functor OR 1, L_0x2033d10, L_0x2033e10, C4<0>, C4<0>;
v0x1fcb4b0_0 .net "A", 0 0, L_0x2034a80;  alias, 1 drivers
v0x1fcb590_0 .net "B", 0 0, L_0x2033a90;  alias, 1 drivers
v0x1fcb650_0 .net "carryin", 0 0, L_0x20337a0;  alias, 1 drivers
v0x1fcb720_0 .net "carryout", 0 0, L_0x1fcd320;  alias, 1 drivers
v0x1fcb7e0_0 .net "out1", 0 0, L_0x2033ba0;  1 drivers
v0x1fcb8f0_0 .net "out2", 0 0, L_0x2033d10;  1 drivers
v0x1fcb9b0_0 .net "out3", 0 0, L_0x2033e10;  1 drivers
v0x1fcba70_0 .net "sum", 0 0, L_0x2033ca0;  alias, 1 drivers
S_0x1fcbbd0 .scope module, "andgate" "ALUand" 8 44, 9 8 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fcd800 .functor AND 1, L_0x2034a80, L_0x2033700, C4<1>, C4<1>;
v0x1fcbe10_0 .net "A", 0 0, L_0x2034a80;  alias, 1 drivers
v0x1fcbed0_0 .net "B", 0 0, L_0x2033700;  alias, 1 drivers
v0x1fcbf70_0 .net "out", 0 0, L_0x1fcd800;  1 drivers
S_0x1fcc0c0 .scope module, "elonMux" "multiplexer" 8 49, 10 4 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fcc310_0 .net "I", 7 0, L_0x20344d0;  alias, 1 drivers
v0x1fcc3f0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fcc4b0_0 .net "out", 0 0, L_0x20342b0;  alias, 1 drivers
L_0x20342b0 .part/v L_0x20344d0, v0x1f2dc50_0, 1;
S_0x1fcc600 .scope module, "nandgate" "ALUnand" 8 45, 9 26 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2034160 .functor NAND 1, L_0x2034a80, L_0x2033700, C4<1>, C4<1>;
v0x1fcc820_0 .net "A", 0 0, L_0x2034a80;  alias, 1 drivers
v0x1fcc930_0 .net "B", 0 0, L_0x2033700;  alias, 1 drivers
v0x1fcc9f0_0 .net "out", 0 0, L_0x2034160;  1 drivers
S_0x1fccb00 .scope module, "norgate" "ALUnor" 8 46, 9 35 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20341d0 .functor NOR 1, L_0x2034a80, L_0x2033700, C4<0>, C4<0>;
v0x1fccd70_0 .net "A", 0 0, L_0x2034a80;  alias, 1 drivers
v0x1fcce30_0 .net "B", 0 0, L_0x2033700;  alias, 1 drivers
v0x1fccf40_0 .net "out", 0 0, L_0x20341d0;  1 drivers
S_0x1fcd040 .scope module, "orgate" "ALUor" 8 47, 9 17 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2034240 .functor OR 1, L_0x2034a80, L_0x2033700, C4<0>, C4<0>;
v0x1fcd260_0 .net "A", 0 0, L_0x2034a80;  alias, 1 drivers
v0x1fcd3b0_0 .net "B", 0 0, L_0x2033700;  alias, 1 drivers
v0x1fcd470_0 .net "out", 0 0, L_0x2034240;  1 drivers
S_0x1fcd570 .scope module, "xorgate" "ALUxor" 8 40, 9 44 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2033a90 .functor XOR 1, L_0x2033700, L_0x2033b00, C4<0>, C4<0>;
v0x1fcd740_0 .net "A", 0 0, L_0x2033700;  alias, 1 drivers
v0x1fcd890_0 .net "B", 0 0, L_0x2033b00;  1 drivers
v0x1fcd950_0 .net "out", 0 0, L_0x2033a90;  alias, 1 drivers
S_0x1fcda90 .scope module, "xorgate1" "ALUxor" 8 43, 9 44 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2033fe0 .functor XOR 1, L_0x2034a80, L_0x2033700, C4<0>, C4<0>;
v0x1fcdc60_0 .net "A", 0 0, L_0x2034a80;  alias, 1 drivers
v0x1fcdd20_0 .net "B", 0 0, L_0x2033700;  alias, 1 drivers
v0x1fcdde0_0 .net "out", 0 0, L_0x2033fe0;  1 drivers
S_0x1fcdf10 .scope module, "xorgate2" "ALUxor" 8 51, 9 44 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20343f0 .functor XOR 1, L_0x20337a0, L_0x1fcd320, C4<0>, C4<0>;
v0x1fce170_0 .net "A", 0 0, L_0x20337a0;  alias, 1 drivers
v0x1fce260_0 .net "B", 0 0, L_0x1fcd320;  alias, 1 drivers
v0x1fce330_0 .net "out", 0 0, L_0x20343f0;  alias, 1 drivers
S_0x1fce440 .scope module, "xorgate3" "ALUxor" 8 53, 9 44 0, S_0x1fcaf90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2034460 .functor XOR 1, L_0x20343f0, L_0x2033ca0, C4<0>, C4<0>;
v0x1fce660_0 .net "A", 0 0, L_0x20343f0;  alias, 1 drivers
v0x1fce750_0 .net "B", 0 0, L_0x2033ca0;  alias, 1 drivers
v0x1fce820_0 .net "out", 0 0, L_0x2034460;  1 drivers
S_0x1fcf4b0 .scope module, "alu4" "ALU_1bit" 8 122, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2014bb0 .functor BUFZ 1, L_0x20143b0, C4<0>, C4<0>, C4<0>;
L_0x2014c40 .functor BUFZ 1, L_0x20143b0, C4<0>, C4<0>, C4<0>;
v0x1fd2330_0 .net "A", 0 0, L_0x2015080;  1 drivers
v0x1fd23d0_0 .net "B", 0 0, L_0x2015120;  1 drivers
v0x1fd2490_0 .net "I", 7 0, L_0x2014d60;  1 drivers
v0x1fd2590_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fd2630_0 .net *"_s15", 0 0, L_0x2014bb0;  1 drivers
v0x1fd2740_0 .net *"_s19", 0 0, L_0x2014c40;  1 drivers
L_0x7f90268ab2a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fd2820_0 .net/2s *"_s23", 0 0, L_0x7f90268ab2a0;  1 drivers
v0x1fd2900_0 .net "addORsub", 0 0, L_0x20143b0;  1 drivers
v0x1fd29a0_0 .net "carryin", 0 0, L_0x20151c0;  1 drivers
v0x1fd2b00_0 .net "carryout", 0 0, L_0x1fd1740;  1 drivers
v0x1fd2bd0_0 .net "modB", 0 0, L_0x2014180;  1 drivers
v0x1fd2c70_0 .net "out", 0 0, L_0x2014a50;  1 drivers
L_0x20141f0 .part v0x1f2dc50_0, 0, 1;
LS_0x2014d60_0_0 .concat8 [ 1 1 1 1], L_0x2014bb0, L_0x2014c40, L_0x2014740, L_0x7f90268ab2a0;
LS_0x2014d60_0_4 .concat8 [ 1 1 1 1], L_0x1fd1c20, L_0x20148c0, L_0x2014930, L_0x20149c0;
L_0x2014d60 .concat8 [ 4 4 0 0], LS_0x2014d60_0_0, LS_0x2014d60_0_4;
S_0x1fcf720 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2014290 .functor XOR 1, L_0x2015080, L_0x2014180, C4<0>, C4<0>;
L_0x20143b0 .functor XOR 1, L_0x2014290, L_0x20151c0, C4<0>, C4<0>;
L_0x2014440 .functor AND 1, L_0x2014290, L_0x20151c0, C4<1>, C4<1>;
L_0x20144d0 .functor AND 1, L_0x2015080, L_0x2014180, C4<1>, C4<1>;
L_0x1fd1740 .functor OR 1, L_0x2014440, L_0x20144d0, C4<0>, C4<0>;
v0x1fcf990_0 .net "A", 0 0, L_0x2015080;  alias, 1 drivers
v0x1fcfa70_0 .net "B", 0 0, L_0x2014180;  alias, 1 drivers
v0x1fcfb30_0 .net "carryin", 0 0, L_0x20151c0;  alias, 1 drivers
v0x1fcfbd0_0 .net "carryout", 0 0, L_0x1fd1740;  alias, 1 drivers
v0x1fcfc90_0 .net "out1", 0 0, L_0x2014290;  1 drivers
v0x1fcfda0_0 .net "out2", 0 0, L_0x2014440;  1 drivers
v0x1fcfe60_0 .net "out3", 0 0, L_0x20144d0;  1 drivers
v0x1fcff20_0 .net "sum", 0 0, L_0x20143b0;  alias, 1 drivers
S_0x1fd0080 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fd1c20 .functor AND 1, L_0x2015080, L_0x2015120, C4<1>, C4<1>;
v0x1fd02c0_0 .net "A", 0 0, L_0x2015080;  alias, 1 drivers
v0x1fd0380_0 .net "B", 0 0, L_0x2015120;  alias, 1 drivers
v0x1fd0420_0 .net "out", 0 0, L_0x1fd1c20;  1 drivers
S_0x1fd0540 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fd0760_0 .net "I", 7 0, L_0x2014d60;  alias, 1 drivers
v0x1fd0840_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fd0900_0 .net "out", 0 0, L_0x2014a50;  alias, 1 drivers
L_0x2014a50 .part/v L_0x2014d60, v0x1f2dc50_0, 1;
S_0x1fd0a20 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20148c0 .functor NAND 1, L_0x2015080, L_0x2015120, C4<1>, C4<1>;
v0x1fd0c40_0 .net "A", 0 0, L_0x2015080;  alias, 1 drivers
v0x1fd0d50_0 .net "B", 0 0, L_0x2015120;  alias, 1 drivers
v0x1fd0e10_0 .net "out", 0 0, L_0x20148c0;  1 drivers
S_0x1fd0f20 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2014930 .functor NOR 1, L_0x2015080, L_0x2015120, C4<0>, C4<0>;
v0x1fd1190_0 .net "A", 0 0, L_0x2015080;  alias, 1 drivers
v0x1fd1250_0 .net "B", 0 0, L_0x2015120;  alias, 1 drivers
v0x1fd1360_0 .net "out", 0 0, L_0x2014930;  1 drivers
S_0x1fd1460 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20149c0 .functor OR 1, L_0x2015080, L_0x2015120, C4<0>, C4<0>;
v0x1fd1680_0 .net "A", 0 0, L_0x2015080;  alias, 1 drivers
v0x1fd17d0_0 .net "B", 0 0, L_0x2015120;  alias, 1 drivers
v0x1fd1890_0 .net "out", 0 0, L_0x20149c0;  1 drivers
S_0x1fd1990 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2014180 .functor XOR 1, L_0x2015120, L_0x20141f0, C4<0>, C4<0>;
v0x1fd1b60_0 .net "A", 0 0, L_0x2015120;  alias, 1 drivers
v0x1fd1cb0_0 .net "B", 0 0, L_0x20141f0;  1 drivers
v0x1fd1d70_0 .net "out", 0 0, L_0x2014180;  alias, 1 drivers
S_0x1fd1eb0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fcf4b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2014740 .functor XOR 1, L_0x2015080, L_0x2015120, C4<0>, C4<0>;
v0x1fd2080_0 .net "A", 0 0, L_0x2015080;  alias, 1 drivers
v0x1fd2140_0 .net "B", 0 0, L_0x2015120;  alias, 1 drivers
v0x1fd2200_0 .net "out", 0 0, L_0x2014740;  1 drivers
S_0x1fd2d90 .scope module, "alu5" "ALU_1bit" 8 123, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2015d90 .functor BUFZ 1, L_0x2015540, C4<0>, C4<0>, C4<0>;
L_0x2015e20 .functor BUFZ 1, L_0x2015540, C4<0>, C4<0>, C4<0>;
v0x1fd5d00_0 .net "A", 0 0, L_0x20161c0;  1 drivers
v0x1fd5da0_0 .net "B", 0 0, L_0x20162f0;  1 drivers
v0x1fd5e60_0 .net "I", 7 0, L_0x2015f40;  1 drivers
v0x1fd5f60_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fd6000_0 .net *"_s15", 0 0, L_0x2015d90;  1 drivers
v0x1fd6110_0 .net *"_s19", 0 0, L_0x2015e20;  1 drivers
L_0x7f90268ab2e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fd61f0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab2e8;  1 drivers
v0x1fd62d0_0 .net "addORsub", 0 0, L_0x2015540;  1 drivers
v0x1fd6370_0 .net "carryin", 0 0, L_0x20164a0;  1 drivers
v0x1fd64d0_0 .net "carryout", 0 0, L_0x1fd5110;  1 drivers
v0x1fd65a0_0 .net "modB", 0 0, L_0x2014110;  1 drivers
v0x1fd6640_0 .net "out", 0 0, L_0x2015c30;  1 drivers
L_0x2015380 .part v0x1f2dc50_0, 0, 1;
LS_0x2015f40_0_0 .concat8 [ 1 1 1 1], L_0x2015d90, L_0x2015e20, L_0x2015920, L_0x7f90268ab2e8;
LS_0x2015f40_0_4 .concat8 [ 1 1 1 1], L_0x1fd55f0, L_0x2015aa0, L_0x2015b10, L_0x2015ba0;
L_0x2015f40 .concat8 [ 4 4 0 0], LS_0x2015f40_0_0, LS_0x2015f40_0_4;
S_0x1fd3000 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2015420 .functor XOR 1, L_0x20161c0, L_0x2014110, C4<0>, C4<0>;
L_0x2015540 .functor XOR 1, L_0x2015420, L_0x20164a0, C4<0>, C4<0>;
L_0x2015620 .functor AND 1, L_0x2015420, L_0x20164a0, C4<1>, C4<1>;
L_0x20156b0 .functor AND 1, L_0x20161c0, L_0x2014110, C4<1>, C4<1>;
L_0x1fd5110 .functor OR 1, L_0x2015620, L_0x20156b0, C4<0>, C4<0>;
v0x1fd32a0_0 .net "A", 0 0, L_0x20161c0;  alias, 1 drivers
v0x1fd3380_0 .net "B", 0 0, L_0x2014110;  alias, 1 drivers
v0x1fd3440_0 .net "carryin", 0 0, L_0x20164a0;  alias, 1 drivers
v0x1fd3510_0 .net "carryout", 0 0, L_0x1fd5110;  alias, 1 drivers
v0x1fd35d0_0 .net "out1", 0 0, L_0x2015420;  1 drivers
v0x1fd36e0_0 .net "out2", 0 0, L_0x2015620;  1 drivers
v0x1fd37a0_0 .net "out3", 0 0, L_0x20156b0;  1 drivers
v0x1fd3860_0 .net "sum", 0 0, L_0x2015540;  alias, 1 drivers
S_0x1fd39c0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fd55f0 .functor AND 1, L_0x20161c0, L_0x20162f0, C4<1>, C4<1>;
v0x1fd3c00_0 .net "A", 0 0, L_0x20161c0;  alias, 1 drivers
v0x1fd3cc0_0 .net "B", 0 0, L_0x20162f0;  alias, 1 drivers
v0x1fd3d60_0 .net "out", 0 0, L_0x1fd55f0;  1 drivers
S_0x1fd3eb0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fd4100_0 .net "I", 7 0, L_0x2015f40;  alias, 1 drivers
v0x1fd41e0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fd42a0_0 .net "out", 0 0, L_0x2015c30;  alias, 1 drivers
L_0x2015c30 .part/v L_0x2015f40, v0x1f2dc50_0, 1;
S_0x1fd43f0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2015aa0 .functor NAND 1, L_0x20161c0, L_0x20162f0, C4<1>, C4<1>;
v0x1fd4610_0 .net "A", 0 0, L_0x20161c0;  alias, 1 drivers
v0x1fd4720_0 .net "B", 0 0, L_0x20162f0;  alias, 1 drivers
v0x1fd47e0_0 .net "out", 0 0, L_0x2015aa0;  1 drivers
S_0x1fd48f0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2015b10 .functor NOR 1, L_0x20161c0, L_0x20162f0, C4<0>, C4<0>;
v0x1fd4b60_0 .net "A", 0 0, L_0x20161c0;  alias, 1 drivers
v0x1fd4c20_0 .net "B", 0 0, L_0x20162f0;  alias, 1 drivers
v0x1fd4d30_0 .net "out", 0 0, L_0x2015b10;  1 drivers
S_0x1fd4e30 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2015ba0 .functor OR 1, L_0x20161c0, L_0x20162f0, C4<0>, C4<0>;
v0x1fd5050_0 .net "A", 0 0, L_0x20161c0;  alias, 1 drivers
v0x1fd51a0_0 .net "B", 0 0, L_0x20162f0;  alias, 1 drivers
v0x1fd5260_0 .net "out", 0 0, L_0x2015ba0;  1 drivers
S_0x1fd5360 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2014110 .functor XOR 1, L_0x20162f0, L_0x2015380, C4<0>, C4<0>;
v0x1fd5530_0 .net "A", 0 0, L_0x20162f0;  alias, 1 drivers
v0x1fd5680_0 .net "B", 0 0, L_0x2015380;  1 drivers
v0x1fd5740_0 .net "out", 0 0, L_0x2014110;  alias, 1 drivers
S_0x1fd5880 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fd2d90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2015920 .functor XOR 1, L_0x20161c0, L_0x20162f0, C4<0>, C4<0>;
v0x1fd5a50_0 .net "A", 0 0, L_0x20161c0;  alias, 1 drivers
v0x1fd5b10_0 .net "B", 0 0, L_0x20162f0;  alias, 1 drivers
v0x1fd5bd0_0 .net "out", 0 0, L_0x2015920;  1 drivers
S_0x1fd6760 .scope module, "alu6" "ALU_1bit" 8 124, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2016f80 .functor BUFZ 1, L_0x2016780, C4<0>, C4<0>, C4<0>;
L_0x2016ff0 .functor BUFZ 1, L_0x2016780, C4<0>, C4<0>, C4<0>;
v0x1fd96d0_0 .net "A", 0 0, L_0x2017410;  1 drivers
v0x1fd9770_0 .net "B", 0 0, L_0x20174b0;  1 drivers
v0x1fd9830_0 .net "I", 7 0, L_0x20170f0;  1 drivers
v0x1fd9930_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fd99d0_0 .net *"_s15", 0 0, L_0x2016f80;  1 drivers
v0x1fd9ae0_0 .net *"_s19", 0 0, L_0x2016ff0;  1 drivers
L_0x7f90268ab330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fd9bc0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab330;  1 drivers
v0x1fd9ca0_0 .net "addORsub", 0 0, L_0x2016780;  1 drivers
v0x1fd9d40_0 .net "carryin", 0 0, L_0x2016540;  1 drivers
v0x1fd9ea0_0 .net "carryout", 0 0, L_0x1fd8ae0;  1 drivers
v0x1fd9f70_0 .net "modB", 0 0, L_0x2016260;  1 drivers
v0x1fda010_0 .net "out", 0 0, L_0x2016e40;  1 drivers
L_0x20165e0 .part v0x1f2dc50_0, 0, 1;
LS_0x20170f0_0_0 .concat8 [ 1 1 1 1], L_0x2016f80, L_0x2016ff0, L_0x2016b70, L_0x7f90268ab330;
LS_0x20170f0_0_4 .concat8 [ 1 1 1 1], L_0x1fd8fc0, L_0x2016cf0, L_0x2016d60, L_0x2016dd0;
L_0x20170f0 .concat8 [ 4 4 0 0], LS_0x20170f0_0_0, LS_0x20170f0_0_4;
S_0x1fd69d0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2016680 .functor XOR 1, L_0x2017410, L_0x2016260, C4<0>, C4<0>;
L_0x2016780 .functor XOR 1, L_0x2016680, L_0x2016540, C4<0>, C4<0>;
L_0x2016890 .functor AND 1, L_0x2016680, L_0x2016540, C4<1>, C4<1>;
L_0x2016900 .functor AND 1, L_0x2017410, L_0x2016260, C4<1>, C4<1>;
L_0x1fd8ae0 .functor OR 1, L_0x2016890, L_0x2016900, C4<0>, C4<0>;
v0x1fd6c70_0 .net "A", 0 0, L_0x2017410;  alias, 1 drivers
v0x1fd6d50_0 .net "B", 0 0, L_0x2016260;  alias, 1 drivers
v0x1fd6e10_0 .net "carryin", 0 0, L_0x2016540;  alias, 1 drivers
v0x1fd6ee0_0 .net "carryout", 0 0, L_0x1fd8ae0;  alias, 1 drivers
v0x1fd6fa0_0 .net "out1", 0 0, L_0x2016680;  1 drivers
v0x1fd70b0_0 .net "out2", 0 0, L_0x2016890;  1 drivers
v0x1fd7170_0 .net "out3", 0 0, L_0x2016900;  1 drivers
v0x1fd7230_0 .net "sum", 0 0, L_0x2016780;  alias, 1 drivers
S_0x1fd7390 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fd8fc0 .functor AND 1, L_0x2017410, L_0x20174b0, C4<1>, C4<1>;
v0x1fd75d0_0 .net "A", 0 0, L_0x2017410;  alias, 1 drivers
v0x1fd7690_0 .net "B", 0 0, L_0x20174b0;  alias, 1 drivers
v0x1fd7730_0 .net "out", 0 0, L_0x1fd8fc0;  1 drivers
S_0x1fd7880 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fd7ad0_0 .net "I", 7 0, L_0x20170f0;  alias, 1 drivers
v0x1fd7bb0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fd7c70_0 .net "out", 0 0, L_0x2016e40;  alias, 1 drivers
L_0x2016e40 .part/v L_0x20170f0, v0x1f2dc50_0, 1;
S_0x1fd7dc0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2016cf0 .functor NAND 1, L_0x2017410, L_0x20174b0, C4<1>, C4<1>;
v0x1fd7fe0_0 .net "A", 0 0, L_0x2017410;  alias, 1 drivers
v0x1fd80f0_0 .net "B", 0 0, L_0x20174b0;  alias, 1 drivers
v0x1fd81b0_0 .net "out", 0 0, L_0x2016cf0;  1 drivers
S_0x1fd82c0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2016d60 .functor NOR 1, L_0x2017410, L_0x20174b0, C4<0>, C4<0>;
v0x1fd8530_0 .net "A", 0 0, L_0x2017410;  alias, 1 drivers
v0x1fd85f0_0 .net "B", 0 0, L_0x20174b0;  alias, 1 drivers
v0x1fd8700_0 .net "out", 0 0, L_0x2016d60;  1 drivers
S_0x1fd8800 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2016dd0 .functor OR 1, L_0x2017410, L_0x20174b0, C4<0>, C4<0>;
v0x1fd8a20_0 .net "A", 0 0, L_0x2017410;  alias, 1 drivers
v0x1fd8b70_0 .net "B", 0 0, L_0x20174b0;  alias, 1 drivers
v0x1fd8c30_0 .net "out", 0 0, L_0x2016dd0;  1 drivers
S_0x1fd8d30 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2016260 .functor XOR 1, L_0x20174b0, L_0x20165e0, C4<0>, C4<0>;
v0x1fd8f00_0 .net "A", 0 0, L_0x20174b0;  alias, 1 drivers
v0x1fd9050_0 .net "B", 0 0, L_0x20165e0;  1 drivers
v0x1fd9110_0 .net "out", 0 0, L_0x2016260;  alias, 1 drivers
S_0x1fd9250 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fd6760;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2016b70 .functor XOR 1, L_0x2017410, L_0x20174b0, C4<0>, C4<0>;
v0x1fd9420_0 .net "A", 0 0, L_0x2017410;  alias, 1 drivers
v0x1fd94e0_0 .net "B", 0 0, L_0x20174b0;  alias, 1 drivers
v0x1fd95a0_0 .net "out", 0 0, L_0x2016b70;  1 drivers
S_0x1fda130 .scope module, "alu7" "ALU_1bit" 8 125, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20180a0 .functor BUFZ 1, L_0x20178a0, C4<0>, C4<0>, C4<0>;
L_0x2018110 .functor BUFZ 1, L_0x20178a0, C4<0>, C4<0>, C4<0>;
v0x1fdd0a0_0 .net "A", 0 0, L_0x2018530;  1 drivers
v0x1fdd140_0 .net "B", 0 0, L_0x2017550;  1 drivers
v0x1fdd200_0 .net "I", 7 0, L_0x2018210;  1 drivers
v0x1fdd300_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fdd3a0_0 .net *"_s15", 0 0, L_0x20180a0;  1 drivers
v0x1fdd4b0_0 .net *"_s19", 0 0, L_0x2018110;  1 drivers
L_0x7f90268ab378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fdd590_0 .net/2s *"_s23", 0 0, L_0x7f90268ab378;  1 drivers
v0x1fdd670_0 .net "addORsub", 0 0, L_0x20178a0;  1 drivers
v0x1fdd710_0 .net "carryin", 0 0, L_0x2018690;  1 drivers
v0x1fdd870_0 .net "carryout", 0 0, L_0x1fdc4b0;  1 drivers
v0x1fdd940_0 .net "modB", 0 0, L_0x2017690;  1 drivers
v0x1fdd9e0_0 .net "out", 0 0, L_0x2017f60;  1 drivers
L_0x2017700 .part v0x1f2dc50_0, 0, 1;
LS_0x2018210_0_0 .concat8 [ 1 1 1 1], L_0x20180a0, L_0x2018110, L_0x2017c90, L_0x7f90268ab378;
LS_0x2018210_0_4 .concat8 [ 1 1 1 1], L_0x1fdc990, L_0x2017e10, L_0x2017e80, L_0x2017ef0;
L_0x2018210 .concat8 [ 4 4 0 0], LS_0x2018210_0_0, LS_0x2018210_0_4;
S_0x1fda3a0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x20177a0 .functor XOR 1, L_0x2018530, L_0x2017690, C4<0>, C4<0>;
L_0x20178a0 .functor XOR 1, L_0x20177a0, L_0x2018690, C4<0>, C4<0>;
L_0x20179b0 .functor AND 1, L_0x20177a0, L_0x2018690, C4<1>, C4<1>;
L_0x2017a20 .functor AND 1, L_0x2018530, L_0x2017690, C4<1>, C4<1>;
L_0x1fdc4b0 .functor OR 1, L_0x20179b0, L_0x2017a20, C4<0>, C4<0>;
v0x1fda640_0 .net "A", 0 0, L_0x2018530;  alias, 1 drivers
v0x1fda720_0 .net "B", 0 0, L_0x2017690;  alias, 1 drivers
v0x1fda7e0_0 .net "carryin", 0 0, L_0x2018690;  alias, 1 drivers
v0x1fda8b0_0 .net "carryout", 0 0, L_0x1fdc4b0;  alias, 1 drivers
v0x1fda970_0 .net "out1", 0 0, L_0x20177a0;  1 drivers
v0x1fdaa80_0 .net "out2", 0 0, L_0x20179b0;  1 drivers
v0x1fdab40_0 .net "out3", 0 0, L_0x2017a20;  1 drivers
v0x1fdac00_0 .net "sum", 0 0, L_0x20178a0;  alias, 1 drivers
S_0x1fdad60 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fdc990 .functor AND 1, L_0x2018530, L_0x2017550, C4<1>, C4<1>;
v0x1fdafa0_0 .net "A", 0 0, L_0x2018530;  alias, 1 drivers
v0x1fdb060_0 .net "B", 0 0, L_0x2017550;  alias, 1 drivers
v0x1fdb100_0 .net "out", 0 0, L_0x1fdc990;  1 drivers
S_0x1fdb250 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fdb4a0_0 .net "I", 7 0, L_0x2018210;  alias, 1 drivers
v0x1fdb580_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fdb640_0 .net "out", 0 0, L_0x2017f60;  alias, 1 drivers
L_0x2017f60 .part/v L_0x2018210, v0x1f2dc50_0, 1;
S_0x1fdb790 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2017e10 .functor NAND 1, L_0x2018530, L_0x2017550, C4<1>, C4<1>;
v0x1fdb9b0_0 .net "A", 0 0, L_0x2018530;  alias, 1 drivers
v0x1fdbac0_0 .net "B", 0 0, L_0x2017550;  alias, 1 drivers
v0x1fdbb80_0 .net "out", 0 0, L_0x2017e10;  1 drivers
S_0x1fdbc90 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2017e80 .functor NOR 1, L_0x2018530, L_0x2017550, C4<0>, C4<0>;
v0x1fdbf00_0 .net "A", 0 0, L_0x2018530;  alias, 1 drivers
v0x1fdbfc0_0 .net "B", 0 0, L_0x2017550;  alias, 1 drivers
v0x1fdc0d0_0 .net "out", 0 0, L_0x2017e80;  1 drivers
S_0x1fdc1d0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2017ef0 .functor OR 1, L_0x2018530, L_0x2017550, C4<0>, C4<0>;
v0x1fdc3f0_0 .net "A", 0 0, L_0x2018530;  alias, 1 drivers
v0x1fdc540_0 .net "B", 0 0, L_0x2017550;  alias, 1 drivers
v0x1fdc600_0 .net "out", 0 0, L_0x2017ef0;  1 drivers
S_0x1fdc700 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2017690 .functor XOR 1, L_0x2017550, L_0x2017700, C4<0>, C4<0>;
v0x1fdc8d0_0 .net "A", 0 0, L_0x2017550;  alias, 1 drivers
v0x1fdca20_0 .net "B", 0 0, L_0x2017700;  1 drivers
v0x1fdcae0_0 .net "out", 0 0, L_0x2017690;  alias, 1 drivers
S_0x1fdcc20 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fda130;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2017c90 .functor XOR 1, L_0x2018530, L_0x2017550, C4<0>, C4<0>;
v0x1fdcdf0_0 .net "A", 0 0, L_0x2018530;  alias, 1 drivers
v0x1fdceb0_0 .net "B", 0 0, L_0x2017550;  alias, 1 drivers
v0x1fdcf70_0 .net "out", 0 0, L_0x2017c90;  1 drivers
S_0x1fddb00 .scope module, "alu8" "ALU_1bit" 8 126, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x20191e0 .functor BUFZ 1, L_0x2018a30, C4<0>, C4<0>, C4<0>;
L_0x2019250 .functor BUFZ 1, L_0x2018a30, C4<0>, C4<0>, C4<0>;
v0x1fe0a70_0 .net "A", 0 0, L_0x2019670;  1 drivers
v0x1fe0b10_0 .net "B", 0 0, L_0x2019710;  1 drivers
v0x1fe0bd0_0 .net "I", 7 0, L_0x2019350;  1 drivers
v0x1fe0cd0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fe0d70_0 .net *"_s15", 0 0, L_0x20191e0;  1 drivers
v0x1fe0e80_0 .net *"_s19", 0 0, L_0x2019250;  1 drivers
L_0x7f90268ab3c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fe0f60_0 .net/2s *"_s23", 0 0, L_0x7f90268ab3c0;  1 drivers
v0x1fe1040_0 .net "addORsub", 0 0, L_0x2018a30;  1 drivers
v0x1fe10e0_0 .net "carryin", 0 0, L_0x20187c0;  1 drivers
v0x1fe1240_0 .net "carryout", 0 0, L_0x1fdfe80;  1 drivers
v0x1fe1310_0 .net "modB", 0 0, L_0x20185d0;  1 drivers
v0x1fe13b0_0 .net "out", 0 0, L_0x20190a0;  1 drivers
L_0x2018890 .part v0x1f2dc50_0, 0, 1;
LS_0x2019350_0_0 .concat8 [ 1 1 1 1], L_0x20191e0, L_0x2019250, L_0x2018dd0, L_0x7f90268ab3c0;
LS_0x2019350_0_4 .concat8 [ 1 1 1 1], L_0x1fe0360, L_0x2018f50, L_0x2018fc0, L_0x2019030;
L_0x2019350 .concat8 [ 4 4 0 0], LS_0x2019350_0_0, LS_0x2019350_0_4;
S_0x1fddd70 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2018930 .functor XOR 1, L_0x2019670, L_0x20185d0, C4<0>, C4<0>;
L_0x2018a30 .functor XOR 1, L_0x2018930, L_0x20187c0, C4<0>, C4<0>;
L_0x2018af0 .functor AND 1, L_0x2018930, L_0x20187c0, C4<1>, C4<1>;
L_0x2018b60 .functor AND 1, L_0x2019670, L_0x20185d0, C4<1>, C4<1>;
L_0x1fdfe80 .functor OR 1, L_0x2018af0, L_0x2018b60, C4<0>, C4<0>;
v0x1fde010_0 .net "A", 0 0, L_0x2019670;  alias, 1 drivers
v0x1fde0f0_0 .net "B", 0 0, L_0x20185d0;  alias, 1 drivers
v0x1fde1b0_0 .net "carryin", 0 0, L_0x20187c0;  alias, 1 drivers
v0x1fde280_0 .net "carryout", 0 0, L_0x1fdfe80;  alias, 1 drivers
v0x1fde340_0 .net "out1", 0 0, L_0x2018930;  1 drivers
v0x1fde450_0 .net "out2", 0 0, L_0x2018af0;  1 drivers
v0x1fde510_0 .net "out3", 0 0, L_0x2018b60;  1 drivers
v0x1fde5d0_0 .net "sum", 0 0, L_0x2018a30;  alias, 1 drivers
S_0x1fde730 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe0360 .functor AND 1, L_0x2019670, L_0x2019710, C4<1>, C4<1>;
v0x1fde970_0 .net "A", 0 0, L_0x2019670;  alias, 1 drivers
v0x1fdea30_0 .net "B", 0 0, L_0x2019710;  alias, 1 drivers
v0x1fdead0_0 .net "out", 0 0, L_0x1fe0360;  1 drivers
S_0x1fdec20 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fdee70_0 .net "I", 7 0, L_0x2019350;  alias, 1 drivers
v0x1fdef50_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fdf010_0 .net "out", 0 0, L_0x20190a0;  alias, 1 drivers
L_0x20190a0 .part/v L_0x2019350, v0x1f2dc50_0, 1;
S_0x1fdf160 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2018f50 .functor NAND 1, L_0x2019670, L_0x2019710, C4<1>, C4<1>;
v0x1fdf380_0 .net "A", 0 0, L_0x2019670;  alias, 1 drivers
v0x1fdf490_0 .net "B", 0 0, L_0x2019710;  alias, 1 drivers
v0x1fdf550_0 .net "out", 0 0, L_0x2018f50;  1 drivers
S_0x1fdf660 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2018fc0 .functor NOR 1, L_0x2019670, L_0x2019710, C4<0>, C4<0>;
v0x1fdf8d0_0 .net "A", 0 0, L_0x2019670;  alias, 1 drivers
v0x1fdf990_0 .net "B", 0 0, L_0x2019710;  alias, 1 drivers
v0x1fdfaa0_0 .net "out", 0 0, L_0x2018fc0;  1 drivers
S_0x1fdfba0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2019030 .functor OR 1, L_0x2019670, L_0x2019710, C4<0>, C4<0>;
v0x1fdfdc0_0 .net "A", 0 0, L_0x2019670;  alias, 1 drivers
v0x1fdff10_0 .net "B", 0 0, L_0x2019710;  alias, 1 drivers
v0x1fdffd0_0 .net "out", 0 0, L_0x2019030;  1 drivers
S_0x1fe00d0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20185d0 .functor XOR 1, L_0x2019710, L_0x2018890, C4<0>, C4<0>;
v0x1fe02a0_0 .net "A", 0 0, L_0x2019710;  alias, 1 drivers
v0x1fe03f0_0 .net "B", 0 0, L_0x2018890;  1 drivers
v0x1fe04b0_0 .net "out", 0 0, L_0x20185d0;  alias, 1 drivers
S_0x1fe05f0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fddb00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2018dd0 .functor XOR 1, L_0x2019670, L_0x2019710, C4<0>, C4<0>;
v0x1fe07c0_0 .net "A", 0 0, L_0x2019670;  alias, 1 drivers
v0x1fe0880_0 .net "B", 0 0, L_0x2019710;  alias, 1 drivers
v0x1fe0940_0 .net "out", 0 0, L_0x2018dd0;  1 drivers
S_0x1fe14d0 .scope module, "alu9" "ALU_1bit" 8 127, 8 66 0, S_0x1f528b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x201a450 .functor BUFZ 1, L_0x2019bd0, C4<0>, C4<0>, C4<0>;
L_0x201a4e0 .functor BUFZ 1, L_0x2019bd0, C4<0>, C4<0>, C4<0>;
v0x1fe4440_0 .net "A", 0 0, L_0x201a920;  1 drivers
v0x1fe44e0_0 .net "B", 0 0, L_0x20197b0;  1 drivers
v0x1fe45a0_0 .net "I", 7 0, L_0x201a600;  1 drivers
v0x1fe46a0_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fa9db0_0 .net *"_s15", 0 0, L_0x201a450;  1 drivers
v0x1fa9ec0_0 .net *"_s19", 0 0, L_0x201a4e0;  1 drivers
L_0x7f90268ab408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1fa9fa0_0 .net/2s *"_s23", 0 0, L_0x7f90268ab408;  1 drivers
v0x1faa080_0 .net "addORsub", 0 0, L_0x2019bd0;  1 drivers
v0x1faa120_0 .net "carryin", 0 0, L_0x201aab0;  1 drivers
v0x1fe5010_0 .net "carryout", 0 0, L_0x1fe3850;  1 drivers
v0x1fe50e0_0 .net "modB", 0 0, L_0x20152f0;  1 drivers
v0x1fe5180_0 .net "out", 0 0, L_0x201a2f0;  1 drivers
L_0x2019a30 .part v0x1f2dc50_0, 0, 1;
LS_0x201a600_0_0 .concat8 [ 1 1 1 1], L_0x201a450, L_0x201a4e0, L_0x2019fe0, L_0x7f90268ab408;
LS_0x201a600_0_4 .concat8 [ 1 1 1 1], L_0x1fe3d30, L_0x201a160, L_0x201a1d0, L_0x201a260;
L_0x201a600 .concat8 [ 4 4 0 0], LS_0x201a600_0_0, LS_0x201a600_0_4;
S_0x1fe1740 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2019ad0 .functor XOR 1, L_0x201a920, L_0x20152f0, C4<0>, C4<0>;
L_0x2019bd0 .functor XOR 1, L_0x2019ad0, L_0x201aab0, C4<0>, C4<0>;
L_0x2019ce0 .functor AND 1, L_0x2019ad0, L_0x201aab0, C4<1>, C4<1>;
L_0x2019d70 .functor AND 1, L_0x201a920, L_0x20152f0, C4<1>, C4<1>;
L_0x1fe3850 .functor OR 1, L_0x2019ce0, L_0x2019d70, C4<0>, C4<0>;
v0x1fe19e0_0 .net "A", 0 0, L_0x201a920;  alias, 1 drivers
v0x1fe1ac0_0 .net "B", 0 0, L_0x20152f0;  alias, 1 drivers
v0x1fe1b80_0 .net "carryin", 0 0, L_0x201aab0;  alias, 1 drivers
v0x1fe1c50_0 .net "carryout", 0 0, L_0x1fe3850;  alias, 1 drivers
v0x1fe1d10_0 .net "out1", 0 0, L_0x2019ad0;  1 drivers
v0x1fe1e20_0 .net "out2", 0 0, L_0x2019ce0;  1 drivers
v0x1fe1ee0_0 .net "out3", 0 0, L_0x2019d70;  1 drivers
v0x1fe1fa0_0 .net "sum", 0 0, L_0x2019bd0;  alias, 1 drivers
S_0x1fe2100 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1fe3d30 .functor AND 1, L_0x201a920, L_0x20197b0, C4<1>, C4<1>;
v0x1fe2340_0 .net "A", 0 0, L_0x201a920;  alias, 1 drivers
v0x1fe2400_0 .net "B", 0 0, L_0x20197b0;  alias, 1 drivers
v0x1fe24a0_0 .net "out", 0 0, L_0x1fe3d30;  1 drivers
S_0x1fe25f0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1fe2840_0 .net "I", 7 0, L_0x201a600;  alias, 1 drivers
v0x1fe2920_0 .net "S", 2 0, v0x1f2dc50_0;  alias, 1 drivers
v0x1fe29e0_0 .net "out", 0 0, L_0x201a2f0;  alias, 1 drivers
L_0x201a2f0 .part/v L_0x201a600, v0x1f2dc50_0, 1;
S_0x1fe2b30 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201a160 .functor NAND 1, L_0x201a920, L_0x20197b0, C4<1>, C4<1>;
v0x1fe2d50_0 .net "A", 0 0, L_0x201a920;  alias, 1 drivers
v0x1fe2e60_0 .net "B", 0 0, L_0x20197b0;  alias, 1 drivers
v0x1fe2f20_0 .net "out", 0 0, L_0x201a160;  1 drivers
S_0x1fe3030 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201a1d0 .functor NOR 1, L_0x201a920, L_0x20197b0, C4<0>, C4<0>;
v0x1fe32a0_0 .net "A", 0 0, L_0x201a920;  alias, 1 drivers
v0x1fe3360_0 .net "B", 0 0, L_0x20197b0;  alias, 1 drivers
v0x1fe3470_0 .net "out", 0 0, L_0x201a1d0;  1 drivers
S_0x1fe3570 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x201a260 .functor OR 1, L_0x201a920, L_0x20197b0, C4<0>, C4<0>;
v0x1fe3790_0 .net "A", 0 0, L_0x201a920;  alias, 1 drivers
v0x1fe38e0_0 .net "B", 0 0, L_0x20197b0;  alias, 1 drivers
v0x1fe39a0_0 .net "out", 0 0, L_0x201a260;  1 drivers
S_0x1fe3aa0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x20152f0 .functor XOR 1, L_0x20197b0, L_0x2019a30, C4<0>, C4<0>;
v0x1fe3c70_0 .net "A", 0 0, L_0x20197b0;  alias, 1 drivers
v0x1fe3dc0_0 .net "B", 0 0, L_0x2019a30;  1 drivers
v0x1fe3e80_0 .net "out", 0 0, L_0x20152f0;  alias, 1 drivers
S_0x1fe3fc0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1fe14d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2019fe0 .functor XOR 1, L_0x201a920, L_0x20197b0, C4<0>, C4<0>;
v0x1fe4190_0 .net "A", 0 0, L_0x201a920;  alias, 1 drivers
v0x1fe4250_0 .net "B", 0 0, L_0x20197b0;  alias, 1 drivers
v0x1fe4310_0 .net "out", 0 0, L_0x2019fe0;  1 drivers
S_0x1fe79e0 .scope module, "mem" "memory" 4 56, 11 1 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "regWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x1ffbe30 .functor BUFZ 32, L_0x1ffbd90, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1ffc060 .functor BUFZ 32, L_0x1ffbf30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1fe7ce0_0 .net "Addr0", 31 0, L_0x2038280;  alias, 1 drivers
v0x1fe7dc0_0 .net "DataIn0", 31 0, L_0x200ff00;  alias, 1 drivers
v0x1fe7e80_0 .net "DataOut0", 31 0, L_0x1ffbe30;  alias, 1 drivers
v0x1fe7f70_0 .net *"_s0", 31 0, L_0x1ffbd90;  1 drivers
v0x1fe8050_0 .net *"_s4", 31 0, L_0x1ffbf30;  1 drivers
v0x1fe8180_0 .net "clk", 0 0, v0x1ffa7d0_0;  alias, 1 drivers
v0x1fe8220_0 .net "instruct_Addr1", 31 0, v0x1fe90e0_0;  alias, 1 drivers
v0x1fe82e0_0 .net "instruct_DataOut1", 31 0, L_0x1ffc060;  alias, 1 drivers
v0x1fe83d0 .array "mem", 0 31, 31 0;
v0x1fe8500_0 .net "regWE", 0 0, v0x1f7eeb0_0;  alias, 1 drivers
E_0x1fe7c60 .event posedge, v0x1f29660_0;
L_0x1ffbd90 .array/port v0x1fe83d0, L_0x2038280;
L_0x1ffbf30 .array/port v0x1fe83d0, v0x1fe90e0_0;
S_0x1fe86d0 .scope module, "op_imm_mux" "mux2" 4 68, 7 1 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x1fe88f0_0 .net "input0", 31 0, v0x1f25070_0;  alias, 1 drivers
v0x1fe8a20_0 .net "input1", 31 0, L_0x200ff00;  alias, 1 drivers
v0x1fe8ae0_0 .net "out", 31 0, L_0x20381e0;  alias, 1 drivers
v0x1fe8be0_0 .net "select0", 0 0, v0x1f1acd0_0;  alias, 1 drivers
L_0x20381e0 .functor MUXZ 32, L_0x200ff00, v0x1f25070_0, v0x1f1acd0_0, C4<>;
S_0x1fe8d00 .scope module, "pcmux" "pc_multiplexer" 4 53, 12 7 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x1fe8fd0_0 .net "JumpAddress", 25 0, v0x1f295a0_0;  alias, 1 drivers
v0x1fe90e0_0 .var "PC", 31 0;
v0x1fe91b0_0 .net "S", 1 0, v0x1f11f60_0;  alias, 1 drivers
v0x1fe92b0_0 .net "clk", 0 0, v0x1ffa7d0_0;  alias, 1 drivers
v0x1fe93a0_0 .net "immediate", 31 0, v0x1f25070_0;  alias, 1 drivers
v0x1fe9490_0 .var "mux_out", 31 0;
v0x1fe9550_0 .var "nextPC", 31 0;
v0x1fe9630_0 .net "regRs", 31 0, L_0x200d710;  alias, 1 drivers
E_0x1fe8f70/0 .event edge, v0x1f11f60_0, v0x1fe52a0_0, v0x1f25070_0, v0x1f295a0_0;
E_0x1fe8f70/1 .event edge, v0x1fe9550_0;
E_0x1fe8f70 .event/or E_0x1fe8f70/0, E_0x1fe8f70/1;
S_0x1fe97d0 .scope module, "reg_in_mux" "mux3_32bit" 4 67, 7 21 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x1fe9a20_0 .net *"_s1", 0 0, L_0x2037c00;  1 drivers
v0x1fe9b20_0 .net *"_s10", 31 0, L_0x2037f60;  1 drivers
v0x1fe9c00_0 .net *"_s3", 0 0, L_0x2037ca0;  1 drivers
L_0x7f90268abac8 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1fe9cf0_0 .net/2u *"_s4", 31 0, L_0x7f90268abac8;  1 drivers
v0x1fe9dd0_0 .net *"_s6", 31 0, L_0x2037dd0;  1 drivers
v0x1fe9f00_0 .net *"_s9", 0 0, L_0x2037ec0;  1 drivers
v0x1fe9fe0_0 .net "input0", 31 0, L_0x2034840;  alias, 1 drivers
v0x1fea0f0_0 .net "input1", 31 0, L_0x1ffbe30;  alias, 1 drivers
v0x1fea1b0_0 .net "input2", 31 0, v0x1fe90e0_0;  alias, 1 drivers
v0x1fea2e0_0 .net "out", 31 0, L_0x2038050;  alias, 1 drivers
v0x1fea3c0_0 .net "select0", 1 0, v0x1f7ef50_0;  alias, 1 drivers
L_0x2037c00 .part v0x1f7ef50_0, 1, 1;
L_0x2037ca0 .part v0x1f7ef50_0, 0, 1;
L_0x2037dd0 .functor MUXZ 32, v0x1fe90e0_0, L_0x7f90268abac8, L_0x2037ca0, C4<>;
L_0x2037ec0 .part v0x1f7ef50_0, 0, 1;
L_0x2037f60 .functor MUXZ 32, L_0x2034840, L_0x1ffbe30, L_0x2037ec0, C4<>;
L_0x2038050 .functor MUXZ 32, L_0x2037f60, L_0x2037dd0, L_0x2037c00, C4<>;
S_0x1fea500 .scope module, "reg_select_mux" "mux3_5bit" 4 66, 7 11 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x1fea7e0_0 .net *"_s1", 0 0, L_0x20375d0;  1 drivers
v0x1fea8e0_0 .net *"_s10", 4 0, L_0x2037930;  1 drivers
v0x1fea9c0_0 .net *"_s3", 0 0, L_0x2037670;  1 drivers
L_0x7f90268aba38 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x1feaab0_0 .net/2u *"_s4", 4 0, L_0x7f90268aba38;  1 drivers
v0x1feab90_0 .net *"_s6", 4 0, L_0x20377a0;  1 drivers
v0x1feac70_0 .net *"_s9", 0 0, L_0x2037890;  1 drivers
v0x1fead50_0 .net "input0", 4 0, v0x1f12020_0;  alias, 1 drivers
v0x1feae10_0 .net "input1", 4 0, v0x1f76f90_0;  alias, 1 drivers
L_0x7f90268aba80 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x1feaee0_0 .net "input2", 4 0, L_0x7f90268aba80;  1 drivers
v0x1feb050_0 .net "out", 4 0, L_0x2037a20;  alias, 1 drivers
v0x1feb130_0 .net "select0", 1 0, v0x1f253e0_0;  alias, 1 drivers
L_0x20375d0 .part v0x1f253e0_0, 1, 1;
L_0x2037670 .part v0x1f253e0_0, 0, 1;
L_0x20377a0 .functor MUXZ 5, L_0x7f90268aba80, L_0x7f90268aba38, L_0x2037670, C4<>;
L_0x2037890 .part v0x1f253e0_0, 0, 1;
L_0x2037930 .functor MUXZ 5, v0x1f12020_0, v0x1f76f90_0, L_0x2037890, C4<>;
L_0x2037a20 .functor MUXZ 5, L_0x2037930, L_0x20377a0, L_0x20375d0, C4<>;
S_0x1feb290 .scope module, "regi" "regfile" 4 62, 13 12 0, S_0x1f75b00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x1ff4770_0 .net "Clk", 0 0, v0x1ffa7d0_0;  alias, 1 drivers
v0x1ff7650_0 .net "ReadData1", 31 0, L_0x200d710;  alias, 1 drivers
v0x1ff76f0_0 .net "ReadData2", 31 0, L_0x200ff00;  alias, 1 drivers
v0x1ff7790_0 .net "ReadRegister1", 4 0, v0x1f7b620_0;  alias, 1 drivers
v0x1ff7880_0 .net "ReadRegister2", 4 0, v0x1f76f90_0;  alias, 1 drivers
v0x1ff7970_0 .net "RegWrite", 0 0, v0x1f7eeb0_0;  alias, 1 drivers
v0x1ff7a10_0 .net "WriteData", 31 0, L_0x2038050;  alias, 1 drivers
v0x1ff7ad0_0 .net "WriteRegister", 4 0, L_0x2037a20;  alias, 1 drivers
v0x1ff7bc0_0 .net "decoded", 31 0, L_0x200c1a0;  1 drivers
v0x1ff7d10 .array "registers", 0 31, 31 0;
S_0x1feb530 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x1feb290;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x1feb790_0 .net *"_s0", 31 0, L_0x1ffc0d0;  1 drivers
L_0x7f90268ab018 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1feb890_0 .net *"_s3", 30 0, L_0x7f90268ab018;  1 drivers
v0x1feb970_0 .net "address", 4 0, L_0x2037a20;  alias, 1 drivers
v0x1feba40_0 .net "enable", 0 0, v0x1f7eeb0_0;  alias, 1 drivers
v0x1febb30_0 .net "out", 31 0, L_0x200c1a0;  alias, 1 drivers
L_0x1ffc0d0 .concat [ 1 31 0 0], v0x1f7eeb0_0, L_0x7f90268ab018;
L_0x200c1a0 .shift/l 32, L_0x1ffc0d0, L_0x2037a20;
S_0x1febcc0 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1febeb0 .param/l "i" 0 13 33, +C4<01>;
S_0x1febf70 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fec160 .param/l "i" 0 13 33, +C4<010>;
S_0x1fec200 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fec3f0 .param/l "i" 0 13 33, +C4<011>;
S_0x1fec4b0 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fec6f0 .param/l "i" 0 13 33, +C4<0100>;
S_0x1fec7b0 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fec9a0 .param/l "i" 0 13 33, +C4<0101>;
S_0x1feca60 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fecc50 .param/l "i" 0 13 33, +C4<0110>;
S_0x1fecd10 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fecf00 .param/l "i" 0 13 33, +C4<0111>;
S_0x1fecfc0 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fec6a0 .param/l "i" 0 13 33, +C4<01000>;
S_0x1fed2b0 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fed4a0 .param/l "i" 0 13 33, +C4<01001>;
S_0x1fed560 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fed750 .param/l "i" 0 13 33, +C4<01010>;
S_0x1fed810 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1feda00 .param/l "i" 0 13 33, +C4<01011>;
S_0x1fedac0 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fedcb0 .param/l "i" 0 13 33, +C4<01100>;
S_0x1fedd70 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fedf60 .param/l "i" 0 13 33, +C4<01101>;
S_0x1fee020 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fee210 .param/l "i" 0 13 33, +C4<01110>;
S_0x1fee2d0 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fee4c0 .param/l "i" 0 13 33, +C4<01111>;
S_0x1fee580 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fed1b0 .param/l "i" 0 13 33, +C4<010000>;
S_0x1fee8d0 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1feeaa0 .param/l "i" 0 13 33, +C4<010001>;
S_0x1feeb60 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1feed50 .param/l "i" 0 13 33, +C4<010010>;
S_0x1feee10 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fef000 .param/l "i" 0 13 33, +C4<010011>;
S_0x1fef0c0 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fef2b0 .param/l "i" 0 13 33, +C4<010100>;
S_0x1fef370 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fef560 .param/l "i" 0 13 33, +C4<010101>;
S_0x1fef620 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fef810 .param/l "i" 0 13 33, +C4<010110>;
S_0x1fef8d0 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fefac0 .param/l "i" 0 13 33, +C4<010111>;
S_0x1fefb80 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1fefd70 .param/l "i" 0 13 33, +C4<011000>;
S_0x1fefe30 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff0020 .param/l "i" 0 13 33, +C4<011001>;
S_0x1ff00e0 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff02d0 .param/l "i" 0 13 33, +C4<011010>;
S_0x1ff0390 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff0580 .param/l "i" 0 13 33, +C4<011011>;
S_0x1ff0640 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff0830 .param/l "i" 0 13 33, +C4<011100>;
S_0x1ff08f0 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff0ae0 .param/l "i" 0 13 33, +C4<011101>;
S_0x1ff0ba0 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff0d90 .param/l "i" 0 13 33, +C4<011110>;
S_0x1ff0e50 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x1feb290;
 .timescale 0 0;
P_0x1ff1040 .param/l "i" 0 13 33, +C4<011111>;
S_0x1ff1100 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x1feb290;
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
L_0x7f90268ab0a8 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x200c370 .functor BUFZ 32, L_0x7f90268ab0a8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_1 .array/port v0x1ff7d10, 1;
L_0x200c3e0 .functor BUFZ 32, v0x1ff7d10_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_2 .array/port v0x1ff7d10, 2;
L_0x200c450 .functor BUFZ 32, v0x1ff7d10_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_3 .array/port v0x1ff7d10, 3;
L_0x200c4c0 .functor BUFZ 32, v0x1ff7d10_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_4 .array/port v0x1ff7d10, 4;
L_0x200c530 .functor BUFZ 32, v0x1ff7d10_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_5 .array/port v0x1ff7d10, 5;
L_0x200c5a0 .functor BUFZ 32, v0x1ff7d10_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_6 .array/port v0x1ff7d10, 6;
L_0x200c650 .functor BUFZ 32, v0x1ff7d10_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_7 .array/port v0x1ff7d10, 7;
L_0x200c6c0 .functor BUFZ 32, v0x1ff7d10_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_8 .array/port v0x1ff7d10, 8;
L_0x200c730 .functor BUFZ 32, v0x1ff7d10_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_9 .array/port v0x1ff7d10, 9;
L_0x200c7a0 .functor BUFZ 32, v0x1ff7d10_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_10 .array/port v0x1ff7d10, 10;
L_0x200c870 .functor BUFZ 32, v0x1ff7d10_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_11 .array/port v0x1ff7d10, 11;
L_0x200c8e0 .functor BUFZ 32, v0x1ff7d10_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_12 .array/port v0x1ff7d10, 12;
L_0x200c9c0 .functor BUFZ 32, v0x1ff7d10_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_13 .array/port v0x1ff7d10, 13;
L_0x200ca30 .functor BUFZ 32, v0x1ff7d10_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_14 .array/port v0x1ff7d10, 14;
L_0x200c950 .functor BUFZ 32, v0x1ff7d10_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_15 .array/port v0x1ff7d10, 15;
L_0x200cb20 .functor BUFZ 32, v0x1ff7d10_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_16 .array/port v0x1ff7d10, 16;
L_0x200cc20 .functor BUFZ 32, v0x1ff7d10_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_17 .array/port v0x1ff7d10, 17;
L_0x200cc90 .functor BUFZ 32, v0x1ff7d10_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_18 .array/port v0x1ff7d10, 18;
L_0x200cb90 .functor BUFZ 32, v0x1ff7d10_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_19 .array/port v0x1ff7d10, 19;
L_0x200cda0 .functor BUFZ 32, v0x1ff7d10_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_20 .array/port v0x1ff7d10, 20;
L_0x200cd00 .functor BUFZ 32, v0x1ff7d10_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_21 .array/port v0x1ff7d10, 21;
L_0x200cec0 .functor BUFZ 32, v0x1ff7d10_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_22 .array/port v0x1ff7d10, 22;
L_0x200ce10 .functor BUFZ 32, v0x1ff7d10_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_23 .array/port v0x1ff7d10, 23;
L_0x200cff0 .functor BUFZ 32, v0x1ff7d10_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_24 .array/port v0x1ff7d10, 24;
L_0x200cf30 .functor BUFZ 32, v0x1ff7d10_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_25 .array/port v0x1ff7d10, 25;
L_0x200d130 .functor BUFZ 32, v0x1ff7d10_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_26 .array/port v0x1ff7d10, 26;
L_0x200d060 .functor BUFZ 32, v0x1ff7d10_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_27 .array/port v0x1ff7d10, 27;
L_0x200d280 .functor BUFZ 32, v0x1ff7d10_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_28 .array/port v0x1ff7d10, 28;
L_0x200d1a0 .functor BUFZ 32, v0x1ff7d10_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_29 .array/port v0x1ff7d10, 29;
L_0x200d210 .functor BUFZ 32, v0x1ff7d10_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_30 .array/port v0x1ff7d10, 30;
L_0x200d3f0 .functor BUFZ 32, v0x1ff7d10_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1ff7d10_31 .array/port v0x1ff7d10, 31;
L_0x200d460 .functor BUFZ 32, v0x1ff7d10_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200d710 .functor BUFZ 32, L_0x200d2f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f90268ab060 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1fee770_0 .net *"_s101", 1 0, L_0x7f90268ab060;  1 drivers
v0x1ff1940_0 .net *"_s96", 31 0, L_0x200d2f0;  1 drivers
v0x1ff1a00_0 .net *"_s98", 6 0, L_0x200d5e0;  1 drivers
v0x1ff1ae0_0 .net "address", 4 0, v0x1f7b620_0;  alias, 1 drivers
v0x1ff1ba0_0 .net "input0", 31 0, L_0x7f90268ab0a8;  1 drivers
v0x1ff1cb0_0 .net "input1", 31 0, v0x1ff7d10_1;  1 drivers
v0x1ff1d90_0 .net "input10", 31 0, v0x1ff7d10_10;  1 drivers
v0x1ff1e70_0 .net "input11", 31 0, v0x1ff7d10_11;  1 drivers
v0x1ff1f50_0 .net "input12", 31 0, v0x1ff7d10_12;  1 drivers
v0x1ff20c0_0 .net "input13", 31 0, v0x1ff7d10_13;  1 drivers
v0x1ff21a0_0 .net "input14", 31 0, v0x1ff7d10_14;  1 drivers
v0x1ff2280_0 .net "input15", 31 0, v0x1ff7d10_15;  1 drivers
v0x1ff2360_0 .net "input16", 31 0, v0x1ff7d10_16;  1 drivers
v0x1ff2440_0 .net "input17", 31 0, v0x1ff7d10_17;  1 drivers
v0x1ff2520_0 .net "input18", 31 0, v0x1ff7d10_18;  1 drivers
v0x1ff2600_0 .net "input19", 31 0, v0x1ff7d10_19;  1 drivers
v0x1ff26e0_0 .net "input2", 31 0, v0x1ff7d10_2;  1 drivers
v0x1ff2890_0 .net "input20", 31 0, v0x1ff7d10_20;  1 drivers
v0x1ff2930_0 .net "input21", 31 0, v0x1ff7d10_21;  1 drivers
v0x1ff2a10_0 .net "input22", 31 0, v0x1ff7d10_22;  1 drivers
v0x1ff2af0_0 .net "input23", 31 0, v0x1ff7d10_23;  1 drivers
v0x1ff2bd0_0 .net "input24", 31 0, v0x1ff7d10_24;  1 drivers
v0x1ff2cb0_0 .net "input25", 31 0, v0x1ff7d10_25;  1 drivers
v0x1ff2d90_0 .net "input26", 31 0, v0x1ff7d10_26;  1 drivers
v0x1ff2e70_0 .net "input27", 31 0, v0x1ff7d10_27;  1 drivers
v0x1ff2f50_0 .net "input28", 31 0, v0x1ff7d10_28;  1 drivers
v0x1ff3030_0 .net "input29", 31 0, v0x1ff7d10_29;  1 drivers
v0x1ff3110_0 .net "input3", 31 0, v0x1ff7d10_3;  1 drivers
v0x1ff31f0_0 .net "input30", 31 0, v0x1ff7d10_30;  1 drivers
v0x1ff32d0_0 .net "input31", 31 0, v0x1ff7d10_31;  1 drivers
v0x1ff33b0_0 .net "input4", 31 0, v0x1ff7d10_4;  1 drivers
v0x1ff3490_0 .net "input5", 31 0, v0x1ff7d10_5;  1 drivers
v0x1ff3570_0 .net "input6", 31 0, v0x1ff7d10_6;  1 drivers
v0x1ff27c0_0 .net "input7", 31 0, v0x1ff7d10_7;  1 drivers
v0x1ff3840_0 .net "input8", 31 0, v0x1ff7d10_8;  1 drivers
v0x1ff3920_0 .net "input9", 31 0, v0x1ff7d10_9;  1 drivers
v0x1ff3a00 .array "mux", 0 31;
v0x1ff3a00_0 .net v0x1ff3a00 0, 31 0, L_0x200c370; 1 drivers
v0x1ff3a00_1 .net v0x1ff3a00 1, 31 0, L_0x200c3e0; 1 drivers
v0x1ff3a00_2 .net v0x1ff3a00 2, 31 0, L_0x200c450; 1 drivers
v0x1ff3a00_3 .net v0x1ff3a00 3, 31 0, L_0x200c4c0; 1 drivers
v0x1ff3a00_4 .net v0x1ff3a00 4, 31 0, L_0x200c530; 1 drivers
v0x1ff3a00_5 .net v0x1ff3a00 5, 31 0, L_0x200c5a0; 1 drivers
v0x1ff3a00_6 .net v0x1ff3a00 6, 31 0, L_0x200c650; 1 drivers
v0x1ff3a00_7 .net v0x1ff3a00 7, 31 0, L_0x200c6c0; 1 drivers
v0x1ff3a00_8 .net v0x1ff3a00 8, 31 0, L_0x200c730; 1 drivers
v0x1ff3a00_9 .net v0x1ff3a00 9, 31 0, L_0x200c7a0; 1 drivers
v0x1ff3a00_10 .net v0x1ff3a00 10, 31 0, L_0x200c870; 1 drivers
v0x1ff3a00_11 .net v0x1ff3a00 11, 31 0, L_0x200c8e0; 1 drivers
v0x1ff3a00_12 .net v0x1ff3a00 12, 31 0, L_0x200c9c0; 1 drivers
v0x1ff3a00_13 .net v0x1ff3a00 13, 31 0, L_0x200ca30; 1 drivers
v0x1ff3a00_14 .net v0x1ff3a00 14, 31 0, L_0x200c950; 1 drivers
v0x1ff3a00_15 .net v0x1ff3a00 15, 31 0, L_0x200cb20; 1 drivers
v0x1ff3a00_16 .net v0x1ff3a00 16, 31 0, L_0x200cc20; 1 drivers
v0x1ff3a00_17 .net v0x1ff3a00 17, 31 0, L_0x200cc90; 1 drivers
v0x1ff3a00_18 .net v0x1ff3a00 18, 31 0, L_0x200cb90; 1 drivers
v0x1ff3a00_19 .net v0x1ff3a00 19, 31 0, L_0x200cda0; 1 drivers
v0x1ff3a00_20 .net v0x1ff3a00 20, 31 0, L_0x200cd00; 1 drivers
v0x1ff3a00_21 .net v0x1ff3a00 21, 31 0, L_0x200cec0; 1 drivers
v0x1ff3a00_22 .net v0x1ff3a00 22, 31 0, L_0x200ce10; 1 drivers
v0x1ff3a00_23 .net v0x1ff3a00 23, 31 0, L_0x200cff0; 1 drivers
v0x1ff3a00_24 .net v0x1ff3a00 24, 31 0, L_0x200cf30; 1 drivers
v0x1ff3a00_25 .net v0x1ff3a00 25, 31 0, L_0x200d130; 1 drivers
v0x1ff3a00_26 .net v0x1ff3a00 26, 31 0, L_0x200d060; 1 drivers
v0x1ff3a00_27 .net v0x1ff3a00 27, 31 0, L_0x200d280; 1 drivers
v0x1ff3a00_28 .net v0x1ff3a00 28, 31 0, L_0x200d1a0; 1 drivers
v0x1ff3a00_29 .net v0x1ff3a00 29, 31 0, L_0x200d210; 1 drivers
v0x1ff3a00_30 .net v0x1ff3a00 30, 31 0, L_0x200d3f0; 1 drivers
v0x1ff3a00_31 .net v0x1ff3a00 31, 31 0, L_0x200d460; 1 drivers
v0x1ff3fd0_0 .net "out", 31 0, L_0x200d710;  alias, 1 drivers
L_0x200d2f0 .array/port v0x1ff3a00, L_0x200d5e0;
L_0x200d5e0 .concat [ 5 2 0 0], v0x1f7b620_0, L_0x7f90268ab060;
S_0x1ff45f0 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x1feb290;
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
L_0x7f90268ab138 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x200d780 .functor BUFZ 32, L_0x7f90268ab138, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200d7f0 .functor BUFZ 32, v0x1ff7d10_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200d8f0 .functor BUFZ 32, v0x1ff7d10_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200d9f0 .functor BUFZ 32, v0x1ff7d10_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200daf0 .functor BUFZ 32, v0x1ff7d10_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200dbf0 .functor BUFZ 32, v0x1ff7d10_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200dd20 .functor BUFZ 32, v0x1ff7d10_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200de20 .functor BUFZ 32, v0x1ff7d10_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200df50 .functor BUFZ 32, v0x1ff7d10_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e080 .functor BUFZ 32, v0x1ff7d10_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e1b0 .functor BUFZ 32, v0x1ff7d10_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e2e0 .functor BUFZ 32, v0x1ff7d10_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e480 .functor BUFZ 32, v0x1ff7d10_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e5b0 .functor BUFZ 32, v0x1ff7d10_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e410 .functor BUFZ 32, v0x1ff7d10_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e7a0 .functor BUFZ 32, v0x1ff7d10_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e960 .functor BUFZ 32, v0x1ff7d10_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200ea90 .functor BUFZ 32, v0x1ff7d10_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200e8d0 .functor BUFZ 32, v0x1ff7d10_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200ed20 .functor BUFZ 32, v0x1ff7d10_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200ebc0 .functor BUFZ 32, v0x1ff7d10_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200ef90 .functor BUFZ 32, v0x1ff7d10_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200ee50 .functor BUFZ 32, v0x1ff7d10_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f210 .functor BUFZ 32, v0x1ff7d10_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f0c0 .functor BUFZ 32, v0x1ff7d10_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f4a0 .functor BUFZ 32, v0x1ff7d10_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f340 .functor BUFZ 32, v0x1ff7d10_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f740 .functor BUFZ 32, v0x1ff7d10_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f5d0 .functor BUFZ 32, v0x1ff7d10_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f9c0 .functor BUFZ 32, v0x1ff7d10_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200f840 .functor BUFZ 32, v0x1ff7d10_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200fc50 .functor BUFZ 32, v0x1ff7d10_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x200ff00 .functor BUFZ 32, L_0x200fac0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f90268ab0f0 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1ff1530_0 .net *"_s101", 1 0, L_0x7f90268ab0f0;  1 drivers
v0x1ff4c10_0 .net *"_s96", 31 0, L_0x200fac0;  1 drivers
v0x1ff4d10_0 .net *"_s98", 6 0, L_0x200fe60;  1 drivers
v0x1ff4dd0_0 .net "address", 4 0, v0x1f76f90_0;  alias, 1 drivers
v0x1ff4ee0_0 .net "input0", 31 0, L_0x7f90268ab138;  1 drivers
v0x1ff4ff0_0 .net "input1", 31 0, v0x1ff7d10_1;  alias, 1 drivers
v0x1ff5090_0 .net "input10", 31 0, v0x1ff7d10_10;  alias, 1 drivers
v0x1ff5130_0 .net "input11", 31 0, v0x1ff7d10_11;  alias, 1 drivers
v0x1ff51d0_0 .net "input12", 31 0, v0x1ff7d10_12;  alias, 1 drivers
v0x1ff5300_0 .net "input13", 31 0, v0x1ff7d10_13;  alias, 1 drivers
v0x1ff53d0_0 .net "input14", 31 0, v0x1ff7d10_14;  alias, 1 drivers
v0x1ff54a0_0 .net "input15", 31 0, v0x1ff7d10_15;  alias, 1 drivers
v0x1ff5570_0 .net "input16", 31 0, v0x1ff7d10_16;  alias, 1 drivers
v0x1ff5640_0 .net "input17", 31 0, v0x1ff7d10_17;  alias, 1 drivers
v0x1ff5710_0 .net "input18", 31 0, v0x1ff7d10_18;  alias, 1 drivers
v0x1ff57e0_0 .net "input19", 31 0, v0x1ff7d10_19;  alias, 1 drivers
v0x1ff58b0_0 .net "input2", 31 0, v0x1ff7d10_2;  alias, 1 drivers
v0x1ff5a60_0 .net "input20", 31 0, v0x1ff7d10_20;  alias, 1 drivers
v0x1ff5b00_0 .net "input21", 31 0, v0x1ff7d10_21;  alias, 1 drivers
v0x1ff5ba0_0 .net "input22", 31 0, v0x1ff7d10_22;  alias, 1 drivers
v0x1ff5c70_0 .net "input23", 31 0, v0x1ff7d10_23;  alias, 1 drivers
v0x1ff5d40_0 .net "input24", 31 0, v0x1ff7d10_24;  alias, 1 drivers
v0x1ff5e10_0 .net "input25", 31 0, v0x1ff7d10_25;  alias, 1 drivers
v0x1ff5ee0_0 .net "input26", 31 0, v0x1ff7d10_26;  alias, 1 drivers
v0x1ff5fb0_0 .net "input27", 31 0, v0x1ff7d10_27;  alias, 1 drivers
v0x1ff6080_0 .net "input28", 31 0, v0x1ff7d10_28;  alias, 1 drivers
v0x1ff6150_0 .net "input29", 31 0, v0x1ff7d10_29;  alias, 1 drivers
v0x1ff6220_0 .net "input3", 31 0, v0x1ff7d10_3;  alias, 1 drivers
v0x1ff62f0_0 .net "input30", 31 0, v0x1ff7d10_30;  alias, 1 drivers
v0x1ff63c0_0 .net "input31", 31 0, v0x1ff7d10_31;  alias, 1 drivers
v0x1ff6490_0 .net "input4", 31 0, v0x1ff7d10_4;  alias, 1 drivers
v0x1ff6560_0 .net "input5", 31 0, v0x1ff7d10_5;  alias, 1 drivers
v0x1ff6630_0 .net "input6", 31 0, v0x1ff7d10_6;  alias, 1 drivers
v0x1ff5980_0 .net "input7", 31 0, v0x1ff7d10_7;  alias, 1 drivers
v0x1ff68e0_0 .net "input8", 31 0, v0x1ff7d10_8;  alias, 1 drivers
v0x1ff69b0_0 .net "input9", 31 0, v0x1ff7d10_9;  alias, 1 drivers
v0x1ff6a80 .array "mux", 0 31;
v0x1ff6a80_0 .net v0x1ff6a80 0, 31 0, L_0x200d780; 1 drivers
v0x1ff6a80_1 .net v0x1ff6a80 1, 31 0, L_0x200d7f0; 1 drivers
v0x1ff6a80_2 .net v0x1ff6a80 2, 31 0, L_0x200d8f0; 1 drivers
v0x1ff6a80_3 .net v0x1ff6a80 3, 31 0, L_0x200d9f0; 1 drivers
v0x1ff6a80_4 .net v0x1ff6a80 4, 31 0, L_0x200daf0; 1 drivers
v0x1ff6a80_5 .net v0x1ff6a80 5, 31 0, L_0x200dbf0; 1 drivers
v0x1ff6a80_6 .net v0x1ff6a80 6, 31 0, L_0x200dd20; 1 drivers
v0x1ff6a80_7 .net v0x1ff6a80 7, 31 0, L_0x200de20; 1 drivers
v0x1ff6a80_8 .net v0x1ff6a80 8, 31 0, L_0x200df50; 1 drivers
v0x1ff6a80_9 .net v0x1ff6a80 9, 31 0, L_0x200e080; 1 drivers
v0x1ff6a80_10 .net v0x1ff6a80 10, 31 0, L_0x200e1b0; 1 drivers
v0x1ff6a80_11 .net v0x1ff6a80 11, 31 0, L_0x200e2e0; 1 drivers
v0x1ff6a80_12 .net v0x1ff6a80 12, 31 0, L_0x200e480; 1 drivers
v0x1ff6a80_13 .net v0x1ff6a80 13, 31 0, L_0x200e5b0; 1 drivers
v0x1ff6a80_14 .net v0x1ff6a80 14, 31 0, L_0x200e410; 1 drivers
v0x1ff6a80_15 .net v0x1ff6a80 15, 31 0, L_0x200e7a0; 1 drivers
v0x1ff6a80_16 .net v0x1ff6a80 16, 31 0, L_0x200e960; 1 drivers
v0x1ff6a80_17 .net v0x1ff6a80 17, 31 0, L_0x200ea90; 1 drivers
v0x1ff6a80_18 .net v0x1ff6a80 18, 31 0, L_0x200e8d0; 1 drivers
v0x1ff6a80_19 .net v0x1ff6a80 19, 31 0, L_0x200ed20; 1 drivers
v0x1ff6a80_20 .net v0x1ff6a80 20, 31 0, L_0x200ebc0; 1 drivers
v0x1ff6a80_21 .net v0x1ff6a80 21, 31 0, L_0x200ef90; 1 drivers
v0x1ff6a80_22 .net v0x1ff6a80 22, 31 0, L_0x200ee50; 1 drivers
v0x1ff6a80_23 .net v0x1ff6a80 23, 31 0, L_0x200f210; 1 drivers
v0x1ff6a80_24 .net v0x1ff6a80 24, 31 0, L_0x200f0c0; 1 drivers
v0x1ff6a80_25 .net v0x1ff6a80 25, 31 0, L_0x200f4a0; 1 drivers
v0x1ff6a80_26 .net v0x1ff6a80 26, 31 0, L_0x200f340; 1 drivers
v0x1ff6a80_27 .net v0x1ff6a80 27, 31 0, L_0x200f740; 1 drivers
v0x1ff6a80_28 .net v0x1ff6a80 28, 31 0, L_0x200f5d0; 1 drivers
v0x1ff6a80_29 .net v0x1ff6a80 29, 31 0, L_0x200f9c0; 1 drivers
v0x1ff6a80_30 .net v0x1ff6a80 30, 31 0, L_0x200f840; 1 drivers
v0x1ff6a80_31 .net v0x1ff6a80 31, 31 0, L_0x200fc50; 1 drivers
v0x1ff7030_0 .net "out", 31 0, L_0x200ff00;  alias, 1 drivers
L_0x200fac0 .array/port v0x1ff6a80, L_0x200fe60;
L_0x200fe60 .concat [ 5 2 0 0], v0x1f76f90_0, L_0x7f90268ab0f0;
S_0x1f15170 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f902690ba48 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1ffa9d0_0 .net "address", 4 0, o0x7f902690ba48;  0 drivers
o0x7f902690ba78 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1ffaad0_0 .net "inputs", 31 0, o0x7f902690ba78;  0 drivers
v0x1ffabb0_0 .net "out", 0 0, L_0x20383b0;  1 drivers
L_0x20383b0 .part/v o0x7f902690ba78, o0x7f902690ba48, 1;
S_0x1f7df00 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f902690bb68 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffacf0_0 .net "clk", 0 0, o0x7f902690bb68;  0 drivers
o0x7f902690bb98 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffadd0_0 .net "d", 0 0, o0x7f902690bb98;  0 drivers
v0x1ffae90_0 .var "q", 0 0;
o0x7f902690bbf8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffaf30_0 .net "wrenable", 0 0, o0x7f902690bbf8;  0 drivers
E_0x1f584b0 .event posedge, v0x1ffacf0_0;
S_0x1f7a190 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f902690bce8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffb0b0_0 .net "clk", 0 0, o0x7f902690bce8;  0 drivers
o0x7f902690bd18 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1ffb190_0 .net "d", 31 0, o0x7f902690bd18;  0 drivers
v0x1ffb270_0 .var "q", 31 0;
o0x7f902690bd78 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffb330_0 .net "wrenable", 0 0, o0x7f902690bd78;  0 drivers
E_0x1ff5a20 .event posedge, v0x1ffb0b0_0;
S_0x1f02a90 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f902690be68 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffb4f0_0 .net "clk", 0 0, o0x7f902690be68;  0 drivers
o0x7f902690be98 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1ffb5d0_0 .net "d", 31 0, o0x7f902690be98;  0 drivers
v0x1ffb6b0_0 .var "q", 31 0;
o0x7f902690bef8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1ffb770_0 .net "wrenable", 0 0, o0x7f902690bef8;  0 drivers
E_0x1ffb470 .event posedge, v0x1ffb4f0_0;
    .scope S_0x1fe8d00;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1fe90e0_0, 0;
    %end;
    .thread T_0;
    .scope S_0x1fe8d00;
T_1 ;
    %wait E_0x1fe8f70;
    %load/vec4 v0x1fe91b0_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x1fe9550_0;
    %assign/vec4 v0x1fe9490_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x1fe91b0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x1fe8fd0_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1fe9490_0, 4, 5;
    %load/vec4 v0x1fe9550_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1fe9490_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1fe9490_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x1fe91b0_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x1fe93a0_0;
    %load/vec4 v0x1fe9550_0;
    %add;
    %store/vec4 v0x1fe9490_0, 0, 32;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x1fe9630_0;
    %assign/vec4 v0x1fe9490_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0x1fe90e0_0;
    %addi 1, 0, 32;
    %assign/vec4 v0x1fe9550_0, 0;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x1fe8d00;
T_2 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1fe9490_0;
    %store/vec4 v0x1fe90e0_0, 0, 32;
    %load/vec4 v0x1fe90e0_0;
    %addi 1, 0, 32;
    %store/vec4 v0x1fe9550_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x1f5fc70;
T_3 ;
    %wait E_0x1ef0150;
    %load/vec4 v0x1f43b80_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1f43f40_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1f48170_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x1f43b80_0;
    %cmpi/e 4, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x1f43b80_0;
    %cmpi/e 5, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1f48170_0, 0, 2;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x1f43b80_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x1f43b80_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.4, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f48170_0, 0, 2;
    %jmp T_3.5;
T_3.4 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f48170_0, 0, 2;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x1fe79e0;
T_4 ;
    %wait E_0x1fe7c60;
    %vpi_call 11 15 "$display", "thing %b", &A<v0x1fe83d0, 1> {0 0 0};
    %load/vec4 v0x1fe8500_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x1fe7dc0_0;
    %ix/getv 3, v0x1fe7ce0_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1fe83d0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x1fe79e0;
T_5 ;
    %vpi_call 11 20 "$readmemh", "yeet.text", v0x1fe83d0 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x1f5b5e0;
T_6 ;
    %wait E_0x1f48290;
    %load/vec4 v0x1f1f340_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x1f16600_0, 0, 6;
    %load/vec4 v0x1f1f340_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x1f24fb0_0, 0, 6;
    %load/vec4 v0x1f1f340_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x1f7b620_0, 0, 5;
    %load/vec4 v0x1f1f340_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x1f76f90_0, 0, 5;
    %load/vec4 v0x1f1f340_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x1f12020_0, 0, 5;
    %load/vec4 v0x1f1f340_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x1f1f3e0_0, 0, 6;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1f25070_0, 4, 16;
    %load/vec4 v0x1f1f340_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1f25070_0, 4, 16;
    %load/vec4 v0x1f1f340_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x1f295a0_0, 0, 26;
    %load/vec4 v0x1f16600_0;
    %dup/vec4;
    %pushi/vec4 35, 0, 6;
    %cmp/u;
    %jmp/1 T_6.0, 6;
    %dup/vec4;
    %pushi/vec4 43, 0, 6;
    %cmp/u;
    %jmp/1 T_6.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 6;
    %cmp/u;
    %jmp/1 T_6.2, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 6;
    %cmp/u;
    %jmp/1 T_6.3, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 6;
    %cmp/u;
    %jmp/1 T_6.4, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 6;
    %cmp/u;
    %jmp/1 T_6.5, 6;
    %dup/vec4;
    %pushi/vec4 14, 0, 6;
    %cmp/u;
    %jmp/1 T_6.6, 6;
    %dup/vec4;
    %pushi/vec4 8, 0, 6;
    %cmp/u;
    %jmp/1 T_6.7, 6;
    %dup/vec4;
    %pushi/vec4 0, 0, 6;
    %cmp/u;
    %jmp/1 T_6.8, 6;
    %jmp T_6.9;
T_6.0 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.1 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.2 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.3 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.6 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.7 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.9;
T_6.8 ;
    %load/vec4 v0x1f24fb0_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.10, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x1f24fb0_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x1f24fb0_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x1f24fb0_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f7eeb0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1f2dc50_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f1acd0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29960_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f253e0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1f7ef50_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1f29a00_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1f11f60_0, 0, 2;
T_6.16 ;
T_6.15 ;
T_6.13 ;
T_6.11 ;
    %jmp T_6.9;
T_6.9 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x1febcc0;
T_7 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x1febf70;
T_8 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x1fec200;
T_9 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x1fec4b0;
T_10 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x1fec7b0;
T_11 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x1feca60;
T_12 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x1fecd10;
T_13 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x1fecfc0;
T_14 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x1fed2b0;
T_15 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x1fed560;
T_16 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x1fed810;
T_17 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x1fedac0;
T_18 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x1fedd70;
T_19 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x1fee020;
T_20 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x1fee2d0;
T_21 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x1fee580;
T_22 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x1fee8d0;
T_23 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x1feeb60;
T_24 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x1feee10;
T_25 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x1fef0c0;
T_26 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x1fef370;
T_27 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x1fef620;
T_28 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x1fef8d0;
T_29 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x1fefb80;
T_30 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x1fefe30;
T_31 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x1ff00e0;
T_32 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x1ff0390;
T_33 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x1ff0640;
T_34 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x1ff08f0;
T_35 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x1ff0ba0;
T_36 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x1ff0e50;
T_37 ;
    %wait E_0x1fe7c60;
    %load/vec4 v0x1ff7bc0_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x1ff7a10_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1ff7d10, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x1f19800;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1ffa7d0_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x1f19800;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x1ffa7d0_0;
    %nor/r;
    %store/vec4 v0x1ffa7d0_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x1f19800;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x1ffa870_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x1ffa930_0 {0 0 0};
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x1f7df00;
T_41 ;
    %wait E_0x1f584b0;
    %load/vec4 v0x1ffaf30_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x1ffadd0_0;
    %assign/vec4 v0x1ffae90_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x1f7a190;
T_42 ;
    %wait E_0x1ff5a20;
    %load/vec4 v0x1ffb330_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x1ffb190_0;
    %assign/vec4 v0x1ffb270_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x1f02a90;
T_43 ;
    %wait E_0x1ffb470;
    %load/vec4 v0x1ffb770_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1ffb6b0_0, 0;
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
    "./muxes.v";
    "./ALU/alu.v";
    "./ALU/operations/gates.v";
    "./ALU/operations/multiplexer.v";
    "./memory.v";
    "./pc_multiplexer.v";
    "./regfile.v";
    "./decoders.v";
    "./mux.v";
    "./register.v";
