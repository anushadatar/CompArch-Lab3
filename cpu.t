#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x25bb7e0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7f87e29b0018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7f87e29b0048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x26fb190 .functor XOR 1, o0x7f87e29b0018, o0x7f87e29b0048, C4<0>, C4<0>;
o0x7f87e29b0078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x26fb220 .functor XOR 1, L_0x26fb190, o0x7f87e29b0078, C4<0>, C4<0>;
L_0x26fb290 .functor AND 1, L_0x26fb190, o0x7f87e29b0078, C4<1>, C4<1>;
L_0x26fb350 .functor AND 1, o0x7f87e29b0018, o0x7f87e29b0048, C4<1>, C4<1>;
L_0x26fb460 .functor OR 1, L_0x26fb290, L_0x26fb350, C4<0>, C4<0>;
L_0x26fb570 .functor XOR 1, L_0x26fb460, o0x7f87e29b0078, C4<0>, C4<0>;
v0x25c5fa0_0 .net "A", 0 0, o0x7f87e29b0018;  0 drivers
v0x26020b0_0 .net "B", 0 0, o0x7f87e29b0048;  0 drivers
v0x266b630_0 .net "carryin", 0 0, o0x7f87e29b0078;  0 drivers
v0x266b270_0 .net "carryout", 0 0, L_0x26fb460;  1 drivers
v0x266b330_0 .net "out1", 0 0, L_0x26fb190;  1 drivers
v0x2667040_0 .net "out2", 0 0, L_0x26fb290;  1 drivers
v0x2667100_0 .net "out3", 0 0, L_0x26fb350;  1 drivers
v0x2666c80_0 .net "overflow", 0 0, L_0x26fb570;  1 drivers
v0x2666d40_0 .net "sum", 0 0, L_0x26fb220;  1 drivers
S_0x261dd80 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x26f8fb0_0 .var "clk", 0 0;
v0x26fa190_0 .net "dataMem", 31 0, L_0x26fb710;  1 drivers
v0x26fa250_0 .net "regRT", 31 0, L_0x270fc50;  1 drivers
S_0x2675a10 .scope module, "cpu" "singlecycleCPU" 3 9, 4 21 0, S_0x261dd80;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x26f80b0_0 .net "ALU_op", 2 0, v0x2648060_0;  1 drivers
v0x26f8190_0 .net "DM_WE", 0 0, v0x2643e30_0;  1 drivers
v0x26f8250_0 .net "DM_add", 0 0, v0x2643ef0_0;  1 drivers
v0x26f82f0_0 .net "JumpAddress", 25 0, v0x2643a70_0;  1 drivers
v0x26f8390_0 .net "PC", 31 0, v0x26e86d0_0;  1 drivers
v0x26f8480_0 .net "S", 1 0, v0x26510b0_0;  1 drivers
L_0x7f87e2967b58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x26f8520_0 .net/2u *"_s10", 31 0, L_0x7f87e2967b58;  1 drivers
v0x26f85c0_0 .net *"_s4", 29 0, L_0x26fbb60;  1 drivers
L_0x7f87e2967018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x26f8680_0 .net *"_s6", 1 0, L_0x7f87e2967018;  1 drivers
v0x26f87f0_0 .net "alu2", 31 0, L_0x2737ec0;  1 drivers
v0x26f88b0_0 .net "alu_out", 31 0, L_0x27343b0;  1 drivers
v0x26f89c0_0 .net "clk", 0 0, v0x26f8fb0_0;  1 drivers
v0x26f8af0_0 .net "co_flag", 0 0, L_0x26cc830;  1 drivers
v0x26f8c20_0 .net "dataMem", 31 0, L_0x26fb710;  alias, 1 drivers
v0x26f8ce0_0 .net "dest_add", 1 0, v0x262da80_0;  1 drivers
v0x26f8da0_0 .net "funct", 5 0, v0x2629850_0;  1 drivers
v0x26f8eb0_0 .net "immediate", 31 0, v0x2629910_0;  1 drivers
v0x26f9060_0 .net "instruction", 31 0, L_0x26fb8b0;  1 drivers
v0x26f9100_0 .net "op_imm", 0 0, v0x2625260_0;  1 drivers
v0x26f91f0_0 .net "opcode", 5 0, v0x2625320_0;  1 drivers
v0x26f9300_0 .net "ov_flag", 0 0, L_0x2733f60;  1 drivers
v0x26f9430_0 .net "pc", 1 0, v0x2624ea0_0;  1 drivers
v0x26f94f0_0 .net "rd", 4 0, v0x2624f60_0;  1 drivers
v0x26f9600_0 .net "regRS", 31 0, L_0x270d320;  1 drivers
v0x26f9750_0 .net "regRT", 31 0, L_0x270fc50;  alias, 1 drivers
v0x26f98a0_0 .net "reg_WE", 0 0, v0x261f210_0;  1 drivers
v0x26f99d0_0 .net "reg_in", 1 0, v0x261f2b0_0;  1 drivers
v0x26f9a90_0 .net "reg_in_mux_out", 31 0, L_0x2737b80;  1 drivers
v0x26f9b50_0 .net "reg_select_mux_out", 4 0, L_0x2737550;  1 drivers
v0x26f9c10_0 .net "rs", 4 0, v0x261ab80_0;  1 drivers
v0x26f9cd0_0 .net "rt", 4 0, v0x26164f0_0;  1 drivers
v0x26f9e20_0 .net "shamt", 5 0, v0x2616590_0;  1 drivers
v0x26f9ee0_0 .net "zero_flag", 0 0, L_0x27333b0;  1 drivers
L_0x26fb970 .arith/sum 32, v0x2629910_0, L_0x270d320;
L_0x26fbb60 .part v0x26e86d0_0, 2, 30;
L_0x26fbc00 .concat [ 30 2 0 0], L_0x26fbb60, L_0x7f87e2967018;
L_0x2737d10 .arith/sum 32, v0x26e86d0_0, L_0x7f87e2967b58;
S_0x2663320 .scope module, "controlPC" "pcController" 4 54, 5 8 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x26510b0_0 .var "controlSig", 1 0;
v0x2650c40_0 .net "function1", 5 0, v0x2629850_0;  alias, 1 drivers
v0x264ca10_0 .net "opcode", 5 0, v0x2625320_0;  alias, 1 drivers
v0x264c650_0 .net "zeroFlag", 0 0, L_0x27333b0;  alias, 1 drivers
E_0x25f09d0 .event edge, v0x264ca10_0;
S_0x265fb70 .scope module, "decode" "instructionDecoder" 4 58, 6 20 0, S_0x2675a10;
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
v0x2648060_0 .var "ALU_op", 2 0;
v0x2643e30_0 .var "DM_WE", 0 0;
v0x2643ef0_0 .var "DM_add", 0 0;
v0x2643a70_0 .var "address", 25 0;
v0x262de40_0 .net "clk", 0 0, v0x26f8fb0_0;  alias, 1 drivers
v0x262da80_0 .var "dest_add", 1 0;
v0x2629850_0 .var "funct", 5 0;
v0x2629910_0 .var "immediate", 31 0;
v0x2629490_0 .net "instruction", 31 0, L_0x26fb8b0;  alias, 1 drivers
v0x2625260_0 .var "op_imm", 0 0;
v0x2625320_0 .var "opcode", 5 0;
v0x2624ea0_0 .var "pc", 1 0;
v0x2624f60_0 .var "rd", 4 0;
v0x261f210_0 .var "reg_WE", 0 0;
v0x261f2b0_0 .var "reg_in", 1 0;
v0x261ab80_0 .var "rs", 4 0;
v0x26164f0_0 .var "rt", 4 0;
v0x2616590_0 .var "shamt", 5 0;
E_0x26484c0 .event edge, v0x2629490_0;
S_0x265b4e0 .scope module, "lulu" "ALU" 4 64, 7 105 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x27333b0/0/0 .functor OR 1, L_0x2722b20, L_0x2734600, L_0x27346a0, L_0x2734790;
L_0x27333b0/0/4 .functor OR 1, L_0x2735060, L_0x2722c10, L_0x2734d20, L_0x2734e10;
L_0x27333b0/0/8 .functor OR 1, L_0x2734f00, L_0x2735570, L_0x2735210, L_0x2735300;
L_0x27333b0/0/12 .functor OR 1, L_0x27353f0, L_0x2735100, L_0x2735610, L_0x2735700;
L_0x27333b0/0/16 .functor OR 1, L_0x27357f0, L_0x27358e0, L_0x2735f50, L_0x2735ff0;
L_0x27333b0/0/20 .functor OR 1, L_0x2735ba0, L_0x2735c90, L_0x2735d80, L_0x2735e70;
L_0x27333b0/0/24 .functor OR 1, L_0x27360e0, L_0x27361d0, L_0x27362c0, L_0x27363b0;
L_0x27333b0/0/28 .functor OR 1, L_0x2736900, L_0x2735990, L_0x2735a80, L_0x2736500;
L_0x27333b0/0/32 .functor OR 1, L_0x27365f0, L_0x27366e0, C4<0>, C4<0>;
L_0x27333b0/1/0 .functor OR 1, L_0x27333b0/0/0, L_0x27333b0/0/4, L_0x27333b0/0/8, L_0x27333b0/0/12;
L_0x27333b0/1/4 .functor OR 1, L_0x27333b0/0/16, L_0x27333b0/0/20, L_0x27333b0/0/24, L_0x27333b0/0/28;
L_0x27333b0/1/8 .functor OR 1, L_0x27333b0/0/32, C4<0>, C4<0>, C4<0>;
L_0x27333b0 .functor NOR 1, L_0x27333b0/1/0, L_0x27333b0/1/4, L_0x27333b0/1/8, C4<0>;
v0x26e47b0_0 .net "A", 31 0, L_0x270d320;  alias, 1 drivers
v0x26e48b0_0 .net "B", 31 0, L_0x2737ec0;  alias, 1 drivers
v0x26e4990_0 .net *"_s322", 0 0, L_0x2722b20;  1 drivers
v0x26e4a80_0 .net *"_s324", 0 0, L_0x2734600;  1 drivers
v0x26e4b60_0 .net *"_s326", 0 0, L_0x27346a0;  1 drivers
v0x26e4c90_0 .net *"_s328", 0 0, L_0x2734790;  1 drivers
v0x26e4d70_0 .net *"_s330", 0 0, L_0x2735060;  1 drivers
v0x26e4e50_0 .net *"_s332", 0 0, L_0x2722c10;  1 drivers
v0x26e4f30_0 .net *"_s334", 0 0, L_0x2734d20;  1 drivers
v0x26e50a0_0 .net *"_s336", 0 0, L_0x2734e10;  1 drivers
v0x26e5180_0 .net *"_s338", 0 0, L_0x2734f00;  1 drivers
v0x26e5260_0 .net *"_s340", 0 0, L_0x2735570;  1 drivers
v0x26e5340_0 .net *"_s342", 0 0, L_0x2735210;  1 drivers
v0x26e5420_0 .net *"_s344", 0 0, L_0x2735300;  1 drivers
v0x26e5500_0 .net *"_s346", 0 0, L_0x27353f0;  1 drivers
v0x26e55e0_0 .net *"_s348", 0 0, L_0x2735100;  1 drivers
v0x26e56c0_0 .net *"_s350", 0 0, L_0x2735610;  1 drivers
v0x26e5870_0 .net *"_s352", 0 0, L_0x2735700;  1 drivers
v0x26e5910_0 .net *"_s354", 0 0, L_0x27357f0;  1 drivers
v0x26e59f0_0 .net *"_s356", 0 0, L_0x27358e0;  1 drivers
v0x26e5ad0_0 .net *"_s358", 0 0, L_0x2735f50;  1 drivers
v0x26e5bb0_0 .net *"_s360", 0 0, L_0x2735ff0;  1 drivers
v0x26e5c90_0 .net *"_s362", 0 0, L_0x2735ba0;  1 drivers
v0x26e5d70_0 .net *"_s364", 0 0, L_0x2735c90;  1 drivers
v0x26e5e50_0 .net *"_s366", 0 0, L_0x2735d80;  1 drivers
v0x26e5f30_0 .net *"_s368", 0 0, L_0x2735e70;  1 drivers
v0x26e6010_0 .net *"_s370", 0 0, L_0x27360e0;  1 drivers
v0x26e60f0_0 .net *"_s372", 0 0, L_0x27361d0;  1 drivers
v0x26e61d0_0 .net *"_s374", 0 0, L_0x27362c0;  1 drivers
v0x26e62b0_0 .net *"_s376", 0 0, L_0x27363b0;  1 drivers
v0x26e6390_0 .net *"_s378", 0 0, L_0x2736900;  1 drivers
v0x26e6470_0 .net *"_s380", 0 0, L_0x2735990;  1 drivers
v0x26e6550_0 .net *"_s382", 0 0, L_0x2735a80;  1 drivers
v0x26e57a0_0 .net *"_s384", 0 0, L_0x2736500;  1 drivers
v0x26e6820_0 .net *"_s386", 0 0, L_0x27365f0;  1 drivers
v0x26e6900_0 .net *"_s388", 0 0, L_0x27366e0;  1 drivers
v0x26e69e0_0 .net "carryout", 0 0, L_0x26cc830;  alias, 1 drivers
v0x26e6a80_0 .net "command", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26e6b40_0 .net "cout", 30 0, L_0x2733020;  1 drivers
v0x26e6c20_0 .net "overflow", 0 0, L_0x2733f60;  alias, 1 drivers
v0x26e6cc0_0 .net "result", 31 0, L_0x27343b0;  alias, 1 drivers
v0x26e6da0_0 .net "zero", 0 0, L_0x27333b0;  alias, 1 drivers
L_0x27106b0 .part L_0x270d320, 0, 1;
L_0x2710750 .part L_0x2737ec0, 0, 1;
L_0x27107f0 .part v0x2648060_0, 0, 1;
L_0x2711600 .part L_0x270d320, 1, 1;
L_0x27117b0 .part L_0x2737ec0, 1, 1;
L_0x2711850 .part L_0x2733020, 0, 1;
L_0x2712920 .part L_0x270d320, 2, 1;
L_0x27129c0 .part L_0x2737ec0, 2, 1;
L_0x2712a60 .part L_0x2733020, 1, 1;
L_0x2713b80 .part L_0x270d320, 3, 1;
L_0x2713c20 .part L_0x2737ec0, 3, 1;
L_0x2713cc0 .part L_0x2733020, 2, 1;
L_0x2714db0 .part L_0x270d320, 4, 1;
L_0x2714e50 .part L_0x2737ec0, 4, 1;
L_0x2714ef0 .part L_0x2733020, 3, 1;
L_0x2715f90 .part L_0x270d320, 5, 1;
L_0x27160c0 .part L_0x2737ec0, 5, 1;
L_0x2716270 .part L_0x2733020, 4, 1;
L_0x27170f0 .part L_0x270d320, 6, 1;
L_0x2717190 .part L_0x2737ec0, 6, 1;
L_0x2716310 .part L_0x2733020, 5, 1;
L_0x2718260 .part L_0x270d320, 7, 1;
L_0x2717230 .part L_0x2737ec0, 7, 1;
L_0x27183c0 .part L_0x2733020, 6, 1;
L_0x27193a0 .part L_0x270d320, 8, 1;
L_0x2719440 .part L_0x2737ec0, 8, 1;
L_0x27184f0 .part L_0x2733020, 7, 1;
L_0x271a5d0 .part L_0x270d320, 9, 1;
L_0x27194e0 .part L_0x2737ec0, 9, 1;
L_0x271a880 .part L_0x2733020, 8, 1;
L_0x271ba40 .part L_0x270d320, 10, 1;
L_0x271bae0 .part L_0x2737ec0, 10, 1;
L_0x271bb80 .part L_0x2733020, 9, 1;
L_0x271cbc0 .part L_0x270d320, 11, 1;
L_0x27116a0 .part L_0x2737ec0, 11, 1;
L_0x271cd80 .part L_0x2733020, 10, 1;
L_0x271de30 .part L_0x270d320, 12, 1;
L_0x271ded0 .part L_0x2737ec0, 12, 1;
L_0x271ceb0 .part L_0x2733020, 11, 1;
L_0x271f070 .part L_0x270d320, 13, 1;
L_0x271df70 .part L_0x2737ec0, 13, 1;
L_0x271e010 .part L_0x2733020, 12, 1;
L_0x27203b0 .part L_0x270d320, 14, 1;
L_0x2720450 .part L_0x2737ec0, 14, 1;
L_0x271f470 .part L_0x2733020, 13, 1;
L_0x2721600 .part L_0x270d320, 15, 1;
L_0x27204f0 .part L_0x2737ec0, 15, 1;
L_0x2720590 .part L_0x2733020, 14, 1;
L_0x2722840 .part L_0x270d320, 16, 1;
L_0x27228e0 .part L_0x2737ec0, 16, 1;
L_0x27218b0 .part L_0x2733020, 15, 1;
L_0x2723b60 .part L_0x270d320, 17, 1;
L_0x2722980 .part L_0x2737ec0, 17, 1;
L_0x2722a20 .part L_0x2733020, 16, 1;
L_0x2724da0 .part L_0x270d320, 18, 1;
L_0x2724e40 .part L_0x2737ec0, 18, 1;
L_0x2723e40 .part L_0x2733020, 17, 1;
L_0x2725fc0 .part L_0x270d320, 19, 1;
L_0x2724ee0 .part L_0x2737ec0, 19, 1;
L_0x2724f80 .part L_0x2733020, 18, 1;
L_0x27271f0 .part L_0x270d320, 20, 1;
L_0x2727290 .part L_0x2737ec0, 20, 1;
L_0x2726060 .part L_0x2733020, 19, 1;
L_0x2728420 .part L_0x270d320, 21, 1;
L_0x2727330 .part L_0x2737ec0, 21, 1;
L_0x27273d0 .part L_0x2733020, 20, 1;
L_0x2729660 .part L_0x270d320, 22, 1;
L_0x2729700 .part L_0x2737ec0, 22, 1;
L_0x27284c0 .part L_0x2733020, 21, 1;
L_0x272a890 .part L_0x270d320, 23, 1;
L_0x27297a0 .part L_0x2737ec0, 23, 1;
L_0x2729840 .part L_0x2733020, 22, 1;
L_0x272bac0 .part L_0x270d320, 24, 1;
L_0x272bb60 .part L_0x2737ec0, 24, 1;
L_0x272a930 .part L_0x2733020, 23, 1;
L_0x272ccf0 .part L_0x270d320, 25, 1;
L_0x271a670 .part L_0x2737ec0, 25, 1;
L_0x271a710 .part L_0x2733020, 24, 1;
L_0x271b930 .part L_0x270d320, 26, 1;
L_0x272e160 .part L_0x2737ec0, 26, 1;
L_0x272d1a0 .part L_0x2733020, 25, 1;
L_0x272f1d0 .part L_0x270d320, 27, 1;
L_0x272e200 .part L_0x2737ec0, 27, 1;
L_0x272e2a0 .part L_0x2733020, 26, 1;
L_0x2730300 .part L_0x270d320, 28, 1;
L_0x27303a0 .part L_0x2737ec0, 28, 1;
L_0x272f270 .part L_0x2733020, 27, 1;
L_0x2731420 .part L_0x270d320, 29, 1;
L_0x2730440 .part L_0x2737ec0, 29, 1;
L_0x271f260 .part L_0x2733020, 28, 1;
LS_0x2733020_0_0 .concat8 [ 1 1 1 1], L_0x25ecd30, L_0x2605e30, L_0x269d650, L_0x26c5480;
LS_0x2733020_0_4 .concat8 [ 1 1 1 1], L_0x26d0c50, L_0x26d4620, L_0x26d7ff0, L_0x26db9c0;
LS_0x2733020_0_8 .concat8 [ 1 1 1 1], L_0x26df390, L_0x26e2d60, L_0x25f1b50, L_0x2614d50;
LS_0x2733020_0_12 .concat8 [ 1 1 1 1], L_0x265b9c0, L_0x25d8850, L_0x2617da0, L_0x263ac50;
LS_0x2733020_0_16 .concat8 [ 1 1 1 1], L_0x267cf70, L_0x2473870, L_0x26962b0, L_0x2699c80;
LS_0x2733020_0_20 .concat8 [ 1 1 1 1], L_0x26a1020, L_0x26a49f0, L_0x26a83c0, L_0x26abfc0;
LS_0x2733020_0_24 .concat8 [ 1 1 1 1], L_0x26af990, L_0x26b3340, L_0x26b6d40, L_0x26ba710;
LS_0x2733020_0_28 .concat8 [ 1 1 1 0], L_0x26be0e0, L_0x26c1ab0, L_0x26c8e50;
LS_0x2733020_1_0 .concat8 [ 4 4 4 4], LS_0x2733020_0_0, LS_0x2733020_0_4, LS_0x2733020_0_8, LS_0x2733020_0_12;
LS_0x2733020_1_4 .concat8 [ 4 4 4 3], LS_0x2733020_0_16, LS_0x2733020_0_20, LS_0x2733020_0_24, LS_0x2733020_0_28;
L_0x2733020 .concat8 [ 16 15 0 0], LS_0x2733020_1_0, LS_0x2733020_1_4;
L_0x27331d0 .part L_0x270d320, 30, 1;
L_0x2731ba0 .part L_0x2737ec0, 30, 1;
L_0x2731c40 .part L_0x2733020, 29, 1;
LS_0x27343b0_0_0 .concat8 [ 1 1 1 1], L_0x2710400, L_0x2711140, L_0x2712260, L_0x2713550;
LS_0x27343b0_0_4 .concat8 [ 1 1 1 1], L_0x2714780, L_0x2715960, L_0x2716b20, L_0x2717c90;
LS_0x27343b0_0_8 .concat8 [ 1 1 1 1], L_0x2718dd0, L_0x2719fc0, L_0x271b300, L_0x271c590;
LS_0x27343b0_0_12 .concat8 [ 1 1 1 1], L_0x271d800, L_0x271ea40, L_0x271fd80, L_0x2720fd0;
LS_0x27343b0_0_16 .concat8 [ 1 1 1 1], L_0x2722210, L_0x2723530, L_0x2724770, L_0x2725990;
LS_0x27343b0_0_20 .concat8 [ 1 1 1 1], L_0x2726bc0, L_0x2727df0, L_0x2729030, L_0x272a260;
LS_0x27343b0_0_24 .concat8 [ 1 1 1 1], L_0x272b490, L_0x272c6c0, L_0x272d980, L_0x272ec00;
LS_0x27343b0_0_28 .concat8 [ 1 1 1 1], L_0x272fd30, L_0x2730e50, L_0x26e3f90, L_0x2733e20;
LS_0x27343b0_1_0 .concat8 [ 4 4 4 4], LS_0x27343b0_0_0, LS_0x27343b0_0_4, LS_0x27343b0_0_8, LS_0x27343b0_0_12;
LS_0x27343b0_1_4 .concat8 [ 4 4 4 4], LS_0x27343b0_0_16, LS_0x27343b0_0_20, LS_0x27343b0_0_24, LS_0x27343b0_0_28;
L_0x27343b0 .concat8 [ 16 16 0 0], LS_0x27343b0_1_0, LS_0x27343b0_1_4;
L_0x2734560 .part L_0x270d320, 31, 1;
L_0x2733270 .part L_0x2737ec0, 31, 1;
L_0x2733310 .part L_0x2733020, 30, 1;
L_0x2722b20 .part L_0x27343b0, 0, 1;
L_0x2734600 .part L_0x27343b0, 1, 1;
L_0x27346a0 .part L_0x27343b0, 2, 1;
L_0x2734790 .part L_0x27343b0, 3, 1;
L_0x2735060 .part L_0x27343b0, 4, 1;
L_0x2722c10 .part L_0x27343b0, 5, 1;
L_0x2734d20 .part L_0x27343b0, 6, 1;
L_0x2734e10 .part L_0x27343b0, 7, 1;
L_0x2734f00 .part L_0x27343b0, 8, 1;
L_0x2735570 .part L_0x27343b0, 9, 1;
L_0x2735210 .part L_0x27343b0, 10, 1;
L_0x2735300 .part L_0x27343b0, 11, 1;
L_0x27353f0 .part L_0x27343b0, 12, 1;
L_0x2735100 .part L_0x27343b0, 13, 1;
L_0x2735610 .part L_0x27343b0, 14, 1;
L_0x2735700 .part L_0x27343b0, 15, 1;
L_0x27357f0 .part L_0x27343b0, 16, 1;
L_0x27358e0 .part L_0x27343b0, 17, 1;
L_0x2735f50 .part L_0x27343b0, 18, 1;
L_0x2735ff0 .part L_0x27343b0, 19, 1;
L_0x2735ba0 .part L_0x27343b0, 20, 1;
L_0x2735c90 .part L_0x27343b0, 21, 1;
L_0x2735d80 .part L_0x27343b0, 22, 1;
L_0x2735e70 .part L_0x27343b0, 23, 1;
L_0x27360e0 .part L_0x27343b0, 24, 1;
L_0x27361d0 .part L_0x27343b0, 25, 1;
L_0x27362c0 .part L_0x27343b0, 26, 1;
L_0x27363b0 .part L_0x27343b0, 27, 1;
L_0x2736900 .part L_0x27343b0, 28, 1;
L_0x2735990 .part L_0x27343b0, 29, 1;
L_0x2735a80 .part L_0x27343b0, 28, 1;
L_0x2736500 .part L_0x27343b0, 29, 1;
L_0x27365f0 .part L_0x27343b0, 30, 1;
L_0x27366e0 .part L_0x27343b0, 31, 1;
S_0x2656e50 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x27104a0 .functor BUFZ 1, L_0x270fed0, C4<0>, C4<0>, C4<0>;
L_0x2710510 .functor BUFZ 1, L_0x270fed0, C4<0>, C4<0>, C4<0>;
v0x25eaf90_0 .net "A", 0 0, L_0x27106b0;  1 drivers
v0x25eb030_0 .net "B", 0 0, L_0x2710750;  1 drivers
v0x25eaac0_0 .net "I", 7 0, L_0x2710610;  1 drivers
v0x25eab60_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25ea640_0 .net *"_s15", 0 0, L_0x27104a0;  1 drivers
v0x25ea120_0 .net *"_s19", 0 0, L_0x2710510;  1 drivers
L_0x7f87e29671c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x25e9c50_0 .net/2s *"_s23", 0 0, L_0x7f87e29671c8;  1 drivers
v0x25e9780_0 .net "addORsub", 0 0, L_0x270fed0;  1 drivers
v0x25e9820_0 .net "carryin", 0 0, L_0x27107f0;  1 drivers
v0x25e92b0_0 .net "carryout", 0 0, L_0x25ecd30;  1 drivers
v0x25e9350_0 .net "modB", 0 0, L_0x270fcc0;  1 drivers
v0x25e8de0_0 .net "out", 0 0, L_0x2710400;  1 drivers
L_0x270fd30 .part v0x2648060_0, 0, 1;
LS_0x2710610_0_0 .concat8 [ 1 1 1 1], L_0x27104a0, L_0x2710510, L_0x2710130, L_0x7f87e29671c8;
LS_0x2710610_0_4 .concat8 [ 1 1 1 1], L_0x25ebe00, L_0x27102b0, L_0x2710320, L_0x2710390;
L_0x2710610 .concat8 [ 4 4 0 0], LS_0x2710610_0_0, LS_0x2710610_0_4;
S_0x25ff1f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x270fdd0 .functor XOR 1, L_0x27106b0, L_0x270fcc0, C4<0>, C4<0>;
L_0x270fed0 .functor XOR 1, L_0x270fdd0, L_0x27107f0, C4<0>, C4<0>;
L_0x270ff40 .functor AND 1, L_0x270fdd0, L_0x27107f0, C4<1>, C4<1>;
L_0x270ffb0 .functor AND 1, L_0x27106b0, L_0x270fcc0, C4<1>, C4<1>;
L_0x25ecd30 .functor OR 1, L_0x270ff40, L_0x270ffb0, C4<0>, C4<0>;
v0x2676ea0_0 .net "A", 0 0, L_0x27106b0;  alias, 1 drivers
v0x2676f40_0 .net "B", 0 0, L_0x270fcc0;  alias, 1 drivers
v0x2661000_0 .net "carryin", 0 0, L_0x27107f0;  alias, 1 drivers
v0x265c970_0 .net "carryout", 0 0, L_0x25ecd30;  alias, 1 drivers
v0x265ca30_0 .net "out1", 0 0, L_0x270fdd0;  1 drivers
v0x26582e0_0 .net "out2", 0 0, L_0x270ff40;  1 drivers
v0x26583a0_0 .net "out3", 0 0, L_0x270ffb0;  1 drivers
v0x2653c40_0 .net "sum", 0 0, L_0x270fed0;  alias, 1 drivers
S_0x2640fa0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x25ebe00 .functor AND 1, L_0x27106b0, L_0x2710750, C4<1>, C4<1>;
v0x26006f0_0 .net "A", 0 0, L_0x27106b0;  alias, 1 drivers
v0x263dda0_0 .net "B", 0 0, L_0x2710750;  alias, 1 drivers
v0x263de40_0 .net "out", 0 0, L_0x25ebe00;  1 drivers
S_0x263c910 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2635080_0 .net "I", 7 0, L_0x2710610;  alias, 1 drivers
v0x25fbfe0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25fc0a0_0 .net "out", 0 0, L_0x2710400;  alias, 1 drivers
L_0x2710400 .part/v L_0x2710610, v0x2648060_0, 1;
S_0x2638280 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27102b0 .functor NAND 1, L_0x27106b0, L_0x2710750, C4<1>, C4<1>;
v0x25f55e0_0 .net "A", 0 0, L_0x27106b0;  alias, 1 drivers
v0x25f78d0_0 .net "B", 0 0, L_0x2710750;  alias, 1 drivers
v0x2478e80_0 .net "out", 0 0, L_0x27102b0;  1 drivers
S_0x2633bf0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2710320 .functor NOR 1, L_0x27106b0, L_0x2710750, C4<0>, C4<0>;
v0x25ee9c0_0 .net "A", 0 0, L_0x27106b0;  alias, 1 drivers
v0x25ed610_0 .net "B", 0 0, L_0x2710750;  alias, 1 drivers
v0x25ed140_0 .net "out", 0 0, L_0x2710320;  1 drivers
S_0x25fab50 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2710390 .functor OR 1, L_0x27106b0, L_0x2710750, C4<0>, C4<0>;
v0x25ecc70_0 .net "A", 0 0, L_0x27106b0;  alias, 1 drivers
v0x25ec7a0_0 .net "B", 0 0, L_0x2710750;  alias, 1 drivers
v0x25ec840_0 .net "out", 0 0, L_0x2710390;  1 drivers
S_0x2652c90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x270fcc0 .functor XOR 1, L_0x2710750, L_0x270fd30, C4<0>, C4<0>;
v0x25ec340_0 .net "A", 0 0, L_0x2710750;  alias, 1 drivers
v0x25ebe90_0 .net "B", 0 0, L_0x270fd30;  1 drivers
v0x25e4a80_0 .net "out", 0 0, L_0x270fcc0;  alias, 1 drivers
S_0x260c8f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2656e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2710130 .functor XOR 1, L_0x27106b0, L_0x2710750, C4<0>, C4<0>;
v0x25eb930_0 .net "A", 0 0, L_0x27106b0;  alias, 1 drivers
v0x25eb9f0_0 .net "B", 0 0, L_0x2710750;  alias, 1 drivers
v0x25eb460_0 .net "out", 0 0, L_0x2710130;  1 drivers
S_0x2608300 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2711200 .functor BUFZ 1, L_0x2710b70, C4<0>, C4<0>, C4<0>;
L_0x27112b0 .functor BUFZ 1, L_0x2710b70, C4<0>, C4<0>, C4<0>;
v0x26435e0_0 .net "A", 0 0, L_0x2711600;  1 drivers
v0x2643680_0 .net "B", 0 0, L_0x27117b0;  1 drivers
v0x2631be0_0 .net "I", 7 0, L_0x27113d0;  1 drivers
v0x2631c80_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x262d680_0 .net *"_s15", 0 0, L_0x2711200;  1 drivers
v0x2629000_0 .net *"_s19", 0 0, L_0x27112b0;  1 drivers
L_0x7f87e2967210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2624a10_0 .net/2s *"_s23", 0 0, L_0x7f87e2967210;  1 drivers
v0x2645ab0_0 .net "addORsub", 0 0, L_0x2710b70;  1 drivers
v0x2645b50_0 .net "carryin", 0 0, L_0x2711850;  1 drivers
v0x262fac0_0 .net "carryout", 0 0, L_0x2605e30;  1 drivers
v0x262fb90_0 .net "modB", 0 0, L_0x2710920;  1 drivers
v0x262b4d0_0 .net "out", 0 0, L_0x2711140;  1 drivers
L_0x2710990 .part v0x2648060_0, 0, 1;
LS_0x27113d0_0_0 .concat8 [ 1 1 1 1], L_0x2711200, L_0x27112b0, L_0x2710e10, L_0x7f87e2967210;
LS_0x27113d0_0_4 .concat8 [ 1 1 1 1], L_0x26667f0, L_0x2710f90, L_0x2711020, L_0x27110b0;
L_0x27113d0 .concat8 [ 4 4 0 0], LS_0x27113d0_0_0, LS_0x27113d0_0_4;
S_0x2603d10 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2710a50 .functor XOR 1, L_0x2711600, L_0x2710920, C4<0>, C4<0>;
L_0x2710b70 .functor XOR 1, L_0x2710a50, L_0x2711850, C4<0>, C4<0>;
L_0x2710c00 .functor AND 1, L_0x2710a50, L_0x2711850, C4<1>, C4<1>;
L_0x2710c90 .functor AND 1, L_0x2711600, L_0x2710920, C4<1>, C4<1>;
L_0x2605e30 .functor OR 1, L_0x2710c00, L_0x2710c90, C4<0>, C4<0>;
v0x25e8910_0 .net "A", 0 0, L_0x2711600;  alias, 1 drivers
v0x25e8440_0 .net "B", 0 0, L_0x2710920;  alias, 1 drivers
v0x25e8500_0 .net "carryin", 0 0, L_0x2711850;  alias, 1 drivers
v0x25e7f70_0 .net "carryout", 0 0, L_0x2605e30;  alias, 1 drivers
v0x25e8030_0 .net "out1", 0 0, L_0x2710a50;  1 drivers
v0x25e7aa0_0 .net "out2", 0 0, L_0x2710c00;  1 drivers
v0x25e7b40_0 .net "out3", 0 0, L_0x2710c90;  1 drivers
v0x25e75d0_0 .net "sum", 0 0, L_0x2710b70;  alias, 1 drivers
S_0x26718a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26667f0 .functor AND 1, L_0x2711600, L_0x27117b0, C4<1>, C4<1>;
v0x25e7150_0 .net "A", 0 0, L_0x2711600;  alias, 1 drivers
v0x25e6c30_0 .net "B", 0 0, L_0x27117b0;  alias, 1 drivers
v0x25e6cd0_0 .net "out", 0 0, L_0x26667f0;  1 drivers
S_0x266d2b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x25e6290_0 .net "I", 7 0, L_0x27113d0;  alias, 1 drivers
v0x25e5dc0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25e5e80_0 .net "out", 0 0, L_0x2711140;  alias, 1 drivers
L_0x2711140 .part/v L_0x27113d0, v0x2648060_0, 1;
S_0x2668cc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2710f90 .functor NAND 1, L_0x2711600, L_0x27117b0, C4<1>, C4<1>;
v0x25e4130_0 .net "A", 0 0, L_0x2711600;  alias, 1 drivers
v0x25e58f0_0 .net "B", 0 0, L_0x27117b0;  alias, 1 drivers
v0x25e59b0_0 .net "out", 0 0, L_0x2710f90;  1 drivers
S_0x26646d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2711020 .functor NOR 1, L_0x2711600, L_0x27117b0, C4<0>, C4<0>;
v0x25e4f50_0 .net "A", 0 0, L_0x2711600;  alias, 1 drivers
v0x25e5010_0 .net "B", 0 0, L_0x27117b0;  alias, 1 drivers
v0x260ea80_0 .net "out", 0 0, L_0x2711020;  1 drivers
S_0x26523c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27110b0 .functor OR 1, L_0x2711600, L_0x27117b0, C4<0>, C4<0>;
v0x260a4c0_0 .net "A", 0 0, L_0x2711600;  alias, 1 drivers
v0x2605ec0_0 .net "B", 0 0, L_0x27117b0;  alias, 1 drivers
v0x266f3d0_0 .net "out", 0 0, L_0x27110b0;  1 drivers
S_0x264e690 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2710920 .functor XOR 1, L_0x27117b0, L_0x2710990, C4<0>, C4<0>;
v0x266ae30_0 .net "A", 0 0, L_0x27117b0;  alias, 1 drivers
v0x2666880_0 .net "B", 0 0, L_0x2710990;  1 drivers
v0x2601840_0 .net "out", 0 0, L_0x2710920;  alias, 1 drivers
S_0x264a0a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2608300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2710e10 .functor XOR 1, L_0x2711600, L_0x27117b0, C4<0>, C4<0>;
v0x26507b0_0 .net "A", 0 0, L_0x2711600;  alias, 1 drivers
v0x2650870_0 .net "B", 0 0, L_0x27117b0;  alias, 1 drivers
v0x264c1c0_0 .net "out", 0 0, L_0x2710e10;  1 drivers
S_0x2626ee0 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x271b460 .functor BUFZ 1, L_0x271abc0, C4<0>, C4<0>, C4<0>;
L_0x271b4f0 .functor BUFZ 1, L_0x271abc0, C4<0>, C4<0>, C4<0>;
v0x25e03a0_0 .net "A", 0 0, L_0x271ba40;  1 drivers
v0x25e0440_0 .net "B", 0 0, L_0x271bae0;  1 drivers
v0x25e0020_0 .net "I", 7 0, L_0x271b610;  1 drivers
v0x25dfc60_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25dfd00_0 .net *"_s15", 0 0, L_0x271b460;  1 drivers
v0x25df900_0 .net *"_s19", 0 0, L_0x271b4f0;  1 drivers
L_0x7f87e2967498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x25df9e0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967498;  1 drivers
v0x25df5a0_0 .net "addORsub", 0 0, L_0x271abc0;  1 drivers
v0x25df640_0 .net "carryin", 0 0, L_0x271bb80;  1 drivers
v0x25df240_0 .net "carryout", 0 0, L_0x25f1b50;  1 drivers
v0x25df310_0 .net "modB", 0 0, L_0x271a9b0;  1 drivers
v0x25deee0_0 .net "out", 0 0, L_0x271b300;  1 drivers
L_0x271aa20 .part v0x2648060_0, 0, 1;
LS_0x271b610_0_0 .concat8 [ 1 1 1 1], L_0x271b460, L_0x271b4f0, L_0x271afd0, L_0x7f87e2967498;
LS_0x271b610_0_4 .concat8 [ 1 1 1 1], L_0x25dd6c0, L_0x271b150, L_0x271b1e0, L_0x271b270;
L_0x271b610 .concat8 [ 4 4 0 0], LS_0x271b610_0_0, LS_0x271b610_0_4;
S_0x2622900 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x271aac0 .functor XOR 1, L_0x271ba40, L_0x271a9b0, C4<0>, C4<0>;
L_0x271abc0 .functor XOR 1, L_0x271aac0, L_0x271bb80, C4<0>, C4<0>;
L_0x271acd0 .functor AND 1, L_0x271aac0, L_0x271bb80, C4<1>, C4<1>;
L_0x271ad60 .functor AND 1, L_0x271ba40, L_0x271a9b0, C4<1>, C4<1>;
L_0x25f1b50 .functor OR 1, L_0x271acd0, L_0x271ad60, C4<0>, C4<0>;
v0x25deb80_0 .net "A", 0 0, L_0x271ba40;  alias, 1 drivers
v0x25dec60_0 .net "B", 0 0, L_0x271a9b0;  alias, 1 drivers
v0x25de840_0 .net "carryin", 0 0, L_0x271bb80;  alias, 1 drivers
v0x25de910_0 .net "carryout", 0 0, L_0x25f1b50;  alias, 1 drivers
v0x25de4c0_0 .net "out1", 0 0, L_0x271aac0;  1 drivers
v0x25f4e90_0 .net "out2", 0 0, L_0x271acd0;  1 drivers
v0x25f4f50_0 .net "out3", 0 0, L_0x271ad60;  1 drivers
v0x25f4b60_0 .net "sum", 0 0, L_0x271abc0;  alias, 1 drivers
S_0x25f4730 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x25dd6c0 .functor AND 1, L_0x271ba40, L_0x271bae0, C4<1>, C4<1>;
v0x25f4470_0 .net "A", 0 0, L_0x271ba40;  alias, 1 drivers
v0x25f40d0_0 .net "B", 0 0, L_0x271bae0;  alias, 1 drivers
v0x25f4170_0 .net "out", 0 0, L_0x25dd6c0;  1 drivers
S_0x25f3da0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x25f3b40_0 .net "I", 7 0, L_0x271b610;  alias, 1 drivers
v0x25f3760_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25f3820_0 .net "out", 0 0, L_0x271b300;  alias, 1 drivers
L_0x271b300 .part/v L_0x271b610, v0x2648060_0, 1;
S_0x25f30e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271b150 .functor NAND 1, L_0x271ba40, L_0x271bae0, C4<1>, C4<1>;
v0x25f2db0_0 .net "A", 0 0, L_0x271ba40;  alias, 1 drivers
v0x25f2a80_0 .net "B", 0 0, L_0x271bae0;  alias, 1 drivers
v0x25f2b40_0 .net "out", 0 0, L_0x271b150;  1 drivers
S_0x25f2750 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271b1e0 .functor NOR 1, L_0x271ba40, L_0x271bae0, C4<0>, C4<0>;
v0x25f24c0_0 .net "A", 0 0, L_0x271ba40;  alias, 1 drivers
v0x25f20f0_0 .net "B", 0 0, L_0x271bae0;  alias, 1 drivers
v0x25f1dc0_0 .net "out", 0 0, L_0x271b1e0;  1 drivers
S_0x25ddda0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271b270 .functor OR 1, L_0x271ba40, L_0x271bae0, C4<0>, C4<0>;
v0x25f1a90_0 .net "A", 0 0, L_0x271ba40;  alias, 1 drivers
v0x25f1760_0 .net "B", 0 0, L_0x271bae0;  alias, 1 drivers
v0x25f1820_0 .net "out", 0 0, L_0x271b270;  1 drivers
S_0x25f1080 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271a9b0 .functor XOR 1, L_0x271bae0, L_0x271aa20, C4<0>, C4<0>;
v0x25dda90_0 .net "A", 0 0, L_0x271bae0;  alias, 1 drivers
v0x25dd750_0 .net "B", 0 0, L_0x271aa20;  1 drivers
v0x25e0dc0_0 .net "out", 0 0, L_0x271a9b0;  alias, 1 drivers
S_0x25e0a60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2626ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271afd0 .functor XOR 1, L_0x271ba40, L_0x271bae0, C4<0>, C4<0>;
v0x25e0ea0_0 .net "A", 0 0, L_0x271ba40;  alias, 1 drivers
v0x25e0700_0 .net "B", 0 0, L_0x271bae0;  alias, 1 drivers
v0x25e07c0_0 .net "out", 0 0, L_0x271afd0;  1 drivers
S_0x2647bd0 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x271c6f0 .functor BUFZ 1, L_0x271be50, C4<0>, C4<0>, C4<0>;
L_0x271c780 .functor BUFZ 1, L_0x271be50, C4<0>, C4<0>, C4<0>;
v0x26337f0_0 .net "A", 0 0, L_0x271cbc0;  1 drivers
v0x2633890_0 .net "B", 0 0, L_0x27116a0;  1 drivers
v0x25fa750_0 .net "I", 7 0, L_0x271c8a0;  1 drivers
v0x25fa820_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x260d3a0_0 .net *"_s15", 0 0, L_0x271c6f0;  1 drivers
v0x2608ca0_0 .net *"_s19", 0 0, L_0x271c780;  1 drivers
L_0x7f87e29674e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2608d60_0 .net/2s *"_s23", 0 0, L_0x7f87e29674e0;  1 drivers
v0x26046b0_0 .net "addORsub", 0 0, L_0x271be50;  1 drivers
v0x2604750_0 .net "carryin", 0 0, L_0x271cd80;  1 drivers
v0x2672240_0 .net "carryout", 0 0, L_0x2614d50;  1 drivers
v0x2672310_0 .net "modB", 0 0, L_0x271bc20;  1 drivers
v0x266dc50_0 .net "out", 0 0, L_0x271c590;  1 drivers
L_0x271bc90 .part v0x2648060_0, 0, 1;
LS_0x271c8a0_0_0 .concat8 [ 1 1 1 1], L_0x271c6f0, L_0x271c780, L_0x271c280, L_0x7f87e29674e0;
LS_0x271c8a0_0_4 .concat8 [ 1 1 1 1], L_0x265f880, L_0x271c400, L_0x271c470, L_0x271c500;
L_0x271c8a0 .concat8 [ 4 4 0 0], LS_0x271c8a0_0_0, LS_0x271c8a0_0_4;
S_0x25dcac0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x271bd30 .functor XOR 1, L_0x271cbc0, L_0x271bc20, C4<0>, C4<0>;
L_0x271be50 .functor XOR 1, L_0x271bd30, L_0x271cd80, C4<0>, C4<0>;
L_0x271bf80 .functor AND 1, L_0x271bd30, L_0x271cd80, C4<1>, C4<1>;
L_0x271c010 .functor AND 1, L_0x271cbc0, L_0x271bc20, C4<1>, C4<1>;
L_0x2614d50 .functor OR 1, L_0x271bf80, L_0x271c010, C4<0>, C4<0>;
v0x2689410_0 .net "A", 0 0, L_0x271cbc0;  alias, 1 drivers
v0x26894b0_0 .net "B", 0 0, L_0x271bc20;  alias, 1 drivers
v0x268b800_0 .net "carryin", 0 0, L_0x271cd80;  alias, 1 drivers
v0x268b8d0_0 .net "carryout", 0 0, L_0x2614d50;  alias, 1 drivers
v0x260fb10_0 .net "out1", 0 0, L_0x271bd30;  1 drivers
v0x260fbd0_0 .net "out2", 0 0, L_0x271bf80;  1 drivers
v0x260b520_0 .net "out3", 0 0, L_0x271c010;  1 drivers
v0x260b5c0_0 .net "sum", 0 0, L_0x271be50;  alias, 1 drivers
S_0x2606f50 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x265f880 .functor AND 1, L_0x271cbc0, L_0x27116a0, C4<1>, C4<1>;
v0x2602a00_0 .net "A", 0 0, L_0x271cbc0;  alias, 1 drivers
v0x26704d0_0 .net "B", 0 0, L_0x27116a0;  alias, 1 drivers
v0x2670570_0 .net "out", 0 0, L_0x265f880;  1 drivers
S_0x26678f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26518b0_0 .net "I", 7 0, L_0x271c8a0;  alias, 1 drivers
v0x2651970_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x264d2c0_0 .net "out", 0 0, L_0x271c590;  alias, 1 drivers
L_0x271c590 .part/v L_0x271c8a0, v0x2648060_0, 1;
S_0x2648cd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271c400 .functor NAND 1, L_0x271cbc0, L_0x27116a0, C4<1>, C4<1>;
v0x26446e0_0 .net "A", 0 0, L_0x271cbc0;  alias, 1 drivers
v0x26447d0_0 .net "B", 0 0, L_0x27116a0;  alias, 1 drivers
v0x262e6f0_0 .net "out", 0 0, L_0x271c400;  1 drivers
S_0x262a100 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271c470 .functor NOR 1, L_0x271cbc0, L_0x27116a0, C4<0>, C4<0>;
v0x2625bb0_0 .net "A", 0 0, L_0x271cbc0;  alias, 1 drivers
v0x261d980_0 .net "B", 0 0, L_0x27116a0;  alias, 1 drivers
v0x261da90_0 .net "out", 0 0, L_0x271c470;  1 drivers
S_0x26192f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271c500 .functor OR 1, L_0x271cbc0, L_0x27116a0, C4<0>, C4<0>;
v0x2614cb0_0 .net "A", 0 0, L_0x271cbc0;  alias, 1 drivers
v0x2679ca0_0 .net "B", 0 0, L_0x27116a0;  alias, 1 drivers
v0x2679d60_0 .net "out", 0 0, L_0x271c500;  1 drivers
S_0x2675610 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271bc20 .functor XOR 1, L_0x27116a0, L_0x271bc90, C4<0>, C4<0>;
v0x265f7c0_0 .net "A", 0 0, L_0x27116a0;  alias, 1 drivers
v0x265b0e0_0 .net "B", 0 0, L_0x271bc90;  1 drivers
v0x265b1a0_0 .net "out", 0 0, L_0x271bc20;  alias, 1 drivers
S_0x2656a50 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2647bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271c280 .functor XOR 1, L_0x271cbc0, L_0x27116a0, C4<0>, C4<0>;
v0x263c560_0 .net "A", 0 0, L_0x271cbc0;  alias, 1 drivers
v0x263c620_0 .net "B", 0 0, L_0x27116a0;  alias, 1 drivers
v0x2637e80_0 .net "out", 0 0, L_0x271c280;  1 drivers
S_0x2669660 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x271d960 .functor BUFZ 1, L_0x271d0e0, C4<0>, C4<0>, C4<0>;
L_0x271d9f0 .functor BUFZ 1, L_0x271d0e0, C4<0>, C4<0>, C4<0>;
v0x25fb030_0 .net "A", 0 0, L_0x271de30;  1 drivers
v0x25fb0d0_0 .net "B", 0 0, L_0x271ded0;  1 drivers
v0x260f5c0_0 .net "I", 7 0, L_0x271db10;  1 drivers
v0x260f6c0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x260afd0_0 .net *"_s15", 0 0, L_0x271d960;  1 drivers
v0x260b070_0 .net *"_s19", 0 0, L_0x271d9f0;  1 drivers
L_0x7f87e2967528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26069e0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967528;  1 drivers
v0x2606ac0_0 .net "addORsub", 0 0, L_0x271d0e0;  1 drivers
v0x26023f0_0 .net "carryin", 0 0, L_0x271ceb0;  1 drivers
v0x266ff80_0 .net "carryout", 0 0, L_0x265b9c0;  1 drivers
v0x2670050_0 .net "modB", 0 0, L_0x2711740;  1 drivers
v0x266b990_0 .net "out", 0 0, L_0x271d800;  1 drivers
L_0x271cc60 .part v0x2648060_0, 0, 1;
LS_0x271db10_0_0 .concat8 [ 1 1 1 1], L_0x271d960, L_0x271d9f0, L_0x271d4f0, L_0x7f87e2967528;
LS_0x271db10_0_4 .concat8 [ 1 1 1 1], L_0x2641480, L_0x271d670, L_0x271d6e0, L_0x271d770;
L_0x271db10 .concat8 [ 4 4 0 0], LS_0x271db10_0_0, LS_0x271db10_0_4;
S_0x264f030 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x271cfe0 .functor XOR 1, L_0x271de30, L_0x2711740, C4<0>, C4<0>;
L_0x271d0e0 .functor XOR 1, L_0x271cfe0, L_0x271ceb0, C4<0>, C4<0>;
L_0x271d1f0 .functor AND 1, L_0x271cfe0, L_0x271ceb0, C4<1>, C4<1>;
L_0x271d260 .functor AND 1, L_0x271de30, L_0x2711740, C4<1>, C4<1>;
L_0x265b9c0 .functor OR 1, L_0x271d1f0, L_0x271d260, C4<0>, C4<0>;
v0x264aa40_0 .net "A", 0 0, L_0x271de30;  alias, 1 drivers
v0x264ab20_0 .net "B", 0 0, L_0x2711740;  alias, 1 drivers
v0x2646450_0 .net "carryin", 0 0, L_0x271ceb0;  alias, 1 drivers
v0x2646510_0 .net "carryout", 0 0, L_0x265b9c0;  alias, 1 drivers
v0x2630460_0 .net "out1", 0 0, L_0x271cfe0;  1 drivers
v0x2630570_0 .net "out2", 0 0, L_0x271d1f0;  1 drivers
v0x262be70_0 .net "out3", 0 0, L_0x271d260;  1 drivers
v0x262bf30_0 .net "sum", 0 0, L_0x271d0e0;  alias, 1 drivers
S_0x2627880 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2641480 .functor AND 1, L_0x271de30, L_0x271ded0, C4<1>, C4<1>;
v0x26232f0_0 .net "A", 0 0, L_0x271de30;  alias, 1 drivers
v0x26233b0_0 .net "B", 0 0, L_0x271ded0;  alias, 1 drivers
v0x25de100_0 .net "out", 0 0, L_0x2641480;  1 drivers
S_0x25d2770 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x267e820_0 .net "I", 7 0, L_0x271db10;  alias, 1 drivers
v0x26527b0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x2652870_0 .net "out", 0 0, L_0x271d800;  alias, 1 drivers
L_0x271d800 .part/v L_0x271db10, v0x2648060_0, 1;
S_0x25f63d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271d670 .functor NAND 1, L_0x271de30, L_0x271ded0, C4<1>, C4<1>;
v0x261e2b0_0 .net "A", 0 0, L_0x271de30;  alias, 1 drivers
v0x2619bd0_0 .net "B", 0 0, L_0x271ded0;  alias, 1 drivers
v0x2619c90_0 .net "out", 0 0, L_0x271d670;  1 drivers
S_0x2615540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271d6e0 .functor NOR 1, L_0x271de30, L_0x271ded0, C4<0>, C4<0>;
v0x267e390_0 .net "A", 0 0, L_0x271de30;  alias, 1 drivers
v0x267a580_0 .net "B", 0 0, L_0x271ded0;  alias, 1 drivers
v0x267a690_0 .net "out", 0 0, L_0x271d6e0;  1 drivers
S_0x2675ef0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271d770 .functor OR 1, L_0x271de30, L_0x271ded0, C4<0>, C4<0>;
v0x26600f0_0 .net "A", 0 0, L_0x271de30;  alias, 1 drivers
v0x265ba50_0 .net "B", 0 0, L_0x271ded0;  alias, 1 drivers
v0x2657330_0 .net "out", 0 0, L_0x271d770;  1 drivers
S_0x25ff6d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2711740 .functor XOR 1, L_0x271ded0, L_0x271cc60, C4<0>, C4<0>;
v0x2657430_0 .net "A", 0 0, L_0x271ded0;  alias, 1 drivers
v0x2641510_0 .net "B", 0 0, L_0x271cc60;  1 drivers
v0x263cdf0_0 .net "out", 0 0, L_0x2711740;  alias, 1 drivers
S_0x2638760 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2669660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271d4f0 .functor XOR 1, L_0x271de30, L_0x271ded0, C4<0>, C4<0>;
v0x263ced0_0 .net "A", 0 0, L_0x271de30;  alias, 1 drivers
v0x26340d0_0 .net "B", 0 0, L_0x271ded0;  alias, 1 drivers
v0x2634190_0 .net "out", 0 0, L_0x271d4f0;  1 drivers
S_0x26673a0 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x271eba0 .functor BUFZ 1, L_0x271e300, C4<0>, C4<0>, C4<0>;
L_0x271ec30 .functor BUFZ 1, L_0x271e300, C4<0>, C4<0>, C4<0>;
v0x25d6600_0 .net "A", 0 0, L_0x271f070;  1 drivers
v0x25d66a0_0 .net "B", 0 0, L_0x271df70;  1 drivers
v0x25d6130_0 .net "I", 7 0, L_0x271ed50;  1 drivers
v0x25d6230_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25d5c60_0 .net *"_s15", 0 0, L_0x271eba0;  1 drivers
v0x25d5d20_0 .net *"_s19", 0 0, L_0x271ec30;  1 drivers
L_0x7f87e2967570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x25d5790_0 .net/2s *"_s23", 0 0, L_0x7f87e2967570;  1 drivers
v0x25d5870_0 .net "addORsub", 0 0, L_0x271e300;  1 drivers
v0x25d52c0_0 .net "carryin", 0 0, L_0x271e010;  1 drivers
v0x25d53f0_0 .net "carryout", 0 0, L_0x25d8850;  1 drivers
v0x25d4df0_0 .net "modB", 0 0, L_0x271e0b0;  1 drivers
v0x25d4e90_0 .net "out", 0 0, L_0x271ea40;  1 drivers
L_0x271e120 .part v0x2648060_0, 0, 1;
LS_0x271ed50_0_0 .concat8 [ 1 1 1 1], L_0x271eba0, L_0x271ec30, L_0x271e730, L_0x7f87e2967570;
LS_0x271ed50_0_4 .concat8 [ 1 1 1 1], L_0x25d7940, L_0x271e8b0, L_0x271e920, L_0x271e9b0;
L_0x271ed50 .concat8 [ 4 4 0 0], LS_0x271ed50_0_0, LS_0x271ed50_0_4;
S_0x264cd70 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x271e1c0 .functor XOR 1, L_0x271f070, L_0x271e0b0, C4<0>, C4<0>;
L_0x271e300 .functor XOR 1, L_0x271e1c0, L_0x271e010, C4<0>, C4<0>;
L_0x271e430 .functor AND 1, L_0x271e1c0, L_0x271e010, C4<1>, C4<1>;
L_0x271e4c0 .functor AND 1, L_0x271f070, L_0x271e0b0, C4<1>, C4<1>;
L_0x25d8850 .functor OR 1, L_0x271e430, L_0x271e4c0, C4<0>, C4<0>;
v0x2648800_0 .net "A", 0 0, L_0x271f070;  alias, 1 drivers
v0x2644190_0 .net "B", 0 0, L_0x271e0b0;  alias, 1 drivers
v0x2644250_0 .net "carryin", 0 0, L_0x271e010;  alias, 1 drivers
v0x262e1a0_0 .net "carryout", 0 0, L_0x25d8850;  alias, 1 drivers
v0x262e260_0 .net "out1", 0 0, L_0x271e1c0;  1 drivers
v0x2629bb0_0 .net "out2", 0 0, L_0x271e430;  1 drivers
v0x2629c70_0 .net "out3", 0 0, L_0x271e4c0;  1 drivers
v0x26255c0_0 .net "sum", 0 0, L_0x271e300;  alias, 1 drivers
S_0x25ee190 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x25d7940 .functor AND 1, L_0x271f070, L_0x271df70, C4<1>, C4<1>;
v0x25db7d0_0 .net "A", 0 0, L_0x271f070;  alias, 1 drivers
v0x25db8a0_0 .net "B", 0 0, L_0x271df70;  alias, 1 drivers
v0x25db300_0 .net "out", 0 0, L_0x25d7940;  1 drivers
S_0x25dae30 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x25da960_0 .net "I", 7 0, L_0x271ed50;  alias, 1 drivers
v0x25daa40_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25da490_0 .net "out", 0 0, L_0x271ea40;  alias, 1 drivers
L_0x271ea40 .part/v L_0x271ed50, v0x2648060_0, 1;
S_0x25d9fc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271e8b0 .functor NAND 1, L_0x271f070, L_0x271df70, C4<1>, C4<1>;
v0x25da5b0_0 .net "A", 0 0, L_0x271f070;  alias, 1 drivers
v0x25d2c30_0 .net "B", 0 0, L_0x271df70;  alias, 1 drivers
v0x25d2cf0_0 .net "out", 0 0, L_0x271e8b0;  1 drivers
S_0x25d9af0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271e920 .functor NOR 1, L_0x271f070, L_0x271df70, C4<0>, C4<0>;
v0x25d96c0_0 .net "A", 0 0, L_0x271f070;  alias, 1 drivers
v0x25d9150_0 .net "B", 0 0, L_0x271df70;  alias, 1 drivers
v0x25d9260_0 .net "out", 0 0, L_0x271e920;  1 drivers
S_0x25d8c80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271e9b0 .functor OR 1, L_0x271f070, L_0x271df70, C4<0>, C4<0>;
v0x25d87b0_0 .net "A", 0 0, L_0x271f070;  alias, 1 drivers
v0x25d88e0_0 .net "B", 0 0, L_0x271df70;  alias, 1 drivers
v0x25d82e0_0 .net "out", 0 0, L_0x271e9b0;  1 drivers
S_0x25d7e10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271e0b0 .functor XOR 1, L_0x271df70, L_0x271e120, C4<0>, C4<0>;
v0x25d8410_0 .net "A", 0 0, L_0x271df70;  alias, 1 drivers
v0x25d79d0_0 .net "B", 0 0, L_0x271e120;  1 drivers
v0x25d7a70_0 .net "out", 0 0, L_0x271e0b0;  alias, 1 drivers
S_0x25d6fa0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26673a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271e730 .functor XOR 1, L_0x271f070, L_0x271df70, C4<0>, C4<0>;
v0x25d7510_0 .net "A", 0 0, L_0x271f070;  alias, 1 drivers
v0x25d6ad0_0 .net "B", 0 0, L_0x271df70;  alias, 1 drivers
v0x25d6b90_0 .net "out", 0 0, L_0x271e730;  1 drivers
S_0x25d4920 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x271fee0 .functor BUFZ 1, L_0x271f660, C4<0>, C4<0>, C4<0>;
L_0x271ff70 .functor BUFZ 1, L_0x271f660, C4<0>, C4<0>, C4<0>;
v0x2678b30_0 .net "A", 0 0, L_0x27203b0;  1 drivers
v0x2678bd0_0 .net "B", 0 0, L_0x2720450;  1 drivers
v0x2678730_0 .net "I", 7 0, L_0x2720090;  1 drivers
v0x2678830_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x2678340_0 .net *"_s15", 0 0, L_0x271fee0;  1 drivers
v0x2678450_0 .net *"_s19", 0 0, L_0x271ff70;  1 drivers
L_0x7f87e29675b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26744a0_0 .net/2s *"_s23", 0 0, L_0x7f87e29675b8;  1 drivers
v0x2674580_0 .net "addORsub", 0 0, L_0x271f660;  1 drivers
v0x26740a0_0 .net "carryin", 0 0, L_0x271f470;  1 drivers
v0x2673cb0_0 .net "carryout", 0 0, L_0x2617da0;  1 drivers
v0x2673d80_0 .net "modB", 0 0, L_0x27161f0;  1 drivers
v0x2662c90_0 .net "out", 0 0, L_0x271fd80;  1 drivers
L_0x271f110 .part v0x2648060_0, 0, 1;
LS_0x2720090_0_0 .concat8 [ 1 1 1 1], L_0x271fee0, L_0x271ff70, L_0x271fa70, L_0x7f87e29675b8;
LS_0x2720090_0_4 .concat8 [ 1 1 1 1], L_0x2613af0, L_0x271fbf0, L_0x271fc60, L_0x271fcf0;
L_0x2720090 .concat8 [ 4 4 0 0], LS_0x2720090_0_0, LS_0x2720090_0_4;
S_0x25d3f80 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x271f1b0 .functor XOR 1, L_0x27203b0, L_0x27161f0, C4<0>, C4<0>;
L_0x271f660 .functor XOR 1, L_0x271f1b0, L_0x271f470, C4<0>, C4<0>;
L_0x271f770 .functor AND 1, L_0x271f1b0, L_0x271f470, C4<1>, C4<1>;
L_0x271f800 .functor AND 1, L_0x27203b0, L_0x27161f0, C4<1>, C4<1>;
L_0x2617da0 .functor OR 1, L_0x271f770, L_0x271f800, C4<0>, C4<0>;
v0x25d4570_0 .net "A", 0 0, L_0x27203b0;  alias, 1 drivers
v0x25d2260_0 .net "B", 0 0, L_0x27161f0;  alias, 1 drivers
v0x25d2320_0 .net "carryin", 0 0, L_0x271f470;  alias, 1 drivers
v0x25d3aa0_0 .net "carryout", 0 0, L_0x2617da0;  alias, 1 drivers
v0x25d3b60_0 .net "out1", 0 0, L_0x271f1b0;  1 drivers
v0x25d35d0_0 .net "out2", 0 0, L_0x271f770;  1 drivers
v0x25d3690_0 .net "out3", 0 0, L_0x271f800;  1 drivers
v0x25d30f0_0 .net "sum", 0 0, L_0x271f660;  alias, 1 drivers
S_0x25dc3e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2613af0 .functor AND 1, L_0x27203b0, L_0x2720450, C4<1>, C4<1>;
v0x25ba670_0 .net "A", 0 0, L_0x27203b0;  alias, 1 drivers
v0x25ba710_0 .net "B", 0 0, L_0x2720450;  alias, 1 drivers
v0x25b9f30_0 .net "out", 0 0, L_0x2613af0;  1 drivers
S_0x25201a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x25ba050_0 .net "I", 7 0, L_0x2720090;  alias, 1 drivers
v0x2620ea0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x2620f40_0 .net "out", 0 0, L_0x271fd80;  alias, 1 drivers
L_0x271fd80 .part/v L_0x2720090, v0x2648060_0, 1;
S_0x2620aa0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271fbf0 .functor NAND 1, L_0x27203b0, L_0x2720450, C4<1>, C4<1>;
v0x26206b0_0 .net "A", 0 0, L_0x27203b0;  alias, 1 drivers
v0x26207c0_0 .net "B", 0 0, L_0x2720450;  alias, 1 drivers
v0x25f95e0_0 .net "out", 0 0, L_0x271fbf0;  1 drivers
S_0x261c810 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271fc60 .functor NOR 1, L_0x27203b0, L_0x2720450, C4<0>, C4<0>;
v0x261c410_0 .net "A", 0 0, L_0x27203b0;  alias, 1 drivers
v0x261c4b0_0 .net "B", 0 0, L_0x2720450;  alias, 1 drivers
v0x261c020_0 .net "out", 0 0, L_0x271fc60;  1 drivers
S_0x2618180 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271fcf0 .functor OR 1, L_0x27203b0, L_0x2720450, C4<0>, C4<0>;
v0x261c150_0 .net "A", 0 0, L_0x27203b0;  alias, 1 drivers
v0x2617e30_0 .net "B", 0 0, L_0x2720450;  alias, 1 drivers
v0x2617990_0 .net "out", 0 0, L_0x271fcf0;  1 drivers
S_0x25f91c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27161f0 .functor XOR 1, L_0x2720450, L_0x271f110, C4<0>, C4<0>;
v0x2617a90_0 .net "A", 0 0, L_0x2720450;  alias, 1 drivers
v0x2613b80_0 .net "B", 0 0, L_0x271f110;  1 drivers
v0x26136f0_0 .net "out", 0 0, L_0x27161f0;  alias, 1 drivers
S_0x2613300 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x25d4920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271fa70 .functor XOR 1, L_0x27203b0, L_0x2720450, C4<0>, C4<0>;
v0x2613800_0 .net "A", 0 0, L_0x27203b0;  alias, 1 drivers
v0x25f8da0_0 .net "B", 0 0, L_0x2720450;  alias, 1 drivers
v0x25f8e60_0 .net "out", 0 0, L_0x271fa70;  1 drivers
S_0x2662890 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2721130 .functor BUFZ 1, L_0x2720890, C4<0>, C4<0>, C4<0>;
L_0x27211c0 .functor BUFZ 1, L_0x2720890, C4<0>, C4<0>, C4<0>;
v0x261cf90_0 .net "A", 0 0, L_0x2721600;  1 drivers
v0x26187d0_0 .net "B", 0 0, L_0x27204f0;  1 drivers
v0x2618890_0 .net "I", 7 0, L_0x27212e0;  1 drivers
v0x2614140_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x267f650_0 .net *"_s15", 0 0, L_0x2721130;  1 drivers
v0x260d290_0 .net *"_s19", 0 0, L_0x27211c0;  1 drivers
L_0x7f87e2967600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26141e0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967600;  1 drivers
v0x2679180_0 .net "addORsub", 0 0, L_0x2720890;  1 drivers
v0x2679220_0 .net "carryin", 0 0, L_0x2720590;  1 drivers
v0x2674af0_0 .net "carryout", 0 0, L_0x263ac50;  1 drivers
v0x2674bc0_0 .net "modB", 0 0, L_0x2720660;  1 drivers
v0x265ec50_0 .net "out", 0 0, L_0x2720fd0;  1 drivers
L_0x27206d0 .part v0x2648060_0, 0, 1;
LS_0x27212e0_0_0 .concat8 [ 1 1 1 1], L_0x2721130, L_0x27211c0, L_0x2720cc0, L_0x7f87e2967600;
LS_0x27212e0_0_4 .concat8 [ 1 1 1 1], L_0x2636910, L_0x2720e40, L_0x2720eb0, L_0x2720f40;
L_0x27212e0 .concat8 [ 4 4 0 0], LS_0x27212e0_0_0, LS_0x27212e0_0_4;
S_0x26624a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2720770 .functor XOR 1, L_0x2721600, L_0x2720660, C4<0>, C4<0>;
L_0x2720890 .functor XOR 1, L_0x2720770, L_0x2720590, C4<0>, C4<0>;
L_0x27209c0 .functor AND 1, L_0x2720770, L_0x2720590, C4<1>, C4<1>;
L_0x2720a50 .functor AND 1, L_0x2721600, L_0x2720660, C4<1>, C4<1>;
L_0x263ac50 .functor OR 1, L_0x27209c0, L_0x2720a50, C4<0>, C4<0>;
v0x265e680_0 .net "A", 0 0, L_0x2721600;  alias, 1 drivers
v0x265e200_0 .net "B", 0 0, L_0x2720660;  alias, 1 drivers
v0x265e2c0_0 .net "carryin", 0 0, L_0x2720590;  alias, 1 drivers
v0x265de10_0 .net "carryout", 0 0, L_0x263ac50;  alias, 1 drivers
v0x265ded0_0 .net "out1", 0 0, L_0x2720770;  1 drivers
v0x2659f70_0 .net "out2", 0 0, L_0x27209c0;  1 drivers
v0x265a030_0 .net "out3", 0 0, L_0x2720a50;  1 drivers
v0x2659b70_0 .net "sum", 0 0, L_0x2720890;  alias, 1 drivers
S_0x2659780 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2636910 .functor AND 1, L_0x2721600, L_0x27204f0, C4<1>, C4<1>;
v0x26558e0_0 .net "A", 0 0, L_0x2721600;  alias, 1 drivers
v0x26559a0_0 .net "B", 0 0, L_0x27204f0;  alias, 1 drivers
v0x26554e0_0 .net "out", 0 0, L_0x2636910;  1 drivers
S_0x26550f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2655600_0 .net "I", 7 0, L_0x27212e0;  alias, 1 drivers
v0x25fdc80_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x25fdd40_0 .net "out", 0 0, L_0x2720fd0;  alias, 1 drivers
L_0x2720fd0 .part/v L_0x27212e0, v0x2648060_0, 1;
S_0x25fd880 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2720e40 .functor NAND 1, L_0x2721600, L_0x27204f0, C4<1>, C4<1>;
v0x263fa30_0 .net "A", 0 0, L_0x2721600;  alias, 1 drivers
v0x263fb20_0 .net "B", 0 0, L_0x27204f0;  alias, 1 drivers
v0x263f630_0 .net "out", 0 0, L_0x2720e40;  1 drivers
S_0x263f240 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2720eb0 .functor NOR 1, L_0x2721600, L_0x27204f0, C4<0>, C4<0>;
v0x263f740_0 .net "A", 0 0, L_0x2721600;  alias, 1 drivers
v0x263b3a0_0 .net "B", 0 0, L_0x27204f0;  alias, 1 drivers
v0x263b490_0 .net "out", 0 0, L_0x2720eb0;  1 drivers
S_0x263afa0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2720f40 .functor OR 1, L_0x2721600, L_0x27204f0, C4<0>, C4<0>;
v0x263abb0_0 .net "A", 0 0, L_0x2721600;  alias, 1 drivers
v0x263ace0_0 .net "B", 0 0, L_0x27204f0;  alias, 1 drivers
v0x25fd490_0 .net "out", 0 0, L_0x2720f40;  1 drivers
S_0x2636d10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2720660 .functor XOR 1, L_0x27204f0, L_0x27206d0, C4<0>, C4<0>;
v0x25fd5a0_0 .net "A", 0 0, L_0x27204f0;  alias, 1 drivers
v0x26369a0_0 .net "B", 0 0, L_0x27206d0;  1 drivers
v0x2636520_0 .net "out", 0 0, L_0x2720660;  alias, 1 drivers
S_0x2632680 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2662890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2720cc0 .functor XOR 1, L_0x2721600, L_0x27204f0, C4<0>, C4<0>;
v0x26322a0_0 .net "A", 0 0, L_0x2721600;  alias, 1 drivers
v0x2632360_0 .net "B", 0 0, L_0x27204f0;  alias, 1 drivers
v0x261ce60_0 .net "out", 0 0, L_0x2720cc0;  1 drivers
S_0x265a5c0 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2722370 .functor BUFZ 1, L_0x2721ad0, C4<0>, C4<0>, C4<0>;
L_0x2722400 .functor BUFZ 1, L_0x2721ad0, C4<0>, C4<0>, C4<0>;
v0x24b5370_0 .net "A", 0 0, L_0x2722840;  1 drivers
v0x24b5dc0_0 .net "B", 0 0, L_0x27228e0;  1 drivers
v0x24b5e80_0 .net "I", 7 0, L_0x2722520;  1 drivers
v0x24b5f80_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x24b6020_0 .net *"_s15", 0 0, L_0x2722370;  1 drivers
v0x24b60e0_0 .net *"_s19", 0 0, L_0x2722400;  1 drivers
L_0x7f87e2967648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x24b6b50_0 .net/2s *"_s23", 0 0, L_0x7f87e2967648;  1 drivers
v0x24b6c10_0 .net "addORsub", 0 0, L_0x2721ad0;  1 drivers
v0x24b6cb0_0 .net "carryin", 0 0, L_0x27218b0;  1 drivers
v0x24b6e10_0 .net "carryout", 0 0, L_0x267cf70;  1 drivers
v0x24b8ba0_0 .net "modB", 0 0, L_0x27216a0;  1 drivers
v0x24b8c40_0 .net "out", 0 0, L_0x2722210;  1 drivers
L_0x2721710 .part v0x2648060_0, 0, 1;
LS_0x2722520_0_0 .concat8 [ 1 1 1 1], L_0x2722370, L_0x2722400, L_0x2721f00, L_0x7f87e2967648;
LS_0x2722520_0_4 .concat8 [ 1 1 1 1], L_0x24b5110, L_0x2722080, L_0x27220f0, L_0x2722180;
L_0x2722520 .concat8 [ 4 4 0 0], LS_0x2722520_0_0, LS_0x2722520_0_4;
S_0x25fe2d0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x27217b0 .functor XOR 1, L_0x2722840, L_0x27216a0, C4<0>, C4<0>;
L_0x2721ad0 .functor XOR 1, L_0x27217b0, L_0x27218b0, C4<0>, C4<0>;
L_0x2721c00 .functor AND 1, L_0x27217b0, L_0x27218b0, C4<1>, C4<1>;
L_0x2721c90 .functor AND 1, L_0x2722840, L_0x27216a0, C4<1>, C4<1>;
L_0x267cf70 .functor OR 1, L_0x2721c00, L_0x2721c90, C4<0>, C4<0>;
v0x2655fd0_0 .net "A", 0 0, L_0x2722840;  alias, 1 drivers
v0x2640080_0 .net "B", 0 0, L_0x27216a0;  alias, 1 drivers
v0x2640140_0 .net "carryin", 0 0, L_0x27218b0;  alias, 1 drivers
v0x263b9f0_0 .net "carryout", 0 0, L_0x267cf70;  alias, 1 drivers
v0x263bab0_0 .net "out1", 0 0, L_0x27217b0;  1 drivers
v0x2637360_0 .net "out2", 0 0, L_0x2721c00;  1 drivers
v0x2637420_0 .net "out3", 0 0, L_0x2721c90;  1 drivers
v0x2632cd0_0 .net "sum", 0 0, L_0x2721ad0;  alias, 1 drivers
S_0x26214f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x24b5110 .functor AND 1, L_0x2722840, L_0x27228e0, C4<1>, C4<1>;
v0x25f9c30_0 .net "A", 0 0, L_0x2722840;  alias, 1 drivers
v0x25f9cf0_0 .net "B", 0 0, L_0x27228e0;  alias, 1 drivers
v0x267cca0_0 .net "out", 0 0, L_0x24b5110;  1 drivers
S_0x267cdc0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x267fee0_0 .net "I", 7 0, L_0x2722520;  alias, 1 drivers
v0x267ffc0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x2680080_0 .net "out", 0 0, L_0x2722210;  alias, 1 drivers
L_0x2722210 .part/v L_0x2722520, v0x2648060_0, 1;
S_0x2497740 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2722080 .functor NAND 1, L_0x2722840, L_0x27228e0, C4<1>, C4<1>;
v0x2497960_0 .net "A", 0 0, L_0x2722840;  alias, 1 drivers
v0x2497a70_0 .net "B", 0 0, L_0x27228e0;  alias, 1 drivers
v0x2493180_0 .net "out", 0 0, L_0x2722080;  1 drivers
S_0x2493260 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27220f0 .functor NOR 1, L_0x2722840, L_0x27228e0, C4<0>, C4<0>;
v0x24934d0_0 .net "A", 0 0, L_0x2722840;  alias, 1 drivers
v0x24b2840_0 .net "B", 0 0, L_0x27228e0;  alias, 1 drivers
v0x24b2950_0 .net "out", 0 0, L_0x27220f0;  1 drivers
S_0x24b2a70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2722180 .functor OR 1, L_0x2722840, L_0x27228e0, C4<0>, C4<0>;
v0x24b4320_0 .net "A", 0 0, L_0x2722840;  alias, 1 drivers
v0x24b43e0_0 .net "B", 0 0, L_0x27228e0;  alias, 1 drivers
v0x24b44a0_0 .net "out", 0 0, L_0x2722180;  1 drivers
S_0x24b45a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27216a0 .functor XOR 1, L_0x27228e0, L_0x2721710, C4<0>, C4<0>;
v0x24b5070_0 .net "A", 0 0, L_0x27228e0;  alias, 1 drivers
v0x24b51a0_0 .net "B", 0 0, L_0x2721710;  1 drivers
v0x24b5260_0 .net "out", 0 0, L_0x27216a0;  alias, 1 drivers
S_0x24b35d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x265a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2721f00 .functor XOR 1, L_0x2722840, L_0x27228e0, C4<0>, C4<0>;
v0x24b37a0_0 .net "A", 0 0, L_0x2722840;  alias, 1 drivers
v0x24b3860_0 .net "B", 0 0, L_0x27228e0;  alias, 1 drivers
v0x24b3920_0 .net "out", 0 0, L_0x2721f00;  1 drivers
S_0x24b8d60 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2723690 .functor BUFZ 1, L_0x2722e30, C4<0>, C4<0>, C4<0>;
L_0x2723720 .functor BUFZ 1, L_0x2722e30, C4<0>, C4<0>, C4<0>;
v0x24bb380_0 .net "A", 0 0, L_0x2723b60;  1 drivers
v0x24bb420_0 .net "B", 0 0, L_0x2722980;  1 drivers
v0x241fcf0_0 .net "I", 7 0, L_0x2723840;  1 drivers
v0x241fdc0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x241fe60_0 .net *"_s15", 0 0, L_0x2723690;  1 drivers
v0x241ff70_0 .net *"_s19", 0 0, L_0x2723720;  1 drivers
L_0x7f87e2967690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2420050_0 .net/2s *"_s23", 0 0, L_0x7f87e2967690;  1 drivers
v0x247f410_0 .net "addORsub", 0 0, L_0x2722e30;  1 drivers
v0x247f4b0_0 .net "carryin", 0 0, L_0x2722a20;  1 drivers
v0x247f610_0 .net "carryout", 0 0, L_0x2473870;  1 drivers
v0x247f6e0_0 .net "modB", 0 0, L_0x2719650;  1 drivers
v0x247f780_0 .net "out", 0 0, L_0x2723530;  1 drivers
L_0x27196c0 .part v0x2648060_0, 0, 1;
LS_0x2723840_0_0 .concat8 [ 1 1 1 1], L_0x2723690, L_0x2723720, L_0x2723220, L_0x7f87e2967690;
LS_0x2723840_0_4 .concat8 [ 1 1 1 1], L_0x248ed60, L_0x27233a0, L_0x2723410, L_0x27234a0;
L_0x2723840 .concat8 [ 4 4 0 0], LS_0x2723840_0_0, LS_0x2723840_0_4;
S_0x24c7ac0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2722d30 .functor XOR 1, L_0x2723b60, L_0x2719650, C4<0>, C4<0>;
L_0x2722e30 .functor XOR 1, L_0x2722d30, L_0x2722a20, C4<0>, C4<0>;
L_0x2722f40 .functor AND 1, L_0x2722d30, L_0x2722a20, C4<1>, C4<1>;
L_0x2722fb0 .functor AND 1, L_0x2723b60, L_0x2719650, C4<1>, C4<1>;
L_0x2473870 .functor OR 1, L_0x2722f40, L_0x2722fb0, C4<0>, C4<0>;
v0x24c7ce0_0 .net "A", 0 0, L_0x2723b60;  alias, 1 drivers
v0x24712e0_0 .net "B", 0 0, L_0x2719650;  alias, 1 drivers
v0x24713a0_0 .net "carryin", 0 0, L_0x2722a20;  alias, 1 drivers
v0x2471470_0 .net "carryout", 0 0, L_0x2473870;  alias, 1 drivers
v0x2471530_0 .net "out1", 0 0, L_0x2722d30;  1 drivers
v0x2471640_0 .net "out2", 0 0, L_0x2722f40;  1 drivers
v0x2459eb0_0 .net "out3", 0 0, L_0x2722fb0;  1 drivers
v0x2459f70_0 .net "sum", 0 0, L_0x2722e30;  alias, 1 drivers
S_0x245a0d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x248ed60 .functor AND 1, L_0x2723b60, L_0x2722980, C4<1>, C4<1>;
v0x246d650_0 .net "A", 0 0, L_0x2723b60;  alias, 1 drivers
v0x246d6f0_0 .net "B", 0 0, L_0x2722980;  alias, 1 drivers
v0x246d790_0 .net "out", 0 0, L_0x248ed60;  1 drivers
S_0x246d8e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x24b16d0_0 .net "I", 7 0, L_0x2723840;  alias, 1 drivers
v0x24b1790_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x24b1850_0 .net "out", 0 0, L_0x2723530;  alias, 1 drivers
L_0x2723530 .part/v L_0x2723840, v0x2648060_0, 1;
S_0x24b1970 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27233a0 .functor NAND 1, L_0x2723b60, L_0x2722980, C4<1>, C4<1>;
v0x248d560_0 .net "A", 0 0, L_0x2723b60;  alias, 1 drivers
v0x248d670_0 .net "B", 0 0, L_0x2722980;  alias, 1 drivers
v0x248d730_0 .net "out", 0 0, L_0x27233a0;  1 drivers
S_0x2472440 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2723410 .functor NOR 1, L_0x2723b60, L_0x2722980, C4<0>, C4<0>;
v0x24726b0_0 .net "A", 0 0, L_0x2723b60;  alias, 1 drivers
v0x2472770_0 .net "B", 0 0, L_0x2722980;  alias, 1 drivers
v0x248d810_0 .net "out", 0 0, L_0x2723410;  1 drivers
S_0x2473590 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27234a0 .functor OR 1, L_0x2723b60, L_0x2722980, C4<0>, C4<0>;
v0x24737b0_0 .net "A", 0 0, L_0x2723b60;  alias, 1 drivers
v0x2473900_0 .net "B", 0 0, L_0x2722980;  alias, 1 drivers
v0x2490e90_0 .net "out", 0 0, L_0x27234a0;  1 drivers
S_0x2490fb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2719650 .functor XOR 1, L_0x2722980, L_0x27196c0, C4<0>, C4<0>;
v0x2491180_0 .net "A", 0 0, L_0x2722980;  alias, 1 drivers
v0x248edf0_0 .net "B", 0 0, L_0x27196c0;  1 drivers
v0x248eeb0_0 .net "out", 0 0, L_0x2719650;  alias, 1 drivers
S_0x248efc0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x24b8d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2723220 .functor XOR 1, L_0x2723b60, L_0x2722980, C4<0>, C4<0>;
v0x24bb0f0_0 .net "A", 0 0, L_0x2723b60;  alias, 1 drivers
v0x24bb190_0 .net "B", 0 0, L_0x2722980;  alias, 1 drivers
v0x24bb250_0 .net "out", 0 0, L_0x2723220;  1 drivers
S_0x2488ef0 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x27248d0 .functor BUFZ 1, L_0x2724090, C4<0>, C4<0>, C4<0>;
L_0x2724960 .functor BUFZ 1, L_0x2724090, C4<0>, C4<0>, C4<0>;
v0x2696ea0_0 .net "A", 0 0, L_0x2724da0;  1 drivers
v0x2696f40_0 .net "B", 0 0, L_0x2724e40;  1 drivers
v0x2697000_0 .net "I", 7 0, L_0x2724a80;  1 drivers
v0x2697100_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26971a0_0 .net *"_s15", 0 0, L_0x27248d0;  1 drivers
v0x26972b0_0 .net *"_s19", 0 0, L_0x2724960;  1 drivers
L_0x7f87e29676d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x2697390_0 .net/2s *"_s23", 0 0, L_0x7f87e29676d8;  1 drivers
v0x2697470_0 .net "addORsub", 0 0, L_0x2724090;  1 drivers
v0x2697510_0 .net "carryin", 0 0, L_0x2723e40;  1 drivers
v0x2697670_0 .net "carryout", 0 0, L_0x26962b0;  1 drivers
v0x2697740_0 .net "modB", 0 0, L_0x2723c00;  1 drivers
v0x26977e0_0 .net "out", 0 0, L_0x2724770;  1 drivers
L_0x2723c70 .part v0x2648060_0, 0, 1;
LS_0x2724a80_0_0 .concat8 [ 1 1 1 1], L_0x27248d0, L_0x2724960, L_0x2724480, L_0x7f87e29676d8;
LS_0x2724a80_0_4 .concat8 [ 1 1 1 1], L_0x2696790, L_0x2724600, L_0x2724670, L_0x27246e0;
L_0x2724a80 .concat8 [ 4 4 0 0], LS_0x2724a80_0_0, LS_0x2724a80_0_4;
S_0x2489160 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2723d10 .functor XOR 1, L_0x2724da0, L_0x2723c00, C4<0>, C4<0>;
L_0x2724090 .functor XOR 1, L_0x2723d10, L_0x2723e40, C4<0>, C4<0>;
L_0x27241a0 .functor AND 1, L_0x2723d10, L_0x2723e40, C4<1>, C4<1>;
L_0x2724210 .functor AND 1, L_0x2724da0, L_0x2723c00, C4<1>, C4<1>;
L_0x26962b0 .functor OR 1, L_0x27241a0, L_0x2724210, C4<0>, C4<0>;
v0x248a440_0 .net "A", 0 0, L_0x2724da0;  alias, 1 drivers
v0x248a500_0 .net "B", 0 0, L_0x2723c00;  alias, 1 drivers
v0x248a5c0_0 .net "carryin", 0 0, L_0x2723e40;  alias, 1 drivers
v0x248a690_0 .net "carryout", 0 0, L_0x26962b0;  alias, 1 drivers
v0x248bbe0_0 .net "out1", 0 0, L_0x2723d10;  1 drivers
v0x248bcf0_0 .net "out2", 0 0, L_0x27241a0;  1 drivers
v0x248bdb0_0 .net "out3", 0 0, L_0x2724210;  1 drivers
v0x248be70_0 .net "sum", 0 0, L_0x2724090;  alias, 1 drivers
S_0x24bdf90 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2696790 .functor AND 1, L_0x2724da0, L_0x2724e40, C4<1>, C4<1>;
v0x24be1d0_0 .net "A", 0 0, L_0x2724da0;  alias, 1 drivers
v0x24be290_0 .net "B", 0 0, L_0x2724e40;  alias, 1 drivers
v0x249b4a0_0 .net "out", 0 0, L_0x2696790;  1 drivers
S_0x249b5c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x249b810_0 .net "I", 7 0, L_0x2724a80;  alias, 1 drivers
v0x2695480_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x2695520_0 .net "out", 0 0, L_0x2724770;  alias, 1 drivers
L_0x2724770 .part/v L_0x2724a80, v0x2648060_0, 1;
S_0x26955c0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2724600 .functor NAND 1, L_0x2724da0, L_0x2724e40, C4<1>, C4<1>;
v0x26957e0_0 .net "A", 0 0, L_0x2724da0;  alias, 1 drivers
v0x26958d0_0 .net "B", 0 0, L_0x2724e40;  alias, 1 drivers
v0x2695990_0 .net "out", 0 0, L_0x2724600;  1 drivers
S_0x2695a90 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2724670 .functor NOR 1, L_0x2724da0, L_0x2724e40, C4<0>, C4<0>;
v0x2695d00_0 .net "A", 0 0, L_0x2724da0;  alias, 1 drivers
v0x2695dc0_0 .net "B", 0 0, L_0x2724e40;  alias, 1 drivers
v0x2695ed0_0 .net "out", 0 0, L_0x2724670;  1 drivers
S_0x2695fd0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27246e0 .functor OR 1, L_0x2724da0, L_0x2724e40, C4<0>, C4<0>;
v0x26961f0_0 .net "A", 0 0, L_0x2724da0;  alias, 1 drivers
v0x2696340_0 .net "B", 0 0, L_0x2724e40;  alias, 1 drivers
v0x2696400_0 .net "out", 0 0, L_0x27246e0;  1 drivers
S_0x2696500 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2723c00 .functor XOR 1, L_0x2724e40, L_0x2723c70, C4<0>, C4<0>;
v0x26966d0_0 .net "A", 0 0, L_0x2724e40;  alias, 1 drivers
v0x2696820_0 .net "B", 0 0, L_0x2723c70;  1 drivers
v0x26968e0_0 .net "out", 0 0, L_0x2723c00;  alias, 1 drivers
S_0x2696a20 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2488ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2724480 .functor XOR 1, L_0x2724da0, L_0x2724e40, C4<0>, C4<0>;
v0x2696bf0_0 .net "A", 0 0, L_0x2724da0;  alias, 1 drivers
v0x2696cb0_0 .net "B", 0 0, L_0x2724e40;  alias, 1 drivers
v0x2696d70_0 .net "out", 0 0, L_0x2724480;  1 drivers
S_0x2697900 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2725af0 .functor BUFZ 1, L_0x2725250, C4<0>, C4<0>, C4<0>;
L_0x2725b80 .functor BUFZ 1, L_0x2725250, C4<0>, C4<0>, C4<0>;
v0x269a870_0 .net "A", 0 0, L_0x2725fc0;  1 drivers
v0x269a910_0 .net "B", 0 0, L_0x2724ee0;  1 drivers
v0x269a9d0_0 .net "I", 7 0, L_0x2725ca0;  1 drivers
v0x269aad0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x269ab70_0 .net *"_s15", 0 0, L_0x2725af0;  1 drivers
v0x269ac80_0 .net *"_s19", 0 0, L_0x2725b80;  1 drivers
L_0x7f87e2967720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x269ad60_0 .net/2s *"_s23", 0 0, L_0x7f87e2967720;  1 drivers
v0x269ae40_0 .net "addORsub", 0 0, L_0x2725250;  1 drivers
v0x269aee0_0 .net "carryin", 0 0, L_0x2724f80;  1 drivers
v0x269b040_0 .net "carryout", 0 0, L_0x2699c80;  1 drivers
v0x269b110_0 .net "modB", 0 0, L_0x2723f70;  1 drivers
v0x269b1b0_0 .net "out", 0 0, L_0x2725990;  1 drivers
L_0x27250b0 .part v0x2648060_0, 0, 1;
LS_0x2725ca0_0_0 .concat8 [ 1 1 1 1], L_0x2725af0, L_0x2725b80, L_0x2725680, L_0x7f87e2967720;
LS_0x2725ca0_0_4 .concat8 [ 1 1 1 1], L_0x269a160, L_0x2725800, L_0x2725870, L_0x2725900;
L_0x2725ca0 .concat8 [ 4 4 0 0], LS_0x2725ca0_0_0, LS_0x2725ca0_0_4;
S_0x2697b70 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2725150 .functor XOR 1, L_0x2725fc0, L_0x2723f70, C4<0>, C4<0>;
L_0x2725250 .functor XOR 1, L_0x2725150, L_0x2724f80, C4<0>, C4<0>;
L_0x2725380 .functor AND 1, L_0x2725150, L_0x2724f80, C4<1>, C4<1>;
L_0x2725410 .functor AND 1, L_0x2725fc0, L_0x2723f70, C4<1>, C4<1>;
L_0x2699c80 .functor OR 1, L_0x2725380, L_0x2725410, C4<0>, C4<0>;
v0x2697e10_0 .net "A", 0 0, L_0x2725fc0;  alias, 1 drivers
v0x2697ef0_0 .net "B", 0 0, L_0x2723f70;  alias, 1 drivers
v0x2697fb0_0 .net "carryin", 0 0, L_0x2724f80;  alias, 1 drivers
v0x2698080_0 .net "carryout", 0 0, L_0x2699c80;  alias, 1 drivers
v0x2698140_0 .net "out1", 0 0, L_0x2725150;  1 drivers
v0x2698250_0 .net "out2", 0 0, L_0x2725380;  1 drivers
v0x2698310_0 .net "out3", 0 0, L_0x2725410;  1 drivers
v0x26983d0_0 .net "sum", 0 0, L_0x2725250;  alias, 1 drivers
S_0x2698530 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x269a160 .functor AND 1, L_0x2725fc0, L_0x2724ee0, C4<1>, C4<1>;
v0x2698770_0 .net "A", 0 0, L_0x2725fc0;  alias, 1 drivers
v0x2698830_0 .net "B", 0 0, L_0x2724ee0;  alias, 1 drivers
v0x26988d0_0 .net "out", 0 0, L_0x269a160;  1 drivers
S_0x2698a20 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x2698c70_0 .net "I", 7 0, L_0x2725ca0;  alias, 1 drivers
v0x2698d50_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x2698e10_0 .net "out", 0 0, L_0x2725990;  alias, 1 drivers
L_0x2725990 .part/v L_0x2725ca0, v0x2648060_0, 1;
S_0x2698f60 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2725800 .functor NAND 1, L_0x2725fc0, L_0x2724ee0, C4<1>, C4<1>;
v0x2699180_0 .net "A", 0 0, L_0x2725fc0;  alias, 1 drivers
v0x2699290_0 .net "B", 0 0, L_0x2724ee0;  alias, 1 drivers
v0x2699350_0 .net "out", 0 0, L_0x2725800;  1 drivers
S_0x2699460 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2725870 .functor NOR 1, L_0x2725fc0, L_0x2724ee0, C4<0>, C4<0>;
v0x26996d0_0 .net "A", 0 0, L_0x2725fc0;  alias, 1 drivers
v0x2699790_0 .net "B", 0 0, L_0x2724ee0;  alias, 1 drivers
v0x26998a0_0 .net "out", 0 0, L_0x2725870;  1 drivers
S_0x26999a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2725900 .functor OR 1, L_0x2725fc0, L_0x2724ee0, C4<0>, C4<0>;
v0x2699bc0_0 .net "A", 0 0, L_0x2725fc0;  alias, 1 drivers
v0x2699d10_0 .net "B", 0 0, L_0x2724ee0;  alias, 1 drivers
v0x2699dd0_0 .net "out", 0 0, L_0x2725900;  1 drivers
S_0x2699ed0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2723f70 .functor XOR 1, L_0x2724ee0, L_0x27250b0, C4<0>, C4<0>;
v0x269a0a0_0 .net "A", 0 0, L_0x2724ee0;  alias, 1 drivers
v0x269a1f0_0 .net "B", 0 0, L_0x27250b0;  1 drivers
v0x269a2b0_0 .net "out", 0 0, L_0x2723f70;  alias, 1 drivers
S_0x269a3f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x2697900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2725680 .functor XOR 1, L_0x2725fc0, L_0x2724ee0, C4<0>, C4<0>;
v0x269a5c0_0 .net "A", 0 0, L_0x2725fc0;  alias, 1 drivers
v0x269a680_0 .net "B", 0 0, L_0x2724ee0;  alias, 1 drivers
v0x269a740_0 .net "out", 0 0, L_0x2725680;  1 drivers
S_0x269b2d0 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x27123c0 .functor BUFZ 1, L_0x2711b90, C4<0>, C4<0>, C4<0>;
L_0x2712450 .functor BUFZ 1, L_0x2711b90, C4<0>, C4<0>, C4<0>;
v0x269e240_0 .net "A", 0 0, L_0x2712920;  1 drivers
v0x269e2e0_0 .net "B", 0 0, L_0x27129c0;  1 drivers
v0x269e3a0_0 .net "I", 7 0, L_0x2712570;  1 drivers
v0x269e4a0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x269e540_0 .net *"_s15", 0 0, L_0x27123c0;  1 drivers
v0x269e650_0 .net *"_s19", 0 0, L_0x2712450;  1 drivers
L_0x7f87e2967258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x269e730_0 .net/2s *"_s23", 0 0, L_0x7f87e2967258;  1 drivers
v0x269e810_0 .net "addORsub", 0 0, L_0x2711b90;  1 drivers
v0x269e8b0_0 .net "carryin", 0 0, L_0x2712a60;  1 drivers
v0x269ea10_0 .net "carryout", 0 0, L_0x269d650;  1 drivers
v0x269eae0_0 .net "modB", 0 0, L_0x2711980;  1 drivers
v0x269eb80_0 .net "out", 0 0, L_0x2712260;  1 drivers
L_0x27119f0 .part v0x2648060_0, 0, 1;
LS_0x2712570_0_0 .concat8 [ 1 1 1 1], L_0x27123c0, L_0x2712450, L_0x2711f50, L_0x7f87e2967258;
LS_0x2712570_0_4 .concat8 [ 1 1 1 1], L_0x269db30, L_0x27120d0, L_0x2712140, L_0x27121d0;
L_0x2712570 .concat8 [ 4 4 0 0], LS_0x2712570_0_0, LS_0x2712570_0_4;
S_0x269b540 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2711a90 .functor XOR 1, L_0x2712920, L_0x2711980, C4<0>, C4<0>;
L_0x2711b90 .functor XOR 1, L_0x2711a90, L_0x2712a60, C4<0>, C4<0>;
L_0x2711c50 .functor AND 1, L_0x2711a90, L_0x2712a60, C4<1>, C4<1>;
L_0x2711ce0 .functor AND 1, L_0x2712920, L_0x2711980, C4<1>, C4<1>;
L_0x269d650 .functor OR 1, L_0x2711c50, L_0x2711ce0, C4<0>, C4<0>;
v0x269b7e0_0 .net "A", 0 0, L_0x2712920;  alias, 1 drivers
v0x269b8c0_0 .net "B", 0 0, L_0x2711980;  alias, 1 drivers
v0x269b980_0 .net "carryin", 0 0, L_0x2712a60;  alias, 1 drivers
v0x269ba50_0 .net "carryout", 0 0, L_0x269d650;  alias, 1 drivers
v0x269bb10_0 .net "out1", 0 0, L_0x2711a90;  1 drivers
v0x269bc20_0 .net "out2", 0 0, L_0x2711c50;  1 drivers
v0x269bce0_0 .net "out3", 0 0, L_0x2711ce0;  1 drivers
v0x269bda0_0 .net "sum", 0 0, L_0x2711b90;  alias, 1 drivers
S_0x269bf00 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x269db30 .functor AND 1, L_0x2712920, L_0x27129c0, C4<1>, C4<1>;
v0x269c140_0 .net "A", 0 0, L_0x2712920;  alias, 1 drivers
v0x269c200_0 .net "B", 0 0, L_0x27129c0;  alias, 1 drivers
v0x269c2a0_0 .net "out", 0 0, L_0x269db30;  1 drivers
S_0x269c3f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x269c640_0 .net "I", 7 0, L_0x2712570;  alias, 1 drivers
v0x269c720_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x269c7e0_0 .net "out", 0 0, L_0x2712260;  alias, 1 drivers
L_0x2712260 .part/v L_0x2712570, v0x2648060_0, 1;
S_0x269c930 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27120d0 .functor NAND 1, L_0x2712920, L_0x27129c0, C4<1>, C4<1>;
v0x269cb50_0 .net "A", 0 0, L_0x2712920;  alias, 1 drivers
v0x269cc60_0 .net "B", 0 0, L_0x27129c0;  alias, 1 drivers
v0x269cd20_0 .net "out", 0 0, L_0x27120d0;  1 drivers
S_0x269ce30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2712140 .functor NOR 1, L_0x2712920, L_0x27129c0, C4<0>, C4<0>;
v0x269d0a0_0 .net "A", 0 0, L_0x2712920;  alias, 1 drivers
v0x269d160_0 .net "B", 0 0, L_0x27129c0;  alias, 1 drivers
v0x269d270_0 .net "out", 0 0, L_0x2712140;  1 drivers
S_0x269d370 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27121d0 .functor OR 1, L_0x2712920, L_0x27129c0, C4<0>, C4<0>;
v0x269d590_0 .net "A", 0 0, L_0x2712920;  alias, 1 drivers
v0x269d6e0_0 .net "B", 0 0, L_0x27129c0;  alias, 1 drivers
v0x269d7a0_0 .net "out", 0 0, L_0x27121d0;  1 drivers
S_0x269d8a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2711980 .functor XOR 1, L_0x27129c0, L_0x27119f0, C4<0>, C4<0>;
v0x269da70_0 .net "A", 0 0, L_0x27129c0;  alias, 1 drivers
v0x269dbc0_0 .net "B", 0 0, L_0x27119f0;  1 drivers
v0x269dc80_0 .net "out", 0 0, L_0x2711980;  alias, 1 drivers
S_0x269ddc0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x269b2d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2711f50 .functor XOR 1, L_0x2712920, L_0x27129c0, C4<0>, C4<0>;
v0x269df90_0 .net "A", 0 0, L_0x2712920;  alias, 1 drivers
v0x269e050_0 .net "B", 0 0, L_0x27129c0;  alias, 1 drivers
v0x269e110_0 .net "out", 0 0, L_0x2711f50;  1 drivers
S_0x269eca0 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2726d20 .functor BUFZ 1, L_0x2726480, C4<0>, C4<0>, C4<0>;
L_0x2726db0 .functor BUFZ 1, L_0x2726480, C4<0>, C4<0>, C4<0>;
v0x26a1c10_0 .net "A", 0 0, L_0x27271f0;  1 drivers
v0x26a1cb0_0 .net "B", 0 0, L_0x2727290;  1 drivers
v0x26a1d70_0 .net "I", 7 0, L_0x2726ed0;  1 drivers
v0x26a1e70_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26a1f10_0 .net *"_s15", 0 0, L_0x2726d20;  1 drivers
v0x26a2020_0 .net *"_s19", 0 0, L_0x2726db0;  1 drivers
L_0x7f87e2967768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26a2100_0 .net/2s *"_s23", 0 0, L_0x7f87e2967768;  1 drivers
v0x26a21e0_0 .net "addORsub", 0 0, L_0x2726480;  1 drivers
v0x26a2280_0 .net "carryin", 0 0, L_0x2726060;  1 drivers
v0x26a23e0_0 .net "carryout", 0 0, L_0x26a1020;  1 drivers
v0x26a24b0_0 .net "modB", 0 0, L_0x2726250;  1 drivers
v0x26a2550_0 .net "out", 0 0, L_0x2726bc0;  1 drivers
L_0x27262c0 .part v0x2648060_0, 0, 1;
LS_0x2726ed0_0_0 .concat8 [ 1 1 1 1], L_0x2726d20, L_0x2726db0, L_0x27268b0, L_0x7f87e2967768;
LS_0x2726ed0_0_4 .concat8 [ 1 1 1 1], L_0x26a1500, L_0x2726a30, L_0x2726aa0, L_0x2726b30;
L_0x2726ed0 .concat8 [ 4 4 0 0], LS_0x2726ed0_0_0, LS_0x2726ed0_0_4;
S_0x269ef10 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2726360 .functor XOR 1, L_0x27271f0, L_0x2726250, C4<0>, C4<0>;
L_0x2726480 .functor XOR 1, L_0x2726360, L_0x2726060, C4<0>, C4<0>;
L_0x27265b0 .functor AND 1, L_0x2726360, L_0x2726060, C4<1>, C4<1>;
L_0x2726640 .functor AND 1, L_0x27271f0, L_0x2726250, C4<1>, C4<1>;
L_0x26a1020 .functor OR 1, L_0x27265b0, L_0x2726640, C4<0>, C4<0>;
v0x269f1b0_0 .net "A", 0 0, L_0x27271f0;  alias, 1 drivers
v0x269f290_0 .net "B", 0 0, L_0x2726250;  alias, 1 drivers
v0x269f350_0 .net "carryin", 0 0, L_0x2726060;  alias, 1 drivers
v0x269f420_0 .net "carryout", 0 0, L_0x26a1020;  alias, 1 drivers
v0x269f4e0_0 .net "out1", 0 0, L_0x2726360;  1 drivers
v0x269f5f0_0 .net "out2", 0 0, L_0x27265b0;  1 drivers
v0x269f6b0_0 .net "out3", 0 0, L_0x2726640;  1 drivers
v0x269f770_0 .net "sum", 0 0, L_0x2726480;  alias, 1 drivers
S_0x269f8d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26a1500 .functor AND 1, L_0x27271f0, L_0x2727290, C4<1>, C4<1>;
v0x269fb10_0 .net "A", 0 0, L_0x27271f0;  alias, 1 drivers
v0x269fbd0_0 .net "B", 0 0, L_0x2727290;  alias, 1 drivers
v0x269fc70_0 .net "out", 0 0, L_0x26a1500;  1 drivers
S_0x269fdc0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26a0010_0 .net "I", 7 0, L_0x2726ed0;  alias, 1 drivers
v0x26a00f0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26a01b0_0 .net "out", 0 0, L_0x2726bc0;  alias, 1 drivers
L_0x2726bc0 .part/v L_0x2726ed0, v0x2648060_0, 1;
S_0x26a0300 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2726a30 .functor NAND 1, L_0x27271f0, L_0x2727290, C4<1>, C4<1>;
v0x26a0520_0 .net "A", 0 0, L_0x27271f0;  alias, 1 drivers
v0x26a0630_0 .net "B", 0 0, L_0x2727290;  alias, 1 drivers
v0x26a06f0_0 .net "out", 0 0, L_0x2726a30;  1 drivers
S_0x26a0800 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2726aa0 .functor NOR 1, L_0x27271f0, L_0x2727290, C4<0>, C4<0>;
v0x26a0a70_0 .net "A", 0 0, L_0x27271f0;  alias, 1 drivers
v0x26a0b30_0 .net "B", 0 0, L_0x2727290;  alias, 1 drivers
v0x26a0c40_0 .net "out", 0 0, L_0x2726aa0;  1 drivers
S_0x26a0d40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2726b30 .functor OR 1, L_0x27271f0, L_0x2727290, C4<0>, C4<0>;
v0x26a0f60_0 .net "A", 0 0, L_0x27271f0;  alias, 1 drivers
v0x26a10b0_0 .net "B", 0 0, L_0x2727290;  alias, 1 drivers
v0x26a1170_0 .net "out", 0 0, L_0x2726b30;  1 drivers
S_0x26a1270 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2726250 .functor XOR 1, L_0x2727290, L_0x27262c0, C4<0>, C4<0>;
v0x26a1440_0 .net "A", 0 0, L_0x2727290;  alias, 1 drivers
v0x26a1590_0 .net "B", 0 0, L_0x27262c0;  1 drivers
v0x26a1650_0 .net "out", 0 0, L_0x2726250;  alias, 1 drivers
S_0x26a1790 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x269eca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27268b0 .functor XOR 1, L_0x27271f0, L_0x2727290, C4<0>, C4<0>;
v0x26a1960_0 .net "A", 0 0, L_0x27271f0;  alias, 1 drivers
v0x26a1a20_0 .net "B", 0 0, L_0x2727290;  alias, 1 drivers
v0x26a1ae0_0 .net "out", 0 0, L_0x27268b0;  1 drivers
S_0x26a2670 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2727f50 .functor BUFZ 1, L_0x27276d0, C4<0>, C4<0>, C4<0>;
L_0x2727fe0 .functor BUFZ 1, L_0x27276d0, C4<0>, C4<0>, C4<0>;
v0x26a55e0_0 .net "A", 0 0, L_0x2728420;  1 drivers
v0x26a5680_0 .net "B", 0 0, L_0x2727330;  1 drivers
v0x26a5740_0 .net "I", 7 0, L_0x2728100;  1 drivers
v0x26a5840_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26a58e0_0 .net *"_s15", 0 0, L_0x2727f50;  1 drivers
v0x26a59f0_0 .net *"_s19", 0 0, L_0x2727fe0;  1 drivers
L_0x7f87e29677b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26a5ad0_0 .net/2s *"_s23", 0 0, L_0x7f87e29677b0;  1 drivers
v0x26a5bb0_0 .net "addORsub", 0 0, L_0x27276d0;  1 drivers
v0x26a5c50_0 .net "carryin", 0 0, L_0x27273d0;  1 drivers
v0x26a5db0_0 .net "carryout", 0 0, L_0x26a49f0;  1 drivers
v0x26a5e80_0 .net "modB", 0 0, L_0x2726190;  1 drivers
v0x26a5f20_0 .net "out", 0 0, L_0x2727df0;  1 drivers
L_0x2727530 .part v0x2648060_0, 0, 1;
LS_0x2728100_0_0 .concat8 [ 1 1 1 1], L_0x2727f50, L_0x2727fe0, L_0x2727ae0, L_0x7f87e29677b0;
LS_0x2728100_0_4 .concat8 [ 1 1 1 1], L_0x26a4ed0, L_0x2727c60, L_0x2727cd0, L_0x2727d60;
L_0x2728100 .concat8 [ 4 4 0 0], LS_0x2728100_0_0, LS_0x2728100_0_4;
S_0x26a28e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x27275d0 .functor XOR 1, L_0x2728420, L_0x2726190, C4<0>, C4<0>;
L_0x27276d0 .functor XOR 1, L_0x27275d0, L_0x27273d0, C4<0>, C4<0>;
L_0x27277e0 .functor AND 1, L_0x27275d0, L_0x27273d0, C4<1>, C4<1>;
L_0x2727870 .functor AND 1, L_0x2728420, L_0x2726190, C4<1>, C4<1>;
L_0x26a49f0 .functor OR 1, L_0x27277e0, L_0x2727870, C4<0>, C4<0>;
v0x26a2b80_0 .net "A", 0 0, L_0x2728420;  alias, 1 drivers
v0x26a2c60_0 .net "B", 0 0, L_0x2726190;  alias, 1 drivers
v0x26a2d20_0 .net "carryin", 0 0, L_0x27273d0;  alias, 1 drivers
v0x26a2df0_0 .net "carryout", 0 0, L_0x26a49f0;  alias, 1 drivers
v0x26a2eb0_0 .net "out1", 0 0, L_0x27275d0;  1 drivers
v0x26a2fc0_0 .net "out2", 0 0, L_0x27277e0;  1 drivers
v0x26a3080_0 .net "out3", 0 0, L_0x2727870;  1 drivers
v0x26a3140_0 .net "sum", 0 0, L_0x27276d0;  alias, 1 drivers
S_0x26a32a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26a4ed0 .functor AND 1, L_0x2728420, L_0x2727330, C4<1>, C4<1>;
v0x26a34e0_0 .net "A", 0 0, L_0x2728420;  alias, 1 drivers
v0x26a35a0_0 .net "B", 0 0, L_0x2727330;  alias, 1 drivers
v0x26a3640_0 .net "out", 0 0, L_0x26a4ed0;  1 drivers
S_0x26a3790 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26a39e0_0 .net "I", 7 0, L_0x2728100;  alias, 1 drivers
v0x26a3ac0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26a3b80_0 .net "out", 0 0, L_0x2727df0;  alias, 1 drivers
L_0x2727df0 .part/v L_0x2728100, v0x2648060_0, 1;
S_0x26a3cd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2727c60 .functor NAND 1, L_0x2728420, L_0x2727330, C4<1>, C4<1>;
v0x26a3ef0_0 .net "A", 0 0, L_0x2728420;  alias, 1 drivers
v0x26a4000_0 .net "B", 0 0, L_0x2727330;  alias, 1 drivers
v0x26a40c0_0 .net "out", 0 0, L_0x2727c60;  1 drivers
S_0x26a41d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2727cd0 .functor NOR 1, L_0x2728420, L_0x2727330, C4<0>, C4<0>;
v0x26a4440_0 .net "A", 0 0, L_0x2728420;  alias, 1 drivers
v0x26a4500_0 .net "B", 0 0, L_0x2727330;  alias, 1 drivers
v0x26a4610_0 .net "out", 0 0, L_0x2727cd0;  1 drivers
S_0x26a4710 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2727d60 .functor OR 1, L_0x2728420, L_0x2727330, C4<0>, C4<0>;
v0x26a4930_0 .net "A", 0 0, L_0x2728420;  alias, 1 drivers
v0x26a4a80_0 .net "B", 0 0, L_0x2727330;  alias, 1 drivers
v0x26a4b40_0 .net "out", 0 0, L_0x2727d60;  1 drivers
S_0x26a4c40 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2726190 .functor XOR 1, L_0x2727330, L_0x2727530, C4<0>, C4<0>;
v0x26a4e10_0 .net "A", 0 0, L_0x2727330;  alias, 1 drivers
v0x26a4f60_0 .net "B", 0 0, L_0x2727530;  1 drivers
v0x26a5020_0 .net "out", 0 0, L_0x2726190;  alias, 1 drivers
S_0x26a5160 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26a2670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2727ae0 .functor XOR 1, L_0x2728420, L_0x2727330, C4<0>, C4<0>;
v0x26a5330_0 .net "A", 0 0, L_0x2728420;  alias, 1 drivers
v0x26a53f0_0 .net "B", 0 0, L_0x2727330;  alias, 1 drivers
v0x26a54b0_0 .net "out", 0 0, L_0x2727ae0;  1 drivers
S_0x26a6040 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2729190 .functor BUFZ 1, L_0x27288f0, C4<0>, C4<0>, C4<0>;
L_0x2729220 .functor BUFZ 1, L_0x27288f0, C4<0>, C4<0>, C4<0>;
v0x26a8fb0_0 .net "A", 0 0, L_0x2729660;  1 drivers
v0x26a9050_0 .net "B", 0 0, L_0x2729700;  1 drivers
v0x26a9110_0 .net "I", 7 0, L_0x2729340;  1 drivers
v0x26a9210_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x267f440_0 .net *"_s15", 0 0, L_0x2729190;  1 drivers
v0x267f550_0 .net *"_s19", 0 0, L_0x2729220;  1 drivers
L_0x7f87e29677f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26a96c0_0 .net/2s *"_s23", 0 0, L_0x7f87e29677f8;  1 drivers
v0x26a9760_0 .net "addORsub", 0 0, L_0x27288f0;  1 drivers
v0x26a9800_0 .net "carryin", 0 0, L_0x27284c0;  1 drivers
v0x26a9930_0 .net "carryout", 0 0, L_0x26a83c0;  1 drivers
v0x26a9a00_0 .net "modB", 0 0, L_0x27286e0;  1 drivers
v0x26a9aa0_0 .net "out", 0 0, L_0x2729030;  1 drivers
L_0x2728750 .part v0x2648060_0, 0, 1;
LS_0x2729340_0_0 .concat8 [ 1 1 1 1], L_0x2729190, L_0x2729220, L_0x2728d20, L_0x7f87e29677f8;
LS_0x2729340_0_4 .concat8 [ 1 1 1 1], L_0x26a88a0, L_0x2728ea0, L_0x2728f10, L_0x2728fa0;
L_0x2729340 .concat8 [ 4 4 0 0], LS_0x2729340_0_0, LS_0x2729340_0_4;
S_0x26a62b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x27287f0 .functor XOR 1, L_0x2729660, L_0x27286e0, C4<0>, C4<0>;
L_0x27288f0 .functor XOR 1, L_0x27287f0, L_0x27284c0, C4<0>, C4<0>;
L_0x2728a20 .functor AND 1, L_0x27287f0, L_0x27284c0, C4<1>, C4<1>;
L_0x2728ab0 .functor AND 1, L_0x2729660, L_0x27286e0, C4<1>, C4<1>;
L_0x26a83c0 .functor OR 1, L_0x2728a20, L_0x2728ab0, C4<0>, C4<0>;
v0x26a6550_0 .net "A", 0 0, L_0x2729660;  alias, 1 drivers
v0x26a6630_0 .net "B", 0 0, L_0x27286e0;  alias, 1 drivers
v0x26a66f0_0 .net "carryin", 0 0, L_0x27284c0;  alias, 1 drivers
v0x26a67c0_0 .net "carryout", 0 0, L_0x26a83c0;  alias, 1 drivers
v0x26a6880_0 .net "out1", 0 0, L_0x27287f0;  1 drivers
v0x26a6990_0 .net "out2", 0 0, L_0x2728a20;  1 drivers
v0x26a6a50_0 .net "out3", 0 0, L_0x2728ab0;  1 drivers
v0x26a6b10_0 .net "sum", 0 0, L_0x27288f0;  alias, 1 drivers
S_0x26a6c70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26a88a0 .functor AND 1, L_0x2729660, L_0x2729700, C4<1>, C4<1>;
v0x26a6eb0_0 .net "A", 0 0, L_0x2729660;  alias, 1 drivers
v0x26a6f70_0 .net "B", 0 0, L_0x2729700;  alias, 1 drivers
v0x26a7010_0 .net "out", 0 0, L_0x26a88a0;  1 drivers
S_0x26a7160 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26a73b0_0 .net "I", 7 0, L_0x2729340;  alias, 1 drivers
v0x26a7490_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26a7550_0 .net "out", 0 0, L_0x2729030;  alias, 1 drivers
L_0x2729030 .part/v L_0x2729340, v0x2648060_0, 1;
S_0x26a76a0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2728ea0 .functor NAND 1, L_0x2729660, L_0x2729700, C4<1>, C4<1>;
v0x26a78c0_0 .net "A", 0 0, L_0x2729660;  alias, 1 drivers
v0x26a79d0_0 .net "B", 0 0, L_0x2729700;  alias, 1 drivers
v0x26a7a90_0 .net "out", 0 0, L_0x2728ea0;  1 drivers
S_0x26a7ba0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2728f10 .functor NOR 1, L_0x2729660, L_0x2729700, C4<0>, C4<0>;
v0x26a7e10_0 .net "A", 0 0, L_0x2729660;  alias, 1 drivers
v0x26a7ed0_0 .net "B", 0 0, L_0x2729700;  alias, 1 drivers
v0x26a7fe0_0 .net "out", 0 0, L_0x2728f10;  1 drivers
S_0x26a80e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2728fa0 .functor OR 1, L_0x2729660, L_0x2729700, C4<0>, C4<0>;
v0x26a8300_0 .net "A", 0 0, L_0x2729660;  alias, 1 drivers
v0x26a8450_0 .net "B", 0 0, L_0x2729700;  alias, 1 drivers
v0x26a8510_0 .net "out", 0 0, L_0x2728fa0;  1 drivers
S_0x26a8610 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27286e0 .functor XOR 1, L_0x2729700, L_0x2728750, C4<0>, C4<0>;
v0x26a87e0_0 .net "A", 0 0, L_0x2729700;  alias, 1 drivers
v0x26a8930_0 .net "B", 0 0, L_0x2728750;  1 drivers
v0x26a89f0_0 .net "out", 0 0, L_0x27286e0;  alias, 1 drivers
S_0x26a8b30 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26a6040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2728d20 .functor XOR 1, L_0x2729660, L_0x2729700, C4<0>, C4<0>;
v0x26a8d00_0 .net "A", 0 0, L_0x2729660;  alias, 1 drivers
v0x26a8dc0_0 .net "B", 0 0, L_0x2729700;  alias, 1 drivers
v0x26a8e80_0 .net "out", 0 0, L_0x2728d20;  1 drivers
S_0x26a9bc0 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x272a3c0 .functor BUFZ 1, L_0x2729b20, C4<0>, C4<0>, C4<0>;
L_0x272a450 .functor BUFZ 1, L_0x2729b20, C4<0>, C4<0>, C4<0>;
v0x26acbb0_0 .net "A", 0 0, L_0x272a890;  1 drivers
v0x26acc50_0 .net "B", 0 0, L_0x27297a0;  1 drivers
v0x26acd10_0 .net "I", 7 0, L_0x272a570;  1 drivers
v0x26ace10_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26aceb0_0 .net *"_s15", 0 0, L_0x272a3c0;  1 drivers
v0x26acfc0_0 .net *"_s19", 0 0, L_0x272a450;  1 drivers
L_0x7f87e2967840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26ad0a0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967840;  1 drivers
v0x26ad180_0 .net "addORsub", 0 0, L_0x2729b20;  1 drivers
v0x26ad220_0 .net "carryin", 0 0, L_0x2729840;  1 drivers
v0x26ad380_0 .net "carryout", 0 0, L_0x26abfc0;  1 drivers
v0x26ad450_0 .net "modB", 0 0, L_0x27285f0;  1 drivers
v0x26ad4f0_0 .net "out", 0 0, L_0x272a260;  1 drivers
L_0x27299d0 .part v0x2648060_0, 0, 1;
LS_0x272a570_0_0 .concat8 [ 1 1 1 1], L_0x272a3c0, L_0x272a450, L_0x2729f50, L_0x7f87e2967840;
LS_0x272a570_0_4 .concat8 [ 1 1 1 1], L_0x26ac4a0, L_0x272a0d0, L_0x272a140, L_0x272a1d0;
L_0x272a570 .concat8 [ 4 4 0 0], LS_0x272a570_0_0, LS_0x272a570_0_4;
S_0x26a9f40 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2728660 .functor XOR 1, L_0x272a890, L_0x27285f0, C4<0>, C4<0>;
L_0x2729b20 .functor XOR 1, L_0x2728660, L_0x2729840, C4<0>, C4<0>;
L_0x2729c50 .functor AND 1, L_0x2728660, L_0x2729840, C4<1>, C4<1>;
L_0x2729ce0 .functor AND 1, L_0x272a890, L_0x27285f0, C4<1>, C4<1>;
L_0x26abfc0 .functor OR 1, L_0x2729c50, L_0x2729ce0, C4<0>, C4<0>;
v0x26aa170_0 .net "A", 0 0, L_0x272a890;  alias, 1 drivers
v0x26aa230_0 .net "B", 0 0, L_0x27285f0;  alias, 1 drivers
v0x26aa2f0_0 .net "carryin", 0 0, L_0x2729840;  alias, 1 drivers
v0x26aa3c0_0 .net "carryout", 0 0, L_0x26abfc0;  alias, 1 drivers
v0x26aa480_0 .net "out1", 0 0, L_0x2728660;  1 drivers
v0x26aa590_0 .net "out2", 0 0, L_0x2729c50;  1 drivers
v0x26aa650_0 .net "out3", 0 0, L_0x2729ce0;  1 drivers
v0x26aa710_0 .net "sum", 0 0, L_0x2729b20;  alias, 1 drivers
S_0x26aa870 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26ac4a0 .functor AND 1, L_0x272a890, L_0x27297a0, C4<1>, C4<1>;
v0x26aaab0_0 .net "A", 0 0, L_0x272a890;  alias, 1 drivers
v0x26aab70_0 .net "B", 0 0, L_0x27297a0;  alias, 1 drivers
v0x26aac10_0 .net "out", 0 0, L_0x26ac4a0;  1 drivers
S_0x26aad60 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26aafb0_0 .net "I", 7 0, L_0x272a570;  alias, 1 drivers
v0x26ab090_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26ab150_0 .net "out", 0 0, L_0x272a260;  alias, 1 drivers
L_0x272a260 .part/v L_0x272a570, v0x2648060_0, 1;
S_0x26ab2a0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272a0d0 .functor NAND 1, L_0x272a890, L_0x27297a0, C4<1>, C4<1>;
v0x26ab4c0_0 .net "A", 0 0, L_0x272a890;  alias, 1 drivers
v0x26ab5d0_0 .net "B", 0 0, L_0x27297a0;  alias, 1 drivers
v0x26ab690_0 .net "out", 0 0, L_0x272a0d0;  1 drivers
S_0x26ab7a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272a140 .functor NOR 1, L_0x272a890, L_0x27297a0, C4<0>, C4<0>;
v0x26aba10_0 .net "A", 0 0, L_0x272a890;  alias, 1 drivers
v0x26abad0_0 .net "B", 0 0, L_0x27297a0;  alias, 1 drivers
v0x26abbe0_0 .net "out", 0 0, L_0x272a140;  1 drivers
S_0x26abce0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272a1d0 .functor OR 1, L_0x272a890, L_0x27297a0, C4<0>, C4<0>;
v0x26abf00_0 .net "A", 0 0, L_0x272a890;  alias, 1 drivers
v0x26ac050_0 .net "B", 0 0, L_0x27297a0;  alias, 1 drivers
v0x26ac110_0 .net "out", 0 0, L_0x272a1d0;  1 drivers
S_0x26ac210 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27285f0 .functor XOR 1, L_0x27297a0, L_0x27299d0, C4<0>, C4<0>;
v0x26ac3e0_0 .net "A", 0 0, L_0x27297a0;  alias, 1 drivers
v0x26ac530_0 .net "B", 0 0, L_0x27299d0;  1 drivers
v0x26ac5f0_0 .net "out", 0 0, L_0x27285f0;  alias, 1 drivers
S_0x26ac730 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26a9bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2729f50 .functor XOR 1, L_0x272a890, L_0x27297a0, C4<0>, C4<0>;
v0x26ac900_0 .net "A", 0 0, L_0x272a890;  alias, 1 drivers
v0x26ac9c0_0 .net "B", 0 0, L_0x27297a0;  alias, 1 drivers
v0x26aca80_0 .net "out", 0 0, L_0x2729f50;  1 drivers
S_0x26ad610 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x272b5f0 .functor BUFZ 1, L_0x272ad90, C4<0>, C4<0>, C4<0>;
L_0x272b680 .functor BUFZ 1, L_0x272ad90, C4<0>, C4<0>, C4<0>;
v0x26b0580_0 .net "A", 0 0, L_0x272bac0;  1 drivers
v0x26b0620_0 .net "B", 0 0, L_0x272bb60;  1 drivers
v0x26b06e0_0 .net "I", 7 0, L_0x272b7a0;  1 drivers
v0x26b07e0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26b0880_0 .net *"_s15", 0 0, L_0x272b5f0;  1 drivers
v0x26b0990_0 .net *"_s19", 0 0, L_0x272b680;  1 drivers
L_0x7f87e2967888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26b0a70_0 .net/2s *"_s23", 0 0, L_0x7f87e2967888;  1 drivers
v0x26b0b50_0 .net "addORsub", 0 0, L_0x272ad90;  1 drivers
v0x26b0bf0_0 .net "carryin", 0 0, L_0x272a930;  1 drivers
v0x26b0d50_0 .net "carryout", 0 0, L_0x26af990;  1 drivers
v0x26b0e20_0 .net "modB", 0 0, L_0x272ab80;  1 drivers
v0x26b0ec0_0 .net "out", 0 0, L_0x272b490;  1 drivers
L_0x272abf0 .part v0x2648060_0, 0, 1;
LS_0x272b7a0_0_0 .concat8 [ 1 1 1 1], L_0x272b5f0, L_0x272b680, L_0x272b180, L_0x7f87e2967888;
LS_0x272b7a0_0_4 .concat8 [ 1 1 1 1], L_0x26afe70, L_0x272b300, L_0x272b370, L_0x272b400;
L_0x272b7a0 .concat8 [ 4 4 0 0], LS_0x272b7a0_0_0, LS_0x272b7a0_0_4;
S_0x26ad880 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x272ac90 .functor XOR 1, L_0x272bac0, L_0x272ab80, C4<0>, C4<0>;
L_0x272ad90 .functor XOR 1, L_0x272ac90, L_0x272a930, C4<0>, C4<0>;
L_0x272aea0 .functor AND 1, L_0x272ac90, L_0x272a930, C4<1>, C4<1>;
L_0x272af10 .functor AND 1, L_0x272bac0, L_0x272ab80, C4<1>, C4<1>;
L_0x26af990 .functor OR 1, L_0x272aea0, L_0x272af10, C4<0>, C4<0>;
v0x26adb20_0 .net "A", 0 0, L_0x272bac0;  alias, 1 drivers
v0x26adc00_0 .net "B", 0 0, L_0x272ab80;  alias, 1 drivers
v0x26adcc0_0 .net "carryin", 0 0, L_0x272a930;  alias, 1 drivers
v0x26add90_0 .net "carryout", 0 0, L_0x26af990;  alias, 1 drivers
v0x26ade50_0 .net "out1", 0 0, L_0x272ac90;  1 drivers
v0x26adf60_0 .net "out2", 0 0, L_0x272aea0;  1 drivers
v0x26ae020_0 .net "out3", 0 0, L_0x272af10;  1 drivers
v0x26ae0e0_0 .net "sum", 0 0, L_0x272ad90;  alias, 1 drivers
S_0x26ae240 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26afe70 .functor AND 1, L_0x272bac0, L_0x272bb60, C4<1>, C4<1>;
v0x26ae480_0 .net "A", 0 0, L_0x272bac0;  alias, 1 drivers
v0x26ae540_0 .net "B", 0 0, L_0x272bb60;  alias, 1 drivers
v0x26ae5e0_0 .net "out", 0 0, L_0x26afe70;  1 drivers
S_0x26ae730 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26ae980_0 .net "I", 7 0, L_0x272b7a0;  alias, 1 drivers
v0x26aea60_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26aeb20_0 .net "out", 0 0, L_0x272b490;  alias, 1 drivers
L_0x272b490 .part/v L_0x272b7a0, v0x2648060_0, 1;
S_0x26aec70 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272b300 .functor NAND 1, L_0x272bac0, L_0x272bb60, C4<1>, C4<1>;
v0x26aee90_0 .net "A", 0 0, L_0x272bac0;  alias, 1 drivers
v0x26aefa0_0 .net "B", 0 0, L_0x272bb60;  alias, 1 drivers
v0x26af060_0 .net "out", 0 0, L_0x272b300;  1 drivers
S_0x26af170 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272b370 .functor NOR 1, L_0x272bac0, L_0x272bb60, C4<0>, C4<0>;
v0x26af3e0_0 .net "A", 0 0, L_0x272bac0;  alias, 1 drivers
v0x26af4a0_0 .net "B", 0 0, L_0x272bb60;  alias, 1 drivers
v0x26af5b0_0 .net "out", 0 0, L_0x272b370;  1 drivers
S_0x26af6b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272b400 .functor OR 1, L_0x272bac0, L_0x272bb60, C4<0>, C4<0>;
v0x26af8d0_0 .net "A", 0 0, L_0x272bac0;  alias, 1 drivers
v0x26afa20_0 .net "B", 0 0, L_0x272bb60;  alias, 1 drivers
v0x26afae0_0 .net "out", 0 0, L_0x272b400;  1 drivers
S_0x26afbe0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272ab80 .functor XOR 1, L_0x272bb60, L_0x272abf0, C4<0>, C4<0>;
v0x26afdb0_0 .net "A", 0 0, L_0x272bb60;  alias, 1 drivers
v0x26aff00_0 .net "B", 0 0, L_0x272abf0;  1 drivers
v0x26affc0_0 .net "out", 0 0, L_0x272ab80;  alias, 1 drivers
S_0x26b0100 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26ad610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272b180 .functor XOR 1, L_0x272bac0, L_0x272bb60, C4<0>, C4<0>;
v0x26b02d0_0 .net "A", 0 0, L_0x272bac0;  alias, 1 drivers
v0x26b0390_0 .net "B", 0 0, L_0x272bb60;  alias, 1 drivers
v0x26b0450_0 .net "out", 0 0, L_0x272b180;  1 drivers
S_0x26b0fe0 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x272c820 .functor BUFZ 1, L_0x272bf80, C4<0>, C4<0>, C4<0>;
L_0x272c8b0 .functor BUFZ 1, L_0x272bf80, C4<0>, C4<0>, C4<0>;
v0x26b3f60_0 .net "A", 0 0, L_0x272ccf0;  1 drivers
v0x26b4000_0 .net "B", 0 0, L_0x271a670;  1 drivers
v0x26b40c0_0 .net "I", 7 0, L_0x272c9d0;  1 drivers
v0x26b41c0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26b4260_0 .net *"_s15", 0 0, L_0x272c820;  1 drivers
v0x26b4370_0 .net *"_s19", 0 0, L_0x272c8b0;  1 drivers
L_0x7f87e29678d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26b4450_0 .net/2s *"_s23", 0 0, L_0x7f87e29678d0;  1 drivers
v0x26b4530_0 .net "addORsub", 0 0, L_0x272bf80;  1 drivers
v0x26b45d0_0 .net "carryin", 0 0, L_0x271a710;  1 drivers
v0x26b4730_0 .net "carryout", 0 0, L_0x26b3340;  1 drivers
v0x26b4800_0 .net "modB", 0 0, L_0x272aa60;  1 drivers
v0x26b48a0_0 .net "out", 0 0, L_0x272c6c0;  1 drivers
L_0x272aad0 .part v0x2648060_0, 0, 1;
LS_0x272c9d0_0_0 .concat8 [ 1 1 1 1], L_0x272c820, L_0x272c8b0, L_0x272c3b0, L_0x7f87e29678d0;
LS_0x272c9d0_0_4 .concat8 [ 1 1 1 1], L_0x26b3850, L_0x272c530, L_0x272c5a0, L_0x272c630;
L_0x272c9d0 .concat8 [ 4 4 0 0], LS_0x272c9d0_0_0, LS_0x272c9d0_0_4;
S_0x26b1250 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x272be60 .functor XOR 1, L_0x272ccf0, L_0x272aa60, C4<0>, C4<0>;
L_0x272bf80 .functor XOR 1, L_0x272be60, L_0x271a710, C4<0>, C4<0>;
L_0x272c0b0 .functor AND 1, L_0x272be60, L_0x271a710, C4<1>, C4<1>;
L_0x272c140 .functor AND 1, L_0x272ccf0, L_0x272aa60, C4<1>, C4<1>;
L_0x26b3340 .functor OR 1, L_0x272c0b0, L_0x272c140, C4<0>, C4<0>;
v0x26b14f0_0 .net "A", 0 0, L_0x272ccf0;  alias, 1 drivers
v0x26b15d0_0 .net "B", 0 0, L_0x272aa60;  alias, 1 drivers
v0x26b1690_0 .net "carryin", 0 0, L_0x271a710;  alias, 1 drivers
v0x26b1760_0 .net "carryout", 0 0, L_0x26b3340;  alias, 1 drivers
v0x26b1820_0 .net "out1", 0 0, L_0x272be60;  1 drivers
v0x26b1930_0 .net "out2", 0 0, L_0x272c0b0;  1 drivers
v0x26b19f0_0 .net "out3", 0 0, L_0x272c140;  1 drivers
v0x26b1ab0_0 .net "sum", 0 0, L_0x272bf80;  alias, 1 drivers
S_0x26b1c10 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26b3850 .functor AND 1, L_0x272ccf0, L_0x271a670, C4<1>, C4<1>;
v0x26b1e50_0 .net "A", 0 0, L_0x272ccf0;  alias, 1 drivers
v0x26b1f10_0 .net "B", 0 0, L_0x271a670;  alias, 1 drivers
v0x26b1fb0_0 .net "out", 0 0, L_0x26b3850;  1 drivers
S_0x26b2100 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26b2350_0 .net "I", 7 0, L_0x272c9d0;  alias, 1 drivers
v0x26b2430_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26b24f0_0 .net "out", 0 0, L_0x272c6c0;  alias, 1 drivers
L_0x272c6c0 .part/v L_0x272c9d0, v0x2648060_0, 1;
S_0x26b2640 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272c530 .functor NAND 1, L_0x272ccf0, L_0x271a670, C4<1>, C4<1>;
v0x26b2860_0 .net "A", 0 0, L_0x272ccf0;  alias, 1 drivers
v0x26b2970_0 .net "B", 0 0, L_0x271a670;  alias, 1 drivers
v0x26b2a30_0 .net "out", 0 0, L_0x272c530;  1 drivers
S_0x26b2b40 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272c5a0 .functor NOR 1, L_0x272ccf0, L_0x271a670, C4<0>, C4<0>;
v0x26b2db0_0 .net "A", 0 0, L_0x272ccf0;  alias, 1 drivers
v0x26b2e70_0 .net "B", 0 0, L_0x271a670;  alias, 1 drivers
v0x26b2f80_0 .net "out", 0 0, L_0x272c5a0;  1 drivers
S_0x26b3060 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272c630 .functor OR 1, L_0x272ccf0, L_0x271a670, C4<0>, C4<0>;
v0x26b3280_0 .net "A", 0 0, L_0x272ccf0;  alias, 1 drivers
v0x26b33d0_0 .net "B", 0 0, L_0x271a670;  alias, 1 drivers
v0x26b3490_0 .net "out", 0 0, L_0x272c630;  1 drivers
S_0x26b35c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272aa60 .functor XOR 1, L_0x271a670, L_0x272aad0, C4<0>, C4<0>;
v0x26b3790_0 .net "A", 0 0, L_0x271a670;  alias, 1 drivers
v0x26b38e0_0 .net "B", 0 0, L_0x272aad0;  1 drivers
v0x26b39a0_0 .net "out", 0 0, L_0x272aa60;  alias, 1 drivers
S_0x26b3ae0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26b0fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272c3b0 .functor XOR 1, L_0x272ccf0, L_0x271a670, C4<0>, C4<0>;
v0x26b3cb0_0 .net "A", 0 0, L_0x272ccf0;  alias, 1 drivers
v0x26b3d70_0 .net "B", 0 0, L_0x271a670;  alias, 1 drivers
v0x26b3e30_0 .net "out", 0 0, L_0x272c3b0;  1 drivers
S_0x26b49c0 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x272dac0 .functor BUFZ 1, L_0x272bdc0, C4<0>, C4<0>, C4<0>;
L_0x272db30 .functor BUFZ 1, L_0x272bdc0, C4<0>, C4<0>, C4<0>;
v0x26b7930_0 .net "A", 0 0, L_0x271b930;  1 drivers
v0x26b79d0_0 .net "B", 0 0, L_0x272e160;  1 drivers
v0x26b7a90_0 .net "I", 7 0, L_0x272dc30;  1 drivers
v0x26b7b90_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26b7c30_0 .net *"_s15", 0 0, L_0x272dac0;  1 drivers
v0x26b7d40_0 .net *"_s19", 0 0, L_0x272db30;  1 drivers
L_0x7f87e2967918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26b7e20_0 .net/2s *"_s23", 0 0, L_0x7f87e2967918;  1 drivers
v0x26b7f00_0 .net "addORsub", 0 0, L_0x272bdc0;  1 drivers
v0x26b7fa0_0 .net "carryin", 0 0, L_0x272d1a0;  1 drivers
v0x26b8100_0 .net "carryout", 0 0, L_0x26b6d40;  1 drivers
v0x26b81d0_0 .net "modB", 0 0, L_0x270c6b0;  1 drivers
v0x26b8270_0 .net "out", 0 0, L_0x272d980;  1 drivers
L_0x272bc00 .part v0x2648060_0, 0, 1;
LS_0x272dc30_0_0 .concat8 [ 1 1 1 1], L_0x272dac0, L_0x272db30, L_0x272d6b0, L_0x7f87e2967918;
LS_0x272dc30_0_4 .concat8 [ 1 1 1 1], L_0x26b7220, L_0x272d830, L_0x272d8a0, L_0x272d910;
L_0x272dc30 .concat8 [ 4 4 0 0], LS_0x272dc30_0_0, LS_0x272dc30_0_4;
S_0x26b4c30 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x272bca0 .functor XOR 1, L_0x271b930, L_0x270c6b0, C4<0>, C4<0>;
L_0x272bdc0 .functor XOR 1, L_0x272bca0, L_0x272d1a0, C4<0>, C4<0>;
L_0x272d420 .functor AND 1, L_0x272bca0, L_0x272d1a0, C4<1>, C4<1>;
L_0x272d490 .functor AND 1, L_0x271b930, L_0x270c6b0, C4<1>, C4<1>;
L_0x26b6d40 .functor OR 1, L_0x272d420, L_0x272d490, C4<0>, C4<0>;
v0x26b4ed0_0 .net "A", 0 0, L_0x271b930;  alias, 1 drivers
v0x26b4fb0_0 .net "B", 0 0, L_0x270c6b0;  alias, 1 drivers
v0x26b5070_0 .net "carryin", 0 0, L_0x272d1a0;  alias, 1 drivers
v0x26b5140_0 .net "carryout", 0 0, L_0x26b6d40;  alias, 1 drivers
v0x26b5200_0 .net "out1", 0 0, L_0x272bca0;  1 drivers
v0x26b5310_0 .net "out2", 0 0, L_0x272d420;  1 drivers
v0x26b53d0_0 .net "out3", 0 0, L_0x272d490;  1 drivers
v0x26b5490_0 .net "sum", 0 0, L_0x272bdc0;  alias, 1 drivers
S_0x26b55f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26b7220 .functor AND 1, L_0x271b930, L_0x272e160, C4<1>, C4<1>;
v0x26b5830_0 .net "A", 0 0, L_0x271b930;  alias, 1 drivers
v0x26b58f0_0 .net "B", 0 0, L_0x272e160;  alias, 1 drivers
v0x26b5990_0 .net "out", 0 0, L_0x26b7220;  1 drivers
S_0x26b5ae0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26b5d30_0 .net "I", 7 0, L_0x272dc30;  alias, 1 drivers
v0x26b5e10_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26b5ed0_0 .net "out", 0 0, L_0x272d980;  alias, 1 drivers
L_0x272d980 .part/v L_0x272dc30, v0x2648060_0, 1;
S_0x26b6020 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272d830 .functor NAND 1, L_0x271b930, L_0x272e160, C4<1>, C4<1>;
v0x26b6240_0 .net "A", 0 0, L_0x271b930;  alias, 1 drivers
v0x26b6350_0 .net "B", 0 0, L_0x272e160;  alias, 1 drivers
v0x26b6410_0 .net "out", 0 0, L_0x272d830;  1 drivers
S_0x26b6520 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272d8a0 .functor NOR 1, L_0x271b930, L_0x272e160, C4<0>, C4<0>;
v0x26b6790_0 .net "A", 0 0, L_0x271b930;  alias, 1 drivers
v0x26b6850_0 .net "B", 0 0, L_0x272e160;  alias, 1 drivers
v0x26b6960_0 .net "out", 0 0, L_0x272d8a0;  1 drivers
S_0x26b6a60 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272d910 .functor OR 1, L_0x271b930, L_0x272e160, C4<0>, C4<0>;
v0x26b6c80_0 .net "A", 0 0, L_0x271b930;  alias, 1 drivers
v0x26b6dd0_0 .net "B", 0 0, L_0x272e160;  alias, 1 drivers
v0x26b6e90_0 .net "out", 0 0, L_0x272d910;  1 drivers
S_0x26b6f90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x270c6b0 .functor XOR 1, L_0x272e160, L_0x272bc00, C4<0>, C4<0>;
v0x26b7160_0 .net "A", 0 0, L_0x272e160;  alias, 1 drivers
v0x26b72b0_0 .net "B", 0 0, L_0x272bc00;  1 drivers
v0x26b7370_0 .net "out", 0 0, L_0x270c6b0;  alias, 1 drivers
S_0x26b74b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26b49c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272d6b0 .functor XOR 1, L_0x271b930, L_0x272e160, C4<0>, C4<0>;
v0x26b7680_0 .net "A", 0 0, L_0x271b930;  alias, 1 drivers
v0x26b7740_0 .net "B", 0 0, L_0x272e160;  alias, 1 drivers
v0x26b7800_0 .net "out", 0 0, L_0x272d6b0;  1 drivers
S_0x26b8390 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x272ed40 .functor BUFZ 1, L_0x272e590, C4<0>, C4<0>, C4<0>;
L_0x272edb0 .functor BUFZ 1, L_0x272e590, C4<0>, C4<0>, C4<0>;
v0x26bb300_0 .net "A", 0 0, L_0x272f1d0;  1 drivers
v0x26bb3a0_0 .net "B", 0 0, L_0x272e200;  1 drivers
v0x26bb460_0 .net "I", 7 0, L_0x272eeb0;  1 drivers
v0x26bb560_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26bb600_0 .net *"_s15", 0 0, L_0x272ed40;  1 drivers
v0x26bb710_0 .net *"_s19", 0 0, L_0x272edb0;  1 drivers
L_0x7f87e2967960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26bb7f0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967960;  1 drivers
v0x26bb8d0_0 .net "addORsub", 0 0, L_0x272e590;  1 drivers
v0x26bb970_0 .net "carryin", 0 0, L_0x272e2a0;  1 drivers
v0x26bbad0_0 .net "carryout", 0 0, L_0x26ba710;  1 drivers
v0x26bbba0_0 .net "modB", 0 0, L_0x271b9d0;  1 drivers
v0x26bbc40_0 .net "out", 0 0, L_0x272ec00;  1 drivers
L_0x272d2d0 .part v0x2648060_0, 0, 1;
LS_0x272eeb0_0_0 .concat8 [ 1 1 1 1], L_0x272ed40, L_0x272edb0, L_0x272e930, L_0x7f87e2967960;
LS_0x272eeb0_0_4 .concat8 [ 1 1 1 1], L_0x26babf0, L_0x272eab0, L_0x272eb20, L_0x272eb90;
L_0x272eeb0 .concat8 [ 4 4 0 0], LS_0x272eeb0_0_0, LS_0x272eeb0_0_4;
S_0x26b8600 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x272e490 .functor XOR 1, L_0x272f1d0, L_0x271b9d0, C4<0>, C4<0>;
L_0x272e590 .functor XOR 1, L_0x272e490, L_0x272e2a0, C4<0>, C4<0>;
L_0x272e650 .functor AND 1, L_0x272e490, L_0x272e2a0, C4<1>, C4<1>;
L_0x272e6c0 .functor AND 1, L_0x272f1d0, L_0x271b9d0, C4<1>, C4<1>;
L_0x26ba710 .functor OR 1, L_0x272e650, L_0x272e6c0, C4<0>, C4<0>;
v0x26b88a0_0 .net "A", 0 0, L_0x272f1d0;  alias, 1 drivers
v0x26b8980_0 .net "B", 0 0, L_0x271b9d0;  alias, 1 drivers
v0x26b8a40_0 .net "carryin", 0 0, L_0x272e2a0;  alias, 1 drivers
v0x26b8b10_0 .net "carryout", 0 0, L_0x26ba710;  alias, 1 drivers
v0x26b8bd0_0 .net "out1", 0 0, L_0x272e490;  1 drivers
v0x26b8ce0_0 .net "out2", 0 0, L_0x272e650;  1 drivers
v0x26b8da0_0 .net "out3", 0 0, L_0x272e6c0;  1 drivers
v0x26b8e60_0 .net "sum", 0 0, L_0x272e590;  alias, 1 drivers
S_0x26b8fc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26babf0 .functor AND 1, L_0x272f1d0, L_0x272e200, C4<1>, C4<1>;
v0x26b9200_0 .net "A", 0 0, L_0x272f1d0;  alias, 1 drivers
v0x26b92c0_0 .net "B", 0 0, L_0x272e200;  alias, 1 drivers
v0x26b9360_0 .net "out", 0 0, L_0x26babf0;  1 drivers
S_0x26b94b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26b9700_0 .net "I", 7 0, L_0x272eeb0;  alias, 1 drivers
v0x26b97e0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26b98a0_0 .net "out", 0 0, L_0x272ec00;  alias, 1 drivers
L_0x272ec00 .part/v L_0x272eeb0, v0x2648060_0, 1;
S_0x26b99f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272eab0 .functor NAND 1, L_0x272f1d0, L_0x272e200, C4<1>, C4<1>;
v0x26b9c10_0 .net "A", 0 0, L_0x272f1d0;  alias, 1 drivers
v0x26b9d20_0 .net "B", 0 0, L_0x272e200;  alias, 1 drivers
v0x26b9de0_0 .net "out", 0 0, L_0x272eab0;  1 drivers
S_0x26b9ef0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272eb20 .functor NOR 1, L_0x272f1d0, L_0x272e200, C4<0>, C4<0>;
v0x26ba160_0 .net "A", 0 0, L_0x272f1d0;  alias, 1 drivers
v0x26ba220_0 .net "B", 0 0, L_0x272e200;  alias, 1 drivers
v0x26ba330_0 .net "out", 0 0, L_0x272eb20;  1 drivers
S_0x26ba430 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272eb90 .functor OR 1, L_0x272f1d0, L_0x272e200, C4<0>, C4<0>;
v0x26ba650_0 .net "A", 0 0, L_0x272f1d0;  alias, 1 drivers
v0x26ba7a0_0 .net "B", 0 0, L_0x272e200;  alias, 1 drivers
v0x26ba860_0 .net "out", 0 0, L_0x272eb90;  1 drivers
S_0x26ba960 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271b9d0 .functor XOR 1, L_0x272e200, L_0x272d2d0, C4<0>, C4<0>;
v0x26bab30_0 .net "A", 0 0, L_0x272e200;  alias, 1 drivers
v0x26bac80_0 .net "B", 0 0, L_0x272d2d0;  1 drivers
v0x26bad40_0 .net "out", 0 0, L_0x271b9d0;  alias, 1 drivers
S_0x26bae80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26b8390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272e930 .functor XOR 1, L_0x272f1d0, L_0x272e200, C4<0>, C4<0>;
v0x26bb050_0 .net "A", 0 0, L_0x272f1d0;  alias, 1 drivers
v0x26bb110_0 .net "B", 0 0, L_0x272e200;  alias, 1 drivers
v0x26bb1d0_0 .net "out", 0 0, L_0x272e930;  1 drivers
S_0x26bbd60 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x272fe70 .functor BUFZ 1, L_0x272f6c0, C4<0>, C4<0>, C4<0>;
L_0x272fee0 .functor BUFZ 1, L_0x272f6c0, C4<0>, C4<0>, C4<0>;
v0x26becd0_0 .net "A", 0 0, L_0x2730300;  1 drivers
v0x26bed70_0 .net "B", 0 0, L_0x27303a0;  1 drivers
v0x26bee30_0 .net "I", 7 0, L_0x272ffe0;  1 drivers
v0x26bef30_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26befd0_0 .net *"_s15", 0 0, L_0x272fe70;  1 drivers
v0x26bf0e0_0 .net *"_s19", 0 0, L_0x272fee0;  1 drivers
L_0x7f87e29679a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26bf1c0_0 .net/2s *"_s23", 0 0, L_0x7f87e29679a8;  1 drivers
v0x26bf2a0_0 .net "addORsub", 0 0, L_0x272f6c0;  1 drivers
v0x26bf340_0 .net "carryin", 0 0, L_0x272f270;  1 drivers
v0x26bf4a0_0 .net "carryout", 0 0, L_0x26be0e0;  1 drivers
v0x26bf570_0 .net "modB", 0 0, L_0x272e3d0;  1 drivers
v0x26bf610_0 .net "out", 0 0, L_0x272fd30;  1 drivers
L_0x272f520 .part v0x2648060_0, 0, 1;
LS_0x272ffe0_0_0 .concat8 [ 1 1 1 1], L_0x272fe70, L_0x272fee0, L_0x272fa60, L_0x7f87e29679a8;
LS_0x272ffe0_0_4 .concat8 [ 1 1 1 1], L_0x26be5c0, L_0x272fbe0, L_0x272fc50, L_0x272fcc0;
L_0x272ffe0 .concat8 [ 4 4 0 0], LS_0x272ffe0_0_0, LS_0x272ffe0_0_4;
S_0x26bbfd0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x272f5c0 .functor XOR 1, L_0x2730300, L_0x272e3d0, C4<0>, C4<0>;
L_0x272f6c0 .functor XOR 1, L_0x272f5c0, L_0x272f270, C4<0>, C4<0>;
L_0x272f780 .functor AND 1, L_0x272f5c0, L_0x272f270, C4<1>, C4<1>;
L_0x272f7f0 .functor AND 1, L_0x2730300, L_0x272e3d0, C4<1>, C4<1>;
L_0x26be0e0 .functor OR 1, L_0x272f780, L_0x272f7f0, C4<0>, C4<0>;
v0x26bc270_0 .net "A", 0 0, L_0x2730300;  alias, 1 drivers
v0x26bc350_0 .net "B", 0 0, L_0x272e3d0;  alias, 1 drivers
v0x26bc410_0 .net "carryin", 0 0, L_0x272f270;  alias, 1 drivers
v0x26bc4e0_0 .net "carryout", 0 0, L_0x26be0e0;  alias, 1 drivers
v0x26bc5a0_0 .net "out1", 0 0, L_0x272f5c0;  1 drivers
v0x26bc6b0_0 .net "out2", 0 0, L_0x272f780;  1 drivers
v0x26bc770_0 .net "out3", 0 0, L_0x272f7f0;  1 drivers
v0x26bc830_0 .net "sum", 0 0, L_0x272f6c0;  alias, 1 drivers
S_0x26bc990 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26be5c0 .functor AND 1, L_0x2730300, L_0x27303a0, C4<1>, C4<1>;
v0x26bcbd0_0 .net "A", 0 0, L_0x2730300;  alias, 1 drivers
v0x26bcc90_0 .net "B", 0 0, L_0x27303a0;  alias, 1 drivers
v0x26bcd30_0 .net "out", 0 0, L_0x26be5c0;  1 drivers
S_0x26bce80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26bd0d0_0 .net "I", 7 0, L_0x272ffe0;  alias, 1 drivers
v0x26bd1b0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26bd270_0 .net "out", 0 0, L_0x272fd30;  alias, 1 drivers
L_0x272fd30 .part/v L_0x272ffe0, v0x2648060_0, 1;
S_0x26bd3c0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272fbe0 .functor NAND 1, L_0x2730300, L_0x27303a0, C4<1>, C4<1>;
v0x26bd5e0_0 .net "A", 0 0, L_0x2730300;  alias, 1 drivers
v0x26bd6f0_0 .net "B", 0 0, L_0x27303a0;  alias, 1 drivers
v0x26bd7b0_0 .net "out", 0 0, L_0x272fbe0;  1 drivers
S_0x26bd8c0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272fc50 .functor NOR 1, L_0x2730300, L_0x27303a0, C4<0>, C4<0>;
v0x26bdb30_0 .net "A", 0 0, L_0x2730300;  alias, 1 drivers
v0x26bdbf0_0 .net "B", 0 0, L_0x27303a0;  alias, 1 drivers
v0x26bdd00_0 .net "out", 0 0, L_0x272fc50;  1 drivers
S_0x26bde00 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272fcc0 .functor OR 1, L_0x2730300, L_0x27303a0, C4<0>, C4<0>;
v0x26be020_0 .net "A", 0 0, L_0x2730300;  alias, 1 drivers
v0x26be170_0 .net "B", 0 0, L_0x27303a0;  alias, 1 drivers
v0x26be230_0 .net "out", 0 0, L_0x272fcc0;  1 drivers
S_0x26be330 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272e3d0 .functor XOR 1, L_0x27303a0, L_0x272f520, C4<0>, C4<0>;
v0x26be500_0 .net "A", 0 0, L_0x27303a0;  alias, 1 drivers
v0x26be650_0 .net "B", 0 0, L_0x272f520;  1 drivers
v0x26be710_0 .net "out", 0 0, L_0x272e3d0;  alias, 1 drivers
S_0x26be850 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26bbd60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272fa60 .functor XOR 1, L_0x2730300, L_0x27303a0, C4<0>, C4<0>;
v0x26bea20_0 .net "A", 0 0, L_0x2730300;  alias, 1 drivers
v0x26beae0_0 .net "B", 0 0, L_0x27303a0;  alias, 1 drivers
v0x26beba0_0 .net "out", 0 0, L_0x272fa60;  1 drivers
S_0x26bf730 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2730f90 .functor BUFZ 1, L_0x2730790, C4<0>, C4<0>, C4<0>;
L_0x2731000 .functor BUFZ 1, L_0x2730790, C4<0>, C4<0>, C4<0>;
v0x26c26a0_0 .net "A", 0 0, L_0x2731420;  1 drivers
v0x26c2740_0 .net "B", 0 0, L_0x2730440;  1 drivers
v0x26c2800_0 .net "I", 7 0, L_0x2731100;  1 drivers
v0x26c2900_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26c29a0_0 .net *"_s15", 0 0, L_0x2730f90;  1 drivers
v0x26c2ab0_0 .net *"_s19", 0 0, L_0x2731000;  1 drivers
L_0x7f87e29679f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26c2b90_0 .net/2s *"_s23", 0 0, L_0x7f87e29679f0;  1 drivers
v0x26c2c70_0 .net "addORsub", 0 0, L_0x2730790;  1 drivers
v0x26c2d10_0 .net "carryin", 0 0, L_0x271f260;  1 drivers
v0x26c2e70_0 .net "carryout", 0 0, L_0x26c1ab0;  1 drivers
v0x26c2f40_0 .net "modB", 0 0, L_0x272f3a0;  1 drivers
v0x26c2fe0_0 .net "out", 0 0, L_0x2730e50;  1 drivers
L_0x272f410 .part v0x2648060_0, 0, 1;
LS_0x2731100_0_0 .concat8 [ 1 1 1 1], L_0x2730f90, L_0x2731000, L_0x2730b80, L_0x7f87e29679f0;
LS_0x2731100_0_4 .concat8 [ 1 1 1 1], L_0x26c1f90, L_0x2730d00, L_0x2730d70, L_0x2730de0;
L_0x2731100 .concat8 [ 4 4 0 0], LS_0x2731100_0_0, LS_0x2731100_0_4;
S_0x26bf9a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x272f4b0 .functor XOR 1, L_0x2731420, L_0x272f3a0, C4<0>, C4<0>;
L_0x2730790 .functor XOR 1, L_0x272f4b0, L_0x271f260, C4<0>, C4<0>;
L_0x27308a0 .functor AND 1, L_0x272f4b0, L_0x271f260, C4<1>, C4<1>;
L_0x2730910 .functor AND 1, L_0x2731420, L_0x272f3a0, C4<1>, C4<1>;
L_0x26c1ab0 .functor OR 1, L_0x27308a0, L_0x2730910, C4<0>, C4<0>;
v0x26bfc40_0 .net "A", 0 0, L_0x2731420;  alias, 1 drivers
v0x26bfd20_0 .net "B", 0 0, L_0x272f3a0;  alias, 1 drivers
v0x26bfde0_0 .net "carryin", 0 0, L_0x271f260;  alias, 1 drivers
v0x26bfeb0_0 .net "carryout", 0 0, L_0x26c1ab0;  alias, 1 drivers
v0x26bff70_0 .net "out1", 0 0, L_0x272f4b0;  1 drivers
v0x26c0080_0 .net "out2", 0 0, L_0x27308a0;  1 drivers
v0x26c0140_0 .net "out3", 0 0, L_0x2730910;  1 drivers
v0x26c0200_0 .net "sum", 0 0, L_0x2730790;  alias, 1 drivers
S_0x26c0360 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26c1f90 .functor AND 1, L_0x2731420, L_0x2730440, C4<1>, C4<1>;
v0x26c05a0_0 .net "A", 0 0, L_0x2731420;  alias, 1 drivers
v0x26c0660_0 .net "B", 0 0, L_0x2730440;  alias, 1 drivers
v0x26c0700_0 .net "out", 0 0, L_0x26c1f90;  1 drivers
S_0x26c0850 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26c0aa0_0 .net "I", 7 0, L_0x2731100;  alias, 1 drivers
v0x26c0b80_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26c0c40_0 .net "out", 0 0, L_0x2730e50;  alias, 1 drivers
L_0x2730e50 .part/v L_0x2731100, v0x2648060_0, 1;
S_0x26c0d90 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2730d00 .functor NAND 1, L_0x2731420, L_0x2730440, C4<1>, C4<1>;
v0x26c0fb0_0 .net "A", 0 0, L_0x2731420;  alias, 1 drivers
v0x26c10c0_0 .net "B", 0 0, L_0x2730440;  alias, 1 drivers
v0x26c1180_0 .net "out", 0 0, L_0x2730d00;  1 drivers
S_0x26c1290 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2730d70 .functor NOR 1, L_0x2731420, L_0x2730440, C4<0>, C4<0>;
v0x26c1500_0 .net "A", 0 0, L_0x2731420;  alias, 1 drivers
v0x26c15c0_0 .net "B", 0 0, L_0x2730440;  alias, 1 drivers
v0x26c16d0_0 .net "out", 0 0, L_0x2730d70;  1 drivers
S_0x26c17d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2730de0 .functor OR 1, L_0x2731420, L_0x2730440, C4<0>, C4<0>;
v0x26c19f0_0 .net "A", 0 0, L_0x2731420;  alias, 1 drivers
v0x26c1b40_0 .net "B", 0 0, L_0x2730440;  alias, 1 drivers
v0x26c1c00_0 .net "out", 0 0, L_0x2730de0;  1 drivers
S_0x26c1d00 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x272f3a0 .functor XOR 1, L_0x2730440, L_0x272f410, C4<0>, C4<0>;
v0x26c1ed0_0 .net "A", 0 0, L_0x2730440;  alias, 1 drivers
v0x26c2020_0 .net "B", 0 0, L_0x272f410;  1 drivers
v0x26c20e0_0 .net "out", 0 0, L_0x272f3a0;  alias, 1 drivers
S_0x26c2220 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26bf730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2730b80 .functor XOR 1, L_0x2731420, L_0x2730440, C4<0>, C4<0>;
v0x26c23f0_0 .net "A", 0 0, L_0x2731420;  alias, 1 drivers
v0x26c24b0_0 .net "B", 0 0, L_0x2730440;  alias, 1 drivers
v0x26c2570_0 .net "out", 0 0, L_0x2730b80;  1 drivers
S_0x26c3100 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x27136b0 .functor BUFZ 1, L_0x2712e10, C4<0>, C4<0>, C4<0>;
L_0x2713740 .functor BUFZ 1, L_0x2712e10, C4<0>, C4<0>, C4<0>;
v0x26c6070_0 .net "A", 0 0, L_0x2713b80;  1 drivers
v0x26c6110_0 .net "B", 0 0, L_0x2713c20;  1 drivers
v0x26c61d0_0 .net "I", 7 0, L_0x2713860;  1 drivers
v0x26c62d0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26c6370_0 .net *"_s15", 0 0, L_0x27136b0;  1 drivers
v0x26c6480_0 .net *"_s19", 0 0, L_0x2713740;  1 drivers
L_0x7f87e29672a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26c6560_0 .net/2s *"_s23", 0 0, L_0x7f87e29672a0;  1 drivers
v0x26c6640_0 .net "addORsub", 0 0, L_0x2712e10;  1 drivers
v0x26c66e0_0 .net "carryin", 0 0, L_0x2713cc0;  1 drivers
v0x26c6840_0 .net "carryout", 0 0, L_0x26c5480;  1 drivers
v0x26c6910_0 .net "modB", 0 0, L_0x2712b90;  1 drivers
v0x26c69b0_0 .net "out", 0 0, L_0x2713550;  1 drivers
L_0x2712c00 .part v0x2648060_0, 0, 1;
LS_0x2713860_0_0 .concat8 [ 1 1 1 1], L_0x27136b0, L_0x2713740, L_0x2713240, L_0x7f87e29672a0;
LS_0x2713860_0_4 .concat8 [ 1 1 1 1], L_0x26c5960, L_0x27133c0, L_0x2713430, L_0x27134c0;
L_0x2713860 .concat8 [ 4 4 0 0], LS_0x2713860_0_0, LS_0x2713860_0_4;
S_0x26c3370 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2712cf0 .functor XOR 1, L_0x2713b80, L_0x2712b90, C4<0>, C4<0>;
L_0x2712e10 .functor XOR 1, L_0x2712cf0, L_0x2713cc0, C4<0>, C4<0>;
L_0x2712f40 .functor AND 1, L_0x2712cf0, L_0x2713cc0, C4<1>, C4<1>;
L_0x2712fd0 .functor AND 1, L_0x2713b80, L_0x2712b90, C4<1>, C4<1>;
L_0x26c5480 .functor OR 1, L_0x2712f40, L_0x2712fd0, C4<0>, C4<0>;
v0x26c3610_0 .net "A", 0 0, L_0x2713b80;  alias, 1 drivers
v0x26c36f0_0 .net "B", 0 0, L_0x2712b90;  alias, 1 drivers
v0x26c37b0_0 .net "carryin", 0 0, L_0x2713cc0;  alias, 1 drivers
v0x26c3880_0 .net "carryout", 0 0, L_0x26c5480;  alias, 1 drivers
v0x26c3940_0 .net "out1", 0 0, L_0x2712cf0;  1 drivers
v0x26c3a50_0 .net "out2", 0 0, L_0x2712f40;  1 drivers
v0x26c3b10_0 .net "out3", 0 0, L_0x2712fd0;  1 drivers
v0x26c3bd0_0 .net "sum", 0 0, L_0x2712e10;  alias, 1 drivers
S_0x26c3d30 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26c5960 .functor AND 1, L_0x2713b80, L_0x2713c20, C4<1>, C4<1>;
v0x26c3f70_0 .net "A", 0 0, L_0x2713b80;  alias, 1 drivers
v0x26c4030_0 .net "B", 0 0, L_0x2713c20;  alias, 1 drivers
v0x26c40d0_0 .net "out", 0 0, L_0x26c5960;  1 drivers
S_0x26c4220 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26c4470_0 .net "I", 7 0, L_0x2713860;  alias, 1 drivers
v0x26c4550_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26c4610_0 .net "out", 0 0, L_0x2713550;  alias, 1 drivers
L_0x2713550 .part/v L_0x2713860, v0x2648060_0, 1;
S_0x26c4760 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27133c0 .functor NAND 1, L_0x2713b80, L_0x2713c20, C4<1>, C4<1>;
v0x26c4980_0 .net "A", 0 0, L_0x2713b80;  alias, 1 drivers
v0x26c4a90_0 .net "B", 0 0, L_0x2713c20;  alias, 1 drivers
v0x26c4b50_0 .net "out", 0 0, L_0x27133c0;  1 drivers
S_0x26c4c60 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2713430 .functor NOR 1, L_0x2713b80, L_0x2713c20, C4<0>, C4<0>;
v0x26c4ed0_0 .net "A", 0 0, L_0x2713b80;  alias, 1 drivers
v0x26c4f90_0 .net "B", 0 0, L_0x2713c20;  alias, 1 drivers
v0x26c50a0_0 .net "out", 0 0, L_0x2713430;  1 drivers
S_0x26c51a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27134c0 .functor OR 1, L_0x2713b80, L_0x2713c20, C4<0>, C4<0>;
v0x26c53c0_0 .net "A", 0 0, L_0x2713b80;  alias, 1 drivers
v0x26c5510_0 .net "B", 0 0, L_0x2713c20;  alias, 1 drivers
v0x26c55d0_0 .net "out", 0 0, L_0x27134c0;  1 drivers
S_0x26c56d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2712b90 .functor XOR 1, L_0x2713c20, L_0x2712c00, C4<0>, C4<0>;
v0x26c58a0_0 .net "A", 0 0, L_0x2713c20;  alias, 1 drivers
v0x26c59f0_0 .net "B", 0 0, L_0x2712c00;  1 drivers
v0x26c5ab0_0 .net "out", 0 0, L_0x2712b90;  alias, 1 drivers
S_0x26c5bf0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26c3100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2713240 .functor XOR 1, L_0x2713b80, L_0x2713c20, C4<0>, C4<0>;
v0x26c5dc0_0 .net "A", 0 0, L_0x2713b80;  alias, 1 drivers
v0x26c5e80_0 .net "B", 0 0, L_0x2713c20;  alias, 1 drivers
v0x26c5f40_0 .net "out", 0 0, L_0x2713240;  1 drivers
S_0x26c6ad0 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x26e40f0 .functor BUFZ 1, L_0x2730610, C4<0>, C4<0>, C4<0>;
L_0x26e4180 .functor BUFZ 1, L_0x2730610, C4<0>, C4<0>, C4<0>;
v0x26c9a40_0 .net "A", 0 0, L_0x27331d0;  1 drivers
v0x26c9ae0_0 .net "B", 0 0, L_0x2731ba0;  1 drivers
v0x26c9ba0_0 .net "I", 7 0, L_0x26e42a0;  1 drivers
v0x26c9ca0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26c9d40_0 .net *"_s15", 0 0, L_0x26e40f0;  1 drivers
v0x26c9e50_0 .net *"_s19", 0 0, L_0x26e4180;  1 drivers
L_0x7f87e2967a38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26c9f30_0 .net/2s *"_s23", 0 0, L_0x7f87e2967a38;  1 drivers
v0x26ca010_0 .net "addORsub", 0 0, L_0x2730610;  1 drivers
v0x26ca0b0_0 .net "carryin", 0 0, L_0x2731c40;  1 drivers
v0x26ca210_0 .net "carryout", 0 0, L_0x26c8e50;  1 drivers
v0x26ca2e0_0 .net "modB", 0 0, L_0x271f390;  1 drivers
v0x26ca380_0 .net "out", 0 0, L_0x26e3f90;  1 drivers
L_0x27304e0 .part v0x2648060_0, 0, 1;
LS_0x26e42a0_0_0 .concat8 [ 1 1 1 1], L_0x26e40f0, L_0x26e4180, L_0x26e3ca0, L_0x7f87e2967a38;
LS_0x26e42a0_0_4 .concat8 [ 1 1 1 1], L_0x26c9330, L_0x26e3e20, L_0x26e3e90, L_0x26e3f00;
L_0x26e42a0 .concat8 [ 4 4 0 0], LS_0x26e42a0_0_0, LS_0x26e42a0_0_4;
S_0x26c6d40 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x271f400 .functor XOR 1, L_0x27331d0, L_0x271f390, C4<0>, C4<0>;
L_0x2730610 .functor XOR 1, L_0x271f400, L_0x2731c40, C4<0>, C4<0>;
L_0x27314c0 .functor AND 1, L_0x271f400, L_0x2731c40, C4<1>, C4<1>;
L_0x2731550 .functor AND 1, L_0x27331d0, L_0x271f390, C4<1>, C4<1>;
L_0x26c8e50 .functor OR 1, L_0x27314c0, L_0x2731550, C4<0>, C4<0>;
v0x26c6fe0_0 .net "A", 0 0, L_0x27331d0;  alias, 1 drivers
v0x26c70c0_0 .net "B", 0 0, L_0x271f390;  alias, 1 drivers
v0x26c7180_0 .net "carryin", 0 0, L_0x2731c40;  alias, 1 drivers
v0x26c7250_0 .net "carryout", 0 0, L_0x26c8e50;  alias, 1 drivers
v0x26c7310_0 .net "out1", 0 0, L_0x271f400;  1 drivers
v0x26c7420_0 .net "out2", 0 0, L_0x27314c0;  1 drivers
v0x26c74e0_0 .net "out3", 0 0, L_0x2731550;  1 drivers
v0x26c75a0_0 .net "sum", 0 0, L_0x2730610;  alias, 1 drivers
S_0x26c7700 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26c9330 .functor AND 1, L_0x27331d0, L_0x2731ba0, C4<1>, C4<1>;
v0x26c7940_0 .net "A", 0 0, L_0x27331d0;  alias, 1 drivers
v0x26c7a00_0 .net "B", 0 0, L_0x2731ba0;  alias, 1 drivers
v0x26c7aa0_0 .net "out", 0 0, L_0x26c9330;  1 drivers
S_0x26c7bf0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26c7e40_0 .net "I", 7 0, L_0x26e42a0;  alias, 1 drivers
v0x26c7f20_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26c7fe0_0 .net "out", 0 0, L_0x26e3f90;  alias, 1 drivers
L_0x26e3f90 .part/v L_0x26e42a0, v0x2648060_0, 1;
S_0x26c8130 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26e3e20 .functor NAND 1, L_0x27331d0, L_0x2731ba0, C4<1>, C4<1>;
v0x26c8350_0 .net "A", 0 0, L_0x27331d0;  alias, 1 drivers
v0x26c8460_0 .net "B", 0 0, L_0x2731ba0;  alias, 1 drivers
v0x26c8520_0 .net "out", 0 0, L_0x26e3e20;  1 drivers
S_0x26c8630 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26e3e90 .functor NOR 1, L_0x27331d0, L_0x2731ba0, C4<0>, C4<0>;
v0x26c88a0_0 .net "A", 0 0, L_0x27331d0;  alias, 1 drivers
v0x26c8960_0 .net "B", 0 0, L_0x2731ba0;  alias, 1 drivers
v0x26c8a70_0 .net "out", 0 0, L_0x26e3e90;  1 drivers
S_0x26c8b70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26e3f00 .functor OR 1, L_0x27331d0, L_0x2731ba0, C4<0>, C4<0>;
v0x26c8d90_0 .net "A", 0 0, L_0x27331d0;  alias, 1 drivers
v0x26c8ee0_0 .net "B", 0 0, L_0x2731ba0;  alias, 1 drivers
v0x26c8fa0_0 .net "out", 0 0, L_0x26e3f00;  1 drivers
S_0x26c90a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x271f390 .functor XOR 1, L_0x2731ba0, L_0x27304e0, C4<0>, C4<0>;
v0x26c9270_0 .net "A", 0 0, L_0x2731ba0;  alias, 1 drivers
v0x26c93c0_0 .net "B", 0 0, L_0x27304e0;  1 drivers
v0x26c9480_0 .net "out", 0 0, L_0x271f390;  alias, 1 drivers
S_0x26c95c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26c6ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26e3ca0 .functor XOR 1, L_0x27331d0, L_0x2731ba0, C4<0>, C4<0>;
v0x26c9790_0 .net "A", 0 0, L_0x27331d0;  alias, 1 drivers
v0x26c9850_0 .net "B", 0 0, L_0x2731ba0;  alias, 1 drivers
v0x26c9910_0 .net "out", 0 0, L_0x26e3ca0;  1 drivers
S_0x26ca4a0 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x2731d70 .functor BUFZ 1, L_0x2733810, C4<0>, C4<0>, C4<0>;
L_0x2731de0 .functor BUFZ 1, L_0x2733810, C4<0>, C4<0>, C4<0>;
v0x26cde40_0 .net "A", 0 0, L_0x2734560;  1 drivers
v0x26cdee0_0 .net "B", 0 0, L_0x2733270;  1 drivers
v0x26cdfa0_0 .net "I", 7 0, L_0x2734040;  1 drivers
v0x26ce0a0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26ce140_0 .net *"_s3", 0 0, L_0x2731d70;  1 drivers
v0x26ce250_0 .net *"_s7", 0 0, L_0x2731de0;  1 drivers
v0x26ce330_0 .net "as", 0 0, L_0x2733810;  1 drivers
v0x26ce420_0 .net "carryin", 0 0, L_0x2733310;  1 drivers
v0x26ce510_0 .net "carryout", 0 0, L_0x26cc830;  alias, 1 drivers
v0x26ce640_0 .net "modB", 0 0, L_0x2733600;  1 drivers
v0x26ce730_0 .net "out", 0 0, L_0x2733e20;  1 drivers
v0x26ce7d0_0 .net "overflow", 0 0, L_0x2733f60;  alias, 1 drivers
L_0x2733670 .part v0x2648060_0, 0, 1;
LS_0x2734040_0_0 .concat8 [ 1 1 1 1], L_0x2731d70, L_0x2731de0, L_0x2733b50, L_0x2733fd0;
LS_0x2734040_0_4 .concat8 [ 1 1 1 1], L_0x26ccd10, L_0x2733cd0, L_0x2733d40, L_0x2733db0;
L_0x2734040 .concat8 [ 4 4 0 0], LS_0x2734040_0_0, LS_0x2734040_0_4;
S_0x26ca720 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2733710 .functor XOR 1, L_0x2734560, L_0x2733600, C4<0>, C4<0>;
L_0x2733810 .functor XOR 1, L_0x2733710, L_0x2733310, C4<0>, C4<0>;
L_0x2733880 .functor AND 1, L_0x2733710, L_0x2733310, C4<1>, C4<1>;
L_0x2733980 .functor AND 1, L_0x2734560, L_0x2733600, C4<1>, C4<1>;
L_0x26cc830 .functor OR 1, L_0x2733880, L_0x2733980, C4<0>, C4<0>;
v0x26ca9c0_0 .net "A", 0 0, L_0x2734560;  alias, 1 drivers
v0x26caaa0_0 .net "B", 0 0, L_0x2733600;  alias, 1 drivers
v0x26cab60_0 .net "carryin", 0 0, L_0x2733310;  alias, 1 drivers
v0x26cac30_0 .net "carryout", 0 0, L_0x26cc830;  alias, 1 drivers
v0x26cacf0_0 .net "out1", 0 0, L_0x2733710;  1 drivers
v0x26cae00_0 .net "out2", 0 0, L_0x2733880;  1 drivers
v0x26caec0_0 .net "out3", 0 0, L_0x2733980;  1 drivers
v0x26caf80_0 .net "sum", 0 0, L_0x2733810;  alias, 1 drivers
S_0x26cb0e0 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26ccd10 .functor AND 1, L_0x2734560, L_0x2733270, C4<1>, C4<1>;
v0x26cb320_0 .net "A", 0 0, L_0x2734560;  alias, 1 drivers
v0x26cb3e0_0 .net "B", 0 0, L_0x2733270;  alias, 1 drivers
v0x26cb480_0 .net "out", 0 0, L_0x26ccd10;  1 drivers
S_0x26cb5d0 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26cb820_0 .net "I", 7 0, L_0x2734040;  alias, 1 drivers
v0x26cb900_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26cb9c0_0 .net "out", 0 0, L_0x2733e20;  alias, 1 drivers
L_0x2733e20 .part/v L_0x2734040, v0x2648060_0, 1;
S_0x26cbb10 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733cd0 .functor NAND 1, L_0x2734560, L_0x2733270, C4<1>, C4<1>;
v0x26cbd30_0 .net "A", 0 0, L_0x2734560;  alias, 1 drivers
v0x26cbe40_0 .net "B", 0 0, L_0x2733270;  alias, 1 drivers
v0x26cbf00_0 .net "out", 0 0, L_0x2733cd0;  1 drivers
S_0x26cc010 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733d40 .functor NOR 1, L_0x2734560, L_0x2733270, C4<0>, C4<0>;
v0x26cc280_0 .net "A", 0 0, L_0x2734560;  alias, 1 drivers
v0x26cc340_0 .net "B", 0 0, L_0x2733270;  alias, 1 drivers
v0x26cc450_0 .net "out", 0 0, L_0x2733d40;  1 drivers
S_0x26cc550 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733db0 .functor OR 1, L_0x2734560, L_0x2733270, C4<0>, C4<0>;
v0x26cc770_0 .net "A", 0 0, L_0x2734560;  alias, 1 drivers
v0x26cc8c0_0 .net "B", 0 0, L_0x2733270;  alias, 1 drivers
v0x26cc980_0 .net "out", 0 0, L_0x2733db0;  1 drivers
S_0x26cca80 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733600 .functor XOR 1, L_0x2733270, L_0x2733670, C4<0>, C4<0>;
v0x26ccc50_0 .net "A", 0 0, L_0x2733270;  alias, 1 drivers
v0x26ccda0_0 .net "B", 0 0, L_0x2733670;  1 drivers
v0x26cce60_0 .net "out", 0 0, L_0x2733600;  alias, 1 drivers
S_0x26ccfa0 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733b50 .functor XOR 1, L_0x2734560, L_0x2733270, C4<0>, C4<0>;
v0x26cd170_0 .net "A", 0 0, L_0x2734560;  alias, 1 drivers
v0x26cd230_0 .net "B", 0 0, L_0x2733270;  alias, 1 drivers
v0x26cd2f0_0 .net "out", 0 0, L_0x2733b50;  1 drivers
S_0x26cd420 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733f60 .functor XOR 1, L_0x2733310, L_0x26cc830, C4<0>, C4<0>;
v0x26cd680_0 .net "A", 0 0, L_0x2733310;  alias, 1 drivers
v0x26cd770_0 .net "B", 0 0, L_0x26cc830;  alias, 1 drivers
v0x26cd840_0 .net "out", 0 0, L_0x2733f60;  alias, 1 drivers
S_0x26cd950 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0x26ca4a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2733fd0 .functor XOR 1, L_0x2733f60, L_0x2733810, C4<0>, C4<0>;
v0x26cdb70_0 .net "A", 0 0, L_0x2733f60;  alias, 1 drivers
v0x26cdc60_0 .net "B", 0 0, L_0x2733810;  alias, 1 drivers
v0x26cdd30_0 .net "out", 0 0, L_0x2733fd0;  1 drivers
S_0x26ce9c0 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x27148e0 .functor BUFZ 1, L_0x2714090, C4<0>, C4<0>, C4<0>;
L_0x2714970 .functor BUFZ 1, L_0x2714090, C4<0>, C4<0>, C4<0>;
v0x26d1840_0 .net "A", 0 0, L_0x2714db0;  1 drivers
v0x26d18e0_0 .net "B", 0 0, L_0x2714e50;  1 drivers
v0x26d19a0_0 .net "I", 7 0, L_0x2714a90;  1 drivers
v0x26d1aa0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26d1b40_0 .net *"_s15", 0 0, L_0x27148e0;  1 drivers
v0x26d1c50_0 .net *"_s19", 0 0, L_0x2714970;  1 drivers
L_0x7f87e29672e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26d1d30_0 .net/2s *"_s23", 0 0, L_0x7f87e29672e8;  1 drivers
v0x26d1e10_0 .net "addORsub", 0 0, L_0x2714090;  1 drivers
v0x26d1eb0_0 .net "carryin", 0 0, L_0x2714ef0;  1 drivers
v0x26d2010_0 .net "carryout", 0 0, L_0x26d0c50;  1 drivers
v0x26d20e0_0 .net "modB", 0 0, L_0x2713e60;  1 drivers
v0x26d2180_0 .net "out", 0 0, L_0x2714780;  1 drivers
L_0x2713ed0 .part v0x2648060_0, 0, 1;
LS_0x2714a90_0_0 .concat8 [ 1 1 1 1], L_0x27148e0, L_0x2714970, L_0x2714470, L_0x7f87e29672e8;
LS_0x2714a90_0_4 .concat8 [ 1 1 1 1], L_0x26d1130, L_0x27145f0, L_0x2714660, L_0x27146f0;
L_0x2714a90 .concat8 [ 4 4 0 0], LS_0x2714a90_0_0, LS_0x2714a90_0_4;
S_0x26cec30 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2713f70 .functor XOR 1, L_0x2714db0, L_0x2713e60, C4<0>, C4<0>;
L_0x2714090 .functor XOR 1, L_0x2713f70, L_0x2714ef0, C4<0>, C4<0>;
L_0x2714170 .functor AND 1, L_0x2713f70, L_0x2714ef0, C4<1>, C4<1>;
L_0x2714200 .functor AND 1, L_0x2714db0, L_0x2713e60, C4<1>, C4<1>;
L_0x26d0c50 .functor OR 1, L_0x2714170, L_0x2714200, C4<0>, C4<0>;
v0x26ceea0_0 .net "A", 0 0, L_0x2714db0;  alias, 1 drivers
v0x26cef80_0 .net "B", 0 0, L_0x2713e60;  alias, 1 drivers
v0x26cf040_0 .net "carryin", 0 0, L_0x2714ef0;  alias, 1 drivers
v0x26cf0e0_0 .net "carryout", 0 0, L_0x26d0c50;  alias, 1 drivers
v0x26cf1a0_0 .net "out1", 0 0, L_0x2713f70;  1 drivers
v0x26cf2b0_0 .net "out2", 0 0, L_0x2714170;  1 drivers
v0x26cf370_0 .net "out3", 0 0, L_0x2714200;  1 drivers
v0x26cf430_0 .net "sum", 0 0, L_0x2714090;  alias, 1 drivers
S_0x26cf590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26d1130 .functor AND 1, L_0x2714db0, L_0x2714e50, C4<1>, C4<1>;
v0x26cf7d0_0 .net "A", 0 0, L_0x2714db0;  alias, 1 drivers
v0x26cf890_0 .net "B", 0 0, L_0x2714e50;  alias, 1 drivers
v0x26cf930_0 .net "out", 0 0, L_0x26d1130;  1 drivers
S_0x26cfa50 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26cfc70_0 .net "I", 7 0, L_0x2714a90;  alias, 1 drivers
v0x26cfd50_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26cfe10_0 .net "out", 0 0, L_0x2714780;  alias, 1 drivers
L_0x2714780 .part/v L_0x2714a90, v0x2648060_0, 1;
S_0x26cff30 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27145f0 .functor NAND 1, L_0x2714db0, L_0x2714e50, C4<1>, C4<1>;
v0x26d0150_0 .net "A", 0 0, L_0x2714db0;  alias, 1 drivers
v0x26d0260_0 .net "B", 0 0, L_0x2714e50;  alias, 1 drivers
v0x26d0320_0 .net "out", 0 0, L_0x27145f0;  1 drivers
S_0x26d0430 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2714660 .functor NOR 1, L_0x2714db0, L_0x2714e50, C4<0>, C4<0>;
v0x26d06a0_0 .net "A", 0 0, L_0x2714db0;  alias, 1 drivers
v0x26d0760_0 .net "B", 0 0, L_0x2714e50;  alias, 1 drivers
v0x26d0870_0 .net "out", 0 0, L_0x2714660;  1 drivers
S_0x26d0970 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27146f0 .functor OR 1, L_0x2714db0, L_0x2714e50, C4<0>, C4<0>;
v0x26d0b90_0 .net "A", 0 0, L_0x2714db0;  alias, 1 drivers
v0x26d0ce0_0 .net "B", 0 0, L_0x2714e50;  alias, 1 drivers
v0x26d0da0_0 .net "out", 0 0, L_0x27146f0;  1 drivers
S_0x26d0ea0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2713e60 .functor XOR 1, L_0x2714e50, L_0x2713ed0, C4<0>, C4<0>;
v0x26d1070_0 .net "A", 0 0, L_0x2714e50;  alias, 1 drivers
v0x26d11c0_0 .net "B", 0 0, L_0x2713ed0;  1 drivers
v0x26d1280_0 .net "out", 0 0, L_0x2713e60;  alias, 1 drivers
S_0x26d13c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26ce9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2714470 .functor XOR 1, L_0x2714db0, L_0x2714e50, C4<0>, C4<0>;
v0x26d1590_0 .net "A", 0 0, L_0x2714db0;  alias, 1 drivers
v0x26d1650_0 .net "B", 0 0, L_0x2714e50;  alias, 1 drivers
v0x26d1710_0 .net "out", 0 0, L_0x2714470;  1 drivers
S_0x26d22a0 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2715ac0 .functor BUFZ 1, L_0x2715270, C4<0>, C4<0>, C4<0>;
L_0x2715b50 .functor BUFZ 1, L_0x2715270, C4<0>, C4<0>, C4<0>;
v0x26d5210_0 .net "A", 0 0, L_0x2715f90;  1 drivers
v0x26d52b0_0 .net "B", 0 0, L_0x27160c0;  1 drivers
v0x26d5370_0 .net "I", 7 0, L_0x2715c70;  1 drivers
v0x26d5470_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26d5510_0 .net *"_s15", 0 0, L_0x2715ac0;  1 drivers
v0x26d5620_0 .net *"_s19", 0 0, L_0x2715b50;  1 drivers
L_0x7f87e2967330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26d5700_0 .net/2s *"_s23", 0 0, L_0x7f87e2967330;  1 drivers
v0x26d57e0_0 .net "addORsub", 0 0, L_0x2715270;  1 drivers
v0x26d5880_0 .net "carryin", 0 0, L_0x2716270;  1 drivers
v0x26d59e0_0 .net "carryout", 0 0, L_0x26d4620;  1 drivers
v0x26d5ab0_0 .net "modB", 0 0, L_0x2713df0;  1 drivers
v0x26d5b50_0 .net "out", 0 0, L_0x2715960;  1 drivers
L_0x27150b0 .part v0x2648060_0, 0, 1;
LS_0x2715c70_0_0 .concat8 [ 1 1 1 1], L_0x2715ac0, L_0x2715b50, L_0x2715650, L_0x7f87e2967330;
LS_0x2715c70_0_4 .concat8 [ 1 1 1 1], L_0x26d4b00, L_0x27157d0, L_0x2715840, L_0x27158d0;
L_0x2715c70 .concat8 [ 4 4 0 0], LS_0x2715c70_0_0, LS_0x2715c70_0_4;
S_0x26d2510 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2715150 .functor XOR 1, L_0x2715f90, L_0x2713df0, C4<0>, C4<0>;
L_0x2715270 .functor XOR 1, L_0x2715150, L_0x2716270, C4<0>, C4<0>;
L_0x2715350 .functor AND 1, L_0x2715150, L_0x2716270, C4<1>, C4<1>;
L_0x27153e0 .functor AND 1, L_0x2715f90, L_0x2713df0, C4<1>, C4<1>;
L_0x26d4620 .functor OR 1, L_0x2715350, L_0x27153e0, C4<0>, C4<0>;
v0x26d27b0_0 .net "A", 0 0, L_0x2715f90;  alias, 1 drivers
v0x26d2890_0 .net "B", 0 0, L_0x2713df0;  alias, 1 drivers
v0x26d2950_0 .net "carryin", 0 0, L_0x2716270;  alias, 1 drivers
v0x26d2a20_0 .net "carryout", 0 0, L_0x26d4620;  alias, 1 drivers
v0x26d2ae0_0 .net "out1", 0 0, L_0x2715150;  1 drivers
v0x26d2bf0_0 .net "out2", 0 0, L_0x2715350;  1 drivers
v0x26d2cb0_0 .net "out3", 0 0, L_0x27153e0;  1 drivers
v0x26d2d70_0 .net "sum", 0 0, L_0x2715270;  alias, 1 drivers
S_0x26d2ed0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26d4b00 .functor AND 1, L_0x2715f90, L_0x27160c0, C4<1>, C4<1>;
v0x26d3110_0 .net "A", 0 0, L_0x2715f90;  alias, 1 drivers
v0x26d31d0_0 .net "B", 0 0, L_0x27160c0;  alias, 1 drivers
v0x26d3270_0 .net "out", 0 0, L_0x26d4b00;  1 drivers
S_0x26d33c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26d3610_0 .net "I", 7 0, L_0x2715c70;  alias, 1 drivers
v0x26d36f0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26d37b0_0 .net "out", 0 0, L_0x2715960;  alias, 1 drivers
L_0x2715960 .part/v L_0x2715c70, v0x2648060_0, 1;
S_0x26d3900 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27157d0 .functor NAND 1, L_0x2715f90, L_0x27160c0, C4<1>, C4<1>;
v0x26d3b20_0 .net "A", 0 0, L_0x2715f90;  alias, 1 drivers
v0x26d3c30_0 .net "B", 0 0, L_0x27160c0;  alias, 1 drivers
v0x26d3cf0_0 .net "out", 0 0, L_0x27157d0;  1 drivers
S_0x26d3e00 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2715840 .functor NOR 1, L_0x2715f90, L_0x27160c0, C4<0>, C4<0>;
v0x26d4070_0 .net "A", 0 0, L_0x2715f90;  alias, 1 drivers
v0x26d4130_0 .net "B", 0 0, L_0x27160c0;  alias, 1 drivers
v0x26d4240_0 .net "out", 0 0, L_0x2715840;  1 drivers
S_0x26d4340 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27158d0 .functor OR 1, L_0x2715f90, L_0x27160c0, C4<0>, C4<0>;
v0x26d4560_0 .net "A", 0 0, L_0x2715f90;  alias, 1 drivers
v0x26d46b0_0 .net "B", 0 0, L_0x27160c0;  alias, 1 drivers
v0x26d4770_0 .net "out", 0 0, L_0x27158d0;  1 drivers
S_0x26d4870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2713df0 .functor XOR 1, L_0x27160c0, L_0x27150b0, C4<0>, C4<0>;
v0x26d4a40_0 .net "A", 0 0, L_0x27160c0;  alias, 1 drivers
v0x26d4b90_0 .net "B", 0 0, L_0x27150b0;  1 drivers
v0x26d4c50_0 .net "out", 0 0, L_0x2713df0;  alias, 1 drivers
S_0x26d4d90 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26d22a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2715650 .functor XOR 1, L_0x2715f90, L_0x27160c0, C4<0>, C4<0>;
v0x26d4f60_0 .net "A", 0 0, L_0x2715f90;  alias, 1 drivers
v0x26d5020_0 .net "B", 0 0, L_0x27160c0;  alias, 1 drivers
v0x26d50e0_0 .net "out", 0 0, L_0x2715650;  1 drivers
S_0x26d5c70 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2716c60 .functor BUFZ 1, L_0x2716550, C4<0>, C4<0>, C4<0>;
L_0x2716cd0 .functor BUFZ 1, L_0x2716550, C4<0>, C4<0>, C4<0>;
v0x26d8be0_0 .net "A", 0 0, L_0x27170f0;  1 drivers
v0x26d8c80_0 .net "B", 0 0, L_0x2717190;  1 drivers
v0x26d8d40_0 .net "I", 7 0, L_0x2716dd0;  1 drivers
v0x26d8e40_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26d8ee0_0 .net *"_s15", 0 0, L_0x2716c60;  1 drivers
v0x26d8ff0_0 .net *"_s19", 0 0, L_0x2716cd0;  1 drivers
L_0x7f87e2967378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26d90d0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967378;  1 drivers
v0x26d91b0_0 .net "addORsub", 0 0, L_0x2716550;  1 drivers
v0x26d9250_0 .net "carryin", 0 0, L_0x2716310;  1 drivers
v0x26d93b0_0 .net "carryout", 0 0, L_0x26d7ff0;  1 drivers
v0x26d9480_0 .net "modB", 0 0, L_0x2716030;  1 drivers
v0x26d9520_0 .net "out", 0 0, L_0x2716b20;  1 drivers
L_0x27163b0 .part v0x2648060_0, 0, 1;
LS_0x2716dd0_0_0 .concat8 [ 1 1 1 1], L_0x2716c60, L_0x2716cd0, L_0x2716850, L_0x7f87e2967378;
LS_0x2716dd0_0_4 .concat8 [ 1 1 1 1], L_0x26d84d0, L_0x27169d0, L_0x2716a40, L_0x2716ab0;
L_0x2716dd0 .concat8 [ 4 4 0 0], LS_0x2716dd0_0_0, LS_0x2716dd0_0_4;
S_0x26d5ee0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2716450 .functor XOR 1, L_0x27170f0, L_0x2716030, C4<0>, C4<0>;
L_0x2716550 .functor XOR 1, L_0x2716450, L_0x2716310, C4<0>, C4<0>;
L_0x27165c0 .functor AND 1, L_0x2716450, L_0x2716310, C4<1>, C4<1>;
L_0x2716630 .functor AND 1, L_0x27170f0, L_0x2716030, C4<1>, C4<1>;
L_0x26d7ff0 .functor OR 1, L_0x27165c0, L_0x2716630, C4<0>, C4<0>;
v0x26d6180_0 .net "A", 0 0, L_0x27170f0;  alias, 1 drivers
v0x26d6260_0 .net "B", 0 0, L_0x2716030;  alias, 1 drivers
v0x26d6320_0 .net "carryin", 0 0, L_0x2716310;  alias, 1 drivers
v0x26d63f0_0 .net "carryout", 0 0, L_0x26d7ff0;  alias, 1 drivers
v0x26d64b0_0 .net "out1", 0 0, L_0x2716450;  1 drivers
v0x26d65c0_0 .net "out2", 0 0, L_0x27165c0;  1 drivers
v0x26d6680_0 .net "out3", 0 0, L_0x2716630;  1 drivers
v0x26d6740_0 .net "sum", 0 0, L_0x2716550;  alias, 1 drivers
S_0x26d68a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26d84d0 .functor AND 1, L_0x27170f0, L_0x2717190, C4<1>, C4<1>;
v0x26d6ae0_0 .net "A", 0 0, L_0x27170f0;  alias, 1 drivers
v0x26d6ba0_0 .net "B", 0 0, L_0x2717190;  alias, 1 drivers
v0x26d6c40_0 .net "out", 0 0, L_0x26d84d0;  1 drivers
S_0x26d6d90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26d6fe0_0 .net "I", 7 0, L_0x2716dd0;  alias, 1 drivers
v0x26d70c0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26d7180_0 .net "out", 0 0, L_0x2716b20;  alias, 1 drivers
L_0x2716b20 .part/v L_0x2716dd0, v0x2648060_0, 1;
S_0x26d72d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27169d0 .functor NAND 1, L_0x27170f0, L_0x2717190, C4<1>, C4<1>;
v0x26d74f0_0 .net "A", 0 0, L_0x27170f0;  alias, 1 drivers
v0x26d7600_0 .net "B", 0 0, L_0x2717190;  alias, 1 drivers
v0x26d76c0_0 .net "out", 0 0, L_0x27169d0;  1 drivers
S_0x26d77d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2716a40 .functor NOR 1, L_0x27170f0, L_0x2717190, C4<0>, C4<0>;
v0x26d7a40_0 .net "A", 0 0, L_0x27170f0;  alias, 1 drivers
v0x26d7b00_0 .net "B", 0 0, L_0x2717190;  alias, 1 drivers
v0x26d7c10_0 .net "out", 0 0, L_0x2716a40;  1 drivers
S_0x26d7d10 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2716ab0 .functor OR 1, L_0x27170f0, L_0x2717190, C4<0>, C4<0>;
v0x26d7f30_0 .net "A", 0 0, L_0x27170f0;  alias, 1 drivers
v0x26d8080_0 .net "B", 0 0, L_0x2717190;  alias, 1 drivers
v0x26d8140_0 .net "out", 0 0, L_0x2716ab0;  1 drivers
S_0x26d8240 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2716030 .functor XOR 1, L_0x2717190, L_0x27163b0, C4<0>, C4<0>;
v0x26d8410_0 .net "A", 0 0, L_0x2717190;  alias, 1 drivers
v0x26d8560_0 .net "B", 0 0, L_0x27163b0;  1 drivers
v0x26d8620_0 .net "out", 0 0, L_0x2716030;  alias, 1 drivers
S_0x26d8760 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26d5c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2716850 .functor XOR 1, L_0x27170f0, L_0x2717190, C4<0>, C4<0>;
v0x26d8930_0 .net "A", 0 0, L_0x27170f0;  alias, 1 drivers
v0x26d89f0_0 .net "B", 0 0, L_0x2717190;  alias, 1 drivers
v0x26d8ab0_0 .net "out", 0 0, L_0x2716850;  1 drivers
S_0x26d9640 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2717dd0 .functor BUFZ 1, L_0x27175d0, C4<0>, C4<0>, C4<0>;
L_0x2717e40 .functor BUFZ 1, L_0x27175d0, C4<0>, C4<0>, C4<0>;
v0x26dc5b0_0 .net "A", 0 0, L_0x2718260;  1 drivers
v0x26dc650_0 .net "B", 0 0, L_0x2717230;  1 drivers
v0x26dc710_0 .net "I", 7 0, L_0x2717f40;  1 drivers
v0x26dc810_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26dc8b0_0 .net *"_s15", 0 0, L_0x2717dd0;  1 drivers
v0x26dc9c0_0 .net *"_s19", 0 0, L_0x2717e40;  1 drivers
L_0x7f87e29673c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26dcaa0_0 .net/2s *"_s23", 0 0, L_0x7f87e29673c0;  1 drivers
v0x26dcb80_0 .net "addORsub", 0 0, L_0x27175d0;  1 drivers
v0x26dcc20_0 .net "carryin", 0 0, L_0x27183c0;  1 drivers
v0x26dcd80_0 .net "carryout", 0 0, L_0x26db9c0;  1 drivers
v0x26dce50_0 .net "modB", 0 0, L_0x2717370;  1 drivers
v0x26dcef0_0 .net "out", 0 0, L_0x2717c90;  1 drivers
L_0x27173e0 .part v0x2648060_0, 0, 1;
LS_0x2717f40_0_0 .concat8 [ 1 1 1 1], L_0x2717dd0, L_0x2717e40, L_0x27179c0, L_0x7f87e29673c0;
LS_0x2717f40_0_4 .concat8 [ 1 1 1 1], L_0x26dbea0, L_0x2717b40, L_0x2717bb0, L_0x2717c20;
L_0x2717f40 .concat8 [ 4 4 0 0], LS_0x2717f40_0_0, LS_0x2717f40_0_4;
S_0x26d98b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x27174d0 .functor XOR 1, L_0x2718260, L_0x2717370, C4<0>, C4<0>;
L_0x27175d0 .functor XOR 1, L_0x27174d0, L_0x27183c0, C4<0>, C4<0>;
L_0x27176e0 .functor AND 1, L_0x27174d0, L_0x27183c0, C4<1>, C4<1>;
L_0x2717750 .functor AND 1, L_0x2718260, L_0x2717370, C4<1>, C4<1>;
L_0x26db9c0 .functor OR 1, L_0x27176e0, L_0x2717750, C4<0>, C4<0>;
v0x26d9b50_0 .net "A", 0 0, L_0x2718260;  alias, 1 drivers
v0x26d9c30_0 .net "B", 0 0, L_0x2717370;  alias, 1 drivers
v0x26d9cf0_0 .net "carryin", 0 0, L_0x27183c0;  alias, 1 drivers
v0x26d9dc0_0 .net "carryout", 0 0, L_0x26db9c0;  alias, 1 drivers
v0x26d9e80_0 .net "out1", 0 0, L_0x27174d0;  1 drivers
v0x26d9f90_0 .net "out2", 0 0, L_0x27176e0;  1 drivers
v0x26da050_0 .net "out3", 0 0, L_0x2717750;  1 drivers
v0x26da110_0 .net "sum", 0 0, L_0x27175d0;  alias, 1 drivers
S_0x26da270 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26dbea0 .functor AND 1, L_0x2718260, L_0x2717230, C4<1>, C4<1>;
v0x26da4b0_0 .net "A", 0 0, L_0x2718260;  alias, 1 drivers
v0x26da570_0 .net "B", 0 0, L_0x2717230;  alias, 1 drivers
v0x26da610_0 .net "out", 0 0, L_0x26dbea0;  1 drivers
S_0x26da760 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26da9b0_0 .net "I", 7 0, L_0x2717f40;  alias, 1 drivers
v0x26daa90_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26dab50_0 .net "out", 0 0, L_0x2717c90;  alias, 1 drivers
L_0x2717c90 .part/v L_0x2717f40, v0x2648060_0, 1;
S_0x26daca0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2717b40 .functor NAND 1, L_0x2718260, L_0x2717230, C4<1>, C4<1>;
v0x26daec0_0 .net "A", 0 0, L_0x2718260;  alias, 1 drivers
v0x26dafd0_0 .net "B", 0 0, L_0x2717230;  alias, 1 drivers
v0x26db090_0 .net "out", 0 0, L_0x2717b40;  1 drivers
S_0x26db1a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2717bb0 .functor NOR 1, L_0x2718260, L_0x2717230, C4<0>, C4<0>;
v0x26db410_0 .net "A", 0 0, L_0x2718260;  alias, 1 drivers
v0x26db4d0_0 .net "B", 0 0, L_0x2717230;  alias, 1 drivers
v0x26db5e0_0 .net "out", 0 0, L_0x2717bb0;  1 drivers
S_0x26db6e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2717c20 .functor OR 1, L_0x2718260, L_0x2717230, C4<0>, C4<0>;
v0x26db900_0 .net "A", 0 0, L_0x2718260;  alias, 1 drivers
v0x26dba50_0 .net "B", 0 0, L_0x2717230;  alias, 1 drivers
v0x26dbb10_0 .net "out", 0 0, L_0x2717c20;  1 drivers
S_0x26dbc10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2717370 .functor XOR 1, L_0x2717230, L_0x27173e0, C4<0>, C4<0>;
v0x26dbde0_0 .net "A", 0 0, L_0x2717230;  alias, 1 drivers
v0x26dbf30_0 .net "B", 0 0, L_0x27173e0;  1 drivers
v0x26dbff0_0 .net "out", 0 0, L_0x2717370;  alias, 1 drivers
S_0x26dc130 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26d9640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x27179c0 .functor XOR 1, L_0x2718260, L_0x2717230, C4<0>, C4<0>;
v0x26dc300_0 .net "A", 0 0, L_0x2718260;  alias, 1 drivers
v0x26dc3c0_0 .net "B", 0 0, L_0x2717230;  alias, 1 drivers
v0x26dc480_0 .net "out", 0 0, L_0x27179c0;  1 drivers
S_0x26dd010 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x2718f10 .functor BUFZ 1, L_0x2718760, C4<0>, C4<0>, C4<0>;
L_0x2718f80 .functor BUFZ 1, L_0x2718760, C4<0>, C4<0>, C4<0>;
v0x26dff80_0 .net "A", 0 0, L_0x27193a0;  1 drivers
v0x26e0020_0 .net "B", 0 0, L_0x2719440;  1 drivers
v0x26e00e0_0 .net "I", 7 0, L_0x2719080;  1 drivers
v0x26e01e0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26e0280_0 .net *"_s15", 0 0, L_0x2718f10;  1 drivers
v0x26e0390_0 .net *"_s19", 0 0, L_0x2718f80;  1 drivers
L_0x7f87e2967408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26e0470_0 .net/2s *"_s23", 0 0, L_0x7f87e2967408;  1 drivers
v0x26e0550_0 .net "addORsub", 0 0, L_0x2718760;  1 drivers
v0x26e05f0_0 .net "carryin", 0 0, L_0x27184f0;  1 drivers
v0x26e0750_0 .net "carryout", 0 0, L_0x26df390;  1 drivers
v0x26e0820_0 .net "modB", 0 0, L_0x2718300;  1 drivers
v0x26e08c0_0 .net "out", 0 0, L_0x2718dd0;  1 drivers
L_0x27185c0 .part v0x2648060_0, 0, 1;
LS_0x2719080_0_0 .concat8 [ 1 1 1 1], L_0x2718f10, L_0x2718f80, L_0x2718b00, L_0x7f87e2967408;
LS_0x2719080_0_4 .concat8 [ 1 1 1 1], L_0x26df870, L_0x2718c80, L_0x2718cf0, L_0x2718d60;
L_0x2719080 .concat8 [ 4 4 0 0], LS_0x2719080_0_0, LS_0x2719080_0_4;
S_0x26dd280 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2718660 .functor XOR 1, L_0x27193a0, L_0x2718300, C4<0>, C4<0>;
L_0x2718760 .functor XOR 1, L_0x2718660, L_0x27184f0, C4<0>, C4<0>;
L_0x2718820 .functor AND 1, L_0x2718660, L_0x27184f0, C4<1>, C4<1>;
L_0x2718890 .functor AND 1, L_0x27193a0, L_0x2718300, C4<1>, C4<1>;
L_0x26df390 .functor OR 1, L_0x2718820, L_0x2718890, C4<0>, C4<0>;
v0x26dd520_0 .net "A", 0 0, L_0x27193a0;  alias, 1 drivers
v0x26dd600_0 .net "B", 0 0, L_0x2718300;  alias, 1 drivers
v0x26dd6c0_0 .net "carryin", 0 0, L_0x27184f0;  alias, 1 drivers
v0x26dd790_0 .net "carryout", 0 0, L_0x26df390;  alias, 1 drivers
v0x26dd850_0 .net "out1", 0 0, L_0x2718660;  1 drivers
v0x26dd960_0 .net "out2", 0 0, L_0x2718820;  1 drivers
v0x26dda20_0 .net "out3", 0 0, L_0x2718890;  1 drivers
v0x26ddae0_0 .net "sum", 0 0, L_0x2718760;  alias, 1 drivers
S_0x26ddc40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26df870 .functor AND 1, L_0x27193a0, L_0x2719440, C4<1>, C4<1>;
v0x26dde80_0 .net "A", 0 0, L_0x27193a0;  alias, 1 drivers
v0x26ddf40_0 .net "B", 0 0, L_0x2719440;  alias, 1 drivers
v0x26ddfe0_0 .net "out", 0 0, L_0x26df870;  1 drivers
S_0x26de130 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26de380_0 .net "I", 7 0, L_0x2719080;  alias, 1 drivers
v0x26de460_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26de520_0 .net "out", 0 0, L_0x2718dd0;  alias, 1 drivers
L_0x2718dd0 .part/v L_0x2719080, v0x2648060_0, 1;
S_0x26de670 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2718c80 .functor NAND 1, L_0x27193a0, L_0x2719440, C4<1>, C4<1>;
v0x26de890_0 .net "A", 0 0, L_0x27193a0;  alias, 1 drivers
v0x26de9a0_0 .net "B", 0 0, L_0x2719440;  alias, 1 drivers
v0x26dea60_0 .net "out", 0 0, L_0x2718c80;  1 drivers
S_0x26deb70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2718cf0 .functor NOR 1, L_0x27193a0, L_0x2719440, C4<0>, C4<0>;
v0x26dede0_0 .net "A", 0 0, L_0x27193a0;  alias, 1 drivers
v0x26deea0_0 .net "B", 0 0, L_0x2719440;  alias, 1 drivers
v0x26defb0_0 .net "out", 0 0, L_0x2718cf0;  1 drivers
S_0x26df0b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2718d60 .functor OR 1, L_0x27193a0, L_0x2719440, C4<0>, C4<0>;
v0x26df2d0_0 .net "A", 0 0, L_0x27193a0;  alias, 1 drivers
v0x26df420_0 .net "B", 0 0, L_0x2719440;  alias, 1 drivers
v0x26df4e0_0 .net "out", 0 0, L_0x2718d60;  1 drivers
S_0x26df5e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2718300 .functor XOR 1, L_0x2719440, L_0x27185c0, C4<0>, C4<0>;
v0x26df7b0_0 .net "A", 0 0, L_0x2719440;  alias, 1 drivers
v0x26df900_0 .net "B", 0 0, L_0x27185c0;  1 drivers
v0x26df9c0_0 .net "out", 0 0, L_0x2718300;  alias, 1 drivers
S_0x26dfb00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26dd010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2718b00 .functor XOR 1, L_0x27193a0, L_0x2719440, C4<0>, C4<0>;
v0x26dfcd0_0 .net "A", 0 0, L_0x27193a0;  alias, 1 drivers
v0x26dfd90_0 .net "B", 0 0, L_0x2719440;  alias, 1 drivers
v0x26dfe50_0 .net "out", 0 0, L_0x2718b00;  1 drivers
S_0x26e09e0 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0x265b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x271a100 .functor BUFZ 1, L_0x2719900, C4<0>, C4<0>, C4<0>;
L_0x271a190 .functor BUFZ 1, L_0x2719900, C4<0>, C4<0>, C4<0>;
v0x26e3950_0 .net "A", 0 0, L_0x271a5d0;  1 drivers
v0x26e39f0_0 .net "B", 0 0, L_0x27194e0;  1 drivers
v0x26e3ab0_0 .net "I", 7 0, L_0x271a2b0;  1 drivers
v0x26e3bb0_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26a92b0_0 .net *"_s15", 0 0, L_0x271a100;  1 drivers
v0x26a93c0_0 .net *"_s19", 0 0, L_0x271a190;  1 drivers
L_0x7f87e2967450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x26a94a0_0 .net/2s *"_s23", 0 0, L_0x7f87e2967450;  1 drivers
v0x26a9580_0 .net "addORsub", 0 0, L_0x2719900;  1 drivers
v0x26a9620_0 .net "carryin", 0 0, L_0x271a880;  1 drivers
v0x26e4520_0 .net "carryout", 0 0, L_0x26e2d60;  1 drivers
v0x26e45f0_0 .net "modB", 0 0, L_0x2715020;  1 drivers
v0x26e4690_0 .net "out", 0 0, L_0x2719fc0;  1 drivers
L_0x2719760 .part v0x2648060_0, 0, 1;
LS_0x271a2b0_0_0 .concat8 [ 1 1 1 1], L_0x271a100, L_0x271a190, L_0x2719cf0, L_0x7f87e2967450;
LS_0x271a2b0_0_4 .concat8 [ 1 1 1 1], L_0x26e3240, L_0x2719e70, L_0x2719ee0, L_0x2719f50;
L_0x271a2b0 .concat8 [ 4 4 0 0], LS_0x271a2b0_0_0, LS_0x271a2b0_0_4;
S_0x26e0c50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x2719800 .functor XOR 1, L_0x271a5d0, L_0x2715020, C4<0>, C4<0>;
L_0x2719900 .functor XOR 1, L_0x2719800, L_0x271a880, C4<0>, C4<0>;
L_0x2719a10 .functor AND 1, L_0x2719800, L_0x271a880, C4<1>, C4<1>;
L_0x2719a80 .functor AND 1, L_0x271a5d0, L_0x2715020, C4<1>, C4<1>;
L_0x26e2d60 .functor OR 1, L_0x2719a10, L_0x2719a80, C4<0>, C4<0>;
v0x26e0ef0_0 .net "A", 0 0, L_0x271a5d0;  alias, 1 drivers
v0x26e0fd0_0 .net "B", 0 0, L_0x2715020;  alias, 1 drivers
v0x26e1090_0 .net "carryin", 0 0, L_0x271a880;  alias, 1 drivers
v0x26e1160_0 .net "carryout", 0 0, L_0x26e2d60;  alias, 1 drivers
v0x26e1220_0 .net "out1", 0 0, L_0x2719800;  1 drivers
v0x26e1330_0 .net "out2", 0 0, L_0x2719a10;  1 drivers
v0x26e13f0_0 .net "out3", 0 0, L_0x2719a80;  1 drivers
v0x26e14b0_0 .net "sum", 0 0, L_0x2719900;  alias, 1 drivers
S_0x26e1610 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x26e3240 .functor AND 1, L_0x271a5d0, L_0x27194e0, C4<1>, C4<1>;
v0x26e1850_0 .net "A", 0 0, L_0x271a5d0;  alias, 1 drivers
v0x26e1910_0 .net "B", 0 0, L_0x27194e0;  alias, 1 drivers
v0x26e19b0_0 .net "out", 0 0, L_0x26e3240;  1 drivers
S_0x26e1b00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x26e1d50_0 .net "I", 7 0, L_0x271a2b0;  alias, 1 drivers
v0x26e1e30_0 .net "S", 2 0, v0x2648060_0;  alias, 1 drivers
v0x26e1ef0_0 .net "out", 0 0, L_0x2719fc0;  alias, 1 drivers
L_0x2719fc0 .part/v L_0x271a2b0, v0x2648060_0, 1;
S_0x26e2040 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2719e70 .functor NAND 1, L_0x271a5d0, L_0x27194e0, C4<1>, C4<1>;
v0x26e2260_0 .net "A", 0 0, L_0x271a5d0;  alias, 1 drivers
v0x26e2370_0 .net "B", 0 0, L_0x27194e0;  alias, 1 drivers
v0x26e2430_0 .net "out", 0 0, L_0x2719e70;  1 drivers
S_0x26e2540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2719ee0 .functor NOR 1, L_0x271a5d0, L_0x27194e0, C4<0>, C4<0>;
v0x26e27b0_0 .net "A", 0 0, L_0x271a5d0;  alias, 1 drivers
v0x26e2870_0 .net "B", 0 0, L_0x27194e0;  alias, 1 drivers
v0x26e2980_0 .net "out", 0 0, L_0x2719ee0;  1 drivers
S_0x26e2a80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2719f50 .functor OR 1, L_0x271a5d0, L_0x27194e0, C4<0>, C4<0>;
v0x26e2ca0_0 .net "A", 0 0, L_0x271a5d0;  alias, 1 drivers
v0x26e2df0_0 .net "B", 0 0, L_0x27194e0;  alias, 1 drivers
v0x26e2eb0_0 .net "out", 0 0, L_0x2719f50;  1 drivers
S_0x26e2fb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2715020 .functor XOR 1, L_0x27194e0, L_0x2719760, C4<0>, C4<0>;
v0x26e3180_0 .net "A", 0 0, L_0x27194e0;  alias, 1 drivers
v0x26e32d0_0 .net "B", 0 0, L_0x2719760;  1 drivers
v0x26e3390_0 .net "out", 0 0, L_0x2715020;  alias, 1 drivers
S_0x26e34d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x26e09e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x2719cf0 .functor XOR 1, L_0x271a5d0, L_0x27194e0, C4<0>, C4<0>;
v0x26e36a0_0 .net "A", 0 0, L_0x271a5d0;  alias, 1 drivers
v0x26e3760_0 .net "B", 0 0, L_0x27194e0;  alias, 1 drivers
v0x26e3820_0 .net "out", 0 0, L_0x2719cf0;  1 drivers
S_0x26e6f00 .scope module, "mem" "memory" 4 56, 10 1 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "regWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x26fb710 .functor BUFZ 32, L_0x26fb670, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fb8b0 .functor BUFZ 32, L_0x26fb810, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e71b0_0 .net "Addr0", 31 0, L_0x26fb970;  1 drivers
v0x26e72b0_0 .net "DataIn0", 31 0, L_0x270fc50;  alias, 1 drivers
v0x26e7390_0 .net "DataOut0", 31 0, L_0x26fb710;  alias, 1 drivers
v0x26e7480_0 .net *"_s0", 31 0, L_0x26fb670;  1 drivers
v0x26e7560_0 .net *"_s4", 31 0, L_0x26fb810;  1 drivers
v0x26e7690_0 .net "clk", 0 0, v0x26f8fb0_0;  alias, 1 drivers
v0x26e7730_0 .net "instruct_Addr1", 31 0, L_0x26fbc00;  1 drivers
v0x26e77f0_0 .net "instruct_DataOut1", 31 0, L_0x26fb8b0;  alias, 1 drivers
v0x26e78e0 .array "mem", 0 1023, 31 0;
v0x26e7a30_0 .var "real_add", 31 0;
v0x26e7b10_0 .net "regWE", 0 0, v0x261f210_0;  alias, 1 drivers
E_0x26e7130 .event posedge, v0x262de40_0;
L_0x26fb670 .array/port v0x26e78e0, L_0x26fb970;
L_0x26fb810 .array/port v0x26e78e0, L_0x26fbc00;
S_0x26e7cb0 .scope module, "op_imm_mux" "mux2" 4 68, 11 1 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x26e7ef0_0 .net "input0", 31 0, v0x2629910_0;  alias, 1 drivers
v0x26e8000_0 .net "input1", 31 0, L_0x270fc50;  alias, 1 drivers
v0x26e80d0_0 .net "out", 31 0, L_0x2737ec0;  alias, 1 drivers
v0x26e81d0_0 .net "select0", 0 0, v0x2625260_0;  alias, 1 drivers
L_0x2737ec0 .functor MUXZ 32, L_0x270fc50, v0x2629910_0, v0x2625260_0, C4<>;
S_0x26e82f0 .scope module, "pcmux" "pc_multiplexer" 4 53, 12 7 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x26e85c0_0 .net "JumpAddress", 25 0, v0x2643a70_0;  alias, 1 drivers
v0x26e86d0_0 .var "PC", 31 0;
v0x26e8790_0 .net "S", 1 0, v0x2624ea0_0;  alias, 1 drivers
v0x26e8890_0 .net "clk", 0 0, v0x26f8fb0_0;  alias, 1 drivers
v0x26e8980_0 .net "immediate", 31 0, v0x2629910_0;  alias, 1 drivers
v0x26e8ac0_0 .var "mux_out", 31 0;
v0x26e8ba0_0 .var "nextPC", 31 0;
v0x26e8c80_0 .net "regRs", 31 0, L_0x270d320;  alias, 1 drivers
v0x26e8d40_0 .var "tempimmediate", 31 0;
E_0x26e8560/0 .event edge, v0x2624ea0_0, v0x26e47b0_0, v0x2629910_0, v0x2643a70_0;
E_0x26e8560/1 .event edge, v0x26e8ba0_0;
E_0x26e8560 .event/or E_0x26e8560/0, E_0x26e8560/1;
S_0x26e8f90 .scope module, "reg_in_mux" "mux3_32bit" 4 67, 11 21 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x26e9190_0 .net *"_s1", 0 0, L_0x2737730;  1 drivers
v0x26e9290_0 .net *"_s10", 31 0, L_0x2737a90;  1 drivers
v0x26e9370_0 .net *"_s3", 0 0, L_0x27377d0;  1 drivers
L_0x7f87e2967b10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x26e9430_0 .net/2u *"_s4", 31 0, L_0x7f87e2967b10;  1 drivers
v0x26e9510_0 .net *"_s6", 31 0, L_0x2737900;  1 drivers
v0x26e9640_0 .net *"_s9", 0 0, L_0x27379f0;  1 drivers
v0x26e9720_0 .net "input0", 31 0, L_0x27343b0;  alias, 1 drivers
v0x26e97e0_0 .net "input1", 31 0, L_0x26fb710;  alias, 1 drivers
v0x26e98b0_0 .net "input2", 31 0, L_0x2737d10;  1 drivers
v0x26e9a00_0 .net "out", 31 0, L_0x2737b80;  alias, 1 drivers
v0x26e9ae0_0 .net "select0", 1 0, v0x261f2b0_0;  alias, 1 drivers
L_0x2737730 .part v0x261f2b0_0, 1, 1;
L_0x27377d0 .part v0x261f2b0_0, 0, 1;
L_0x2737900 .functor MUXZ 32, L_0x2737d10, L_0x7f87e2967b10, L_0x27377d0, C4<>;
L_0x27379f0 .part v0x261f2b0_0, 0, 1;
L_0x2737a90 .functor MUXZ 32, L_0x27343b0, L_0x26fb710, L_0x27379f0, C4<>;
L_0x2737b80 .functor MUXZ 32, L_0x2737a90, L_0x2737900, L_0x2737730, C4<>;
S_0x26e9c80 .scope module, "reg_select_mux" "mux3_5bit" 4 66, 11 11 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x26e9e80_0 .net *"_s1", 0 0, L_0x27367d0;  1 drivers
v0x26e9f80_0 .net *"_s10", 4 0, L_0x2737460;  1 drivers
v0x26ea060_0 .net *"_s3", 0 0, L_0x2737230;  1 drivers
L_0x7f87e2967a80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x26ea150_0 .net/2u *"_s4", 4 0, L_0x7f87e2967a80;  1 drivers
v0x26ea230_0 .net *"_s6", 4 0, L_0x27372d0;  1 drivers
v0x26ea360_0 .net *"_s9", 0 0, L_0x27373c0;  1 drivers
v0x26ea440_0 .net "input0", 4 0, v0x2624f60_0;  alias, 1 drivers
v0x26ea500_0 .net "input1", 4 0, v0x26164f0_0;  alias, 1 drivers
L_0x7f87e2967ac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x26ea5d0_0 .net "input2", 4 0, L_0x7f87e2967ac8;  1 drivers
v0x26ea720_0 .net "out", 4 0, L_0x2737550;  alias, 1 drivers
v0x26ea800_0 .net "select0", 1 0, v0x262da80_0;  alias, 1 drivers
L_0x27367d0 .part v0x262da80_0, 1, 1;
L_0x2737230 .part v0x262da80_0, 0, 1;
L_0x27372d0 .functor MUXZ 5, L_0x7f87e2967ac8, L_0x7f87e2967a80, L_0x2737230, C4<>;
L_0x27373c0 .part v0x262da80_0, 0, 1;
L_0x2737460 .functor MUXZ 5, v0x2624f60_0, v0x26164f0_0, L_0x27373c0, C4<>;
L_0x2737550 .functor MUXZ 5, L_0x2737460, L_0x27372d0, L_0x27367d0, C4<>;
S_0x26ea9a0 .scope module, "regi" "regfile" 4 62, 13 12 0, S_0x2675a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x26f3ec0_0 .net "Clk", 0 0, v0x26f8fb0_0;  alias, 1 drivers
v0x26f6d70_0 .net "ReadData1", 31 0, L_0x270d320;  alias, 1 drivers
v0x26f6e10_0 .net "ReadData2", 31 0, L_0x270fc50;  alias, 1 drivers
v0x26f6eb0_0 .net "ReadRegister1", 4 0, v0x261ab80_0;  alias, 1 drivers
v0x26f6fa0_0 .net "ReadRegister2", 4 0, v0x26164f0_0;  alias, 1 drivers
v0x26f7090_0 .net "RegWrite", 0 0, v0x261f210_0;  alias, 1 drivers
v0x26f7130_0 .net "WriteData", 31 0, L_0x2737b80;  alias, 1 drivers
v0x26f71f0_0 .net "WriteRegister", 4 0, L_0x2737550;  alias, 1 drivers
v0x26f72e0_0 .net "decoded", 31 0, L_0x270bdf0;  1 drivers
v0x26f7430 .array "registers", 0 31, 31 0;
S_0x26eac80 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x26ea9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x26eaee0_0 .net *"_s0", 31 0, L_0x26fbcf0;  1 drivers
L_0x7f87e2967060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x26eafe0_0 .net *"_s3", 30 0, L_0x7f87e2967060;  1 drivers
v0x26eb0c0_0 .net "address", 4 0, L_0x2737550;  alias, 1 drivers
v0x26eb190_0 .net "enable", 0 0, v0x261f210_0;  alias, 1 drivers
v0x26eb280_0 .net "out", 31 0, L_0x270bdf0;  alias, 1 drivers
L_0x26fbcf0 .concat [ 1 31 0 0], v0x261f210_0, L_0x7f87e2967060;
L_0x270bdf0 .shift/l 32, L_0x26fbcf0, L_0x2737550;
S_0x26eb410 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26eb600 .param/l "i" 0 13 33, +C4<01>;
S_0x26eb6c0 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26eb8b0 .param/l "i" 0 13 33, +C4<010>;
S_0x26eb950 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ebb40 .param/l "i" 0 13 33, +C4<011>;
S_0x26ebc00 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ebe40 .param/l "i" 0 13 33, +C4<0100>;
S_0x26ebf00 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ec0f0 .param/l "i" 0 13 33, +C4<0101>;
S_0x26ec1b0 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ec3a0 .param/l "i" 0 13 33, +C4<0110>;
S_0x26ec460 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ec650 .param/l "i" 0 13 33, +C4<0111>;
S_0x26ec710 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ebdf0 .param/l "i" 0 13 33, +C4<01000>;
S_0x26eca00 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ecbf0 .param/l "i" 0 13 33, +C4<01001>;
S_0x26eccb0 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ecea0 .param/l "i" 0 13 33, +C4<01010>;
S_0x26ecf60 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ed150 .param/l "i" 0 13 33, +C4<01011>;
S_0x26ed210 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ed400 .param/l "i" 0 13 33, +C4<01100>;
S_0x26ed4c0 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ed6b0 .param/l "i" 0 13 33, +C4<01101>;
S_0x26ed770 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ed960 .param/l "i" 0 13 33, +C4<01110>;
S_0x26eda20 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26edc10 .param/l "i" 0 13 33, +C4<01111>;
S_0x26edcd0 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ec900 .param/l "i" 0 13 33, +C4<010000>;
S_0x26ee020 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ee1f0 .param/l "i" 0 13 33, +C4<010001>;
S_0x26ee2b0 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ee4a0 .param/l "i" 0 13 33, +C4<010010>;
S_0x26ee560 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ee750 .param/l "i" 0 13 33, +C4<010011>;
S_0x26ee810 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26eea00 .param/l "i" 0 13 33, +C4<010100>;
S_0x26eeac0 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26eecb0 .param/l "i" 0 13 33, +C4<010101>;
S_0x26eed70 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26eef60 .param/l "i" 0 13 33, +C4<010110>;
S_0x26ef020 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ef210 .param/l "i" 0 13 33, +C4<010111>;
S_0x26ef2d0 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ef4c0 .param/l "i" 0 13 33, +C4<011000>;
S_0x26ef580 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26ef770 .param/l "i" 0 13 33, +C4<011001>;
S_0x26ef830 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26efa20 .param/l "i" 0 13 33, +C4<011010>;
S_0x26efae0 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26efcd0 .param/l "i" 0 13 33, +C4<011011>;
S_0x26efd90 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26eff80 .param/l "i" 0 13 33, +C4<011100>;
S_0x26f0040 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26f0230 .param/l "i" 0 13 33, +C4<011101>;
S_0x26f02f0 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26f04e0 .param/l "i" 0 13 33, +C4<011110>;
S_0x26f05a0 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x26ea9a0;
 .timescale 0 0;
P_0x26f0790 .param/l "i" 0 13 33, +C4<011111>;
S_0x26f0850 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x26ea9a0;
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
L_0x7f87e29670f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x270bfc0 .functor BUFZ 32, L_0x7f87e29670f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_1 .array/port v0x26f7430, 1;
L_0x270c030 .functor BUFZ 32, v0x26f7430_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_2 .array/port v0x26f7430, 2;
L_0x270c0a0 .functor BUFZ 32, v0x26f7430_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_3 .array/port v0x26f7430, 3;
L_0x270c110 .functor BUFZ 32, v0x26f7430_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_4 .array/port v0x26f7430, 4;
L_0x270c180 .functor BUFZ 32, v0x26f7430_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_5 .array/port v0x26f7430, 5;
L_0x270c1f0 .functor BUFZ 32, v0x26f7430_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_6 .array/port v0x26f7430, 6;
L_0x270c260 .functor BUFZ 32, v0x26f7430_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_7 .array/port v0x26f7430, 7;
L_0x270c2d0 .functor BUFZ 32, v0x26f7430_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_8 .array/port v0x26f7430, 8;
L_0x270c340 .functor BUFZ 32, v0x26f7430_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_9 .array/port v0x26f7430, 9;
L_0x270c3b0 .functor BUFZ 32, v0x26f7430_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_10 .array/port v0x26f7430, 10;
L_0x270c480 .functor BUFZ 32, v0x26f7430_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_11 .array/port v0x26f7430, 11;
L_0x270c4f0 .functor BUFZ 32, v0x26f7430_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_12 .array/port v0x26f7430, 12;
L_0x270c5d0 .functor BUFZ 32, v0x26f7430_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_13 .array/port v0x26f7430, 13;
L_0x270c640 .functor BUFZ 32, v0x26f7430_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_14 .array/port v0x26f7430, 14;
L_0x270c560 .functor BUFZ 32, v0x26f7430_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_15 .array/port v0x26f7430, 15;
L_0x270c730 .functor BUFZ 32, v0x26f7430_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_16 .array/port v0x26f7430, 16;
L_0x270c830 .functor BUFZ 32, v0x26f7430_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_17 .array/port v0x26f7430, 17;
L_0x270c8a0 .functor BUFZ 32, v0x26f7430_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_18 .array/port v0x26f7430, 18;
L_0x270c7a0 .functor BUFZ 32, v0x26f7430_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_19 .array/port v0x26f7430, 19;
L_0x270c9b0 .functor BUFZ 32, v0x26f7430_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_20 .array/port v0x26f7430, 20;
L_0x270c910 .functor BUFZ 32, v0x26f7430_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_21 .array/port v0x26f7430, 21;
L_0x270cad0 .functor BUFZ 32, v0x26f7430_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_22 .array/port v0x26f7430, 22;
L_0x270ca20 .functor BUFZ 32, v0x26f7430_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_23 .array/port v0x26f7430, 23;
L_0x270cc00 .functor BUFZ 32, v0x26f7430_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_24 .array/port v0x26f7430, 24;
L_0x270cb40 .functor BUFZ 32, v0x26f7430_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_25 .array/port v0x26f7430, 25;
L_0x270cd40 .functor BUFZ 32, v0x26f7430_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_26 .array/port v0x26f7430, 26;
L_0x270cc70 .functor BUFZ 32, v0x26f7430_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_27 .array/port v0x26f7430, 27;
L_0x270ce90 .functor BUFZ 32, v0x26f7430_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_28 .array/port v0x26f7430, 28;
L_0x270cdb0 .functor BUFZ 32, v0x26f7430_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_29 .array/port v0x26f7430, 29;
L_0x270ce20 .functor BUFZ 32, v0x26f7430_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_30 .array/port v0x26f7430, 30;
L_0x270d000 .functor BUFZ 32, v0x26f7430_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26f7430_31 .array/port v0x26f7430, 31;
L_0x270d070 .functor BUFZ 32, v0x26f7430_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270d320 .functor BUFZ 32, L_0x270cf00, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f87e29670a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x26edec0_0 .net *"_s101", 1 0, L_0x7f87e29670a8;  1 drivers
v0x26f1090_0 .net *"_s96", 31 0, L_0x270cf00;  1 drivers
v0x26f1150_0 .net *"_s98", 6 0, L_0x270d1f0;  1 drivers
v0x26f1230_0 .net "address", 4 0, v0x261ab80_0;  alias, 1 drivers
v0x26f12f0_0 .net "input0", 31 0, L_0x7f87e29670f0;  1 drivers
v0x26f1400_0 .net "input1", 31 0, v0x26f7430_1;  1 drivers
v0x26f14e0_0 .net "input10", 31 0, v0x26f7430_10;  1 drivers
v0x26f15c0_0 .net "input11", 31 0, v0x26f7430_11;  1 drivers
v0x26f16a0_0 .net "input12", 31 0, v0x26f7430_12;  1 drivers
v0x26f1810_0 .net "input13", 31 0, v0x26f7430_13;  1 drivers
v0x26f18f0_0 .net "input14", 31 0, v0x26f7430_14;  1 drivers
v0x26f19d0_0 .net "input15", 31 0, v0x26f7430_15;  1 drivers
v0x26f1ab0_0 .net "input16", 31 0, v0x26f7430_16;  1 drivers
v0x26f1b90_0 .net "input17", 31 0, v0x26f7430_17;  1 drivers
v0x26f1c70_0 .net "input18", 31 0, v0x26f7430_18;  1 drivers
v0x26f1d50_0 .net "input19", 31 0, v0x26f7430_19;  1 drivers
v0x26f1e30_0 .net "input2", 31 0, v0x26f7430_2;  1 drivers
v0x26f1fe0_0 .net "input20", 31 0, v0x26f7430_20;  1 drivers
v0x26f2080_0 .net "input21", 31 0, v0x26f7430_21;  1 drivers
v0x26f2160_0 .net "input22", 31 0, v0x26f7430_22;  1 drivers
v0x26f2240_0 .net "input23", 31 0, v0x26f7430_23;  1 drivers
v0x26f2320_0 .net "input24", 31 0, v0x26f7430_24;  1 drivers
v0x26f2400_0 .net "input25", 31 0, v0x26f7430_25;  1 drivers
v0x26f24e0_0 .net "input26", 31 0, v0x26f7430_26;  1 drivers
v0x26f25c0_0 .net "input27", 31 0, v0x26f7430_27;  1 drivers
v0x26f26a0_0 .net "input28", 31 0, v0x26f7430_28;  1 drivers
v0x26f2780_0 .net "input29", 31 0, v0x26f7430_29;  1 drivers
v0x26f2860_0 .net "input3", 31 0, v0x26f7430_3;  1 drivers
v0x26f2940_0 .net "input30", 31 0, v0x26f7430_30;  1 drivers
v0x26f2a20_0 .net "input31", 31 0, v0x26f7430_31;  1 drivers
v0x26f2b00_0 .net "input4", 31 0, v0x26f7430_4;  1 drivers
v0x26f2be0_0 .net "input5", 31 0, v0x26f7430_5;  1 drivers
v0x26f2cc0_0 .net "input6", 31 0, v0x26f7430_6;  1 drivers
v0x26f1f10_0 .net "input7", 31 0, v0x26f7430_7;  1 drivers
v0x26f2f90_0 .net "input8", 31 0, v0x26f7430_8;  1 drivers
v0x26f3070_0 .net "input9", 31 0, v0x26f7430_9;  1 drivers
v0x26f3150 .array "mux", 0 31;
v0x26f3150_0 .net v0x26f3150 0, 31 0, L_0x270bfc0; 1 drivers
v0x26f3150_1 .net v0x26f3150 1, 31 0, L_0x270c030; 1 drivers
v0x26f3150_2 .net v0x26f3150 2, 31 0, L_0x270c0a0; 1 drivers
v0x26f3150_3 .net v0x26f3150 3, 31 0, L_0x270c110; 1 drivers
v0x26f3150_4 .net v0x26f3150 4, 31 0, L_0x270c180; 1 drivers
v0x26f3150_5 .net v0x26f3150 5, 31 0, L_0x270c1f0; 1 drivers
v0x26f3150_6 .net v0x26f3150 6, 31 0, L_0x270c260; 1 drivers
v0x26f3150_7 .net v0x26f3150 7, 31 0, L_0x270c2d0; 1 drivers
v0x26f3150_8 .net v0x26f3150 8, 31 0, L_0x270c340; 1 drivers
v0x26f3150_9 .net v0x26f3150 9, 31 0, L_0x270c3b0; 1 drivers
v0x26f3150_10 .net v0x26f3150 10, 31 0, L_0x270c480; 1 drivers
v0x26f3150_11 .net v0x26f3150 11, 31 0, L_0x270c4f0; 1 drivers
v0x26f3150_12 .net v0x26f3150 12, 31 0, L_0x270c5d0; 1 drivers
v0x26f3150_13 .net v0x26f3150 13, 31 0, L_0x270c640; 1 drivers
v0x26f3150_14 .net v0x26f3150 14, 31 0, L_0x270c560; 1 drivers
v0x26f3150_15 .net v0x26f3150 15, 31 0, L_0x270c730; 1 drivers
v0x26f3150_16 .net v0x26f3150 16, 31 0, L_0x270c830; 1 drivers
v0x26f3150_17 .net v0x26f3150 17, 31 0, L_0x270c8a0; 1 drivers
v0x26f3150_18 .net v0x26f3150 18, 31 0, L_0x270c7a0; 1 drivers
v0x26f3150_19 .net v0x26f3150 19, 31 0, L_0x270c9b0; 1 drivers
v0x26f3150_20 .net v0x26f3150 20, 31 0, L_0x270c910; 1 drivers
v0x26f3150_21 .net v0x26f3150 21, 31 0, L_0x270cad0; 1 drivers
v0x26f3150_22 .net v0x26f3150 22, 31 0, L_0x270ca20; 1 drivers
v0x26f3150_23 .net v0x26f3150 23, 31 0, L_0x270cc00; 1 drivers
v0x26f3150_24 .net v0x26f3150 24, 31 0, L_0x270cb40; 1 drivers
v0x26f3150_25 .net v0x26f3150 25, 31 0, L_0x270cd40; 1 drivers
v0x26f3150_26 .net v0x26f3150 26, 31 0, L_0x270cc70; 1 drivers
v0x26f3150_27 .net v0x26f3150 27, 31 0, L_0x270ce90; 1 drivers
v0x26f3150_28 .net v0x26f3150 28, 31 0, L_0x270cdb0; 1 drivers
v0x26f3150_29 .net v0x26f3150 29, 31 0, L_0x270ce20; 1 drivers
v0x26f3150_30 .net v0x26f3150 30, 31 0, L_0x270d000; 1 drivers
v0x26f3150_31 .net v0x26f3150 31, 31 0, L_0x270d070; 1 drivers
v0x26f3720_0 .net "out", 31 0, L_0x270d320;  alias, 1 drivers
L_0x270cf00 .array/port v0x26f3150, L_0x270d1f0;
L_0x270d1f0 .concat [ 5 2 0 0], v0x261ab80_0, L_0x7f87e29670a8;
S_0x26f3d40 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x26ea9a0;
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
L_0x7f87e2967180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x270d3e0 .functor BUFZ 32, L_0x7f87e2967180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270d450 .functor BUFZ 32, v0x26f7430_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270d580 .functor BUFZ 32, v0x26f7430_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270d6b0 .functor BUFZ 32, v0x26f7430_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270d810 .functor BUFZ 32, v0x26f7430_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270d940 .functor BUFZ 32, v0x26f7430_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270da70 .functor BUFZ 32, v0x26f7430_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270db70 .functor BUFZ 32, v0x26f7430_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270dca0 .functor BUFZ 32, v0x26f7430_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270ddd0 .functor BUFZ 32, v0x26f7430_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270df00 .functor BUFZ 32, v0x26f7430_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e030 .functor BUFZ 32, v0x26f7430_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e1d0 .functor BUFZ 32, v0x26f7430_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e300 .functor BUFZ 32, v0x26f7430_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e160 .functor BUFZ 32, v0x26f7430_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e4f0 .functor BUFZ 32, v0x26f7430_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e6b0 .functor BUFZ 32, v0x26f7430_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e7e0 .functor BUFZ 32, v0x26f7430_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e620 .functor BUFZ 32, v0x26f7430_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270ea70 .functor BUFZ 32, v0x26f7430_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270e910 .functor BUFZ 32, v0x26f7430_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270ece0 .functor BUFZ 32, v0x26f7430_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270eba0 .functor BUFZ 32, v0x26f7430_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270ef60 .functor BUFZ 32, v0x26f7430_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270ee10 .functor BUFZ 32, v0x26f7430_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f1f0 .functor BUFZ 32, v0x26f7430_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f090 .functor BUFZ 32, v0x26f7430_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f490 .functor BUFZ 32, v0x26f7430_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f320 .functor BUFZ 32, v0x26f7430_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f710 .functor BUFZ 32, v0x26f7430_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f590 .functor BUFZ 32, v0x26f7430_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270f9a0 .functor BUFZ 32, v0x26f7430_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x270fc50 .functor BUFZ 32, L_0x270f810, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f87e2967138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x26f0c80_0 .net *"_s101", 1 0, L_0x7f87e2967138;  1 drivers
v0x26f4360_0 .net *"_s96", 31 0, L_0x270f810;  1 drivers
v0x26f4460_0 .net *"_s98", 6 0, L_0x270fbb0;  1 drivers
v0x26f4520_0 .net "address", 4 0, v0x26164f0_0;  alias, 1 drivers
v0x26f4630_0 .net "input0", 31 0, L_0x7f87e2967180;  1 drivers
v0x26f4760_0 .net "input1", 31 0, v0x26f7430_1;  alias, 1 drivers
v0x26f4820_0 .net "input10", 31 0, v0x26f7430_10;  alias, 1 drivers
v0x26f48c0_0 .net "input11", 31 0, v0x26f7430_11;  alias, 1 drivers
v0x26f4960_0 .net "input12", 31 0, v0x26f7430_12;  alias, 1 drivers
v0x26f4a90_0 .net "input13", 31 0, v0x26f7430_13;  alias, 1 drivers
v0x26f4b30_0 .net "input14", 31 0, v0x26f7430_14;  alias, 1 drivers
v0x26f4c00_0 .net "input15", 31 0, v0x26f7430_15;  alias, 1 drivers
v0x26f4cd0_0 .net "input16", 31 0, v0x26f7430_16;  alias, 1 drivers
v0x26f4da0_0 .net "input17", 31 0, v0x26f7430_17;  alias, 1 drivers
v0x26f4e70_0 .net "input18", 31 0, v0x26f7430_18;  alias, 1 drivers
v0x26f4f40_0 .net "input19", 31 0, v0x26f7430_19;  alias, 1 drivers
v0x26f4fe0_0 .net "input2", 31 0, v0x26f7430_2;  alias, 1 drivers
v0x26f5190_0 .net "input20", 31 0, v0x26f7430_20;  alias, 1 drivers
v0x26f5230_0 .net "input21", 31 0, v0x26f7430_21;  alias, 1 drivers
v0x26f52d0_0 .net "input22", 31 0, v0x26f7430_22;  alias, 1 drivers
v0x26f5370_0 .net "input23", 31 0, v0x26f7430_23;  alias, 1 drivers
v0x26f5410_0 .net "input24", 31 0, v0x26f7430_24;  alias, 1 drivers
v0x26f54e0_0 .net "input25", 31 0, v0x26f7430_25;  alias, 1 drivers
v0x26f55b0_0 .net "input26", 31 0, v0x26f7430_26;  alias, 1 drivers
v0x26f5680_0 .net "input27", 31 0, v0x26f7430_27;  alias, 1 drivers
v0x26f5750_0 .net "input28", 31 0, v0x26f7430_28;  alias, 1 drivers
v0x26f5820_0 .net "input29", 31 0, v0x26f7430_29;  alias, 1 drivers
v0x26f58f0_0 .net "input3", 31 0, v0x26f7430_3;  alias, 1 drivers
v0x26f59c0_0 .net "input30", 31 0, v0x26f7430_30;  alias, 1 drivers
v0x26f5a90_0 .net "input31", 31 0, v0x26f7430_31;  alias, 1 drivers
v0x26f5b60_0 .net "input4", 31 0, v0x26f7430_4;  alias, 1 drivers
v0x26f5c30_0 .net "input5", 31 0, v0x26f7430_5;  alias, 1 drivers
v0x26f5d00_0 .net "input6", 31 0, v0x26f7430_6;  alias, 1 drivers
v0x26f50b0_0 .net "input7", 31 0, v0x26f7430_7;  alias, 1 drivers
v0x26f5fb0_0 .net "input8", 31 0, v0x26f7430_8;  alias, 1 drivers
v0x26f6080_0 .net "input9", 31 0, v0x26f7430_9;  alias, 1 drivers
v0x26f6150 .array "mux", 0 31;
v0x26f6150_0 .net v0x26f6150 0, 31 0, L_0x270d3e0; 1 drivers
v0x26f6150_1 .net v0x26f6150 1, 31 0, L_0x270d450; 1 drivers
v0x26f6150_2 .net v0x26f6150 2, 31 0, L_0x270d580; 1 drivers
v0x26f6150_3 .net v0x26f6150 3, 31 0, L_0x270d6b0; 1 drivers
v0x26f6150_4 .net v0x26f6150 4, 31 0, L_0x270d810; 1 drivers
v0x26f6150_5 .net v0x26f6150 5, 31 0, L_0x270d940; 1 drivers
v0x26f6150_6 .net v0x26f6150 6, 31 0, L_0x270da70; 1 drivers
v0x26f6150_7 .net v0x26f6150 7, 31 0, L_0x270db70; 1 drivers
v0x26f6150_8 .net v0x26f6150 8, 31 0, L_0x270dca0; 1 drivers
v0x26f6150_9 .net v0x26f6150 9, 31 0, L_0x270ddd0; 1 drivers
v0x26f6150_10 .net v0x26f6150 10, 31 0, L_0x270df00; 1 drivers
v0x26f6150_11 .net v0x26f6150 11, 31 0, L_0x270e030; 1 drivers
v0x26f6150_12 .net v0x26f6150 12, 31 0, L_0x270e1d0; 1 drivers
v0x26f6150_13 .net v0x26f6150 13, 31 0, L_0x270e300; 1 drivers
v0x26f6150_14 .net v0x26f6150 14, 31 0, L_0x270e160; 1 drivers
v0x26f6150_15 .net v0x26f6150 15, 31 0, L_0x270e4f0; 1 drivers
v0x26f6150_16 .net v0x26f6150 16, 31 0, L_0x270e6b0; 1 drivers
v0x26f6150_17 .net v0x26f6150 17, 31 0, L_0x270e7e0; 1 drivers
v0x26f6150_18 .net v0x26f6150 18, 31 0, L_0x270e620; 1 drivers
v0x26f6150_19 .net v0x26f6150 19, 31 0, L_0x270ea70; 1 drivers
v0x26f6150_20 .net v0x26f6150 20, 31 0, L_0x270e910; 1 drivers
v0x26f6150_21 .net v0x26f6150 21, 31 0, L_0x270ece0; 1 drivers
v0x26f6150_22 .net v0x26f6150 22, 31 0, L_0x270eba0; 1 drivers
v0x26f6150_23 .net v0x26f6150 23, 31 0, L_0x270ef60; 1 drivers
v0x26f6150_24 .net v0x26f6150 24, 31 0, L_0x270ee10; 1 drivers
v0x26f6150_25 .net v0x26f6150 25, 31 0, L_0x270f1f0; 1 drivers
v0x26f6150_26 .net v0x26f6150 26, 31 0, L_0x270f090; 1 drivers
v0x26f6150_27 .net v0x26f6150 27, 31 0, L_0x270f490; 1 drivers
v0x26f6150_28 .net v0x26f6150 28, 31 0, L_0x270f320; 1 drivers
v0x26f6150_29 .net v0x26f6150 29, 31 0, L_0x270f710; 1 drivers
v0x26f6150_30 .net v0x26f6150 30, 31 0, L_0x270f590; 1 drivers
v0x26f6150_31 .net v0x26f6150 31, 31 0, L_0x270f9a0; 1 drivers
v0x26f6700_0 .net "out", 31 0, L_0x270fc50;  alias, 1 drivers
L_0x270f810 .array/port v0x26f6150, L_0x270fbb0;
L_0x270fbb0 .concat [ 5 2 0 0], v0x26164f0_0, L_0x7f87e2967138;
S_0x26196f0 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f87e29c7ad8 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x26fa2f0_0 .net "address", 4 0, o0x7f87e29c7ad8;  0 drivers
o0x7f87e29c7b08 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x26fa3f0_0 .net "inputs", 31 0, o0x7f87e29c7b08;  0 drivers
v0x26fa4d0_0 .net "out", 0 0, L_0x2737f60;  1 drivers
L_0x2737f60 .part/v o0x7f87e29c7b08, o0x7f87e29c7ad8, 1;
S_0x2615060 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f87e29c7bf8 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fa610_0 .net "clk", 0 0, o0x7f87e29c7bf8;  0 drivers
o0x7f87e29c7c28 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fa6f0_0 .net "d", 0 0, o0x7f87e29c7c28;  0 drivers
v0x26fa7b0_0 .var "q", 0 0;
o0x7f87e29c7c88 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fa850_0 .net "wrenable", 0 0, o0x7f87e29c7c88;  0 drivers
E_0x2650d60 .event posedge, v0x26fa610_0;
S_0x267de10 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f87e29c7d78 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fa9d0_0 .net "clk", 0 0, o0x7f87e29c7d78;  0 drivers
o0x7f87e29c7da8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x26faab0_0 .net "d", 31 0, o0x7f87e29c7da8;  0 drivers
v0x26fab90_0 .var "q", 31 0;
o0x7f87e29c7e08 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fac50_0 .net "wrenable", 0 0, o0x7f87e29c7e08;  0 drivers
E_0x2629560 .event posedge, v0x26fa9d0_0;
S_0x267a0a0 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f87e29c7ef8 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fadd0_0 .net "clk", 0 0, o0x7f87e29c7ef8;  0 drivers
o0x7f87e29c7f28 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x26faeb0_0 .net "d", 31 0, o0x7f87e29c7f28;  0 drivers
v0x26faf90_0 .var "q", 31 0;
o0x7f87e29c7f88 .functor BUFZ 1, C4<z>; HiZ drive
v0x26fb050_0 .net "wrenable", 0 0, o0x7f87e29c7f88;  0 drivers
E_0x26f5150 .event posedge, v0x26fadd0_0;
    .scope S_0x26e82f0;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x26e86d0_0, 0;
    %end;
    .thread T_0;
    .scope S_0x26e82f0;
T_1 ;
    %wait E_0x26e8560;
    %load/vec4 v0x26e8790_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x26e8ba0_0;
    %assign/vec4 v0x26e8ac0_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x26e8790_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x26e85c0_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x26e8ac0_0, 4, 5;
    %load/vec4 v0x26e8ba0_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x26e8ac0_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x26e8ac0_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x26e8790_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x26e8980_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x26e8d40_0, 0, 32;
    %load/vec4 v0x26e8d40_0;
    %load/vec4 v0x26e8ba0_0;
    %add;
    %store/vec4 v0x26e8ac0_0, 0, 32;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x26e8c80_0;
    %assign/vec4 v0x26e8ac0_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0x26e86d0_0;
    %addi 4, 0, 32;
    %assign/vec4 v0x26e8ba0_0, 0;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x26e82f0;
T_2 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26e8ac0_0;
    %store/vec4 v0x26e86d0_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x2663320;
T_3 ;
    %wait E_0x25f09d0;
    %load/vec4 v0x264ca10_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x2650c40_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x26510b0_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x264ca10_0;
    %cmpi/e 4, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x264ca10_0;
    %cmpi/e 5, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x26510b0_0, 0, 2;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x264ca10_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x264ca10_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.4, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x26510b0_0, 0, 2;
    %jmp T_3.5;
T_3.4 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x26510b0_0, 0, 2;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x26e6f00;
T_4 ;
    %wait E_0x26e7130;
    %vpi_call 10 15 "$display", "thing %b", &A<v0x26e78e0, 1> {0 0 0};
    %load/vec4 v0x26e7b10_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %pushi/vec4 1023, 0, 32;
    %load/vec4 v0x26e71b0_0;
    %sub;
    %store/vec4 v0x26e7a30_0, 0, 32;
    %load/vec4 v0x26e72b0_0;
    %ix/getv 3, v0x26e7a30_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e78e0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x26e6f00;
T_5 ;
    %vpi_call 10 21 "$readmemh", "yeet.text", v0x26e78e0 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x265fb70;
T_6 ;
    %wait E_0x26484c0;
    %load/vec4 v0x2629490_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x2625320_0, 0, 6;
    %load/vec4 v0x2629490_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x2629850_0, 0, 6;
    %load/vec4 v0x2629490_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x261ab80_0, 0, 5;
    %load/vec4 v0x2629490_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x26164f0_0, 0, 5;
    %load/vec4 v0x2629490_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x2624f60_0, 0, 5;
    %load/vec4 v0x2629490_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x2616590_0, 0, 6;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2629910_0, 4, 16;
    %load/vec4 v0x2629490_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x2629910_0, 4, 16;
    %load/vec4 v0x2629490_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x2643a70_0, 0, 26;
    %load/vec4 v0x2625320_0;
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
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.1 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.2 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.3 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.6 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.7 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.9;
T_6.8 ;
    %load/vec4 v0x2629850_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.10, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x2629850_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x2629850_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x2629850_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x261f210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x2648060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2625260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643e30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x262da80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x261f2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2643ef0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x2624ea0_0, 0, 2;
T_6.16 ;
T_6.15 ;
T_6.13 ;
T_6.11 ;
    %jmp T_6.9;
T_6.9 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x26eb410;
T_7 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x26eb6c0;
T_8 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x26eb950;
T_9 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x26ebc00;
T_10 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x26ebf00;
T_11 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x26ec1b0;
T_12 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x26ec460;
T_13 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x26ec710;
T_14 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x26eca00;
T_15 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x26eccb0;
T_16 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x26ecf60;
T_17 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x26ed210;
T_18 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x26ed4c0;
T_19 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x26ed770;
T_20 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x26eda20;
T_21 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x26edcd0;
T_22 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x26ee020;
T_23 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x26ee2b0;
T_24 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x26ee560;
T_25 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x26ee810;
T_26 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x26eeac0;
T_27 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x26eed70;
T_28 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x26ef020;
T_29 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x26ef2d0;
T_30 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x26ef580;
T_31 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x26ef830;
T_32 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x26efae0;
T_33 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x26efd90;
T_34 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x26f0040;
T_35 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x26f02f0;
T_36 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x26f05a0;
T_37 ;
    %wait E_0x26e7130;
    %load/vec4 v0x26f72e0_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x26f7130_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26f7430, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x261dd80;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26f8fb0_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x261dd80;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x26f8fb0_0;
    %nor/r;
    %store/vec4 v0x26f8fb0_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x261dd80;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x26fa190_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x26fa250_0 {0 0 0};
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x2615060;
T_41 ;
    %wait E_0x2650d60;
    %load/vec4 v0x26fa850_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x26fa6f0_0;
    %assign/vec4 v0x26fa7b0_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x267de10;
T_42 ;
    %wait E_0x2629560;
    %load/vec4 v0x26fac50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x26faab0_0;
    %assign/vec4 v0x26fab90_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x267a0a0;
T_43 ;
    %wait E_0x26f5150;
    %load/vec4 v0x26fb050_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x26faf90_0, 0;
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
