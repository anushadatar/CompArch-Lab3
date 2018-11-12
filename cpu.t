#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xb99cf0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7fb26adcb018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7fb26adcb048 .functor BUFZ 1, C4<z>; HiZ drive
L_0xcd9c90 .functor XOR 1, o0x7fb26adcb018, o0x7fb26adcb048, C4<0>, C4<0>;
o0x7fb26adcb078 .functor BUFZ 1, C4<z>; HiZ drive
L_0xcd9d20 .functor XOR 1, L_0xcd9c90, o0x7fb26adcb078, C4<0>, C4<0>;
L_0xcd9de0 .functor AND 1, L_0xcd9c90, o0x7fb26adcb078, C4<1>, C4<1>;
L_0xcd9ea0 .functor AND 1, o0x7fb26adcb018, o0x7fb26adcb048, C4<1>, C4<1>;
L_0xcd9fb0 .functor OR 1, L_0xcd9de0, L_0xcd9ea0, C4<0>, C4<0>;
L_0xcda0c0 .functor XOR 1, L_0xcd9fb0, o0x7fb26adcb078, C4<0>, C4<0>;
v0xba4a10_0 .net "A", 0 0, o0x7fb26adcb018;  0 drivers
v0xbe9370_0 .net "B", 0 0, o0x7fb26adcb048;  0 drivers
v0xbe9430_0 .net "carryin", 0 0, o0x7fb26adcb078;  0 drivers
v0xbe5140_0 .net "carryout", 0 0, L_0xcd9fb0;  1 drivers
v0xbe5200_0 .net "out1", 0 0, L_0xcd9c90;  1 drivers
v0xbe4df0_0 .net "out2", 0 0, L_0xcd9de0;  1 drivers
v0xc4e6e0_0 .net "out3", 0 0, L_0xcd9ea0;  1 drivers
v0xc4e7a0_0 .net "overflow", 0 0, L_0xcda0c0;  1 drivers
v0xc4e320_0 .net "sum", 0 0, L_0xcd9d20;  1 drivers
S_0xbff640 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0xcd7b50_0 .var "clk", 0 0;
v0xcd8c50_0 .net "dataMem", 31 0, L_0xcda410;  1 drivers
v0xcd8d10_0 .net "regRT", 31 0, L_0xcee840;  1 drivers
S_0xc58bf0 .scope module, "cpu" "singlecycleCPU" 3 9, 4 16 0, S_0xbff640;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0xcd6b70_0 .net "ALU_op", 2 0, v0xc41150_0;  1 drivers
v0xcd6c50_0 .net "DM_WE", 0 0, v0xc2b500_0;  1 drivers
v0xcd6d10_0 .net "DM_add", 0 0, v0xc2b5c0_0;  1 drivers
v0xcd6db0_0 .net "JumpAddress", 25 0, v0xc2b140_0;  1 drivers
v0xcd6ea0_0 .net "PC", 31 0, v0xcc7130_0;  1 drivers
v0xcd6f90_0 .net "S", 1 0, v0xc49d30_0;  1 drivers
L_0x7fb26ad82b58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0xcd7080_0 .net/2u *"_s10", 31 0, L_0x7fb26ad82b58;  1 drivers
v0xcd7140_0 .net *"_s4", 29 0, L_0xcda810;  1 drivers
L_0x7fb26ad82018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0xcd7220_0 .net *"_s6", 1 0, L_0x7fb26ad82018;  1 drivers
v0xcd7390_0 .net "alu2", 31 0, L_0xd16c30;  1 drivers
v0xcd7450_0 .net "alu_out", 31 0, L_0xd13080;  1 drivers
v0xcd7560_0 .net "clk", 0 0, v0xcd7b50_0;  1 drivers
v0xcd7690_0 .net "co_flag", 0 0, L_0xcab1c0;  1 drivers
v0xcd77c0_0 .net "dataMem", 31 0, L_0xcda410;  alias, 1 drivers
v0xcd7880_0 .net "dest_add", 1 0, v0xc26b50_0;  1 drivers
v0xcd7940_0 .net "funct", 5 0, v0xc22920_0;  1 drivers
v0xcd7a50_0 .net "immediate", 31 0, v0xc229e0_0;  1 drivers
v0xcd7c00_0 .net "instruction", 31 0, L_0xcda5b0;  1 drivers
v0xcd7ca0_0 .net "op_imm", 0 0, v0xc0c950_0;  1 drivers
v0xcd7d90_0 .net "opcode", 5 0, v0xc0ca10_0;  1 drivers
v0xcd7ea0_0 .net "ov_flag", 0 0, L_0xd12c80;  1 drivers
v0xcd7fd0_0 .net "pc", 1 0, v0xc0c590_0;  1 drivers
v0xcd8090_0 .net "rd", 4 0, v0xc0c650_0;  1 drivers
v0xcd8130_0 .net "regRS", 31 0, L_0xcec050;  1 drivers
v0xcd8280_0 .net "regRT", 31 0, L_0xcee840;  alias, 1 drivers
v0xcd83d0_0 .net "reg_WE", 0 0, v0xc08360_0;  1 drivers
v0xcd8470_0 .net "reg_in", 1 0, v0xc08400_0;  1 drivers
v0xcd8530_0 .net "reg_in_mux_out", 31 0, L_0xd168f0;  1 drivers
v0xcd85f0_0 .net "reg_select_mux_out", 4 0, L_0xd162c0;  1 drivers
v0xcd86b0_0 .net "rs", 4 0, v0xc07fa0_0;  1 drivers
v0xcd8770_0 .net "rt", 4 0, v0xc03d70_0;  1 drivers
v0xcd88c0_0 .net "shamt", 5 0, v0xc03e10_0;  1 drivers
v0xcd8980_0 .net "zero_flag", 0 0, L_0xd120d0;  1 drivers
L_0xcda670 .arith/sum 32, v0xc229e0_0, L_0xcec050;
L_0xcda810 .part v0xcc7130_0, 2, 30;
L_0xcda8b0 .concat [ 30 2 0 0], L_0xcda810, L_0x7fb26ad82018;
L_0xd16a80 .arith/sum 32, v0xcc7130_0, L_0x7fb26ad82b58;
S_0xc54550 .scope module, "controlPC" "pcController" 4 49, 5 8 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0xc49d30_0 .var "controlSig", 1 0;
v0xc45b00_0 .net "function1", 5 0, v0xc22920_0;  alias, 1 drivers
v0xc45740_0 .net "opcode", 5 0, v0xc0ca10_0;  alias, 1 drivers
v0xbe0790_0 .net "zeroFlag", 0 0, L_0xd120d0;  alias, 1 drivers
E_0xbcfa80 .event edge, v0xc45b00_0, v0xbe0790_0, v0xc45740_0;
S_0xc3e690 .scope module, "decode" "instructionDecoder" 4 53, 6 20 0, S_0xc58bf0;
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
v0xc41150_0 .var "ALU_op", 2 0;
v0xc2b500_0 .var "DM_WE", 0 0;
v0xc2b5c0_0 .var "DM_add", 0 0;
v0xc2b140_0 .var "address", 25 0;
v0xc26f10_0 .net "clk", 0 0, v0xcd7b50_0;  alias, 1 drivers
v0xc26b50_0 .var "dest_add", 1 0;
v0xc22920_0 .var "funct", 5 0;
v0xc229e0_0 .var "immediate", 31 0;
v0xc22560_0 .net "instruction", 31 0, L_0xcda5b0;  alias, 1 drivers
v0xc0c950_0 .var "op_imm", 0 0;
v0xc0ca10_0 .var "opcode", 5 0;
v0xc0c590_0 .var "pc", 1 0;
v0xc0c650_0 .var "rd", 4 0;
v0xc08360_0 .var "reg_WE", 0 0;
v0xc08400_0 .var "reg_in", 1 0;
v0xc07fa0_0 .var "rs", 4 0;
v0xc03d70_0 .var "rt", 4 0;
v0xc03e10_0 .var "shamt", 5 0;
E_0xc415b0 .event edge, v0xc22560_0;
S_0xc3a000 .scope module, "lulu" "ALU" 4 59, 7 105 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0xd120d0/0/0 .functor OR 1, L_0xd018e0, L_0xd132d0, L_0xd13370, L_0xd13460;
L_0xd120d0/0/4 .functor OR 1, L_0xd13d30, L_0xd13ee0, L_0xd139f0, L_0xd13ae0;
L_0xd120d0/0/8 .functor OR 1, L_0xd13bd0, L_0xd142e0, L_0xd13f80, L_0xd14070;
L_0xd120d0/0/12 .functor OR 1, L_0xd14160, L_0xd13dd0, L_0xd14380, L_0xd14470;
L_0xd120d0/0/16 .functor OR 1, L_0xd14560, L_0xd14650, L_0xd14cc0, L_0xd14d60;
L_0xd120d0/0/20 .functor OR 1, L_0xd14910, L_0xd14a00, L_0xd14af0, L_0xd14be0;
L_0xd120d0/0/24 .functor OR 1, L_0xd14e50, L_0xd14f40, L_0xd15030, L_0xd15120;
L_0xd120d0/0/28 .functor OR 1, L_0xd15670, L_0xd14700, L_0xd147f0, L_0xd15270;
L_0xd120d0/0/32 .functor OR 1, L_0xd15360, L_0xd15450, C4<0>, C4<0>;
L_0xd120d0/1/0 .functor OR 1, L_0xd120d0/0/0, L_0xd120d0/0/4, L_0xd120d0/0/8, L_0xd120d0/0/12;
L_0xd120d0/1/4 .functor OR 1, L_0xd120d0/0/16, L_0xd120d0/0/20, L_0xd120d0/0/24, L_0xd120d0/0/28;
L_0xd120d0/1/8 .functor OR 1, L_0xd120d0/0/32, C4<0>, C4<0>, C4<0>;
L_0xd120d0 .functor NOR 1, L_0xd120d0/1/0, L_0xd120d0/1/4, L_0xd120d0/1/8, C4<0>;
v0xcc3140_0 .net "A", 31 0, L_0xcec050;  alias, 1 drivers
v0xcc3240_0 .net "B", 31 0, L_0xd16c30;  alias, 1 drivers
v0xcc3320_0 .net *"_s322", 0 0, L_0xd018e0;  1 drivers
v0xcc3410_0 .net *"_s324", 0 0, L_0xd132d0;  1 drivers
v0xcc34f0_0 .net *"_s326", 0 0, L_0xd13370;  1 drivers
v0xcc3620_0 .net *"_s328", 0 0, L_0xd13460;  1 drivers
v0xcc3700_0 .net *"_s330", 0 0, L_0xd13d30;  1 drivers
v0xcc37e0_0 .net *"_s332", 0 0, L_0xd13ee0;  1 drivers
v0xcc38c0_0 .net *"_s334", 0 0, L_0xd139f0;  1 drivers
v0xcc3a30_0 .net *"_s336", 0 0, L_0xd13ae0;  1 drivers
v0xcc3b10_0 .net *"_s338", 0 0, L_0xd13bd0;  1 drivers
v0xcc3bf0_0 .net *"_s340", 0 0, L_0xd142e0;  1 drivers
v0xcc3cd0_0 .net *"_s342", 0 0, L_0xd13f80;  1 drivers
v0xcc3db0_0 .net *"_s344", 0 0, L_0xd14070;  1 drivers
v0xcc3e90_0 .net *"_s346", 0 0, L_0xd14160;  1 drivers
v0xcc3f70_0 .net *"_s348", 0 0, L_0xd13dd0;  1 drivers
v0xcc4050_0 .net *"_s350", 0 0, L_0xd14380;  1 drivers
v0xcc4200_0 .net *"_s352", 0 0, L_0xd14470;  1 drivers
v0xcc42a0_0 .net *"_s354", 0 0, L_0xd14560;  1 drivers
v0xcc4380_0 .net *"_s356", 0 0, L_0xd14650;  1 drivers
v0xcc4460_0 .net *"_s358", 0 0, L_0xd14cc0;  1 drivers
v0xcc4540_0 .net *"_s360", 0 0, L_0xd14d60;  1 drivers
v0xcc4620_0 .net *"_s362", 0 0, L_0xd14910;  1 drivers
v0xcc4700_0 .net *"_s364", 0 0, L_0xd14a00;  1 drivers
v0xcc47e0_0 .net *"_s366", 0 0, L_0xd14af0;  1 drivers
v0xcc48c0_0 .net *"_s368", 0 0, L_0xd14be0;  1 drivers
v0xcc49a0_0 .net *"_s370", 0 0, L_0xd14e50;  1 drivers
v0xcc4a80_0 .net *"_s372", 0 0, L_0xd14f40;  1 drivers
v0xcc4b60_0 .net *"_s374", 0 0, L_0xd15030;  1 drivers
v0xcc4c40_0 .net *"_s376", 0 0, L_0xd15120;  1 drivers
v0xcc4d20_0 .net *"_s378", 0 0, L_0xd15670;  1 drivers
v0xcc4e00_0 .net *"_s380", 0 0, L_0xd14700;  1 drivers
v0xcc4ee0_0 .net *"_s382", 0 0, L_0xd147f0;  1 drivers
v0xcc4130_0 .net *"_s384", 0 0, L_0xd15270;  1 drivers
v0xcc51b0_0 .net *"_s386", 0 0, L_0xd15360;  1 drivers
v0xcc5290_0 .net *"_s388", 0 0, L_0xd15450;  1 drivers
v0xcc5370_0 .net "carryout", 0 0, L_0xcab1c0;  alias, 1 drivers
v0xcc5410_0 .net "command", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcc54d0_0 .net "cout", 30 0, L_0xd11d40;  1 drivers
v0xcc55b0_0 .net "overflow", 0 0, L_0xd12c80;  alias, 1 drivers
v0xcc5650_0 .net "result", 31 0, L_0xd13080;  alias, 1 drivers
v0xcc5730_0 .net "zero", 0 0, L_0xd120d0;  alias, 1 drivers
L_0xcef2a0 .part L_0xcec050, 0, 1;
L_0xcef340 .part L_0xd16c30, 0, 1;
L_0xcef3e0 .part v0xc41150_0, 0, 1;
L_0xcf01b0 .part L_0xcec050, 1, 1;
L_0xcf0360 .part L_0xd16c30, 1, 1;
L_0xcf0400 .part L_0xd11d40, 0, 1;
L_0xcf14d0 .part L_0xcec050, 2, 1;
L_0xcf1570 .part L_0xd16c30, 2, 1;
L_0xcf1610 .part L_0xd11d40, 1, 1;
L_0xcf2530 .part L_0xcec050, 3, 1;
L_0xcf2630 .part L_0xd16c30, 3, 1;
L_0xcf26d0 .part L_0xd11d40, 2, 1;
L_0xcf36e0 .part L_0xcec050, 4, 1;
L_0xcf3780 .part L_0xd16c30, 4, 1;
L_0xcf38a0 .part L_0xd11d40, 3, 1;
L_0xcf4940 .part L_0xcec050, 5, 1;
L_0xcf4a70 .part L_0xd16c30, 5, 1;
L_0xcf4c20 .part L_0xd11d40, 4, 1;
L_0xcf5c70 .part L_0xcec050, 6, 1;
L_0xcf5d10 .part L_0xd16c30, 6, 1;
L_0xcf4cc0 .part L_0xd11d40, 5, 1;
L_0xcf6e90 .part L_0xcec050, 7, 1;
L_0xcf5db0 .part L_0xd16c30, 7, 1;
L_0xcf6ff0 .part L_0xd11d40, 6, 1;
L_0xcf80e0 .part L_0xcec050, 8, 1;
L_0xcf8180 .part L_0xd16c30, 8, 1;
L_0xcf7120 .part L_0xd11d40, 7, 1;
L_0xcf9390 .part L_0xcec050, 9, 1;
L_0xcf8220 .part L_0xd16c30, 9, 1;
L_0xcf9640 .part L_0xd11d40, 8, 1;
L_0xcfa7e0 .part L_0xcec050, 10, 1;
L_0xcfa880 .part L_0xd16c30, 10, 1;
L_0xcfa920 .part L_0xd11d40, 9, 1;
L_0xcfb960 .part L_0xcec050, 11, 1;
L_0xcf0250 .part L_0xd16c30, 11, 1;
L_0xcfbb20 .part L_0xd11d40, 10, 1;
L_0xcfcbd0 .part L_0xcec050, 12, 1;
L_0xcfcc70 .part L_0xd16c30, 12, 1;
L_0xcfbc50 .part L_0xd11d40, 11, 1;
L_0xcfde30 .part L_0xcec050, 13, 1;
L_0xcfcd10 .part L_0xd16c30, 13, 1;
L_0xcfcdb0 .part L_0xd11d40, 12, 1;
L_0xcff190 .part L_0xcec050, 14, 1;
L_0xcff230 .part L_0xd16c30, 14, 1;
L_0xcfe230 .part L_0xd11d40, 13, 1;
L_0xd003c0 .part L_0xcec050, 15, 1;
L_0xcff2d0 .part L_0xd16c30, 15, 1;
L_0xcff370 .part L_0xd11d40, 14, 1;
L_0xd01600 .part L_0xcec050, 16, 1;
L_0xd016a0 .part L_0xd16c30, 16, 1;
L_0xd00670 .part L_0xd11d40, 15, 1;
L_0xd02920 .part L_0xcec050, 17, 1;
L_0xd01740 .part L_0xd16c30, 17, 1;
L_0xd017e0 .part L_0xd11d40, 16, 1;
L_0xd03b60 .part L_0xcec050, 18, 1;
L_0xd03c00 .part L_0xd16c30, 18, 1;
L_0xd02c00 .part L_0xd11d40, 17, 1;
L_0xd04d80 .part L_0xcec050, 19, 1;
L_0xd03ca0 .part L_0xd16c30, 19, 1;
L_0xd03d40 .part L_0xd11d40, 18, 1;
L_0xd05fb0 .part L_0xcec050, 20, 1;
L_0xd06050 .part L_0xd16c30, 20, 1;
L_0xd04e20 .part L_0xd11d40, 19, 1;
L_0xd071e0 .part L_0xcec050, 21, 1;
L_0xd060f0 .part L_0xd16c30, 21, 1;
L_0xd06190 .part L_0xd11d40, 20, 1;
L_0xd08420 .part L_0xcec050, 22, 1;
L_0xd084c0 .part L_0xd16c30, 22, 1;
L_0xd07280 .part L_0xd11d40, 21, 1;
L_0xd09650 .part L_0xcec050, 23, 1;
L_0xd08560 .part L_0xd16c30, 23, 1;
L_0xd08600 .part L_0xd11d40, 22, 1;
L_0xd0a880 .part L_0xcec050, 24, 1;
L_0xd0a920 .part L_0xd16c30, 24, 1;
L_0xd096f0 .part L_0xd11d40, 23, 1;
L_0xd0bab0 .part L_0xcec050, 25, 1;
L_0xcf9430 .part L_0xd16c30, 25, 1;
L_0xcf94d0 .part L_0xd11d40, 24, 1;
L_0xcfa6d0 .part L_0xcec050, 26, 1;
L_0xd0ce80 .part L_0xd16c30, 26, 1;
L_0xd0bf60 .part L_0xd11d40, 25, 1;
L_0xd0def0 .part L_0xcec050, 27, 1;
L_0xd0cf20 .part L_0xd16c30, 27, 1;
L_0xd0cfc0 .part L_0xd11d40, 26, 1;
L_0xd0f020 .part L_0xcec050, 28, 1;
L_0xd0f0c0 .part L_0xd16c30, 28, 1;
L_0xd0df90 .part L_0xd11d40, 27, 1;
L_0xd10140 .part L_0xcec050, 29, 1;
L_0xd0f160 .part L_0xd16c30, 29, 1;
L_0xcfe020 .part L_0xd11d40, 28, 1;
LS_0xd11d40_0_0 .concat8 [ 1 1 1 1], L_0xbcbce0, L_0xbe8ee0, L_0xc7bff0, L_0xca3e10;
LS_0xd11d40_0_4 .concat8 [ 1 1 1 1], L_0xcaf5e0, L_0xcb2fb0, L_0xcb6980, L_0xcba350;
LS_0xd11d40_0_8 .concat8 [ 1 1 1 1], L_0xcbdd20, L_0xcc16f0, L_0xbd09b0, L_0xbfc5a0;
LS_0xd11d40_0_12 .concat8 [ 1 1 1 1], L_0xc590d0, L_0xbb7d20, L_0xbd7d50, L_0xbdc040;
LS_0xd11d40_0_16 .concat8 [ 1 1 1 1], L_0xa8de20, L_0xa4e980, L_0xc74c90, L_0xc78620;
LS_0xd11d40_0_20 .concat8 [ 1 1 1 1], L_0xc7f9c0, L_0xc83390, L_0xc86d60, L_0xc8a960;
LS_0xd11d40_0_24 .concat8 [ 1 1 1 1], L_0xc8e330, L_0xc91d00, L_0xc956d0, L_0xc990a0;
LS_0xd11d40_0_28 .concat8 [ 1 1 1 0], L_0xc9ca70, L_0xca0440, L_0xca77e0;
LS_0xd11d40_1_0 .concat8 [ 4 4 4 4], LS_0xd11d40_0_0, LS_0xd11d40_0_4, LS_0xd11d40_0_8, LS_0xd11d40_0_12;
LS_0xd11d40_1_4 .concat8 [ 4 4 4 3], LS_0xd11d40_0_16, LS_0xd11d40_0_20, LS_0xd11d40_0_24, LS_0xd11d40_0_28;
L_0xd11d40 .concat8 [ 16 15 0 0], LS_0xd11d40_1_0, LS_0xd11d40_1_4;
L_0xd11ef0 .part L_0xcec050, 30, 1;
L_0xd108c0 .part L_0xd16c30, 30, 1;
L_0xd10960 .part L_0xd11d40, 29, 1;
LS_0xd13080_0_0 .concat8 [ 1 1 1 1], L_0xceeff0, L_0xcefd10, L_0xcf0e10, L_0xcf2050;
LS_0xd13080_0_4 .concat8 [ 1 1 1 1], L_0xcf30f0, L_0xcf4310, L_0xcf5640, L_0xcf6860;
LS_0xd13080_0_8 .concat8 [ 1 1 1 1], L_0xcf7ab0, L_0xcf8d60, L_0xcfa0a0, L_0xcfb330;
LS_0xd13080_0_12 .concat8 [ 1 1 1 1], L_0xcfc5a0, L_0xcfd800, L_0xcfeb60, L_0xcffd90;
LS_0xd13080_0_16 .concat8 [ 1 1 1 1], L_0xd00fd0, L_0xd022f0, L_0xd03530, L_0xd04750;
LS_0xd13080_0_20 .concat8 [ 1 1 1 1], L_0xd05980, L_0xd06bb0, L_0xd07df0, L_0xd09020;
LS_0xd13080_0_24 .concat8 [ 1 1 1 1], L_0xd0a250, L_0xd0b480, L_0xd0c6a0, L_0xd0d920;
LS_0xd13080_0_28 .concat8 [ 1 1 1 1], L_0xd0ea50, L_0xd0fb70, L_0xcc2920, L_0xd12b40;
LS_0xd13080_1_0 .concat8 [ 4 4 4 4], LS_0xd13080_0_0, LS_0xd13080_0_4, LS_0xd13080_0_8, LS_0xd13080_0_12;
LS_0xd13080_1_4 .concat8 [ 4 4 4 4], LS_0xd13080_0_16, LS_0xd13080_0_20, LS_0xd13080_0_24, LS_0xd13080_0_28;
L_0xd13080 .concat8 [ 16 16 0 0], LS_0xd13080_1_0, LS_0xd13080_1_4;
L_0xd13230 .part L_0xcec050, 31, 1;
L_0xd11f90 .part L_0xd16c30, 31, 1;
L_0xd12030 .part L_0xd11d40, 30, 1;
L_0xd018e0 .part L_0xd13080, 0, 1;
L_0xd132d0 .part L_0xd13080, 1, 1;
L_0xd13370 .part L_0xd13080, 2, 1;
L_0xd13460 .part L_0xd13080, 3, 1;
L_0xd13d30 .part L_0xd13080, 4, 1;
L_0xd13ee0 .part L_0xd13080, 5, 1;
L_0xd139f0 .part L_0xd13080, 6, 1;
L_0xd13ae0 .part L_0xd13080, 7, 1;
L_0xd13bd0 .part L_0xd13080, 8, 1;
L_0xd142e0 .part L_0xd13080, 9, 1;
L_0xd13f80 .part L_0xd13080, 10, 1;
L_0xd14070 .part L_0xd13080, 11, 1;
L_0xd14160 .part L_0xd13080, 12, 1;
L_0xd13dd0 .part L_0xd13080, 13, 1;
L_0xd14380 .part L_0xd13080, 14, 1;
L_0xd14470 .part L_0xd13080, 15, 1;
L_0xd14560 .part L_0xd13080, 16, 1;
L_0xd14650 .part L_0xd13080, 17, 1;
L_0xd14cc0 .part L_0xd13080, 18, 1;
L_0xd14d60 .part L_0xd13080, 19, 1;
L_0xd14910 .part L_0xd13080, 20, 1;
L_0xd14a00 .part L_0xd13080, 21, 1;
L_0xd14af0 .part L_0xd13080, 22, 1;
L_0xd14be0 .part L_0xd13080, 23, 1;
L_0xd14e50 .part L_0xd13080, 24, 1;
L_0xd14f40 .part L_0xd13080, 25, 1;
L_0xd15030 .part L_0xd13080, 26, 1;
L_0xd15120 .part L_0xd13080, 27, 1;
L_0xd15670 .part L_0xd13080, 28, 1;
L_0xd14700 .part L_0xd13080, 29, 1;
L_0xd147f0 .part L_0xd13080, 28, 1;
L_0xd15270 .part L_0xd13080, 29, 1;
L_0xd15360 .part L_0xd13080, 30, 1;
L_0xd15450 .part L_0xd13080, 31, 1;
S_0xc35970 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcef090 .functor BUFZ 1, L_0xceeac0, C4<0>, C4<0>, C4<0>;
L_0xcef100 .functor BUFZ 1, L_0xceeac0, C4<0>, C4<0>, C4<0>;
v0xbc9f60_0 .net "A", 0 0, L_0xcef2a0;  1 drivers
v0xbca000_0 .net "B", 0 0, L_0xcef340;  1 drivers
v0xbc9a90_0 .net "I", 7 0, L_0xcef200;  1 drivers
v0xbc9b60_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbc9610_0 .net *"_s15", 0 0, L_0xcef090;  1 drivers
v0xbc90f0_0 .net *"_s19", 0 0, L_0xcef100;  1 drivers
L_0x7fb26ad821c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbc91b0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad821c8;  1 drivers
v0xbc8c20_0 .net "addORsub", 0 0, L_0xceeac0;  1 drivers
v0xbc8cc0_0 .net "carryin", 0 0, L_0xcef3e0;  1 drivers
v0xbc87e0_0 .net "carryout", 0 0, L_0xbcbce0;  1 drivers
v0xbc8280_0 .net "modB", 0 0, L_0xcee8b0;  1 drivers
v0xbc8320_0 .net "out", 0 0, L_0xceeff0;  1 drivers
L_0xcee920 .part v0xc41150_0, 0, 1;
LS_0xcef200_0_0 .concat8 [ 1 1 1 1], L_0xcef090, L_0xcef100, L_0xceed20, L_0x7fb26ad821c8;
LS_0xcef200_0_4 .concat8 [ 1 1 1 1], L_0xbcadd0, L_0xceeea0, L_0xceef10, L_0xceef80;
L_0xcef200 .concat8 [ 4 4 0 0], LS_0xcef200_0_0, LS_0xcef200_0_4;
S_0xc312e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcee9c0 .functor XOR 1, L_0xcef2a0, L_0xcee8b0, C4<0>, C4<0>;
L_0xceeac0 .functor XOR 1, L_0xcee9c0, L_0xcef3e0, C4<0>, C4<0>;
L_0xceeb30 .functor AND 1, L_0xcee9c0, L_0xcef3e0, C4<1>, C4<1>;
L_0xceeba0 .functor AND 1, L_0xcef2a0, L_0xcee8b0, C4<1>, C4<1>;
L_0xbcbce0 .functor OR 1, L_0xceeb30, L_0xceeba0, C4<0>, C4<0>;
v0xbf50a0_0 .net "A", 0 0, L_0xcef2a0;  alias, 1 drivers
v0xbf0980_0 .net "B", 0 0, L_0xcee8b0;  alias, 1 drivers
v0xbf0a20_0 .net "carryin", 0 0, L_0xcef3e0;  alias, 1 drivers
v0xc5d940_0 .net "carryout", 0 0, L_0xbcbce0;  alias, 1 drivers
v0xc5a080_0 .net "out1", 0 0, L_0xcee9c0;  1 drivers
v0xc559e0_0 .net "out2", 0 0, L_0xceeb30;  1 drivers
v0xc55aa0_0 .net "out3", 0 0, L_0xceeba0;  1 drivers
v0xc51340_0 .net "sum", 0 0, L_0xceeac0;  alias, 1 drivers
S_0xbddce0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbcadd0 .functor AND 1, L_0xcef2a0, L_0xcef340, C4<1>, C4<1>;
v0xc3b4e0_0 .net "A", 0 0, L_0xcef2a0;  alias, 1 drivers
v0xc36e00_0 .net "B", 0 0, L_0xcef340;  alias, 1 drivers
v0xc36ea0_0 .net "out", 0 0, L_0xbcadd0;  1 drivers
S_0xc1b450 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc1c8e0_0 .net "I", 7 0, L_0xcef200;  alias, 1 drivers
v0xc18250_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc13bc0_0 .net "out", 0 0, L_0xceeff0;  alias, 1 drivers
L_0xceeff0 .part/v L_0xcef200, v0xc41150_0, 1;
S_0xc16dc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xceeea0 .functor NAND 1, L_0xcef2a0, L_0xcef340, C4<1>, C4<1>;
v0xbdaad0_0 .net "A", 0 0, L_0xcef2a0;  alias, 1 drivers
v0xbd4010_0 .net "B", 0 0, L_0xcef340;  alias, 1 drivers
v0xbd40d0_0 .net "out", 0 0, L_0xceeea0;  1 drivers
S_0xc12730 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xceef10 .functor NOR 1, L_0xcef2a0, L_0xcef340, C4<0>, C4<0>;
v0xbd63f0_0 .net "A", 0 0, L_0xcef2a0;  alias, 1 drivers
v0xa54180_0 .net "B", 0 0, L_0xcef340;  alias, 1 drivers
v0xbcc110_0 .net "out", 0 0, L_0xceef10;  1 drivers
S_0xc0ef50 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xceef80 .functor OR 1, L_0xcef2a0, L_0xcef340, C4<0>, C4<0>;
v0xbcbc40_0 .net "A", 0 0, L_0xcef2a0;  alias, 1 drivers
v0xbcb770_0 .net "B", 0 0, L_0xcef340;  alias, 1 drivers
v0xbcb830_0 .net "out", 0 0, L_0xceef80;  1 drivers
S_0xc00050 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcee8b0 .functor XOR 1, L_0xcef340, L_0xcee920, C4<0>, C4<0>;
v0xbcb2f0_0 .net "A", 0 0, L_0xcef340;  alias, 1 drivers
v0xbcae60_0 .net "B", 0 0, L_0xcee920;  1 drivers
v0xbca900_0 .net "out", 0 0, L_0xcee8b0;  alias, 1 drivers
S_0xbd9640 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc35970;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xceed20 .functor XOR 1, L_0xcef2a0, L_0xcef340, C4<0>, C4<0>;
v0xbc3580_0 .net "A", 0 0, L_0xcef2a0;  alias, 1 drivers
v0xbc3640_0 .net "B", 0 0, L_0xcef340;  alias, 1 drivers
v0xbca430_0 .net "out", 0 0, L_0xceed20;  1 drivers
S_0xbef9d0 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcefdd0 .functor BUFZ 1, L_0xcef760, C4<0>, C4<0>, C4<0>;
L_0xcefe60 .functor BUFZ 1, L_0xcef760, C4<0>, C4<0>, C4<0>;
v0xbe0340_0 .net "A", 0 0, L_0xcf01b0;  1 drivers
v0xc2acb0_0 .net "B", 0 0, L_0xcf0360;  1 drivers
v0xc2ad70_0 .net "I", 7 0, L_0xceff80;  1 drivers
v0xc220d0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc0c100_0 .net *"_s15", 0 0, L_0xcefdd0;  1 drivers
v0xc0c1c0_0 .net *"_s19", 0 0, L_0xcefe60;  1 drivers
L_0x7fb26ad82210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc07b10_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82210;  1 drivers
v0xc07bd0_0 .net "addORsub", 0 0, L_0xcef760;  1 drivers
v0xc03520_0 .net "carryin", 0 0, L_0xcf0400;  1 drivers
v0xc28b90_0 .net "carryout", 0 0, L_0xbe8ee0;  1 drivers
v0xc28c60_0 .net "modB", 0 0, L_0xcef510;  1 drivers
v0xc245a0_0 .net "out", 0 0, L_0xcefd10;  1 drivers
L_0xcef580 .part v0xc41150_0, 0, 1;
LS_0xceff80_0_0 .concat8 [ 1 1 1 1], L_0xcefdd0, L_0xcefe60, L_0xcefa00, L_0x7fb26ad82210;
LS_0xceff80_0_4 .concat8 [ 1 1 1 1], L_0xbe49d0, L_0xcefb80, L_0xcefbf0, L_0xcefc80;
L_0xceff80 .concat8 [ 4 4 0 0], LS_0xceff80_0_0, LS_0xceff80_0_4;
S_0xbeb3b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcef640 .functor XOR 1, L_0xcf01b0, L_0xcef510, C4<0>, C4<0>;
L_0xcef760 .functor XOR 1, L_0xcef640, L_0xcf0400, C4<0>, C4<0>;
L_0xcef7f0 .functor AND 1, L_0xcef640, L_0xcf0400, C4<1>, C4<1>;
L_0xcef880 .functor AND 1, L_0xcf01b0, L_0xcef510, C4<1>, C4<1>;
L_0xbe8ee0 .functor OR 1, L_0xcef7f0, L_0xcef880, C4<0>, C4<0>;
v0xbc7960_0 .net "A", 0 0, L_0xcf01b0;  alias, 1 drivers
v0xbc30b0_0 .net "B", 0 0, L_0xcef510;  alias, 1 drivers
v0xbc3170_0 .net "carryin", 0 0, L_0xcf0400;  alias, 1 drivers
v0xbc7440_0 .net "carryout", 0 0, L_0xbe8ee0;  alias, 1 drivers
v0xbc6f40_0 .net "out1", 0 0, L_0xcef640;  1 drivers
v0xbc6a70_0 .net "out2", 0 0, L_0xcef7f0;  1 drivers
v0xbc6b30_0 .net "out3", 0 0, L_0xcef880;  1 drivers
v0xbc65a0_0 .net "sum", 0 0, L_0xcef760;  alias, 1 drivers
S_0xbe6dc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbe49d0 .functor AND 1, L_0xcf01b0, L_0xcf0360, C4<1>, C4<1>;
v0xbc6120_0 .net "A", 0 0, L_0xcf01b0;  alias, 1 drivers
v0xbc5c00_0 .net "B", 0 0, L_0xcf0360;  alias, 1 drivers
v0xbc5cc0_0 .net "out", 0 0, L_0xbe49d0;  1 drivers
S_0xbe27d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbc5800_0 .net "I", 7 0, L_0xceff80;  alias, 1 drivers
v0xbc52a0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbc4d90_0 .net "out", 0 0, L_0xcefd10;  alias, 1 drivers
L_0xcefd10 .part/v L_0xceff80, v0xc41150_0, 1;
S_0xc4bd70 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcefb80 .functor NAND 1, L_0xcf01b0, L_0xcf0360, C4<1>, C4<1>;
v0xbc48c0_0 .net "A", 0 0, L_0xcf01b0;  alias, 1 drivers
v0xbc2be0_0 .net "B", 0 0, L_0xcf0360;  alias, 1 drivers
v0xbc2ca0_0 .net "out", 0 0, L_0xcefb80;  1 drivers
S_0xc47780 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcefbf0 .functor NOR 1, L_0xcf01b0, L_0xcf0360, C4<0>, C4<0>;
v0xbc3f20_0 .net "A", 0 0, L_0xcf01b0;  alias, 1 drivers
v0xbc3fe0_0 .net "B", 0 0, L_0xcf0360;  alias, 1 drivers
v0xbc3a50_0 .net "out", 0 0, L_0xcefbf0;  1 drivers
S_0xc43190 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcefc80 .functor OR 1, L_0xcf01b0, L_0xcf0360, C4<0>, C4<0>;
v0xbed520_0 .net "A", 0 0, L_0xcf01b0;  alias, 1 drivers
v0xbe8f70_0 .net "B", 0 0, L_0xcf0360;  alias, 1 drivers
v0xbe48f0_0 .net "out", 0 0, L_0xcefc80;  1 drivers
S_0xc2d180 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcef510 .functor XOR 1, L_0xcf0360, L_0xcef580, C4<0>, C4<0>;
v0xc4de90_0 .net "A", 0 0, L_0xcf0360;  alias, 1 drivers
v0xc4df50_0 .net "B", 0 0, L_0xcef580;  1 drivers
v0xc498a0_0 .net "out", 0 0, L_0xcef510;  alias, 1 drivers
S_0xbde6c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbef9d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcefa00 .functor XOR 1, L_0xcf01b0, L_0xcf0360, C4<0>, C4<0>;
v0xc45350_0 .net "A", 0 0, L_0xcf01b0;  alias, 1 drivers
v0xc40cc0_0 .net "B", 0 0, L_0xcf0360;  alias, 1 drivers
v0xc40d80_0 .net "out", 0 0, L_0xcefa00;  1 drivers
S_0xc1ffc0 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcfa200 .functor BUFZ 1, L_0xcf9980, C4<0>, C4<0>, C4<0>;
L_0xcfa290 .functor BUFZ 1, L_0xcf9980, C4<0>, C4<0>, C4<0>;
v0xbce850_0 .net "A", 0 0, L_0xcfa7e0;  1 drivers
v0xbce8f0_0 .net "B", 0 0, L_0xcfa880;  1 drivers
v0xbbc550_0 .net "I", 7 0, L_0xcfa3b0;  1 drivers
v0xbbc5f0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbce4d0_0 .net *"_s15", 0 0, L_0xcfa200;  1 drivers
v0xbce590_0 .net *"_s19", 0 0, L_0xcfa290;  1 drivers
L_0x7fb26ad82498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbce1a0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82498;  1 drivers
v0xbce280_0 .net "addORsub", 0 0, L_0xcf9980;  1 drivers
v0xbcde70_0 .net "carryin", 0 0, L_0xcfa920;  1 drivers
v0xbcd800_0 .net "carryout", 0 0, L_0xbd09b0;  1 drivers
v0xbcd8a0_0 .net "modB", 0 0, L_0xcf9770;  1 drivers
v0xbbc1d0_0 .net "out", 0 0, L_0xcfa0a0;  1 drivers
L_0xcf97e0 .part v0xc41150_0, 0, 1;
LS_0xcfa3b0_0_0 .concat8 [ 1 1 1 1], L_0xcfa200, L_0xcfa290, L_0xcf9d90, L_0x7fb26ad82498;
LS_0xcfa3b0_0_4 .concat8 [ 1 1 1 1], L_0xbcf8e0, L_0xcf9f10, L_0xcf9f80, L_0xcfa010;
L_0xcfa3b0 .concat8 [ 4 4 0 0], LS_0xcfa3b0_0_0, LS_0xcfa3b0_0_4;
S_0xc09fe0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf9880 .functor XOR 1, L_0xcfa7e0, L_0xcf9770, C4<0>, C4<0>;
L_0xcf9980 .functor XOR 1, L_0xcf9880, L_0xcfa920, C4<0>, C4<0>;
L_0xcf9a90 .functor AND 1, L_0xcf9880, L_0xcfa920, C4<1>, C4<1>;
L_0xcf9b20 .functor AND 1, L_0xcfa7e0, L_0xcf9770, C4<1>, C4<1>;
L_0xbd09b0 .functor OR 1, L_0xcf9a90, L_0xcf9b20, C4<0>, C4<0>;
v0xc059f0_0 .net "A", 0 0, L_0xcfa7e0;  alias, 1 drivers
v0xc05ad0_0 .net "B", 0 0, L_0xcf9770;  alias, 1 drivers
v0xc01400_0 .net "carryin", 0 0, L_0xcfa920;  alias, 1 drivers
v0xc014d0_0 .net "carryout", 0 0, L_0xbd09b0;  alias, 1 drivers
v0xbbcfb0_0 .net "out1", 0 0, L_0xcf9880;  1 drivers
v0xbbd0a0_0 .net "out2", 0 0, L_0xcf9a90;  1 drivers
v0xbd39a0_0 .net "out3", 0 0, L_0xcf9b20;  1 drivers
v0xbd3a60_0 .net "sum", 0 0, L_0xcf9980;  alias, 1 drivers
S_0xbd3220 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbcf8e0 .functor AND 1, L_0xcfa7e0, L_0xcfa880, C4<1>, C4<1>;
v0xbd2ef0_0 .net "A", 0 0, L_0xcfa7e0;  alias, 1 drivers
v0xbd2fb0_0 .net "B", 0 0, L_0xcfa880;  alias, 1 drivers
v0xbd2bc0_0 .net "out", 0 0, L_0xbcf8e0;  1 drivers
S_0xbd2890 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbd25e0_0 .net "I", 7 0, L_0xcfa3b0;  alias, 1 drivers
v0xbd2230_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbd22f0_0 .net "out", 0 0, L_0xcfa0a0;  alias, 1 drivers
L_0xcfa0a0 .part/v L_0xcfa3b0, v0xc41150_0, 1;
S_0xbd1bd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf9f10 .functor NAND 1, L_0xcfa7e0, L_0xcfa880, C4<1>, C4<1>;
v0xbd1fe0_0 .net "A", 0 0, L_0xcfa7e0;  alias, 1 drivers
v0xbd1910_0 .net "B", 0 0, L_0xcfa880;  alias, 1 drivers
v0xbd1570_0 .net "out", 0 0, L_0xcf9f10;  1 drivers
S_0xbd1240 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf9f80 .functor NOR 1, L_0xcfa7e0, L_0xcfa880, C4<0>, C4<0>;
v0xbd0f60_0 .net "A", 0 0, L_0xcfa7e0;  alias, 1 drivers
v0xbd0be0_0 .net "B", 0 0, L_0xcfa880;  alias, 1 drivers
v0xbd08b0_0 .net "out", 0 0, L_0xcf9f80;  1 drivers
S_0xbbc8b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfa010 .functor OR 1, L_0xcfa7e0, L_0xcfa880, C4<0>, C4<0>;
v0xbd0580_0 .net "A", 0 0, L_0xcfa7e0;  alias, 1 drivers
v0xbd0640_0 .net "B", 0 0, L_0xcfa880;  alias, 1 drivers
v0xbd0250_0 .net "out", 0 0, L_0xcfa010;  1 drivers
S_0xbcfb70 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf9770 .functor XOR 1, L_0xcfa880, L_0xcf97e0, C4<0>, C4<0>;
v0xbcf840_0 .net "A", 0 0, L_0xcfa880;  alias, 1 drivers
v0xbcf510_0 .net "B", 0 0, L_0xcf97e0;  1 drivers
v0xbcf5d0_0 .net "out", 0 0, L_0xcf9770;  alias, 1 drivers
S_0xbcf1e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc1ffc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf9d90 .functor XOR 1, L_0xcfa7e0, L_0xcfa880, C4<0>, C4<0>;
v0xbceeb0_0 .net "A", 0 0, L_0xcfa7e0;  alias, 1 drivers
v0xbcef70_0 .net "B", 0 0, L_0xcfa880;  alias, 1 drivers
v0xbceb80_0 .net "out", 0 0, L_0xcf9d90;  1 drivers
S_0xc0f540 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcfb490 .functor BUFZ 1, L_0xcfabf0, C4<0>, C4<0>, C4<0>;
L_0xcfb520 .functor BUFZ 1, L_0xcfabf0, C4<0>, C4<0>, C4<0>;
v0xc30ee0_0 .net "A", 0 0, L_0xcfb960;  1 drivers
v0xc30f80_0 .net "B", 0 0, L_0xcf0250;  1 drivers
v0xc1b050_0 .net "I", 7 0, L_0xcfb640;  1 drivers
v0xc1b120_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc16ad0_0 .net *"_s15", 0 0, L_0xcfb490;  1 drivers
v0xc12330_0 .net *"_s19", 0 0, L_0xcfb520;  1 drivers
L_0x7fb26ad824e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc123f0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad824e0;  1 drivers
v0xbd9240_0 .net "addORsub", 0 0, L_0xcfabf0;  1 drivers
v0xbd92e0_0 .net "carryin", 0 0, L_0xcfbb20;  1 drivers
v0xbebd50_0 .net "carryout", 0 0, L_0xbfc5a0;  1 drivers
v0xbebe20_0 .net "modB", 0 0, L_0xcfa9c0;  1 drivers
v0xbe7760_0 .net "out", 0 0, L_0xcfb330;  1 drivers
L_0xcfaa30 .part v0xc41150_0, 0, 1;
LS_0xcfb640_0_0 .concat8 [ 1 1 1 1], L_0xcfb490, L_0xcfb520, L_0xcfb020, L_0x7fb26ad824e0;
LS_0xcfb640_0_4 .concat8 [ 1 1 1 1], L_0xbef600, L_0xcfb1a0, L_0xcfb210, L_0xcfb2a0;
L_0xcfb640 .concat8 [ 4 4 0 0], LS_0xcfb640_0_0, LS_0xcfb640_0_4;
S_0xc6ab90 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcfaad0 .functor XOR 1, L_0xcfb960, L_0xcfa9c0, C4<0>, C4<0>;
L_0xcfabf0 .functor XOR 1, L_0xcfaad0, L_0xcfbb20, C4<0>, C4<0>;
L_0xcfad20 .functor AND 1, L_0xcfaad0, L_0xcfbb20, C4<1>, C4<1>;
L_0xcfadb0 .functor AND 1, L_0xcfb960, L_0xcfa9c0, C4<1>, C4<1>;
L_0xbfc5a0 .functor OR 1, L_0xcfad20, L_0xcfadb0, C4<0>, C4<0>;
v0xbcd370_0 .net "A", 0 0, L_0xcfb960;  alias, 1 drivers
v0xbcd450_0 .net "B", 0 0, L_0xcfa9c0;  alias, 1 drivers
v0xbbb5d0_0 .net "carryin", 0 0, L_0xcfbb20;  alias, 1 drivers
v0xbbb6a0_0 .net "carryout", 0 0, L_0xbfc5a0;  alias, 1 drivers
v0xc67e80_0 .net "out1", 0 0, L_0xcfaad0;  1 drivers
v0xc6a270_0 .net "out2", 0 0, L_0xcfad20;  1 drivers
v0xc6a330_0 .net "out3", 0 0, L_0xcfadb0;  1 drivers
v0xc4ea40_0 .net "sum", 0 0, L_0xcfabf0;  alias, 1 drivers
S_0xbe9fe0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbef600 .functor AND 1, L_0xcfb960, L_0xcf0250, C4<1>, C4<1>;
v0xbe59f0_0 .net "A", 0 0, L_0xcfb960;  alias, 1 drivers
v0xbe5ab0_0 .net "B", 0 0, L_0xcf0250;  alias, 1 drivers
v0xbe1400_0 .net "out", 0 0, L_0xbef600;  1 drivers
S_0xc4ef90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc4a9a0_0 .net "I", 7 0, L_0xcfb640;  alias, 1 drivers
v0xc4aa60_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc463b0_0 .net "out", 0 0, L_0xcfb330;  alias, 1 drivers
L_0xcfb330 .part/v L_0xcfb640, v0xc41150_0, 1;
S_0xc41dc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfb1a0 .functor NAND 1, L_0xcfb960, L_0xcf0250, C4<1>, C4<1>;
v0xc2be00_0 .net "A", 0 0, L_0xcfb960;  alias, 1 drivers
v0xc277c0_0 .net "B", 0 0, L_0xcf0250;  alias, 1 drivers
v0xc27860_0 .net "out", 0 0, L_0xcfb1a0;  1 drivers
S_0xc231d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfb210 .functor NOR 1, L_0xcfb960, L_0xcf0250, C4<0>, C4<0>;
v0xc0d2a0_0 .net "A", 0 0, L_0xcfb960;  alias, 1 drivers
v0xc08c10_0 .net "B", 0 0, L_0xcf0250;  alias, 1 drivers
v0xc08d00_0 .net "out", 0 0, L_0xcfb210;  1 drivers
S_0xc04620 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfb2a0 .functor OR 1, L_0xcfb960, L_0xcf0250, C4<0>, C4<0>;
v0xbfc500_0 .net "A", 0 0, L_0xcfb960;  alias, 1 drivers
v0xbf7e20_0 .net "B", 0 0, L_0xcf0250;  alias, 1 drivers
v0xbf7ec0_0 .net "out", 0 0, L_0xcfb2a0;  1 drivers
S_0xbf3790 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfa9c0 .functor XOR 1, L_0xcf0250, L_0xcfaa30, C4<0>, C4<0>;
v0xbef540_0 .net "A", 0 0, L_0xcf0250;  alias, 1 drivers
v0xc587f0_0 .net "B", 0 0, L_0xcfaa30;  1 drivers
v0xc588b0_0 .net "out", 0 0, L_0xcfa9c0;  alias, 1 drivers
S_0xc54150 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc0f540;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfb020 .functor XOR 1, L_0xcfb960, L_0xcf0250, C4<0>, C4<0>;
v0xc39c50_0 .net "A", 0 0, L_0xcfb960;  alias, 1 drivers
v0xc39d10_0 .net "B", 0 0, L_0xcf0250;  alias, 1 drivers
v0xc35570_0 .net "out", 0 0, L_0xcfb020;  1 drivers
S_0xbe3170 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcfc700 .functor BUFZ 1, L_0xcfbe80, C4<0>, C4<0>, C4<0>;
L_0xcfc790 .functor BUFZ 1, L_0xcfbe80, C4<0>, C4<0>, C4<0>;
v0xc172a0_0 .net "A", 0 0, L_0xcfcbd0;  1 drivers
v0xc17340_0 .net "B", 0 0, L_0xcfcc70;  1 drivers
v0xc12c10_0 .net "I", 7 0, L_0xcfc8b0;  1 drivers
v0xc12d10_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbd9b20_0 .net *"_s15", 0 0, L_0xcfc700;  1 drivers
v0xbd9be0_0 .net *"_s19", 0 0, L_0xcfc790;  1 drivers
L_0x7fb26ad82528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbe9a90_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82528;  1 drivers
v0xbe9b70_0 .net "addORsub", 0 0, L_0xcfbe80;  1 drivers
v0xbe54a0_0 .net "carryin", 0 0, L_0xcfbc50;  1 drivers
v0xbe0eb0_0 .net "carryout", 0 0, L_0xc590d0;  1 drivers
v0xbe0f80_0 .net "modB", 0 0, L_0xcf02f0;  1 drivers
v0xc4a450_0 .net "out", 0 0, L_0xcfc5a0;  1 drivers
L_0xcfba00 .part v0xc41150_0, 0, 1;
LS_0xcfc8b0_0_0 .concat8 [ 1 1 1 1], L_0xcfc700, L_0xcfc790, L_0xcfc290, L_0x7fb26ad82528;
LS_0xcfc8b0_0_4 .concat8 [ 1 1 1 1], L_0xc3a4e0, L_0xcfc410, L_0xcfc480, L_0xcfc510;
L_0xcfc8b0 .concat8 [ 4 4 0 0], LS_0xcfc8b0_0_0, LS_0xcfc8b0_0_4;
S_0xc48120 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcfbd80 .functor XOR 1, L_0xcfcbd0, L_0xcf02f0, C4<0>, C4<0>;
L_0xcfbe80 .functor XOR 1, L_0xcfbd80, L_0xcfbc50, C4<0>, C4<0>;
L_0xcfbf90 .functor AND 1, L_0xcfbd80, L_0xcfbc50, C4<1>, C4<1>;
L_0xcfc000 .functor AND 1, L_0xcfcbd0, L_0xcf02f0, C4<1>, C4<1>;
L_0xc590d0 .functor OR 1, L_0xcfbf90, L_0xcfc000, C4<0>, C4<0>;
v0xc43b30_0 .net "A", 0 0, L_0xcfcbd0;  alias, 1 drivers
v0xc43c10_0 .net "B", 0 0, L_0xcf02f0;  alias, 1 drivers
v0xc3f550_0 .net "carryin", 0 0, L_0xcfbc50;  alias, 1 drivers
v0xc3f610_0 .net "carryout", 0 0, L_0xc590d0;  alias, 1 drivers
v0xc2db20_0 .net "out1", 0 0, L_0xcfbd80;  1 drivers
v0xc2dc30_0 .net "out2", 0 0, L_0xcfbf90;  1 drivers
v0xc29530_0 .net "out3", 0 0, L_0xcfc000;  1 drivers
v0xc295f0_0 .net "sum", 0 0, L_0xcfbe80;  alias, 1 drivers
S_0xc24f40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc3a4e0 .functor AND 1, L_0xcfcbd0, L_0xcfcc70, C4<1>, C4<1>;
v0xc209b0_0 .net "A", 0 0, L_0xcfcbd0;  alias, 1 drivers
v0xc20a70_0 .net "B", 0 0, L_0xcfcc70;  alias, 1 drivers
v0xc0a980_0 .net "out", 0 0, L_0xc3a4e0;  1 drivers
S_0xc06390 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc01df0_0 .net "I", 7 0, L_0xcfc8b0;  alias, 1 drivers
v0xbbcc10_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbbccd0_0 .net "out", 0 0, L_0xcfc5a0;  alias, 1 drivers
L_0xcfc5a0 .part/v L_0xcfc8b0, v0xc41150_0, 1;
S_0xbb1280 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfc410 .functor NAND 1, L_0xcfcbd0, L_0xcfcc70, C4<1>, C4<1>;
v0xbb0de0_0 .net "A", 0 0, L_0xcfcbd0;  alias, 1 drivers
v0xc5d320_0 .net "B", 0 0, L_0xcfcc70;  alias, 1 drivers
v0xc5d3e0_0 .net "out", 0 0, L_0xcfc410;  1 drivers
S_0xbd4ec0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfc480 .functor NOR 1, L_0xcfcbd0, L_0xcfcc70, C4<0>, C4<0>;
v0xbfce30_0 .net "A", 0 0, L_0xcfcbd0;  alias, 1 drivers
v0xbf8700_0 .net "B", 0 0, L_0xcfcc70;  alias, 1 drivers
v0xbf8810_0 .net "out", 0 0, L_0xcfc480;  1 drivers
S_0xbf4070 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfc510 .functor OR 1, L_0xcfcbd0, L_0xcfcc70, C4<0>, C4<0>;
v0xc5cee0_0 .net "A", 0 0, L_0xcfcbd0;  alias, 1 drivers
v0xc59160_0 .net "B", 0 0, L_0xcfcc70;  alias, 1 drivers
v0xc54a30_0 .net "out", 0 0, L_0xcfc510;  1 drivers
S_0xc3eb70 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf02f0 .functor XOR 1, L_0xcfcc70, L_0xcfba00, C4<0>, C4<0>;
v0xc54b30_0 .net "A", 0 0, L_0xcfcc70;  alias, 1 drivers
v0xc3a570_0 .net "B", 0 0, L_0xcfba00;  1 drivers
v0xc35e50_0 .net "out", 0 0, L_0xcf02f0;  alias, 1 drivers
S_0xc317c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbe3170;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfc290 .functor XOR 1, L_0xcfcbd0, L_0xcfcc70, C4<0>, C4<0>;
v0xc35f30_0 .net "A", 0 0, L_0xcfcbd0;  alias, 1 drivers
v0xc1b930_0 .net "B", 0 0, L_0xcfcc70;  alias, 1 drivers
v0xc1b9f0_0 .net "out", 0 0, L_0xcfc290;  1 drivers
S_0xc45e60 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcfd960 .functor BUFZ 1, L_0xcfd0c0, C4<0>, C4<0>, C4<0>;
L_0xcfd9f0 .functor BUFZ 1, L_0xcfd0c0, C4<0>, C4<0>, C4<0>;
v0xbb5be0_0 .net "A", 0 0, L_0xcfde30;  1 drivers
v0xbb55e0_0 .net "B", 0 0, L_0xcfcd10;  1 drivers
v0xbb56a0_0 .net "I", 7 0, L_0xcfdb10;  1 drivers
v0xbb5110_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbb51b0_0 .net *"_s15", 0 0, L_0xcfd960;  1 drivers
v0xbb4c40_0 .net *"_s19", 0 0, L_0xcfd9f0;  1 drivers
L_0x7fb26ad82570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbb4d20_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82570;  1 drivers
v0xbb4770_0 .net "addORsub", 0 0, L_0xcfd0c0;  1 drivers
v0xbb4810_0 .net "carryin", 0 0, L_0xcfcdb0;  1 drivers
v0xbb42a0_0 .net "carryout", 0 0, L_0xbb7d20;  1 drivers
v0xbb4370_0 .net "modB", 0 0, L_0xcfce50;  1 drivers
v0xbb3dd0_0 .net "out", 0 0, L_0xcfd800;  1 drivers
L_0xcfcec0 .part v0xc41150_0, 0, 1;
LS_0xcfdb10_0_0 .concat8 [ 1 1 1 1], L_0xcfd960, L_0xcfd9f0, L_0xcfd4f0, L_0x7fb26ad82570;
LS_0xcfdb10_0_4 .concat8 [ 1 1 1 1], L_0xbb6e90, L_0xcfd670, L_0xcfd6e0, L_0xcfd770;
L_0xcfdb10 .concat8 [ 4 4 0 0], LS_0xcfdb10_0_0, LS_0xcfdb10_0_4;
S_0xc41870 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcfcf80 .functor XOR 1, L_0xcfde30, L_0xcfce50, C4<0>, C4<0>;
L_0xcfd0c0 .functor XOR 1, L_0xcfcf80, L_0xcfcdb0, C4<0>, C4<0>;
L_0xcfd1f0 .functor AND 1, L_0xcfcf80, L_0xcfcdb0, C4<1>, C4<1>;
L_0xcfd280 .functor AND 1, L_0xcfde30, L_0xcfce50, C4<1>, C4<1>;
L_0xbb7d20 .functor OR 1, L_0xcfd1f0, L_0xcfd280, C4<0>, C4<0>;
v0xc2b8e0_0 .net "A", 0 0, L_0xcfde30;  alias, 1 drivers
v0xc27270_0 .net "B", 0 0, L_0xcfce50;  alias, 1 drivers
v0xc27330_0 .net "carryin", 0 0, L_0xcfcdb0;  alias, 1 drivers
v0xc22c80_0 .net "carryout", 0 0, L_0xbb7d20;  alias, 1 drivers
v0xc22d40_0 .net "out1", 0 0, L_0xcfcf80;  1 drivers
v0xc0ccb0_0 .net "out2", 0 0, L_0xcfd1f0;  1 drivers
v0xc0cd70_0 .net "out3", 0 0, L_0xcfd280;  1 drivers
v0xc086c0_0 .net "sum", 0 0, L_0xcfd0c0;  alias, 1 drivers
S_0xc040d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbb6e90 .functor AND 1, L_0xcfde30, L_0xcfcd10, C4<1>, C4<1>;
v0xbffa40_0 .net "A", 0 0, L_0xcfde30;  alias, 1 drivers
v0xbffae0_0 .net "B", 0 0, L_0xcfcd10;  alias, 1 drivers
v0xbccc90_0 .net "out", 0 0, L_0xbb6e90;  1 drivers
S_0xbba2e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbb9e10_0 .net "I", 7 0, L_0xcfdb10;  alias, 1 drivers
v0xbb9ef0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbb9940_0 .net "out", 0 0, L_0xcfd800;  alias, 1 drivers
L_0xcfd800 .part/v L_0xcfdb10, v0xc41150_0, 1;
S_0xbb9470 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfd670 .functor NAND 1, L_0xcfde30, L_0xcfcd10, C4<1>, C4<1>;
v0xbb9a60_0 .net "A", 0 0, L_0xcfde30;  alias, 1 drivers
v0xbb8ff0_0 .net "B", 0 0, L_0xcfcd10;  alias, 1 drivers
v0xbb90b0_0 .net "out", 0 0, L_0xcfd670;  1 drivers
S_0xbb8ad0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfd6e0 .functor NOR 1, L_0xcfde30, L_0xcfcd10, C4<0>, C4<0>;
v0xbb17e0_0 .net "A", 0 0, L_0xcfde30;  alias, 1 drivers
v0xbb8600_0 .net "B", 0 0, L_0xcfcd10;  alias, 1 drivers
v0xbb8710_0 .net "out", 0 0, L_0xcfd6e0;  1 drivers
S_0xbb8130 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfd770 .functor OR 1, L_0xcfde30, L_0xcfcd10, C4<0>, C4<0>;
v0xbb7c60_0 .net "A", 0 0, L_0xcfde30;  alias, 1 drivers
v0xbb7790_0 .net "B", 0 0, L_0xcfcd10;  alias, 1 drivers
v0xbb7850_0 .net "out", 0 0, L_0xcfd770;  1 drivers
S_0xbb72c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfce50 .functor XOR 1, L_0xcfcd10, L_0xcfcec0, C4<0>, C4<0>;
v0xbb6df0_0 .net "A", 0 0, L_0xcfcd10;  alias, 1 drivers
v0xbb6f20_0 .net "B", 0 0, L_0xcfcec0;  1 drivers
v0xbb6920_0 .net "out", 0 0, L_0xcfce50;  alias, 1 drivers
S_0xbb6450 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc45e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfd4f0 .functor XOR 1, L_0xcfde30, L_0xcfcd10, C4<0>, C4<0>;
v0xbb5f80_0 .net "A", 0 0, L_0xcfde30;  alias, 1 drivers
v0xbb6040_0 .net "B", 0 0, L_0xcfcd10;  alias, 1 drivers
v0xbb5ab0_0 .net "out", 0 0, L_0xcfd4f0;  1 drivers
S_0xbb3900 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcfecc0 .functor BUFZ 1, L_0xcfe420, C4<0>, C4<0>, C4<0>;
L_0xcfed50 .functor BUFZ 1, L_0xcfe420, C4<0>, C4<0>, C4<0>;
v0xc56e90_0 .net "A", 0 0, L_0xcff190;  1 drivers
v0xc56f30_0 .net "B", 0 0, L_0xcff230;  1 drivers
v0xc52fe0_0 .net "I", 7 0, L_0xcfee70;  1 drivers
v0xc530e0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc52be0_0 .net *"_s15", 0 0, L_0xcfecc0;  1 drivers
v0xc52ca0_0 .net *"_s19", 0 0, L_0xcfed50;  1 drivers
L_0x7fb26ad825b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc527f0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad825b8;  1 drivers
v0xc528d0_0 .net "addORsub", 0 0, L_0xcfe420;  1 drivers
v0xc3d120_0 .net "carryin", 0 0, L_0xcfe230;  1 drivers
v0xc3d250_0 .net "carryout", 0 0, L_0xbd7d50;  1 drivers
v0xc3cd20_0 .net "modB", 0 0, L_0xcf4ba0;  1 drivers
v0xc3cdc0_0 .net "out", 0 0, L_0xcfeb60;  1 drivers
L_0xcfded0 .part v0xc41150_0, 0, 1;
LS_0xcfee70_0_0 .concat8 [ 1 1 1 1], L_0xcfecc0, L_0xcfed50, L_0xcfe850, L_0x7fb26ad825b8;
LS_0xcfee70_0_4 .concat8 [ 1 1 1 1], L_0xbf1e30, L_0xcfe9d0, L_0xcfea40, L_0xcfead0;
L_0xcfee70 .concat8 [ 4 4 0 0], LS_0xcfee70_0_0, LS_0xcfee70_0_4;
S_0xbb3430 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcfdf90 .functor XOR 1, L_0xcff190, L_0xcf4ba0, C4<0>, C4<0>;
L_0xcfe420 .functor XOR 1, L_0xcfdf90, L_0xcfe230, C4<0>, C4<0>;
L_0xcfe550 .functor AND 1, L_0xcfdf90, L_0xcfe230, C4<1>, C4<1>;
L_0xcfe5e0 .functor AND 1, L_0xcff190, L_0xcf4ba0, C4<1>, C4<1>;
L_0xbd7d50 .functor OR 1, L_0xcfe550, L_0xcfe5e0, C4<0>, C4<0>;
v0xbb2fe0_0 .net "A", 0 0, L_0xcff190;  alias, 1 drivers
v0xbb2a90_0 .net "B", 0 0, L_0xcf4ba0;  alias, 1 drivers
v0xbb2b50_0 .net "carryin", 0 0, L_0xcfe230;  alias, 1 drivers
v0xbb25b0_0 .net "carryout", 0 0, L_0xbd7d50;  alias, 1 drivers
v0xbb2670_0 .net "out1", 0 0, L_0xcfdf90;  1 drivers
v0xbb20e0_0 .net "out2", 0 0, L_0xcfe550;  1 drivers
v0xbb2180_0 .net "out3", 0 0, L_0xcfe5e0;  1 drivers
v0xbb1c00_0 .net "sum", 0 0, L_0xcfe420;  alias, 1 drivers
S_0xbbaef0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbf1e30 .functor AND 1, L_0xcff190, L_0xcff230, C4<1>, C4<1>;
v0xb98970_0 .net "A", 0 0, L_0xcff190;  alias, 1 drivers
v0xb98a30_0 .net "B", 0 0, L_0xcff230;  alias, 1 drivers
v0xb98260_0 .net "out", 0 0, L_0xbf1e30;  1 drivers
S_0xb990b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xafc990_0 .net "I", 7 0, L_0xcfee70;  alias, 1 drivers
v0xafca50_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbd80d0_0 .net "out", 0 0, L_0xcfeb60;  alias, 1 drivers
L_0xcfeb60 .part/v L_0xcfee70, v0xc41150_0, 1;
S_0xbfb340 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfe9d0 .functor NAND 1, L_0xcff190, L_0xcff230, C4<1>, C4<1>;
v0xbfaf40_0 .net "A", 0 0, L_0xcff190;  alias, 1 drivers
v0xbfb050_0 .net "B", 0 0, L_0xcff230;  alias, 1 drivers
v0xbfab50_0 .net "out", 0 0, L_0xcfe9d0;  1 drivers
S_0xbf6cb0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfea40 .functor NOR 1, L_0xcff190, L_0xcff230, C4<0>, C4<0>;
v0xbfac60_0 .net "A", 0 0, L_0xcff190;  alias, 1 drivers
v0xbf68b0_0 .net "B", 0 0, L_0xcff230;  alias, 1 drivers
v0xbf69a0_0 .net "out", 0 0, L_0xcfea40;  1 drivers
S_0xbf64c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfead0 .functor OR 1, L_0xcff190, L_0xcff230, C4<0>, C4<0>;
v0xbd7cb0_0 .net "A", 0 0, L_0xcff190;  alias, 1 drivers
v0xbd7de0_0 .net "B", 0 0, L_0xcff230;  alias, 1 drivers
v0xbf2620_0 .net "out", 0 0, L_0xcfead0;  1 drivers
S_0xbf2220 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf4ba0 .functor XOR 1, L_0xcff230, L_0xcfded0, C4<0>, C4<0>;
v0xbf2750_0 .net "A", 0 0, L_0xcff230;  alias, 1 drivers
v0xbf1ec0_0 .net "B", 0 0, L_0xcfded0;  1 drivers
v0xbd7890_0 .net "out", 0 0, L_0xcf4ba0;  alias, 1 drivers
S_0xc57680 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbb3900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfe850 .functor XOR 1, L_0xcff190, L_0xcff230, C4<0>, C4<0>;
v0xbd79a0_0 .net "A", 0 0, L_0xcff190;  alias, 1 drivers
v0xc57280_0 .net "B", 0 0, L_0xcff230;  alias, 1 drivers
v0xc57340_0 .net "out", 0 0, L_0xcfe850;  1 drivers
S_0xc3c930 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcffef0 .functor BUFZ 1, L_0xcff650, C4<0>, C4<0>, C4<0>;
L_0xcfff80 .functor BUFZ 1, L_0xcff650, C4<0>, C4<0>, C4<0>;
v0xbfbac0_0 .net "A", 0 0, L_0xd003c0;  1 drivers
v0xbf7300_0 .net "B", 0 0, L_0xcff2d0;  1 drivers
v0xbf73c0_0 .net "I", 7 0, L_0xd000a0;  1 drivers
v0xbf2c70_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc5e1a0_0 .net *"_s15", 0 0, L_0xcffef0;  1 drivers
v0xc169c0_0 .net *"_s19", 0 0, L_0xcfff80;  1 drivers
L_0x7fb26ad82600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbf2d10_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82600;  1 drivers
v0xbee5d0_0 .net "addORsub", 0 0, L_0xcff650;  1 drivers
v0xbee670_0 .net "carryin", 0 0, L_0xcff370;  1 drivers
v0xc57cd0_0 .net "carryout", 0 0, L_0xbdc040;  1 drivers
v0xc57da0_0 .net "modB", 0 0, L_0xcff440;  1 drivers
v0xc53630_0 .net "out", 0 0, L_0xcffd90;  1 drivers
L_0xcff4b0 .part v0xc41150_0, 0, 1;
LS_0xd000a0_0_0 .concat8 [ 1 1 1 1], L_0xcffef0, L_0xcfff80, L_0xcffa80, L_0x7fb26ad82600;
LS_0xd000a0_0_4 .concat8 [ 1 1 1 1], L_0xc15120, L_0xcffc00, L_0xcffc70, L_0xcffd00;
L_0xd000a0 .concat8 [ 4 4 0 0], LS_0xd000a0_0_0, LS_0xd000a0_0_4;
S_0xc38690 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcff550 .functor XOR 1, L_0xd003c0, L_0xcff440, C4<0>, C4<0>;
L_0xcff650 .functor XOR 1, L_0xcff550, L_0xcff370, C4<0>, C4<0>;
L_0xcff780 .functor AND 1, L_0xcff550, L_0xcff370, C4<1>, C4<1>;
L_0xcff810 .functor AND 1, L_0xd003c0, L_0xcff440, C4<1>, C4<1>;
L_0xbdc040 .functor OR 1, L_0xcff780, L_0xcff810, C4<0>, C4<0>;
v0xc38b30_0 .net "A", 0 0, L_0xd003c0;  alias, 1 drivers
v0xc382a0_0 .net "B", 0 0, L_0xcff440;  alias, 1 drivers
v0xc38360_0 .net "carryin", 0 0, L_0xcff370;  alias, 1 drivers
v0xc34400_0 .net "carryout", 0 0, L_0xbdc040;  alias, 1 drivers
v0xc344c0_0 .net "out1", 0 0, L_0xcff550;  1 drivers
v0xc34000_0 .net "out2", 0 0, L_0xcff780;  1 drivers
v0xc340c0_0 .net "out3", 0 0, L_0xcff810;  1 drivers
v0xc33c10_0 .net "sum", 0 0, L_0xcff650;  alias, 1 drivers
S_0xc2fd70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc15120 .functor AND 1, L_0xd003c0, L_0xcff2d0, C4<1>, C4<1>;
v0xc2f970_0 .net "A", 0 0, L_0xd003c0;  alias, 1 drivers
v0xc2fa30_0 .net "B", 0 0, L_0xcff2d0;  alias, 1 drivers
v0xc2f590_0 .net "out", 0 0, L_0xc15120;  1 drivers
S_0xbdc770 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc2f6b0_0 .net "I", 7 0, L_0xd000a0;  alias, 1 drivers
v0xbdc370_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbdc430_0 .net "out", 0 0, L_0xcffd90;  alias, 1 drivers
L_0xcffd90 .part/v L_0xd000a0, v0xc41150_0, 1;
S_0xc1e570 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcffc00 .functor NAND 1, L_0xd003c0, L_0xcff2d0, C4<1>, C4<1>;
v0xc1e170_0 .net "A", 0 0, L_0xd003c0;  alias, 1 drivers
v0xc1e280_0 .net "B", 0 0, L_0xcff2d0;  alias, 1 drivers
v0xc1dd80_0 .net "out", 0 0, L_0xcffc00;  1 drivers
S_0xc19ee0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcffc70 .functor NOR 1, L_0xd003c0, L_0xcff2d0, C4<0>, C4<0>;
v0xc1de90_0 .net "A", 0 0, L_0xd003c0;  alias, 1 drivers
v0xc19ae0_0 .net "B", 0 0, L_0xcff2d0;  alias, 1 drivers
v0xc19bd0_0 .net "out", 0 0, L_0xcffc70;  1 drivers
S_0xc196f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcffd00 .functor OR 1, L_0xd003c0, L_0xcff2d0, C4<0>, C4<0>;
v0xbdbf80_0 .net "A", 0 0, L_0xd003c0;  alias, 1 drivers
v0xc15850_0 .net "B", 0 0, L_0xcff2d0;  alias, 1 drivers
v0xc15910_0 .net "out", 0 0, L_0xcffd00;  1 drivers
S_0xc15450 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcff440 .functor XOR 1, L_0xcff2d0, L_0xcff4b0, C4<0>, C4<0>;
v0xc15060_0 .net "A", 0 0, L_0xcff2d0;  alias, 1 drivers
v0xc111c0_0 .net "B", 0 0, L_0xcff4b0;  1 drivers
v0xc11280_0 .net "out", 0 0, L_0xcff440;  alias, 1 drivers
S_0xc10dc0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc3c930;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcffa80 .functor XOR 1, L_0xd003c0, L_0xcff2d0, C4<0>, C4<0>;
v0xc109d0_0 .net "A", 0 0, L_0xd003c0;  alias, 1 drivers
v0xc10a90_0 .net "B", 0 0, L_0xcff2d0;  alias, 1 drivers
v0xbfb990_0 .net "out", 0 0, L_0xcffa80;  1 drivers
S_0xc3d770 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd01130 .functor BUFZ 1, L_0xd00890, C4<0>, C4<0>, C4<0>;
L_0xd011c0 .functor BUFZ 1, L_0xd00890, C4<0>, C4<0>, C4<0>;
v0xa8ea00_0 .net "A", 0 0, L_0xd01600;  1 drivers
v0xa8eaa0_0 .net "B", 0 0, L_0xd016a0;  1 drivers
v0xa8eb60_0 .net "I", 7 0, L_0xd012e0;  1 drivers
v0xa910c0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xa91160_0 .net *"_s15", 0 0, L_0xd01130;  1 drivers
v0xa91270_0 .net *"_s19", 0 0, L_0xd011c0;  1 drivers
L_0x7fb26ad82648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xa91350_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82648;  1 drivers
v0xa91430_0 .net "addORsub", 0 0, L_0xd00890;  1 drivers
v0xa91e50_0 .net "carryin", 0 0, L_0xd00670;  1 drivers
v0xa91f20_0 .net "carryout", 0 0, L_0xa8de20;  1 drivers
v0xa91ff0_0 .net "modB", 0 0, L_0xd00460;  1 drivers
v0xa92090_0 .net "out", 0 0, L_0xd00fd0;  1 drivers
L_0xd004d0 .part v0xc41150_0, 0, 1;
LS_0xd012e0_0_0 .concat8 [ 1 1 1 1], L_0xd01130, L_0xd011c0, L_0xd00cc0, L_0x7fb26ad82648;
LS_0xd012e0_0_4 .concat8 [ 1 1 1 1], L_0xa8f860, L_0xd00e40, L_0xd00eb0, L_0xd00f40;
L_0xd012e0 .concat8 [ 4 4 0 0], LS_0xd012e0_0_0, LS_0xd012e0_0_4;
S_0xc34a50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd00570 .functor XOR 1, L_0xd01600, L_0xd00460, C4<0>, C4<0>;
L_0xd00890 .functor XOR 1, L_0xd00570, L_0xd00670, C4<0>, C4<0>;
L_0xd009c0 .functor AND 1, L_0xd00570, L_0xd00670, C4<1>, C4<1>;
L_0xd00a50 .functor AND 1, L_0xd01600, L_0xd00460, C4<1>, C4<1>;
L_0xa8de20 .functor OR 1, L_0xd009c0, L_0xd00a50, C4<0>, C4<0>;
v0xc39180_0 .net "A", 0 0, L_0xd01600;  alias, 1 drivers
v0xc303c0_0 .net "B", 0 0, L_0xd00460;  alias, 1 drivers
v0xc30480_0 .net "carryin", 0 0, L_0xd00670;  alias, 1 drivers
v0xbdcdc0_0 .net "carryout", 0 0, L_0xa8de20;  alias, 1 drivers
v0xbdce80_0 .net "out1", 0 0, L_0xd00570;  1 drivers
v0xc1ebc0_0 .net "out2", 0 0, L_0xd009c0;  1 drivers
v0xc1ec80_0 .net "out3", 0 0, L_0xd00a50;  1 drivers
v0xc1a530_0 .net "sum", 0 0, L_0xd00890;  alias, 1 drivers
S_0xc15ea0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xa8f860 .functor AND 1, L_0xd01600, L_0xd016a0, C4<1>, C4<1>;
v0xc11810_0 .net "A", 0 0, L_0xd01600;  alias, 1 drivers
v0xc118d0_0 .net "B", 0 0, L_0xd016a0;  alias, 1 drivers
v0xbd8720_0 .net "out", 0 0, L_0xa8f860;  1 drivers
S_0xc5b7f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc5b9a0_0 .net "I", 7 0, L_0xd012e0;  alias, 1 drivers
v0xc5ba80_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xbd8840_0 .net "out", 0 0, L_0xd00fd0;  alias, 1 drivers
L_0xd00fd0 .part/v L_0xd012e0, v0xc41150_0, 1;
S_0xc5ea30 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd00e40 .functor NAND 1, L_0xd01600, L_0xd016a0, C4<1>, C4<1>;
v0xc5ec00_0 .net "A", 0 0, L_0xd01600;  alias, 1 drivers
v0xa72a40_0 .net "B", 0 0, L_0xd016a0;  alias, 1 drivers
v0xa72b00_0 .net "out", 0 0, L_0xd00e40;  1 drivers
S_0xa72be0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd00eb0 .functor NOR 1, L_0xd01600, L_0xd016a0, C4<0>, C4<0>;
v0xa6e480_0 .net "A", 0 0, L_0xd01600;  alias, 1 drivers
v0xa6e540_0 .net "B", 0 0, L_0xd016a0;  alias, 1 drivers
v0xa6e650_0 .net "out", 0 0, L_0xd00eb0;  1 drivers
S_0xa8db40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd00f40 .functor OR 1, L_0xd01600, L_0xd016a0, C4<0>, C4<0>;
v0xa8dd60_0 .net "A", 0 0, L_0xd01600;  alias, 1 drivers
v0xa8deb0_0 .net "B", 0 0, L_0xd016a0;  alias, 1 drivers
v0xa6e750_0 .net "out", 0 0, L_0xd00f40;  1 drivers
S_0xa8f620 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd00460 .functor XOR 1, L_0xd016a0, L_0xd004d0, C4<0>, C4<0>;
v0xa8f7a0_0 .net "A", 0 0, L_0xd016a0;  alias, 1 drivers
v0xa8f8f0_0 .net "B", 0 0, L_0xd004d0;  1 drivers
v0xa90370_0 .net "out", 0 0, L_0xd00460;  alias, 1 drivers
S_0xa904b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc3d770;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd00cc0 .functor XOR 1, L_0xd01600, L_0xd016a0, C4<0>, C4<0>;
v0xa90630_0 .net "A", 0 0, L_0xd01600;  alias, 1 drivers
v0xa906f0_0 .net "B", 0 0, L_0xd016a0;  alias, 1 drivers
v0xa8e8d0_0 .net "out", 0 0, L_0xd00cc0;  1 drivers
S_0xa93ea0 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd02450 .functor BUFZ 1, L_0xd01bf0, C4<0>, C4<0>, C4<0>;
L_0xd024e0 .functor BUFZ 1, L_0xd01bf0, C4<0>, C4<0>, C4<0>;
v0xa96450_0 .net "A", 0 0, L_0xd02920;  1 drivers
v0xa964f0_0 .net "B", 0 0, L_0xd01740;  1 drivers
v0xa965b0_0 .net "I", 7 0, L_0xd02600;  1 drivers
v0xa966b0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xa96750_0 .net *"_s15", 0 0, L_0xd02450;  1 drivers
v0x9fad40_0 .net *"_s19", 0 0, L_0xd024e0;  1 drivers
L_0x7fb26ad82690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x9fae20_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82690;  1 drivers
v0x9faf00_0 .net "addORsub", 0 0, L_0xd01bf0;  1 drivers
v0x9fafa0_0 .net "carryin", 0 0, L_0xd017e0;  1 drivers
v0xa5a710_0 .net "carryout", 0 0, L_0xa4e980;  1 drivers
v0xa5a7e0_0 .net "modB", 0 0, L_0xcf8390;  1 drivers
v0xa5a880_0 .net "out", 0 0, L_0xd022f0;  1 drivers
L_0xcf8400 .part v0xc41150_0, 0, 1;
LS_0xd02600_0_0 .concat8 [ 1 1 1 1], L_0xd02450, L_0xd024e0, L_0xd01fe0, L_0x7fb26ad82690;
LS_0xd02600_0_4 .concat8 [ 1 1 1 1], L_0xa6c420, L_0xd02160, L_0xd021d0, L_0xd02260;
L_0xd02600 .concat8 [ 4 4 0 0], LS_0xd02600_0_0, LS_0xd02600_0_4;
S_0xa94110 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd01af0 .functor XOR 1, L_0xd02920, L_0xcf8390, C4<0>, C4<0>;
L_0xd01bf0 .functor XOR 1, L_0xd01af0, L_0xd017e0, C4<0>, C4<0>;
L_0xd01d00 .functor AND 1, L_0xd01af0, L_0xd017e0, C4<1>, C4<1>;
L_0xd01d70 .functor AND 1, L_0xd02920, L_0xcf8390, C4<1>, C4<1>;
L_0xa4e980 .functor OR 1, L_0xd01d00, L_0xd01d70, C4<0>, C4<0>;
v0xa92190_0 .net "A", 0 0, L_0xd02920;  alias, 1 drivers
v0xaa40c0_0 .net "B", 0 0, L_0xcf8390;  alias, 1 drivers
v0xaa4180_0 .net "carryin", 0 0, L_0xd017e0;  alias, 1 drivers
v0xaa4250_0 .net "carryout", 0 0, L_0xa4e980;  alias, 1 drivers
v0xaa4310_0 .net "out1", 0 0, L_0xd01af0;  1 drivers
v0xaa4420_0 .net "out2", 0 0, L_0xd01d00;  1 drivers
v0xa4c5a0_0 .net "out3", 0 0, L_0xd01d70;  1 drivers
v0xa4c660_0 .net "sum", 0 0, L_0xd01bf0;  alias, 1 drivers
S_0xa4c7c0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xa6c420 .functor AND 1, L_0xd02920, L_0xd01740, C4<1>, C4<1>;
v0xa34f20_0 .net "A", 0 0, L_0xd02920;  alias, 1 drivers
v0xa34fe0_0 .net "B", 0 0, L_0xd01740;  alias, 1 drivers
v0xa35080_0 .net "out", 0 0, L_0xa6c420;  1 drivers
S_0xa48be0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xa48e30_0 .net "I", 7 0, L_0xd02600;  alias, 1 drivers
v0xa48f30_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xa351a0_0 .net "out", 0 0, L_0xd022f0;  alias, 1 drivers
L_0xd022f0 .part/v L_0xd02600, v0xc41150_0, 1;
S_0xa8c9f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd02160 .functor NAND 1, L_0xd02920, L_0xd01740, C4<1>, C4<1>;
v0xa8cc10_0 .net "A", 0 0, L_0xd02920;  alias, 1 drivers
v0xa8cd20_0 .net "B", 0 0, L_0xd01740;  alias, 1 drivers
v0xa68860_0 .net "out", 0 0, L_0xd02160;  1 drivers
S_0xa68960 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd021d0 .functor NOR 1, L_0xd02920, L_0xd01740, C4<0>, C4<0>;
v0xa68bd0_0 .net "A", 0 0, L_0xd02920;  alias, 1 drivers
v0xa4d760_0 .net "B", 0 0, L_0xd01740;  alias, 1 drivers
v0xa4d870_0 .net "out", 0 0, L_0xd021d0;  1 drivers
S_0xa4d970 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd02260 .functor OR 1, L_0xd02920, L_0xd01740, C4<0>, C4<0>;
v0xa4e8e0_0 .net "A", 0 0, L_0xd02920;  alias, 1 drivers
v0xa4ea10_0 .net "B", 0 0, L_0xd01740;  alias, 1 drivers
v0xa4ead0_0 .net "out", 0 0, L_0xd02260;  1 drivers
S_0xa6c190 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf8390 .functor XOR 1, L_0xd01740, L_0xcf8400, C4<0>, C4<0>;
v0xa6c360_0 .net "A", 0 0, L_0xd01740;  alias, 1 drivers
v0xa6c4b0_0 .net "B", 0 0, L_0xcf8400;  1 drivers
v0xa4ebd0_0 .net "out", 0 0, L_0xcf8390;  alias, 1 drivers
S_0xa6a060 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xa93ea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd01fe0 .functor XOR 1, L_0xd02920, L_0xd01740, C4<0>, C4<0>;
v0xa6a230_0 .net "A", 0 0, L_0xd02920;  alias, 1 drivers
v0xa6a2f0_0 .net "B", 0 0, L_0xd01740;  alias, 1 drivers
v0xa6a3b0_0 .net "out", 0 0, L_0xd01fe0;  1 drivers
S_0xa5a990 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd03690 .functor BUFZ 1, L_0xd02e50, C4<0>, C4<0>, C4<0>;
L_0xd03720 .functor BUFZ 1, L_0xd02e50, C4<0>, C4<0>, C4<0>;
v0xc75880_0 .net "A", 0 0, L_0xd03b60;  1 drivers
v0xc75920_0 .net "B", 0 0, L_0xd03c00;  1 drivers
v0xc759e0_0 .net "I", 7 0, L_0xd03840;  1 drivers
v0xc75ae0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc75b80_0 .net *"_s15", 0 0, L_0xd03690;  1 drivers
v0xc75c90_0 .net *"_s19", 0 0, L_0xd03720;  1 drivers
L_0x7fb26ad826d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc75d70_0 .net/2s *"_s23", 0 0, L_0x7fb26ad826d8;  1 drivers
v0xc75e50_0 .net "addORsub", 0 0, L_0xd02e50;  1 drivers
v0xc75ef0_0 .net "carryin", 0 0, L_0xd02c00;  1 drivers
v0xc76050_0 .net "carryout", 0 0, L_0xc74c90;  1 drivers
v0xc76120_0 .net "modB", 0 0, L_0xd029c0;  1 drivers
v0xc761c0_0 .net "out", 0 0, L_0xd03530;  1 drivers
L_0xd02a30 .part v0xc41150_0, 0, 1;
LS_0xd03840_0_0 .concat8 [ 1 1 1 1], L_0xd03690, L_0xd03720, L_0xd03240, L_0x7fb26ad826d8;
LS_0xd03840_0_4 .concat8 [ 1 1 1 1], L_0xc75170, L_0xd033c0, L_0xd03430, L_0xd034a0;
L_0xd03840 .concat8 [ 4 4 0 0], LS_0xd03840_0_0, LS_0xd03840_0_4;
S_0xa642e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd02ad0 .functor XOR 1, L_0xd03b60, L_0xd029c0, C4<0>, C4<0>;
L_0xd02e50 .functor XOR 1, L_0xd02ad0, L_0xd02c00, C4<0>, C4<0>;
L_0xd02f60 .functor AND 1, L_0xd02ad0, L_0xd02c00, C4<1>, C4<1>;
L_0xd02fd0 .functor AND 1, L_0xd03b60, L_0xd029c0, C4<1>, C4<1>;
L_0xc74c90 .functor OR 1, L_0xd02f60, L_0xd02fd0, C4<0>, C4<0>;
v0xa64560_0 .net "A", 0 0, L_0xd03b60;  alias, 1 drivers
v0xa65700_0 .net "B", 0 0, L_0xd029c0;  alias, 1 drivers
v0xa657c0_0 .net "carryin", 0 0, L_0xd02c00;  alias, 1 drivers
v0xa65890_0 .net "carryout", 0 0, L_0xc74c90;  alias, 1 drivers
v0xa65950_0 .net "out1", 0 0, L_0xd02ad0;  1 drivers
v0xa66ee0_0 .net "out2", 0 0, L_0xd02f60;  1 drivers
v0xa66fa0_0 .net "out3", 0 0, L_0xd02fd0;  1 drivers
v0xa67060_0 .net "sum", 0 0, L_0xd02e50;  alias, 1 drivers
S_0xa9a690 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc75170 .functor AND 1, L_0xd03b60, L_0xd03c00, C4<1>, C4<1>;
v0xa9a8d0_0 .net "A", 0 0, L_0xd03b60;  alias, 1 drivers
v0xa9a990_0 .net "B", 0 0, L_0xd03c00;  alias, 1 drivers
v0xa671c0_0 .net "out", 0 0, L_0xc75170;  1 drivers
S_0xa767a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xa769f0_0 .net "I", 7 0, L_0xd03840;  alias, 1 drivers
v0xa76ad0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc73f20_0 .net "out", 0 0, L_0xd03530;  alias, 1 drivers
L_0xd03530 .part/v L_0xd03840, v0xc41150_0, 1;
S_0xc73fc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd033c0 .functor NAND 1, L_0xd03b60, L_0xd03c00, C4<1>, C4<1>;
v0xc74190_0 .net "A", 0 0, L_0xd03b60;  alias, 1 drivers
v0xc742a0_0 .net "B", 0 0, L_0xd03c00;  alias, 1 drivers
v0xc74360_0 .net "out", 0 0, L_0xd033c0;  1 drivers
S_0xc74470 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd03430 .functor NOR 1, L_0xd03b60, L_0xd03c00, C4<0>, C4<0>;
v0xc746e0_0 .net "A", 0 0, L_0xd03b60;  alias, 1 drivers
v0xc747a0_0 .net "B", 0 0, L_0xd03c00;  alias, 1 drivers
v0xc748b0_0 .net "out", 0 0, L_0xd03430;  1 drivers
S_0xc749b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd034a0 .functor OR 1, L_0xd03b60, L_0xd03c00, C4<0>, C4<0>;
v0xc74bd0_0 .net "A", 0 0, L_0xd03b60;  alias, 1 drivers
v0xc74d20_0 .net "B", 0 0, L_0xd03c00;  alias, 1 drivers
v0xc74de0_0 .net "out", 0 0, L_0xd034a0;  1 drivers
S_0xc74ee0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd029c0 .functor XOR 1, L_0xd03c00, L_0xd02a30, C4<0>, C4<0>;
v0xc750b0_0 .net "A", 0 0, L_0xd03c00;  alias, 1 drivers
v0xc75200_0 .net "B", 0 0, L_0xd02a30;  1 drivers
v0xc752c0_0 .net "out", 0 0, L_0xd029c0;  alias, 1 drivers
S_0xc75400 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xa5a990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd03240 .functor XOR 1, L_0xd03b60, L_0xd03c00, C4<0>, C4<0>;
v0xc755d0_0 .net "A", 0 0, L_0xd03b60;  alias, 1 drivers
v0xc75690_0 .net "B", 0 0, L_0xd03c00;  alias, 1 drivers
v0xc75750_0 .net "out", 0 0, L_0xd03240;  1 drivers
S_0xc762a0 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd048b0 .functor BUFZ 1, L_0xd04010, C4<0>, C4<0>, C4<0>;
L_0xd04940 .functor BUFZ 1, L_0xd04010, C4<0>, C4<0>, C4<0>;
v0xc79210_0 .net "A", 0 0, L_0xd04d80;  1 drivers
v0xc792b0_0 .net "B", 0 0, L_0xd03ca0;  1 drivers
v0xc79370_0 .net "I", 7 0, L_0xd04a60;  1 drivers
v0xc79470_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc79510_0 .net *"_s15", 0 0, L_0xd048b0;  1 drivers
v0xc79620_0 .net *"_s19", 0 0, L_0xd04940;  1 drivers
L_0x7fb26ad82720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc79700_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82720;  1 drivers
v0xc797e0_0 .net "addORsub", 0 0, L_0xd04010;  1 drivers
v0xc79880_0 .net "carryin", 0 0, L_0xd03d40;  1 drivers
v0xc799e0_0 .net "carryout", 0 0, L_0xc78620;  1 drivers
v0xc79ab0_0 .net "modB", 0 0, L_0xd02d30;  1 drivers
v0xc79b50_0 .net "out", 0 0, L_0xd04750;  1 drivers
L_0xd03e70 .part v0xc41150_0, 0, 1;
LS_0xd04a60_0_0 .concat8 [ 1 1 1 1], L_0xd048b0, L_0xd04940, L_0xd04440, L_0x7fb26ad82720;
LS_0xd04a60_0_4 .concat8 [ 1 1 1 1], L_0xc78b00, L_0xd045c0, L_0xd04630, L_0xd046c0;
L_0xd04a60 .concat8 [ 4 4 0 0], LS_0xd04a60_0_0, LS_0xd04a60_0_4;
S_0xc76510 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd03f10 .functor XOR 1, L_0xd04d80, L_0xd02d30, C4<0>, C4<0>;
L_0xd04010 .functor XOR 1, L_0xd03f10, L_0xd03d40, C4<0>, C4<0>;
L_0xd04140 .functor AND 1, L_0xd03f10, L_0xd03d40, C4<1>, C4<1>;
L_0xd041d0 .functor AND 1, L_0xd04d80, L_0xd02d30, C4<1>, C4<1>;
L_0xc78620 .functor OR 1, L_0xd04140, L_0xd041d0, C4<0>, C4<0>;
v0xc767b0_0 .net "A", 0 0, L_0xd04d80;  alias, 1 drivers
v0xc76890_0 .net "B", 0 0, L_0xd02d30;  alias, 1 drivers
v0xc76950_0 .net "carryin", 0 0, L_0xd03d40;  alias, 1 drivers
v0xc76a20_0 .net "carryout", 0 0, L_0xc78620;  alias, 1 drivers
v0xc76ae0_0 .net "out1", 0 0, L_0xd03f10;  1 drivers
v0xc76bf0_0 .net "out2", 0 0, L_0xd04140;  1 drivers
v0xc76cb0_0 .net "out3", 0 0, L_0xd041d0;  1 drivers
v0xc76d70_0 .net "sum", 0 0, L_0xd04010;  alias, 1 drivers
S_0xc76ed0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc78b00 .functor AND 1, L_0xd04d80, L_0xd03ca0, C4<1>, C4<1>;
v0xc77110_0 .net "A", 0 0, L_0xd04d80;  alias, 1 drivers
v0xc771d0_0 .net "B", 0 0, L_0xd03ca0;  alias, 1 drivers
v0xc77270_0 .net "out", 0 0, L_0xc78b00;  1 drivers
S_0xc773c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc77610_0 .net "I", 7 0, L_0xd04a60;  alias, 1 drivers
v0xc776f0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc777b0_0 .net "out", 0 0, L_0xd04750;  alias, 1 drivers
L_0xd04750 .part/v L_0xd04a60, v0xc41150_0, 1;
S_0xc77900 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd045c0 .functor NAND 1, L_0xd04d80, L_0xd03ca0, C4<1>, C4<1>;
v0xc77b20_0 .net "A", 0 0, L_0xd04d80;  alias, 1 drivers
v0xc77c30_0 .net "B", 0 0, L_0xd03ca0;  alias, 1 drivers
v0xc77cf0_0 .net "out", 0 0, L_0xd045c0;  1 drivers
S_0xc77e00 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd04630 .functor NOR 1, L_0xd04d80, L_0xd03ca0, C4<0>, C4<0>;
v0xc78070_0 .net "A", 0 0, L_0xd04d80;  alias, 1 drivers
v0xc78130_0 .net "B", 0 0, L_0xd03ca0;  alias, 1 drivers
v0xc78240_0 .net "out", 0 0, L_0xd04630;  1 drivers
S_0xc78340 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd046c0 .functor OR 1, L_0xd04d80, L_0xd03ca0, C4<0>, C4<0>;
v0xc78560_0 .net "A", 0 0, L_0xd04d80;  alias, 1 drivers
v0xc786b0_0 .net "B", 0 0, L_0xd03ca0;  alias, 1 drivers
v0xc78770_0 .net "out", 0 0, L_0xd046c0;  1 drivers
S_0xc78870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd02d30 .functor XOR 1, L_0xd03ca0, L_0xd03e70, C4<0>, C4<0>;
v0xc78a40_0 .net "A", 0 0, L_0xd03ca0;  alias, 1 drivers
v0xc78b90_0 .net "B", 0 0, L_0xd03e70;  1 drivers
v0xc78c50_0 .net "out", 0 0, L_0xd02d30;  alias, 1 drivers
S_0xc78d90 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc762a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd04440 .functor XOR 1, L_0xd04d80, L_0xd03ca0, C4<0>, C4<0>;
v0xc78f60_0 .net "A", 0 0, L_0xd04d80;  alias, 1 drivers
v0xc79020_0 .net "B", 0 0, L_0xd03ca0;  alias, 1 drivers
v0xc790e0_0 .net "out", 0 0, L_0xd04440;  1 drivers
S_0xc79c70 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf0f70 .functor BUFZ 1, L_0xcf0740, C4<0>, C4<0>, C4<0>;
L_0xcf1000 .functor BUFZ 1, L_0xcf0740, C4<0>, C4<0>, C4<0>;
v0xc7cbe0_0 .net "A", 0 0, L_0xcf14d0;  1 drivers
v0xc7cc80_0 .net "B", 0 0, L_0xcf1570;  1 drivers
v0xc7cd40_0 .net "I", 7 0, L_0xcf1120;  1 drivers
v0xc7ce40_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc7cee0_0 .net *"_s15", 0 0, L_0xcf0f70;  1 drivers
v0xc7cff0_0 .net *"_s19", 0 0, L_0xcf1000;  1 drivers
L_0x7fb26ad82258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc7d0d0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82258;  1 drivers
v0xc7d1b0_0 .net "addORsub", 0 0, L_0xcf0740;  1 drivers
v0xc7d250_0 .net "carryin", 0 0, L_0xcf1610;  1 drivers
v0xc7d3b0_0 .net "carryout", 0 0, L_0xc7bff0;  1 drivers
v0xc7d480_0 .net "modB", 0 0, L_0xcf0530;  1 drivers
v0xc7d520_0 .net "out", 0 0, L_0xcf0e10;  1 drivers
L_0xcf05a0 .part v0xc41150_0, 0, 1;
LS_0xcf1120_0_0 .concat8 [ 1 1 1 1], L_0xcf0f70, L_0xcf1000, L_0xcf0b00, L_0x7fb26ad82258;
LS_0xcf1120_0_4 .concat8 [ 1 1 1 1], L_0xc7c4d0, L_0xcf0c80, L_0xcf0cf0, L_0xcf0d80;
L_0xcf1120 .concat8 [ 4 4 0 0], LS_0xcf1120_0_0, LS_0xcf1120_0_4;
S_0xc79ee0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf0640 .functor XOR 1, L_0xcf14d0, L_0xcf0530, C4<0>, C4<0>;
L_0xcf0740 .functor XOR 1, L_0xcf0640, L_0xcf1610, C4<0>, C4<0>;
L_0xcf0800 .functor AND 1, L_0xcf0640, L_0xcf1610, C4<1>, C4<1>;
L_0xcf0890 .functor AND 1, L_0xcf14d0, L_0xcf0530, C4<1>, C4<1>;
L_0xc7bff0 .functor OR 1, L_0xcf0800, L_0xcf0890, C4<0>, C4<0>;
v0xc7a180_0 .net "A", 0 0, L_0xcf14d0;  alias, 1 drivers
v0xc7a260_0 .net "B", 0 0, L_0xcf0530;  alias, 1 drivers
v0xc7a320_0 .net "carryin", 0 0, L_0xcf1610;  alias, 1 drivers
v0xc7a3f0_0 .net "carryout", 0 0, L_0xc7bff0;  alias, 1 drivers
v0xc7a4b0_0 .net "out1", 0 0, L_0xcf0640;  1 drivers
v0xc7a5c0_0 .net "out2", 0 0, L_0xcf0800;  1 drivers
v0xc7a680_0 .net "out3", 0 0, L_0xcf0890;  1 drivers
v0xc7a740_0 .net "sum", 0 0, L_0xcf0740;  alias, 1 drivers
S_0xc7a8a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc7c4d0 .functor AND 1, L_0xcf14d0, L_0xcf1570, C4<1>, C4<1>;
v0xc7aae0_0 .net "A", 0 0, L_0xcf14d0;  alias, 1 drivers
v0xc7aba0_0 .net "B", 0 0, L_0xcf1570;  alias, 1 drivers
v0xc7ac40_0 .net "out", 0 0, L_0xc7c4d0;  1 drivers
S_0xc7ad90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc7afe0_0 .net "I", 7 0, L_0xcf1120;  alias, 1 drivers
v0xc7b0c0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc7b180_0 .net "out", 0 0, L_0xcf0e10;  alias, 1 drivers
L_0xcf0e10 .part/v L_0xcf1120, v0xc41150_0, 1;
S_0xc7b2d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf0c80 .functor NAND 1, L_0xcf14d0, L_0xcf1570, C4<1>, C4<1>;
v0xc7b4f0_0 .net "A", 0 0, L_0xcf14d0;  alias, 1 drivers
v0xc7b600_0 .net "B", 0 0, L_0xcf1570;  alias, 1 drivers
v0xc7b6c0_0 .net "out", 0 0, L_0xcf0c80;  1 drivers
S_0xc7b7d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf0cf0 .functor NOR 1, L_0xcf14d0, L_0xcf1570, C4<0>, C4<0>;
v0xc7ba40_0 .net "A", 0 0, L_0xcf14d0;  alias, 1 drivers
v0xc7bb00_0 .net "B", 0 0, L_0xcf1570;  alias, 1 drivers
v0xc7bc10_0 .net "out", 0 0, L_0xcf0cf0;  1 drivers
S_0xc7bd10 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf0d80 .functor OR 1, L_0xcf14d0, L_0xcf1570, C4<0>, C4<0>;
v0xc7bf30_0 .net "A", 0 0, L_0xcf14d0;  alias, 1 drivers
v0xc7c080_0 .net "B", 0 0, L_0xcf1570;  alias, 1 drivers
v0xc7c140_0 .net "out", 0 0, L_0xcf0d80;  1 drivers
S_0xc7c240 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf0530 .functor XOR 1, L_0xcf1570, L_0xcf05a0, C4<0>, C4<0>;
v0xc7c410_0 .net "A", 0 0, L_0xcf1570;  alias, 1 drivers
v0xc7c560_0 .net "B", 0 0, L_0xcf05a0;  1 drivers
v0xc7c620_0 .net "out", 0 0, L_0xcf0530;  alias, 1 drivers
S_0xc7c760 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc79c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf0b00 .functor XOR 1, L_0xcf14d0, L_0xcf1570, C4<0>, C4<0>;
v0xc7c930_0 .net "A", 0 0, L_0xcf14d0;  alias, 1 drivers
v0xc7c9f0_0 .net "B", 0 0, L_0xcf1570;  alias, 1 drivers
v0xc7cab0_0 .net "out", 0 0, L_0xcf0b00;  1 drivers
S_0xc7d640 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd05ae0 .functor BUFZ 1, L_0xd05240, C4<0>, C4<0>, C4<0>;
L_0xd05b70 .functor BUFZ 1, L_0xd05240, C4<0>, C4<0>, C4<0>;
v0xc805b0_0 .net "A", 0 0, L_0xd05fb0;  1 drivers
v0xc80650_0 .net "B", 0 0, L_0xd06050;  1 drivers
v0xc80710_0 .net "I", 7 0, L_0xd05c90;  1 drivers
v0xc80810_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc808b0_0 .net *"_s15", 0 0, L_0xd05ae0;  1 drivers
v0xc809c0_0 .net *"_s19", 0 0, L_0xd05b70;  1 drivers
L_0x7fb26ad82768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc80aa0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82768;  1 drivers
v0xc80b80_0 .net "addORsub", 0 0, L_0xd05240;  1 drivers
v0xc80c20_0 .net "carryin", 0 0, L_0xd04e20;  1 drivers
v0xc80d80_0 .net "carryout", 0 0, L_0xc7f9c0;  1 drivers
v0xc80e50_0 .net "modB", 0 0, L_0xd05010;  1 drivers
v0xc80ef0_0 .net "out", 0 0, L_0xd05980;  1 drivers
L_0xd05080 .part v0xc41150_0, 0, 1;
LS_0xd05c90_0_0 .concat8 [ 1 1 1 1], L_0xd05ae0, L_0xd05b70, L_0xd05670, L_0x7fb26ad82768;
LS_0xd05c90_0_4 .concat8 [ 1 1 1 1], L_0xc7fea0, L_0xd057f0, L_0xd05860, L_0xd058f0;
L_0xd05c90 .concat8 [ 4 4 0 0], LS_0xd05c90_0_0, LS_0xd05c90_0_4;
S_0xc7d8b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd05120 .functor XOR 1, L_0xd05fb0, L_0xd05010, C4<0>, C4<0>;
L_0xd05240 .functor XOR 1, L_0xd05120, L_0xd04e20, C4<0>, C4<0>;
L_0xd05370 .functor AND 1, L_0xd05120, L_0xd04e20, C4<1>, C4<1>;
L_0xd05400 .functor AND 1, L_0xd05fb0, L_0xd05010, C4<1>, C4<1>;
L_0xc7f9c0 .functor OR 1, L_0xd05370, L_0xd05400, C4<0>, C4<0>;
v0xc7db50_0 .net "A", 0 0, L_0xd05fb0;  alias, 1 drivers
v0xc7dc30_0 .net "B", 0 0, L_0xd05010;  alias, 1 drivers
v0xc7dcf0_0 .net "carryin", 0 0, L_0xd04e20;  alias, 1 drivers
v0xc7ddc0_0 .net "carryout", 0 0, L_0xc7f9c0;  alias, 1 drivers
v0xc7de80_0 .net "out1", 0 0, L_0xd05120;  1 drivers
v0xc7df90_0 .net "out2", 0 0, L_0xd05370;  1 drivers
v0xc7e050_0 .net "out3", 0 0, L_0xd05400;  1 drivers
v0xc7e110_0 .net "sum", 0 0, L_0xd05240;  alias, 1 drivers
S_0xc7e270 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc7fea0 .functor AND 1, L_0xd05fb0, L_0xd06050, C4<1>, C4<1>;
v0xc7e4b0_0 .net "A", 0 0, L_0xd05fb0;  alias, 1 drivers
v0xc7e570_0 .net "B", 0 0, L_0xd06050;  alias, 1 drivers
v0xc7e610_0 .net "out", 0 0, L_0xc7fea0;  1 drivers
S_0xc7e760 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc7e9b0_0 .net "I", 7 0, L_0xd05c90;  alias, 1 drivers
v0xc7ea90_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc7eb50_0 .net "out", 0 0, L_0xd05980;  alias, 1 drivers
L_0xd05980 .part/v L_0xd05c90, v0xc41150_0, 1;
S_0xc7eca0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd057f0 .functor NAND 1, L_0xd05fb0, L_0xd06050, C4<1>, C4<1>;
v0xc7eec0_0 .net "A", 0 0, L_0xd05fb0;  alias, 1 drivers
v0xc7efd0_0 .net "B", 0 0, L_0xd06050;  alias, 1 drivers
v0xc7f090_0 .net "out", 0 0, L_0xd057f0;  1 drivers
S_0xc7f1a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd05860 .functor NOR 1, L_0xd05fb0, L_0xd06050, C4<0>, C4<0>;
v0xc7f410_0 .net "A", 0 0, L_0xd05fb0;  alias, 1 drivers
v0xc7f4d0_0 .net "B", 0 0, L_0xd06050;  alias, 1 drivers
v0xc7f5e0_0 .net "out", 0 0, L_0xd05860;  1 drivers
S_0xc7f6e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd058f0 .functor OR 1, L_0xd05fb0, L_0xd06050, C4<0>, C4<0>;
v0xc7f900_0 .net "A", 0 0, L_0xd05fb0;  alias, 1 drivers
v0xc7fa50_0 .net "B", 0 0, L_0xd06050;  alias, 1 drivers
v0xc7fb10_0 .net "out", 0 0, L_0xd058f0;  1 drivers
S_0xc7fc10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd05010 .functor XOR 1, L_0xd06050, L_0xd05080, C4<0>, C4<0>;
v0xc7fde0_0 .net "A", 0 0, L_0xd06050;  alias, 1 drivers
v0xc7ff30_0 .net "B", 0 0, L_0xd05080;  1 drivers
v0xc7fff0_0 .net "out", 0 0, L_0xd05010;  alias, 1 drivers
S_0xc80130 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc7d640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd05670 .functor XOR 1, L_0xd05fb0, L_0xd06050, C4<0>, C4<0>;
v0xc80300_0 .net "A", 0 0, L_0xd05fb0;  alias, 1 drivers
v0xc803c0_0 .net "B", 0 0, L_0xd06050;  alias, 1 drivers
v0xc80480_0 .net "out", 0 0, L_0xd05670;  1 drivers
S_0xc81010 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd06d10 .functor BUFZ 1, L_0xd06490, C4<0>, C4<0>, C4<0>;
L_0xd06da0 .functor BUFZ 1, L_0xd06490, C4<0>, C4<0>, C4<0>;
v0xc83f80_0 .net "A", 0 0, L_0xd071e0;  1 drivers
v0xc84020_0 .net "B", 0 0, L_0xd060f0;  1 drivers
v0xc840e0_0 .net "I", 7 0, L_0xd06ec0;  1 drivers
v0xc841e0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc84280_0 .net *"_s15", 0 0, L_0xd06d10;  1 drivers
v0xc84390_0 .net *"_s19", 0 0, L_0xd06da0;  1 drivers
L_0x7fb26ad827b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc84470_0 .net/2s *"_s23", 0 0, L_0x7fb26ad827b0;  1 drivers
v0xc84550_0 .net "addORsub", 0 0, L_0xd06490;  1 drivers
v0xc845f0_0 .net "carryin", 0 0, L_0xd06190;  1 drivers
v0xc84750_0 .net "carryout", 0 0, L_0xc83390;  1 drivers
v0xc84820_0 .net "modB", 0 0, L_0xd04f50;  1 drivers
v0xc848c0_0 .net "out", 0 0, L_0xd06bb0;  1 drivers
L_0xd062f0 .part v0xc41150_0, 0, 1;
LS_0xd06ec0_0_0 .concat8 [ 1 1 1 1], L_0xd06d10, L_0xd06da0, L_0xd068a0, L_0x7fb26ad827b0;
LS_0xd06ec0_0_4 .concat8 [ 1 1 1 1], L_0xc83870, L_0xd06a20, L_0xd06a90, L_0xd06b20;
L_0xd06ec0 .concat8 [ 4 4 0 0], LS_0xd06ec0_0_0, LS_0xd06ec0_0_4;
S_0xc81280 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd06390 .functor XOR 1, L_0xd071e0, L_0xd04f50, C4<0>, C4<0>;
L_0xd06490 .functor XOR 1, L_0xd06390, L_0xd06190, C4<0>, C4<0>;
L_0xd065a0 .functor AND 1, L_0xd06390, L_0xd06190, C4<1>, C4<1>;
L_0xd06630 .functor AND 1, L_0xd071e0, L_0xd04f50, C4<1>, C4<1>;
L_0xc83390 .functor OR 1, L_0xd065a0, L_0xd06630, C4<0>, C4<0>;
v0xc81520_0 .net "A", 0 0, L_0xd071e0;  alias, 1 drivers
v0xc81600_0 .net "B", 0 0, L_0xd04f50;  alias, 1 drivers
v0xc816c0_0 .net "carryin", 0 0, L_0xd06190;  alias, 1 drivers
v0xc81790_0 .net "carryout", 0 0, L_0xc83390;  alias, 1 drivers
v0xc81850_0 .net "out1", 0 0, L_0xd06390;  1 drivers
v0xc81960_0 .net "out2", 0 0, L_0xd065a0;  1 drivers
v0xc81a20_0 .net "out3", 0 0, L_0xd06630;  1 drivers
v0xc81ae0_0 .net "sum", 0 0, L_0xd06490;  alias, 1 drivers
S_0xc81c40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc83870 .functor AND 1, L_0xd071e0, L_0xd060f0, C4<1>, C4<1>;
v0xc81e80_0 .net "A", 0 0, L_0xd071e0;  alias, 1 drivers
v0xc81f40_0 .net "B", 0 0, L_0xd060f0;  alias, 1 drivers
v0xc81fe0_0 .net "out", 0 0, L_0xc83870;  1 drivers
S_0xc82130 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc82380_0 .net "I", 7 0, L_0xd06ec0;  alias, 1 drivers
v0xc82460_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc82520_0 .net "out", 0 0, L_0xd06bb0;  alias, 1 drivers
L_0xd06bb0 .part/v L_0xd06ec0, v0xc41150_0, 1;
S_0xc82670 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd06a20 .functor NAND 1, L_0xd071e0, L_0xd060f0, C4<1>, C4<1>;
v0xc82890_0 .net "A", 0 0, L_0xd071e0;  alias, 1 drivers
v0xc829a0_0 .net "B", 0 0, L_0xd060f0;  alias, 1 drivers
v0xc82a60_0 .net "out", 0 0, L_0xd06a20;  1 drivers
S_0xc82b70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd06a90 .functor NOR 1, L_0xd071e0, L_0xd060f0, C4<0>, C4<0>;
v0xc82de0_0 .net "A", 0 0, L_0xd071e0;  alias, 1 drivers
v0xc82ea0_0 .net "B", 0 0, L_0xd060f0;  alias, 1 drivers
v0xc82fb0_0 .net "out", 0 0, L_0xd06a90;  1 drivers
S_0xc830b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd06b20 .functor OR 1, L_0xd071e0, L_0xd060f0, C4<0>, C4<0>;
v0xc832d0_0 .net "A", 0 0, L_0xd071e0;  alias, 1 drivers
v0xc83420_0 .net "B", 0 0, L_0xd060f0;  alias, 1 drivers
v0xc834e0_0 .net "out", 0 0, L_0xd06b20;  1 drivers
S_0xc835e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd04f50 .functor XOR 1, L_0xd060f0, L_0xd062f0, C4<0>, C4<0>;
v0xc837b0_0 .net "A", 0 0, L_0xd060f0;  alias, 1 drivers
v0xc83900_0 .net "B", 0 0, L_0xd062f0;  1 drivers
v0xc839c0_0 .net "out", 0 0, L_0xd04f50;  alias, 1 drivers
S_0xc83b00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc81010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd068a0 .functor XOR 1, L_0xd071e0, L_0xd060f0, C4<0>, C4<0>;
v0xc83cd0_0 .net "A", 0 0, L_0xd071e0;  alias, 1 drivers
v0xc83d90_0 .net "B", 0 0, L_0xd060f0;  alias, 1 drivers
v0xc83e50_0 .net "out", 0 0, L_0xd068a0;  1 drivers
S_0xc849e0 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd07f50 .functor BUFZ 1, L_0xd076b0, C4<0>, C4<0>, C4<0>;
L_0xd07fe0 .functor BUFZ 1, L_0xd076b0, C4<0>, C4<0>, C4<0>;
v0xc87950_0 .net "A", 0 0, L_0xd08420;  1 drivers
v0xc879f0_0 .net "B", 0 0, L_0xd084c0;  1 drivers
v0xc87ab0_0 .net "I", 7 0, L_0xd08100;  1 drivers
v0xc87bb0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc5df90_0 .net *"_s15", 0 0, L_0xd07f50;  1 drivers
v0xc5e0a0_0 .net *"_s19", 0 0, L_0xd07fe0;  1 drivers
L_0x7fb26ad827f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc88060_0 .net/2s *"_s23", 0 0, L_0x7fb26ad827f8;  1 drivers
v0xc88100_0 .net "addORsub", 0 0, L_0xd076b0;  1 drivers
v0xc881a0_0 .net "carryin", 0 0, L_0xd07280;  1 drivers
v0xc882d0_0 .net "carryout", 0 0, L_0xc86d60;  1 drivers
v0xc883a0_0 .net "modB", 0 0, L_0xd074a0;  1 drivers
v0xc88440_0 .net "out", 0 0, L_0xd07df0;  1 drivers
L_0xd07510 .part v0xc41150_0, 0, 1;
LS_0xd08100_0_0 .concat8 [ 1 1 1 1], L_0xd07f50, L_0xd07fe0, L_0xd07ae0, L_0x7fb26ad827f8;
LS_0xd08100_0_4 .concat8 [ 1 1 1 1], L_0xc87240, L_0xd07c60, L_0xd07cd0, L_0xd07d60;
L_0xd08100 .concat8 [ 4 4 0 0], LS_0xd08100_0_0, LS_0xd08100_0_4;
S_0xc84c50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd075b0 .functor XOR 1, L_0xd08420, L_0xd074a0, C4<0>, C4<0>;
L_0xd076b0 .functor XOR 1, L_0xd075b0, L_0xd07280, C4<0>, C4<0>;
L_0xd077e0 .functor AND 1, L_0xd075b0, L_0xd07280, C4<1>, C4<1>;
L_0xd07870 .functor AND 1, L_0xd08420, L_0xd074a0, C4<1>, C4<1>;
L_0xc86d60 .functor OR 1, L_0xd077e0, L_0xd07870, C4<0>, C4<0>;
v0xc84ef0_0 .net "A", 0 0, L_0xd08420;  alias, 1 drivers
v0xc84fd0_0 .net "B", 0 0, L_0xd074a0;  alias, 1 drivers
v0xc85090_0 .net "carryin", 0 0, L_0xd07280;  alias, 1 drivers
v0xc85160_0 .net "carryout", 0 0, L_0xc86d60;  alias, 1 drivers
v0xc85220_0 .net "out1", 0 0, L_0xd075b0;  1 drivers
v0xc85330_0 .net "out2", 0 0, L_0xd077e0;  1 drivers
v0xc853f0_0 .net "out3", 0 0, L_0xd07870;  1 drivers
v0xc854b0_0 .net "sum", 0 0, L_0xd076b0;  alias, 1 drivers
S_0xc85610 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc87240 .functor AND 1, L_0xd08420, L_0xd084c0, C4<1>, C4<1>;
v0xc85850_0 .net "A", 0 0, L_0xd08420;  alias, 1 drivers
v0xc85910_0 .net "B", 0 0, L_0xd084c0;  alias, 1 drivers
v0xc859b0_0 .net "out", 0 0, L_0xc87240;  1 drivers
S_0xc85b00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc85d50_0 .net "I", 7 0, L_0xd08100;  alias, 1 drivers
v0xc85e30_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc85ef0_0 .net "out", 0 0, L_0xd07df0;  alias, 1 drivers
L_0xd07df0 .part/v L_0xd08100, v0xc41150_0, 1;
S_0xc86040 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd07c60 .functor NAND 1, L_0xd08420, L_0xd084c0, C4<1>, C4<1>;
v0xc86260_0 .net "A", 0 0, L_0xd08420;  alias, 1 drivers
v0xc86370_0 .net "B", 0 0, L_0xd084c0;  alias, 1 drivers
v0xc86430_0 .net "out", 0 0, L_0xd07c60;  1 drivers
S_0xc86540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd07cd0 .functor NOR 1, L_0xd08420, L_0xd084c0, C4<0>, C4<0>;
v0xc867b0_0 .net "A", 0 0, L_0xd08420;  alias, 1 drivers
v0xc86870_0 .net "B", 0 0, L_0xd084c0;  alias, 1 drivers
v0xc86980_0 .net "out", 0 0, L_0xd07cd0;  1 drivers
S_0xc86a80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd07d60 .functor OR 1, L_0xd08420, L_0xd084c0, C4<0>, C4<0>;
v0xc86ca0_0 .net "A", 0 0, L_0xd08420;  alias, 1 drivers
v0xc86df0_0 .net "B", 0 0, L_0xd084c0;  alias, 1 drivers
v0xc86eb0_0 .net "out", 0 0, L_0xd07d60;  1 drivers
S_0xc86fb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd074a0 .functor XOR 1, L_0xd084c0, L_0xd07510, C4<0>, C4<0>;
v0xc87180_0 .net "A", 0 0, L_0xd084c0;  alias, 1 drivers
v0xc872d0_0 .net "B", 0 0, L_0xd07510;  1 drivers
v0xc87390_0 .net "out", 0 0, L_0xd074a0;  alias, 1 drivers
S_0xc874d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc849e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd07ae0 .functor XOR 1, L_0xd08420, L_0xd084c0, C4<0>, C4<0>;
v0xc876a0_0 .net "A", 0 0, L_0xd08420;  alias, 1 drivers
v0xc87760_0 .net "B", 0 0, L_0xd084c0;  alias, 1 drivers
v0xc87820_0 .net "out", 0 0, L_0xd07ae0;  1 drivers
S_0xc88560 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd09180 .functor BUFZ 1, L_0xd088e0, C4<0>, C4<0>, C4<0>;
L_0xd09210 .functor BUFZ 1, L_0xd088e0, C4<0>, C4<0>, C4<0>;
v0xc8b550_0 .net "A", 0 0, L_0xd09650;  1 drivers
v0xc8b5f0_0 .net "B", 0 0, L_0xd08560;  1 drivers
v0xc8b6b0_0 .net "I", 7 0, L_0xd09330;  1 drivers
v0xc8b7b0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc8b850_0 .net *"_s15", 0 0, L_0xd09180;  1 drivers
v0xc8b960_0 .net *"_s19", 0 0, L_0xd09210;  1 drivers
L_0x7fb26ad82840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc8ba40_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82840;  1 drivers
v0xc8bb20_0 .net "addORsub", 0 0, L_0xd088e0;  1 drivers
v0xc8bbc0_0 .net "carryin", 0 0, L_0xd08600;  1 drivers
v0xc8bd20_0 .net "carryout", 0 0, L_0xc8a960;  1 drivers
v0xc8bdf0_0 .net "modB", 0 0, L_0xd073b0;  1 drivers
v0xc8be90_0 .net "out", 0 0, L_0xd09020;  1 drivers
L_0xd08790 .part v0xc41150_0, 0, 1;
LS_0xd09330_0_0 .concat8 [ 1 1 1 1], L_0xd09180, L_0xd09210, L_0xd08d10, L_0x7fb26ad82840;
LS_0xd09330_0_4 .concat8 [ 1 1 1 1], L_0xc8ae40, L_0xd08e90, L_0xd08f00, L_0xd08f90;
L_0xd09330 .concat8 [ 4 4 0 0], LS_0xd09330_0_0, LS_0xd09330_0_4;
S_0xc888e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd07420 .functor XOR 1, L_0xd09650, L_0xd073b0, C4<0>, C4<0>;
L_0xd088e0 .functor XOR 1, L_0xd07420, L_0xd08600, C4<0>, C4<0>;
L_0xd08a10 .functor AND 1, L_0xd07420, L_0xd08600, C4<1>, C4<1>;
L_0xd08aa0 .functor AND 1, L_0xd09650, L_0xd073b0, C4<1>, C4<1>;
L_0xc8a960 .functor OR 1, L_0xd08a10, L_0xd08aa0, C4<0>, C4<0>;
v0xc88b10_0 .net "A", 0 0, L_0xd09650;  alias, 1 drivers
v0xc88bd0_0 .net "B", 0 0, L_0xd073b0;  alias, 1 drivers
v0xc88c90_0 .net "carryin", 0 0, L_0xd08600;  alias, 1 drivers
v0xc88d60_0 .net "carryout", 0 0, L_0xc8a960;  alias, 1 drivers
v0xc88e20_0 .net "out1", 0 0, L_0xd07420;  1 drivers
v0xc88f30_0 .net "out2", 0 0, L_0xd08a10;  1 drivers
v0xc88ff0_0 .net "out3", 0 0, L_0xd08aa0;  1 drivers
v0xc890b0_0 .net "sum", 0 0, L_0xd088e0;  alias, 1 drivers
S_0xc89210 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc8ae40 .functor AND 1, L_0xd09650, L_0xd08560, C4<1>, C4<1>;
v0xc89450_0 .net "A", 0 0, L_0xd09650;  alias, 1 drivers
v0xc89510_0 .net "B", 0 0, L_0xd08560;  alias, 1 drivers
v0xc895b0_0 .net "out", 0 0, L_0xc8ae40;  1 drivers
S_0xc89700 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc89950_0 .net "I", 7 0, L_0xd09330;  alias, 1 drivers
v0xc89a30_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc89af0_0 .net "out", 0 0, L_0xd09020;  alias, 1 drivers
L_0xd09020 .part/v L_0xd09330, v0xc41150_0, 1;
S_0xc89c40 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd08e90 .functor NAND 1, L_0xd09650, L_0xd08560, C4<1>, C4<1>;
v0xc89e60_0 .net "A", 0 0, L_0xd09650;  alias, 1 drivers
v0xc89f70_0 .net "B", 0 0, L_0xd08560;  alias, 1 drivers
v0xc8a030_0 .net "out", 0 0, L_0xd08e90;  1 drivers
S_0xc8a140 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd08f00 .functor NOR 1, L_0xd09650, L_0xd08560, C4<0>, C4<0>;
v0xc8a3b0_0 .net "A", 0 0, L_0xd09650;  alias, 1 drivers
v0xc8a470_0 .net "B", 0 0, L_0xd08560;  alias, 1 drivers
v0xc8a580_0 .net "out", 0 0, L_0xd08f00;  1 drivers
S_0xc8a680 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd08f90 .functor OR 1, L_0xd09650, L_0xd08560, C4<0>, C4<0>;
v0xc8a8a0_0 .net "A", 0 0, L_0xd09650;  alias, 1 drivers
v0xc8a9f0_0 .net "B", 0 0, L_0xd08560;  alias, 1 drivers
v0xc8aab0_0 .net "out", 0 0, L_0xd08f90;  1 drivers
S_0xc8abb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd073b0 .functor XOR 1, L_0xd08560, L_0xd08790, C4<0>, C4<0>;
v0xc8ad80_0 .net "A", 0 0, L_0xd08560;  alias, 1 drivers
v0xc8aed0_0 .net "B", 0 0, L_0xd08790;  1 drivers
v0xc8af90_0 .net "out", 0 0, L_0xd073b0;  alias, 1 drivers
S_0xc8b0d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc88560;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd08d10 .functor XOR 1, L_0xd09650, L_0xd08560, C4<0>, C4<0>;
v0xc8b2a0_0 .net "A", 0 0, L_0xd09650;  alias, 1 drivers
v0xc8b360_0 .net "B", 0 0, L_0xd08560;  alias, 1 drivers
v0xc8b420_0 .net "out", 0 0, L_0xd08d10;  1 drivers
S_0xc8bfb0 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd0a3b0 .functor BUFZ 1, L_0xd09b50, C4<0>, C4<0>, C4<0>;
L_0xd0a440 .functor BUFZ 1, L_0xd09b50, C4<0>, C4<0>, C4<0>;
v0xc8ef20_0 .net "A", 0 0, L_0xd0a880;  1 drivers
v0xc8efc0_0 .net "B", 0 0, L_0xd0a920;  1 drivers
v0xc8f080_0 .net "I", 7 0, L_0xd0a560;  1 drivers
v0xc8f180_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc8f220_0 .net *"_s15", 0 0, L_0xd0a3b0;  1 drivers
v0xc8f330_0 .net *"_s19", 0 0, L_0xd0a440;  1 drivers
L_0x7fb26ad82888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc8f410_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82888;  1 drivers
v0xc8f4f0_0 .net "addORsub", 0 0, L_0xd09b50;  1 drivers
v0xc8f590_0 .net "carryin", 0 0, L_0xd096f0;  1 drivers
v0xc8f6f0_0 .net "carryout", 0 0, L_0xc8e330;  1 drivers
v0xc8f7c0_0 .net "modB", 0 0, L_0xd09940;  1 drivers
v0xc8f860_0 .net "out", 0 0, L_0xd0a250;  1 drivers
L_0xd099b0 .part v0xc41150_0, 0, 1;
LS_0xd0a560_0_0 .concat8 [ 1 1 1 1], L_0xd0a3b0, L_0xd0a440, L_0xd09f40, L_0x7fb26ad82888;
LS_0xd0a560_0_4 .concat8 [ 1 1 1 1], L_0xc8e810, L_0xd0a0c0, L_0xd0a130, L_0xd0a1c0;
L_0xd0a560 .concat8 [ 4 4 0 0], LS_0xd0a560_0_0, LS_0xd0a560_0_4;
S_0xc8c220 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd09a50 .functor XOR 1, L_0xd0a880, L_0xd09940, C4<0>, C4<0>;
L_0xd09b50 .functor XOR 1, L_0xd09a50, L_0xd096f0, C4<0>, C4<0>;
L_0xd09c60 .functor AND 1, L_0xd09a50, L_0xd096f0, C4<1>, C4<1>;
L_0xd09cd0 .functor AND 1, L_0xd0a880, L_0xd09940, C4<1>, C4<1>;
L_0xc8e330 .functor OR 1, L_0xd09c60, L_0xd09cd0, C4<0>, C4<0>;
v0xc8c4c0_0 .net "A", 0 0, L_0xd0a880;  alias, 1 drivers
v0xc8c5a0_0 .net "B", 0 0, L_0xd09940;  alias, 1 drivers
v0xc8c660_0 .net "carryin", 0 0, L_0xd096f0;  alias, 1 drivers
v0xc8c730_0 .net "carryout", 0 0, L_0xc8e330;  alias, 1 drivers
v0xc8c7f0_0 .net "out1", 0 0, L_0xd09a50;  1 drivers
v0xc8c900_0 .net "out2", 0 0, L_0xd09c60;  1 drivers
v0xc8c9c0_0 .net "out3", 0 0, L_0xd09cd0;  1 drivers
v0xc8ca80_0 .net "sum", 0 0, L_0xd09b50;  alias, 1 drivers
S_0xc8cbe0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc8e810 .functor AND 1, L_0xd0a880, L_0xd0a920, C4<1>, C4<1>;
v0xc8ce20_0 .net "A", 0 0, L_0xd0a880;  alias, 1 drivers
v0xc8cee0_0 .net "B", 0 0, L_0xd0a920;  alias, 1 drivers
v0xc8cf80_0 .net "out", 0 0, L_0xc8e810;  1 drivers
S_0xc8d0d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc8d320_0 .net "I", 7 0, L_0xd0a560;  alias, 1 drivers
v0xc8d400_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc8d4c0_0 .net "out", 0 0, L_0xd0a250;  alias, 1 drivers
L_0xd0a250 .part/v L_0xd0a560, v0xc41150_0, 1;
S_0xc8d610 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0a0c0 .functor NAND 1, L_0xd0a880, L_0xd0a920, C4<1>, C4<1>;
v0xc8d830_0 .net "A", 0 0, L_0xd0a880;  alias, 1 drivers
v0xc8d940_0 .net "B", 0 0, L_0xd0a920;  alias, 1 drivers
v0xc8da00_0 .net "out", 0 0, L_0xd0a0c0;  1 drivers
S_0xc8db10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0a130 .functor NOR 1, L_0xd0a880, L_0xd0a920, C4<0>, C4<0>;
v0xc8dd80_0 .net "A", 0 0, L_0xd0a880;  alias, 1 drivers
v0xc8de40_0 .net "B", 0 0, L_0xd0a920;  alias, 1 drivers
v0xc8df50_0 .net "out", 0 0, L_0xd0a130;  1 drivers
S_0xc8e050 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0a1c0 .functor OR 1, L_0xd0a880, L_0xd0a920, C4<0>, C4<0>;
v0xc8e270_0 .net "A", 0 0, L_0xd0a880;  alias, 1 drivers
v0xc8e3c0_0 .net "B", 0 0, L_0xd0a920;  alias, 1 drivers
v0xc8e480_0 .net "out", 0 0, L_0xd0a1c0;  1 drivers
S_0xc8e580 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd09940 .functor XOR 1, L_0xd0a920, L_0xd099b0, C4<0>, C4<0>;
v0xc8e750_0 .net "A", 0 0, L_0xd0a920;  alias, 1 drivers
v0xc8e8a0_0 .net "B", 0 0, L_0xd099b0;  1 drivers
v0xc8e960_0 .net "out", 0 0, L_0xd09940;  alias, 1 drivers
S_0xc8eaa0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc8bfb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd09f40 .functor XOR 1, L_0xd0a880, L_0xd0a920, C4<0>, C4<0>;
v0xc8ec70_0 .net "A", 0 0, L_0xd0a880;  alias, 1 drivers
v0xc8ed30_0 .net "B", 0 0, L_0xd0a920;  alias, 1 drivers
v0xc8edf0_0 .net "out", 0 0, L_0xd09f40;  1 drivers
S_0xc8f980 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd0b5e0 .functor BUFZ 1, L_0xd0ad40, C4<0>, C4<0>, C4<0>;
L_0xd0b670 .functor BUFZ 1, L_0xd0ad40, C4<0>, C4<0>, C4<0>;
v0xc928f0_0 .net "A", 0 0, L_0xd0bab0;  1 drivers
v0xc92990_0 .net "B", 0 0, L_0xcf9430;  1 drivers
v0xc92a50_0 .net "I", 7 0, L_0xd0b790;  1 drivers
v0xc92b50_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc92bf0_0 .net *"_s15", 0 0, L_0xd0b5e0;  1 drivers
v0xc92d00_0 .net *"_s19", 0 0, L_0xd0b670;  1 drivers
L_0x7fb26ad828d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc92de0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad828d0;  1 drivers
v0xc92ec0_0 .net "addORsub", 0 0, L_0xd0ad40;  1 drivers
v0xc92f60_0 .net "carryin", 0 0, L_0xcf94d0;  1 drivers
v0xc930c0_0 .net "carryout", 0 0, L_0xc91d00;  1 drivers
v0xc93190_0 .net "modB", 0 0, L_0xd09820;  1 drivers
v0xc93230_0 .net "out", 0 0, L_0xd0b480;  1 drivers
L_0xd09890 .part v0xc41150_0, 0, 1;
LS_0xd0b790_0_0 .concat8 [ 1 1 1 1], L_0xd0b5e0, L_0xd0b670, L_0xd0b170, L_0x7fb26ad828d0;
LS_0xd0b790_0_4 .concat8 [ 1 1 1 1], L_0xc921e0, L_0xd0b2f0, L_0xd0b360, L_0xd0b3f0;
L_0xd0b790 .concat8 [ 4 4 0 0], LS_0xd0b790_0_0, LS_0xd0b790_0_4;
S_0xc8fbf0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd0ac20 .functor XOR 1, L_0xd0bab0, L_0xd09820, C4<0>, C4<0>;
L_0xd0ad40 .functor XOR 1, L_0xd0ac20, L_0xcf94d0, C4<0>, C4<0>;
L_0xd0ae70 .functor AND 1, L_0xd0ac20, L_0xcf94d0, C4<1>, C4<1>;
L_0xd0af00 .functor AND 1, L_0xd0bab0, L_0xd09820, C4<1>, C4<1>;
L_0xc91d00 .functor OR 1, L_0xd0ae70, L_0xd0af00, C4<0>, C4<0>;
v0xc8fe90_0 .net "A", 0 0, L_0xd0bab0;  alias, 1 drivers
v0xc8ff70_0 .net "B", 0 0, L_0xd09820;  alias, 1 drivers
v0xc90030_0 .net "carryin", 0 0, L_0xcf94d0;  alias, 1 drivers
v0xc90100_0 .net "carryout", 0 0, L_0xc91d00;  alias, 1 drivers
v0xc901c0_0 .net "out1", 0 0, L_0xd0ac20;  1 drivers
v0xc902d0_0 .net "out2", 0 0, L_0xd0ae70;  1 drivers
v0xc90390_0 .net "out3", 0 0, L_0xd0af00;  1 drivers
v0xc90450_0 .net "sum", 0 0, L_0xd0ad40;  alias, 1 drivers
S_0xc905b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc921e0 .functor AND 1, L_0xd0bab0, L_0xcf9430, C4<1>, C4<1>;
v0xc907f0_0 .net "A", 0 0, L_0xd0bab0;  alias, 1 drivers
v0xc908b0_0 .net "B", 0 0, L_0xcf9430;  alias, 1 drivers
v0xc90950_0 .net "out", 0 0, L_0xc921e0;  1 drivers
S_0xc90aa0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc90cf0_0 .net "I", 7 0, L_0xd0b790;  alias, 1 drivers
v0xc90dd0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc90e90_0 .net "out", 0 0, L_0xd0b480;  alias, 1 drivers
L_0xd0b480 .part/v L_0xd0b790, v0xc41150_0, 1;
S_0xc90fe0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0b2f0 .functor NAND 1, L_0xd0bab0, L_0xcf9430, C4<1>, C4<1>;
v0xc91200_0 .net "A", 0 0, L_0xd0bab0;  alias, 1 drivers
v0xc91310_0 .net "B", 0 0, L_0xcf9430;  alias, 1 drivers
v0xc913d0_0 .net "out", 0 0, L_0xd0b2f0;  1 drivers
S_0xc914e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0b360 .functor NOR 1, L_0xd0bab0, L_0xcf9430, C4<0>, C4<0>;
v0xc91750_0 .net "A", 0 0, L_0xd0bab0;  alias, 1 drivers
v0xc91810_0 .net "B", 0 0, L_0xcf9430;  alias, 1 drivers
v0xc91920_0 .net "out", 0 0, L_0xd0b360;  1 drivers
S_0xc91a20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0b3f0 .functor OR 1, L_0xd0bab0, L_0xcf9430, C4<0>, C4<0>;
v0xc91c40_0 .net "A", 0 0, L_0xd0bab0;  alias, 1 drivers
v0xc91d90_0 .net "B", 0 0, L_0xcf9430;  alias, 1 drivers
v0xc91e50_0 .net "out", 0 0, L_0xd0b3f0;  1 drivers
S_0xc91f50 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd09820 .functor XOR 1, L_0xcf9430, L_0xd09890, C4<0>, C4<0>;
v0xc92120_0 .net "A", 0 0, L_0xcf9430;  alias, 1 drivers
v0xc92270_0 .net "B", 0 0, L_0xd09890;  1 drivers
v0xc92330_0 .net "out", 0 0, L_0xd09820;  alias, 1 drivers
S_0xc92470 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc8f980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0b170 .functor XOR 1, L_0xd0bab0, L_0xcf9430, C4<0>, C4<0>;
v0xc92640_0 .net "A", 0 0, L_0xd0bab0;  alias, 1 drivers
v0xc92700_0 .net "B", 0 0, L_0xcf9430;  alias, 1 drivers
v0xc927c0_0 .net "out", 0 0, L_0xd0b170;  1 drivers
S_0xc93350 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd0c7e0 .functor BUFZ 1, L_0xd0ab80, C4<0>, C4<0>, C4<0>;
L_0xd0c850 .functor BUFZ 1, L_0xd0ab80, C4<0>, C4<0>, C4<0>;
v0xc962c0_0 .net "A", 0 0, L_0xcfa6d0;  1 drivers
v0xc96360_0 .net "B", 0 0, L_0xd0ce80;  1 drivers
v0xc96420_0 .net "I", 7 0, L_0xd0c950;  1 drivers
v0xc96520_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc965c0_0 .net *"_s15", 0 0, L_0xd0c7e0;  1 drivers
v0xc966d0_0 .net *"_s19", 0 0, L_0xd0c850;  1 drivers
L_0x7fb26ad82918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc967b0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82918;  1 drivers
v0xc96890_0 .net "addORsub", 0 0, L_0xd0ab80;  1 drivers
v0xc96930_0 .net "carryin", 0 0, L_0xd0bf60;  1 drivers
v0xc96a90_0 .net "carryout", 0 0, L_0xc956d0;  1 drivers
v0xc96b60_0 .net "modB", 0 0, L_0xcf3820;  1 drivers
v0xc96c00_0 .net "out", 0 0, L_0xd0c6a0;  1 drivers
L_0xd0a9c0 .part v0xc41150_0, 0, 1;
LS_0xd0c950_0_0 .concat8 [ 1 1 1 1], L_0xd0c7e0, L_0xd0c850, L_0xd0c3d0, L_0x7fb26ad82918;
LS_0xd0c950_0_4 .concat8 [ 1 1 1 1], L_0xc95bb0, L_0xd0c550, L_0xd0c5c0, L_0xd0c630;
L_0xd0c950 .concat8 [ 4 4 0 0], LS_0xd0c950_0_0, LS_0xd0c950_0_4;
S_0xc935c0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd0aa60 .functor XOR 1, L_0xcfa6d0, L_0xcf3820, C4<0>, C4<0>;
L_0xd0ab80 .functor XOR 1, L_0xd0aa60, L_0xd0bf60, C4<0>, C4<0>;
L_0xd0c1e0 .functor AND 1, L_0xd0aa60, L_0xd0bf60, C4<1>, C4<1>;
L_0xd0c250 .functor AND 1, L_0xcfa6d0, L_0xcf3820, C4<1>, C4<1>;
L_0xc956d0 .functor OR 1, L_0xd0c1e0, L_0xd0c250, C4<0>, C4<0>;
v0xc93860_0 .net "A", 0 0, L_0xcfa6d0;  alias, 1 drivers
v0xc93940_0 .net "B", 0 0, L_0xcf3820;  alias, 1 drivers
v0xc93a00_0 .net "carryin", 0 0, L_0xd0bf60;  alias, 1 drivers
v0xc93ad0_0 .net "carryout", 0 0, L_0xc956d0;  alias, 1 drivers
v0xc93b90_0 .net "out1", 0 0, L_0xd0aa60;  1 drivers
v0xc93ca0_0 .net "out2", 0 0, L_0xd0c1e0;  1 drivers
v0xc93d60_0 .net "out3", 0 0, L_0xd0c250;  1 drivers
v0xc93e20_0 .net "sum", 0 0, L_0xd0ab80;  alias, 1 drivers
S_0xc93f80 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc95bb0 .functor AND 1, L_0xcfa6d0, L_0xd0ce80, C4<1>, C4<1>;
v0xc941c0_0 .net "A", 0 0, L_0xcfa6d0;  alias, 1 drivers
v0xc94280_0 .net "B", 0 0, L_0xd0ce80;  alias, 1 drivers
v0xc94320_0 .net "out", 0 0, L_0xc95bb0;  1 drivers
S_0xc94470 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc946c0_0 .net "I", 7 0, L_0xd0c950;  alias, 1 drivers
v0xc947a0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc94860_0 .net "out", 0 0, L_0xd0c6a0;  alias, 1 drivers
L_0xd0c6a0 .part/v L_0xd0c950, v0xc41150_0, 1;
S_0xc949b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0c550 .functor NAND 1, L_0xcfa6d0, L_0xd0ce80, C4<1>, C4<1>;
v0xc94bd0_0 .net "A", 0 0, L_0xcfa6d0;  alias, 1 drivers
v0xc94ce0_0 .net "B", 0 0, L_0xd0ce80;  alias, 1 drivers
v0xc94da0_0 .net "out", 0 0, L_0xd0c550;  1 drivers
S_0xc94eb0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0c5c0 .functor NOR 1, L_0xcfa6d0, L_0xd0ce80, C4<0>, C4<0>;
v0xc95120_0 .net "A", 0 0, L_0xcfa6d0;  alias, 1 drivers
v0xc951e0_0 .net "B", 0 0, L_0xd0ce80;  alias, 1 drivers
v0xc952f0_0 .net "out", 0 0, L_0xd0c5c0;  1 drivers
S_0xc953f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0c630 .functor OR 1, L_0xcfa6d0, L_0xd0ce80, C4<0>, C4<0>;
v0xc95610_0 .net "A", 0 0, L_0xcfa6d0;  alias, 1 drivers
v0xc95760_0 .net "B", 0 0, L_0xd0ce80;  alias, 1 drivers
v0xc95820_0 .net "out", 0 0, L_0xd0c630;  1 drivers
S_0xc95920 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf3820 .functor XOR 1, L_0xd0ce80, L_0xd0a9c0, C4<0>, C4<0>;
v0xc95af0_0 .net "A", 0 0, L_0xd0ce80;  alias, 1 drivers
v0xc95c40_0 .net "B", 0 0, L_0xd0a9c0;  1 drivers
v0xc95d00_0 .net "out", 0 0, L_0xcf3820;  alias, 1 drivers
S_0xc95e40 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc93350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0c3d0 .functor XOR 1, L_0xcfa6d0, L_0xd0ce80, C4<0>, C4<0>;
v0xc96010_0 .net "A", 0 0, L_0xcfa6d0;  alias, 1 drivers
v0xc960d0_0 .net "B", 0 0, L_0xd0ce80;  alias, 1 drivers
v0xc96190_0 .net "out", 0 0, L_0xd0c3d0;  1 drivers
S_0xc96d20 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd0da60 .functor BUFZ 1, L_0xd0d2b0, C4<0>, C4<0>, C4<0>;
L_0xd0dad0 .functor BUFZ 1, L_0xd0d2b0, C4<0>, C4<0>, C4<0>;
v0xc99c90_0 .net "A", 0 0, L_0xd0def0;  1 drivers
v0xc99d30_0 .net "B", 0 0, L_0xd0cf20;  1 drivers
v0xc99df0_0 .net "I", 7 0, L_0xd0dbd0;  1 drivers
v0xc99ef0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc99f90_0 .net *"_s15", 0 0, L_0xd0da60;  1 drivers
v0xc9a0a0_0 .net *"_s19", 0 0, L_0xd0dad0;  1 drivers
L_0x7fb26ad82960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc9a180_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82960;  1 drivers
v0xc9a260_0 .net "addORsub", 0 0, L_0xd0d2b0;  1 drivers
v0xc9a300_0 .net "carryin", 0 0, L_0xd0cfc0;  1 drivers
v0xc9a460_0 .net "carryout", 0 0, L_0xc990a0;  1 drivers
v0xc9a530_0 .net "modB", 0 0, L_0xcfa770;  1 drivers
v0xc9a5d0_0 .net "out", 0 0, L_0xd0d920;  1 drivers
L_0xd0c090 .part v0xc41150_0, 0, 1;
LS_0xd0dbd0_0_0 .concat8 [ 1 1 1 1], L_0xd0da60, L_0xd0dad0, L_0xd0d650, L_0x7fb26ad82960;
LS_0xd0dbd0_0_4 .concat8 [ 1 1 1 1], L_0xc99580, L_0xd0d7d0, L_0xd0d840, L_0xd0d8b0;
L_0xd0dbd0 .concat8 [ 4 4 0 0], LS_0xd0dbd0_0_0, LS_0xd0dbd0_0_4;
S_0xc96f90 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd0d1b0 .functor XOR 1, L_0xd0def0, L_0xcfa770, C4<0>, C4<0>;
L_0xd0d2b0 .functor XOR 1, L_0xd0d1b0, L_0xd0cfc0, C4<0>, C4<0>;
L_0xd0d370 .functor AND 1, L_0xd0d1b0, L_0xd0cfc0, C4<1>, C4<1>;
L_0xd0d3e0 .functor AND 1, L_0xd0def0, L_0xcfa770, C4<1>, C4<1>;
L_0xc990a0 .functor OR 1, L_0xd0d370, L_0xd0d3e0, C4<0>, C4<0>;
v0xc97230_0 .net "A", 0 0, L_0xd0def0;  alias, 1 drivers
v0xc97310_0 .net "B", 0 0, L_0xcfa770;  alias, 1 drivers
v0xc973d0_0 .net "carryin", 0 0, L_0xd0cfc0;  alias, 1 drivers
v0xc974a0_0 .net "carryout", 0 0, L_0xc990a0;  alias, 1 drivers
v0xc97560_0 .net "out1", 0 0, L_0xd0d1b0;  1 drivers
v0xc97670_0 .net "out2", 0 0, L_0xd0d370;  1 drivers
v0xc97730_0 .net "out3", 0 0, L_0xd0d3e0;  1 drivers
v0xc977f0_0 .net "sum", 0 0, L_0xd0d2b0;  alias, 1 drivers
S_0xc97950 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc99580 .functor AND 1, L_0xd0def0, L_0xd0cf20, C4<1>, C4<1>;
v0xc97b90_0 .net "A", 0 0, L_0xd0def0;  alias, 1 drivers
v0xc97c50_0 .net "B", 0 0, L_0xd0cf20;  alias, 1 drivers
v0xc97cf0_0 .net "out", 0 0, L_0xc99580;  1 drivers
S_0xc97e40 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc98090_0 .net "I", 7 0, L_0xd0dbd0;  alias, 1 drivers
v0xc98170_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc98230_0 .net "out", 0 0, L_0xd0d920;  alias, 1 drivers
L_0xd0d920 .part/v L_0xd0dbd0, v0xc41150_0, 1;
S_0xc98380 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0d7d0 .functor NAND 1, L_0xd0def0, L_0xd0cf20, C4<1>, C4<1>;
v0xc985a0_0 .net "A", 0 0, L_0xd0def0;  alias, 1 drivers
v0xc986b0_0 .net "B", 0 0, L_0xd0cf20;  alias, 1 drivers
v0xc98770_0 .net "out", 0 0, L_0xd0d7d0;  1 drivers
S_0xc98880 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0d840 .functor NOR 1, L_0xd0def0, L_0xd0cf20, C4<0>, C4<0>;
v0xc98af0_0 .net "A", 0 0, L_0xd0def0;  alias, 1 drivers
v0xc98bb0_0 .net "B", 0 0, L_0xd0cf20;  alias, 1 drivers
v0xc98cc0_0 .net "out", 0 0, L_0xd0d840;  1 drivers
S_0xc98dc0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0d8b0 .functor OR 1, L_0xd0def0, L_0xd0cf20, C4<0>, C4<0>;
v0xc98fe0_0 .net "A", 0 0, L_0xd0def0;  alias, 1 drivers
v0xc99130_0 .net "B", 0 0, L_0xd0cf20;  alias, 1 drivers
v0xc991f0_0 .net "out", 0 0, L_0xd0d8b0;  1 drivers
S_0xc992f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfa770 .functor XOR 1, L_0xd0cf20, L_0xd0c090, C4<0>, C4<0>;
v0xc994c0_0 .net "A", 0 0, L_0xd0cf20;  alias, 1 drivers
v0xc99610_0 .net "B", 0 0, L_0xd0c090;  1 drivers
v0xc996d0_0 .net "out", 0 0, L_0xcfa770;  alias, 1 drivers
S_0xc99810 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc96d20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0d650 .functor XOR 1, L_0xd0def0, L_0xd0cf20, C4<0>, C4<0>;
v0xc999e0_0 .net "A", 0 0, L_0xd0def0;  alias, 1 drivers
v0xc99aa0_0 .net "B", 0 0, L_0xd0cf20;  alias, 1 drivers
v0xc99b60_0 .net "out", 0 0, L_0xd0d650;  1 drivers
S_0xc9a6f0 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd0eb90 .functor BUFZ 1, L_0xd0e3e0, C4<0>, C4<0>, C4<0>;
L_0xd0ec00 .functor BUFZ 1, L_0xd0e3e0, C4<0>, C4<0>, C4<0>;
v0xc9d660_0 .net "A", 0 0, L_0xd0f020;  1 drivers
v0xc9d700_0 .net "B", 0 0, L_0xd0f0c0;  1 drivers
v0xc9d7c0_0 .net "I", 7 0, L_0xd0ed00;  1 drivers
v0xc9d8c0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc9d960_0 .net *"_s15", 0 0, L_0xd0eb90;  1 drivers
v0xc9da70_0 .net *"_s19", 0 0, L_0xd0ec00;  1 drivers
L_0x7fb26ad829a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc9db50_0 .net/2s *"_s23", 0 0, L_0x7fb26ad829a8;  1 drivers
v0xc9dc30_0 .net "addORsub", 0 0, L_0xd0e3e0;  1 drivers
v0xc9dcd0_0 .net "carryin", 0 0, L_0xd0df90;  1 drivers
v0xc9de30_0 .net "carryout", 0 0, L_0xc9ca70;  1 drivers
v0xc9df00_0 .net "modB", 0 0, L_0xd0d0f0;  1 drivers
v0xc9dfa0_0 .net "out", 0 0, L_0xd0ea50;  1 drivers
L_0xd0e240 .part v0xc41150_0, 0, 1;
LS_0xd0ed00_0_0 .concat8 [ 1 1 1 1], L_0xd0eb90, L_0xd0ec00, L_0xd0e780, L_0x7fb26ad829a8;
LS_0xd0ed00_0_4 .concat8 [ 1 1 1 1], L_0xc9cf50, L_0xd0e900, L_0xd0e970, L_0xd0e9e0;
L_0xd0ed00 .concat8 [ 4 4 0 0], LS_0xd0ed00_0_0, LS_0xd0ed00_0_4;
S_0xc9a960 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd0e2e0 .functor XOR 1, L_0xd0f020, L_0xd0d0f0, C4<0>, C4<0>;
L_0xd0e3e0 .functor XOR 1, L_0xd0e2e0, L_0xd0df90, C4<0>, C4<0>;
L_0xd0e4a0 .functor AND 1, L_0xd0e2e0, L_0xd0df90, C4<1>, C4<1>;
L_0xd0e510 .functor AND 1, L_0xd0f020, L_0xd0d0f0, C4<1>, C4<1>;
L_0xc9ca70 .functor OR 1, L_0xd0e4a0, L_0xd0e510, C4<0>, C4<0>;
v0xc9ac00_0 .net "A", 0 0, L_0xd0f020;  alias, 1 drivers
v0xc9ace0_0 .net "B", 0 0, L_0xd0d0f0;  alias, 1 drivers
v0xc9ada0_0 .net "carryin", 0 0, L_0xd0df90;  alias, 1 drivers
v0xc9ae70_0 .net "carryout", 0 0, L_0xc9ca70;  alias, 1 drivers
v0xc9af30_0 .net "out1", 0 0, L_0xd0e2e0;  1 drivers
v0xc9b040_0 .net "out2", 0 0, L_0xd0e4a0;  1 drivers
v0xc9b100_0 .net "out3", 0 0, L_0xd0e510;  1 drivers
v0xc9b1c0_0 .net "sum", 0 0, L_0xd0e3e0;  alias, 1 drivers
S_0xc9b320 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc9cf50 .functor AND 1, L_0xd0f020, L_0xd0f0c0, C4<1>, C4<1>;
v0xc9b560_0 .net "A", 0 0, L_0xd0f020;  alias, 1 drivers
v0xc9b620_0 .net "B", 0 0, L_0xd0f0c0;  alias, 1 drivers
v0xc9b6c0_0 .net "out", 0 0, L_0xc9cf50;  1 drivers
S_0xc9b810 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc9ba60_0 .net "I", 7 0, L_0xd0ed00;  alias, 1 drivers
v0xc9bb40_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc9bc00_0 .net "out", 0 0, L_0xd0ea50;  alias, 1 drivers
L_0xd0ea50 .part/v L_0xd0ed00, v0xc41150_0, 1;
S_0xc9bd50 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0e900 .functor NAND 1, L_0xd0f020, L_0xd0f0c0, C4<1>, C4<1>;
v0xc9bf70_0 .net "A", 0 0, L_0xd0f020;  alias, 1 drivers
v0xc9c080_0 .net "B", 0 0, L_0xd0f0c0;  alias, 1 drivers
v0xc9c140_0 .net "out", 0 0, L_0xd0e900;  1 drivers
S_0xc9c250 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0e970 .functor NOR 1, L_0xd0f020, L_0xd0f0c0, C4<0>, C4<0>;
v0xc9c4c0_0 .net "A", 0 0, L_0xd0f020;  alias, 1 drivers
v0xc9c580_0 .net "B", 0 0, L_0xd0f0c0;  alias, 1 drivers
v0xc9c690_0 .net "out", 0 0, L_0xd0e970;  1 drivers
S_0xc9c790 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0e9e0 .functor OR 1, L_0xd0f020, L_0xd0f0c0, C4<0>, C4<0>;
v0xc9c9b0_0 .net "A", 0 0, L_0xd0f020;  alias, 1 drivers
v0xc9cb00_0 .net "B", 0 0, L_0xd0f0c0;  alias, 1 drivers
v0xc9cbc0_0 .net "out", 0 0, L_0xd0e9e0;  1 drivers
S_0xc9ccc0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0d0f0 .functor XOR 1, L_0xd0f0c0, L_0xd0e240, C4<0>, C4<0>;
v0xc9ce90_0 .net "A", 0 0, L_0xd0f0c0;  alias, 1 drivers
v0xc9cfe0_0 .net "B", 0 0, L_0xd0e240;  1 drivers
v0xc9d0a0_0 .net "out", 0 0, L_0xd0d0f0;  alias, 1 drivers
S_0xc9d1e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc9a6f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0e780 .functor XOR 1, L_0xd0f020, L_0xd0f0c0, C4<0>, C4<0>;
v0xc9d3b0_0 .net "A", 0 0, L_0xd0f020;  alias, 1 drivers
v0xc9d470_0 .net "B", 0 0, L_0xd0f0c0;  alias, 1 drivers
v0xc9d530_0 .net "out", 0 0, L_0xd0e780;  1 drivers
S_0xc9e0c0 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xd0fcb0 .functor BUFZ 1, L_0xd0f4b0, C4<0>, C4<0>, C4<0>;
L_0xd0fd20 .functor BUFZ 1, L_0xd0f4b0, C4<0>, C4<0>, C4<0>;
v0xca1030_0 .net "A", 0 0, L_0xd10140;  1 drivers
v0xca10d0_0 .net "B", 0 0, L_0xd0f160;  1 drivers
v0xca1190_0 .net "I", 7 0, L_0xd0fe20;  1 drivers
v0xca1290_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xca1330_0 .net *"_s15", 0 0, L_0xd0fcb0;  1 drivers
v0xca1440_0 .net *"_s19", 0 0, L_0xd0fd20;  1 drivers
L_0x7fb26ad829f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xca1520_0 .net/2s *"_s23", 0 0, L_0x7fb26ad829f0;  1 drivers
v0xca1600_0 .net "addORsub", 0 0, L_0xd0f4b0;  1 drivers
v0xca16a0_0 .net "carryin", 0 0, L_0xcfe020;  1 drivers
v0xca1800_0 .net "carryout", 0 0, L_0xca0440;  1 drivers
v0xca18d0_0 .net "modB", 0 0, L_0xd0e0c0;  1 drivers
v0xca1970_0 .net "out", 0 0, L_0xd0fb70;  1 drivers
L_0xd0e130 .part v0xc41150_0, 0, 1;
LS_0xd0fe20_0_0 .concat8 [ 1 1 1 1], L_0xd0fcb0, L_0xd0fd20, L_0xd0f8a0, L_0x7fb26ad829f0;
LS_0xd0fe20_0_4 .concat8 [ 1 1 1 1], L_0xca0920, L_0xd0fa20, L_0xd0fa90, L_0xd0fb00;
L_0xd0fe20 .concat8 [ 4 4 0 0], LS_0xd0fe20_0_0, LS_0xd0fe20_0_4;
S_0xc9e330 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd0e1d0 .functor XOR 1, L_0xd10140, L_0xd0e0c0, C4<0>, C4<0>;
L_0xd0f4b0 .functor XOR 1, L_0xd0e1d0, L_0xcfe020, C4<0>, C4<0>;
L_0xd0f5c0 .functor AND 1, L_0xd0e1d0, L_0xcfe020, C4<1>, C4<1>;
L_0xd0f630 .functor AND 1, L_0xd10140, L_0xd0e0c0, C4<1>, C4<1>;
L_0xca0440 .functor OR 1, L_0xd0f5c0, L_0xd0f630, C4<0>, C4<0>;
v0xc9e5d0_0 .net "A", 0 0, L_0xd10140;  alias, 1 drivers
v0xc9e6b0_0 .net "B", 0 0, L_0xd0e0c0;  alias, 1 drivers
v0xc9e770_0 .net "carryin", 0 0, L_0xcfe020;  alias, 1 drivers
v0xc9e840_0 .net "carryout", 0 0, L_0xca0440;  alias, 1 drivers
v0xc9e900_0 .net "out1", 0 0, L_0xd0e1d0;  1 drivers
v0xc9ea10_0 .net "out2", 0 0, L_0xd0f5c0;  1 drivers
v0xc9ead0_0 .net "out3", 0 0, L_0xd0f630;  1 drivers
v0xc9eb90_0 .net "sum", 0 0, L_0xd0f4b0;  alias, 1 drivers
S_0xc9ecf0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xca0920 .functor AND 1, L_0xd10140, L_0xd0f160, C4<1>, C4<1>;
v0xc9ef30_0 .net "A", 0 0, L_0xd10140;  alias, 1 drivers
v0xc9eff0_0 .net "B", 0 0, L_0xd0f160;  alias, 1 drivers
v0xc9f090_0 .net "out", 0 0, L_0xca0920;  1 drivers
S_0xc9f1e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc9f430_0 .net "I", 7 0, L_0xd0fe20;  alias, 1 drivers
v0xc9f510_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc9f5d0_0 .net "out", 0 0, L_0xd0fb70;  alias, 1 drivers
L_0xd0fb70 .part/v L_0xd0fe20, v0xc41150_0, 1;
S_0xc9f720 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0fa20 .functor NAND 1, L_0xd10140, L_0xd0f160, C4<1>, C4<1>;
v0xc9f940_0 .net "A", 0 0, L_0xd10140;  alias, 1 drivers
v0xc9fa50_0 .net "B", 0 0, L_0xd0f160;  alias, 1 drivers
v0xc9fb10_0 .net "out", 0 0, L_0xd0fa20;  1 drivers
S_0xc9fc20 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0fa90 .functor NOR 1, L_0xd10140, L_0xd0f160, C4<0>, C4<0>;
v0xc9fe90_0 .net "A", 0 0, L_0xd10140;  alias, 1 drivers
v0xc9ff50_0 .net "B", 0 0, L_0xd0f160;  alias, 1 drivers
v0xca0060_0 .net "out", 0 0, L_0xd0fa90;  1 drivers
S_0xca0160 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0fb00 .functor OR 1, L_0xd10140, L_0xd0f160, C4<0>, C4<0>;
v0xca0380_0 .net "A", 0 0, L_0xd10140;  alias, 1 drivers
v0xca04d0_0 .net "B", 0 0, L_0xd0f160;  alias, 1 drivers
v0xca0590_0 .net "out", 0 0, L_0xd0fb00;  1 drivers
S_0xca0690 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0e0c0 .functor XOR 1, L_0xd0f160, L_0xd0e130, C4<0>, C4<0>;
v0xca0860_0 .net "A", 0 0, L_0xd0f160;  alias, 1 drivers
v0xca09b0_0 .net "B", 0 0, L_0xd0e130;  1 drivers
v0xca0a70_0 .net "out", 0 0, L_0xd0e0c0;  alias, 1 drivers
S_0xca0bb0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc9e0c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd0f8a0 .functor XOR 1, L_0xd10140, L_0xd0f160, C4<0>, C4<0>;
v0xca0d80_0 .net "A", 0 0, L_0xd10140;  alias, 1 drivers
v0xca0e40_0 .net "B", 0 0, L_0xd0f160;  alias, 1 drivers
v0xca0f00_0 .net "out", 0 0, L_0xd0f8a0;  1 drivers
S_0xca1a90 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf20f0 .functor BUFZ 1, L_0xcf19c0, C4<0>, C4<0>, C4<0>;
L_0xcf2160 .functor BUFZ 1, L_0xcf19c0, C4<0>, C4<0>, C4<0>;
v0xca4a00_0 .net "A", 0 0, L_0xcf2530;  1 drivers
v0xca4aa0_0 .net "B", 0 0, L_0xcf2630;  1 drivers
v0xca4b60_0 .net "I", 7 0, L_0xcf2260;  1 drivers
v0xca4c60_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xca4d00_0 .net *"_s15", 0 0, L_0xcf20f0;  1 drivers
v0xca4e10_0 .net *"_s19", 0 0, L_0xcf2160;  1 drivers
L_0x7fb26ad822a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xca4ef0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad822a0;  1 drivers
v0xca4fd0_0 .net "addORsub", 0 0, L_0xcf19c0;  1 drivers
v0xca5070_0 .net "carryin", 0 0, L_0xcf26d0;  1 drivers
v0xca51d0_0 .net "carryout", 0 0, L_0xca3e10;  1 drivers
v0xca52a0_0 .net "modB", 0 0, L_0xcf1740;  1 drivers
v0xca5340_0 .net "out", 0 0, L_0xcf2050;  1 drivers
L_0xcf17b0 .part v0xc41150_0, 0, 1;
LS_0xcf2260_0_0 .concat8 [ 1 1 1 1], L_0xcf20f0, L_0xcf2160, L_0xcf1df0, L_0x7fb26ad822a0;
LS_0xcf2260_0_4 .concat8 [ 1 1 1 1], L_0xca42f0, L_0xcf1f70, L_0xceb3e0, L_0xcf1fe0;
L_0xcf2260 .concat8 [ 4 4 0 0], LS_0xcf2260_0_0, LS_0xcf2260_0_4;
S_0xca1d00 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf18a0 .functor XOR 1, L_0xcf2530, L_0xcf1740, C4<0>, C4<0>;
L_0xcf19c0 .functor XOR 1, L_0xcf18a0, L_0xcf26d0, C4<0>, C4<0>;
L_0xcf1af0 .functor AND 1, L_0xcf18a0, L_0xcf26d0, C4<1>, C4<1>;
L_0xcf1b80 .functor AND 1, L_0xcf2530, L_0xcf1740, C4<1>, C4<1>;
L_0xca3e10 .functor OR 1, L_0xcf1af0, L_0xcf1b80, C4<0>, C4<0>;
v0xca1fa0_0 .net "A", 0 0, L_0xcf2530;  alias, 1 drivers
v0xca2080_0 .net "B", 0 0, L_0xcf1740;  alias, 1 drivers
v0xca2140_0 .net "carryin", 0 0, L_0xcf26d0;  alias, 1 drivers
v0xca2210_0 .net "carryout", 0 0, L_0xca3e10;  alias, 1 drivers
v0xca22d0_0 .net "out1", 0 0, L_0xcf18a0;  1 drivers
v0xca23e0_0 .net "out2", 0 0, L_0xcf1af0;  1 drivers
v0xca24a0_0 .net "out3", 0 0, L_0xcf1b80;  1 drivers
v0xca2560_0 .net "sum", 0 0, L_0xcf19c0;  alias, 1 drivers
S_0xca26c0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xca42f0 .functor AND 1, L_0xcf2530, L_0xcf2630, C4<1>, C4<1>;
v0xca2900_0 .net "A", 0 0, L_0xcf2530;  alias, 1 drivers
v0xca29c0_0 .net "B", 0 0, L_0xcf2630;  alias, 1 drivers
v0xca2a60_0 .net "out", 0 0, L_0xca42f0;  1 drivers
S_0xca2bb0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xca2e00_0 .net "I", 7 0, L_0xcf2260;  alias, 1 drivers
v0xca2ee0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xca2fa0_0 .net "out", 0 0, L_0xcf2050;  alias, 1 drivers
L_0xcf2050 .part/v L_0xcf2260, v0xc41150_0, 1;
S_0xca30f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf1f70 .functor NAND 1, L_0xcf2530, L_0xcf2630, C4<1>, C4<1>;
v0xca3310_0 .net "A", 0 0, L_0xcf2530;  alias, 1 drivers
v0xca3420_0 .net "B", 0 0, L_0xcf2630;  alias, 1 drivers
v0xca34e0_0 .net "out", 0 0, L_0xcf1f70;  1 drivers
S_0xca35f0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xceb3e0 .functor NOR 1, L_0xcf2530, L_0xcf2630, C4<0>, C4<0>;
v0xca3860_0 .net "A", 0 0, L_0xcf2530;  alias, 1 drivers
v0xca3920_0 .net "B", 0 0, L_0xcf2630;  alias, 1 drivers
v0xca3a30_0 .net "out", 0 0, L_0xceb3e0;  1 drivers
S_0xca3b30 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf1fe0 .functor OR 1, L_0xcf2530, L_0xcf2630, C4<0>, C4<0>;
v0xca3d50_0 .net "A", 0 0, L_0xcf2530;  alias, 1 drivers
v0xca3ea0_0 .net "B", 0 0, L_0xcf2630;  alias, 1 drivers
v0xca3f60_0 .net "out", 0 0, L_0xcf1fe0;  1 drivers
S_0xca4060 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf1740 .functor XOR 1, L_0xcf2630, L_0xcf17b0, C4<0>, C4<0>;
v0xca4230_0 .net "A", 0 0, L_0xcf2630;  alias, 1 drivers
v0xca4380_0 .net "B", 0 0, L_0xcf17b0;  1 drivers
v0xca4440_0 .net "out", 0 0, L_0xcf1740;  alias, 1 drivers
S_0xca4580 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xca1a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf1df0 .functor XOR 1, L_0xcf2530, L_0xcf2630, C4<0>, C4<0>;
v0xca4750_0 .net "A", 0 0, L_0xcf2530;  alias, 1 drivers
v0xca4810_0 .net "B", 0 0, L_0xcf2630;  alias, 1 drivers
v0xca48d0_0 .net "out", 0 0, L_0xcf1df0;  1 drivers
S_0xca5460 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcc2a80 .functor BUFZ 1, L_0xd0f330, C4<0>, C4<0>, C4<0>;
L_0xcc2b10 .functor BUFZ 1, L_0xd0f330, C4<0>, C4<0>, C4<0>;
v0xca83d0_0 .net "A", 0 0, L_0xd11ef0;  1 drivers
v0xca8470_0 .net "B", 0 0, L_0xd108c0;  1 drivers
v0xca8530_0 .net "I", 7 0, L_0xcc2c30;  1 drivers
v0xca8630_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xca86d0_0 .net *"_s15", 0 0, L_0xcc2a80;  1 drivers
v0xca87e0_0 .net *"_s19", 0 0, L_0xcc2b10;  1 drivers
L_0x7fb26ad82a38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xca88c0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82a38;  1 drivers
v0xca89a0_0 .net "addORsub", 0 0, L_0xd0f330;  1 drivers
v0xca8a40_0 .net "carryin", 0 0, L_0xd10960;  1 drivers
v0xca8ba0_0 .net "carryout", 0 0, L_0xca77e0;  1 drivers
v0xca8c70_0 .net "modB", 0 0, L_0xcfe150;  1 drivers
v0xca8d10_0 .net "out", 0 0, L_0xcc2920;  1 drivers
L_0xd0f200 .part v0xc41150_0, 0, 1;
LS_0xcc2c30_0_0 .concat8 [ 1 1 1 1], L_0xcc2a80, L_0xcc2b10, L_0xcc2630, L_0x7fb26ad82a38;
LS_0xcc2c30_0_4 .concat8 [ 1 1 1 1], L_0xca7cc0, L_0xcc27b0, L_0xcc2820, L_0xcc2890;
L_0xcc2c30 .concat8 [ 4 4 0 0], LS_0xcc2c30_0_0, LS_0xcc2c30_0_4;
S_0xca56d0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcfe1c0 .functor XOR 1, L_0xd11ef0, L_0xcfe150, C4<0>, C4<0>;
L_0xd0f330 .functor XOR 1, L_0xcfe1c0, L_0xd10960, C4<0>, C4<0>;
L_0xd101e0 .functor AND 1, L_0xcfe1c0, L_0xd10960, C4<1>, C4<1>;
L_0xd10270 .functor AND 1, L_0xd11ef0, L_0xcfe150, C4<1>, C4<1>;
L_0xca77e0 .functor OR 1, L_0xd101e0, L_0xd10270, C4<0>, C4<0>;
v0xca5970_0 .net "A", 0 0, L_0xd11ef0;  alias, 1 drivers
v0xca5a50_0 .net "B", 0 0, L_0xcfe150;  alias, 1 drivers
v0xca5b10_0 .net "carryin", 0 0, L_0xd10960;  alias, 1 drivers
v0xca5be0_0 .net "carryout", 0 0, L_0xca77e0;  alias, 1 drivers
v0xca5ca0_0 .net "out1", 0 0, L_0xcfe1c0;  1 drivers
v0xca5db0_0 .net "out2", 0 0, L_0xd101e0;  1 drivers
v0xca5e70_0 .net "out3", 0 0, L_0xd10270;  1 drivers
v0xca5f30_0 .net "sum", 0 0, L_0xd0f330;  alias, 1 drivers
S_0xca6090 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xca7cc0 .functor AND 1, L_0xd11ef0, L_0xd108c0, C4<1>, C4<1>;
v0xca62d0_0 .net "A", 0 0, L_0xd11ef0;  alias, 1 drivers
v0xca6390_0 .net "B", 0 0, L_0xd108c0;  alias, 1 drivers
v0xca6430_0 .net "out", 0 0, L_0xca7cc0;  1 drivers
S_0xca6580 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xca67d0_0 .net "I", 7 0, L_0xcc2c30;  alias, 1 drivers
v0xca68b0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xca6970_0 .net "out", 0 0, L_0xcc2920;  alias, 1 drivers
L_0xcc2920 .part/v L_0xcc2c30, v0xc41150_0, 1;
S_0xca6ac0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcc27b0 .functor NAND 1, L_0xd11ef0, L_0xd108c0, C4<1>, C4<1>;
v0xca6ce0_0 .net "A", 0 0, L_0xd11ef0;  alias, 1 drivers
v0xca6df0_0 .net "B", 0 0, L_0xd108c0;  alias, 1 drivers
v0xca6eb0_0 .net "out", 0 0, L_0xcc27b0;  1 drivers
S_0xca6fc0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcc2820 .functor NOR 1, L_0xd11ef0, L_0xd108c0, C4<0>, C4<0>;
v0xca7230_0 .net "A", 0 0, L_0xd11ef0;  alias, 1 drivers
v0xca72f0_0 .net "B", 0 0, L_0xd108c0;  alias, 1 drivers
v0xca7400_0 .net "out", 0 0, L_0xcc2820;  1 drivers
S_0xca7500 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcc2890 .functor OR 1, L_0xd11ef0, L_0xd108c0, C4<0>, C4<0>;
v0xca7720_0 .net "A", 0 0, L_0xd11ef0;  alias, 1 drivers
v0xca7870_0 .net "B", 0 0, L_0xd108c0;  alias, 1 drivers
v0xca7930_0 .net "out", 0 0, L_0xcc2890;  1 drivers
S_0xca7a30 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcfe150 .functor XOR 1, L_0xd108c0, L_0xd0f200, C4<0>, C4<0>;
v0xca7c00_0 .net "A", 0 0, L_0xd108c0;  alias, 1 drivers
v0xca7d50_0 .net "B", 0 0, L_0xd0f200;  1 drivers
v0xca7e10_0 .net "out", 0 0, L_0xcfe150;  alias, 1 drivers
S_0xca7f50 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xca5460;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcc2630 .functor XOR 1, L_0xd11ef0, L_0xd108c0, C4<0>, C4<0>;
v0xca8120_0 .net "A", 0 0, L_0xd11ef0;  alias, 1 drivers
v0xca81e0_0 .net "B", 0 0, L_0xd108c0;  alias, 1 drivers
v0xca82a0_0 .net "out", 0 0, L_0xcc2630;  1 drivers
S_0xca8e30 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0xd10a90 .functor BUFZ 1, L_0xd12530, C4<0>, C4<0>, C4<0>;
L_0xd10b00 .functor BUFZ 1, L_0xd12530, C4<0>, C4<0>, C4<0>;
v0xcac7d0_0 .net "A", 0 0, L_0xd13230;  1 drivers
v0xcac870_0 .net "B", 0 0, L_0xd11f90;  1 drivers
v0xcac930_0 .net "I", 7 0, L_0xd12d60;  1 drivers
v0xcaca30_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcacad0_0 .net *"_s3", 0 0, L_0xd10a90;  1 drivers
v0xcacbe0_0 .net *"_s7", 0 0, L_0xd10b00;  1 drivers
v0xcaccc0_0 .net "as", 0 0, L_0xd12530;  1 drivers
v0xcacdb0_0 .net "carryin", 0 0, L_0xd12030;  1 drivers
v0xcacea0_0 .net "carryout", 0 0, L_0xcab1c0;  alias, 1 drivers
v0xcacfd0_0 .net "modB", 0 0, L_0xd12320;  1 drivers
v0xcad0c0_0 .net "out", 0 0, L_0xd12b40;  1 drivers
v0xcad160_0 .net "overflow", 0 0, L_0xd12c80;  alias, 1 drivers
L_0xd12390 .part v0xc41150_0, 0, 1;
LS_0xd12d60_0_0 .concat8 [ 1 1 1 1], L_0xd10a90, L_0xd10b00, L_0xd12870, L_0xd12cf0;
LS_0xd12d60_0_4 .concat8 [ 1 1 1 1], L_0xcab6a0, L_0xd129f0, L_0xd12a60, L_0xd12ad0;
L_0xd12d60 .concat8 [ 4 4 0 0], LS_0xd12d60_0_0, LS_0xd12d60_0_4;
S_0xca90b0 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xd12430 .functor XOR 1, L_0xd13230, L_0xd12320, C4<0>, C4<0>;
L_0xd12530 .functor XOR 1, L_0xd12430, L_0xd12030, C4<0>, C4<0>;
L_0xd125a0 .functor AND 1, L_0xd12430, L_0xd12030, C4<1>, C4<1>;
L_0xd126a0 .functor AND 1, L_0xd13230, L_0xd12320, C4<1>, C4<1>;
L_0xcab1c0 .functor OR 1, L_0xd125a0, L_0xd126a0, C4<0>, C4<0>;
v0xca9350_0 .net "A", 0 0, L_0xd13230;  alias, 1 drivers
v0xca9430_0 .net "B", 0 0, L_0xd12320;  alias, 1 drivers
v0xca94f0_0 .net "carryin", 0 0, L_0xd12030;  alias, 1 drivers
v0xca95c0_0 .net "carryout", 0 0, L_0xcab1c0;  alias, 1 drivers
v0xca9680_0 .net "out1", 0 0, L_0xd12430;  1 drivers
v0xca9790_0 .net "out2", 0 0, L_0xd125a0;  1 drivers
v0xca9850_0 .net "out3", 0 0, L_0xd126a0;  1 drivers
v0xca9910_0 .net "sum", 0 0, L_0xd12530;  alias, 1 drivers
S_0xca9a70 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcab6a0 .functor AND 1, L_0xd13230, L_0xd11f90, C4<1>, C4<1>;
v0xca9cb0_0 .net "A", 0 0, L_0xd13230;  alias, 1 drivers
v0xca9d70_0 .net "B", 0 0, L_0xd11f90;  alias, 1 drivers
v0xca9e10_0 .net "out", 0 0, L_0xcab6a0;  1 drivers
S_0xca9f60 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcaa1b0_0 .net "I", 7 0, L_0xd12d60;  alias, 1 drivers
v0xcaa290_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcaa350_0 .net "out", 0 0, L_0xd12b40;  alias, 1 drivers
L_0xd12b40 .part/v L_0xd12d60, v0xc41150_0, 1;
S_0xcaa4a0 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd129f0 .functor NAND 1, L_0xd13230, L_0xd11f90, C4<1>, C4<1>;
v0xcaa6c0_0 .net "A", 0 0, L_0xd13230;  alias, 1 drivers
v0xcaa7d0_0 .net "B", 0 0, L_0xd11f90;  alias, 1 drivers
v0xcaa890_0 .net "out", 0 0, L_0xd129f0;  1 drivers
S_0xcaa9a0 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd12a60 .functor NOR 1, L_0xd13230, L_0xd11f90, C4<0>, C4<0>;
v0xcaac10_0 .net "A", 0 0, L_0xd13230;  alias, 1 drivers
v0xcaacd0_0 .net "B", 0 0, L_0xd11f90;  alias, 1 drivers
v0xcaade0_0 .net "out", 0 0, L_0xd12a60;  1 drivers
S_0xcaaee0 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd12ad0 .functor OR 1, L_0xd13230, L_0xd11f90, C4<0>, C4<0>;
v0xcab100_0 .net "A", 0 0, L_0xd13230;  alias, 1 drivers
v0xcab250_0 .net "B", 0 0, L_0xd11f90;  alias, 1 drivers
v0xcab310_0 .net "out", 0 0, L_0xd12ad0;  1 drivers
S_0xcab410 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd12320 .functor XOR 1, L_0xd11f90, L_0xd12390, C4<0>, C4<0>;
v0xcab5e0_0 .net "A", 0 0, L_0xd11f90;  alias, 1 drivers
v0xcab730_0 .net "B", 0 0, L_0xd12390;  1 drivers
v0xcab7f0_0 .net "out", 0 0, L_0xd12320;  alias, 1 drivers
S_0xcab930 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd12870 .functor XOR 1, L_0xd13230, L_0xd11f90, C4<0>, C4<0>;
v0xcabb00_0 .net "A", 0 0, L_0xd13230;  alias, 1 drivers
v0xcabbc0_0 .net "B", 0 0, L_0xd11f90;  alias, 1 drivers
v0xcabc80_0 .net "out", 0 0, L_0xd12870;  1 drivers
S_0xcabdb0 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd12c80 .functor XOR 1, L_0xd12030, L_0xcab1c0, C4<0>, C4<0>;
v0xcac010_0 .net "A", 0 0, L_0xd12030;  alias, 1 drivers
v0xcac100_0 .net "B", 0 0, L_0xcab1c0;  alias, 1 drivers
v0xcac1d0_0 .net "out", 0 0, L_0xd12c80;  alias, 1 drivers
S_0xcac2e0 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0xca8e30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xd12cf0 .functor XOR 1, L_0xd12c80, L_0xd12530, C4<0>, C4<0>;
v0xcac500_0 .net "A", 0 0, L_0xd12c80;  alias, 1 drivers
v0xcac5f0_0 .net "B", 0 0, L_0xd12530;  alias, 1 drivers
v0xcac6c0_0 .net "out", 0 0, L_0xd12cf0;  1 drivers
S_0xcad350 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf3230 .functor BUFZ 1, L_0xcf2a80, C4<0>, C4<0>, C4<0>;
L_0xcf32a0 .functor BUFZ 1, L_0xcf2a80, C4<0>, C4<0>, C4<0>;
v0xcb01d0_0 .net "A", 0 0, L_0xcf36e0;  1 drivers
v0xcb0270_0 .net "B", 0 0, L_0xcf3780;  1 drivers
v0xcb0330_0 .net "I", 7 0, L_0xcf33c0;  1 drivers
v0xcb0430_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcb04d0_0 .net *"_s15", 0 0, L_0xcf3230;  1 drivers
v0xcb05e0_0 .net *"_s19", 0 0, L_0xcf32a0;  1 drivers
L_0x7fb26ad822e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xcb06c0_0 .net/2s *"_s23", 0 0, L_0x7fb26ad822e8;  1 drivers
v0xcb07a0_0 .net "addORsub", 0 0, L_0xcf2a80;  1 drivers
v0xcb0840_0 .net "carryin", 0 0, L_0xcf38a0;  1 drivers
v0xcb09a0_0 .net "carryout", 0 0, L_0xcaf5e0;  1 drivers
v0xcb0a70_0 .net "modB", 0 0, L_0xcf2870;  1 drivers
v0xcb0b10_0 .net "out", 0 0, L_0xcf30f0;  1 drivers
L_0xcf28e0 .part v0xc41150_0, 0, 1;
LS_0xcf33c0_0_0 .concat8 [ 1 1 1 1], L_0xcf3230, L_0xcf32a0, L_0xcf2e20, L_0x7fb26ad822e8;
LS_0xcf33c0_0_4 .concat8 [ 1 1 1 1], L_0xcafac0, L_0xcf2fa0, L_0xcf3010, L_0xcf3080;
L_0xcf33c0 .concat8 [ 4 4 0 0], LS_0xcf33c0_0_0, LS_0xcf33c0_0_4;
S_0xcad5c0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf2980 .functor XOR 1, L_0xcf36e0, L_0xcf2870, C4<0>, C4<0>;
L_0xcf2a80 .functor XOR 1, L_0xcf2980, L_0xcf38a0, C4<0>, C4<0>;
L_0xcf2b40 .functor AND 1, L_0xcf2980, L_0xcf38a0, C4<1>, C4<1>;
L_0xcf2bb0 .functor AND 1, L_0xcf36e0, L_0xcf2870, C4<1>, C4<1>;
L_0xcaf5e0 .functor OR 1, L_0xcf2b40, L_0xcf2bb0, C4<0>, C4<0>;
v0xcad830_0 .net "A", 0 0, L_0xcf36e0;  alias, 1 drivers
v0xcad910_0 .net "B", 0 0, L_0xcf2870;  alias, 1 drivers
v0xcad9d0_0 .net "carryin", 0 0, L_0xcf38a0;  alias, 1 drivers
v0xcada70_0 .net "carryout", 0 0, L_0xcaf5e0;  alias, 1 drivers
v0xcadb30_0 .net "out1", 0 0, L_0xcf2980;  1 drivers
v0xcadc40_0 .net "out2", 0 0, L_0xcf2b40;  1 drivers
v0xcadd00_0 .net "out3", 0 0, L_0xcf2bb0;  1 drivers
v0xcaddc0_0 .net "sum", 0 0, L_0xcf2a80;  alias, 1 drivers
S_0xcadf20 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcafac0 .functor AND 1, L_0xcf36e0, L_0xcf3780, C4<1>, C4<1>;
v0xcae160_0 .net "A", 0 0, L_0xcf36e0;  alias, 1 drivers
v0xcae220_0 .net "B", 0 0, L_0xcf3780;  alias, 1 drivers
v0xcae2c0_0 .net "out", 0 0, L_0xcafac0;  1 drivers
S_0xcae3e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcae600_0 .net "I", 7 0, L_0xcf33c0;  alias, 1 drivers
v0xcae6e0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcae7a0_0 .net "out", 0 0, L_0xcf30f0;  alias, 1 drivers
L_0xcf30f0 .part/v L_0xcf33c0, v0xc41150_0, 1;
S_0xcae8c0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf2fa0 .functor NAND 1, L_0xcf36e0, L_0xcf3780, C4<1>, C4<1>;
v0xcaeae0_0 .net "A", 0 0, L_0xcf36e0;  alias, 1 drivers
v0xcaebf0_0 .net "B", 0 0, L_0xcf3780;  alias, 1 drivers
v0xcaecb0_0 .net "out", 0 0, L_0xcf2fa0;  1 drivers
S_0xcaedc0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf3010 .functor NOR 1, L_0xcf36e0, L_0xcf3780, C4<0>, C4<0>;
v0xcaf030_0 .net "A", 0 0, L_0xcf36e0;  alias, 1 drivers
v0xcaf0f0_0 .net "B", 0 0, L_0xcf3780;  alias, 1 drivers
v0xcaf200_0 .net "out", 0 0, L_0xcf3010;  1 drivers
S_0xcaf300 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf3080 .functor OR 1, L_0xcf36e0, L_0xcf3780, C4<0>, C4<0>;
v0xcaf520_0 .net "A", 0 0, L_0xcf36e0;  alias, 1 drivers
v0xcaf670_0 .net "B", 0 0, L_0xcf3780;  alias, 1 drivers
v0xcaf730_0 .net "out", 0 0, L_0xcf3080;  1 drivers
S_0xcaf830 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf2870 .functor XOR 1, L_0xcf3780, L_0xcf28e0, C4<0>, C4<0>;
v0xcafa00_0 .net "A", 0 0, L_0xcf3780;  alias, 1 drivers
v0xcafb50_0 .net "B", 0 0, L_0xcf28e0;  1 drivers
v0xcafc10_0 .net "out", 0 0, L_0xcf2870;  alias, 1 drivers
S_0xcafd50 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xcad350;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf2e20 .functor XOR 1, L_0xcf36e0, L_0xcf3780, C4<0>, C4<0>;
v0xcaff20_0 .net "A", 0 0, L_0xcf36e0;  alias, 1 drivers
v0xcaffe0_0 .net "B", 0 0, L_0xcf3780;  alias, 1 drivers
v0xcb00a0_0 .net "out", 0 0, L_0xcf2e20;  1 drivers
S_0xcb0c30 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf4470 .functor BUFZ 1, L_0xcf3c20, C4<0>, C4<0>, C4<0>;
L_0xcf4500 .functor BUFZ 1, L_0xcf3c20, C4<0>, C4<0>, C4<0>;
v0xcb3ba0_0 .net "A", 0 0, L_0xcf4940;  1 drivers
v0xcb3c40_0 .net "B", 0 0, L_0xcf4a70;  1 drivers
v0xcb3d00_0 .net "I", 7 0, L_0xcf4620;  1 drivers
v0xcb3e00_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcb3ea0_0 .net *"_s15", 0 0, L_0xcf4470;  1 drivers
v0xcb3fb0_0 .net *"_s19", 0 0, L_0xcf4500;  1 drivers
L_0x7fb26ad82330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xcb4090_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82330;  1 drivers
v0xcb4170_0 .net "addORsub", 0 0, L_0xcf3c20;  1 drivers
v0xcb4210_0 .net "carryin", 0 0, L_0xcf4c20;  1 drivers
v0xcb4370_0 .net "carryout", 0 0, L_0xcb2fb0;  1 drivers
v0xcb4440_0 .net "modB", 0 0, L_0xcf2800;  1 drivers
v0xcb44e0_0 .net "out", 0 0, L_0xcf4310;  1 drivers
L_0xcf3a60 .part v0xc41150_0, 0, 1;
LS_0xcf4620_0_0 .concat8 [ 1 1 1 1], L_0xcf4470, L_0xcf4500, L_0xcf4000, L_0x7fb26ad82330;
LS_0xcf4620_0_4 .concat8 [ 1 1 1 1], L_0xcb3490, L_0xcf4180, L_0xcf41f0, L_0xcf4280;
L_0xcf4620 .concat8 [ 4 4 0 0], LS_0xcf4620_0_0, LS_0xcf4620_0_4;
S_0xcb0ea0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf3b00 .functor XOR 1, L_0xcf4940, L_0xcf2800, C4<0>, C4<0>;
L_0xcf3c20 .functor XOR 1, L_0xcf3b00, L_0xcf4c20, C4<0>, C4<0>;
L_0xcf3d00 .functor AND 1, L_0xcf3b00, L_0xcf4c20, C4<1>, C4<1>;
L_0xcf3d90 .functor AND 1, L_0xcf4940, L_0xcf2800, C4<1>, C4<1>;
L_0xcb2fb0 .functor OR 1, L_0xcf3d00, L_0xcf3d90, C4<0>, C4<0>;
v0xcb1140_0 .net "A", 0 0, L_0xcf4940;  alias, 1 drivers
v0xcb1220_0 .net "B", 0 0, L_0xcf2800;  alias, 1 drivers
v0xcb12e0_0 .net "carryin", 0 0, L_0xcf4c20;  alias, 1 drivers
v0xcb13b0_0 .net "carryout", 0 0, L_0xcb2fb0;  alias, 1 drivers
v0xcb1470_0 .net "out1", 0 0, L_0xcf3b00;  1 drivers
v0xcb1580_0 .net "out2", 0 0, L_0xcf3d00;  1 drivers
v0xcb1640_0 .net "out3", 0 0, L_0xcf3d90;  1 drivers
v0xcb1700_0 .net "sum", 0 0, L_0xcf3c20;  alias, 1 drivers
S_0xcb1860 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcb3490 .functor AND 1, L_0xcf4940, L_0xcf4a70, C4<1>, C4<1>;
v0xcb1aa0_0 .net "A", 0 0, L_0xcf4940;  alias, 1 drivers
v0xcb1b60_0 .net "B", 0 0, L_0xcf4a70;  alias, 1 drivers
v0xcb1c00_0 .net "out", 0 0, L_0xcb3490;  1 drivers
S_0xcb1d50 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcb1fa0_0 .net "I", 7 0, L_0xcf4620;  alias, 1 drivers
v0xcb2080_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcb2140_0 .net "out", 0 0, L_0xcf4310;  alias, 1 drivers
L_0xcf4310 .part/v L_0xcf4620, v0xc41150_0, 1;
S_0xcb2290 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf4180 .functor NAND 1, L_0xcf4940, L_0xcf4a70, C4<1>, C4<1>;
v0xcb24b0_0 .net "A", 0 0, L_0xcf4940;  alias, 1 drivers
v0xcb25c0_0 .net "B", 0 0, L_0xcf4a70;  alias, 1 drivers
v0xcb2680_0 .net "out", 0 0, L_0xcf4180;  1 drivers
S_0xcb2790 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf41f0 .functor NOR 1, L_0xcf4940, L_0xcf4a70, C4<0>, C4<0>;
v0xcb2a00_0 .net "A", 0 0, L_0xcf4940;  alias, 1 drivers
v0xcb2ac0_0 .net "B", 0 0, L_0xcf4a70;  alias, 1 drivers
v0xcb2bd0_0 .net "out", 0 0, L_0xcf41f0;  1 drivers
S_0xcb2cd0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf4280 .functor OR 1, L_0xcf4940, L_0xcf4a70, C4<0>, C4<0>;
v0xcb2ef0_0 .net "A", 0 0, L_0xcf4940;  alias, 1 drivers
v0xcb3040_0 .net "B", 0 0, L_0xcf4a70;  alias, 1 drivers
v0xcb3100_0 .net "out", 0 0, L_0xcf4280;  1 drivers
S_0xcb3200 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf2800 .functor XOR 1, L_0xcf4a70, L_0xcf3a60, C4<0>, C4<0>;
v0xcb33d0_0 .net "A", 0 0, L_0xcf4a70;  alias, 1 drivers
v0xcb3520_0 .net "B", 0 0, L_0xcf3a60;  1 drivers
v0xcb35e0_0 .net "out", 0 0, L_0xcf2800;  alias, 1 drivers
S_0xcb3720 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xcb0c30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf4000 .functor XOR 1, L_0xcf4940, L_0xcf4a70, C4<0>, C4<0>;
v0xcb38f0_0 .net "A", 0 0, L_0xcf4940;  alias, 1 drivers
v0xcb39b0_0 .net "B", 0 0, L_0xcf4a70;  alias, 1 drivers
v0xcb3a70_0 .net "out", 0 0, L_0xcf4000;  1 drivers
S_0xcb4600 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf57a0 .functor BUFZ 1, L_0xcf4f00, C4<0>, C4<0>, C4<0>;
L_0xcf5830 .functor BUFZ 1, L_0xcf4f00, C4<0>, C4<0>, C4<0>;
v0xcb7570_0 .net "A", 0 0, L_0xcf5c70;  1 drivers
v0xcb7610_0 .net "B", 0 0, L_0xcf5d10;  1 drivers
v0xcb76d0_0 .net "I", 7 0, L_0xcf5950;  1 drivers
v0xcb77d0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcb7870_0 .net *"_s15", 0 0, L_0xcf57a0;  1 drivers
v0xcb7980_0 .net *"_s19", 0 0, L_0xcf5830;  1 drivers
L_0x7fb26ad82378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xcb7a60_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82378;  1 drivers
v0xcb7b40_0 .net "addORsub", 0 0, L_0xcf4f00;  1 drivers
v0xcb7be0_0 .net "carryin", 0 0, L_0xcf4cc0;  1 drivers
v0xcb7d40_0 .net "carryout", 0 0, L_0xcb6980;  1 drivers
v0xcb7e10_0 .net "modB", 0 0, L_0xcf49e0;  1 drivers
v0xcb7eb0_0 .net "out", 0 0, L_0xcf5640;  1 drivers
L_0xcf4d60 .part v0xc41150_0, 0, 1;
LS_0xcf5950_0_0 .concat8 [ 1 1 1 1], L_0xcf57a0, L_0xcf5830, L_0xcf5330, L_0x7fb26ad82378;
LS_0xcf5950_0_4 .concat8 [ 1 1 1 1], L_0xcb6e60, L_0xcf54b0, L_0xcf5520, L_0xcf55b0;
L_0xcf5950 .concat8 [ 4 4 0 0], LS_0xcf5950_0_0, LS_0xcf5950_0_4;
S_0xcb4870 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf4e00 .functor XOR 1, L_0xcf5c70, L_0xcf49e0, C4<0>, C4<0>;
L_0xcf4f00 .functor XOR 1, L_0xcf4e00, L_0xcf4cc0, C4<0>, C4<0>;
L_0xcf5030 .functor AND 1, L_0xcf4e00, L_0xcf4cc0, C4<1>, C4<1>;
L_0xcf50c0 .functor AND 1, L_0xcf5c70, L_0xcf49e0, C4<1>, C4<1>;
L_0xcb6980 .functor OR 1, L_0xcf5030, L_0xcf50c0, C4<0>, C4<0>;
v0xcb4b10_0 .net "A", 0 0, L_0xcf5c70;  alias, 1 drivers
v0xcb4bf0_0 .net "B", 0 0, L_0xcf49e0;  alias, 1 drivers
v0xcb4cb0_0 .net "carryin", 0 0, L_0xcf4cc0;  alias, 1 drivers
v0xcb4d80_0 .net "carryout", 0 0, L_0xcb6980;  alias, 1 drivers
v0xcb4e40_0 .net "out1", 0 0, L_0xcf4e00;  1 drivers
v0xcb4f50_0 .net "out2", 0 0, L_0xcf5030;  1 drivers
v0xcb5010_0 .net "out3", 0 0, L_0xcf50c0;  1 drivers
v0xcb50d0_0 .net "sum", 0 0, L_0xcf4f00;  alias, 1 drivers
S_0xcb5230 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcb6e60 .functor AND 1, L_0xcf5c70, L_0xcf5d10, C4<1>, C4<1>;
v0xcb5470_0 .net "A", 0 0, L_0xcf5c70;  alias, 1 drivers
v0xcb5530_0 .net "B", 0 0, L_0xcf5d10;  alias, 1 drivers
v0xcb55d0_0 .net "out", 0 0, L_0xcb6e60;  1 drivers
S_0xcb5720 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcb5970_0 .net "I", 7 0, L_0xcf5950;  alias, 1 drivers
v0xcb5a50_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcb5b10_0 .net "out", 0 0, L_0xcf5640;  alias, 1 drivers
L_0xcf5640 .part/v L_0xcf5950, v0xc41150_0, 1;
S_0xcb5c60 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf54b0 .functor NAND 1, L_0xcf5c70, L_0xcf5d10, C4<1>, C4<1>;
v0xcb5e80_0 .net "A", 0 0, L_0xcf5c70;  alias, 1 drivers
v0xcb5f90_0 .net "B", 0 0, L_0xcf5d10;  alias, 1 drivers
v0xcb6050_0 .net "out", 0 0, L_0xcf54b0;  1 drivers
S_0xcb6160 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf5520 .functor NOR 1, L_0xcf5c70, L_0xcf5d10, C4<0>, C4<0>;
v0xcb63d0_0 .net "A", 0 0, L_0xcf5c70;  alias, 1 drivers
v0xcb6490_0 .net "B", 0 0, L_0xcf5d10;  alias, 1 drivers
v0xcb65a0_0 .net "out", 0 0, L_0xcf5520;  1 drivers
S_0xcb66a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf55b0 .functor OR 1, L_0xcf5c70, L_0xcf5d10, C4<0>, C4<0>;
v0xcb68c0_0 .net "A", 0 0, L_0xcf5c70;  alias, 1 drivers
v0xcb6a10_0 .net "B", 0 0, L_0xcf5d10;  alias, 1 drivers
v0xcb6ad0_0 .net "out", 0 0, L_0xcf55b0;  1 drivers
S_0xcb6bd0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf49e0 .functor XOR 1, L_0xcf5d10, L_0xcf4d60, C4<0>, C4<0>;
v0xcb6da0_0 .net "A", 0 0, L_0xcf5d10;  alias, 1 drivers
v0xcb6ef0_0 .net "B", 0 0, L_0xcf4d60;  1 drivers
v0xcb6fb0_0 .net "out", 0 0, L_0xcf49e0;  alias, 1 drivers
S_0xcb70f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xcb4600;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf5330 .functor XOR 1, L_0xcf5c70, L_0xcf5d10, C4<0>, C4<0>;
v0xcb72c0_0 .net "A", 0 0, L_0xcf5c70;  alias, 1 drivers
v0xcb7380_0 .net "B", 0 0, L_0xcf5d10;  alias, 1 drivers
v0xcb7440_0 .net "out", 0 0, L_0xcf5330;  1 drivers
S_0xcb7fd0 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf69c0 .functor BUFZ 1, L_0xcf6120, C4<0>, C4<0>, C4<0>;
L_0xcf6a50 .functor BUFZ 1, L_0xcf6120, C4<0>, C4<0>, C4<0>;
v0xcbaf40_0 .net "A", 0 0, L_0xcf6e90;  1 drivers
v0xcbafe0_0 .net "B", 0 0, L_0xcf5db0;  1 drivers
v0xcbb0a0_0 .net "I", 7 0, L_0xcf6b70;  1 drivers
v0xcbb1a0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcbb240_0 .net *"_s15", 0 0, L_0xcf69c0;  1 drivers
v0xcbb350_0 .net *"_s19", 0 0, L_0xcf6a50;  1 drivers
L_0x7fb26ad823c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xcbb430_0 .net/2s *"_s23", 0 0, L_0x7fb26ad823c0;  1 drivers
v0xcbb510_0 .net "addORsub", 0 0, L_0xcf6120;  1 drivers
v0xcbb5b0_0 .net "carryin", 0 0, L_0xcf6ff0;  1 drivers
v0xcbb710_0 .net "carryout", 0 0, L_0xcba350;  1 drivers
v0xcbb7e0_0 .net "modB", 0 0, L_0xcf5ef0;  1 drivers
v0xcbb880_0 .net "out", 0 0, L_0xcf6860;  1 drivers
L_0xcf5f60 .part v0xc41150_0, 0, 1;
LS_0xcf6b70_0_0 .concat8 [ 1 1 1 1], L_0xcf69c0, L_0xcf6a50, L_0xcf6550, L_0x7fb26ad823c0;
LS_0xcf6b70_0_4 .concat8 [ 1 1 1 1], L_0xcba830, L_0xcf66d0, L_0xcf6740, L_0xcf67d0;
L_0xcf6b70 .concat8 [ 4 4 0 0], LS_0xcf6b70_0_0, LS_0xcf6b70_0_4;
S_0xcb8240 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf6000 .functor XOR 1, L_0xcf6e90, L_0xcf5ef0, C4<0>, C4<0>;
L_0xcf6120 .functor XOR 1, L_0xcf6000, L_0xcf6ff0, C4<0>, C4<0>;
L_0xcf6250 .functor AND 1, L_0xcf6000, L_0xcf6ff0, C4<1>, C4<1>;
L_0xcf62e0 .functor AND 1, L_0xcf6e90, L_0xcf5ef0, C4<1>, C4<1>;
L_0xcba350 .functor OR 1, L_0xcf6250, L_0xcf62e0, C4<0>, C4<0>;
v0xcb84e0_0 .net "A", 0 0, L_0xcf6e90;  alias, 1 drivers
v0xcb85c0_0 .net "B", 0 0, L_0xcf5ef0;  alias, 1 drivers
v0xcb8680_0 .net "carryin", 0 0, L_0xcf6ff0;  alias, 1 drivers
v0xcb8750_0 .net "carryout", 0 0, L_0xcba350;  alias, 1 drivers
v0xcb8810_0 .net "out1", 0 0, L_0xcf6000;  1 drivers
v0xcb8920_0 .net "out2", 0 0, L_0xcf6250;  1 drivers
v0xcb89e0_0 .net "out3", 0 0, L_0xcf62e0;  1 drivers
v0xcb8aa0_0 .net "sum", 0 0, L_0xcf6120;  alias, 1 drivers
S_0xcb8c00 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcba830 .functor AND 1, L_0xcf6e90, L_0xcf5db0, C4<1>, C4<1>;
v0xcb8e40_0 .net "A", 0 0, L_0xcf6e90;  alias, 1 drivers
v0xcb8f00_0 .net "B", 0 0, L_0xcf5db0;  alias, 1 drivers
v0xcb8fa0_0 .net "out", 0 0, L_0xcba830;  1 drivers
S_0xcb90f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcb9340_0 .net "I", 7 0, L_0xcf6b70;  alias, 1 drivers
v0xcb9420_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcb94e0_0 .net "out", 0 0, L_0xcf6860;  alias, 1 drivers
L_0xcf6860 .part/v L_0xcf6b70, v0xc41150_0, 1;
S_0xcb9630 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf66d0 .functor NAND 1, L_0xcf6e90, L_0xcf5db0, C4<1>, C4<1>;
v0xcb9850_0 .net "A", 0 0, L_0xcf6e90;  alias, 1 drivers
v0xcb9960_0 .net "B", 0 0, L_0xcf5db0;  alias, 1 drivers
v0xcb9a20_0 .net "out", 0 0, L_0xcf66d0;  1 drivers
S_0xcb9b30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf6740 .functor NOR 1, L_0xcf6e90, L_0xcf5db0, C4<0>, C4<0>;
v0xcb9da0_0 .net "A", 0 0, L_0xcf6e90;  alias, 1 drivers
v0xcb9e60_0 .net "B", 0 0, L_0xcf5db0;  alias, 1 drivers
v0xcb9f70_0 .net "out", 0 0, L_0xcf6740;  1 drivers
S_0xcba070 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf67d0 .functor OR 1, L_0xcf6e90, L_0xcf5db0, C4<0>, C4<0>;
v0xcba290_0 .net "A", 0 0, L_0xcf6e90;  alias, 1 drivers
v0xcba3e0_0 .net "B", 0 0, L_0xcf5db0;  alias, 1 drivers
v0xcba4a0_0 .net "out", 0 0, L_0xcf67d0;  1 drivers
S_0xcba5a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf5ef0 .functor XOR 1, L_0xcf5db0, L_0xcf5f60, C4<0>, C4<0>;
v0xcba770_0 .net "A", 0 0, L_0xcf5db0;  alias, 1 drivers
v0xcba8c0_0 .net "B", 0 0, L_0xcf5f60;  1 drivers
v0xcba980_0 .net "out", 0 0, L_0xcf5ef0;  alias, 1 drivers
S_0xcbaac0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xcb7fd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf6550 .functor XOR 1, L_0xcf6e90, L_0xcf5db0, C4<0>, C4<0>;
v0xcbac90_0 .net "A", 0 0, L_0xcf6e90;  alias, 1 drivers
v0xcbad50_0 .net "B", 0 0, L_0xcf5db0;  alias, 1 drivers
v0xcbae10_0 .net "out", 0 0, L_0xcf6550;  1 drivers
S_0xcbb9a0 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf7c10 .functor BUFZ 1, L_0xcf7390, C4<0>, C4<0>, C4<0>;
L_0xcf7ca0 .functor BUFZ 1, L_0xcf7390, C4<0>, C4<0>, C4<0>;
v0xcbe910_0 .net "A", 0 0, L_0xcf80e0;  1 drivers
v0xcbe9b0_0 .net "B", 0 0, L_0xcf8180;  1 drivers
v0xcbea70_0 .net "I", 7 0, L_0xcf7dc0;  1 drivers
v0xcbeb70_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcbec10_0 .net *"_s15", 0 0, L_0xcf7c10;  1 drivers
v0xcbed20_0 .net *"_s19", 0 0, L_0xcf7ca0;  1 drivers
L_0x7fb26ad82408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xcbee00_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82408;  1 drivers
v0xcbeee0_0 .net "addORsub", 0 0, L_0xcf7390;  1 drivers
v0xcbef80_0 .net "carryin", 0 0, L_0xcf7120;  1 drivers
v0xcbf0e0_0 .net "carryout", 0 0, L_0xcbdd20;  1 drivers
v0xcbf1b0_0 .net "modB", 0 0, L_0xcf6f30;  1 drivers
v0xcbf250_0 .net "out", 0 0, L_0xcf7ab0;  1 drivers
L_0xcf71f0 .part v0xc41150_0, 0, 1;
LS_0xcf7dc0_0_0 .concat8 [ 1 1 1 1], L_0xcf7c10, L_0xcf7ca0, L_0xcf77a0, L_0x7fb26ad82408;
LS_0xcf7dc0_0_4 .concat8 [ 1 1 1 1], L_0xcbe200, L_0xcf7920, L_0xcf7990, L_0xcf7a20;
L_0xcf7dc0 .concat8 [ 4 4 0 0], LS_0xcf7dc0_0_0, LS_0xcf7dc0_0_4;
S_0xcbbc10 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf7290 .functor XOR 1, L_0xcf80e0, L_0xcf6f30, C4<0>, C4<0>;
L_0xcf7390 .functor XOR 1, L_0xcf7290, L_0xcf7120, C4<0>, C4<0>;
L_0xcf74a0 .functor AND 1, L_0xcf7290, L_0xcf7120, C4<1>, C4<1>;
L_0xcf7530 .functor AND 1, L_0xcf80e0, L_0xcf6f30, C4<1>, C4<1>;
L_0xcbdd20 .functor OR 1, L_0xcf74a0, L_0xcf7530, C4<0>, C4<0>;
v0xcbbeb0_0 .net "A", 0 0, L_0xcf80e0;  alias, 1 drivers
v0xcbbf90_0 .net "B", 0 0, L_0xcf6f30;  alias, 1 drivers
v0xcbc050_0 .net "carryin", 0 0, L_0xcf7120;  alias, 1 drivers
v0xcbc120_0 .net "carryout", 0 0, L_0xcbdd20;  alias, 1 drivers
v0xcbc1e0_0 .net "out1", 0 0, L_0xcf7290;  1 drivers
v0xcbc2f0_0 .net "out2", 0 0, L_0xcf74a0;  1 drivers
v0xcbc3b0_0 .net "out3", 0 0, L_0xcf7530;  1 drivers
v0xcbc470_0 .net "sum", 0 0, L_0xcf7390;  alias, 1 drivers
S_0xcbc5d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcbe200 .functor AND 1, L_0xcf80e0, L_0xcf8180, C4<1>, C4<1>;
v0xcbc810_0 .net "A", 0 0, L_0xcf80e0;  alias, 1 drivers
v0xcbc8d0_0 .net "B", 0 0, L_0xcf8180;  alias, 1 drivers
v0xcbc970_0 .net "out", 0 0, L_0xcbe200;  1 drivers
S_0xcbcac0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcbcd10_0 .net "I", 7 0, L_0xcf7dc0;  alias, 1 drivers
v0xcbcdf0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcbceb0_0 .net "out", 0 0, L_0xcf7ab0;  alias, 1 drivers
L_0xcf7ab0 .part/v L_0xcf7dc0, v0xc41150_0, 1;
S_0xcbd000 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf7920 .functor NAND 1, L_0xcf80e0, L_0xcf8180, C4<1>, C4<1>;
v0xcbd220_0 .net "A", 0 0, L_0xcf80e0;  alias, 1 drivers
v0xcbd330_0 .net "B", 0 0, L_0xcf8180;  alias, 1 drivers
v0xcbd3f0_0 .net "out", 0 0, L_0xcf7920;  1 drivers
S_0xcbd500 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf7990 .functor NOR 1, L_0xcf80e0, L_0xcf8180, C4<0>, C4<0>;
v0xcbd770_0 .net "A", 0 0, L_0xcf80e0;  alias, 1 drivers
v0xcbd830_0 .net "B", 0 0, L_0xcf8180;  alias, 1 drivers
v0xcbd940_0 .net "out", 0 0, L_0xcf7990;  1 drivers
S_0xcbda40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf7a20 .functor OR 1, L_0xcf80e0, L_0xcf8180, C4<0>, C4<0>;
v0xcbdc60_0 .net "A", 0 0, L_0xcf80e0;  alias, 1 drivers
v0xcbddb0_0 .net "B", 0 0, L_0xcf8180;  alias, 1 drivers
v0xcbde70_0 .net "out", 0 0, L_0xcf7a20;  1 drivers
S_0xcbdf70 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf6f30 .functor XOR 1, L_0xcf8180, L_0xcf71f0, C4<0>, C4<0>;
v0xcbe140_0 .net "A", 0 0, L_0xcf8180;  alias, 1 drivers
v0xcbe290_0 .net "B", 0 0, L_0xcf71f0;  1 drivers
v0xcbe350_0 .net "out", 0 0, L_0xcf6f30;  alias, 1 drivers
S_0xcbe490 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xcbb9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf77a0 .functor XOR 1, L_0xcf80e0, L_0xcf8180, C4<0>, C4<0>;
v0xcbe660_0 .net "A", 0 0, L_0xcf80e0;  alias, 1 drivers
v0xcbe720_0 .net "B", 0 0, L_0xcf8180;  alias, 1 drivers
v0xcbe7e0_0 .net "out", 0 0, L_0xcf77a0;  1 drivers
S_0xcbf370 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0xc3a000;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xcf8ec0 .functor BUFZ 1, L_0xcf8640, C4<0>, C4<0>, C4<0>;
L_0xcf8f50 .functor BUFZ 1, L_0xcf8640, C4<0>, C4<0>, C4<0>;
v0xcc22e0_0 .net "A", 0 0, L_0xcf9390;  1 drivers
v0xcc2380_0 .net "B", 0 0, L_0xcf8220;  1 drivers
v0xcc2440_0 .net "I", 7 0, L_0xcf9070;  1 drivers
v0xcc2540_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xc87c50_0 .net *"_s15", 0 0, L_0xcf8ec0;  1 drivers
v0xc87d60_0 .net *"_s19", 0 0, L_0xcf8f50;  1 drivers
L_0x7fb26ad82450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc87e40_0 .net/2s *"_s23", 0 0, L_0x7fb26ad82450;  1 drivers
v0xc87f20_0 .net "addORsub", 0 0, L_0xcf8640;  1 drivers
v0xc87fc0_0 .net "carryin", 0 0, L_0xcf9640;  1 drivers
v0xcc2eb0_0 .net "carryout", 0 0, L_0xcc16f0;  1 drivers
v0xcc2f80_0 .net "modB", 0 0, L_0xcf39d0;  1 drivers
v0xcc3020_0 .net "out", 0 0, L_0xcf8d60;  1 drivers
L_0xcf84a0 .part v0xc41150_0, 0, 1;
LS_0xcf9070_0_0 .concat8 [ 1 1 1 1], L_0xcf8ec0, L_0xcf8f50, L_0xcf8a50, L_0x7fb26ad82450;
LS_0xcf9070_0_4 .concat8 [ 1 1 1 1], L_0xcc1bd0, L_0xcf8bd0, L_0xcf8c40, L_0xcf8cd0;
L_0xcf9070 .concat8 [ 4 4 0 0], LS_0xcf9070_0_0, LS_0xcf9070_0_4;
S_0xcbf5e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xcf8540 .functor XOR 1, L_0xcf9390, L_0xcf39d0, C4<0>, C4<0>;
L_0xcf8640 .functor XOR 1, L_0xcf8540, L_0xcf9640, C4<0>, C4<0>;
L_0xcf8750 .functor AND 1, L_0xcf8540, L_0xcf9640, C4<1>, C4<1>;
L_0xcf87e0 .functor AND 1, L_0xcf9390, L_0xcf39d0, C4<1>, C4<1>;
L_0xcc16f0 .functor OR 1, L_0xcf8750, L_0xcf87e0, C4<0>, C4<0>;
v0xcbf880_0 .net "A", 0 0, L_0xcf9390;  alias, 1 drivers
v0xcbf960_0 .net "B", 0 0, L_0xcf39d0;  alias, 1 drivers
v0xcbfa20_0 .net "carryin", 0 0, L_0xcf9640;  alias, 1 drivers
v0xcbfaf0_0 .net "carryout", 0 0, L_0xcc16f0;  alias, 1 drivers
v0xcbfbb0_0 .net "out1", 0 0, L_0xcf8540;  1 drivers
v0xcbfcc0_0 .net "out2", 0 0, L_0xcf8750;  1 drivers
v0xcbfd80_0 .net "out3", 0 0, L_0xcf87e0;  1 drivers
v0xcbfe40_0 .net "sum", 0 0, L_0xcf8640;  alias, 1 drivers
S_0xcbffa0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcc1bd0 .functor AND 1, L_0xcf9390, L_0xcf8220, C4<1>, C4<1>;
v0xcc01e0_0 .net "A", 0 0, L_0xcf9390;  alias, 1 drivers
v0xcc02a0_0 .net "B", 0 0, L_0xcf8220;  alias, 1 drivers
v0xcc0340_0 .net "out", 0 0, L_0xcc1bd0;  1 drivers
S_0xcc0490 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xcc06e0_0 .net "I", 7 0, L_0xcf9070;  alias, 1 drivers
v0xcc07c0_0 .net "S", 2 0, v0xc41150_0;  alias, 1 drivers
v0xcc0880_0 .net "out", 0 0, L_0xcf8d60;  alias, 1 drivers
L_0xcf8d60 .part/v L_0xcf9070, v0xc41150_0, 1;
S_0xcc09d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf8bd0 .functor NAND 1, L_0xcf9390, L_0xcf8220, C4<1>, C4<1>;
v0xcc0bf0_0 .net "A", 0 0, L_0xcf9390;  alias, 1 drivers
v0xcc0d00_0 .net "B", 0 0, L_0xcf8220;  alias, 1 drivers
v0xcc0dc0_0 .net "out", 0 0, L_0xcf8bd0;  1 drivers
S_0xcc0ed0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf8c40 .functor NOR 1, L_0xcf9390, L_0xcf8220, C4<0>, C4<0>;
v0xcc1140_0 .net "A", 0 0, L_0xcf9390;  alias, 1 drivers
v0xcc1200_0 .net "B", 0 0, L_0xcf8220;  alias, 1 drivers
v0xcc1310_0 .net "out", 0 0, L_0xcf8c40;  1 drivers
S_0xcc1410 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf8cd0 .functor OR 1, L_0xcf9390, L_0xcf8220, C4<0>, C4<0>;
v0xcc1630_0 .net "A", 0 0, L_0xcf9390;  alias, 1 drivers
v0xcc1780_0 .net "B", 0 0, L_0xcf8220;  alias, 1 drivers
v0xcc1840_0 .net "out", 0 0, L_0xcf8cd0;  1 drivers
S_0xcc1940 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf39d0 .functor XOR 1, L_0xcf8220, L_0xcf84a0, C4<0>, C4<0>;
v0xcc1b10_0 .net "A", 0 0, L_0xcf8220;  alias, 1 drivers
v0xcc1c60_0 .net "B", 0 0, L_0xcf84a0;  1 drivers
v0xcc1d20_0 .net "out", 0 0, L_0xcf39d0;  alias, 1 drivers
S_0xcc1e60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xcbf370;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xcf8a50 .functor XOR 1, L_0xcf9390, L_0xcf8220, C4<0>, C4<0>;
v0xcc2030_0 .net "A", 0 0, L_0xcf9390;  alias, 1 drivers
v0xcc20f0_0 .net "B", 0 0, L_0xcf8220;  alias, 1 drivers
v0xcc21b0_0 .net "out", 0 0, L_0xcf8a50;  1 drivers
S_0xcc5890 .scope module, "mem" "memory" 4 51, 10 1 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "dmWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0xcda260 .functor BUFZ 32, L_0xcda1c0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcda410 .functor BUFZ 32, L_0xcda320, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcda5b0 .functor BUFZ 32, L_0xcda510, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcc5b80_0 .net "Addr0", 31 0, L_0xcda670;  1 drivers
v0xcc5c80_0 .net "DataIn0", 31 0, L_0xcee840;  alias, 1 drivers
v0xcc5d60_0 .net "DataOut0", 31 0, L_0xcda410;  alias, 1 drivers
v0xcc5e50_0 .net *"_s0", 31 0, L_0xcda1c0;  1 drivers
v0xcc5f30_0 .net *"_s4", 31 0, L_0xcda320;  1 drivers
v0xcc6010_0 .net *"_s8", 31 0, L_0xcda510;  1 drivers
v0xcc60f0_0 .net "clk", 0 0, v0xcd7b50_0;  alias, 1 drivers
v0xcc6190_0 .net "dmWE", 0 0, v0xc2b500_0;  alias, 1 drivers
v0xcc6260_0 .net "instruct_Addr1", 31 0, L_0xcda8b0;  1 drivers
v0xcc6390_0 .net "instruct_DataOut1", 31 0, L_0xcda5b0;  alias, 1 drivers
v0xcc6480 .array "mem", 0 32767, 31 0;
v0xcc6540_0 .net "memAtAdd", 31 0, L_0xcda260;  1 drivers
E_0xcc5b00 .event posedge, v0xc26f10_0;
L_0xcda1c0 .array/port v0xcc6480, L_0xcda670;
L_0xcda320 .array/port v0xcc6480, L_0xcda670;
L_0xcda510 .array/port v0xcc6480, L_0xcda8b0;
S_0xcc6740 .scope module, "op_imm_mux" "mux2" 4 64, 11 1 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0xcc6980_0 .net "input0", 31 0, v0xc229e0_0;  alias, 1 drivers
v0xcc6a60_0 .net "input1", 31 0, L_0xcee840;  alias, 1 drivers
v0xcc6b30_0 .net "out", 31 0, L_0xd16c30;  alias, 1 drivers
v0xcc6c30_0 .net "select0", 0 0, v0xc0c950_0;  alias, 1 drivers
L_0xd16c30 .functor MUXZ 32, L_0xcee840, v0xc229e0_0, v0xc0c950_0, C4<>;
S_0xcc6d50 .scope module, "pcmux" "pc_multiplexer" 4 48, 12 7 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0xcc7020_0 .net "JumpAddress", 25 0, v0xc2b140_0;  alias, 1 drivers
v0xcc7130_0 .var "PC", 31 0;
v0xcc71f0_0 .net "S", 1 0, v0xc49d30_0;  alias, 1 drivers
v0xcc72f0_0 .net "clk", 0 0, v0xcd7b50_0;  alias, 1 drivers
v0xcc73e0_0 .net "immediate", 31 0, v0xc229e0_0;  alias, 1 drivers
v0xcc7520_0 .var "mux_out", 31 0;
v0xcc7600_0 .var "nextPC", 31 0;
v0xcc76e0_0 .net "regRs", 31 0, L_0xcec050;  alias, 1 drivers
v0xcc77a0_0 .var "tempimmediate", 31 0;
E_0xcc6fc0/0 .event edge, v0xc49d30_0, v0xcc3140_0, v0xc229e0_0, v0xc2b140_0;
E_0xcc6fc0/1 .event edge, v0xcc7600_0;
E_0xcc6fc0 .event/or E_0xcc6fc0/0, E_0xcc6fc0/1;
S_0xcc79f0 .scope module, "reg_in_mux" "mux3_32bit" 4 63, 11 21 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0xcc7bf0_0 .net *"_s1", 0 0, L_0xd164a0;  1 drivers
v0xcc7cf0_0 .net *"_s10", 31 0, L_0xd16800;  1 drivers
v0xcc7dd0_0 .net *"_s3", 0 0, L_0xd16540;  1 drivers
L_0x7fb26ad82b10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0xcc7e90_0 .net/2u *"_s4", 31 0, L_0x7fb26ad82b10;  1 drivers
v0xcc7f70_0 .net *"_s6", 31 0, L_0xd16670;  1 drivers
v0xcc80a0_0 .net *"_s9", 0 0, L_0xd16760;  1 drivers
v0xcc8180_0 .net "input0", 31 0, L_0xd13080;  alias, 1 drivers
v0xcc8240_0 .net "input1", 31 0, L_0xcda410;  alias, 1 drivers
v0xcc8310_0 .net "input2", 31 0, L_0xd16a80;  1 drivers
v0xcc8460_0 .net "out", 31 0, L_0xd168f0;  alias, 1 drivers
v0xcc8540_0 .net "select0", 1 0, v0xc08400_0;  alias, 1 drivers
L_0xd164a0 .part v0xc08400_0, 1, 1;
L_0xd16540 .part v0xc08400_0, 0, 1;
L_0xd16670 .functor MUXZ 32, L_0xd16a80, L_0x7fb26ad82b10, L_0xd16540, C4<>;
L_0xd16760 .part v0xc08400_0, 0, 1;
L_0xd16800 .functor MUXZ 32, L_0xd13080, L_0xcda410, L_0xd16760, C4<>;
L_0xd168f0 .functor MUXZ 32, L_0xd16800, L_0xd16670, L_0xd164a0, C4<>;
S_0xcc86e0 .scope module, "reg_select_mux" "mux3_5bit" 4 62, 11 11 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0xcc88e0_0 .net *"_s1", 0 0, L_0xd15540;  1 drivers
v0xcc89e0_0 .net *"_s10", 4 0, L_0xd161d0;  1 drivers
v0xcc8ac0_0 .net *"_s3", 0 0, L_0xd15fa0;  1 drivers
L_0x7fb26ad82a80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0xcc8bb0_0 .net/2u *"_s4", 4 0, L_0x7fb26ad82a80;  1 drivers
v0xcc8c90_0 .net *"_s6", 4 0, L_0xd16040;  1 drivers
v0xcc8dc0_0 .net *"_s9", 0 0, L_0xd16130;  1 drivers
v0xcc8ea0_0 .net "input0", 4 0, v0xc0c650_0;  alias, 1 drivers
v0xcc8f60_0 .net "input1", 4 0, v0xc03d70_0;  alias, 1 drivers
L_0x7fb26ad82ac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0xcc9030_0 .net "input2", 4 0, L_0x7fb26ad82ac8;  1 drivers
v0xcc9180_0 .net "out", 4 0, L_0xd162c0;  alias, 1 drivers
v0xcc9260_0 .net "select0", 1 0, v0xc26b50_0;  alias, 1 drivers
L_0xd15540 .part v0xc26b50_0, 1, 1;
L_0xd15fa0 .part v0xc26b50_0, 0, 1;
L_0xd16040 .functor MUXZ 5, L_0x7fb26ad82ac8, L_0x7fb26ad82a80, L_0xd15fa0, C4<>;
L_0xd16130 .part v0xc26b50_0, 0, 1;
L_0xd161d0 .functor MUXZ 5, v0xc0c650_0, v0xc03d70_0, L_0xd16130, C4<>;
L_0xd162c0 .functor MUXZ 5, L_0xd161d0, L_0xd16040, L_0xd15540, C4<>;
S_0xcc9400 .scope module, "regi" "regfile" 4 57, 13 12 0, S_0xc58bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0xcd2890_0 .net "Clk", 0 0, v0xcd7b50_0;  alias, 1 drivers
v0xcd57e0_0 .net "ReadData1", 31 0, L_0xcec050;  alias, 1 drivers
v0xcd5880_0 .net "ReadData2", 31 0, L_0xcee840;  alias, 1 drivers
v0xcd5920_0 .net "ReadRegister1", 4 0, v0xc07fa0_0;  alias, 1 drivers
v0xcd5a10_0 .net "ReadRegister2", 4 0, v0xc03d70_0;  alias, 1 drivers
v0xcd5b00_0 .net "RegWrite", 0 0, v0xc08360_0;  alias, 1 drivers
v0xcd5bf0_0 .net "WriteData", 31 0, L_0xd168f0;  alias, 1 drivers
v0xcd5cb0_0 .net "WriteRegister", 4 0, L_0xd162c0;  alias, 1 drivers
v0xcd5da0_0 .net "decoded", 31 0, L_0xceaae0;  1 drivers
v0xcd5ef0 .array "registers", 0 31, 31 0;
S_0xcc96e0 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0xcc9400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0xcc9940_0 .net *"_s0", 31 0, L_0xcda9a0;  1 drivers
L_0x7fb26ad82060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0xcc9a40_0 .net *"_s3", 30 0, L_0x7fb26ad82060;  1 drivers
v0xcc9b20_0 .net "address", 4 0, L_0xd162c0;  alias, 1 drivers
v0xcc9bf0_0 .net "enable", 0 0, v0xc08360_0;  alias, 1 drivers
v0xcc9cc0_0 .net "out", 31 0, L_0xceaae0;  alias, 1 drivers
L_0xcda9a0 .concat [ 1 31 0 0], v0xc08360_0, L_0x7fb26ad82060;
L_0xceaae0 .shift/l 32, L_0xcda9a0, L_0xd162c0;
S_0xcc9e30 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcca020 .param/l "i" 0 13 33, +C4<01>;
S_0xcca0e0 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcca2d0 .param/l "i" 0 13 33, +C4<010>;
S_0xcca370 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcca560 .param/l "i" 0 13 33, +C4<011>;
S_0xcca620 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcca860 .param/l "i" 0 13 33, +C4<0100>;
S_0xcca920 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccab10 .param/l "i" 0 13 33, +C4<0101>;
S_0xccabd0 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccadc0 .param/l "i" 0 13 33, +C4<0110>;
S_0xccae80 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccb070 .param/l "i" 0 13 33, +C4<0111>;
S_0xccb130 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcca810 .param/l "i" 0 13 33, +C4<01000>;
S_0xccb420 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccb610 .param/l "i" 0 13 33, +C4<01001>;
S_0xccb6d0 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccb8c0 .param/l "i" 0 13 33, +C4<01010>;
S_0xccb980 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccbb70 .param/l "i" 0 13 33, +C4<01011>;
S_0xccbc30 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccbe20 .param/l "i" 0 13 33, +C4<01100>;
S_0xccbee0 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccc0d0 .param/l "i" 0 13 33, +C4<01101>;
S_0xccc190 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccc380 .param/l "i" 0 13 33, +C4<01110>;
S_0xccc440 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccc630 .param/l "i" 0 13 33, +C4<01111>;
S_0xccc6f0 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccb320 .param/l "i" 0 13 33, +C4<010000>;
S_0xccca40 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcccc10 .param/l "i" 0 13 33, +C4<010001>;
S_0xccccd0 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcccec0 .param/l "i" 0 13 33, +C4<010010>;
S_0xcccf80 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccd170 .param/l "i" 0 13 33, +C4<010011>;
S_0xccd230 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccd420 .param/l "i" 0 13 33, +C4<010100>;
S_0xccd4e0 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccd6d0 .param/l "i" 0 13 33, +C4<010101>;
S_0xccd790 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccd980 .param/l "i" 0 13 33, +C4<010110>;
S_0xccda40 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccdc30 .param/l "i" 0 13 33, +C4<010111>;
S_0xccdcf0 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccdee0 .param/l "i" 0 13 33, +C4<011000>;
S_0xccdfa0 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcce190 .param/l "i" 0 13 33, +C4<011001>;
S_0xcce250 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcce440 .param/l "i" 0 13 33, +C4<011010>;
S_0xcce500 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcce6f0 .param/l "i" 0 13 33, +C4<011011>;
S_0xcce7b0 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xcce9a0 .param/l "i" 0 13 33, +C4<011100>;
S_0xccea60 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccec50 .param/l "i" 0 13 33, +C4<011101>;
S_0xcced10 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccef00 .param/l "i" 0 13 33, +C4<011110>;
S_0xccefc0 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0xcc9400;
 .timescale 0 0;
P_0xccf1b0 .param/l "i" 0 13 33, +C4<011111>;
S_0xccf270 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0xcc9400;
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
L_0x7fb26ad820f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0xceacb0 .functor BUFZ 32, L_0x7fb26ad820f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_1 .array/port v0xcd5ef0, 1;
L_0xcead20 .functor BUFZ 32, v0xcd5ef0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_2 .array/port v0xcd5ef0, 2;
L_0xcead90 .functor BUFZ 32, v0xcd5ef0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_3 .array/port v0xcd5ef0, 3;
L_0xceae00 .functor BUFZ 32, v0xcd5ef0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_4 .array/port v0xcd5ef0, 4;
L_0xceae70 .functor BUFZ 32, v0xcd5ef0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_5 .array/port v0xcd5ef0, 5;
L_0xceaee0 .functor BUFZ 32, v0xcd5ef0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_6 .array/port v0xcd5ef0, 6;
L_0xceaf90 .functor BUFZ 32, v0xcd5ef0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_7 .array/port v0xcd5ef0, 7;
L_0xceb000 .functor BUFZ 32, v0xcd5ef0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_8 .array/port v0xcd5ef0, 8;
L_0xceb070 .functor BUFZ 32, v0xcd5ef0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_9 .array/port v0xcd5ef0, 9;
L_0xceb0e0 .functor BUFZ 32, v0xcd5ef0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_10 .array/port v0xcd5ef0, 10;
L_0xceb1b0 .functor BUFZ 32, v0xcd5ef0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_11 .array/port v0xcd5ef0, 11;
L_0xceb220 .functor BUFZ 32, v0xcd5ef0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_12 .array/port v0xcd5ef0, 12;
L_0xceb300 .functor BUFZ 32, v0xcd5ef0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_13 .array/port v0xcd5ef0, 13;
L_0xceb370 .functor BUFZ 32, v0xcd5ef0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_14 .array/port v0xcd5ef0, 14;
L_0xceb290 .functor BUFZ 32, v0xcd5ef0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_15 .array/port v0xcd5ef0, 15;
L_0xceb460 .functor BUFZ 32, v0xcd5ef0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_16 .array/port v0xcd5ef0, 16;
L_0xceb560 .functor BUFZ 32, v0xcd5ef0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_17 .array/port v0xcd5ef0, 17;
L_0xceb5d0 .functor BUFZ 32, v0xcd5ef0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_18 .array/port v0xcd5ef0, 18;
L_0xceb4d0 .functor BUFZ 32, v0xcd5ef0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_19 .array/port v0xcd5ef0, 19;
L_0xceb6e0 .functor BUFZ 32, v0xcd5ef0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_20 .array/port v0xcd5ef0, 20;
L_0xceb640 .functor BUFZ 32, v0xcd5ef0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_21 .array/port v0xcd5ef0, 21;
L_0xceb800 .functor BUFZ 32, v0xcd5ef0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_22 .array/port v0xcd5ef0, 22;
L_0xceb750 .functor BUFZ 32, v0xcd5ef0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_23 .array/port v0xcd5ef0, 23;
L_0xceb930 .functor BUFZ 32, v0xcd5ef0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_24 .array/port v0xcd5ef0, 24;
L_0xceb870 .functor BUFZ 32, v0xcd5ef0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_25 .array/port v0xcd5ef0, 25;
L_0xceba70 .functor BUFZ 32, v0xcd5ef0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_26 .array/port v0xcd5ef0, 26;
L_0xceb9a0 .functor BUFZ 32, v0xcd5ef0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_27 .array/port v0xcd5ef0, 27;
L_0xcebbc0 .functor BUFZ 32, v0xcd5ef0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_28 .array/port v0xcd5ef0, 28;
L_0xcebae0 .functor BUFZ 32, v0xcd5ef0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_29 .array/port v0xcd5ef0, 29;
L_0xcebb50 .functor BUFZ 32, v0xcd5ef0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_30 .array/port v0xcd5ef0, 30;
L_0xcebd30 .functor BUFZ 32, v0xcd5ef0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xcd5ef0_31 .array/port v0xcd5ef0, 31;
L_0xcebda0 .functor BUFZ 32, v0xcd5ef0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec050 .functor BUFZ 32, L_0xcebc30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fb26ad820a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0xccc8e0_0 .net *"_s101", 1 0, L_0x7fb26ad820a8;  1 drivers
v0xccfab0_0 .net *"_s96", 31 0, L_0xcebc30;  1 drivers
v0xccfb70_0 .net *"_s98", 6 0, L_0xcebf20;  1 drivers
v0xccfc50_0 .net "address", 4 0, v0xc07fa0_0;  alias, 1 drivers
v0xccfd10_0 .net "input0", 31 0, L_0x7fb26ad820f0;  1 drivers
v0xccfe20_0 .net "input1", 31 0, v0xcd5ef0_1;  1 drivers
v0xccff00_0 .net "input10", 31 0, v0xcd5ef0_10;  1 drivers
v0xccffe0_0 .net "input11", 31 0, v0xcd5ef0_11;  1 drivers
v0xcd00c0_0 .net "input12", 31 0, v0xcd5ef0_12;  1 drivers
v0xcd0230_0 .net "input13", 31 0, v0xcd5ef0_13;  1 drivers
v0xcd0310_0 .net "input14", 31 0, v0xcd5ef0_14;  1 drivers
v0xcd03f0_0 .net "input15", 31 0, v0xcd5ef0_15;  1 drivers
v0xcd04d0_0 .net "input16", 31 0, v0xcd5ef0_16;  1 drivers
v0xcd05b0_0 .net "input17", 31 0, v0xcd5ef0_17;  1 drivers
v0xcd0690_0 .net "input18", 31 0, v0xcd5ef0_18;  1 drivers
v0xcd0770_0 .net "input19", 31 0, v0xcd5ef0_19;  1 drivers
v0xcd0850_0 .net "input2", 31 0, v0xcd5ef0_2;  1 drivers
v0xcd0a00_0 .net "input20", 31 0, v0xcd5ef0_20;  1 drivers
v0xcd0aa0_0 .net "input21", 31 0, v0xcd5ef0_21;  1 drivers
v0xcd0b80_0 .net "input22", 31 0, v0xcd5ef0_22;  1 drivers
v0xcd0c60_0 .net "input23", 31 0, v0xcd5ef0_23;  1 drivers
v0xcd0d40_0 .net "input24", 31 0, v0xcd5ef0_24;  1 drivers
v0xcd0e20_0 .net "input25", 31 0, v0xcd5ef0_25;  1 drivers
v0xcd0f00_0 .net "input26", 31 0, v0xcd5ef0_26;  1 drivers
v0xcd0fe0_0 .net "input27", 31 0, v0xcd5ef0_27;  1 drivers
v0xcd1080_0 .net "input28", 31 0, v0xcd5ef0_28;  1 drivers
v0xcd1120_0 .net "input29", 31 0, v0xcd5ef0_29;  1 drivers
v0xcd11e0_0 .net "input3", 31 0, v0xcd5ef0_3;  1 drivers
v0xcd12c0_0 .net "input30", 31 0, v0xcd5ef0_30;  1 drivers
v0xcd13a0_0 .net "input31", 31 0, v0xcd5ef0_31;  1 drivers
v0xcd1480_0 .net "input4", 31 0, v0xcd5ef0_4;  1 drivers
v0xcd1560_0 .net "input5", 31 0, v0xcd5ef0_5;  1 drivers
v0xcd1640_0 .net "input6", 31 0, v0xcd5ef0_6;  1 drivers
v0xcd0930_0 .net "input7", 31 0, v0xcd5ef0_7;  1 drivers
v0xcd1910_0 .net "input8", 31 0, v0xcd5ef0_8;  1 drivers
v0xcd19f0_0 .net "input9", 31 0, v0xcd5ef0_9;  1 drivers
v0xcd1ad0 .array "mux", 0 31;
v0xcd1ad0_0 .net v0xcd1ad0 0, 31 0, L_0xceacb0; 1 drivers
v0xcd1ad0_1 .net v0xcd1ad0 1, 31 0, L_0xcead20; 1 drivers
v0xcd1ad0_2 .net v0xcd1ad0 2, 31 0, L_0xcead90; 1 drivers
v0xcd1ad0_3 .net v0xcd1ad0 3, 31 0, L_0xceae00; 1 drivers
v0xcd1ad0_4 .net v0xcd1ad0 4, 31 0, L_0xceae70; 1 drivers
v0xcd1ad0_5 .net v0xcd1ad0 5, 31 0, L_0xceaee0; 1 drivers
v0xcd1ad0_6 .net v0xcd1ad0 6, 31 0, L_0xceaf90; 1 drivers
v0xcd1ad0_7 .net v0xcd1ad0 7, 31 0, L_0xceb000; 1 drivers
v0xcd1ad0_8 .net v0xcd1ad0 8, 31 0, L_0xceb070; 1 drivers
v0xcd1ad0_9 .net v0xcd1ad0 9, 31 0, L_0xceb0e0; 1 drivers
v0xcd1ad0_10 .net v0xcd1ad0 10, 31 0, L_0xceb1b0; 1 drivers
v0xcd1ad0_11 .net v0xcd1ad0 11, 31 0, L_0xceb220; 1 drivers
v0xcd1ad0_12 .net v0xcd1ad0 12, 31 0, L_0xceb300; 1 drivers
v0xcd1ad0_13 .net v0xcd1ad0 13, 31 0, L_0xceb370; 1 drivers
v0xcd1ad0_14 .net v0xcd1ad0 14, 31 0, L_0xceb290; 1 drivers
v0xcd1ad0_15 .net v0xcd1ad0 15, 31 0, L_0xceb460; 1 drivers
v0xcd1ad0_16 .net v0xcd1ad0 16, 31 0, L_0xceb560; 1 drivers
v0xcd1ad0_17 .net v0xcd1ad0 17, 31 0, L_0xceb5d0; 1 drivers
v0xcd1ad0_18 .net v0xcd1ad0 18, 31 0, L_0xceb4d0; 1 drivers
v0xcd1ad0_19 .net v0xcd1ad0 19, 31 0, L_0xceb6e0; 1 drivers
v0xcd1ad0_20 .net v0xcd1ad0 20, 31 0, L_0xceb640; 1 drivers
v0xcd1ad0_21 .net v0xcd1ad0 21, 31 0, L_0xceb800; 1 drivers
v0xcd1ad0_22 .net v0xcd1ad0 22, 31 0, L_0xceb750; 1 drivers
v0xcd1ad0_23 .net v0xcd1ad0 23, 31 0, L_0xceb930; 1 drivers
v0xcd1ad0_24 .net v0xcd1ad0 24, 31 0, L_0xceb870; 1 drivers
v0xcd1ad0_25 .net v0xcd1ad0 25, 31 0, L_0xceba70; 1 drivers
v0xcd1ad0_26 .net v0xcd1ad0 26, 31 0, L_0xceb9a0; 1 drivers
v0xcd1ad0_27 .net v0xcd1ad0 27, 31 0, L_0xcebbc0; 1 drivers
v0xcd1ad0_28 .net v0xcd1ad0 28, 31 0, L_0xcebae0; 1 drivers
v0xcd1ad0_29 .net v0xcd1ad0 29, 31 0, L_0xcebb50; 1 drivers
v0xcd1ad0_30 .net v0xcd1ad0 30, 31 0, L_0xcebd30; 1 drivers
v0xcd1ad0_31 .net v0xcd1ad0 31, 31 0, L_0xcebda0; 1 drivers
v0xcd20a0_0 .net "out", 31 0, L_0xcec050;  alias, 1 drivers
L_0xcebc30 .array/port v0xcd1ad0, L_0xcebf20;
L_0xcebf20 .concat [ 5 2 0 0], v0xc07fa0_0, L_0x7fb26ad820a8;
S_0xcd2710 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0xcc9400;
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
L_0x7fb26ad82180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0xcec0c0 .functor BUFZ 32, L_0x7fb26ad82180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec130 .functor BUFZ 32, v0xcd5ef0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec230 .functor BUFZ 32, v0xcd5ef0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec330 .functor BUFZ 32, v0xcd5ef0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec430 .functor BUFZ 32, v0xcd5ef0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec530 .functor BUFZ 32, v0xcd5ef0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec660 .functor BUFZ 32, v0xcd5ef0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec760 .functor BUFZ 32, v0xcd5ef0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec890 .functor BUFZ 32, v0xcd5ef0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcec9c0 .functor BUFZ 32, v0xcd5ef0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcecaf0 .functor BUFZ 32, v0xcd5ef0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcecc20 .functor BUFZ 32, v0xcd5ef0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcecdc0 .functor BUFZ 32, v0xcd5ef0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcecef0 .functor BUFZ 32, v0xcd5ef0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcecd50 .functor BUFZ 32, v0xcd5ef0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced0e0 .functor BUFZ 32, v0xcd5ef0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced2a0 .functor BUFZ 32, v0xcd5ef0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced3d0 .functor BUFZ 32, v0xcd5ef0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced210 .functor BUFZ 32, v0xcd5ef0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced660 .functor BUFZ 32, v0xcd5ef0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced500 .functor BUFZ 32, v0xcd5ef0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced8d0 .functor BUFZ 32, v0xcd5ef0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xced790 .functor BUFZ 32, v0xcd5ef0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcedb50 .functor BUFZ 32, v0xcd5ef0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xceda00 .functor BUFZ 32, v0xcd5ef0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcedde0 .functor BUFZ 32, v0xcd5ef0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcedc80 .functor BUFZ 32, v0xcd5ef0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcee080 .functor BUFZ 32, v0xcd5ef0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcedf10 .functor BUFZ 32, v0xcd5ef0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcee300 .functor BUFZ 32, v0xcd5ef0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcee180 .functor BUFZ 32, v0xcd5ef0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcee590 .functor BUFZ 32, v0xcd5ef0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xcee840 .functor BUFZ 32, L_0xcee400, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fb26ad82138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0xccf6a0_0 .net *"_s101", 1 0, L_0x7fb26ad82138;  1 drivers
v0xcd2d30_0 .net *"_s96", 31 0, L_0xcee400;  1 drivers
v0xcd2e30_0 .net *"_s98", 6 0, L_0xcee7a0;  1 drivers
v0xcd2ef0_0 .net "address", 4 0, v0xc03d70_0;  alias, 1 drivers
v0xcd3000_0 .net "input0", 31 0, L_0x7fb26ad82180;  1 drivers
v0xcd3130_0 .net "input1", 31 0, v0xcd5ef0_1;  alias, 1 drivers
v0xcd31f0_0 .net "input10", 31 0, v0xcd5ef0_10;  alias, 1 drivers
v0xcd3290_0 .net "input11", 31 0, v0xcd5ef0_11;  alias, 1 drivers
v0xcd3330_0 .net "input12", 31 0, v0xcd5ef0_12;  alias, 1 drivers
v0xcd3490_0 .net "input13", 31 0, v0xcd5ef0_13;  alias, 1 drivers
v0xcd3560_0 .net "input14", 31 0, v0xcd5ef0_14;  alias, 1 drivers
v0xcd3630_0 .net "input15", 31 0, v0xcd5ef0_15;  alias, 1 drivers
v0xcd3700_0 .net "input16", 31 0, v0xcd5ef0_16;  alias, 1 drivers
v0xcd37d0_0 .net "input17", 31 0, v0xcd5ef0_17;  alias, 1 drivers
v0xcd38a0_0 .net "input18", 31 0, v0xcd5ef0_18;  alias, 1 drivers
v0xcd3970_0 .net "input19", 31 0, v0xcd5ef0_19;  alias, 1 drivers
v0xcd3a40_0 .net "input2", 31 0, v0xcd5ef0_2;  alias, 1 drivers
v0xcd3bf0_0 .net "input20", 31 0, v0xcd5ef0_20;  alias, 1 drivers
v0xcd3c90_0 .net "input21", 31 0, v0xcd5ef0_21;  alias, 1 drivers
v0xcd3d30_0 .net "input22", 31 0, v0xcd5ef0_22;  alias, 1 drivers
v0xcd3e00_0 .net "input23", 31 0, v0xcd5ef0_23;  alias, 1 drivers
v0xcd3ed0_0 .net "input24", 31 0, v0xcd5ef0_24;  alias, 1 drivers
v0xcd3fa0_0 .net "input25", 31 0, v0xcd5ef0_25;  alias, 1 drivers
v0xcd4070_0 .net "input26", 31 0, v0xcd5ef0_26;  alias, 1 drivers
v0xcd4140_0 .net "input27", 31 0, v0xcd5ef0_27;  alias, 1 drivers
v0xcd4210_0 .net "input28", 31 0, v0xcd5ef0_28;  alias, 1 drivers
v0xcd42e0_0 .net "input29", 31 0, v0xcd5ef0_29;  alias, 1 drivers
v0xcd43b0_0 .net "input3", 31 0, v0xcd5ef0_3;  alias, 1 drivers
v0xcd4480_0 .net "input30", 31 0, v0xcd5ef0_30;  alias, 1 drivers
v0xcd4550_0 .net "input31", 31 0, v0xcd5ef0_31;  alias, 1 drivers
v0xcd4620_0 .net "input4", 31 0, v0xcd5ef0_4;  alias, 1 drivers
v0xcd46f0_0 .net "input5", 31 0, v0xcd5ef0_5;  alias, 1 drivers
v0xcd47c0_0 .net "input6", 31 0, v0xcd5ef0_6;  alias, 1 drivers
v0xcd3b10_0 .net "input7", 31 0, v0xcd5ef0_7;  alias, 1 drivers
v0xcd4a70_0 .net "input8", 31 0, v0xcd5ef0_8;  alias, 1 drivers
v0xcd4b40_0 .net "input9", 31 0, v0xcd5ef0_9;  alias, 1 drivers
v0xcd4c10 .array "mux", 0 31;
v0xcd4c10_0 .net v0xcd4c10 0, 31 0, L_0xcec0c0; 1 drivers
v0xcd4c10_1 .net v0xcd4c10 1, 31 0, L_0xcec130; 1 drivers
v0xcd4c10_2 .net v0xcd4c10 2, 31 0, L_0xcec230; 1 drivers
v0xcd4c10_3 .net v0xcd4c10 3, 31 0, L_0xcec330; 1 drivers
v0xcd4c10_4 .net v0xcd4c10 4, 31 0, L_0xcec430; 1 drivers
v0xcd4c10_5 .net v0xcd4c10 5, 31 0, L_0xcec530; 1 drivers
v0xcd4c10_6 .net v0xcd4c10 6, 31 0, L_0xcec660; 1 drivers
v0xcd4c10_7 .net v0xcd4c10 7, 31 0, L_0xcec760; 1 drivers
v0xcd4c10_8 .net v0xcd4c10 8, 31 0, L_0xcec890; 1 drivers
v0xcd4c10_9 .net v0xcd4c10 9, 31 0, L_0xcec9c0; 1 drivers
v0xcd4c10_10 .net v0xcd4c10 10, 31 0, L_0xcecaf0; 1 drivers
v0xcd4c10_11 .net v0xcd4c10 11, 31 0, L_0xcecc20; 1 drivers
v0xcd4c10_12 .net v0xcd4c10 12, 31 0, L_0xcecdc0; 1 drivers
v0xcd4c10_13 .net v0xcd4c10 13, 31 0, L_0xcecef0; 1 drivers
v0xcd4c10_14 .net v0xcd4c10 14, 31 0, L_0xcecd50; 1 drivers
v0xcd4c10_15 .net v0xcd4c10 15, 31 0, L_0xced0e0; 1 drivers
v0xcd4c10_16 .net v0xcd4c10 16, 31 0, L_0xced2a0; 1 drivers
v0xcd4c10_17 .net v0xcd4c10 17, 31 0, L_0xced3d0; 1 drivers
v0xcd4c10_18 .net v0xcd4c10 18, 31 0, L_0xced210; 1 drivers
v0xcd4c10_19 .net v0xcd4c10 19, 31 0, L_0xced660; 1 drivers
v0xcd4c10_20 .net v0xcd4c10 20, 31 0, L_0xced500; 1 drivers
v0xcd4c10_21 .net v0xcd4c10 21, 31 0, L_0xced8d0; 1 drivers
v0xcd4c10_22 .net v0xcd4c10 22, 31 0, L_0xced790; 1 drivers
v0xcd4c10_23 .net v0xcd4c10 23, 31 0, L_0xcedb50; 1 drivers
v0xcd4c10_24 .net v0xcd4c10 24, 31 0, L_0xceda00; 1 drivers
v0xcd4c10_25 .net v0xcd4c10 25, 31 0, L_0xcedde0; 1 drivers
v0xcd4c10_26 .net v0xcd4c10 26, 31 0, L_0xcedc80; 1 drivers
v0xcd4c10_27 .net v0xcd4c10 27, 31 0, L_0xcee080; 1 drivers
v0xcd4c10_28 .net v0xcd4c10 28, 31 0, L_0xcedf10; 1 drivers
v0xcd4c10_29 .net v0xcd4c10 29, 31 0, L_0xcee300; 1 drivers
v0xcd4c10_30 .net v0xcd4c10 30, 31 0, L_0xcee180; 1 drivers
v0xcd4c10_31 .net v0xcd4c10 31, 31 0, L_0xcee590; 1 drivers
v0xcd51c0_0 .net "out", 31 0, L_0xcee840;  alias, 1 drivers
L_0xcee400 .array/port v0xcd4c10, L_0xcee7a0;
L_0xcee7a0 .concat [ 5 2 0 0], v0xc03d70_0, L_0x7fb26ad82138;
S_0xbfc8b0 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7fb26ade2b08 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0xcd8db0_0 .net "address", 4 0, o0x7fb26ade2b08;  0 drivers
o0x7fb26ade2b38 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0xcd8eb0_0 .net "inputs", 31 0, o0x7fb26ade2b38;  0 drivers
v0xcd8f90_0 .net "out", 0 0, L_0xd16cd0;  1 drivers
L_0xd16cd0 .part/v o0x7fb26ade2b38, o0x7fb26ade2b08, 1;
S_0xbf8220 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fb26ade2c28 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd90d0_0 .net "clk", 0 0, o0x7fb26ade2c28;  0 drivers
o0x7fb26ade2c58 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd91b0_0 .net "d", 0 0, o0x7fb26ade2c58;  0 drivers
v0xcd9270_0 .var "q", 0 0;
o0x7fb26ade2cb8 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd9310_0 .net "wrenable", 0 0, o0x7fb26ade2cb8;  0 drivers
E_0xc49e50 .event posedge, v0xcd90d0_0;
S_0xbf3b90 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fb26ade2da8 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd9490_0 .net "clk", 0 0, o0x7fb26ade2da8;  0 drivers
o0x7fb26ade2dd8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0xcd9570_0 .net "d", 31 0, o0x7fb26ade2dd8;  0 drivers
v0xcd9650_0 .var "q", 31 0;
o0x7fb26ade2e38 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd9710_0 .net "wrenable", 0 0, o0x7fb26ade2e38;  0 drivers
E_0xcd3bb0 .event posedge, v0xcd9490_0;
S_0xc5c960 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fb26ade2f28 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd98d0_0 .net "clk", 0 0, o0x7fb26ade2f28;  0 drivers
o0x7fb26ade2f58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0xcd99b0_0 .net "d", 31 0, o0x7fb26ade2f58;  0 drivers
v0xcd9a90_0 .var "q", 31 0;
o0x7fb26ade2fb8 .functor BUFZ 1, C4<z>; HiZ drive
v0xcd9b50_0 .net "wrenable", 0 0, o0x7fb26ade2fb8;  0 drivers
E_0xcd9850 .event posedge, v0xcd98d0_0;
    .scope S_0xcc6d50;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0xcc7130_0, 0;
    %end;
    .thread T_0;
    .scope S_0xcc6d50;
T_1 ;
    %wait E_0xcc6fc0;
    %load/vec4 v0xcc7130_0;
    %addi 4, 0, 32;
    %store/vec4 v0xcc7600_0, 0, 32;
    %load/vec4 v0xcc71f0_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0xcc7600_0;
    %assign/vec4 v0xcc7520_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0xcc71f0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0xcc7020_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xcc7520_0, 4, 5;
    %load/vec4 v0xcc7600_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xcc7520_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xcc7520_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xcc71f0_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0xcc73e0_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0xcc77a0_0, 0, 32;
    %load/vec4 v0xcc77a0_0;
    %load/vec4 v0xcc7600_0;
    %add;
    %assign/vec4 v0xcc7520_0, 0;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0xcc76e0_0;
    %assign/vec4 v0xcc7520_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0xcc6d50;
T_2 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcc7520_0;
    %store/vec4 v0xcc7130_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0xc54550;
T_3 ;
    %wait E_0xbcfa80;
    %load/vec4 v0xc45740_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xc45b00_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0xc49d30_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0xc45740_0;
    %pushi/vec4 4, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xbe0790_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.2, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xc49d30_0, 0, 2;
    %vpi_call 5 17 "$display", "I AM GOING TO BRANCH ON EQUAL: Flag = %b", v0xbe0790_0 {0 0 0};
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0xc45740_0;
    %pushi/vec4 5, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xbe0790_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xc49d30_0, 0, 2;
    %vpi_call 5 18 "$display", "I AM GOING TO BRANCH ON NOT EQUAL: Flag = %b", v0xbe0790_0 {0 0 0};
    %jmp T_3.5;
T_3.4 ;
    %load/vec4 v0xc45740_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0xc45740_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.6, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc49d30_0, 0, 2;
    %jmp T_3.7;
T_3.6 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc49d30_0, 0, 2;
T_3.7 ;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %vpi_call 5 21 "$display", "grrr,opcode: %b, zeroflag: %b, controlSig: %b", v0xc45740_0, v0xbe0790_0, v0xc49d30_0 {0 0 0};
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0xcc5890;
T_4 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcc6190_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0xcc5c80_0;
    %ix/getv 3, v0xcc5b80_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcc6480, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0xcc5890;
T_5 ;
    %vpi_call 10 20 "$readmemh", "hanoi.text", v0xcc6480 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0xc3e690;
T_6 ;
    %wait E_0xc415b0;
    %load/vec4 v0xc22560_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xc229e0_0, 4, 16;
    %jmp T_6.1;
T_6.0 ;
    %pushi/vec4 65535, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xc229e0_0, 4, 16;
T_6.1 ;
    %load/vec4 v0xc22560_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0xc0ca10_0, 0, 6;
    %load/vec4 v0xc22560_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0xc22920_0, 0, 6;
    %load/vec4 v0xc22560_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0xc07fa0_0, 0, 5;
    %load/vec4 v0xc22560_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0xc03d70_0, 0, 5;
    %load/vec4 v0xc22560_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0xc0c650_0, 0, 5;
    %load/vec4 v0xc22560_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0xc03e10_0, 0, 6;
    %load/vec4 v0xc22560_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xc229e0_0, 4, 16;
    %load/vec4 v0xc22560_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0xc2b140_0, 0, 26;
    %load/vec4 v0xc0ca10_0;
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
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.5 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.6 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.8 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.9 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0xc22920_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0xc22920_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0xc22920_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
    %jmp T_6.17;
T_6.16 ;
    %load/vec4 v0xc22920_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.18, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc08360_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xc41150_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc0c950_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b500_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc26b50_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xc08400_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xc2b5c0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0xc0c590_0, 0, 2;
T_6.18 ;
T_6.17 ;
T_6.15 ;
T_6.13 ;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0xcc9e30;
T_7 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0xcca0e0;
T_8 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0xcca370;
T_9 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0xcca620;
T_10 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0xcca920;
T_11 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0xccabd0;
T_12 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0xccae80;
T_13 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0xccb130;
T_14 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0xccb420;
T_15 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0xccb6d0;
T_16 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0xccb980;
T_17 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0xccbc30;
T_18 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0xccbee0;
T_19 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0xccc190;
T_20 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0xccc440;
T_21 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0xccc6f0;
T_22 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0xccca40;
T_23 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0xccccd0;
T_24 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0xcccf80;
T_25 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0xccd230;
T_26 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0xccd4e0;
T_27 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0xccd790;
T_28 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0xccda40;
T_29 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0xccdcf0;
T_30 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0xccdfa0;
T_31 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0xcce250;
T_32 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0xcce500;
T_33 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0xcce7b0;
T_34 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0xccea60;
T_35 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0xcced10;
T_36 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0xccefc0;
T_37 ;
    %wait E_0xcc5b00;
    %load/vec4 v0xcd5da0_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0xcd5bf0_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xcd5ef0, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0xbff640;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xcd7b50_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0xbff640;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0xcd7b50_0;
    %nor/r;
    %store/vec4 v0xcd7b50_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0xbff640;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0xcd8c50_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0xcd8d10_0 {0 0 0};
    %delay 200000, 0;
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0xbf8220;
T_41 ;
    %wait E_0xc49e50;
    %load/vec4 v0xcd9310_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0xcd91b0_0;
    %assign/vec4 v0xcd9270_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0xbf3b90;
T_42 ;
    %wait E_0xcd3bb0;
    %load/vec4 v0xcd9710_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0xcd9570_0;
    %assign/vec4 v0xcd9650_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0xc5c960;
T_43 ;
    %wait E_0xcd9850;
    %load/vec4 v0xcd9b50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0xcd9a90_0, 0;
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
