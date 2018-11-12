#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xb59af0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7f2ff04a1018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7f2ff04a1048 .functor BUFZ 1, C4<z>; HiZ drive
L_0xc36d90 .functor XOR 1, o0x7f2ff04a1018, o0x7f2ff04a1048, C4<0>, C4<0>;
o0x7f2ff04a1078 .functor BUFZ 1, C4<z>; HiZ drive
L_0xc36e20 .functor XOR 1, L_0xc36d90, o0x7f2ff04a1078, C4<0>, C4<0>;
L_0xc36ee0 .functor AND 1, L_0xc36d90, o0x7f2ff04a1078, C4<1>, C4<1>;
L_0xc36fa0 .functor AND 1, o0x7f2ff04a1018, o0x7f2ff04a1048, C4<1>, C4<1>;
L_0xc370b0 .functor OR 1, L_0xc36ee0, L_0xc36fa0, C4<0>, C4<0>;
L_0xc371c0 .functor XOR 1, L_0xc370b0, o0x7f2ff04a1078, C4<0>, C4<0>;
v0xb01c70_0 .net "A", 0 0, o0x7f2ff04a1018;  0 drivers
v0xb5c980_0 .net "B", 0 0, o0x7f2ff04a1048;  0 drivers
v0xb5c5a0_0 .net "carryin", 0 0, o0x7f2ff04a1078;  0 drivers
v0xb46940_0 .net "carryout", 0 0, L_0xc370b0;  1 drivers
v0xb46a00_0 .net "out1", 0 0, L_0xc36d90;  1 drivers
v0xb46580_0 .net "out2", 0 0, L_0xc36ee0;  1 drivers
v0xb46640_0 .net "out3", 0 0, L_0xc36fa0;  1 drivers
v0xb42350_0 .net "overflow", 0 0, L_0xc371c0;  1 drivers
v0xb42410_0 .net "sum", 0 0, L_0xc36e20;  1 drivers
S_0xb55460 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0xc34c70_0 .var "clk", 0 0;
v0xc35d50_0 .net "dataMem", 31 0, L_0xc37510;  1 drivers
v0xc35e10_0 .net "regRT", 31 0, L_0xc4b9a0;  1 drivers
S_0xb97270 .scope module, "cpu" "singlecycleCPU" 3 9, 4 15 0, S_0xb55460;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0xc33c90_0 .net "ALU_op", 2 0, v0xb9e740_0;  1 drivers
v0xc33d70_0 .net "DM_WE", 0 0, v0xb9e380_0;  1 drivers
v0xc33e30_0 .net "DM_add", 0 0, v0xb9e440_0;  1 drivers
v0xc33ed0_0 .net "JumpAddress", 25 0, v0xb88730_0;  1 drivers
v0xc33fc0_0 .net "PC", 31 0, v0xc24260_0;  1 drivers
v0xc340b0_0 .net "S", 1 0, v0xba73d0_0;  1 drivers
L_0x7f2ff0458b58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0xc341a0_0 .net/2u *"_s10", 31 0, L_0x7f2ff0458b58;  1 drivers
v0xc34260_0 .net *"_s4", 29 0, L_0xc37910;  1 drivers
L_0x7f2ff0458018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0xc34340_0 .net *"_s6", 1 0, L_0x7f2ff0458018;  1 drivers
v0xc344b0_0 .net "alu2", 31 0, L_0xc73f20;  1 drivers
v0xc34570_0 .net "alu_out", 31 0, L_0xc70410;  1 drivers
v0xc34680_0 .net "clk", 0 0, v0xc34c70_0;  1 drivers
v0xc347b0_0 .net "co_flag", 0 0, L_0xc082e0;  1 drivers
v0xc348e0_0 .net "dataMem", 31 0, L_0xc37510;  alias, 1 drivers
v0xc349a0_0 .net "dest_add", 1 0, v0xb84140_0;  1 drivers
v0xc34a60_0 .net "funct", 5 0, v0xb83d80_0;  1 drivers
v0xc34b70_0 .net "immediate", 31 0, v0xb83e40_0;  1 drivers
v0xc34d20_0 .net "instruction", 31 0, L_0xc376b0;  1 drivers
v0xc34dc0_0 .net "op_imm", 0 0, v0xb7f790_0;  1 drivers
v0xc34eb0_0 .net "opcode", 5 0, v0xb7f850_0;  1 drivers
v0xc34fc0_0 .net "ov_flag", 0 0, L_0xc6ffc0;  1 drivers
v0xc350f0_0 .net "pc", 1 0, v0xb7b560_0;  1 drivers
v0xc351b0_0 .net "rd", 4 0, v0xb7b620_0;  1 drivers
v0xc35250_0 .net "regRS", 31 0, L_0xc49150;  1 drivers
v0xc353a0_0 .net "regRT", 31 0, L_0xc4b9a0;  alias, 1 drivers
v0xc354f0_0 .net "reg_WE", 0 0, v0xb7b1a0_0;  1 drivers
v0xc35590_0 .net "reg_in", 1 0, v0xb7b240_0;  1 drivers
v0xc35650_0 .net "reg_in_mux_out", 31 0, L_0xc73be0;  1 drivers
v0xc35710_0 .net "reg_select_mux_out", 4 0, L_0xc735b0;  1 drivers
v0xc357d0_0 .net "rs", 4 0, v0xb69b30_0;  1 drivers
v0xc35890_0 .net "rt", 4 0, v0xb69770_0;  1 drivers
v0xc359e0_0 .net "shamt", 5 0, v0xb69810_0;  1 drivers
v0xc35aa0_0 .net "zero_flag", 0 0, L_0xc6f410;  1 drivers
L_0xc37770 .arith/sum 32, v0xb83e40_0, L_0xc49150;
L_0xc37910 .part v0xc24260_0, 2, 30;
L_0xc379b0 .concat [ 30 2 0 0], L_0xc37910, L_0x7f2ff0458018;
L_0xc73d70 .arith/sum 32, v0xc24260_0, L_0x7f2ff0458b58;
S_0xb92be0 .scope module, "controlPC" "pcController" 4 48, 5 8 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0xba73d0_0 .var "controlSig", 1 0;
v0xba6f60_0 .net "function1", 5 0, v0xb83d80_0;  alias, 1 drivers
v0xba2d30_0 .net "opcode", 5 0, v0xb7f850_0;  alias, 1 drivers
v0xba2970_0 .net "zeroFlag", 0 0, L_0xc6f410;  alias, 1 drivers
E_0xb2ccc0 .event edge, v0xba6f60_0, v0xba2970_0, v0xba2d30_0;
S_0xb8e550 .scope module, "decode" "instructionDecoder" 4 52, 6 20 0, S_0xb97270;
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
v0xb9e740_0 .var "ALU_op", 2 0;
v0xb9e380_0 .var "DM_WE", 0 0;
v0xb9e440_0 .var "DM_add", 0 0;
v0xb88730_0 .var "address", 25 0;
v0xb88370_0 .net "clk", 0 0, v0xc34c70_0;  alias, 1 drivers
v0xb84140_0 .var "dest_add", 1 0;
v0xb83d80_0 .var "funct", 5 0;
v0xb83e40_0 .var "immediate", 31 0;
v0xb7fb50_0 .net "instruction", 31 0, L_0xc376b0;  alias, 1 drivers
v0xb7f790_0 .var "op_imm", 0 0;
v0xb7f850_0 .var "opcode", 5 0;
v0xb7b560_0 .var "pc", 1 0;
v0xb7b620_0 .var "rd", 4 0;
v0xb7b1a0_0 .var "reg_WE", 0 0;
v0xb7b240_0 .var "reg_in", 1 0;
v0xb69b30_0 .var "rs", 4 0;
v0xb69770_0 .var "rt", 4 0;
v0xb69810_0 .var "shamt", 5 0;
E_0xb3da40 .event edge, v0xb7fb50_0;
S_0xb786c0 .scope module, "lulu" "ALU" 4 58, 7 105 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0xc6f410/0/0 .functor OR 1, L_0xc5eb30, L_0xc70660, L_0xc70700, L_0xc707f0;
L_0xc6f410/0/4 .functor OR 1, L_0xc710c0, L_0xc5ec20, L_0xc70d80, L_0xc70e70;
L_0xc6f410/0/8 .functor OR 1, L_0xc70f60, L_0xc715d0, L_0xc71270, L_0xc71360;
L_0xc6f410/0/12 .functor OR 1, L_0xc71450, L_0xc71160, L_0xc71670, L_0xc71760;
L_0xc6f410/0/16 .functor OR 1, L_0xc71850, L_0xc71940, L_0xc71fb0, L_0xc72050;
L_0xc6f410/0/20 .functor OR 1, L_0xc71c00, L_0xc71cf0, L_0xc71de0, L_0xc71ed0;
L_0xc6f410/0/24 .functor OR 1, L_0xc72140, L_0xc72230, L_0xc72320, L_0xc72410;
L_0xc6f410/0/28 .functor OR 1, L_0xc72960, L_0xc719f0, L_0xc71ae0, L_0xc72560;
L_0xc6f410/0/32 .functor OR 1, L_0xc72650, L_0xc72740, C4<0>, C4<0>;
L_0xc6f410/1/0 .functor OR 1, L_0xc6f410/0/0, L_0xc6f410/0/4, L_0xc6f410/0/8, L_0xc6f410/0/12;
L_0xc6f410/1/4 .functor OR 1, L_0xc6f410/0/16, L_0xc6f410/0/20, L_0xc6f410/0/24, L_0xc6f410/0/28;
L_0xc6f410/1/8 .functor OR 1, L_0xc6f410/0/32, C4<0>, C4<0>, C4<0>;
L_0xc6f410 .functor NOR 1, L_0xc6f410/1/0, L_0xc6f410/1/4, L_0xc6f410/1/8, C4<0>;
v0xc20260_0 .net "A", 31 0, L_0xc49150;  alias, 1 drivers
v0xc20360_0 .net "B", 31 0, L_0xc73f20;  alias, 1 drivers
v0xc20440_0 .net *"_s322", 0 0, L_0xc5eb30;  1 drivers
v0xc20530_0 .net *"_s324", 0 0, L_0xc70660;  1 drivers
v0xc20610_0 .net *"_s326", 0 0, L_0xc70700;  1 drivers
v0xc20740_0 .net *"_s328", 0 0, L_0xc707f0;  1 drivers
v0xc20820_0 .net *"_s330", 0 0, L_0xc710c0;  1 drivers
v0xc20900_0 .net *"_s332", 0 0, L_0xc5ec20;  1 drivers
v0xc209e0_0 .net *"_s334", 0 0, L_0xc70d80;  1 drivers
v0xc20b50_0 .net *"_s336", 0 0, L_0xc70e70;  1 drivers
v0xc20c30_0 .net *"_s338", 0 0, L_0xc70f60;  1 drivers
v0xc20d10_0 .net *"_s340", 0 0, L_0xc715d0;  1 drivers
v0xc20df0_0 .net *"_s342", 0 0, L_0xc71270;  1 drivers
v0xc20ed0_0 .net *"_s344", 0 0, L_0xc71360;  1 drivers
v0xc20fb0_0 .net *"_s346", 0 0, L_0xc71450;  1 drivers
v0xc21090_0 .net *"_s348", 0 0, L_0xc71160;  1 drivers
v0xc21170_0 .net *"_s350", 0 0, L_0xc71670;  1 drivers
v0xc21320_0 .net *"_s352", 0 0, L_0xc71760;  1 drivers
v0xc213c0_0 .net *"_s354", 0 0, L_0xc71850;  1 drivers
v0xc214a0_0 .net *"_s356", 0 0, L_0xc71940;  1 drivers
v0xc21580_0 .net *"_s358", 0 0, L_0xc71fb0;  1 drivers
v0xc21660_0 .net *"_s360", 0 0, L_0xc72050;  1 drivers
v0xc21740_0 .net *"_s362", 0 0, L_0xc71c00;  1 drivers
v0xc21820_0 .net *"_s364", 0 0, L_0xc71cf0;  1 drivers
v0xc21900_0 .net *"_s366", 0 0, L_0xc71de0;  1 drivers
v0xc219e0_0 .net *"_s368", 0 0, L_0xc71ed0;  1 drivers
v0xc21ac0_0 .net *"_s370", 0 0, L_0xc72140;  1 drivers
v0xc21ba0_0 .net *"_s372", 0 0, L_0xc72230;  1 drivers
v0xc21c80_0 .net *"_s374", 0 0, L_0xc72320;  1 drivers
v0xc21d60_0 .net *"_s376", 0 0, L_0xc72410;  1 drivers
v0xc21e40_0 .net *"_s378", 0 0, L_0xc72960;  1 drivers
v0xc21f20_0 .net *"_s380", 0 0, L_0xc719f0;  1 drivers
v0xc22000_0 .net *"_s382", 0 0, L_0xc71ae0;  1 drivers
v0xc21250_0 .net *"_s384", 0 0, L_0xc72560;  1 drivers
v0xc222d0_0 .net *"_s386", 0 0, L_0xc72650;  1 drivers
v0xc223b0_0 .net *"_s388", 0 0, L_0xc72740;  1 drivers
v0xc22490_0 .net "carryout", 0 0, L_0xc082e0;  alias, 1 drivers
v0xc22530_0 .net "command", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc225f0_0 .net "cout", 30 0, L_0xc6f080;  1 drivers
v0xc226d0_0 .net "overflow", 0 0, L_0xc6ffc0;  alias, 1 drivers
v0xc22770_0 .net "result", 31 0, L_0xc70410;  alias, 1 drivers
v0xc22850_0 .net "zero", 0 0, L_0xc6f410;  alias, 1 drivers
L_0xc4c400 .part L_0xc49150, 0, 1;
L_0xc4c4a0 .part L_0xc73f20, 0, 1;
L_0xc4c540 .part v0xb9e740_0, 0, 1;
L_0xc4d330 .part L_0xc49150, 1, 1;
L_0xc4d4e0 .part L_0xc73f20, 1, 1;
L_0xc4d580 .part L_0xc6f080, 0, 1;
L_0xc4e4e0 .part L_0xc49150, 2, 1;
L_0xc4e580 .part L_0xc73f20, 2, 1;
L_0xc4e620 .part L_0xc6f080, 1, 1;
L_0xc4f6a0 .part L_0xc49150, 3, 1;
L_0xc4f7a0 .part L_0xc73f20, 3, 1;
L_0xc4f840 .part L_0xc6f080, 2, 1;
L_0xc50930 .part L_0xc49150, 4, 1;
L_0xc509d0 .part L_0xc73f20, 4, 1;
L_0xc50af0 .part L_0xc6f080, 3, 1;
L_0xc51b90 .part L_0xc49150, 5, 1;
L_0xc51cc0 .part L_0xc73f20, 5, 1;
L_0xc51e70 .part L_0xc6f080, 4, 1;
L_0xc52ec0 .part L_0xc49150, 6, 1;
L_0xc52f60 .part L_0xc73f20, 6, 1;
L_0xc51f10 .part L_0xc6f080, 5, 1;
L_0xc540e0 .part L_0xc49150, 7, 1;
L_0xc53000 .part L_0xc73f20, 7, 1;
L_0xc54240 .part L_0xc6f080, 6, 1;
L_0xc55330 .part L_0xc49150, 8, 1;
L_0xc553d0 .part L_0xc73f20, 8, 1;
L_0xc54370 .part L_0xc6f080, 7, 1;
L_0xc565e0 .part L_0xc49150, 9, 1;
L_0xc55470 .part L_0xc73f20, 9, 1;
L_0xc56890 .part L_0xc6f080, 8, 1;
L_0xc57a30 .part L_0xc49150, 10, 1;
L_0xc57ad0 .part L_0xc73f20, 10, 1;
L_0xc57b70 .part L_0xc6f080, 9, 1;
L_0xc58bb0 .part L_0xc49150, 11, 1;
L_0xc4d3d0 .part L_0xc73f20, 11, 1;
L_0xc58d70 .part L_0xc6f080, 10, 1;
L_0xc59e20 .part L_0xc49150, 12, 1;
L_0xc59ec0 .part L_0xc73f20, 12, 1;
L_0xc58ea0 .part L_0xc6f080, 11, 1;
L_0xc5b060 .part L_0xc49150, 13, 1;
L_0xc59f60 .part L_0xc73f20, 13, 1;
L_0xc5a000 .part L_0xc6f080, 12, 1;
L_0xc5c3c0 .part L_0xc49150, 14, 1;
L_0xc5c460 .part L_0xc73f20, 14, 1;
L_0xc5b460 .part L_0xc6f080, 13, 1;
L_0xc5d610 .part L_0xc49150, 15, 1;
L_0xc5c500 .part L_0xc73f20, 15, 1;
L_0xc5c5a0 .part L_0xc6f080, 14, 1;
L_0xc5e850 .part L_0xc49150, 16, 1;
L_0xc5e8f0 .part L_0xc73f20, 16, 1;
L_0xc5d8c0 .part L_0xc6f080, 15, 1;
L_0xc5fb70 .part L_0xc49150, 17, 1;
L_0xc5e990 .part L_0xc73f20, 17, 1;
L_0xc5ea30 .part L_0xc6f080, 16, 1;
L_0xc60db0 .part L_0xc49150, 18, 1;
L_0xc60e50 .part L_0xc73f20, 18, 1;
L_0xc5fe50 .part L_0xc6f080, 17, 1;
L_0xc61fd0 .part L_0xc49150, 19, 1;
L_0xc60ef0 .part L_0xc73f20, 19, 1;
L_0xc60f90 .part L_0xc6f080, 18, 1;
L_0xc63200 .part L_0xc49150, 20, 1;
L_0xc632a0 .part L_0xc73f20, 20, 1;
L_0xc62070 .part L_0xc6f080, 19, 1;
L_0xc64430 .part L_0xc49150, 21, 1;
L_0xc63340 .part L_0xc73f20, 21, 1;
L_0xc633e0 .part L_0xc6f080, 20, 1;
L_0xc65670 .part L_0xc49150, 22, 1;
L_0xc65710 .part L_0xc73f20, 22, 1;
L_0xc644d0 .part L_0xc6f080, 21, 1;
L_0xc668a0 .part L_0xc49150, 23, 1;
L_0xc657b0 .part L_0xc73f20, 23, 1;
L_0xc65850 .part L_0xc6f080, 22, 1;
L_0xc67ad0 .part L_0xc49150, 24, 1;
L_0xc67b70 .part L_0xc73f20, 24, 1;
L_0xc66940 .part L_0xc6f080, 23, 1;
L_0xc68d00 .part L_0xc49150, 25, 1;
L_0xc56680 .part L_0xc73f20, 25, 1;
L_0xc56720 .part L_0xc6f080, 24, 1;
L_0xc57920 .part L_0xc49150, 26, 1;
L_0xc6a1c0 .part L_0xc73f20, 26, 1;
L_0xc691b0 .part L_0xc6f080, 25, 1;
L_0xc6b230 .part L_0xc49150, 27, 1;
L_0xc6a260 .part L_0xc73f20, 27, 1;
L_0xc6a300 .part L_0xc6f080, 26, 1;
L_0xc6c360 .part L_0xc49150, 28, 1;
L_0xc6c400 .part L_0xc73f20, 28, 1;
L_0xc6b2d0 .part L_0xc6f080, 27, 1;
L_0xc6d480 .part L_0xc49150, 29, 1;
L_0xc6c4a0 .part L_0xc73f20, 29, 1;
L_0xc5b250 .part L_0xc6f080, 28, 1;
LS_0xc6f080_0_0 .concat8 [ 1 1 1 1], L_0xb31310, L_0xb216f0, L_0xbd9160, L_0xc00f30;
LS_0xc6f080_0_4 .concat8 [ 1 1 1 1], L_0xc0c700, L_0xc100d0, L_0xc13aa0, L_0xc17470;
LS_0xc6f080_0_8 .concat8 [ 1 1 1 1], L_0xc1ae40, L_0xc1e810, L_0xb19c00, L_0xb50a70;
LS_0xc6f080_0_12 .concat8 [ 1 1 1 1], L_0xb97840, L_0xb14050, L_0xb4f460, L_0xb39260;
LS_0xc6f080_0_16 .concat8 [ 1 1 1 1], L_0xbbc0a0, L_0x9abb80, L_0xbd1e00, L_0xbd5790;
LS_0xc6f080_0_20 .concat8 [ 1 1 1 1], L_0xbdcb30, L_0xbe0500, L_0xbe3ed0, L_0xbe7a80;
LS_0xc6f080_0_24 .concat8 [ 1 1 1 1], L_0xbeb450, L_0xbeee20, L_0xbf27f0, L_0xbf61c0;
LS_0xc6f080_0_28 .concat8 [ 1 1 1 0], L_0xbf9b90, L_0xbfd560, L_0xc04900;
LS_0xc6f080_1_0 .concat8 [ 4 4 4 4], LS_0xc6f080_0_0, LS_0xc6f080_0_4, LS_0xc6f080_0_8, LS_0xc6f080_0_12;
LS_0xc6f080_1_4 .concat8 [ 4 4 4 3], LS_0xc6f080_0_16, LS_0xc6f080_0_20, LS_0xc6f080_0_24, LS_0xc6f080_0_28;
L_0xc6f080 .concat8 [ 16 15 0 0], LS_0xc6f080_1_0, LS_0xc6f080_1_4;
L_0xc6f230 .part L_0xc49150, 30, 1;
L_0xc6dc00 .part L_0xc73f20, 30, 1;
L_0xc6dca0 .part L_0xc6f080, 29, 1;
LS_0xc70410_0_0 .concat8 [ 1 1 1 1], L_0xc4c150, L_0xc4ce90, L_0xc4df90, L_0xc4f070;
LS_0xc70410_0_4 .concat8 [ 1 1 1 1], L_0xc50300, L_0xc51560, L_0xc52890, L_0xc53ab0;
LS_0xc70410_0_8 .concat8 [ 1 1 1 1], L_0xc54d00, L_0xc55fb0, L_0xc572f0, L_0xc58580;
LS_0xc70410_0_12 .concat8 [ 1 1 1 1], L_0xc597f0, L_0xc5aa30, L_0xc5bd90, L_0xc5cfc0;
LS_0xc70410_0_16 .concat8 [ 1 1 1 1], L_0xc5e220, L_0xc5f540, L_0xc60780, L_0xc619a0;
LS_0xc70410_0_20 .concat8 [ 1 1 1 1], L_0xc62bd0, L_0xc63e00, L_0xc65040, L_0xc66270;
LS_0xc70410_0_24 .concat8 [ 1 1 1 1], L_0xc674a0, L_0xc686d0, L_0xc699e0, L_0xc6ac60;
LS_0xc70410_0_28 .concat8 [ 1 1 1 1], L_0xc6bd90, L_0xc6ceb0, L_0xc1fa40, L_0xc6fe80;
LS_0xc70410_1_0 .concat8 [ 4 4 4 4], LS_0xc70410_0_0, LS_0xc70410_0_4, LS_0xc70410_0_8, LS_0xc70410_0_12;
LS_0xc70410_1_4 .concat8 [ 4 4 4 4], LS_0xc70410_0_16, LS_0xc70410_0_20, LS_0xc70410_0_24, LS_0xc70410_0_28;
L_0xc70410 .concat8 [ 16 16 0 0], LS_0xc70410_1_0, LS_0xc70410_1_4;
L_0xc705c0 .part L_0xc49150, 31, 1;
L_0xc6f2d0 .part L_0xc73f20, 31, 1;
L_0xc6f370 .part L_0xc6f080, 30, 1;
L_0xc5eb30 .part L_0xc70410, 0, 1;
L_0xc70660 .part L_0xc70410, 1, 1;
L_0xc70700 .part L_0xc70410, 2, 1;
L_0xc707f0 .part L_0xc70410, 3, 1;
L_0xc710c0 .part L_0xc70410, 4, 1;
L_0xc5ec20 .part L_0xc70410, 5, 1;
L_0xc70d80 .part L_0xc70410, 6, 1;
L_0xc70e70 .part L_0xc70410, 7, 1;
L_0xc70f60 .part L_0xc70410, 8, 1;
L_0xc715d0 .part L_0xc70410, 9, 1;
L_0xc71270 .part L_0xc70410, 10, 1;
L_0xc71360 .part L_0xc70410, 11, 1;
L_0xc71450 .part L_0xc70410, 12, 1;
L_0xc71160 .part L_0xc70410, 13, 1;
L_0xc71670 .part L_0xc70410, 14, 1;
L_0xc71760 .part L_0xc70410, 15, 1;
L_0xc71850 .part L_0xc70410, 16, 1;
L_0xc71940 .part L_0xc70410, 17, 1;
L_0xc71fb0 .part L_0xc70410, 18, 1;
L_0xc72050 .part L_0xc70410, 19, 1;
L_0xc71c00 .part L_0xc70410, 20, 1;
L_0xc71cf0 .part L_0xc70410, 21, 1;
L_0xc71de0 .part L_0xc70410, 22, 1;
L_0xc71ed0 .part L_0xc70410, 23, 1;
L_0xc72140 .part L_0xc70410, 24, 1;
L_0xc72230 .part L_0xc70410, 25, 1;
L_0xc72320 .part L_0xc70410, 26, 1;
L_0xc72410 .part L_0xc70410, 27, 1;
L_0xc72960 .part L_0xc70410, 28, 1;
L_0xc719f0 .part L_0xc70410, 29, 1;
L_0xc71ae0 .part L_0xc70410, 28, 1;
L_0xc72560 .part L_0xc70410, 29, 1;
L_0xc72650 .part L_0xc70410, 30, 1;
L_0xc72740 .part L_0xc70410, 31, 1;
S_0xb74030 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc4c1f0 .functor BUFZ 1, L_0xc4bc20, C4<0>, C4<0>, C4<0>;
L_0xc4c260 .functor BUFZ 1, L_0xc4bc20, C4<0>, C4<0>, C4<0>;
v0xb28010_0 .net "A", 0 0, L_0xc4c400;  1 drivers
v0xb280b0_0 .net "B", 0 0, L_0xc4c4a0;  1 drivers
v0xb27b40_0 .net "I", 7 0, L_0xc4c360;  1 drivers
v0xb27c10_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb20810_0 .net *"_s15", 0 0, L_0xc4c1f0;  1 drivers
v0xb27670_0 .net *"_s19", 0 0, L_0xc4c260;  1 drivers
L_0x7f2ff04581c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb271a0_0 .net/2s *"_s23", 0 0, L_0x7f2ff04581c8;  1 drivers
v0xb26cd0_0 .net "addORsub", 0 0, L_0xc4bc20;  1 drivers
v0xb26d70_0 .net "carryin", 0 0, L_0xc4c540;  1 drivers
v0xb26800_0 .net "carryout", 0 0, L_0xb31310;  1 drivers
v0xb268a0_0 .net "modB", 0 0, L_0xc4ba10;  1 drivers
v0xb26330_0 .net "out", 0 0, L_0xc4c150;  1 drivers
L_0xc4ba80 .part v0xb9e740_0, 0, 1;
LS_0xc4c360_0_0 .concat8 [ 1 1 1 1], L_0xc4c1f0, L_0xc4c260, L_0xc4be80, L_0x7f2ff04581c8;
LS_0xc4c360_0_4 .concat8 [ 1 1 1 1], L_0xb29350, L_0xc4c000, L_0xc4c070, L_0xc4c0e0;
L_0xc4c360 .concat8 [ 4 4 0 0], LS_0xc4c360_0_0, LS_0xc4c360_0_4;
S_0xb6f9a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc4bb20 .functor XOR 1, L_0xc4c400, L_0xc4ba10, C4<0>, C4<0>;
L_0xc4bc20 .functor XOR 1, L_0xc4bb20, L_0xc4c540, C4<0>, C4<0>;
L_0xc4bc90 .functor AND 1, L_0xc4bb20, L_0xc4c540, C4<1>, C4<1>;
L_0xc4bd00 .functor AND 1, L_0xc4c400, L_0xc4ba10, C4<1>, C4<1>;
L_0xb31310 .functor OR 1, L_0xc4bc90, L_0xc4bd00, C4<0>, C4<0>;
v0xb568f0_0 .net "A", 0 0, L_0xc4c400;  alias, 1 drivers
v0xb56990_0 .net "B", 0 0, L_0xc4ba10;  alias, 1 drivers
v0xb52260_0 .net "carryin", 0 0, L_0xc4c540;  alias, 1 drivers
v0xb4dbd0_0 .net "carryout", 0 0, L_0xb31310;  alias, 1 drivers
v0xb4dc90_0 .net "out1", 0 0, L_0xc4bb20;  1 drivers
v0xbbab40_0 .net "out2", 0 0, L_0xc4bc90;  1 drivers
v0xbbac00_0 .net "out3", 0 0, L_0xc4bd00;  1 drivers
v0xbb72f0_0 .net "sum", 0 0, L_0xc4bc20;  alias, 1 drivers
S_0xb36880 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb29350 .functor AND 1, L_0xc4c400, L_0xc4c4a0, C4<1>, C4<1>;
v0xbb2cc0_0 .net "A", 0 0, L_0xc4c400;  alias, 1 drivers
v0xbae5b0_0 .net "B", 0 0, L_0xc4c4a0;  alias, 1 drivers
v0xbae650_0 .net "out", 0 0, L_0xb29350;  1 drivers
S_0xb6b7e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb94070_0 .net "I", 7 0, L_0xc4c360;  alias, 1 drivers
v0xb8f9e0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb8faa0_0 .net "out", 0 0, L_0xc4c150;  alias, 1 drivers
L_0xc4c150 .part/v L_0xc4c360, v0xb9e740_0, 1;
S_0xb64cf0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4c000 .functor NAND 1, L_0xc4c400, L_0xc4c4a0, C4<1>, C4<1>;
v0xb8b400_0 .net "A", 0 0, L_0xc4c400;  alias, 1 drivers
v0xb79bc0_0 .net "B", 0 0, L_0xc4c4a0;  alias, 1 drivers
v0xb754c0_0 .net "out", 0 0, L_0xc4c000;  1 drivers
S_0xb5a4d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4c070 .functor NOR 1, L_0xc4c400, L_0xc4c4a0, C4<0>, C4<0>;
v0xb70ed0_0 .net "A", 0 0, L_0xc4c400;  alias, 1 drivers
v0xb6c790_0 .net "B", 0 0, L_0xc4c4a0;  alias, 1 drivers
v0xb37d10_0 .net "out", 0 0, L_0xc4c070;  1 drivers
S_0xb485c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4c0e0 .functor OR 1, L_0xc4c400, L_0xc4c4a0, C4<0>, C4<0>;
v0xb31250_0 .net "A", 0 0, L_0xc4c400;  alias, 1 drivers
v0xb33590_0 .net "B", 0 0, L_0xc4c4a0;  alias, 1 drivers
v0xb33650_0 .net "out", 0 0, L_0xc4c0e0;  1 drivers
S_0xb43fd0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4ba10 .functor XOR 1, L_0xc4c4a0, L_0xc4ba80, C4<0>, C4<0>;
v0x9b1220_0 .net "A", 0 0, L_0xc4c4a0;  alias, 1 drivers
v0xb293e0_0 .net "B", 0 0, L_0xc4ba80;  1 drivers
v0xb28e80_0 .net "out", 0 0, L_0xc4ba10;  alias, 1 drivers
S_0xb3f9e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xb74030;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4be80 .functor XOR 1, L_0xc4c400, L_0xc4c4a0, C4<0>, C4<0>;
v0xb289b0_0 .net "A", 0 0, L_0xc4c400;  alias, 1 drivers
v0xb28a70_0 .net "B", 0 0, L_0xc4c4a0;  alias, 1 drivers
v0xb28500_0 .net "out", 0 0, L_0xc4be80;  1 drivers
S_0xba8fa0 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc4cf50 .functor BUFZ 1, L_0xc4c8e0, C4<0>, C4<0>, C4<0>;
L_0xc4cfe0 .functor BUFZ 1, L_0xc4c8e0, C4<0>, C4<0>, C4<0>;
v0xba24e0_0 .net "A", 0 0, L_0xc4d330;  1 drivers
v0xba2580_0 .net "B", 0 0, L_0xc4d4e0;  1 drivers
v0xb9def0_0 .net "I", 7 0, L_0xc4d100;  1 drivers
v0xb9dfc0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb3d5a0_0 .net *"_s15", 0 0, L_0xc4cf50;  1 drivers
v0xb87ee0_0 .net *"_s19", 0 0, L_0xc4cfe0;  1 drivers
L_0x7f2ff0458210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb838f0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458210;  1 drivers
v0xb7f300_0 .net "addORsub", 0 0, L_0xc4c8e0;  1 drivers
v0xb7f3a0_0 .net "carryin", 0 0, L_0xc4d580;  1 drivers
v0xb7ad10_0 .net "carryout", 0 0, L_0xb216f0;  1 drivers
v0xb7ade0_0 .net "modB", 0 0, L_0xc4c670;  1 drivers
v0xb692e0_0 .net "out", 0 0, L_0xc4ce90;  1 drivers
L_0xc4c6e0 .part v0xb9e740_0, 0, 1;
LS_0xc4d100_0_0 .concat8 [ 1 1 1 1], L_0xc4cf50, L_0xc4cfe0, L_0xc4cb80, L_0x7f2ff0458210;
LS_0xc4d100_0_4 .concat8 [ 1 1 1 1], L_0xb5c110, L_0xc4cd00, L_0xc4cd70, L_0xc4ce00;
L_0xc4d100 .concat8 [ 4 4 0 0], LS_0xc4d100_0_0, LS_0xc4d100_0_4;
S_0xba49b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc4c7a0 .functor XOR 1, L_0xc4d330, L_0xc4c670, C4<0>, C4<0>;
L_0xc4c8e0 .functor XOR 1, L_0xc4c7a0, L_0xc4d580, C4<0>, C4<0>;
L_0xc4c970 .functor AND 1, L_0xc4c7a0, L_0xc4d580, C4<1>, C4<1>;
L_0xc4ca00 .functor AND 1, L_0xc4d330, L_0xc4c670, C4<1>, C4<1>;
L_0xb216f0 .functor OR 1, L_0xc4c970, L_0xc4ca00, C4<0>, C4<0>;
v0xb25990_0 .net "A", 0 0, L_0xc4d330;  alias, 1 drivers
v0xb254c0_0 .net "B", 0 0, L_0xc4c670;  alias, 1 drivers
v0xb25580_0 .net "carryin", 0 0, L_0xc4d580;  alias, 1 drivers
v0xb24ff0_0 .net "carryout", 0 0, L_0xb216f0;  alias, 1 drivers
v0xb25090_0 .net "out1", 0 0, L_0xc4c7a0;  1 drivers
v0xb24b20_0 .net "out2", 0 0, L_0xc4c970;  1 drivers
v0xb24be0_0 .net "out3", 0 0, L_0xc4ca00;  1 drivers
v0xb202f0_0 .net "sum", 0 0, L_0xc4c8e0;  alias, 1 drivers
S_0xba03c0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb5c110 .functor AND 1, L_0xc4d330, L_0xc4d4e0, C4<1>, C4<1>;
v0xb24710_0 .net "A", 0 0, L_0xc4d330;  alias, 1 drivers
v0xb241b0_0 .net "B", 0 0, L_0xc4d4e0;  alias, 1 drivers
v0xb23cb0_0 .net "out", 0 0, L_0xb5c110;  1 drivers
S_0xb9bde0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb237e0_0 .net "I", 7 0, L_0xc4d100;  alias, 1 drivers
v0xb23310_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb233d0_0 .net "out", 0 0, L_0xc4ce90;  alias, 1 drivers
L_0xc4ce90 .part/v L_0xc4d100, v0xb9e740_0, 1;
S_0xb9b4f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4cd00 .functor NAND 1, L_0xc4d330, L_0xc4d4e0, C4<1>, C4<1>;
v0xb22f00_0 .net "A", 0 0, L_0xc4d330;  alias, 1 drivers
v0xb229e0_0 .net "B", 0 0, L_0xc4d4e0;  alias, 1 drivers
v0xb224a0_0 .net "out", 0 0, L_0xc4cd00;  1 drivers
S_0xb3b400 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4cd70 .functor NOR 1, L_0xc4d330, L_0xc4d4e0, C4<0>, C4<0>;
v0xb22070_0 .net "A", 0 0, L_0xc4d330;  alias, 1 drivers
v0xb21b00_0 .net "B", 0 0, L_0xc4d4e0;  alias, 1 drivers
v0xb1fe70_0 .net "out", 0 0, L_0xc4cd70;  1 drivers
S_0xb85dc0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4ce00 .functor OR 1, L_0xc4d330, L_0xc4d4e0, C4<0>, C4<0>;
v0xb21630_0 .net "A", 0 0, L_0xc4d330;  alias, 1 drivers
v0xb21160_0 .net "B", 0 0, L_0xc4d4e0;  alias, 1 drivers
v0xb21200_0 .net "out", 0 0, L_0xc4ce00;  1 drivers
S_0xb817d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4c670 .functor XOR 1, L_0xc4d4e0, L_0xc4c6e0, C4<0>, C4<0>;
v0xb20ce0_0 .net "A", 0 0, L_0xc4d4e0;  alias, 1 drivers
v0xb5c1a0_0 .net "B", 0 0, L_0xc4c6e0;  1 drivers
v0xb460f0_0 .net "out", 0 0, L_0xc4c670;  alias, 1 drivers
S_0xb7d1e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xba8fa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4cb80 .functor XOR 1, L_0xc4d330, L_0xc4d4e0, C4<0>, C4<0>;
v0xb41b00_0 .net "A", 0 0, L_0xc4d330;  alias, 1 drivers
v0xb41bc0_0 .net "B", 0 0, L_0xc4d4e0;  alias, 1 drivers
v0xba6ad0_0 .net "out", 0 0, L_0xc4cb80;  1 drivers
S_0xb671c0 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc57450 .functor BUFZ 1, L_0xc56bd0, C4<0>, C4<0>, C4<0>;
L_0xc574e0 .functor BUFZ 1, L_0xc56bd0, C4<0>, C4<0>, C4<0>;
v0xb2ba90_0 .net "A", 0 0, L_0xc57a30;  1 drivers
v0xb2bb30_0 .net "B", 0 0, L_0xc57ad0;  1 drivers
v0xb197b0_0 .net "I", 7 0, L_0xc57600;  1 drivers
v0xb19850_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb2b710_0 .net *"_s15", 0 0, L_0xc57450;  1 drivers
v0xb2b7d0_0 .net *"_s19", 0 0, L_0xc574e0;  1 drivers
L_0x7f2ff0458498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb2b3e0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458498;  1 drivers
v0xb2b4a0_0 .net "addORsub", 0 0, L_0xc56bd0;  1 drivers
v0xb2b0b0_0 .net "carryin", 0 0, L_0xc57b70;  1 drivers
v0xb2aa40_0 .net "carryout", 0 0, L_0xb19c00;  1 drivers
v0xb2aae0_0 .net "modB", 0 0, L_0xc569c0;  1 drivers
v0xb19430_0 .net "out", 0 0, L_0xc572f0;  1 drivers
L_0xc56a30 .part v0xb9e740_0, 0, 1;
LS_0xc57600_0_0 .concat8 [ 1 1 1 1], L_0xc57450, L_0xc574e0, L_0xc56fe0, L_0x7f2ff0458498;
LS_0xc57600_0_4 .concat8 [ 1 1 1 1], L_0xb2ca80, L_0xc57160, L_0xc571d0, L_0xc57260;
L_0xc57600 .concat8 [ 4 4 0 0], LS_0xc57600_0_0, LS_0xc57600_0_4;
S_0xb62bd0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc56ad0 .functor XOR 1, L_0xc57a30, L_0xc569c0, C4<0>, C4<0>;
L_0xc56bd0 .functor XOR 1, L_0xc56ad0, L_0xc57b70, C4<0>, C4<0>;
L_0xc56ce0 .functor AND 1, L_0xc56ad0, L_0xc57b70, C4<1>, C4<1>;
L_0xc56d70 .functor AND 1, L_0xc57a30, L_0xc569c0, C4<1>, C4<1>;
L_0xb19c00 .functor OR 1, L_0xc56ce0, L_0xc56d70, C4<0>, C4<0>;
v0xb607a0_0 .net "A", 0 0, L_0xc57a30;  alias, 1 drivers
v0xbbb250_0 .net "B", 0 0, L_0xc569c0;  alias, 1 drivers
v0xbbb310_0 .net "carryin", 0 0, L_0xc57b70;  alias, 1 drivers
v0xb5e610_0 .net "carryout", 0 0, L_0xb19c00;  alias, 1 drivers
v0xb5e6d0_0 .net "out1", 0 0, L_0xc56ad0;  1 drivers
v0xb30c30_0 .net "out2", 0 0, L_0xc56ce0;  1 drivers
v0xb30890_0 .net "out3", 0 0, L_0xc56d70;  1 drivers
v0xb30950_0 .net "sum", 0 0, L_0xc56bd0;  alias, 1 drivers
S_0xb30130 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb2ca80 .functor AND 1, L_0xc57a30, L_0xc57ad0, C4<1>, C4<1>;
v0xb2fe00_0 .net "A", 0 0, L_0xc57a30;  alias, 1 drivers
v0xb2fec0_0 .net "B", 0 0, L_0xc57ad0;  alias, 1 drivers
v0xb2fad0_0 .net "out", 0 0, L_0xb2ca80;  1 drivers
S_0xb19e70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb2f7a0_0 .net "I", 7 0, L_0xc57600;  alias, 1 drivers
v0xb2f880_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb2f470_0 .net "out", 0 0, L_0xc572f0;  alias, 1 drivers
L_0xc572f0 .part/v L_0xc57600, v0xb9e740_0, 1;
S_0xb2f140 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc57160 .functor NAND 1, L_0xc57a30, L_0xc57ad0, C4<1>, C4<1>;
v0xb2ee60_0 .net "A", 0 0, L_0xc57a30;  alias, 1 drivers
v0xb2eae0_0 .net "B", 0 0, L_0xc57ad0;  alias, 1 drivers
v0xb2eba0_0 .net "out", 0 0, L_0xc57160;  1 drivers
S_0xb2e480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc571d0 .functor NOR 1, L_0xc57a30, L_0xc57ad0, C4<0>, C4<0>;
v0xb2e150_0 .net "A", 0 0, L_0xc57a30;  alias, 1 drivers
v0xb2e210_0 .net "B", 0 0, L_0xc57ad0;  alias, 1 drivers
v0xb2de20_0 .net "out", 0 0, L_0xc571d0;  1 drivers
S_0xb2daf0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc57260 .functor OR 1, L_0xc57a30, L_0xc57ad0, C4<0>, C4<0>;
v0xb19b60_0 .net "A", 0 0, L_0xc57a30;  alias, 1 drivers
v0xb2d7c0_0 .net "B", 0 0, L_0xc57ad0;  alias, 1 drivers
v0xb2d880_0 .net "out", 0 0, L_0xc57260;  1 drivers
S_0xb2cdb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc569c0 .functor XOR 1, L_0xc57ad0, L_0xc56a30, C4<0>, C4<0>;
v0xb2d500_0 .net "A", 0 0, L_0xc57ad0;  alias, 1 drivers
v0xb2cb10_0 .net "B", 0 0, L_0xc56a30;  1 drivers
v0xb2c750_0 .net "out", 0 0, L_0xc569c0;  alias, 1 drivers
S_0xb2c420 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xb671c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc56fe0 .functor XOR 1, L_0xc57a30, L_0xc57ad0, C4<0>, C4<0>;
v0xb2c0f0_0 .net "A", 0 0, L_0xc57a30;  alias, 1 drivers
v0xb2c1b0_0 .net "B", 0 0, L_0xc57ad0;  alias, 1 drivers
v0xb2bdc0_0 .net "out", 0 0, L_0xc56fe0;  1 drivers
S_0xb8a090 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc586e0 .functor BUFZ 1, L_0xc57e40, C4<0>, C4<0>, C4<0>;
L_0xc58770 .functor BUFZ 1, L_0xc57e40, C4<0>, C4<0>, C4<0>;
v0xb8e150_0 .net "A", 0 0, L_0xc58bb0;  1 drivers
v0xb8e1f0_0 .net "B", 0 0, L_0xc4d3d0;  1 drivers
v0xb73c30_0 .net "I", 7 0, L_0xc58890;  1 drivers
v0xb73d00_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb6f6b0_0 .net *"_s15", 0 0, L_0xc586e0;  1 drivers
v0xb6b300_0 .net *"_s19", 0 0, L_0xc58770;  1 drivers
L_0x7f2ff04584e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb6b3c0_0 .net/2s *"_s23", 0 0, L_0x7f2ff04584e0;  1 drivers
v0xb36480_0 .net "addORsub", 0 0, L_0xc57e40;  1 drivers
v0xb36520_0 .net "carryin", 0 0, L_0xc58d70;  1 drivers
v0xb48f60_0 .net "carryout", 0 0, L_0xb50a70;  1 drivers
v0xb49030_0 .net "modB", 0 0, L_0xc57c10;  1 drivers
v0xb44970_0 .net "out", 0 0, L_0xc58580;  1 drivers
L_0xc57c80 .part v0xb9e740_0, 0, 1;
LS_0xc58890_0_0 .concat8 [ 1 1 1 1], L_0xc586e0, L_0xc58770, L_0xc58270, L_0x7f2ff04584e0;
LS_0xc58890_0_4 .concat8 [ 1 1 1 1], L_0xbba180, L_0xc583f0, L_0xc58460, L_0xc584f0;
L_0xc58890 .concat8 [ 4 4 0 0], LS_0xc58890_0_0, LS_0xc58890_0_4;
S_0xb2a5b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc57d20 .functor XOR 1, L_0xc58bb0, L_0xc57c10, C4<0>, C4<0>;
L_0xc57e40 .functor XOR 1, L_0xc57d20, L_0xc58d70, C4<0>, C4<0>;
L_0xc57f70 .functor AND 1, L_0xc57d20, L_0xc58d70, C4<1>, C4<1>;
L_0xc58000 .functor AND 1, L_0xc58bb0, L_0xc57c10, C4<1>, C4<1>;
L_0xb50a70 .functor OR 1, L_0xc57f70, L_0xc58000, C4<0>, C4<0>;
v0xbc7dc0_0 .net "A", 0 0, L_0xc58bb0;  alias, 1 drivers
v0xb18830_0 .net "B", 0 0, L_0xc57c10;  alias, 1 drivers
v0xb188f0_0 .net "carryin", 0 0, L_0xc58d70;  alias, 1 drivers
v0xbc5010_0 .net "carryout", 0 0, L_0xb50a70;  alias, 1 drivers
v0xbc50d0_0 .net "out1", 0 0, L_0xc57d20;  1 drivers
v0xbc7400_0 .net "out2", 0 0, L_0xc57f70;  1 drivers
v0xbc74a0_0 .net "out3", 0 0, L_0xc58000;  1 drivers
v0xb471f0_0 .net "sum", 0 0, L_0xc57e40;  alias, 1 drivers
S_0xb42c00 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbba180 .functor AND 1, L_0xc58bb0, L_0xc4d3d0, C4<1>, C4<1>;
v0xbb96e0_0 .net "A", 0 0, L_0xc58bb0;  alias, 1 drivers
v0xb3e610_0 .net "B", 0 0, L_0xc4d3d0;  alias, 1 drivers
v0xb3e6b0_0 .net "out", 0 0, L_0xbba180;  1 drivers
S_0xba7bd0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xba36b0_0 .net "I", 7 0, L_0xc58890;  alias, 1 drivers
v0xb9eff0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb9f0b0_0 .net "out", 0 0, L_0xc58580;  alias, 1 drivers
L_0xc58580 .part/v L_0xc58890, v0xb9e740_0, 1;
S_0xb88fe0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc583f0 .functor NAND 1, L_0xc58bb0, L_0xc4d3d0, C4<1>, C4<1>;
v0xb84a90_0 .net "A", 0 0, L_0xc58bb0;  alias, 1 drivers
v0xb80400_0 .net "B", 0 0, L_0xc4d3d0;  alias, 1 drivers
v0xb804c0_0 .net "out", 0 0, L_0xc583f0;  1 drivers
S_0xb65df0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc58460 .functor NOR 1, L_0xc58bb0, L_0xc4d3d0, C4<0>, C4<0>;
v0xb61800_0 .net "A", 0 0, L_0xc58bb0;  alias, 1 drivers
v0xb618a0_0 .net "B", 0 0, L_0xc4d3d0;  alias, 1 drivers
v0xb5d210_0 .net "out", 0 0, L_0xc58460;  1 drivers
S_0xb55060 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc584f0 .functor OR 1, L_0xc58bb0, L_0xc4d3d0, C4<0>, C4<0>;
v0xb509d0_0 .net "A", 0 0, L_0xc58bb0;  alias, 1 drivers
v0xb4c340_0 .net "B", 0 0, L_0xc4d3d0;  alias, 1 drivers
v0xb4c400_0 .net "out", 0 0, L_0xc584f0;  1 drivers
S_0xbb9b90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc57c10 .functor XOR 1, L_0xc4d3d0, L_0xc57c80, C4<0>, C4<0>;
v0xbba0c0_0 .net "A", 0 0, L_0xc4d3d0;  alias, 1 drivers
v0xbb5a60_0 .net "B", 0 0, L_0xc57c80;  1 drivers
v0xbb5b20_0 .net "out", 0 0, L_0xc57c10;  alias, 1 drivers
S_0xbb13c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xb8a090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc58270 .functor XOR 1, L_0xc58bb0, L_0xc4d3d0, C4<0>, C4<0>;
v0xb96ec0_0 .net "A", 0 0, L_0xc58bb0;  alias, 1 drivers
v0xb96f80_0 .net "B", 0 0, L_0xc4d3d0;  alias, 1 drivers
v0xb927e0_0 .net "out", 0 0, L_0xc58270;  1 drivers
S_0xb40380 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc59950 .functor BUFZ 1, L_0xc590d0, C4<0>, C4<0>, C4<0>;
L_0xc599e0 .functor BUFZ 1, L_0xc590d0, C4<0>, C4<0>, C4<0>;
v0xb46ca0_0 .net "A", 0 0, L_0xc59e20;  1 drivers
v0xb46d40_0 .net "B", 0 0, L_0xc59ec0;  1 drivers
v0xb426b0_0 .net "I", 7 0, L_0xc59b00;  1 drivers
v0xb42780_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb3e0c0_0 .net *"_s15", 0 0, L_0xc59950;  1 drivers
v0xb3e180_0 .net *"_s19", 0 0, L_0xc599e0;  1 drivers
L_0x7f2ff0458528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xba7680_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458528;  1 drivers
v0xba7740_0 .net "addORsub", 0 0, L_0xc590d0;  1 drivers
v0xba3090_0 .net "carryin", 0 0, L_0xc58ea0;  1 drivers
v0xba3160_0 .net "carryout", 0 0, L_0xb97840;  1 drivers
v0xb9eaa0_0 .net "modB", 0 0, L_0xc4d470;  1 drivers
v0xb9eb40_0 .net "out", 0 0, L_0xc597f0;  1 drivers
L_0xc58c50 .part v0xb9e740_0, 0, 1;
LS_0xc59b00_0_0 .concat8 [ 1 1 1 1], L_0xc59950, L_0xc599e0, L_0xc594e0, L_0x7f2ff0458528;
LS_0xc59b00_0_4 .concat8 [ 1 1 1 1], L_0xb8a4a0, L_0xc59660, L_0xc596d0, L_0xc59760;
L_0xc59b00 .concat8 [ 4 4 0 0], LS_0xc59b00_0_0, LS_0xc59b00_0_4;
S_0xba5350 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc58fd0 .functor XOR 1, L_0xc59e20, L_0xc4d470, C4<0>, C4<0>;
L_0xc590d0 .functor XOR 1, L_0xc58fd0, L_0xc58ea0, C4<0>, C4<0>;
L_0xc591e0 .functor AND 1, L_0xc58fd0, L_0xc58ea0, C4<1>, C4<1>;
L_0xc59250 .functor AND 1, L_0xc59e20, L_0xc4d470, C4<1>, C4<1>;
L_0xb97840 .functor OR 1, L_0xc591e0, L_0xc59250, C4<0>, C4<0>;
v0xba0d60_0 .net "A", 0 0, L_0xc59e20;  alias, 1 drivers
v0xba0e40_0 .net "B", 0 0, L_0xc4d470;  alias, 1 drivers
v0xb9c780_0 .net "carryin", 0 0, L_0xc58ea0;  alias, 1 drivers
v0xb9c840_0 .net "carryout", 0 0, L_0xb97840;  alias, 1 drivers
v0xb3bda0_0 .net "out1", 0 0, L_0xc58fd0;  1 drivers
v0xb3beb0_0 .net "out2", 0 0, L_0xc591e0;  1 drivers
v0xb86760_0 .net "out3", 0 0, L_0xc59250;  1 drivers
v0xb86820_0 .net "sum", 0 0, L_0xc590d0;  alias, 1 drivers
S_0xb82170 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb8a4a0 .functor AND 1, L_0xc59e20, L_0xc59ec0, C4<1>, C4<1>;
v0xb7dbd0_0 .net "A", 0 0, L_0xc59e20;  alias, 1 drivers
v0xb7dc70_0 .net "B", 0 0, L_0xc59ec0;  alias, 1 drivers
v0xb67b60_0 .net "out", 0 0, L_0xb8a4a0;  1 drivers
S_0xb63570 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb5ef80_0 .net "I", 7 0, L_0xc59b00;  alias, 1 drivers
v0xb5f080_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb0e4e0_0 .net "out", 0 0, L_0xc597f0;  alias, 1 drivers
L_0xc597f0 .part/v L_0xc59b00, v0xb9e740_0, 1;
S_0xb0dff0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc59660 .functor NAND 1, L_0xc59e20, L_0xc59ec0, C4<1>, C4<1>;
v0xb32150_0 .net "A", 0 0, L_0xc59e20;  alias, 1 drivers
v0xb55940_0 .net "B", 0 0, L_0xc59ec0;  alias, 1 drivers
v0xb55a00_0 .net "out", 0 0, L_0xc59660;  1 drivers
S_0xb512b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc596d0 .functor NOR 1, L_0xc59e20, L_0xc59ec0, C4<0>, C4<0>;
v0xb4ccc0_0 .net "A", 0 0, L_0xc59e20;  alias, 1 drivers
v0xbb6340_0 .net "B", 0 0, L_0xc59ec0;  alias, 1 drivers
v0xbb6450_0 .net "out", 0 0, L_0xc596d0;  1 drivers
S_0xbb1ca0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc59760 .functor OR 1, L_0xc59e20, L_0xc59ec0, C4<0>, C4<0>;
v0xb977a0_0 .net "A", 0 0, L_0xc59e20;  alias, 1 drivers
v0xb930c0_0 .net "B", 0 0, L_0xc59ec0;  alias, 1 drivers
v0xb93160_0 .net "out", 0 0, L_0xc59760;  1 drivers
S_0xb8ea30 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4d470 .functor XOR 1, L_0xc59ec0, L_0xc58c50, C4<0>, C4<0>;
v0xb8a3e0_0 .net "A", 0 0, L_0xc59ec0;  alias, 1 drivers
v0xb78ba0_0 .net "B", 0 0, L_0xc58c50;  1 drivers
v0xb78c60_0 .net "out", 0 0, L_0xc4d470;  alias, 1 drivers
S_0xb74510 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xb40380;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc594e0 .functor XOR 1, L_0xc59e20, L_0xc59ec0, C4<0>, C4<0>;
v0xb6fed0_0 .net "A", 0 0, L_0xc59e20;  alias, 1 drivers
v0xb6ff90_0 .net "B", 0 0, L_0xc59ec0;  alias, 1 drivers
v0xb36d60_0 .net "out", 0 0, L_0xc594e0;  1 drivers
S_0xb88a90 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc5ab90 .functor BUFZ 1, L_0xc5a2f0, C4<0>, C4<0>, C4<0>;
L_0xc5ac20 .functor BUFZ 1, L_0xc5a2f0, C4<0>, C4<0>, C4<0>;
v0xb11ea0_0 .net "A", 0 0, L_0xc5b060;  1 drivers
v0xb11f40_0 .net "B", 0 0, L_0xc59f60;  1 drivers
v0xb119d0_0 .net "I", 7 0, L_0xc5ad40;  1 drivers
v0xb11ad0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb11500_0 .net *"_s15", 0 0, L_0xc5ab90;  1 drivers
v0xb11610_0 .net *"_s19", 0 0, L_0xc5ac20;  1 drivers
L_0x7f2ff0458570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb11030_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458570;  1 drivers
v0xb11110_0 .net "addORsub", 0 0, L_0xc5a2f0;  1 drivers
v0xb10b60_0 .net "carryin", 0 0, L_0xc5a000;  1 drivers
v0xb10690_0 .net "carryout", 0 0, L_0xb14050;  1 drivers
v0xb10760_0 .net "modB", 0 0, L_0xc5a0a0;  1 drivers
v0xb101c0_0 .net "out", 0 0, L_0xc5aa30;  1 drivers
L_0xc5a110 .part v0xb9e740_0, 0, 1;
LS_0xc5ad40_0_0 .concat8 [ 1 1 1 1], L_0xc5ab90, L_0xc5ac20, L_0xc5a720, L_0x7f2ff0458570;
LS_0xc5ad40_0_4 .concat8 [ 1 1 1 1], L_0xb131e0, L_0xc5a8a0, L_0xc5a910, L_0xc5a9a0;
L_0xc5ad40 .concat8 [ 4 4 0 0], LS_0xc5ad40_0_0, LS_0xc5ad40_0_4;
S_0xb7feb0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5a1b0 .functor XOR 1, L_0xc5b060, L_0xc5a0a0, C4<0>, C4<0>;
L_0xc5a2f0 .functor XOR 1, L_0xc5a1b0, L_0xc5a000, C4<0>, C4<0>;
L_0xc5a420 .functor AND 1, L_0xc5a1b0, L_0xc5a000, C4<1>, C4<1>;
L_0xc5a4b0 .functor AND 1, L_0xc5b060, L_0xc5a0a0, C4<1>, C4<1>;
L_0xb14050 .functor OR 1, L_0xc5a420, L_0xc5a4b0, C4<0>, C4<0>;
v0xb845c0_0 .net "A", 0 0, L_0xc5b060;  alias, 1 drivers
v0xb7b8c0_0 .net "B", 0 0, L_0xc5a0a0;  alias, 1 drivers
v0xb7b980_0 .net "carryin", 0 0, L_0xc5a000;  alias, 1 drivers
v0xb658a0_0 .net "carryout", 0 0, L_0xb14050;  alias, 1 drivers
v0xb65960_0 .net "out1", 0 0, L_0xc5a1b0;  1 drivers
v0xb612b0_0 .net "out2", 0 0, L_0xc5a420;  1 drivers
v0xb61370_0 .net "out3", 0 0, L_0xc5a4b0;  1 drivers
v0xb5ccc0_0 .net "sum", 0 0, L_0xc5a2f0;  alias, 1 drivers
S_0xb29ed0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb131e0 .functor AND 1, L_0xc5b060, L_0xc59f60, C4<1>, C4<1>;
v0xb17540_0 .net "A", 0 0, L_0xc5b060;  alias, 1 drivers
v0xb17610_0 .net "B", 0 0, L_0xc59f60;  alias, 1 drivers
v0xb17070_0 .net "out", 0 0, L_0xb131e0;  1 drivers
S_0xb16ba0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb166d0_0 .net "I", 7 0, L_0xc5ad40;  alias, 1 drivers
v0xb167b0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb16200_0 .net "out", 0 0, L_0xc5aa30;  alias, 1 drivers
L_0xc5aa30 .part/v L_0xc5ad40, v0xb9e740_0, 1;
S_0xb15d30 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5a8a0 .functor NAND 1, L_0xc5b060, L_0xc59f60, C4<1>, C4<1>;
v0xb16320_0 .net "A", 0 0, L_0xc5b060;  alias, 1 drivers
v0xb0e9f0_0 .net "B", 0 0, L_0xc59f60;  alias, 1 drivers
v0xb0eab0_0 .net "out", 0 0, L_0xc5a8a0;  1 drivers
S_0xb158a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5a910 .functor NOR 1, L_0xc5b060, L_0xc59f60, C4<0>, C4<0>;
v0xb15480_0 .net "A", 0 0, L_0xc5b060;  alias, 1 drivers
v0xb14ec0_0 .net "B", 0 0, L_0xc59f60;  alias, 1 drivers
v0xb14fb0_0 .net "out", 0 0, L_0xc5a910;  1 drivers
S_0xb14a10 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5a9a0 .functor OR 1, L_0xc5b060, L_0xc59f60, C4<0>, C4<0>;
v0xb145c0_0 .net "A", 0 0, L_0xc5b060;  alias, 1 drivers
v0xb140e0_0 .net "B", 0 0, L_0xc59f60;  alias, 1 drivers
v0xb13b80_0 .net "out", 0 0, L_0xc5a9a0;  1 drivers
S_0xb136b0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5a0a0 .functor XOR 1, L_0xc59f60, L_0xc5a110, C4<0>, C4<0>;
v0xb13c80_0 .net "A", 0 0, L_0xc59f60;  alias, 1 drivers
v0xb13270_0 .net "B", 0 0, L_0xc5a110;  1 drivers
v0xb12d10_0 .net "out", 0 0, L_0xc5a0a0;  alias, 1 drivers
S_0xb12840 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xb88a90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5a720 .functor XOR 1, L_0xc5b060, L_0xc59f60, C4<0>, C4<0>;
v0xb12e20_0 .net "A", 0 0, L_0xc5b060;  alias, 1 drivers
v0xb12370_0 .net "B", 0 0, L_0xc59f60;  alias, 1 drivers
v0xb12430_0 .net "out", 0 0, L_0xc5a720;  1 drivers
S_0xb0fcf0 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc5bef0 .functor BUFZ 1, L_0xc5b650, C4<0>, C4<0>, C4<0>;
L_0xc5bf80 .functor BUFZ 1, L_0xc5b650, C4<0>, C4<0>, C4<0>;
v0xbb44f0_0 .net "A", 0 0, L_0xc5c3c0;  1 drivers
v0xbb4590_0 .net "B", 0 0, L_0xc5c460;  1 drivers
v0xbb4100_0 .net "I", 7 0, L_0xc5c0a0;  1 drivers
v0xbb41d0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbb0250_0 .net *"_s15", 0 0, L_0xc5bef0;  1 drivers
v0xbb0360_0 .net *"_s19", 0 0, L_0xc5bf80;  1 drivers
L_0x7f2ff04585b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbafe50_0 .net/2s *"_s23", 0 0, L_0x7f2ff04585b8;  1 drivers
v0xbaff10_0 .net "addORsub", 0 0, L_0xc5b650;  1 drivers
v0xbafa60_0 .net "carryin", 0 0, L_0xc5b460;  1 drivers
v0xbabb80_0 .net "carryout", 0 0, L_0xb4f460;  1 drivers
v0xbabc50_0 .net "modB", 0 0, L_0xc51df0;  1 drivers
v0xbab780_0 .net "out", 0 0, L_0xc5bd90;  1 drivers
L_0xc5b100 .part v0xb9e740_0, 0, 1;
LS_0xc5c0a0_0_0 .concat8 [ 1 1 1 1], L_0xc5bef0, L_0xc5bf80, L_0xc5ba80, L_0x7f2ff04585b8;
LS_0xc5c0a0_0_4 .concat8 [ 1 1 1 1], L_0xb4add0, L_0xc5bc00, L_0xc5bc70, L_0xc5bd00;
L_0xc5c0a0 .concat8 [ 4 4 0 0], LS_0xc5c0a0_0_0, LS_0xc5c0a0_0_4;
S_0xb0f810 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5b1c0 .functor XOR 1, L_0xc5c3c0, L_0xc51df0, C4<0>, C4<0>;
L_0xc5b650 .functor XOR 1, L_0xc5b1c0, L_0xc5b460, C4<0>, C4<0>;
L_0xc5b780 .functor AND 1, L_0xc5b1c0, L_0xc5b460, C4<1>, C4<1>;
L_0xc5b810 .functor AND 1, L_0xc5c3c0, L_0xc51df0, C4<1>, C4<1>;
L_0xb4f460 .functor OR 1, L_0xc5b780, L_0xc5b810, C4<0>, C4<0>;
v0xb0f340_0 .net "A", 0 0, L_0xc5c3c0;  alias, 1 drivers
v0xb0f420_0 .net "B", 0 0, L_0xc51df0;  alias, 1 drivers
v0xb0ee60_0 .net "carryin", 0 0, L_0xc5b460;  alias, 1 drivers
v0xb0ef00_0 .net "carryout", 0 0, L_0xb4f460;  alias, 1 drivers
v0xb18150_0 .net "out1", 0 0, L_0xc5b1c0;  1 drivers
v0xb18210_0 .net "out2", 0 0, L_0xc5b780;  1 drivers
v0xaf5970_0 .net "out3", 0 0, L_0xc5b810;  1 drivers
v0xaf5a30_0 .net "sum", 0 0, L_0xc5b650;  alias, 1 drivers
S_0xaf5260 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb4add0 .functor AND 1, L_0xc5c3c0, L_0xc5c460, C4<1>, C4<1>;
v0xaf60b0_0 .net "A", 0 0, L_0xc5c3c0;  alias, 1 drivers
v0xaf6170_0 .net "B", 0 0, L_0xc5c460;  alias, 1 drivers
v0xa59990_0 .net "out", 0 0, L_0xb4add0;  1 drivers
S_0xb35310 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb58580_0 .net "I", 7 0, L_0xc5c0a0;  alias, 1 drivers
v0xb58660_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb58180_0 .net "out", 0 0, L_0xc5bd90;  alias, 1 drivers
L_0xc5bd90 .part/v L_0xc5c0a0, v0xb9e740_0, 1;
S_0xb57d90 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5bc00 .functor NAND 1, L_0xc5c3c0, L_0xc5c460, C4<1>, C4<1>;
v0xb582a0_0 .net "A", 0 0, L_0xc5c3c0;  alias, 1 drivers
v0xb53ef0_0 .net "B", 0 0, L_0xc5c460;  alias, 1 drivers
v0xb53f90_0 .net "out", 0 0, L_0xc5bc00;  1 drivers
S_0xb53af0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5bc70 .functor NOR 1, L_0xc5c3c0, L_0xc5c460, C4<0>, C4<0>;
v0xb53700_0 .net "A", 0 0, L_0xc5c3c0;  alias, 1 drivers
v0xb537a0_0 .net "B", 0 0, L_0xc5c460;  alias, 1 drivers
v0xb34ef0_0 .net "out", 0 0, L_0xc5bc70;  1 drivers
S_0xb4f860 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5bd00 .functor OR 1, L_0xc5c3c0, L_0xc5c460, C4<0>, C4<0>;
v0xb34fd0_0 .net "A", 0 0, L_0xc5c3c0;  alias, 1 drivers
v0xb4f4f0_0 .net "B", 0 0, L_0xc5c460;  alias, 1 drivers
v0xb4f070_0 .net "out", 0 0, L_0xc5bd00;  1 drivers
S_0xb4b1d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc51df0 .functor XOR 1, L_0xc5c460, L_0xc5b100, C4<0>, C4<0>;
v0xb4f170_0 .net "A", 0 0, L_0xc5c460;  alias, 1 drivers
v0xb4ae60_0 .net "B", 0 0, L_0xc5b100;  1 drivers
v0xb4a9e0_0 .net "out", 0 0, L_0xc51df0;  alias, 1 drivers
S_0xb34ad0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xb0fcf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5ba80 .functor XOR 1, L_0xc5c3c0, L_0xc5c460, C4<0>, C4<0>;
v0xb4aac0_0 .net "A", 0 0, L_0xc5c3c0;  alias, 1 drivers
v0xbb48f0_0 .net "B", 0 0, L_0xc5c460;  alias, 1 drivers
v0xbb49b0_0 .net "out", 0 0, L_0xc5ba80;  1 drivers
S_0xbab390 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc5d120 .functor BUFZ 1, L_0xc5c880, C4<0>, C4<0>, C4<0>;
L_0xc5d1d0 .functor BUFZ 1, L_0xc5c880, C4<0>, C4<0>, C4<0>;
v0xb58bd0_0 .net "A", 0 0, L_0xc5d610;  1 drivers
v0xb58c70_0 .net "B", 0 0, L_0xc5c500;  1 drivers
v0xb54540_0 .net "I", 7 0, L_0xc5d2f0;  1 drivers
v0xb54640_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb6f5a0_0 .net *"_s15", 0 0, L_0xc5d120;  1 drivers
v0xbb8c70_0 .net *"_s19", 0 0, L_0xc5d1d0;  1 drivers
L_0x7f2ff0458600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xb4feb0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458600;  1 drivers
v0xb4ff90_0 .net "addORsub", 0 0, L_0xc5c880;  1 drivers
v0xb4b820_0 .net "carryin", 0 0, L_0xc5c5a0;  1 drivers
v0xbb4f40_0 .net "carryout", 0 0, L_0xb39260;  1 drivers
v0xbb5010_0 .net "modB", 0 0, L_0xc5c670;  1 drivers
v0xbb08a0_0 .net "out", 0 0, L_0xc5cfc0;  1 drivers
L_0xc5c6e0 .part v0xb9e740_0, 0, 1;
LS_0xc5d2f0_0_0 .concat8 [ 1 1 1 1], L_0xc5d120, L_0xc5d1d0, L_0xc5ccb0, L_0x7f2ff0458600;
LS_0xc5d2f0_0_4 .concat8 [ 1 1 1 1], L_0xb722d0, L_0xc5ce30, L_0xc5cea0, L_0xc5cf30;
L_0xc5d2f0 .concat8 [ 4 4 0 0], LS_0xc5d2f0_0_0, LS_0xc5d2f0_0_4;
S_0xb9a390 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5c780 .functor XOR 1, L_0xc5d610, L_0xc5c670, C4<0>, C4<0>;
L_0xc5c880 .functor XOR 1, L_0xc5c780, L_0xc5c5a0, C4<0>, C4<0>;
L_0xc5c9b0 .functor AND 1, L_0xc5c780, L_0xc5c5a0, C4<1>, C4<1>;
L_0xc5ca40 .functor AND 1, L_0xc5d610, L_0xc5c670, C4<1>, C4<1>;
L_0xb39260 .functor OR 1, L_0xc5c9b0, L_0xc5ca40, C4<0>, C4<0>;
v0xb99f90_0 .net "A", 0 0, L_0xc5d610;  alias, 1 drivers
v0xb9a070_0 .net "B", 0 0, L_0xc5c670;  alias, 1 drivers
v0xb99ba0_0 .net "carryin", 0 0, L_0xc5c5a0;  alias, 1 drivers
v0xb99c40_0 .net "carryout", 0 0, L_0xb39260;  alias, 1 drivers
v0xb95d00_0 .net "out1", 0 0, L_0xc5c780;  1 drivers
v0xb95e10_0 .net "out2", 0 0, L_0xc5c9b0;  1 drivers
v0xb95900_0 .net "out3", 0 0, L_0xc5ca40;  1 drivers
v0xb959c0_0 .net "sum", 0 0, L_0xc5c880;  alias, 1 drivers
S_0xb95510 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xb722d0 .functor AND 1, L_0xc5d610, L_0xc5c500, C4<1>, C4<1>;
v0xb91670_0 .net "A", 0 0, L_0xc5d610;  alias, 1 drivers
v0xb91730_0 .net "B", 0 0, L_0xc5c500;  alias, 1 drivers
v0xb91270_0 .net "out", 0 0, L_0xb722d0;  1 drivers
S_0xb90e80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb8cfe0_0 .net "I", 7 0, L_0xc5d2f0;  alias, 1 drivers
v0xb8d0a0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xb8cbe0_0 .net "out", 0 0, L_0xc5cfc0;  alias, 1 drivers
L_0xc5cfc0 .part/v L_0xc5d2f0, v0xb9e740_0, 1;
S_0xb8c7f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5ce30 .functor NAND 1, L_0xc5d610, L_0xc5c500, C4<1>, C4<1>;
v0xb399b0_0 .net "A", 0 0, L_0xc5d610;  alias, 1 drivers
v0xb39ac0_0 .net "B", 0 0, L_0xc5c500;  alias, 1 drivers
v0xb395b0_0 .net "out", 0 0, L_0xc5ce30;  1 drivers
S_0xb77150 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5cea0 .functor NOR 1, L_0xc5d610, L_0xc5c500, C4<0>, C4<0>;
v0xb396c0_0 .net "A", 0 0, L_0xc5d610;  alias, 1 drivers
v0xb76d50_0 .net "B", 0 0, L_0xc5c500;  alias, 1 drivers
v0xb76e40_0 .net "out", 0 0, L_0xc5cea0;  1 drivers
S_0xb76960 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5cf30 .functor OR 1, L_0xc5d610, L_0xc5c500, C4<0>, C4<0>;
v0xb391c0_0 .net "A", 0 0, L_0xc5d610;  alias, 1 drivers
v0xb392f0_0 .net "B", 0 0, L_0xc5c500;  alias, 1 drivers
v0xb72ac0_0 .net "out", 0 0, L_0xc5cf30;  1 drivers
S_0xb726c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5c670 .functor XOR 1, L_0xc5c500, L_0xc5c6e0, C4<0>, C4<0>;
v0xb72bf0_0 .net "A", 0 0, L_0xc5c500;  alias, 1 drivers
v0xb72360_0 .net "B", 0 0, L_0xc5c6e0;  1 drivers
v0xb6e430_0 .net "out", 0 0, L_0xc5c670;  alias, 1 drivers
S_0xb6e030 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbab390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5ccb0 .functor XOR 1, L_0xc5d610, L_0xc5c500, C4<0>, C4<0>;
v0xb6e540_0 .net "A", 0 0, L_0xc5d610;  alias, 1 drivers
v0xb6dc40_0 .net "B", 0 0, L_0xc5c500;  alias, 1 drivers
v0xb6dd00_0 .net "out", 0 0, L_0xc5ccb0;  1 drivers
S_0xbac1d0 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc5e380 .functor BUFZ 1, L_0xc5dae0, C4<0>, C4<0>, C4<0>;
L_0xc5e410 .functor BUFZ 1, L_0xc5dae0, C4<0>, C4<0>, C4<0>;
v0x9ed640_0 .net "A", 0 0, L_0xc5e850;  1 drivers
v0x9ed6e0_0 .net "B", 0 0, L_0xc5e8f0;  1 drivers
v0x9ee0d0_0 .net "I", 7 0, L_0xc5e530;  1 drivers
v0x9ee1d0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0x9ee270_0 .net *"_s15", 0 0, L_0xc5e380;  1 drivers
v0x9ee380_0 .net *"_s19", 0 0, L_0xc5e410;  1 drivers
L_0x7f2ff0458648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x9eee60_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458648;  1 drivers
v0x9eef40_0 .net "addORsub", 0 0, L_0xc5dae0;  1 drivers
v0x9eefe0_0 .net "carryin", 0 0, L_0xc5d8c0;  1 drivers
v0x9ef0b0_0 .net "carryout", 0 0, L_0xbbc0a0;  1 drivers
v0x9ef180_0 .net "modB", 0 0, L_0xc5d6b0;  1 drivers
v0x9f0eb0_0 .net "out", 0 0, L_0xc5e220;  1 drivers
L_0xc5d720 .part v0xb9e740_0, 0, 1;
LS_0xc5e530_0_0 .concat8 [ 1 1 1 1], L_0xc5e380, L_0xc5e410, L_0xc5df10, L_0x7f2ff0458648;
LS_0xc5e530_0_4 .concat8 [ 1 1 1 1], L_0x9ec9c0, L_0xc5e090, L_0xc5e100, L_0xc5e190;
L_0xc5e530 .concat8 [ 4 4 0 0], LS_0xc5e530_0_0, LS_0xc5e530_0_4;
S_0xb96350 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5d7c0 .functor XOR 1, L_0xc5e850, L_0xc5d6b0, C4<0>, C4<0>;
L_0xc5dae0 .functor XOR 1, L_0xc5d7c0, L_0xc5d8c0, C4<0>, C4<0>;
L_0xc5dc10 .functor AND 1, L_0xc5d7c0, L_0xc5d8c0, C4<1>, C4<1>;
L_0xc5dca0 .functor AND 1, L_0xc5e850, L_0xc5d6b0, C4<1>, C4<1>;
L_0xbbc0a0 .functor OR 1, L_0xc5dc10, L_0xc5dca0, C4<0>, C4<0>;
v0xb9aa80_0 .net "A", 0 0, L_0xc5e850;  alias, 1 drivers
v0xb91cc0_0 .net "B", 0 0, L_0xc5d6b0;  alias, 1 drivers
v0xb91d80_0 .net "carryin", 0 0, L_0xc5d8c0;  alias, 1 drivers
v0xb8d630_0 .net "carryout", 0 0, L_0xbbc0a0;  alias, 1 drivers
v0xb8d6f0_0 .net "out1", 0 0, L_0xc5d7c0;  1 drivers
v0xb3a000_0 .net "out2", 0 0, L_0xc5dc10;  1 drivers
v0xb3a0c0_0 .net "out3", 0 0, L_0xc5dca0;  1 drivers
v0xb777a0_0 .net "sum", 0 0, L_0xc5dae0;  alias, 1 drivers
S_0xb73110 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x9ec9c0 .functor AND 1, L_0xc5e850, L_0xc5e8f0, C4<1>, C4<1>;
v0xb6ea80_0 .net "A", 0 0, L_0xc5e850;  alias, 1 drivers
v0xb6eb40_0 .net "B", 0 0, L_0xc5e8f0;  alias, 1 drivers
v0xb6a3e0_0 .net "out", 0 0, L_0x9ec9c0;  1 drivers
S_0xb35960 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xb6a500_0 .net "I", 7 0, L_0xc5e530;  alias, 1 drivers
v0xbbbdd0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbbbe70_0 .net "out", 0 0, L_0xc5e220;  alias, 1 drivers
L_0xc5e220 .part/v L_0xc5e530, v0xb9e740_0, 1;
S_0x9cfa50 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5e090 .functor NAND 1, L_0xc5e850, L_0xc5e8f0, C4<1>, C4<1>;
v0x9cfc70_0 .net "A", 0 0, L_0xc5e850;  alias, 1 drivers
v0x9cfd80_0 .net "B", 0 0, L_0xc5e8f0;  alias, 1 drivers
v0xbbbfc0_0 .net "out", 0 0, L_0xc5e090;  1 drivers
S_0x9cb490 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5e100 .functor NOR 1, L_0xc5e850, L_0xc5e8f0, C4<0>, C4<0>;
v0x9cb700_0 .net "A", 0 0, L_0xc5e850;  alias, 1 drivers
v0x9cb7c0_0 .net "B", 0 0, L_0xc5e8f0;  alias, 1 drivers
v0x9eab50_0 .net "out", 0 0, L_0xc5e100;  1 drivers
S_0x9eac30 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5e190 .functor OR 1, L_0xc5e850, L_0xc5e8f0, C4<0>, C4<0>;
v0x9eae50_0 .net "A", 0 0, L_0xc5e850;  alias, 1 drivers
v0x9ec630_0 .net "B", 0 0, L_0xc5e8f0;  alias, 1 drivers
v0x9ec6f0_0 .net "out", 0 0, L_0xc5e190;  1 drivers
S_0x9ec7f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5d6b0 .functor XOR 1, L_0xc5e8f0, L_0xc5d720, C4<0>, C4<0>;
v0x9ed380_0 .net "A", 0 0, L_0xc5e8f0;  alias, 1 drivers
v0x9ed440_0 .net "B", 0 0, L_0xc5d720;  1 drivers
v0x9ed500_0 .net "out", 0 0, L_0xc5d6b0;  alias, 1 drivers
S_0x9eb8e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbac1d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5df10 .functor XOR 1, L_0xc5e850, L_0xc5e8f0, C4<0>, C4<0>;
v0x9ebab0_0 .net "A", 0 0, L_0xc5e850;  alias, 1 drivers
v0x9ebb70_0 .net "B", 0 0, L_0xc5e8f0;  alias, 1 drivers
v0x9ebc30_0 .net "out", 0 0, L_0xc5df10;  1 drivers
S_0x9f0f90 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc5f6a0 .functor BUFZ 1, L_0xc5ee40, C4<0>, C4<0>, C4<0>;
L_0xc5f730 .functor BUFZ 1, L_0xc5ee40, C4<0>, C4<0>, C4<0>;
v0x9f3620_0 .net "A", 0 0, L_0xc5fb70;  1 drivers
v0x9f36c0_0 .net "B", 0 0, L_0xc5e990;  1 drivers
v0x9f3780_0 .net "I", 7 0, L_0xc5f850;  1 drivers
v0x957cf0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0x957d90_0 .net *"_s15", 0 0, L_0xc5f6a0;  1 drivers
v0x957e50_0 .net *"_s19", 0 0, L_0xc5f730;  1 drivers
L_0x7f2ff0458690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x957f30_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458690;  1 drivers
v0x958010_0 .net "addORsub", 0 0, L_0xc5ee40;  1 drivers
v0x9b7720_0 .net "carryin", 0 0, L_0xc5ea30;  1 drivers
v0x9b7850_0 .net "carryout", 0 0, L_0x9abb80;  1 drivers
v0x9b7920_0 .net "modB", 0 0, L_0xc555e0;  1 drivers
v0x9b79c0_0 .net "out", 0 0, L_0xc5f540;  1 drivers
L_0xc55650 .part v0xb9e740_0, 0, 1;
LS_0xc5f850_0_0 .concat8 [ 1 1 1 1], L_0xc5f6a0, L_0xc5f730, L_0xc5f230, L_0x7f2ff0458690;
LS_0xc5f850_0_4 .concat8 [ 1 1 1 1], L_0x9c9430, L_0xc5f3b0, L_0xc5f420, L_0xc5f4b0;
L_0xc5f850 .concat8 [ 4 4 0 0], LS_0xc5f850_0_0, LS_0xc5f850_0_4;
S_0xa01090 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5ed40 .functor XOR 1, L_0xc5fb70, L_0xc555e0, C4<0>, C4<0>;
L_0xc5ee40 .functor XOR 1, L_0xc5ed40, L_0xc5ea30, C4<0>, C4<0>;
L_0xc5ef50 .functor AND 1, L_0xc5ed40, L_0xc5ea30, C4<1>, C4<1>;
L_0xc5efc0 .functor AND 1, L_0xc5fb70, L_0xc555e0, C4<1>, C4<1>;
L_0x9abb80 .functor OR 1, L_0xc5ef50, L_0xc5efc0, C4<0>, C4<0>;
v0xa012b0_0 .net "A", 0 0, L_0xc5fb70;  alias, 1 drivers
v0xa01390_0 .net "B", 0 0, L_0xc555e0;  alias, 1 drivers
v0x9f1200_0 .net "carryin", 0 0, L_0xc5ea30;  alias, 1 drivers
v0x9a95b0_0 .net "carryout", 0 0, L_0x9abb80;  alias, 1 drivers
v0x9a9670_0 .net "out1", 0 0, L_0xc5ed40;  1 drivers
v0x9a9780_0 .net "out2", 0 0, L_0xc5ef50;  1 drivers
v0x9a9840_0 .net "out3", 0 0, L_0xc5efc0;  1 drivers
v0x9a9900_0 .net "sum", 0 0, L_0xc5ee40;  alias, 1 drivers
S_0x991eb0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x9c9430 .functor AND 1, L_0xc5fb70, L_0xc5e990, C4<1>, C4<1>;
v0x9920d0_0 .net "A", 0 0, L_0xc5fb70;  alias, 1 drivers
v0x992190_0 .net "B", 0 0, L_0xc5e990;  alias, 1 drivers
v0x992230_0 .net "out", 0 0, L_0x9c9430;  1 drivers
S_0x9a5be0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x9a5e00_0 .net "I", 7 0, L_0xc5f850;  alias, 1 drivers
v0x9a5ee0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0x9e99e0_0 .net "out", 0 0, L_0xc5f540;  alias, 1 drivers
L_0xc5f540 .part/v L_0xc5f850, v0xb9e740_0, 1;
S_0x9e9b30 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5f3b0 .functor NAND 1, L_0xc5fb70, L_0xc5e990, C4<1>, C4<1>;
v0x9e9d50_0 .net "A", 0 0, L_0xc5fb70;  alias, 1 drivers
v0x9c5870_0 .net "B", 0 0, L_0xc5e990;  alias, 1 drivers
v0x9c5910_0 .net "out", 0 0, L_0xc5f3b0;  1 drivers
S_0x9c5a20 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5f420 .functor NOR 1, L_0xc5fb70, L_0xc5e990, C4<0>, C4<0>;
v0x9aa750_0 .net "A", 0 0, L_0xc5fb70;  alias, 1 drivers
v0x9aa810_0 .net "B", 0 0, L_0xc5e990;  alias, 1 drivers
v0x9aa920_0 .net "out", 0 0, L_0xc5f420;  1 drivers
S_0x9ab8a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5f4b0 .functor OR 1, L_0xc5fb70, L_0xc5e990, C4<0>, C4<0>;
v0x9abac0_0 .net "A", 0 0, L_0xc5fb70;  alias, 1 drivers
v0x9abc10_0 .net "B", 0 0, L_0xc5e990;  alias, 1 drivers
v0x9aaa20_0 .net "out", 0 0, L_0xc5f4b0;  1 drivers
S_0x9c91a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc555e0 .functor XOR 1, L_0xc5e990, L_0xc55650, C4<0>, C4<0>;
v0x9c9370_0 .net "A", 0 0, L_0xc5e990;  alias, 1 drivers
v0x9c94c0_0 .net "B", 0 0, L_0xc55650;  1 drivers
v0x9c7070_0 .net "out", 0 0, L_0xc555e0;  alias, 1 drivers
S_0x9c71b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x9f0f90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5f230 .functor XOR 1, L_0xc5fb70, L_0xc5e990, C4<0>, C4<0>;
v0x9c7380_0 .net "A", 0 0, L_0xc5fb70;  alias, 1 drivers
v0x9f3430_0 .net "B", 0 0, L_0xc5e990;  alias, 1 drivers
v0x9f34f0_0 .net "out", 0 0, L_0xc5f230;  1 drivers
S_0x9c1200 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc608e0 .functor BUFZ 1, L_0xc600a0, C4<0>, C4<0>, C4<0>;
L_0xc60970 .functor BUFZ 1, L_0xc600a0, C4<0>, C4<0>, C4<0>;
v0xbd29f0_0 .net "A", 0 0, L_0xc60db0;  1 drivers
v0xbd2a90_0 .net "B", 0 0, L_0xc60e50;  1 drivers
v0xbd2b50_0 .net "I", 7 0, L_0xc60a90;  1 drivers
v0xbd2c50_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbd2cf0_0 .net *"_s15", 0 0, L_0xc608e0;  1 drivers
v0xbd2e00_0 .net *"_s19", 0 0, L_0xc60970;  1 drivers
L_0x7f2ff04586d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbd2ee0_0 .net/2s *"_s23", 0 0, L_0x7f2ff04586d8;  1 drivers
v0xbd2fc0_0 .net "addORsub", 0 0, L_0xc600a0;  1 drivers
v0xbd3060_0 .net "carryin", 0 0, L_0xc5fe50;  1 drivers
v0xbd31c0_0 .net "carryout", 0 0, L_0xbd1e00;  1 drivers
v0xbd3290_0 .net "modB", 0 0, L_0xc5fc10;  1 drivers
v0xbd3330_0 .net "out", 0 0, L_0xc60780;  1 drivers
L_0xc5fc80 .part v0xb9e740_0, 0, 1;
LS_0xc60a90_0_0 .concat8 [ 1 1 1 1], L_0xc608e0, L_0xc60970, L_0xc60490, L_0x7f2ff04586d8;
LS_0xc60a90_0_4 .concat8 [ 1 1 1 1], L_0xbd22e0, L_0xc60610, L_0xc60680, L_0xc606f0;
L_0xc60a90 .concat8 [ 4 4 0 0], LS_0xc60a90_0_0, LS_0xc60a90_0_4;
S_0x9c1470 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5fd20 .functor XOR 1, L_0xc60db0, L_0xc5fc10, C4<0>, C4<0>;
L_0xc600a0 .functor XOR 1, L_0xc5fd20, L_0xc5fe50, C4<0>, C4<0>;
L_0xc601b0 .functor AND 1, L_0xc5fd20, L_0xc5fe50, C4<1>, C4<1>;
L_0xc60220 .functor AND 1, L_0xc60db0, L_0xc5fc10, C4<1>, C4<1>;
L_0xbd1e00 .functor OR 1, L_0xc601b0, L_0xc60220, C4<0>, C4<0>;
v0x9c2750_0 .net "A", 0 0, L_0xc60db0;  alias, 1 drivers
v0x9c2830_0 .net "B", 0 0, L_0xc5fc10;  alias, 1 drivers
v0x9c28f0_0 .net "carryin", 0 0, L_0xc5fe50;  alias, 1 drivers
v0x9c29c0_0 .net "carryout", 0 0, L_0xbd1e00;  alias, 1 drivers
v0x9c3ef0_0 .net "out1", 0 0, L_0xc5fd20;  1 drivers
v0x9c4000_0 .net "out2", 0 0, L_0xc601b0;  1 drivers
v0x9c40c0_0 .net "out3", 0 0, L_0xc60220;  1 drivers
v0x9c4180_0 .net "sum", 0 0, L_0xc600a0;  alias, 1 drivers
S_0x9f76b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbd22e0 .functor AND 1, L_0xc60db0, L_0xc60e50, C4<1>, C4<1>;
v0x9f7910_0 .net "A", 0 0, L_0xc60db0;  alias, 1 drivers
v0x9f79d0_0 .net "B", 0 0, L_0xc60e50;  alias, 1 drivers
v0x9d37b0_0 .net "out", 0 0, L_0xbd22e0;  1 drivers
S_0x9d38d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x9d3b20_0 .net "I", 7 0, L_0xc60a90;  alias, 1 drivers
v0xbd10b0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbd1150_0 .net "out", 0 0, L_0xc60780;  alias, 1 drivers
L_0xc60780 .part/v L_0xc60a90, v0xb9e740_0, 1;
S_0xbd11f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc60610 .functor NAND 1, L_0xc60db0, L_0xc60e50, C4<1>, C4<1>;
v0xbd1370_0 .net "A", 0 0, L_0xc60db0;  alias, 1 drivers
v0xbd1460_0 .net "B", 0 0, L_0xc60e50;  alias, 1 drivers
v0xbd1500_0 .net "out", 0 0, L_0xc60610;  1 drivers
S_0xbd15e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc60680 .functor NOR 1, L_0xc60db0, L_0xc60e50, C4<0>, C4<0>;
v0xbd1850_0 .net "A", 0 0, L_0xc60db0;  alias, 1 drivers
v0xbd1910_0 .net "B", 0 0, L_0xc60e50;  alias, 1 drivers
v0xbd1a20_0 .net "out", 0 0, L_0xc60680;  1 drivers
S_0xbd1b20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc606f0 .functor OR 1, L_0xc60db0, L_0xc60e50, C4<0>, C4<0>;
v0xbd1d40_0 .net "A", 0 0, L_0xc60db0;  alias, 1 drivers
v0xbd1e90_0 .net "B", 0 0, L_0xc60e50;  alias, 1 drivers
v0xbd1f50_0 .net "out", 0 0, L_0xc606f0;  1 drivers
S_0xbd2050 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5fc10 .functor XOR 1, L_0xc60e50, L_0xc5fc80, C4<0>, C4<0>;
v0xbd2220_0 .net "A", 0 0, L_0xc60e50;  alias, 1 drivers
v0xbd2370_0 .net "B", 0 0, L_0xc5fc80;  1 drivers
v0xbd2430_0 .net "out", 0 0, L_0xc5fc10;  alias, 1 drivers
S_0xbd2570 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x9c1200;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc60490 .functor XOR 1, L_0xc60db0, L_0xc60e50, C4<0>, C4<0>;
v0xbd2740_0 .net "A", 0 0, L_0xc60db0;  alias, 1 drivers
v0xbd2800_0 .net "B", 0 0, L_0xc60e50;  alias, 1 drivers
v0xbd28c0_0 .net "out", 0 0, L_0xc60490;  1 drivers
S_0xbd3410 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc61b00 .functor BUFZ 1, L_0xc61260, C4<0>, C4<0>, C4<0>;
L_0xc61b90 .functor BUFZ 1, L_0xc61260, C4<0>, C4<0>, C4<0>;
v0xbd6380_0 .net "A", 0 0, L_0xc61fd0;  1 drivers
v0xbd6420_0 .net "B", 0 0, L_0xc60ef0;  1 drivers
v0xbd64e0_0 .net "I", 7 0, L_0xc61cb0;  1 drivers
v0xbd65e0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbd6680_0 .net *"_s15", 0 0, L_0xc61b00;  1 drivers
v0xbd6790_0 .net *"_s19", 0 0, L_0xc61b90;  1 drivers
L_0x7f2ff0458720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbd6870_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458720;  1 drivers
v0xbd6950_0 .net "addORsub", 0 0, L_0xc61260;  1 drivers
v0xbd69f0_0 .net "carryin", 0 0, L_0xc60f90;  1 drivers
v0xbd6b50_0 .net "carryout", 0 0, L_0xbd5790;  1 drivers
v0xbd6c20_0 .net "modB", 0 0, L_0xc5ff80;  1 drivers
v0xbd6cc0_0 .net "out", 0 0, L_0xc619a0;  1 drivers
L_0xc610c0 .part v0xb9e740_0, 0, 1;
LS_0xc61cb0_0_0 .concat8 [ 1 1 1 1], L_0xc61b00, L_0xc61b90, L_0xc61690, L_0x7f2ff0458720;
LS_0xc61cb0_0_4 .concat8 [ 1 1 1 1], L_0xbd5c70, L_0xc61810, L_0xc61880, L_0xc61910;
L_0xc61cb0 .concat8 [ 4 4 0 0], LS_0xc61cb0_0_0, LS_0xc61cb0_0_4;
S_0xbd3680 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc61160 .functor XOR 1, L_0xc61fd0, L_0xc5ff80, C4<0>, C4<0>;
L_0xc61260 .functor XOR 1, L_0xc61160, L_0xc60f90, C4<0>, C4<0>;
L_0xc61390 .functor AND 1, L_0xc61160, L_0xc60f90, C4<1>, C4<1>;
L_0xc61420 .functor AND 1, L_0xc61fd0, L_0xc5ff80, C4<1>, C4<1>;
L_0xbd5790 .functor OR 1, L_0xc61390, L_0xc61420, C4<0>, C4<0>;
v0xbd3920_0 .net "A", 0 0, L_0xc61fd0;  alias, 1 drivers
v0xbd3a00_0 .net "B", 0 0, L_0xc5ff80;  alias, 1 drivers
v0xbd3ac0_0 .net "carryin", 0 0, L_0xc60f90;  alias, 1 drivers
v0xbd3b90_0 .net "carryout", 0 0, L_0xbd5790;  alias, 1 drivers
v0xbd3c50_0 .net "out1", 0 0, L_0xc61160;  1 drivers
v0xbd3d60_0 .net "out2", 0 0, L_0xc61390;  1 drivers
v0xbd3e20_0 .net "out3", 0 0, L_0xc61420;  1 drivers
v0xbd3ee0_0 .net "sum", 0 0, L_0xc61260;  alias, 1 drivers
S_0xbd4040 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbd5c70 .functor AND 1, L_0xc61fd0, L_0xc60ef0, C4<1>, C4<1>;
v0xbd4280_0 .net "A", 0 0, L_0xc61fd0;  alias, 1 drivers
v0xbd4340_0 .net "B", 0 0, L_0xc60ef0;  alias, 1 drivers
v0xbd43e0_0 .net "out", 0 0, L_0xbd5c70;  1 drivers
S_0xbd4530 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbd4780_0 .net "I", 7 0, L_0xc61cb0;  alias, 1 drivers
v0xbd4860_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbd4920_0 .net "out", 0 0, L_0xc619a0;  alias, 1 drivers
L_0xc619a0 .part/v L_0xc61cb0, v0xb9e740_0, 1;
S_0xbd4a70 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc61810 .functor NAND 1, L_0xc61fd0, L_0xc60ef0, C4<1>, C4<1>;
v0xbd4c90_0 .net "A", 0 0, L_0xc61fd0;  alias, 1 drivers
v0xbd4da0_0 .net "B", 0 0, L_0xc60ef0;  alias, 1 drivers
v0xbd4e60_0 .net "out", 0 0, L_0xc61810;  1 drivers
S_0xbd4f70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc61880 .functor NOR 1, L_0xc61fd0, L_0xc60ef0, C4<0>, C4<0>;
v0xbd51e0_0 .net "A", 0 0, L_0xc61fd0;  alias, 1 drivers
v0xbd52a0_0 .net "B", 0 0, L_0xc60ef0;  alias, 1 drivers
v0xbd53b0_0 .net "out", 0 0, L_0xc61880;  1 drivers
S_0xbd54b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc61910 .functor OR 1, L_0xc61fd0, L_0xc60ef0, C4<0>, C4<0>;
v0xbd56d0_0 .net "A", 0 0, L_0xc61fd0;  alias, 1 drivers
v0xbd5820_0 .net "B", 0 0, L_0xc60ef0;  alias, 1 drivers
v0xbd58e0_0 .net "out", 0 0, L_0xc61910;  1 drivers
S_0xbd59e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5ff80 .functor XOR 1, L_0xc60ef0, L_0xc610c0, C4<0>, C4<0>;
v0xbd5bb0_0 .net "A", 0 0, L_0xc60ef0;  alias, 1 drivers
v0xbd5d00_0 .net "B", 0 0, L_0xc610c0;  1 drivers
v0xbd5dc0_0 .net "out", 0 0, L_0xc5ff80;  alias, 1 drivers
S_0xbd5f00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbd3410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc61690 .functor XOR 1, L_0xc61fd0, L_0xc60ef0, C4<0>, C4<0>;
v0xbd60d0_0 .net "A", 0 0, L_0xc61fd0;  alias, 1 drivers
v0xbd6190_0 .net "B", 0 0, L_0xc60ef0;  alias, 1 drivers
v0xbd6250_0 .net "out", 0 0, L_0xc61690;  1 drivers
S_0xbd6de0 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc484e0 .functor BUFZ 1, L_0xc4d8c0, C4<0>, C4<0>, C4<0>;
L_0xc4e030 .functor BUFZ 1, L_0xc4d8c0, C4<0>, C4<0>, C4<0>;
v0xbd9d50_0 .net "A", 0 0, L_0xc4e4e0;  1 drivers
v0xbd9df0_0 .net "B", 0 0, L_0xc4e580;  1 drivers
v0xbd9eb0_0 .net "I", 7 0, L_0xc4e130;  1 drivers
v0xbd9fb0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbda050_0 .net *"_s15", 0 0, L_0xc484e0;  1 drivers
v0xbda160_0 .net *"_s19", 0 0, L_0xc4e030;  1 drivers
L_0x7f2ff0458258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbda240_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458258;  1 drivers
v0xbda320_0 .net "addORsub", 0 0, L_0xc4d8c0;  1 drivers
v0xbda3c0_0 .net "carryin", 0 0, L_0xc4e620;  1 drivers
v0xbda520_0 .net "carryout", 0 0, L_0xbd9160;  1 drivers
v0xbda5f0_0 .net "modB", 0 0, L_0xc4d6b0;  1 drivers
v0xbda690_0 .net "out", 0 0, L_0xc4df90;  1 drivers
L_0xc4d720 .part v0xb9e740_0, 0, 1;
LS_0xc4e130_0_0 .concat8 [ 1 1 1 1], L_0xc484e0, L_0xc4e030, L_0xc4dc80, L_0x7f2ff0458258;
LS_0xc4e130_0_4 .concat8 [ 1 1 1 1], L_0xbd9640, L_0xc4de00, L_0xc4de70, L_0xc4df00;
L_0xc4e130 .concat8 [ 4 4 0 0], LS_0xc4e130_0_0, LS_0xc4e130_0_4;
S_0xbd7050 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc4d7c0 .functor XOR 1, L_0xc4e4e0, L_0xc4d6b0, C4<0>, C4<0>;
L_0xc4d8c0 .functor XOR 1, L_0xc4d7c0, L_0xc4e620, C4<0>, C4<0>;
L_0xc4d980 .functor AND 1, L_0xc4d7c0, L_0xc4e620, C4<1>, C4<1>;
L_0xc4da10 .functor AND 1, L_0xc4e4e0, L_0xc4d6b0, C4<1>, C4<1>;
L_0xbd9160 .functor OR 1, L_0xc4d980, L_0xc4da10, C4<0>, C4<0>;
v0xbd72f0_0 .net "A", 0 0, L_0xc4e4e0;  alias, 1 drivers
v0xbd73d0_0 .net "B", 0 0, L_0xc4d6b0;  alias, 1 drivers
v0xbd7490_0 .net "carryin", 0 0, L_0xc4e620;  alias, 1 drivers
v0xbd7560_0 .net "carryout", 0 0, L_0xbd9160;  alias, 1 drivers
v0xbd7620_0 .net "out1", 0 0, L_0xc4d7c0;  1 drivers
v0xbd7730_0 .net "out2", 0 0, L_0xc4d980;  1 drivers
v0xbd77f0_0 .net "out3", 0 0, L_0xc4da10;  1 drivers
v0xbd78b0_0 .net "sum", 0 0, L_0xc4d8c0;  alias, 1 drivers
S_0xbd7a10 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbd9640 .functor AND 1, L_0xc4e4e0, L_0xc4e580, C4<1>, C4<1>;
v0xbd7c50_0 .net "A", 0 0, L_0xc4e4e0;  alias, 1 drivers
v0xbd7d10_0 .net "B", 0 0, L_0xc4e580;  alias, 1 drivers
v0xbd7db0_0 .net "out", 0 0, L_0xbd9640;  1 drivers
S_0xbd7f00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbd8150_0 .net "I", 7 0, L_0xc4e130;  alias, 1 drivers
v0xbd8230_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbd82f0_0 .net "out", 0 0, L_0xc4df90;  alias, 1 drivers
L_0xc4df90 .part/v L_0xc4e130, v0xb9e740_0, 1;
S_0xbd8440 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4de00 .functor NAND 1, L_0xc4e4e0, L_0xc4e580, C4<1>, C4<1>;
v0xbd8660_0 .net "A", 0 0, L_0xc4e4e0;  alias, 1 drivers
v0xbd8770_0 .net "B", 0 0, L_0xc4e580;  alias, 1 drivers
v0xbd8830_0 .net "out", 0 0, L_0xc4de00;  1 drivers
S_0xbd8940 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4de70 .functor NOR 1, L_0xc4e4e0, L_0xc4e580, C4<0>, C4<0>;
v0xbd8bb0_0 .net "A", 0 0, L_0xc4e4e0;  alias, 1 drivers
v0xbd8c70_0 .net "B", 0 0, L_0xc4e580;  alias, 1 drivers
v0xbd8d80_0 .net "out", 0 0, L_0xc4de70;  1 drivers
S_0xbd8e80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4df00 .functor OR 1, L_0xc4e4e0, L_0xc4e580, C4<0>, C4<0>;
v0xbd90a0_0 .net "A", 0 0, L_0xc4e4e0;  alias, 1 drivers
v0xbd91f0_0 .net "B", 0 0, L_0xc4e580;  alias, 1 drivers
v0xbd92b0_0 .net "out", 0 0, L_0xc4df00;  1 drivers
S_0xbd93b0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4d6b0 .functor XOR 1, L_0xc4e580, L_0xc4d720, C4<0>, C4<0>;
v0xbd9580_0 .net "A", 0 0, L_0xc4e580;  alias, 1 drivers
v0xbd96d0_0 .net "B", 0 0, L_0xc4d720;  1 drivers
v0xbd9790_0 .net "out", 0 0, L_0xc4d6b0;  alias, 1 drivers
S_0xbd98d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbd6de0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4dc80 .functor XOR 1, L_0xc4e4e0, L_0xc4e580, C4<0>, C4<0>;
v0xbd9aa0_0 .net "A", 0 0, L_0xc4e4e0;  alias, 1 drivers
v0xbd9b60_0 .net "B", 0 0, L_0xc4e580;  alias, 1 drivers
v0xbd9c20_0 .net "out", 0 0, L_0xc4dc80;  1 drivers
S_0xbda7b0 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc62d30 .functor BUFZ 1, L_0xc62490, C4<0>, C4<0>, C4<0>;
L_0xc62dc0 .functor BUFZ 1, L_0xc62490, C4<0>, C4<0>, C4<0>;
v0xbdd720_0 .net "A", 0 0, L_0xc63200;  1 drivers
v0xbdd7c0_0 .net "B", 0 0, L_0xc632a0;  1 drivers
v0xbdd880_0 .net "I", 7 0, L_0xc62ee0;  1 drivers
v0xbdd980_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbdda20_0 .net *"_s15", 0 0, L_0xc62d30;  1 drivers
v0xbddb30_0 .net *"_s19", 0 0, L_0xc62dc0;  1 drivers
L_0x7f2ff0458768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbddc10_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458768;  1 drivers
v0xbddcf0_0 .net "addORsub", 0 0, L_0xc62490;  1 drivers
v0xbddd90_0 .net "carryin", 0 0, L_0xc62070;  1 drivers
v0xbddef0_0 .net "carryout", 0 0, L_0xbdcb30;  1 drivers
v0xbddfc0_0 .net "modB", 0 0, L_0xc62260;  1 drivers
v0xbde060_0 .net "out", 0 0, L_0xc62bd0;  1 drivers
L_0xc622d0 .part v0xb9e740_0, 0, 1;
LS_0xc62ee0_0_0 .concat8 [ 1 1 1 1], L_0xc62d30, L_0xc62dc0, L_0xc628c0, L_0x7f2ff0458768;
LS_0xc62ee0_0_4 .concat8 [ 1 1 1 1], L_0xbdd010, L_0xc62a40, L_0xc62ab0, L_0xc62b40;
L_0xc62ee0 .concat8 [ 4 4 0 0], LS_0xc62ee0_0_0, LS_0xc62ee0_0_4;
S_0xbdaa20 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc62370 .functor XOR 1, L_0xc63200, L_0xc62260, C4<0>, C4<0>;
L_0xc62490 .functor XOR 1, L_0xc62370, L_0xc62070, C4<0>, C4<0>;
L_0xc625c0 .functor AND 1, L_0xc62370, L_0xc62070, C4<1>, C4<1>;
L_0xc62650 .functor AND 1, L_0xc63200, L_0xc62260, C4<1>, C4<1>;
L_0xbdcb30 .functor OR 1, L_0xc625c0, L_0xc62650, C4<0>, C4<0>;
v0xbdacc0_0 .net "A", 0 0, L_0xc63200;  alias, 1 drivers
v0xbdada0_0 .net "B", 0 0, L_0xc62260;  alias, 1 drivers
v0xbdae60_0 .net "carryin", 0 0, L_0xc62070;  alias, 1 drivers
v0xbdaf30_0 .net "carryout", 0 0, L_0xbdcb30;  alias, 1 drivers
v0xbdaff0_0 .net "out1", 0 0, L_0xc62370;  1 drivers
v0xbdb100_0 .net "out2", 0 0, L_0xc625c0;  1 drivers
v0xbdb1c0_0 .net "out3", 0 0, L_0xc62650;  1 drivers
v0xbdb280_0 .net "sum", 0 0, L_0xc62490;  alias, 1 drivers
S_0xbdb3e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbdd010 .functor AND 1, L_0xc63200, L_0xc632a0, C4<1>, C4<1>;
v0xbdb620_0 .net "A", 0 0, L_0xc63200;  alias, 1 drivers
v0xbdb6e0_0 .net "B", 0 0, L_0xc632a0;  alias, 1 drivers
v0xbdb780_0 .net "out", 0 0, L_0xbdd010;  1 drivers
S_0xbdb8d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbdbb20_0 .net "I", 7 0, L_0xc62ee0;  alias, 1 drivers
v0xbdbc00_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbdbcc0_0 .net "out", 0 0, L_0xc62bd0;  alias, 1 drivers
L_0xc62bd0 .part/v L_0xc62ee0, v0xb9e740_0, 1;
S_0xbdbe10 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc62a40 .functor NAND 1, L_0xc63200, L_0xc632a0, C4<1>, C4<1>;
v0xbdc030_0 .net "A", 0 0, L_0xc63200;  alias, 1 drivers
v0xbdc140_0 .net "B", 0 0, L_0xc632a0;  alias, 1 drivers
v0xbdc200_0 .net "out", 0 0, L_0xc62a40;  1 drivers
S_0xbdc310 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc62ab0 .functor NOR 1, L_0xc63200, L_0xc632a0, C4<0>, C4<0>;
v0xbdc580_0 .net "A", 0 0, L_0xc63200;  alias, 1 drivers
v0xbdc640_0 .net "B", 0 0, L_0xc632a0;  alias, 1 drivers
v0xbdc750_0 .net "out", 0 0, L_0xc62ab0;  1 drivers
S_0xbdc850 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc62b40 .functor OR 1, L_0xc63200, L_0xc632a0, C4<0>, C4<0>;
v0xbdca70_0 .net "A", 0 0, L_0xc63200;  alias, 1 drivers
v0xbdcbc0_0 .net "B", 0 0, L_0xc632a0;  alias, 1 drivers
v0xbdcc80_0 .net "out", 0 0, L_0xc62b40;  1 drivers
S_0xbdcd80 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc62260 .functor XOR 1, L_0xc632a0, L_0xc622d0, C4<0>, C4<0>;
v0xbdcf50_0 .net "A", 0 0, L_0xc632a0;  alias, 1 drivers
v0xbdd0a0_0 .net "B", 0 0, L_0xc622d0;  1 drivers
v0xbdd160_0 .net "out", 0 0, L_0xc62260;  alias, 1 drivers
S_0xbdd2a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbda7b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc628c0 .functor XOR 1, L_0xc63200, L_0xc632a0, C4<0>, C4<0>;
v0xbdd470_0 .net "A", 0 0, L_0xc63200;  alias, 1 drivers
v0xbdd530_0 .net "B", 0 0, L_0xc632a0;  alias, 1 drivers
v0xbdd5f0_0 .net "out", 0 0, L_0xc628c0;  1 drivers
S_0xbde180 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc63f60 .functor BUFZ 1, L_0xc636e0, C4<0>, C4<0>, C4<0>;
L_0xc63ff0 .functor BUFZ 1, L_0xc636e0, C4<0>, C4<0>, C4<0>;
v0xbe10f0_0 .net "A", 0 0, L_0xc64430;  1 drivers
v0xbe1190_0 .net "B", 0 0, L_0xc63340;  1 drivers
v0xbe1250_0 .net "I", 7 0, L_0xc64110;  1 drivers
v0xbe1350_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbe13f0_0 .net *"_s15", 0 0, L_0xc63f60;  1 drivers
v0xbe1500_0 .net *"_s19", 0 0, L_0xc63ff0;  1 drivers
L_0x7f2ff04587b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbe15e0_0 .net/2s *"_s23", 0 0, L_0x7f2ff04587b0;  1 drivers
v0xbe16c0_0 .net "addORsub", 0 0, L_0xc636e0;  1 drivers
v0xbe1760_0 .net "carryin", 0 0, L_0xc633e0;  1 drivers
v0xbe18c0_0 .net "carryout", 0 0, L_0xbe0500;  1 drivers
v0xbe1990_0 .net "modB", 0 0, L_0xc621a0;  1 drivers
v0xbe1a30_0 .net "out", 0 0, L_0xc63e00;  1 drivers
L_0xc63540 .part v0xb9e740_0, 0, 1;
LS_0xc64110_0_0 .concat8 [ 1 1 1 1], L_0xc63f60, L_0xc63ff0, L_0xc63af0, L_0x7f2ff04587b0;
LS_0xc64110_0_4 .concat8 [ 1 1 1 1], L_0xbe09e0, L_0xc63c70, L_0xc63ce0, L_0xc63d70;
L_0xc64110 .concat8 [ 4 4 0 0], LS_0xc64110_0_0, LS_0xc64110_0_4;
S_0xbde3f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc635e0 .functor XOR 1, L_0xc64430, L_0xc621a0, C4<0>, C4<0>;
L_0xc636e0 .functor XOR 1, L_0xc635e0, L_0xc633e0, C4<0>, C4<0>;
L_0xc637f0 .functor AND 1, L_0xc635e0, L_0xc633e0, C4<1>, C4<1>;
L_0xc63880 .functor AND 1, L_0xc64430, L_0xc621a0, C4<1>, C4<1>;
L_0xbe0500 .functor OR 1, L_0xc637f0, L_0xc63880, C4<0>, C4<0>;
v0xbde690_0 .net "A", 0 0, L_0xc64430;  alias, 1 drivers
v0xbde770_0 .net "B", 0 0, L_0xc621a0;  alias, 1 drivers
v0xbde830_0 .net "carryin", 0 0, L_0xc633e0;  alias, 1 drivers
v0xbde900_0 .net "carryout", 0 0, L_0xbe0500;  alias, 1 drivers
v0xbde9c0_0 .net "out1", 0 0, L_0xc635e0;  1 drivers
v0xbdead0_0 .net "out2", 0 0, L_0xc637f0;  1 drivers
v0xbdeb90_0 .net "out3", 0 0, L_0xc63880;  1 drivers
v0xbdec50_0 .net "sum", 0 0, L_0xc636e0;  alias, 1 drivers
S_0xbdedb0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbe09e0 .functor AND 1, L_0xc64430, L_0xc63340, C4<1>, C4<1>;
v0xbdeff0_0 .net "A", 0 0, L_0xc64430;  alias, 1 drivers
v0xbdf0b0_0 .net "B", 0 0, L_0xc63340;  alias, 1 drivers
v0xbdf150_0 .net "out", 0 0, L_0xbe09e0;  1 drivers
S_0xbdf2a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbdf4f0_0 .net "I", 7 0, L_0xc64110;  alias, 1 drivers
v0xbdf5d0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbdf690_0 .net "out", 0 0, L_0xc63e00;  alias, 1 drivers
L_0xc63e00 .part/v L_0xc64110, v0xb9e740_0, 1;
S_0xbdf7e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc63c70 .functor NAND 1, L_0xc64430, L_0xc63340, C4<1>, C4<1>;
v0xbdfa00_0 .net "A", 0 0, L_0xc64430;  alias, 1 drivers
v0xbdfb10_0 .net "B", 0 0, L_0xc63340;  alias, 1 drivers
v0xbdfbd0_0 .net "out", 0 0, L_0xc63c70;  1 drivers
S_0xbdfce0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc63ce0 .functor NOR 1, L_0xc64430, L_0xc63340, C4<0>, C4<0>;
v0xbdff50_0 .net "A", 0 0, L_0xc64430;  alias, 1 drivers
v0xbe0010_0 .net "B", 0 0, L_0xc63340;  alias, 1 drivers
v0xbe0120_0 .net "out", 0 0, L_0xc63ce0;  1 drivers
S_0xbe0220 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc63d70 .functor OR 1, L_0xc64430, L_0xc63340, C4<0>, C4<0>;
v0xbe0440_0 .net "A", 0 0, L_0xc64430;  alias, 1 drivers
v0xbe0590_0 .net "B", 0 0, L_0xc63340;  alias, 1 drivers
v0xbe0650_0 .net "out", 0 0, L_0xc63d70;  1 drivers
S_0xbe0750 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc621a0 .functor XOR 1, L_0xc63340, L_0xc63540, C4<0>, C4<0>;
v0xbe0920_0 .net "A", 0 0, L_0xc63340;  alias, 1 drivers
v0xbe0a70_0 .net "B", 0 0, L_0xc63540;  1 drivers
v0xbe0b30_0 .net "out", 0 0, L_0xc621a0;  alias, 1 drivers
S_0xbe0c70 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbde180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc63af0 .functor XOR 1, L_0xc64430, L_0xc63340, C4<0>, C4<0>;
v0xbe0e40_0 .net "A", 0 0, L_0xc64430;  alias, 1 drivers
v0xbe0f00_0 .net "B", 0 0, L_0xc63340;  alias, 1 drivers
v0xbe0fc0_0 .net "out", 0 0, L_0xc63af0;  1 drivers
S_0xbe1b50 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc651a0 .functor BUFZ 1, L_0xc64900, C4<0>, C4<0>, C4<0>;
L_0xc65230 .functor BUFZ 1, L_0xc64900, C4<0>, C4<0>, C4<0>;
v0xbe4ac0_0 .net "A", 0 0, L_0xc65670;  1 drivers
v0xbe4b60_0 .net "B", 0 0, L_0xc65710;  1 drivers
v0xbe4c20_0 .net "I", 7 0, L_0xc65350;  1 drivers
v0xbe4d20_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbb8a60_0 .net *"_s15", 0 0, L_0xc651a0;  1 drivers
v0xbb8b70_0 .net *"_s19", 0 0, L_0xc65230;  1 drivers
L_0x7f2ff04587f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbe51d0_0 .net/2s *"_s23", 0 0, L_0x7f2ff04587f8;  1 drivers
v0xbe5270_0 .net "addORsub", 0 0, L_0xc64900;  1 drivers
v0xbe5310_0 .net "carryin", 0 0, L_0xc644d0;  1 drivers
v0xbe5440_0 .net "carryout", 0 0, L_0xbe3ed0;  1 drivers
v0xbe54e0_0 .net "modB", 0 0, L_0xc646f0;  1 drivers
v0xbe5580_0 .net "out", 0 0, L_0xc65040;  1 drivers
L_0xc64760 .part v0xb9e740_0, 0, 1;
LS_0xc65350_0_0 .concat8 [ 1 1 1 1], L_0xc651a0, L_0xc65230, L_0xc64d30, L_0x7f2ff04587f8;
LS_0xc65350_0_4 .concat8 [ 1 1 1 1], L_0xbe43b0, L_0xc64eb0, L_0xc64f20, L_0xc64fb0;
L_0xc65350 .concat8 [ 4 4 0 0], LS_0xc65350_0_0, LS_0xc65350_0_4;
S_0xbe1dc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc64800 .functor XOR 1, L_0xc65670, L_0xc646f0, C4<0>, C4<0>;
L_0xc64900 .functor XOR 1, L_0xc64800, L_0xc644d0, C4<0>, C4<0>;
L_0xc64a30 .functor AND 1, L_0xc64800, L_0xc644d0, C4<1>, C4<1>;
L_0xc64ac0 .functor AND 1, L_0xc65670, L_0xc646f0, C4<1>, C4<1>;
L_0xbe3ed0 .functor OR 1, L_0xc64a30, L_0xc64ac0, C4<0>, C4<0>;
v0xbe2060_0 .net "A", 0 0, L_0xc65670;  alias, 1 drivers
v0xbe2140_0 .net "B", 0 0, L_0xc646f0;  alias, 1 drivers
v0xbe2200_0 .net "carryin", 0 0, L_0xc644d0;  alias, 1 drivers
v0xbe22d0_0 .net "carryout", 0 0, L_0xbe3ed0;  alias, 1 drivers
v0xbe2390_0 .net "out1", 0 0, L_0xc64800;  1 drivers
v0xbe24a0_0 .net "out2", 0 0, L_0xc64a30;  1 drivers
v0xbe2560_0 .net "out3", 0 0, L_0xc64ac0;  1 drivers
v0xbe2620_0 .net "sum", 0 0, L_0xc64900;  alias, 1 drivers
S_0xbe2780 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbe43b0 .functor AND 1, L_0xc65670, L_0xc65710, C4<1>, C4<1>;
v0xbe29c0_0 .net "A", 0 0, L_0xc65670;  alias, 1 drivers
v0xbe2a80_0 .net "B", 0 0, L_0xc65710;  alias, 1 drivers
v0xbe2b20_0 .net "out", 0 0, L_0xbe43b0;  1 drivers
S_0xbe2c70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbe2ec0_0 .net "I", 7 0, L_0xc65350;  alias, 1 drivers
v0xbe2fa0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbe3060_0 .net "out", 0 0, L_0xc65040;  alias, 1 drivers
L_0xc65040 .part/v L_0xc65350, v0xb9e740_0, 1;
S_0xbe31b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc64eb0 .functor NAND 1, L_0xc65670, L_0xc65710, C4<1>, C4<1>;
v0xbe33d0_0 .net "A", 0 0, L_0xc65670;  alias, 1 drivers
v0xbe34e0_0 .net "B", 0 0, L_0xc65710;  alias, 1 drivers
v0xbe35a0_0 .net "out", 0 0, L_0xc64eb0;  1 drivers
S_0xbe36b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc64f20 .functor NOR 1, L_0xc65670, L_0xc65710, C4<0>, C4<0>;
v0xbe3920_0 .net "A", 0 0, L_0xc65670;  alias, 1 drivers
v0xbe39e0_0 .net "B", 0 0, L_0xc65710;  alias, 1 drivers
v0xbe3af0_0 .net "out", 0 0, L_0xc64f20;  1 drivers
S_0xbe3bf0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc64fb0 .functor OR 1, L_0xc65670, L_0xc65710, C4<0>, C4<0>;
v0xbe3e10_0 .net "A", 0 0, L_0xc65670;  alias, 1 drivers
v0xbe3f60_0 .net "B", 0 0, L_0xc65710;  alias, 1 drivers
v0xbe4020_0 .net "out", 0 0, L_0xc64fb0;  1 drivers
S_0xbe4120 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc646f0 .functor XOR 1, L_0xc65710, L_0xc64760, C4<0>, C4<0>;
v0xbe42f0_0 .net "A", 0 0, L_0xc65710;  alias, 1 drivers
v0xbe4440_0 .net "B", 0 0, L_0xc64760;  1 drivers
v0xbe4500_0 .net "out", 0 0, L_0xc646f0;  alias, 1 drivers
S_0xbe4640 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbe1b50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc64d30 .functor XOR 1, L_0xc65670, L_0xc65710, C4<0>, C4<0>;
v0xbe4810_0 .net "A", 0 0, L_0xc65670;  alias, 1 drivers
v0xbe48d0_0 .net "B", 0 0, L_0xc65710;  alias, 1 drivers
v0xbe4990_0 .net "out", 0 0, L_0xc64d30;  1 drivers
S_0xbe5680 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc663d0 .functor BUFZ 1, L_0xc65b30, C4<0>, C4<0>, C4<0>;
L_0xc66460 .functor BUFZ 1, L_0xc65b30, C4<0>, C4<0>, C4<0>;
v0xbe8670_0 .net "A", 0 0, L_0xc668a0;  1 drivers
v0xbe8710_0 .net "B", 0 0, L_0xc657b0;  1 drivers
v0xbe87d0_0 .net "I", 7 0, L_0xc66580;  1 drivers
v0xbe88d0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbe8970_0 .net *"_s15", 0 0, L_0xc663d0;  1 drivers
v0xbe8a80_0 .net *"_s19", 0 0, L_0xc66460;  1 drivers
L_0x7f2ff0458840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbe8b60_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458840;  1 drivers
v0xbe8c40_0 .net "addORsub", 0 0, L_0xc65b30;  1 drivers
v0xbe8ce0_0 .net "carryin", 0 0, L_0xc65850;  1 drivers
v0xbe8e40_0 .net "carryout", 0 0, L_0xbe7a80;  1 drivers
v0xbe8f10_0 .net "modB", 0 0, L_0xc64600;  1 drivers
v0xbe8fb0_0 .net "out", 0 0, L_0xc66270;  1 drivers
L_0xc659e0 .part v0xb9e740_0, 0, 1;
LS_0xc66580_0_0 .concat8 [ 1 1 1 1], L_0xc663d0, L_0xc66460, L_0xc65f60, L_0x7f2ff0458840;
LS_0xc66580_0_4 .concat8 [ 1 1 1 1], L_0xbe7f60, L_0xc660e0, L_0xc66150, L_0xc661e0;
L_0xc66580 .concat8 [ 4 4 0 0], LS_0xc66580_0_0, LS_0xc66580_0_4;
S_0xbe5a00 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc64670 .functor XOR 1, L_0xc668a0, L_0xc64600, C4<0>, C4<0>;
L_0xc65b30 .functor XOR 1, L_0xc64670, L_0xc65850, C4<0>, C4<0>;
L_0xc65c60 .functor AND 1, L_0xc64670, L_0xc65850, C4<1>, C4<1>;
L_0xc65cf0 .functor AND 1, L_0xc668a0, L_0xc64600, C4<1>, C4<1>;
L_0xbe7a80 .functor OR 1, L_0xc65c60, L_0xc65cf0, C4<0>, C4<0>;
v0xbe5c30_0 .net "A", 0 0, L_0xc668a0;  alias, 1 drivers
v0xbe5cf0_0 .net "B", 0 0, L_0xc64600;  alias, 1 drivers
v0xbe5db0_0 .net "carryin", 0 0, L_0xc65850;  alias, 1 drivers
v0xbe5e80_0 .net "carryout", 0 0, L_0xbe7a80;  alias, 1 drivers
v0xbe5f40_0 .net "out1", 0 0, L_0xc64670;  1 drivers
v0xbe6050_0 .net "out2", 0 0, L_0xc65c60;  1 drivers
v0xbe6110_0 .net "out3", 0 0, L_0xc65cf0;  1 drivers
v0xbe61d0_0 .net "sum", 0 0, L_0xc65b30;  alias, 1 drivers
S_0xbe6330 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbe7f60 .functor AND 1, L_0xc668a0, L_0xc657b0, C4<1>, C4<1>;
v0xbe6570_0 .net "A", 0 0, L_0xc668a0;  alias, 1 drivers
v0xbe6630_0 .net "B", 0 0, L_0xc657b0;  alias, 1 drivers
v0xbe66d0_0 .net "out", 0 0, L_0xbe7f60;  1 drivers
S_0xbe6820 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbe6a70_0 .net "I", 7 0, L_0xc66580;  alias, 1 drivers
v0xbe6b50_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbe6c10_0 .net "out", 0 0, L_0xc66270;  alias, 1 drivers
L_0xc66270 .part/v L_0xc66580, v0xb9e740_0, 1;
S_0xbe6d60 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc660e0 .functor NAND 1, L_0xc668a0, L_0xc657b0, C4<1>, C4<1>;
v0xbe6f80_0 .net "A", 0 0, L_0xc668a0;  alias, 1 drivers
v0xbe7090_0 .net "B", 0 0, L_0xc657b0;  alias, 1 drivers
v0xbe7150_0 .net "out", 0 0, L_0xc660e0;  1 drivers
S_0xbe7260 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc66150 .functor NOR 1, L_0xc668a0, L_0xc657b0, C4<0>, C4<0>;
v0xbe74d0_0 .net "A", 0 0, L_0xc668a0;  alias, 1 drivers
v0xbe7590_0 .net "B", 0 0, L_0xc657b0;  alias, 1 drivers
v0xbe76a0_0 .net "out", 0 0, L_0xc66150;  1 drivers
S_0xbe77a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc661e0 .functor OR 1, L_0xc668a0, L_0xc657b0, C4<0>, C4<0>;
v0xbe79c0_0 .net "A", 0 0, L_0xc668a0;  alias, 1 drivers
v0xbe7b10_0 .net "B", 0 0, L_0xc657b0;  alias, 1 drivers
v0xbe7bd0_0 .net "out", 0 0, L_0xc661e0;  1 drivers
S_0xbe7cd0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc64600 .functor XOR 1, L_0xc657b0, L_0xc659e0, C4<0>, C4<0>;
v0xbe7ea0_0 .net "A", 0 0, L_0xc657b0;  alias, 1 drivers
v0xbe7ff0_0 .net "B", 0 0, L_0xc659e0;  1 drivers
v0xbe80b0_0 .net "out", 0 0, L_0xc64600;  alias, 1 drivers
S_0xbe81f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbe5680;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc65f60 .functor XOR 1, L_0xc668a0, L_0xc657b0, C4<0>, C4<0>;
v0xbe83c0_0 .net "A", 0 0, L_0xc668a0;  alias, 1 drivers
v0xbe8480_0 .net "B", 0 0, L_0xc657b0;  alias, 1 drivers
v0xbe8540_0 .net "out", 0 0, L_0xc65f60;  1 drivers
S_0xbe90d0 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc67600 .functor BUFZ 1, L_0xc66da0, C4<0>, C4<0>, C4<0>;
L_0xc67690 .functor BUFZ 1, L_0xc66da0, C4<0>, C4<0>, C4<0>;
v0xbec040_0 .net "A", 0 0, L_0xc67ad0;  1 drivers
v0xbec0e0_0 .net "B", 0 0, L_0xc67b70;  1 drivers
v0xbec1a0_0 .net "I", 7 0, L_0xc677b0;  1 drivers
v0xbec2a0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbec340_0 .net *"_s15", 0 0, L_0xc67600;  1 drivers
v0xbec450_0 .net *"_s19", 0 0, L_0xc67690;  1 drivers
L_0x7f2ff0458888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbec530_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458888;  1 drivers
v0xbec610_0 .net "addORsub", 0 0, L_0xc66da0;  1 drivers
v0xbec6b0_0 .net "carryin", 0 0, L_0xc66940;  1 drivers
v0xbec810_0 .net "carryout", 0 0, L_0xbeb450;  1 drivers
v0xbec8e0_0 .net "modB", 0 0, L_0xc66b90;  1 drivers
v0xbec980_0 .net "out", 0 0, L_0xc674a0;  1 drivers
L_0xc66c00 .part v0xb9e740_0, 0, 1;
LS_0xc677b0_0_0 .concat8 [ 1 1 1 1], L_0xc67600, L_0xc67690, L_0xc67190, L_0x7f2ff0458888;
LS_0xc677b0_0_4 .concat8 [ 1 1 1 1], L_0xbeb930, L_0xc67310, L_0xc67380, L_0xc67410;
L_0xc677b0 .concat8 [ 4 4 0 0], LS_0xc677b0_0_0, LS_0xc677b0_0_4;
S_0xbe9340 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc66ca0 .functor XOR 1, L_0xc67ad0, L_0xc66b90, C4<0>, C4<0>;
L_0xc66da0 .functor XOR 1, L_0xc66ca0, L_0xc66940, C4<0>, C4<0>;
L_0xc66eb0 .functor AND 1, L_0xc66ca0, L_0xc66940, C4<1>, C4<1>;
L_0xc66f20 .functor AND 1, L_0xc67ad0, L_0xc66b90, C4<1>, C4<1>;
L_0xbeb450 .functor OR 1, L_0xc66eb0, L_0xc66f20, C4<0>, C4<0>;
v0xbe95e0_0 .net "A", 0 0, L_0xc67ad0;  alias, 1 drivers
v0xbe96c0_0 .net "B", 0 0, L_0xc66b90;  alias, 1 drivers
v0xbe9780_0 .net "carryin", 0 0, L_0xc66940;  alias, 1 drivers
v0xbe9850_0 .net "carryout", 0 0, L_0xbeb450;  alias, 1 drivers
v0xbe9910_0 .net "out1", 0 0, L_0xc66ca0;  1 drivers
v0xbe9a20_0 .net "out2", 0 0, L_0xc66eb0;  1 drivers
v0xbe9ae0_0 .net "out3", 0 0, L_0xc66f20;  1 drivers
v0xbe9ba0_0 .net "sum", 0 0, L_0xc66da0;  alias, 1 drivers
S_0xbe9d00 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbeb930 .functor AND 1, L_0xc67ad0, L_0xc67b70, C4<1>, C4<1>;
v0xbe9f40_0 .net "A", 0 0, L_0xc67ad0;  alias, 1 drivers
v0xbea000_0 .net "B", 0 0, L_0xc67b70;  alias, 1 drivers
v0xbea0a0_0 .net "out", 0 0, L_0xbeb930;  1 drivers
S_0xbea1f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbea440_0 .net "I", 7 0, L_0xc677b0;  alias, 1 drivers
v0xbea520_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbea5e0_0 .net "out", 0 0, L_0xc674a0;  alias, 1 drivers
L_0xc674a0 .part/v L_0xc677b0, v0xb9e740_0, 1;
S_0xbea730 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc67310 .functor NAND 1, L_0xc67ad0, L_0xc67b70, C4<1>, C4<1>;
v0xbea950_0 .net "A", 0 0, L_0xc67ad0;  alias, 1 drivers
v0xbeaa60_0 .net "B", 0 0, L_0xc67b70;  alias, 1 drivers
v0xbeab20_0 .net "out", 0 0, L_0xc67310;  1 drivers
S_0xbeac30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc67380 .functor NOR 1, L_0xc67ad0, L_0xc67b70, C4<0>, C4<0>;
v0xbeaea0_0 .net "A", 0 0, L_0xc67ad0;  alias, 1 drivers
v0xbeaf60_0 .net "B", 0 0, L_0xc67b70;  alias, 1 drivers
v0xbeb050_0 .net "out", 0 0, L_0xc67380;  1 drivers
S_0xbeb170 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc67410 .functor OR 1, L_0xc67ad0, L_0xc67b70, C4<0>, C4<0>;
v0xbeb390_0 .net "A", 0 0, L_0xc67ad0;  alias, 1 drivers
v0xbeb4e0_0 .net "B", 0 0, L_0xc67b70;  alias, 1 drivers
v0xbeb5a0_0 .net "out", 0 0, L_0xc67410;  1 drivers
S_0xbeb6a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc66b90 .functor XOR 1, L_0xc67b70, L_0xc66c00, C4<0>, C4<0>;
v0xbeb870_0 .net "A", 0 0, L_0xc67b70;  alias, 1 drivers
v0xbeb9c0_0 .net "B", 0 0, L_0xc66c00;  1 drivers
v0xbeba80_0 .net "out", 0 0, L_0xc66b90;  alias, 1 drivers
S_0xbebbc0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbe90d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc67190 .functor XOR 1, L_0xc67ad0, L_0xc67b70, C4<0>, C4<0>;
v0xbebd90_0 .net "A", 0 0, L_0xc67ad0;  alias, 1 drivers
v0xbebe50_0 .net "B", 0 0, L_0xc67b70;  alias, 1 drivers
v0xbebf10_0 .net "out", 0 0, L_0xc67190;  1 drivers
S_0xbecaa0 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc68830 .functor BUFZ 1, L_0xc67f90, C4<0>, C4<0>, C4<0>;
L_0xc688c0 .functor BUFZ 1, L_0xc67f90, C4<0>, C4<0>, C4<0>;
v0xbefa10_0 .net "A", 0 0, L_0xc68d00;  1 drivers
v0xbefab0_0 .net "B", 0 0, L_0xc56680;  1 drivers
v0xbefb70_0 .net "I", 7 0, L_0xc689e0;  1 drivers
v0xbefc70_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbefd10_0 .net *"_s15", 0 0, L_0xc68830;  1 drivers
v0xbefe20_0 .net *"_s19", 0 0, L_0xc688c0;  1 drivers
L_0x7f2ff04588d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbeff00_0 .net/2s *"_s23", 0 0, L_0x7f2ff04588d0;  1 drivers
v0xbeffe0_0 .net "addORsub", 0 0, L_0xc67f90;  1 drivers
v0xbf0080_0 .net "carryin", 0 0, L_0xc56720;  1 drivers
v0xbf01e0_0 .net "carryout", 0 0, L_0xbeee20;  1 drivers
v0xbf02b0_0 .net "modB", 0 0, L_0xc66a70;  1 drivers
v0xbf0350_0 .net "out", 0 0, L_0xc686d0;  1 drivers
L_0xc66ae0 .part v0xb9e740_0, 0, 1;
LS_0xc689e0_0_0 .concat8 [ 1 1 1 1], L_0xc68830, L_0xc688c0, L_0xc683c0, L_0x7f2ff04588d0;
LS_0xc689e0_0_4 .concat8 [ 1 1 1 1], L_0xbef300, L_0xc68540, L_0xc685b0, L_0xc68640;
L_0xc689e0 .concat8 [ 4 4 0 0], LS_0xc689e0_0_0, LS_0xc689e0_0_4;
S_0xbecd10 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc67e70 .functor XOR 1, L_0xc68d00, L_0xc66a70, C4<0>, C4<0>;
L_0xc67f90 .functor XOR 1, L_0xc67e70, L_0xc56720, C4<0>, C4<0>;
L_0xc680c0 .functor AND 1, L_0xc67e70, L_0xc56720, C4<1>, C4<1>;
L_0xc68150 .functor AND 1, L_0xc68d00, L_0xc66a70, C4<1>, C4<1>;
L_0xbeee20 .functor OR 1, L_0xc680c0, L_0xc68150, C4<0>, C4<0>;
v0xbecfb0_0 .net "A", 0 0, L_0xc68d00;  alias, 1 drivers
v0xbed090_0 .net "B", 0 0, L_0xc66a70;  alias, 1 drivers
v0xbed150_0 .net "carryin", 0 0, L_0xc56720;  alias, 1 drivers
v0xbed220_0 .net "carryout", 0 0, L_0xbeee20;  alias, 1 drivers
v0xbed2e0_0 .net "out1", 0 0, L_0xc67e70;  1 drivers
v0xbed3f0_0 .net "out2", 0 0, L_0xc680c0;  1 drivers
v0xbed4b0_0 .net "out3", 0 0, L_0xc68150;  1 drivers
v0xbed570_0 .net "sum", 0 0, L_0xc67f90;  alias, 1 drivers
S_0xbed6d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbef300 .functor AND 1, L_0xc68d00, L_0xc56680, C4<1>, C4<1>;
v0xbed910_0 .net "A", 0 0, L_0xc68d00;  alias, 1 drivers
v0xbed9d0_0 .net "B", 0 0, L_0xc56680;  alias, 1 drivers
v0xbeda70_0 .net "out", 0 0, L_0xbef300;  1 drivers
S_0xbedbc0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbede10_0 .net "I", 7 0, L_0xc689e0;  alias, 1 drivers
v0xbedef0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbedfb0_0 .net "out", 0 0, L_0xc686d0;  alias, 1 drivers
L_0xc686d0 .part/v L_0xc689e0, v0xb9e740_0, 1;
S_0xbee100 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc68540 .functor NAND 1, L_0xc68d00, L_0xc56680, C4<1>, C4<1>;
v0xbee320_0 .net "A", 0 0, L_0xc68d00;  alias, 1 drivers
v0xbee430_0 .net "B", 0 0, L_0xc56680;  alias, 1 drivers
v0xbee4f0_0 .net "out", 0 0, L_0xc68540;  1 drivers
S_0xbee600 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc685b0 .functor NOR 1, L_0xc68d00, L_0xc56680, C4<0>, C4<0>;
v0xbee870_0 .net "A", 0 0, L_0xc68d00;  alias, 1 drivers
v0xbee930_0 .net "B", 0 0, L_0xc56680;  alias, 1 drivers
v0xbeea40_0 .net "out", 0 0, L_0xc685b0;  1 drivers
S_0xbeeb40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc68640 .functor OR 1, L_0xc68d00, L_0xc56680, C4<0>, C4<0>;
v0xbeed60_0 .net "A", 0 0, L_0xc68d00;  alias, 1 drivers
v0xbeeeb0_0 .net "B", 0 0, L_0xc56680;  alias, 1 drivers
v0xbeef70_0 .net "out", 0 0, L_0xc68640;  1 drivers
S_0xbef070 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc66a70 .functor XOR 1, L_0xc56680, L_0xc66ae0, C4<0>, C4<0>;
v0xbef240_0 .net "A", 0 0, L_0xc56680;  alias, 1 drivers
v0xbef390_0 .net "B", 0 0, L_0xc66ae0;  1 drivers
v0xbef450_0 .net "out", 0 0, L_0xc66a70;  alias, 1 drivers
S_0xbef590 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbecaa0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc683c0 .functor XOR 1, L_0xc68d00, L_0xc56680, C4<0>, C4<0>;
v0xbef760_0 .net "A", 0 0, L_0xc68d00;  alias, 1 drivers
v0xbef820_0 .net "B", 0 0, L_0xc56680;  alias, 1 drivers
v0xbef8e0_0 .net "out", 0 0, L_0xc683c0;  1 drivers
S_0xbf0470 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc69b20 .functor BUFZ 1, L_0xc67dd0, C4<0>, C4<0>, C4<0>;
L_0xc69b90 .functor BUFZ 1, L_0xc67dd0, C4<0>, C4<0>, C4<0>;
v0xbf33e0_0 .net "A", 0 0, L_0xc57920;  1 drivers
v0xbf3480_0 .net "B", 0 0, L_0xc6a1c0;  1 drivers
v0xbf3540_0 .net "I", 7 0, L_0xc69c90;  1 drivers
v0xbf3640_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbf36e0_0 .net *"_s15", 0 0, L_0xc69b20;  1 drivers
v0xbf37f0_0 .net *"_s19", 0 0, L_0xc69b90;  1 drivers
L_0x7f2ff0458918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbf38d0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458918;  1 drivers
v0xbf39b0_0 .net "addORsub", 0 0, L_0xc67dd0;  1 drivers
v0xbf3a50_0 .net "carryin", 0 0, L_0xc691b0;  1 drivers
v0xbf3bb0_0 .net "carryout", 0 0, L_0xbf27f0;  1 drivers
v0xbf3c80_0 .net "modB", 0 0, L_0xc50a70;  1 drivers
v0xbf3d20_0 .net "out", 0 0, L_0xc699e0;  1 drivers
L_0xc67c10 .part v0xb9e740_0, 0, 1;
LS_0xc69c90_0_0 .concat8 [ 1 1 1 1], L_0xc69b20, L_0xc69b90, L_0xc69710, L_0x7f2ff0458918;
LS_0xc69c90_0_4 .concat8 [ 1 1 1 1], L_0xbf2cd0, L_0xc69890, L_0xc69900, L_0xc69970;
L_0xc69c90 .concat8 [ 4 4 0 0], LS_0xc69c90_0_0, LS_0xc69c90_0_4;
S_0xbf06e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc67cb0 .functor XOR 1, L_0xc57920, L_0xc50a70, C4<0>, C4<0>;
L_0xc67dd0 .functor XOR 1, L_0xc67cb0, L_0xc691b0, C4<0>, C4<0>;
L_0xc69430 .functor AND 1, L_0xc67cb0, L_0xc691b0, C4<1>, C4<1>;
L_0xc694a0 .functor AND 1, L_0xc57920, L_0xc50a70, C4<1>, C4<1>;
L_0xbf27f0 .functor OR 1, L_0xc69430, L_0xc694a0, C4<0>, C4<0>;
v0xbf0980_0 .net "A", 0 0, L_0xc57920;  alias, 1 drivers
v0xbf0a60_0 .net "B", 0 0, L_0xc50a70;  alias, 1 drivers
v0xbf0b20_0 .net "carryin", 0 0, L_0xc691b0;  alias, 1 drivers
v0xbf0bf0_0 .net "carryout", 0 0, L_0xbf27f0;  alias, 1 drivers
v0xbf0cb0_0 .net "out1", 0 0, L_0xc67cb0;  1 drivers
v0xbf0dc0_0 .net "out2", 0 0, L_0xc69430;  1 drivers
v0xbf0e80_0 .net "out3", 0 0, L_0xc694a0;  1 drivers
v0xbf0f40_0 .net "sum", 0 0, L_0xc67dd0;  alias, 1 drivers
S_0xbf10a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbf2cd0 .functor AND 1, L_0xc57920, L_0xc6a1c0, C4<1>, C4<1>;
v0xbf12e0_0 .net "A", 0 0, L_0xc57920;  alias, 1 drivers
v0xbf13a0_0 .net "B", 0 0, L_0xc6a1c0;  alias, 1 drivers
v0xbf1440_0 .net "out", 0 0, L_0xbf2cd0;  1 drivers
S_0xbf1590 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbf17e0_0 .net "I", 7 0, L_0xc69c90;  alias, 1 drivers
v0xbf18c0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbf1980_0 .net "out", 0 0, L_0xc699e0;  alias, 1 drivers
L_0xc699e0 .part/v L_0xc69c90, v0xb9e740_0, 1;
S_0xbf1ad0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc69890 .functor NAND 1, L_0xc57920, L_0xc6a1c0, C4<1>, C4<1>;
v0xbf1cf0_0 .net "A", 0 0, L_0xc57920;  alias, 1 drivers
v0xbf1e00_0 .net "B", 0 0, L_0xc6a1c0;  alias, 1 drivers
v0xbf1ec0_0 .net "out", 0 0, L_0xc69890;  1 drivers
S_0xbf1fd0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc69900 .functor NOR 1, L_0xc57920, L_0xc6a1c0, C4<0>, C4<0>;
v0xbf2240_0 .net "A", 0 0, L_0xc57920;  alias, 1 drivers
v0xbf2300_0 .net "B", 0 0, L_0xc6a1c0;  alias, 1 drivers
v0xbf2410_0 .net "out", 0 0, L_0xc69900;  1 drivers
S_0xbf2510 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc69970 .functor OR 1, L_0xc57920, L_0xc6a1c0, C4<0>, C4<0>;
v0xbf2730_0 .net "A", 0 0, L_0xc57920;  alias, 1 drivers
v0xbf2880_0 .net "B", 0 0, L_0xc6a1c0;  alias, 1 drivers
v0xbf2940_0 .net "out", 0 0, L_0xc69970;  1 drivers
S_0xbf2a40 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc50a70 .functor XOR 1, L_0xc6a1c0, L_0xc67c10, C4<0>, C4<0>;
v0xbf2c10_0 .net "A", 0 0, L_0xc6a1c0;  alias, 1 drivers
v0xbf2d60_0 .net "B", 0 0, L_0xc67c10;  1 drivers
v0xbf2e20_0 .net "out", 0 0, L_0xc50a70;  alias, 1 drivers
S_0xbf2f60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbf0470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc69710 .functor XOR 1, L_0xc57920, L_0xc6a1c0, C4<0>, C4<0>;
v0xbf3130_0 .net "A", 0 0, L_0xc57920;  alias, 1 drivers
v0xbf31f0_0 .net "B", 0 0, L_0xc6a1c0;  alias, 1 drivers
v0xbf32b0_0 .net "out", 0 0, L_0xc69710;  1 drivers
S_0xbf3e40 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc6ada0 .functor BUFZ 1, L_0xc6a5f0, C4<0>, C4<0>, C4<0>;
L_0xc6ae10 .functor BUFZ 1, L_0xc6a5f0, C4<0>, C4<0>, C4<0>;
v0xbf6db0_0 .net "A", 0 0, L_0xc6b230;  1 drivers
v0xbf6e50_0 .net "B", 0 0, L_0xc6a260;  1 drivers
v0xbf6f10_0 .net "I", 7 0, L_0xc6af10;  1 drivers
v0xbf7010_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbf70b0_0 .net *"_s15", 0 0, L_0xc6ada0;  1 drivers
v0xbf71c0_0 .net *"_s19", 0 0, L_0xc6ae10;  1 drivers
L_0x7f2ff0458960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbf72a0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458960;  1 drivers
v0xbf7380_0 .net "addORsub", 0 0, L_0xc6a5f0;  1 drivers
v0xbf7420_0 .net "carryin", 0 0, L_0xc6a300;  1 drivers
v0xbf7580_0 .net "carryout", 0 0, L_0xbf61c0;  1 drivers
v0xbf7650_0 .net "modB", 0 0, L_0xc579c0;  1 drivers
v0xbf76f0_0 .net "out", 0 0, L_0xc6ac60;  1 drivers
L_0xc692e0 .part v0xb9e740_0, 0, 1;
LS_0xc6af10_0_0 .concat8 [ 1 1 1 1], L_0xc6ada0, L_0xc6ae10, L_0xc6a990, L_0x7f2ff0458960;
LS_0xc6af10_0_4 .concat8 [ 1 1 1 1], L_0xbf66a0, L_0xc6ab10, L_0xc6ab80, L_0xc6abf0;
L_0xc6af10 .concat8 [ 4 4 0 0], LS_0xc6af10_0_0, LS_0xc6af10_0_4;
S_0xbf40b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc6a4f0 .functor XOR 1, L_0xc6b230, L_0xc579c0, C4<0>, C4<0>;
L_0xc6a5f0 .functor XOR 1, L_0xc6a4f0, L_0xc6a300, C4<0>, C4<0>;
L_0xc6a6b0 .functor AND 1, L_0xc6a4f0, L_0xc6a300, C4<1>, C4<1>;
L_0xc6a720 .functor AND 1, L_0xc6b230, L_0xc579c0, C4<1>, C4<1>;
L_0xbf61c0 .functor OR 1, L_0xc6a6b0, L_0xc6a720, C4<0>, C4<0>;
v0xbf4350_0 .net "A", 0 0, L_0xc6b230;  alias, 1 drivers
v0xbf4430_0 .net "B", 0 0, L_0xc579c0;  alias, 1 drivers
v0xbf44f0_0 .net "carryin", 0 0, L_0xc6a300;  alias, 1 drivers
v0xbf45c0_0 .net "carryout", 0 0, L_0xbf61c0;  alias, 1 drivers
v0xbf4680_0 .net "out1", 0 0, L_0xc6a4f0;  1 drivers
v0xbf4790_0 .net "out2", 0 0, L_0xc6a6b0;  1 drivers
v0xbf4850_0 .net "out3", 0 0, L_0xc6a720;  1 drivers
v0xbf4910_0 .net "sum", 0 0, L_0xc6a5f0;  alias, 1 drivers
S_0xbf4a70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbf66a0 .functor AND 1, L_0xc6b230, L_0xc6a260, C4<1>, C4<1>;
v0xbf4cb0_0 .net "A", 0 0, L_0xc6b230;  alias, 1 drivers
v0xbf4d70_0 .net "B", 0 0, L_0xc6a260;  alias, 1 drivers
v0xbf4e10_0 .net "out", 0 0, L_0xbf66a0;  1 drivers
S_0xbf4f60 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbf51b0_0 .net "I", 7 0, L_0xc6af10;  alias, 1 drivers
v0xbf5290_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbf5350_0 .net "out", 0 0, L_0xc6ac60;  alias, 1 drivers
L_0xc6ac60 .part/v L_0xc6af10, v0xb9e740_0, 1;
S_0xbf54a0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6ab10 .functor NAND 1, L_0xc6b230, L_0xc6a260, C4<1>, C4<1>;
v0xbf56c0_0 .net "A", 0 0, L_0xc6b230;  alias, 1 drivers
v0xbf57d0_0 .net "B", 0 0, L_0xc6a260;  alias, 1 drivers
v0xbf5890_0 .net "out", 0 0, L_0xc6ab10;  1 drivers
S_0xbf59a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6ab80 .functor NOR 1, L_0xc6b230, L_0xc6a260, C4<0>, C4<0>;
v0xbf5c10_0 .net "A", 0 0, L_0xc6b230;  alias, 1 drivers
v0xbf5cd0_0 .net "B", 0 0, L_0xc6a260;  alias, 1 drivers
v0xbf5de0_0 .net "out", 0 0, L_0xc6ab80;  1 drivers
S_0xbf5ee0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6abf0 .functor OR 1, L_0xc6b230, L_0xc6a260, C4<0>, C4<0>;
v0xbf6100_0 .net "A", 0 0, L_0xc6b230;  alias, 1 drivers
v0xbf6250_0 .net "B", 0 0, L_0xc6a260;  alias, 1 drivers
v0xbf6310_0 .net "out", 0 0, L_0xc6abf0;  1 drivers
S_0xbf6410 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc579c0 .functor XOR 1, L_0xc6a260, L_0xc692e0, C4<0>, C4<0>;
v0xbf65e0_0 .net "A", 0 0, L_0xc6a260;  alias, 1 drivers
v0xbf6730_0 .net "B", 0 0, L_0xc692e0;  1 drivers
v0xbf67f0_0 .net "out", 0 0, L_0xc579c0;  alias, 1 drivers
S_0xbf6930 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbf3e40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6a990 .functor XOR 1, L_0xc6b230, L_0xc6a260, C4<0>, C4<0>;
v0xbf6b00_0 .net "A", 0 0, L_0xc6b230;  alias, 1 drivers
v0xbf6bc0_0 .net "B", 0 0, L_0xc6a260;  alias, 1 drivers
v0xbf6c80_0 .net "out", 0 0, L_0xc6a990;  1 drivers
S_0xbf7810 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc6bed0 .functor BUFZ 1, L_0xc6b720, C4<0>, C4<0>, C4<0>;
L_0xc6bf40 .functor BUFZ 1, L_0xc6b720, C4<0>, C4<0>, C4<0>;
v0xbfa780_0 .net "A", 0 0, L_0xc6c360;  1 drivers
v0xbfa820_0 .net "B", 0 0, L_0xc6c400;  1 drivers
v0xbfa8e0_0 .net "I", 7 0, L_0xc6c040;  1 drivers
v0xbfa9e0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbfaa80_0 .net *"_s15", 0 0, L_0xc6bed0;  1 drivers
v0xbfab90_0 .net *"_s19", 0 0, L_0xc6bf40;  1 drivers
L_0x7f2ff04589a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbfac70_0 .net/2s *"_s23", 0 0, L_0x7f2ff04589a8;  1 drivers
v0xbfad50_0 .net "addORsub", 0 0, L_0xc6b720;  1 drivers
v0xbfadf0_0 .net "carryin", 0 0, L_0xc6b2d0;  1 drivers
v0xbfaf50_0 .net "carryout", 0 0, L_0xbf9b90;  1 drivers
v0xbfb020_0 .net "modB", 0 0, L_0xc6a430;  1 drivers
v0xbfb0c0_0 .net "out", 0 0, L_0xc6bd90;  1 drivers
L_0xc6b580 .part v0xb9e740_0, 0, 1;
LS_0xc6c040_0_0 .concat8 [ 1 1 1 1], L_0xc6bed0, L_0xc6bf40, L_0xc6bac0, L_0x7f2ff04589a8;
LS_0xc6c040_0_4 .concat8 [ 1 1 1 1], L_0xbfa070, L_0xc6bc40, L_0xc6bcb0, L_0xc6bd20;
L_0xc6c040 .concat8 [ 4 4 0 0], LS_0xc6c040_0_0, LS_0xc6c040_0_4;
S_0xbf7a80 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc6b620 .functor XOR 1, L_0xc6c360, L_0xc6a430, C4<0>, C4<0>;
L_0xc6b720 .functor XOR 1, L_0xc6b620, L_0xc6b2d0, C4<0>, C4<0>;
L_0xc6b7e0 .functor AND 1, L_0xc6b620, L_0xc6b2d0, C4<1>, C4<1>;
L_0xc6b850 .functor AND 1, L_0xc6c360, L_0xc6a430, C4<1>, C4<1>;
L_0xbf9b90 .functor OR 1, L_0xc6b7e0, L_0xc6b850, C4<0>, C4<0>;
v0xbf7d20_0 .net "A", 0 0, L_0xc6c360;  alias, 1 drivers
v0xbf7e00_0 .net "B", 0 0, L_0xc6a430;  alias, 1 drivers
v0xbf7ec0_0 .net "carryin", 0 0, L_0xc6b2d0;  alias, 1 drivers
v0xbf7f90_0 .net "carryout", 0 0, L_0xbf9b90;  alias, 1 drivers
v0xbf8050_0 .net "out1", 0 0, L_0xc6b620;  1 drivers
v0xbf8160_0 .net "out2", 0 0, L_0xc6b7e0;  1 drivers
v0xbf8220_0 .net "out3", 0 0, L_0xc6b850;  1 drivers
v0xbf82e0_0 .net "sum", 0 0, L_0xc6b720;  alias, 1 drivers
S_0xbf8440 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbfa070 .functor AND 1, L_0xc6c360, L_0xc6c400, C4<1>, C4<1>;
v0xbf8680_0 .net "A", 0 0, L_0xc6c360;  alias, 1 drivers
v0xbf8740_0 .net "B", 0 0, L_0xc6c400;  alias, 1 drivers
v0xbf87e0_0 .net "out", 0 0, L_0xbfa070;  1 drivers
S_0xbf8930 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbf8b80_0 .net "I", 7 0, L_0xc6c040;  alias, 1 drivers
v0xbf8c60_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbf8d20_0 .net "out", 0 0, L_0xc6bd90;  alias, 1 drivers
L_0xc6bd90 .part/v L_0xc6c040, v0xb9e740_0, 1;
S_0xbf8e70 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6bc40 .functor NAND 1, L_0xc6c360, L_0xc6c400, C4<1>, C4<1>;
v0xbf9090_0 .net "A", 0 0, L_0xc6c360;  alias, 1 drivers
v0xbf91a0_0 .net "B", 0 0, L_0xc6c400;  alias, 1 drivers
v0xbf9260_0 .net "out", 0 0, L_0xc6bc40;  1 drivers
S_0xbf9370 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6bcb0 .functor NOR 1, L_0xc6c360, L_0xc6c400, C4<0>, C4<0>;
v0xbf95e0_0 .net "A", 0 0, L_0xc6c360;  alias, 1 drivers
v0xbf96a0_0 .net "B", 0 0, L_0xc6c400;  alias, 1 drivers
v0xbf97b0_0 .net "out", 0 0, L_0xc6bcb0;  1 drivers
S_0xbf98b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6bd20 .functor OR 1, L_0xc6c360, L_0xc6c400, C4<0>, C4<0>;
v0xbf9ad0_0 .net "A", 0 0, L_0xc6c360;  alias, 1 drivers
v0xbf9c20_0 .net "B", 0 0, L_0xc6c400;  alias, 1 drivers
v0xbf9ce0_0 .net "out", 0 0, L_0xc6bd20;  1 drivers
S_0xbf9de0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6a430 .functor XOR 1, L_0xc6c400, L_0xc6b580, C4<0>, C4<0>;
v0xbf9fb0_0 .net "A", 0 0, L_0xc6c400;  alias, 1 drivers
v0xbfa100_0 .net "B", 0 0, L_0xc6b580;  1 drivers
v0xbfa1c0_0 .net "out", 0 0, L_0xc6a430;  alias, 1 drivers
S_0xbfa300 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbf7810;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6bac0 .functor XOR 1, L_0xc6c360, L_0xc6c400, C4<0>, C4<0>;
v0xbfa4d0_0 .net "A", 0 0, L_0xc6c360;  alias, 1 drivers
v0xbfa590_0 .net "B", 0 0, L_0xc6c400;  alias, 1 drivers
v0xbfa650_0 .net "out", 0 0, L_0xc6bac0;  1 drivers
S_0xbfb1e0 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc6cff0 .functor BUFZ 1, L_0xc6c7f0, C4<0>, C4<0>, C4<0>;
L_0xc6d060 .functor BUFZ 1, L_0xc6c7f0, C4<0>, C4<0>, C4<0>;
v0xbfe150_0 .net "A", 0 0, L_0xc6d480;  1 drivers
v0xbfe1f0_0 .net "B", 0 0, L_0xc6c4a0;  1 drivers
v0xbfe2b0_0 .net "I", 7 0, L_0xc6d160;  1 drivers
v0xbfe3b0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbfe450_0 .net *"_s15", 0 0, L_0xc6cff0;  1 drivers
v0xbfe560_0 .net *"_s19", 0 0, L_0xc6d060;  1 drivers
L_0x7f2ff04589f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbfe640_0 .net/2s *"_s23", 0 0, L_0x7f2ff04589f0;  1 drivers
v0xbfe720_0 .net "addORsub", 0 0, L_0xc6c7f0;  1 drivers
v0xbfe7c0_0 .net "carryin", 0 0, L_0xc5b250;  1 drivers
v0xbfe920_0 .net "carryout", 0 0, L_0xbfd560;  1 drivers
v0xbfe9f0_0 .net "modB", 0 0, L_0xc6b400;  1 drivers
v0xbfea90_0 .net "out", 0 0, L_0xc6ceb0;  1 drivers
L_0xc6b470 .part v0xb9e740_0, 0, 1;
LS_0xc6d160_0_0 .concat8 [ 1 1 1 1], L_0xc6cff0, L_0xc6d060, L_0xc6cbe0, L_0x7f2ff04589f0;
LS_0xc6d160_0_4 .concat8 [ 1 1 1 1], L_0xbfda40, L_0xc6cd60, L_0xc6cdd0, L_0xc6ce40;
L_0xc6d160 .concat8 [ 4 4 0 0], LS_0xc6d160_0_0, LS_0xc6d160_0_4;
S_0xbfb450 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc6b510 .functor XOR 1, L_0xc6d480, L_0xc6b400, C4<0>, C4<0>;
L_0xc6c7f0 .functor XOR 1, L_0xc6b510, L_0xc5b250, C4<0>, C4<0>;
L_0xc6c900 .functor AND 1, L_0xc6b510, L_0xc5b250, C4<1>, C4<1>;
L_0xc6c970 .functor AND 1, L_0xc6d480, L_0xc6b400, C4<1>, C4<1>;
L_0xbfd560 .functor OR 1, L_0xc6c900, L_0xc6c970, C4<0>, C4<0>;
v0xbfb6f0_0 .net "A", 0 0, L_0xc6d480;  alias, 1 drivers
v0xbfb7d0_0 .net "B", 0 0, L_0xc6b400;  alias, 1 drivers
v0xbfb890_0 .net "carryin", 0 0, L_0xc5b250;  alias, 1 drivers
v0xbfb960_0 .net "carryout", 0 0, L_0xbfd560;  alias, 1 drivers
v0xbfba20_0 .net "out1", 0 0, L_0xc6b510;  1 drivers
v0xbfbb30_0 .net "out2", 0 0, L_0xc6c900;  1 drivers
v0xbfbbf0_0 .net "out3", 0 0, L_0xc6c970;  1 drivers
v0xbfbcb0_0 .net "sum", 0 0, L_0xc6c7f0;  alias, 1 drivers
S_0xbfbe10 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xbfda40 .functor AND 1, L_0xc6d480, L_0xc6c4a0, C4<1>, C4<1>;
v0xbfc050_0 .net "A", 0 0, L_0xc6d480;  alias, 1 drivers
v0xbfc110_0 .net "B", 0 0, L_0xc6c4a0;  alias, 1 drivers
v0xbfc1b0_0 .net "out", 0 0, L_0xbfda40;  1 drivers
S_0xbfc300 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbfc550_0 .net "I", 7 0, L_0xc6d160;  alias, 1 drivers
v0xbfc630_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbfc6f0_0 .net "out", 0 0, L_0xc6ceb0;  alias, 1 drivers
L_0xc6ceb0 .part/v L_0xc6d160, v0xb9e740_0, 1;
S_0xbfc840 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6cd60 .functor NAND 1, L_0xc6d480, L_0xc6c4a0, C4<1>, C4<1>;
v0xbfca60_0 .net "A", 0 0, L_0xc6d480;  alias, 1 drivers
v0xbfcb70_0 .net "B", 0 0, L_0xc6c4a0;  alias, 1 drivers
v0xbfcc30_0 .net "out", 0 0, L_0xc6cd60;  1 drivers
S_0xbfcd40 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6cdd0 .functor NOR 1, L_0xc6d480, L_0xc6c4a0, C4<0>, C4<0>;
v0xbfcfb0_0 .net "A", 0 0, L_0xc6d480;  alias, 1 drivers
v0xbfd070_0 .net "B", 0 0, L_0xc6c4a0;  alias, 1 drivers
v0xbfd180_0 .net "out", 0 0, L_0xc6cdd0;  1 drivers
S_0xbfd280 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6ce40 .functor OR 1, L_0xc6d480, L_0xc6c4a0, C4<0>, C4<0>;
v0xbfd4a0_0 .net "A", 0 0, L_0xc6d480;  alias, 1 drivers
v0xbfd5f0_0 .net "B", 0 0, L_0xc6c4a0;  alias, 1 drivers
v0xbfd6b0_0 .net "out", 0 0, L_0xc6ce40;  1 drivers
S_0xbfd7b0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6b400 .functor XOR 1, L_0xc6c4a0, L_0xc6b470, C4<0>, C4<0>;
v0xbfd980_0 .net "A", 0 0, L_0xc6c4a0;  alias, 1 drivers
v0xbfdad0_0 .net "B", 0 0, L_0xc6b470;  1 drivers
v0xbfdb90_0 .net "out", 0 0, L_0xc6b400;  alias, 1 drivers
S_0xbfdcd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbfb1e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6cbe0 .functor XOR 1, L_0xc6d480, L_0xc6c4a0, C4<0>, C4<0>;
v0xbfdea0_0 .net "A", 0 0, L_0xc6d480;  alias, 1 drivers
v0xbfdf60_0 .net "B", 0 0, L_0xc6c4a0;  alias, 1 drivers
v0xbfe020_0 .net "out", 0 0, L_0xc6cbe0;  1 drivers
S_0xbfebb0 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc4f1d0 .functor BUFZ 1, L_0xc4e9b0, C4<0>, C4<0>, C4<0>;
L_0xc4f260 .functor BUFZ 1, L_0xc4e9b0, C4<0>, C4<0>, C4<0>;
v0xc01b20_0 .net "A", 0 0, L_0xc4f6a0;  1 drivers
v0xc01bc0_0 .net "B", 0 0, L_0xc4f7a0;  1 drivers
v0xc01c80_0 .net "I", 7 0, L_0xc4f380;  1 drivers
v0xc01d80_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc01e20_0 .net *"_s15", 0 0, L_0xc4f1d0;  1 drivers
v0xc01f30_0 .net *"_s19", 0 0, L_0xc4f260;  1 drivers
L_0x7f2ff04582a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc02010_0 .net/2s *"_s23", 0 0, L_0x7f2ff04582a0;  1 drivers
v0xc020f0_0 .net "addORsub", 0 0, L_0xc4e9b0;  1 drivers
v0xc02190_0 .net "carryin", 0 0, L_0xc4f840;  1 drivers
v0xc022f0_0 .net "carryout", 0 0, L_0xc00f30;  1 drivers
v0xc023c0_0 .net "modB", 0 0, L_0xc4e750;  1 drivers
v0xc02460_0 .net "out", 0 0, L_0xc4f070;  1 drivers
L_0xc4e7c0 .part v0xb9e740_0, 0, 1;
LS_0xc4f380_0_0 .concat8 [ 1 1 1 1], L_0xc4f1d0, L_0xc4f260, L_0xc4eda0, L_0x7f2ff04582a0;
LS_0xc4f380_0_4 .concat8 [ 1 1 1 1], L_0xc01410, L_0xc4ef20, L_0xc4ef90, L_0xc4f000;
L_0xc4f380 .concat8 [ 4 4 0 0], LS_0xc4f380_0_0, LS_0xc4f380_0_4;
S_0xbfee20 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc4e8b0 .functor XOR 1, L_0xc4f6a0, L_0xc4e750, C4<0>, C4<0>;
L_0xc4e9b0 .functor XOR 1, L_0xc4e8b0, L_0xc4f840, C4<0>, C4<0>;
L_0xc4eac0 .functor AND 1, L_0xc4e8b0, L_0xc4f840, C4<1>, C4<1>;
L_0xc4eb30 .functor AND 1, L_0xc4f6a0, L_0xc4e750, C4<1>, C4<1>;
L_0xc00f30 .functor OR 1, L_0xc4eac0, L_0xc4eb30, C4<0>, C4<0>;
v0xbff0c0_0 .net "A", 0 0, L_0xc4f6a0;  alias, 1 drivers
v0xbff1a0_0 .net "B", 0 0, L_0xc4e750;  alias, 1 drivers
v0xbff260_0 .net "carryin", 0 0, L_0xc4f840;  alias, 1 drivers
v0xbff330_0 .net "carryout", 0 0, L_0xc00f30;  alias, 1 drivers
v0xbff3f0_0 .net "out1", 0 0, L_0xc4e8b0;  1 drivers
v0xbff500_0 .net "out2", 0 0, L_0xc4eac0;  1 drivers
v0xbff5c0_0 .net "out3", 0 0, L_0xc4eb30;  1 drivers
v0xbff680_0 .net "sum", 0 0, L_0xc4e9b0;  alias, 1 drivers
S_0xbff7e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc01410 .functor AND 1, L_0xc4f6a0, L_0xc4f7a0, C4<1>, C4<1>;
v0xbffa20_0 .net "A", 0 0, L_0xc4f6a0;  alias, 1 drivers
v0xbffae0_0 .net "B", 0 0, L_0xc4f7a0;  alias, 1 drivers
v0xbffb80_0 .net "out", 0 0, L_0xc01410;  1 drivers
S_0xbffcd0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xbfff20_0 .net "I", 7 0, L_0xc4f380;  alias, 1 drivers
v0xc00000_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc000c0_0 .net "out", 0 0, L_0xc4f070;  alias, 1 drivers
L_0xc4f070 .part/v L_0xc4f380, v0xb9e740_0, 1;
S_0xc00210 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4ef20 .functor NAND 1, L_0xc4f6a0, L_0xc4f7a0, C4<1>, C4<1>;
v0xc00430_0 .net "A", 0 0, L_0xc4f6a0;  alias, 1 drivers
v0xc00540_0 .net "B", 0 0, L_0xc4f7a0;  alias, 1 drivers
v0xc00600_0 .net "out", 0 0, L_0xc4ef20;  1 drivers
S_0xc00710 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4ef90 .functor NOR 1, L_0xc4f6a0, L_0xc4f7a0, C4<0>, C4<0>;
v0xc00980_0 .net "A", 0 0, L_0xc4f6a0;  alias, 1 drivers
v0xc00a40_0 .net "B", 0 0, L_0xc4f7a0;  alias, 1 drivers
v0xc00b50_0 .net "out", 0 0, L_0xc4ef90;  1 drivers
S_0xc00c50 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4f000 .functor OR 1, L_0xc4f6a0, L_0xc4f7a0, C4<0>, C4<0>;
v0xc00e70_0 .net "A", 0 0, L_0xc4f6a0;  alias, 1 drivers
v0xc00fc0_0 .net "B", 0 0, L_0xc4f7a0;  alias, 1 drivers
v0xc01080_0 .net "out", 0 0, L_0xc4f000;  1 drivers
S_0xc01180 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4e750 .functor XOR 1, L_0xc4f7a0, L_0xc4e7c0, C4<0>, C4<0>;
v0xc01350_0 .net "A", 0 0, L_0xc4f7a0;  alias, 1 drivers
v0xc014a0_0 .net "B", 0 0, L_0xc4e7c0;  1 drivers
v0xc01560_0 .net "out", 0 0, L_0xc4e750;  alias, 1 drivers
S_0xc016a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xbfebb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4eda0 .functor XOR 1, L_0xc4f6a0, L_0xc4f7a0, C4<0>, C4<0>;
v0xc01870_0 .net "A", 0 0, L_0xc4f6a0;  alias, 1 drivers
v0xc01930_0 .net "B", 0 0, L_0xc4f7a0;  alias, 1 drivers
v0xc019f0_0 .net "out", 0 0, L_0xc4eda0;  1 drivers
S_0xc02580 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc1fba0 .functor BUFZ 1, L_0xc6c670, C4<0>, C4<0>, C4<0>;
L_0xc1fc30 .functor BUFZ 1, L_0xc6c670, C4<0>, C4<0>, C4<0>;
v0xc054f0_0 .net "A", 0 0, L_0xc6f230;  1 drivers
v0xc05590_0 .net "B", 0 0, L_0xc6dc00;  1 drivers
v0xc05650_0 .net "I", 7 0, L_0xc1fd50;  1 drivers
v0xc05750_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc057f0_0 .net *"_s15", 0 0, L_0xc1fba0;  1 drivers
v0xc05900_0 .net *"_s19", 0 0, L_0xc1fc30;  1 drivers
L_0x7f2ff0458a38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc059e0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458a38;  1 drivers
v0xc05ac0_0 .net "addORsub", 0 0, L_0xc6c670;  1 drivers
v0xc05b60_0 .net "carryin", 0 0, L_0xc6dca0;  1 drivers
v0xc05cc0_0 .net "carryout", 0 0, L_0xc04900;  1 drivers
v0xc05d90_0 .net "modB", 0 0, L_0xc5b380;  1 drivers
v0xc05e30_0 .net "out", 0 0, L_0xc1fa40;  1 drivers
L_0xc6c540 .part v0xb9e740_0, 0, 1;
LS_0xc1fd50_0_0 .concat8 [ 1 1 1 1], L_0xc1fba0, L_0xc1fc30, L_0xc1f750, L_0x7f2ff0458a38;
LS_0xc1fd50_0_4 .concat8 [ 1 1 1 1], L_0xc04de0, L_0xc1f8d0, L_0xc1f940, L_0xc1f9b0;
L_0xc1fd50 .concat8 [ 4 4 0 0], LS_0xc1fd50_0_0, LS_0xc1fd50_0_4;
S_0xc027f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc5b3f0 .functor XOR 1, L_0xc6f230, L_0xc5b380, C4<0>, C4<0>;
L_0xc6c670 .functor XOR 1, L_0xc5b3f0, L_0xc6dca0, C4<0>, C4<0>;
L_0xc6d520 .functor AND 1, L_0xc5b3f0, L_0xc6dca0, C4<1>, C4<1>;
L_0xc6d5b0 .functor AND 1, L_0xc6f230, L_0xc5b380, C4<1>, C4<1>;
L_0xc04900 .functor OR 1, L_0xc6d520, L_0xc6d5b0, C4<0>, C4<0>;
v0xc02a90_0 .net "A", 0 0, L_0xc6f230;  alias, 1 drivers
v0xc02b70_0 .net "B", 0 0, L_0xc5b380;  alias, 1 drivers
v0xc02c30_0 .net "carryin", 0 0, L_0xc6dca0;  alias, 1 drivers
v0xc02d00_0 .net "carryout", 0 0, L_0xc04900;  alias, 1 drivers
v0xc02dc0_0 .net "out1", 0 0, L_0xc5b3f0;  1 drivers
v0xc02ed0_0 .net "out2", 0 0, L_0xc6d520;  1 drivers
v0xc02f90_0 .net "out3", 0 0, L_0xc6d5b0;  1 drivers
v0xc03050_0 .net "sum", 0 0, L_0xc6c670;  alias, 1 drivers
S_0xc031b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc04de0 .functor AND 1, L_0xc6f230, L_0xc6dc00, C4<1>, C4<1>;
v0xc033f0_0 .net "A", 0 0, L_0xc6f230;  alias, 1 drivers
v0xc034b0_0 .net "B", 0 0, L_0xc6dc00;  alias, 1 drivers
v0xc03550_0 .net "out", 0 0, L_0xc04de0;  1 drivers
S_0xc036a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc038f0_0 .net "I", 7 0, L_0xc1fd50;  alias, 1 drivers
v0xc039d0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc03a90_0 .net "out", 0 0, L_0xc1fa40;  alias, 1 drivers
L_0xc1fa40 .part/v L_0xc1fd50, v0xb9e740_0, 1;
S_0xc03be0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc1f8d0 .functor NAND 1, L_0xc6f230, L_0xc6dc00, C4<1>, C4<1>;
v0xc03e00_0 .net "A", 0 0, L_0xc6f230;  alias, 1 drivers
v0xc03f10_0 .net "B", 0 0, L_0xc6dc00;  alias, 1 drivers
v0xc03fd0_0 .net "out", 0 0, L_0xc1f8d0;  1 drivers
S_0xc040e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc1f940 .functor NOR 1, L_0xc6f230, L_0xc6dc00, C4<0>, C4<0>;
v0xc04350_0 .net "A", 0 0, L_0xc6f230;  alias, 1 drivers
v0xc04410_0 .net "B", 0 0, L_0xc6dc00;  alias, 1 drivers
v0xc04520_0 .net "out", 0 0, L_0xc1f940;  1 drivers
S_0xc04620 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc1f9b0 .functor OR 1, L_0xc6f230, L_0xc6dc00, C4<0>, C4<0>;
v0xc04840_0 .net "A", 0 0, L_0xc6f230;  alias, 1 drivers
v0xc04990_0 .net "B", 0 0, L_0xc6dc00;  alias, 1 drivers
v0xc04a50_0 .net "out", 0 0, L_0xc1f9b0;  1 drivers
S_0xc04b50 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc5b380 .functor XOR 1, L_0xc6dc00, L_0xc6c540, C4<0>, C4<0>;
v0xc04d20_0 .net "A", 0 0, L_0xc6dc00;  alias, 1 drivers
v0xc04e70_0 .net "B", 0 0, L_0xc6c540;  1 drivers
v0xc04f30_0 .net "out", 0 0, L_0xc5b380;  alias, 1 drivers
S_0xc05070 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc02580;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc1f750 .functor XOR 1, L_0xc6f230, L_0xc6dc00, C4<0>, C4<0>;
v0xc05240_0 .net "A", 0 0, L_0xc6f230;  alias, 1 drivers
v0xc05300_0 .net "B", 0 0, L_0xc6dc00;  alias, 1 drivers
v0xc053c0_0 .net "out", 0 0, L_0xc1f750;  1 drivers
S_0xc05f50 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0xc6ddd0 .functor BUFZ 1, L_0xc6f870, C4<0>, C4<0>, C4<0>;
L_0xc6de40 .functor BUFZ 1, L_0xc6f870, C4<0>, C4<0>, C4<0>;
v0xc098f0_0 .net "A", 0 0, L_0xc705c0;  1 drivers
v0xc09990_0 .net "B", 0 0, L_0xc6f2d0;  1 drivers
v0xc09a50_0 .net "I", 7 0, L_0xc700a0;  1 drivers
v0xc09b50_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc09bf0_0 .net *"_s3", 0 0, L_0xc6ddd0;  1 drivers
v0xc09d00_0 .net *"_s7", 0 0, L_0xc6de40;  1 drivers
v0xc09de0_0 .net "as", 0 0, L_0xc6f870;  1 drivers
v0xc09ed0_0 .net "carryin", 0 0, L_0xc6f370;  1 drivers
v0xc09fc0_0 .net "carryout", 0 0, L_0xc082e0;  alias, 1 drivers
v0xc0a0f0_0 .net "modB", 0 0, L_0xc6f660;  1 drivers
v0xc0a1e0_0 .net "out", 0 0, L_0xc6fe80;  1 drivers
v0xc0a280_0 .net "overflow", 0 0, L_0xc6ffc0;  alias, 1 drivers
L_0xc6f6d0 .part v0xb9e740_0, 0, 1;
LS_0xc700a0_0_0 .concat8 [ 1 1 1 1], L_0xc6ddd0, L_0xc6de40, L_0xc6fbb0, L_0xc70030;
LS_0xc700a0_0_4 .concat8 [ 1 1 1 1], L_0xc087c0, L_0xc6fd30, L_0xc6fda0, L_0xc6fe10;
L_0xc700a0 .concat8 [ 4 4 0 0], LS_0xc700a0_0_0, LS_0xc700a0_0_4;
S_0xc061d0 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc6f770 .functor XOR 1, L_0xc705c0, L_0xc6f660, C4<0>, C4<0>;
L_0xc6f870 .functor XOR 1, L_0xc6f770, L_0xc6f370, C4<0>, C4<0>;
L_0xc6f8e0 .functor AND 1, L_0xc6f770, L_0xc6f370, C4<1>, C4<1>;
L_0xc6f9e0 .functor AND 1, L_0xc705c0, L_0xc6f660, C4<1>, C4<1>;
L_0xc082e0 .functor OR 1, L_0xc6f8e0, L_0xc6f9e0, C4<0>, C4<0>;
v0xc06470_0 .net "A", 0 0, L_0xc705c0;  alias, 1 drivers
v0xc06550_0 .net "B", 0 0, L_0xc6f660;  alias, 1 drivers
v0xc06610_0 .net "carryin", 0 0, L_0xc6f370;  alias, 1 drivers
v0xc066e0_0 .net "carryout", 0 0, L_0xc082e0;  alias, 1 drivers
v0xc067a0_0 .net "out1", 0 0, L_0xc6f770;  1 drivers
v0xc068b0_0 .net "out2", 0 0, L_0xc6f8e0;  1 drivers
v0xc06970_0 .net "out3", 0 0, L_0xc6f9e0;  1 drivers
v0xc06a30_0 .net "sum", 0 0, L_0xc6f870;  alias, 1 drivers
S_0xc06b90 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc087c0 .functor AND 1, L_0xc705c0, L_0xc6f2d0, C4<1>, C4<1>;
v0xc06dd0_0 .net "A", 0 0, L_0xc705c0;  alias, 1 drivers
v0xc06e90_0 .net "B", 0 0, L_0xc6f2d0;  alias, 1 drivers
v0xc06f30_0 .net "out", 0 0, L_0xc087c0;  1 drivers
S_0xc07080 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc072d0_0 .net "I", 7 0, L_0xc700a0;  alias, 1 drivers
v0xc073b0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc07470_0 .net "out", 0 0, L_0xc6fe80;  alias, 1 drivers
L_0xc6fe80 .part/v L_0xc700a0, v0xb9e740_0, 1;
S_0xc075c0 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6fd30 .functor NAND 1, L_0xc705c0, L_0xc6f2d0, C4<1>, C4<1>;
v0xc077e0_0 .net "A", 0 0, L_0xc705c0;  alias, 1 drivers
v0xc078f0_0 .net "B", 0 0, L_0xc6f2d0;  alias, 1 drivers
v0xc079b0_0 .net "out", 0 0, L_0xc6fd30;  1 drivers
S_0xc07ac0 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6fda0 .functor NOR 1, L_0xc705c0, L_0xc6f2d0, C4<0>, C4<0>;
v0xc07d30_0 .net "A", 0 0, L_0xc705c0;  alias, 1 drivers
v0xc07df0_0 .net "B", 0 0, L_0xc6f2d0;  alias, 1 drivers
v0xc07f00_0 .net "out", 0 0, L_0xc6fda0;  1 drivers
S_0xc08000 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6fe10 .functor OR 1, L_0xc705c0, L_0xc6f2d0, C4<0>, C4<0>;
v0xc08220_0 .net "A", 0 0, L_0xc705c0;  alias, 1 drivers
v0xc08370_0 .net "B", 0 0, L_0xc6f2d0;  alias, 1 drivers
v0xc08430_0 .net "out", 0 0, L_0xc6fe10;  1 drivers
S_0xc08530 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6f660 .functor XOR 1, L_0xc6f2d0, L_0xc6f6d0, C4<0>, C4<0>;
v0xc08700_0 .net "A", 0 0, L_0xc6f2d0;  alias, 1 drivers
v0xc08850_0 .net "B", 0 0, L_0xc6f6d0;  1 drivers
v0xc08910_0 .net "out", 0 0, L_0xc6f660;  alias, 1 drivers
S_0xc08a50 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6fbb0 .functor XOR 1, L_0xc705c0, L_0xc6f2d0, C4<0>, C4<0>;
v0xc08c20_0 .net "A", 0 0, L_0xc705c0;  alias, 1 drivers
v0xc08ce0_0 .net "B", 0 0, L_0xc6f2d0;  alias, 1 drivers
v0xc08da0_0 .net "out", 0 0, L_0xc6fbb0;  1 drivers
S_0xc08ed0 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc6ffc0 .functor XOR 1, L_0xc6f370, L_0xc082e0, C4<0>, C4<0>;
v0xc09130_0 .net "A", 0 0, L_0xc6f370;  alias, 1 drivers
v0xc09220_0 .net "B", 0 0, L_0xc082e0;  alias, 1 drivers
v0xc092f0_0 .net "out", 0 0, L_0xc6ffc0;  alias, 1 drivers
S_0xc09400 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0xc05f50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc70030 .functor XOR 1, L_0xc6ffc0, L_0xc6f870, C4<0>, C4<0>;
v0xc09620_0 .net "A", 0 0, L_0xc6ffc0;  alias, 1 drivers
v0xc09710_0 .net "B", 0 0, L_0xc6f870;  alias, 1 drivers
v0xc097e0_0 .net "out", 0 0, L_0xc70030;  1 drivers
S_0xc0a470 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc50460 .functor BUFZ 1, L_0xc4fc10, C4<0>, C4<0>, C4<0>;
L_0xc504f0 .functor BUFZ 1, L_0xc4fc10, C4<0>, C4<0>, C4<0>;
v0xc0d2f0_0 .net "A", 0 0, L_0xc50930;  1 drivers
v0xc0d390_0 .net "B", 0 0, L_0xc509d0;  1 drivers
v0xc0d450_0 .net "I", 7 0, L_0xc50610;  1 drivers
v0xc0d550_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc0d5f0_0 .net *"_s15", 0 0, L_0xc50460;  1 drivers
v0xc0d700_0 .net *"_s19", 0 0, L_0xc504f0;  1 drivers
L_0x7f2ff04582e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc0d7e0_0 .net/2s *"_s23", 0 0, L_0x7f2ff04582e8;  1 drivers
v0xc0d8c0_0 .net "addORsub", 0 0, L_0xc4fc10;  1 drivers
v0xc0d960_0 .net "carryin", 0 0, L_0xc50af0;  1 drivers
v0xc0dac0_0 .net "carryout", 0 0, L_0xc0c700;  1 drivers
v0xc0db90_0 .net "modB", 0 0, L_0xc4f9e0;  1 drivers
v0xc0dc30_0 .net "out", 0 0, L_0xc50300;  1 drivers
L_0xc4fa50 .part v0xb9e740_0, 0, 1;
LS_0xc50610_0_0 .concat8 [ 1 1 1 1], L_0xc50460, L_0xc504f0, L_0xc4fff0, L_0x7f2ff04582e8;
LS_0xc50610_0_4 .concat8 [ 1 1 1 1], L_0xc0cbe0, L_0xc50170, L_0xc501e0, L_0xc50270;
L_0xc50610 .concat8 [ 4 4 0 0], LS_0xc50610_0_0, LS_0xc50610_0_4;
S_0xc0a6e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc4faf0 .functor XOR 1, L_0xc50930, L_0xc4f9e0, C4<0>, C4<0>;
L_0xc4fc10 .functor XOR 1, L_0xc4faf0, L_0xc50af0, C4<0>, C4<0>;
L_0xc4fcf0 .functor AND 1, L_0xc4faf0, L_0xc50af0, C4<1>, C4<1>;
L_0xc4fd80 .functor AND 1, L_0xc50930, L_0xc4f9e0, C4<1>, C4<1>;
L_0xc0c700 .functor OR 1, L_0xc4fcf0, L_0xc4fd80, C4<0>, C4<0>;
v0xc0a950_0 .net "A", 0 0, L_0xc50930;  alias, 1 drivers
v0xc0aa30_0 .net "B", 0 0, L_0xc4f9e0;  alias, 1 drivers
v0xc0aaf0_0 .net "carryin", 0 0, L_0xc50af0;  alias, 1 drivers
v0xc0ab90_0 .net "carryout", 0 0, L_0xc0c700;  alias, 1 drivers
v0xc0ac50_0 .net "out1", 0 0, L_0xc4faf0;  1 drivers
v0xc0ad60_0 .net "out2", 0 0, L_0xc4fcf0;  1 drivers
v0xc0ae20_0 .net "out3", 0 0, L_0xc4fd80;  1 drivers
v0xc0aee0_0 .net "sum", 0 0, L_0xc4fc10;  alias, 1 drivers
S_0xc0b040 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc0cbe0 .functor AND 1, L_0xc50930, L_0xc509d0, C4<1>, C4<1>;
v0xc0b280_0 .net "A", 0 0, L_0xc50930;  alias, 1 drivers
v0xc0b340_0 .net "B", 0 0, L_0xc509d0;  alias, 1 drivers
v0xc0b3e0_0 .net "out", 0 0, L_0xc0cbe0;  1 drivers
S_0xc0b500 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc0b720_0 .net "I", 7 0, L_0xc50610;  alias, 1 drivers
v0xc0b800_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc0b8c0_0 .net "out", 0 0, L_0xc50300;  alias, 1 drivers
L_0xc50300 .part/v L_0xc50610, v0xb9e740_0, 1;
S_0xc0b9e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc50170 .functor NAND 1, L_0xc50930, L_0xc509d0, C4<1>, C4<1>;
v0xc0bc00_0 .net "A", 0 0, L_0xc50930;  alias, 1 drivers
v0xc0bd10_0 .net "B", 0 0, L_0xc509d0;  alias, 1 drivers
v0xc0bdd0_0 .net "out", 0 0, L_0xc50170;  1 drivers
S_0xc0bee0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc501e0 .functor NOR 1, L_0xc50930, L_0xc509d0, C4<0>, C4<0>;
v0xc0c150_0 .net "A", 0 0, L_0xc50930;  alias, 1 drivers
v0xc0c210_0 .net "B", 0 0, L_0xc509d0;  alias, 1 drivers
v0xc0c320_0 .net "out", 0 0, L_0xc501e0;  1 drivers
S_0xc0c420 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc50270 .functor OR 1, L_0xc50930, L_0xc509d0, C4<0>, C4<0>;
v0xc0c640_0 .net "A", 0 0, L_0xc50930;  alias, 1 drivers
v0xc0c790_0 .net "B", 0 0, L_0xc509d0;  alias, 1 drivers
v0xc0c850_0 .net "out", 0 0, L_0xc50270;  1 drivers
S_0xc0c950 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4f9e0 .functor XOR 1, L_0xc509d0, L_0xc4fa50, C4<0>, C4<0>;
v0xc0cb20_0 .net "A", 0 0, L_0xc509d0;  alias, 1 drivers
v0xc0cc70_0 .net "B", 0 0, L_0xc4fa50;  1 drivers
v0xc0cd30_0 .net "out", 0 0, L_0xc4f9e0;  alias, 1 drivers
S_0xc0ce70 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc0a470;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4fff0 .functor XOR 1, L_0xc50930, L_0xc509d0, C4<0>, C4<0>;
v0xc0d040_0 .net "A", 0 0, L_0xc50930;  alias, 1 drivers
v0xc0d100_0 .net "B", 0 0, L_0xc509d0;  alias, 1 drivers
v0xc0d1c0_0 .net "out", 0 0, L_0xc4fff0;  1 drivers
S_0xc0dd50 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc516c0 .functor BUFZ 1, L_0xc50e70, C4<0>, C4<0>, C4<0>;
L_0xc51750 .functor BUFZ 1, L_0xc50e70, C4<0>, C4<0>, C4<0>;
v0xc10cc0_0 .net "A", 0 0, L_0xc51b90;  1 drivers
v0xc10d60_0 .net "B", 0 0, L_0xc51cc0;  1 drivers
v0xc10e20_0 .net "I", 7 0, L_0xc51870;  1 drivers
v0xc10f20_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc10fc0_0 .net *"_s15", 0 0, L_0xc516c0;  1 drivers
v0xc110d0_0 .net *"_s19", 0 0, L_0xc51750;  1 drivers
L_0x7f2ff0458330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc111b0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458330;  1 drivers
v0xc11290_0 .net "addORsub", 0 0, L_0xc50e70;  1 drivers
v0xc11330_0 .net "carryin", 0 0, L_0xc51e70;  1 drivers
v0xc11490_0 .net "carryout", 0 0, L_0xc100d0;  1 drivers
v0xc11560_0 .net "modB", 0 0, L_0xc4f970;  1 drivers
v0xc11600_0 .net "out", 0 0, L_0xc51560;  1 drivers
L_0xc50cb0 .part v0xb9e740_0, 0, 1;
LS_0xc51870_0_0 .concat8 [ 1 1 1 1], L_0xc516c0, L_0xc51750, L_0xc51250, L_0x7f2ff0458330;
LS_0xc51870_0_4 .concat8 [ 1 1 1 1], L_0xc105b0, L_0xc513d0, L_0xc51440, L_0xc514d0;
L_0xc51870 .concat8 [ 4 4 0 0], LS_0xc51870_0_0, LS_0xc51870_0_4;
S_0xc0dfc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc50d50 .functor XOR 1, L_0xc51b90, L_0xc4f970, C4<0>, C4<0>;
L_0xc50e70 .functor XOR 1, L_0xc50d50, L_0xc51e70, C4<0>, C4<0>;
L_0xc50f50 .functor AND 1, L_0xc50d50, L_0xc51e70, C4<1>, C4<1>;
L_0xc50fe0 .functor AND 1, L_0xc51b90, L_0xc4f970, C4<1>, C4<1>;
L_0xc100d0 .functor OR 1, L_0xc50f50, L_0xc50fe0, C4<0>, C4<0>;
v0xc0e260_0 .net "A", 0 0, L_0xc51b90;  alias, 1 drivers
v0xc0e340_0 .net "B", 0 0, L_0xc4f970;  alias, 1 drivers
v0xc0e400_0 .net "carryin", 0 0, L_0xc51e70;  alias, 1 drivers
v0xc0e4d0_0 .net "carryout", 0 0, L_0xc100d0;  alias, 1 drivers
v0xc0e590_0 .net "out1", 0 0, L_0xc50d50;  1 drivers
v0xc0e6a0_0 .net "out2", 0 0, L_0xc50f50;  1 drivers
v0xc0e760_0 .net "out3", 0 0, L_0xc50fe0;  1 drivers
v0xc0e820_0 .net "sum", 0 0, L_0xc50e70;  alias, 1 drivers
S_0xc0e980 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc105b0 .functor AND 1, L_0xc51b90, L_0xc51cc0, C4<1>, C4<1>;
v0xc0ebc0_0 .net "A", 0 0, L_0xc51b90;  alias, 1 drivers
v0xc0ec80_0 .net "B", 0 0, L_0xc51cc0;  alias, 1 drivers
v0xc0ed20_0 .net "out", 0 0, L_0xc105b0;  1 drivers
S_0xc0ee70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc0f0c0_0 .net "I", 7 0, L_0xc51870;  alias, 1 drivers
v0xc0f1a0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc0f260_0 .net "out", 0 0, L_0xc51560;  alias, 1 drivers
L_0xc51560 .part/v L_0xc51870, v0xb9e740_0, 1;
S_0xc0f3b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc513d0 .functor NAND 1, L_0xc51b90, L_0xc51cc0, C4<1>, C4<1>;
v0xc0f5d0_0 .net "A", 0 0, L_0xc51b90;  alias, 1 drivers
v0xc0f6e0_0 .net "B", 0 0, L_0xc51cc0;  alias, 1 drivers
v0xc0f7a0_0 .net "out", 0 0, L_0xc513d0;  1 drivers
S_0xc0f8b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc51440 .functor NOR 1, L_0xc51b90, L_0xc51cc0, C4<0>, C4<0>;
v0xc0fb20_0 .net "A", 0 0, L_0xc51b90;  alias, 1 drivers
v0xc0fbe0_0 .net "B", 0 0, L_0xc51cc0;  alias, 1 drivers
v0xc0fcf0_0 .net "out", 0 0, L_0xc51440;  1 drivers
S_0xc0fdf0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc514d0 .functor OR 1, L_0xc51b90, L_0xc51cc0, C4<0>, C4<0>;
v0xc10010_0 .net "A", 0 0, L_0xc51b90;  alias, 1 drivers
v0xc10160_0 .net "B", 0 0, L_0xc51cc0;  alias, 1 drivers
v0xc10220_0 .net "out", 0 0, L_0xc514d0;  1 drivers
S_0xc10320 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc4f970 .functor XOR 1, L_0xc51cc0, L_0xc50cb0, C4<0>, C4<0>;
v0xc104f0_0 .net "A", 0 0, L_0xc51cc0;  alias, 1 drivers
v0xc10640_0 .net "B", 0 0, L_0xc50cb0;  1 drivers
v0xc10700_0 .net "out", 0 0, L_0xc4f970;  alias, 1 drivers
S_0xc10840 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc0dd50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc51250 .functor XOR 1, L_0xc51b90, L_0xc51cc0, C4<0>, C4<0>;
v0xc10a10_0 .net "A", 0 0, L_0xc51b90;  alias, 1 drivers
v0xc10ad0_0 .net "B", 0 0, L_0xc51cc0;  alias, 1 drivers
v0xc10b90_0 .net "out", 0 0, L_0xc51250;  1 drivers
S_0xc11720 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc529f0 .functor BUFZ 1, L_0xc52150, C4<0>, C4<0>, C4<0>;
L_0xc52a80 .functor BUFZ 1, L_0xc52150, C4<0>, C4<0>, C4<0>;
v0xc14690_0 .net "A", 0 0, L_0xc52ec0;  1 drivers
v0xc14730_0 .net "B", 0 0, L_0xc52f60;  1 drivers
v0xc147f0_0 .net "I", 7 0, L_0xc52ba0;  1 drivers
v0xc148f0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc14990_0 .net *"_s15", 0 0, L_0xc529f0;  1 drivers
v0xc14aa0_0 .net *"_s19", 0 0, L_0xc52a80;  1 drivers
L_0x7f2ff0458378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc14b80_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458378;  1 drivers
v0xc14c60_0 .net "addORsub", 0 0, L_0xc52150;  1 drivers
v0xc14d00_0 .net "carryin", 0 0, L_0xc51f10;  1 drivers
v0xc14e60_0 .net "carryout", 0 0, L_0xc13aa0;  1 drivers
v0xc14f30_0 .net "modB", 0 0, L_0xc51c30;  1 drivers
v0xc14fd0_0 .net "out", 0 0, L_0xc52890;  1 drivers
L_0xc51fb0 .part v0xb9e740_0, 0, 1;
LS_0xc52ba0_0_0 .concat8 [ 1 1 1 1], L_0xc529f0, L_0xc52a80, L_0xc52580, L_0x7f2ff0458378;
LS_0xc52ba0_0_4 .concat8 [ 1 1 1 1], L_0xc13f80, L_0xc52700, L_0xc52770, L_0xc52800;
L_0xc52ba0 .concat8 [ 4 4 0 0], LS_0xc52ba0_0_0, LS_0xc52ba0_0_4;
S_0xc11990 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc52050 .functor XOR 1, L_0xc52ec0, L_0xc51c30, C4<0>, C4<0>;
L_0xc52150 .functor XOR 1, L_0xc52050, L_0xc51f10, C4<0>, C4<0>;
L_0xc52280 .functor AND 1, L_0xc52050, L_0xc51f10, C4<1>, C4<1>;
L_0xc52310 .functor AND 1, L_0xc52ec0, L_0xc51c30, C4<1>, C4<1>;
L_0xc13aa0 .functor OR 1, L_0xc52280, L_0xc52310, C4<0>, C4<0>;
v0xc11c30_0 .net "A", 0 0, L_0xc52ec0;  alias, 1 drivers
v0xc11d10_0 .net "B", 0 0, L_0xc51c30;  alias, 1 drivers
v0xc11dd0_0 .net "carryin", 0 0, L_0xc51f10;  alias, 1 drivers
v0xc11ea0_0 .net "carryout", 0 0, L_0xc13aa0;  alias, 1 drivers
v0xc11f60_0 .net "out1", 0 0, L_0xc52050;  1 drivers
v0xc12070_0 .net "out2", 0 0, L_0xc52280;  1 drivers
v0xc12130_0 .net "out3", 0 0, L_0xc52310;  1 drivers
v0xc121f0_0 .net "sum", 0 0, L_0xc52150;  alias, 1 drivers
S_0xc12350 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc13f80 .functor AND 1, L_0xc52ec0, L_0xc52f60, C4<1>, C4<1>;
v0xc12590_0 .net "A", 0 0, L_0xc52ec0;  alias, 1 drivers
v0xc12650_0 .net "B", 0 0, L_0xc52f60;  alias, 1 drivers
v0xc126f0_0 .net "out", 0 0, L_0xc13f80;  1 drivers
S_0xc12840 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc12a90_0 .net "I", 7 0, L_0xc52ba0;  alias, 1 drivers
v0xc12b70_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc12c30_0 .net "out", 0 0, L_0xc52890;  alias, 1 drivers
L_0xc52890 .part/v L_0xc52ba0, v0xb9e740_0, 1;
S_0xc12d80 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc52700 .functor NAND 1, L_0xc52ec0, L_0xc52f60, C4<1>, C4<1>;
v0xc12fa0_0 .net "A", 0 0, L_0xc52ec0;  alias, 1 drivers
v0xc130b0_0 .net "B", 0 0, L_0xc52f60;  alias, 1 drivers
v0xc13170_0 .net "out", 0 0, L_0xc52700;  1 drivers
S_0xc13280 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc52770 .functor NOR 1, L_0xc52ec0, L_0xc52f60, C4<0>, C4<0>;
v0xc134f0_0 .net "A", 0 0, L_0xc52ec0;  alias, 1 drivers
v0xc135b0_0 .net "B", 0 0, L_0xc52f60;  alias, 1 drivers
v0xc136c0_0 .net "out", 0 0, L_0xc52770;  1 drivers
S_0xc137c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc52800 .functor OR 1, L_0xc52ec0, L_0xc52f60, C4<0>, C4<0>;
v0xc139e0_0 .net "A", 0 0, L_0xc52ec0;  alias, 1 drivers
v0xc13b30_0 .net "B", 0 0, L_0xc52f60;  alias, 1 drivers
v0xc13bf0_0 .net "out", 0 0, L_0xc52800;  1 drivers
S_0xc13cf0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc51c30 .functor XOR 1, L_0xc52f60, L_0xc51fb0, C4<0>, C4<0>;
v0xc13ec0_0 .net "A", 0 0, L_0xc52f60;  alias, 1 drivers
v0xc14010_0 .net "B", 0 0, L_0xc51fb0;  1 drivers
v0xc140d0_0 .net "out", 0 0, L_0xc51c30;  alias, 1 drivers
S_0xc14210 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc11720;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc52580 .functor XOR 1, L_0xc52ec0, L_0xc52f60, C4<0>, C4<0>;
v0xc143e0_0 .net "A", 0 0, L_0xc52ec0;  alias, 1 drivers
v0xc144a0_0 .net "B", 0 0, L_0xc52f60;  alias, 1 drivers
v0xc14560_0 .net "out", 0 0, L_0xc52580;  1 drivers
S_0xc150f0 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc53c10 .functor BUFZ 1, L_0xc53370, C4<0>, C4<0>, C4<0>;
L_0xc53ca0 .functor BUFZ 1, L_0xc53370, C4<0>, C4<0>, C4<0>;
v0xc18060_0 .net "A", 0 0, L_0xc540e0;  1 drivers
v0xc18100_0 .net "B", 0 0, L_0xc53000;  1 drivers
v0xc181c0_0 .net "I", 7 0, L_0xc53dc0;  1 drivers
v0xc182c0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc18360_0 .net *"_s15", 0 0, L_0xc53c10;  1 drivers
v0xc18470_0 .net *"_s19", 0 0, L_0xc53ca0;  1 drivers
L_0x7f2ff04583c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc18550_0 .net/2s *"_s23", 0 0, L_0x7f2ff04583c0;  1 drivers
v0xc18630_0 .net "addORsub", 0 0, L_0xc53370;  1 drivers
v0xc186d0_0 .net "carryin", 0 0, L_0xc54240;  1 drivers
v0xc18830_0 .net "carryout", 0 0, L_0xc17470;  1 drivers
v0xc18900_0 .net "modB", 0 0, L_0xc53140;  1 drivers
v0xc189a0_0 .net "out", 0 0, L_0xc53ab0;  1 drivers
L_0xc531b0 .part v0xb9e740_0, 0, 1;
LS_0xc53dc0_0_0 .concat8 [ 1 1 1 1], L_0xc53c10, L_0xc53ca0, L_0xc537a0, L_0x7f2ff04583c0;
LS_0xc53dc0_0_4 .concat8 [ 1 1 1 1], L_0xc17950, L_0xc53920, L_0xc53990, L_0xc53a20;
L_0xc53dc0 .concat8 [ 4 4 0 0], LS_0xc53dc0_0_0, LS_0xc53dc0_0_4;
S_0xc15360 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc53250 .functor XOR 1, L_0xc540e0, L_0xc53140, C4<0>, C4<0>;
L_0xc53370 .functor XOR 1, L_0xc53250, L_0xc54240, C4<0>, C4<0>;
L_0xc534a0 .functor AND 1, L_0xc53250, L_0xc54240, C4<1>, C4<1>;
L_0xc53530 .functor AND 1, L_0xc540e0, L_0xc53140, C4<1>, C4<1>;
L_0xc17470 .functor OR 1, L_0xc534a0, L_0xc53530, C4<0>, C4<0>;
v0xc15600_0 .net "A", 0 0, L_0xc540e0;  alias, 1 drivers
v0xc156e0_0 .net "B", 0 0, L_0xc53140;  alias, 1 drivers
v0xc157a0_0 .net "carryin", 0 0, L_0xc54240;  alias, 1 drivers
v0xc15870_0 .net "carryout", 0 0, L_0xc17470;  alias, 1 drivers
v0xc15930_0 .net "out1", 0 0, L_0xc53250;  1 drivers
v0xc15a40_0 .net "out2", 0 0, L_0xc534a0;  1 drivers
v0xc15b00_0 .net "out3", 0 0, L_0xc53530;  1 drivers
v0xc15bc0_0 .net "sum", 0 0, L_0xc53370;  alias, 1 drivers
S_0xc15d20 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc17950 .functor AND 1, L_0xc540e0, L_0xc53000, C4<1>, C4<1>;
v0xc15f60_0 .net "A", 0 0, L_0xc540e0;  alias, 1 drivers
v0xc16020_0 .net "B", 0 0, L_0xc53000;  alias, 1 drivers
v0xc160c0_0 .net "out", 0 0, L_0xc17950;  1 drivers
S_0xc16210 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc16460_0 .net "I", 7 0, L_0xc53dc0;  alias, 1 drivers
v0xc16540_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc16600_0 .net "out", 0 0, L_0xc53ab0;  alias, 1 drivers
L_0xc53ab0 .part/v L_0xc53dc0, v0xb9e740_0, 1;
S_0xc16750 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc53920 .functor NAND 1, L_0xc540e0, L_0xc53000, C4<1>, C4<1>;
v0xc16970_0 .net "A", 0 0, L_0xc540e0;  alias, 1 drivers
v0xc16a80_0 .net "B", 0 0, L_0xc53000;  alias, 1 drivers
v0xc16b40_0 .net "out", 0 0, L_0xc53920;  1 drivers
S_0xc16c50 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc53990 .functor NOR 1, L_0xc540e0, L_0xc53000, C4<0>, C4<0>;
v0xc16ec0_0 .net "A", 0 0, L_0xc540e0;  alias, 1 drivers
v0xc16f80_0 .net "B", 0 0, L_0xc53000;  alias, 1 drivers
v0xc17090_0 .net "out", 0 0, L_0xc53990;  1 drivers
S_0xc17190 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc53a20 .functor OR 1, L_0xc540e0, L_0xc53000, C4<0>, C4<0>;
v0xc173b0_0 .net "A", 0 0, L_0xc540e0;  alias, 1 drivers
v0xc17500_0 .net "B", 0 0, L_0xc53000;  alias, 1 drivers
v0xc175c0_0 .net "out", 0 0, L_0xc53a20;  1 drivers
S_0xc176c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc53140 .functor XOR 1, L_0xc53000, L_0xc531b0, C4<0>, C4<0>;
v0xc17890_0 .net "A", 0 0, L_0xc53000;  alias, 1 drivers
v0xc179e0_0 .net "B", 0 0, L_0xc531b0;  1 drivers
v0xc17aa0_0 .net "out", 0 0, L_0xc53140;  alias, 1 drivers
S_0xc17be0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc150f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc537a0 .functor XOR 1, L_0xc540e0, L_0xc53000, C4<0>, C4<0>;
v0xc17db0_0 .net "A", 0 0, L_0xc540e0;  alias, 1 drivers
v0xc17e70_0 .net "B", 0 0, L_0xc53000;  alias, 1 drivers
v0xc17f30_0 .net "out", 0 0, L_0xc537a0;  1 drivers
S_0xc18ac0 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc54e60 .functor BUFZ 1, L_0xc545e0, C4<0>, C4<0>, C4<0>;
L_0xc54ef0 .functor BUFZ 1, L_0xc545e0, C4<0>, C4<0>, C4<0>;
v0xc1ba30_0 .net "A", 0 0, L_0xc55330;  1 drivers
v0xc1bad0_0 .net "B", 0 0, L_0xc553d0;  1 drivers
v0xc1bb90_0 .net "I", 7 0, L_0xc55010;  1 drivers
v0xc1bc90_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc1bd30_0 .net *"_s15", 0 0, L_0xc54e60;  1 drivers
v0xc1be40_0 .net *"_s19", 0 0, L_0xc54ef0;  1 drivers
L_0x7f2ff0458408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xc1bf20_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458408;  1 drivers
v0xc1c000_0 .net "addORsub", 0 0, L_0xc545e0;  1 drivers
v0xc1c0a0_0 .net "carryin", 0 0, L_0xc54370;  1 drivers
v0xc1c200_0 .net "carryout", 0 0, L_0xc1ae40;  1 drivers
v0xc1c2d0_0 .net "modB", 0 0, L_0xc54180;  1 drivers
v0xc1c370_0 .net "out", 0 0, L_0xc54d00;  1 drivers
L_0xc54440 .part v0xb9e740_0, 0, 1;
LS_0xc55010_0_0 .concat8 [ 1 1 1 1], L_0xc54e60, L_0xc54ef0, L_0xc549f0, L_0x7f2ff0458408;
LS_0xc55010_0_4 .concat8 [ 1 1 1 1], L_0xc1b320, L_0xc54b70, L_0xc54be0, L_0xc54c70;
L_0xc55010 .concat8 [ 4 4 0 0], LS_0xc55010_0_0, LS_0xc55010_0_4;
S_0xc18d30 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc544e0 .functor XOR 1, L_0xc55330, L_0xc54180, C4<0>, C4<0>;
L_0xc545e0 .functor XOR 1, L_0xc544e0, L_0xc54370, C4<0>, C4<0>;
L_0xc546f0 .functor AND 1, L_0xc544e0, L_0xc54370, C4<1>, C4<1>;
L_0xc54780 .functor AND 1, L_0xc55330, L_0xc54180, C4<1>, C4<1>;
L_0xc1ae40 .functor OR 1, L_0xc546f0, L_0xc54780, C4<0>, C4<0>;
v0xc18fd0_0 .net "A", 0 0, L_0xc55330;  alias, 1 drivers
v0xc190b0_0 .net "B", 0 0, L_0xc54180;  alias, 1 drivers
v0xc19170_0 .net "carryin", 0 0, L_0xc54370;  alias, 1 drivers
v0xc19240_0 .net "carryout", 0 0, L_0xc1ae40;  alias, 1 drivers
v0xc19300_0 .net "out1", 0 0, L_0xc544e0;  1 drivers
v0xc19410_0 .net "out2", 0 0, L_0xc546f0;  1 drivers
v0xc194d0_0 .net "out3", 0 0, L_0xc54780;  1 drivers
v0xc19590_0 .net "sum", 0 0, L_0xc545e0;  alias, 1 drivers
S_0xc196f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc1b320 .functor AND 1, L_0xc55330, L_0xc553d0, C4<1>, C4<1>;
v0xc19930_0 .net "A", 0 0, L_0xc55330;  alias, 1 drivers
v0xc199f0_0 .net "B", 0 0, L_0xc553d0;  alias, 1 drivers
v0xc19a90_0 .net "out", 0 0, L_0xc1b320;  1 drivers
S_0xc19be0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc19e30_0 .net "I", 7 0, L_0xc55010;  alias, 1 drivers
v0xc19f10_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc19fd0_0 .net "out", 0 0, L_0xc54d00;  alias, 1 drivers
L_0xc54d00 .part/v L_0xc55010, v0xb9e740_0, 1;
S_0xc1a120 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc54b70 .functor NAND 1, L_0xc55330, L_0xc553d0, C4<1>, C4<1>;
v0xc1a340_0 .net "A", 0 0, L_0xc55330;  alias, 1 drivers
v0xc1a450_0 .net "B", 0 0, L_0xc553d0;  alias, 1 drivers
v0xc1a510_0 .net "out", 0 0, L_0xc54b70;  1 drivers
S_0xc1a620 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc54be0 .functor NOR 1, L_0xc55330, L_0xc553d0, C4<0>, C4<0>;
v0xc1a890_0 .net "A", 0 0, L_0xc55330;  alias, 1 drivers
v0xc1a950_0 .net "B", 0 0, L_0xc553d0;  alias, 1 drivers
v0xc1aa60_0 .net "out", 0 0, L_0xc54be0;  1 drivers
S_0xc1ab60 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc54c70 .functor OR 1, L_0xc55330, L_0xc553d0, C4<0>, C4<0>;
v0xc1ad80_0 .net "A", 0 0, L_0xc55330;  alias, 1 drivers
v0xc1aed0_0 .net "B", 0 0, L_0xc553d0;  alias, 1 drivers
v0xc1af90_0 .net "out", 0 0, L_0xc54c70;  1 drivers
S_0xc1b090 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc54180 .functor XOR 1, L_0xc553d0, L_0xc54440, C4<0>, C4<0>;
v0xc1b260_0 .net "A", 0 0, L_0xc553d0;  alias, 1 drivers
v0xc1b3b0_0 .net "B", 0 0, L_0xc54440;  1 drivers
v0xc1b470_0 .net "out", 0 0, L_0xc54180;  alias, 1 drivers
S_0xc1b5b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc18ac0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc549f0 .functor XOR 1, L_0xc55330, L_0xc553d0, C4<0>, C4<0>;
v0xc1b780_0 .net "A", 0 0, L_0xc55330;  alias, 1 drivers
v0xc1b840_0 .net "B", 0 0, L_0xc553d0;  alias, 1 drivers
v0xc1b900_0 .net "out", 0 0, L_0xc549f0;  1 drivers
S_0xc1c490 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0xb786c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0xc56110 .functor BUFZ 1, L_0xc55890, C4<0>, C4<0>, C4<0>;
L_0xc561a0 .functor BUFZ 1, L_0xc55890, C4<0>, C4<0>, C4<0>;
v0xc1f400_0 .net "A", 0 0, L_0xc565e0;  1 drivers
v0xc1f4a0_0 .net "B", 0 0, L_0xc55470;  1 drivers
v0xc1f560_0 .net "I", 7 0, L_0xc562c0;  1 drivers
v0xc1f660_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xbe4dc0_0 .net *"_s15", 0 0, L_0xc56110;  1 drivers
v0xbe4ed0_0 .net *"_s19", 0 0, L_0xc561a0;  1 drivers
L_0x7f2ff0458450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0xbe4fb0_0 .net/2s *"_s23", 0 0, L_0x7f2ff0458450;  1 drivers
v0xbe5090_0 .net "addORsub", 0 0, L_0xc55890;  1 drivers
v0xbe5130_0 .net "carryin", 0 0, L_0xc56890;  1 drivers
v0xc1ffd0_0 .net "carryout", 0 0, L_0xc1e810;  1 drivers
v0xc200a0_0 .net "modB", 0 0, L_0xc50c20;  1 drivers
v0xc20140_0 .net "out", 0 0, L_0xc55fb0;  1 drivers
L_0xc556f0 .part v0xb9e740_0, 0, 1;
LS_0xc562c0_0_0 .concat8 [ 1 1 1 1], L_0xc56110, L_0xc561a0, L_0xc55ca0, L_0x7f2ff0458450;
LS_0xc562c0_0_4 .concat8 [ 1 1 1 1], L_0xc1ecf0, L_0xc55e20, L_0xc55e90, L_0xc55f20;
L_0xc562c0 .concat8 [ 4 4 0 0], LS_0xc562c0_0_0, LS_0xc562c0_0_4;
S_0xc1c700 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0xc55790 .functor XOR 1, L_0xc565e0, L_0xc50c20, C4<0>, C4<0>;
L_0xc55890 .functor XOR 1, L_0xc55790, L_0xc56890, C4<0>, C4<0>;
L_0xc559a0 .functor AND 1, L_0xc55790, L_0xc56890, C4<1>, C4<1>;
L_0xc55a30 .functor AND 1, L_0xc565e0, L_0xc50c20, C4<1>, C4<1>;
L_0xc1e810 .functor OR 1, L_0xc559a0, L_0xc55a30, C4<0>, C4<0>;
v0xc1c9a0_0 .net "A", 0 0, L_0xc565e0;  alias, 1 drivers
v0xc1ca80_0 .net "B", 0 0, L_0xc50c20;  alias, 1 drivers
v0xc1cb40_0 .net "carryin", 0 0, L_0xc56890;  alias, 1 drivers
v0xc1cc10_0 .net "carryout", 0 0, L_0xc1e810;  alias, 1 drivers
v0xc1ccd0_0 .net "out1", 0 0, L_0xc55790;  1 drivers
v0xc1cde0_0 .net "out2", 0 0, L_0xc559a0;  1 drivers
v0xc1cea0_0 .net "out3", 0 0, L_0xc55a30;  1 drivers
v0xc1cf60_0 .net "sum", 0 0, L_0xc55890;  alias, 1 drivers
S_0xc1d0c0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc1ecf0 .functor AND 1, L_0xc565e0, L_0xc55470, C4<1>, C4<1>;
v0xc1d300_0 .net "A", 0 0, L_0xc565e0;  alias, 1 drivers
v0xc1d3c0_0 .net "B", 0 0, L_0xc55470;  alias, 1 drivers
v0xc1d460_0 .net "out", 0 0, L_0xc1ecf0;  1 drivers
S_0xc1d5b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0xc1d800_0 .net "I", 7 0, L_0xc562c0;  alias, 1 drivers
v0xc1d8e0_0 .net "S", 2 0, v0xb9e740_0;  alias, 1 drivers
v0xc1d9a0_0 .net "out", 0 0, L_0xc55fb0;  alias, 1 drivers
L_0xc55fb0 .part/v L_0xc562c0, v0xb9e740_0, 1;
S_0xc1daf0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc55e20 .functor NAND 1, L_0xc565e0, L_0xc55470, C4<1>, C4<1>;
v0xc1dd10_0 .net "A", 0 0, L_0xc565e0;  alias, 1 drivers
v0xc1de20_0 .net "B", 0 0, L_0xc55470;  alias, 1 drivers
v0xc1dee0_0 .net "out", 0 0, L_0xc55e20;  1 drivers
S_0xc1dff0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc55e90 .functor NOR 1, L_0xc565e0, L_0xc55470, C4<0>, C4<0>;
v0xc1e260_0 .net "A", 0 0, L_0xc565e0;  alias, 1 drivers
v0xc1e320_0 .net "B", 0 0, L_0xc55470;  alias, 1 drivers
v0xc1e430_0 .net "out", 0 0, L_0xc55e90;  1 drivers
S_0xc1e530 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc55f20 .functor OR 1, L_0xc565e0, L_0xc55470, C4<0>, C4<0>;
v0xc1e750_0 .net "A", 0 0, L_0xc565e0;  alias, 1 drivers
v0xc1e8a0_0 .net "B", 0 0, L_0xc55470;  alias, 1 drivers
v0xc1e960_0 .net "out", 0 0, L_0xc55f20;  1 drivers
S_0xc1ea60 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc50c20 .functor XOR 1, L_0xc55470, L_0xc556f0, C4<0>, C4<0>;
v0xc1ec30_0 .net "A", 0 0, L_0xc55470;  alias, 1 drivers
v0xc1ed80_0 .net "B", 0 0, L_0xc556f0;  1 drivers
v0xc1ee40_0 .net "out", 0 0, L_0xc50c20;  alias, 1 drivers
S_0xc1ef80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0xc1c490;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0xc55ca0 .functor XOR 1, L_0xc565e0, L_0xc55470, C4<0>, C4<0>;
v0xc1f150_0 .net "A", 0 0, L_0xc565e0;  alias, 1 drivers
v0xc1f210_0 .net "B", 0 0, L_0xc55470;  alias, 1 drivers
v0xc1f2d0_0 .net "out", 0 0, L_0xc55ca0;  1 drivers
S_0xc229b0 .scope module, "mem" "memory" 4 50, 10 1 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "dmWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0xc37360 .functor BUFZ 32, L_0xc372c0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc37510 .functor BUFZ 32, L_0xc37420, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc376b0 .functor BUFZ 32, L_0xc37610, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc22c60_0 .net "Addr0", 31 0, L_0xc37770;  1 drivers
v0xc22d60_0 .net "DataIn0", 31 0, L_0xc4b9a0;  alias, 1 drivers
v0xc22e40_0 .net "DataOut0", 31 0, L_0xc37510;  alias, 1 drivers
v0xc22f30_0 .net *"_s0", 31 0, L_0xc372c0;  1 drivers
v0xc23010_0 .net *"_s4", 31 0, L_0xc37420;  1 drivers
v0xc23140_0 .net *"_s8", 31 0, L_0xc37610;  1 drivers
v0xc23220_0 .net "clk", 0 0, v0xc34c70_0;  alias, 1 drivers
v0xc232c0_0 .net "dmWE", 0 0, v0xb9e380_0;  alias, 1 drivers
v0xc23390_0 .net "instruct_Addr1", 31 0, L_0xc379b0;  1 drivers
v0xc234c0_0 .net "instruct_DataOut1", 31 0, L_0xc376b0;  alias, 1 drivers
v0xc235b0 .array "mem", 0 32767, 31 0;
v0xc23670_0 .net "memAtAdd", 31 0, L_0xc37360;  1 drivers
E_0xc22be0 .event posedge, v0xb88370_0;
L_0xc372c0 .array/port v0xc235b0, L_0xc37770;
L_0xc37420 .array/port v0xc235b0, L_0xc37770;
L_0xc37610 .array/port v0xc235b0, L_0xc379b0;
S_0xc23870 .scope module, "op_imm_mux" "mux2" 4 63, 11 1 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0xc23ab0_0 .net "input0", 31 0, v0xb83e40_0;  alias, 1 drivers
v0xc23b90_0 .net "input1", 31 0, L_0xc4b9a0;  alias, 1 drivers
v0xc23c60_0 .net "out", 31 0, L_0xc73f20;  alias, 1 drivers
v0xc23d60_0 .net "select0", 0 0, v0xb7f790_0;  alias, 1 drivers
L_0xc73f20 .functor MUXZ 32, L_0xc4b9a0, v0xb83e40_0, v0xb7f790_0, C4<>;
S_0xc23e80 .scope module, "pcmux" "pc_multiplexer" 4 47, 12 7 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0xc24150_0 .net "JumpAddress", 25 0, v0xb88730_0;  alias, 1 drivers
v0xc24260_0 .var "PC", 31 0;
v0xc24320_0 .net "S", 1 0, v0xba73d0_0;  alias, 1 drivers
v0xc24420_0 .net "clk", 0 0, v0xc34c70_0;  alias, 1 drivers
v0xc24510_0 .net "immediate", 31 0, v0xb83e40_0;  alias, 1 drivers
v0xc24650_0 .var "mux_out", 31 0;
v0xc24730_0 .var "nextPC", 31 0;
v0xc24810_0 .net "regRs", 31 0, L_0xc49150;  alias, 1 drivers
v0xc248d0_0 .var "tempimmediate", 31 0;
E_0xc240f0/0 .event edge, v0xba73d0_0, v0xc20260_0, v0xb83e40_0, v0xb88730_0;
E_0xc240f0/1 .event edge, v0xc24730_0;
E_0xc240f0 .event/or E_0xc240f0/0, E_0xc240f0/1;
S_0xc24b20 .scope module, "reg_in_mux" "mux3_32bit" 4 62, 11 21 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0xc24d20_0 .net *"_s1", 0 0, L_0xc73790;  1 drivers
v0xc24e20_0 .net *"_s10", 31 0, L_0xc73af0;  1 drivers
v0xc24f00_0 .net *"_s3", 0 0, L_0xc73830;  1 drivers
L_0x7f2ff0458b10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0xc24fc0_0 .net/2u *"_s4", 31 0, L_0x7f2ff0458b10;  1 drivers
v0xc250a0_0 .net *"_s6", 31 0, L_0xc73960;  1 drivers
v0xc251d0_0 .net *"_s9", 0 0, L_0xc73a50;  1 drivers
v0xc252b0_0 .net "input0", 31 0, L_0xc70410;  alias, 1 drivers
v0xc25370_0 .net "input1", 31 0, L_0xc37510;  alias, 1 drivers
v0xc25440_0 .net "input2", 31 0, L_0xc73d70;  1 drivers
v0xc25590_0 .net "out", 31 0, L_0xc73be0;  alias, 1 drivers
v0xc25670_0 .net "select0", 1 0, v0xb7b240_0;  alias, 1 drivers
L_0xc73790 .part v0xb7b240_0, 1, 1;
L_0xc73830 .part v0xb7b240_0, 0, 1;
L_0xc73960 .functor MUXZ 32, L_0xc73d70, L_0x7f2ff0458b10, L_0xc73830, C4<>;
L_0xc73a50 .part v0xb7b240_0, 0, 1;
L_0xc73af0 .functor MUXZ 32, L_0xc70410, L_0xc37510, L_0xc73a50, C4<>;
L_0xc73be0 .functor MUXZ 32, L_0xc73af0, L_0xc73960, L_0xc73790, C4<>;
S_0xc25810 .scope module, "reg_select_mux" "mux3_5bit" 4 61, 11 11 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0xc25a10_0 .net *"_s1", 0 0, L_0xc72830;  1 drivers
v0xc25b10_0 .net *"_s10", 4 0, L_0xc734c0;  1 drivers
v0xc25bf0_0 .net *"_s3", 0 0, L_0xc73290;  1 drivers
L_0x7f2ff0458a80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0xc25ce0_0 .net/2u *"_s4", 4 0, L_0x7f2ff0458a80;  1 drivers
v0xc25dc0_0 .net *"_s6", 4 0, L_0xc73330;  1 drivers
v0xc25ef0_0 .net *"_s9", 0 0, L_0xc73420;  1 drivers
v0xc25fd0_0 .net "input0", 4 0, v0xb7b620_0;  alias, 1 drivers
v0xc26090_0 .net "input1", 4 0, v0xb69770_0;  alias, 1 drivers
L_0x7f2ff0458ac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0xc26160_0 .net "input2", 4 0, L_0x7f2ff0458ac8;  1 drivers
v0xc262b0_0 .net "out", 4 0, L_0xc735b0;  alias, 1 drivers
v0xc26390_0 .net "select0", 1 0, v0xb84140_0;  alias, 1 drivers
L_0xc72830 .part v0xb84140_0, 1, 1;
L_0xc73290 .part v0xb84140_0, 0, 1;
L_0xc73330 .functor MUXZ 5, L_0x7f2ff0458ac8, L_0x7f2ff0458a80, L_0xc73290, C4<>;
L_0xc73420 .part v0xb84140_0, 0, 1;
L_0xc734c0 .functor MUXZ 5, v0xb7b620_0, v0xb69770_0, L_0xc73420, C4<>;
L_0xc735b0 .functor MUXZ 5, L_0xc734c0, L_0xc73330, L_0xc72830, C4<>;
S_0xc26530 .scope module, "regi" "regfile" 4 56, 13 12 0, S_0xb97270;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0xc2f9b0_0 .net "Clk", 0 0, v0xc34c70_0;  alias, 1 drivers
v0xc32900_0 .net "ReadData1", 31 0, L_0xc49150;  alias, 1 drivers
v0xc329a0_0 .net "ReadData2", 31 0, L_0xc4b9a0;  alias, 1 drivers
v0xc32a40_0 .net "ReadRegister1", 4 0, v0xb69b30_0;  alias, 1 drivers
v0xc32b30_0 .net "ReadRegister2", 4 0, v0xb69770_0;  alias, 1 drivers
v0xc32c20_0 .net "RegWrite", 0 0, v0xb7b1a0_0;  alias, 1 drivers
v0xc32d10_0 .net "WriteData", 31 0, L_0xc73be0;  alias, 1 drivers
v0xc32dd0_0 .net "WriteRegister", 4 0, L_0xc735b0;  alias, 1 drivers
v0xc32ec0_0 .net "decoded", 31 0, L_0xc47be0;  1 drivers
v0xc33010 .array "registers", 0 31, 31 0;
S_0xc26810 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0xc26530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0xc26a70_0 .net *"_s0", 31 0, L_0xc37aa0;  1 drivers
L_0x7f2ff0458060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0xc26b70_0 .net *"_s3", 30 0, L_0x7f2ff0458060;  1 drivers
v0xc26c50_0 .net "address", 4 0, L_0xc735b0;  alias, 1 drivers
v0xc26d20_0 .net "enable", 0 0, v0xb7b1a0_0;  alias, 1 drivers
v0xc26df0_0 .net "out", 31 0, L_0xc47be0;  alias, 1 drivers
L_0xc37aa0 .concat [ 1 31 0 0], v0xb7b1a0_0, L_0x7f2ff0458060;
L_0xc47be0 .shift/l 32, L_0xc37aa0, L_0xc735b0;
S_0xc26f60 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27150 .param/l "i" 0 13 33, +C4<01>;
S_0xc27210 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27400 .param/l "i" 0 13 33, +C4<010>;
S_0xc274a0 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27690 .param/l "i" 0 13 33, +C4<011>;
S_0xc27750 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27990 .param/l "i" 0 13 33, +C4<0100>;
S_0xc27a50 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27c40 .param/l "i" 0 13 33, +C4<0101>;
S_0xc27d00 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27ef0 .param/l "i" 0 13 33, +C4<0110>;
S_0xc27fb0 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc281a0 .param/l "i" 0 13 33, +C4<0111>;
S_0xc28260 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc27940 .param/l "i" 0 13 33, +C4<01000>;
S_0xc28550 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc28740 .param/l "i" 0 13 33, +C4<01001>;
S_0xc28800 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc289f0 .param/l "i" 0 13 33, +C4<01010>;
S_0xc28ab0 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc28ca0 .param/l "i" 0 13 33, +C4<01011>;
S_0xc28d60 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc28f50 .param/l "i" 0 13 33, +C4<01100>;
S_0xc29010 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc29200 .param/l "i" 0 13 33, +C4<01101>;
S_0xc292c0 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc294b0 .param/l "i" 0 13 33, +C4<01110>;
S_0xc29570 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc29760 .param/l "i" 0 13 33, +C4<01111>;
S_0xc29820 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc28450 .param/l "i" 0 13 33, +C4<010000>;
S_0xc29b70 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc29d40 .param/l "i" 0 13 33, +C4<010001>;
S_0xc29e00 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc29ff0 .param/l "i" 0 13 33, +C4<010010>;
S_0xc2a0b0 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2a2a0 .param/l "i" 0 13 33, +C4<010011>;
S_0xc2a360 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2a550 .param/l "i" 0 13 33, +C4<010100>;
S_0xc2a610 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2a800 .param/l "i" 0 13 33, +C4<010101>;
S_0xc2a8c0 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2aab0 .param/l "i" 0 13 33, +C4<010110>;
S_0xc2ab70 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2ad60 .param/l "i" 0 13 33, +C4<010111>;
S_0xc2ae20 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2b010 .param/l "i" 0 13 33, +C4<011000>;
S_0xc2b0d0 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2b2c0 .param/l "i" 0 13 33, +C4<011001>;
S_0xc2b380 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2b570 .param/l "i" 0 13 33, +C4<011010>;
S_0xc2b630 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2b820 .param/l "i" 0 13 33, +C4<011011>;
S_0xc2b8e0 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2bad0 .param/l "i" 0 13 33, +C4<011100>;
S_0xc2bb90 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2bd80 .param/l "i" 0 13 33, +C4<011101>;
S_0xc2be40 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2c030 .param/l "i" 0 13 33, +C4<011110>;
S_0xc2c0f0 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0xc26530;
 .timescale 0 0;
P_0xc2c2e0 .param/l "i" 0 13 33, +C4<011111>;
S_0xc2c3a0 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0xc26530;
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
L_0x7f2ff04580f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0xc47db0 .functor BUFZ 32, L_0x7f2ff04580f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_1 .array/port v0xc33010, 1;
L_0xc47e20 .functor BUFZ 32, v0xc33010_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_2 .array/port v0xc33010, 2;
L_0xc47e90 .functor BUFZ 32, v0xc33010_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_3 .array/port v0xc33010, 3;
L_0xc47f00 .functor BUFZ 32, v0xc33010_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_4 .array/port v0xc33010, 4;
L_0xc47f70 .functor BUFZ 32, v0xc33010_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_5 .array/port v0xc33010, 5;
L_0xc47fe0 .functor BUFZ 32, v0xc33010_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_6 .array/port v0xc33010, 6;
L_0xc48090 .functor BUFZ 32, v0xc33010_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_7 .array/port v0xc33010, 7;
L_0xc48100 .functor BUFZ 32, v0xc33010_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_8 .array/port v0xc33010, 8;
L_0xc48170 .functor BUFZ 32, v0xc33010_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_9 .array/port v0xc33010, 9;
L_0xc481e0 .functor BUFZ 32, v0xc33010_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_10 .array/port v0xc33010, 10;
L_0xc482b0 .functor BUFZ 32, v0xc33010_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_11 .array/port v0xc33010, 11;
L_0xc48320 .functor BUFZ 32, v0xc33010_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_12 .array/port v0xc33010, 12;
L_0xc48400 .functor BUFZ 32, v0xc33010_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_13 .array/port v0xc33010, 13;
L_0xc48470 .functor BUFZ 32, v0xc33010_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_14 .array/port v0xc33010, 14;
L_0xc48390 .functor BUFZ 32, v0xc33010_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_15 .array/port v0xc33010, 15;
L_0xc48560 .functor BUFZ 32, v0xc33010_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_16 .array/port v0xc33010, 16;
L_0xc48660 .functor BUFZ 32, v0xc33010_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_17 .array/port v0xc33010, 17;
L_0xc486d0 .functor BUFZ 32, v0xc33010_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_18 .array/port v0xc33010, 18;
L_0xc485d0 .functor BUFZ 32, v0xc33010_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_19 .array/port v0xc33010, 19;
L_0xc487e0 .functor BUFZ 32, v0xc33010_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_20 .array/port v0xc33010, 20;
L_0xc48740 .functor BUFZ 32, v0xc33010_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_21 .array/port v0xc33010, 21;
L_0xc48900 .functor BUFZ 32, v0xc33010_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_22 .array/port v0xc33010, 22;
L_0xc48850 .functor BUFZ 32, v0xc33010_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_23 .array/port v0xc33010, 23;
L_0xc48a30 .functor BUFZ 32, v0xc33010_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_24 .array/port v0xc33010, 24;
L_0xc48970 .functor BUFZ 32, v0xc33010_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_25 .array/port v0xc33010, 25;
L_0xc48b70 .functor BUFZ 32, v0xc33010_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_26 .array/port v0xc33010, 26;
L_0xc48aa0 .functor BUFZ 32, v0xc33010_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_27 .array/port v0xc33010, 27;
L_0xc48cc0 .functor BUFZ 32, v0xc33010_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_28 .array/port v0xc33010, 28;
L_0xc48be0 .functor BUFZ 32, v0xc33010_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_29 .array/port v0xc33010, 29;
L_0xc48c50 .functor BUFZ 32, v0xc33010_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_30 .array/port v0xc33010, 30;
L_0xc48e30 .functor BUFZ 32, v0xc33010_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0xc33010_31 .array/port v0xc33010, 31;
L_0xc48ea0 .functor BUFZ 32, v0xc33010_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49150 .functor BUFZ 32, L_0xc48d30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f2ff04580a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0xc29a10_0 .net *"_s101", 1 0, L_0x7f2ff04580a8;  1 drivers
v0xc2cbe0_0 .net *"_s96", 31 0, L_0xc48d30;  1 drivers
v0xc2cca0_0 .net *"_s98", 6 0, L_0xc49020;  1 drivers
v0xc2cd80_0 .net "address", 4 0, v0xb69b30_0;  alias, 1 drivers
v0xc2ce40_0 .net "input0", 31 0, L_0x7f2ff04580f0;  1 drivers
v0xc2cf50_0 .net "input1", 31 0, v0xc33010_1;  1 drivers
v0xc2cff0_0 .net "input10", 31 0, v0xc33010_10;  1 drivers
v0xc2d0b0_0 .net "input11", 31 0, v0xc33010_11;  1 drivers
v0xc2d190_0 .net "input12", 31 0, v0xc33010_12;  1 drivers
v0xc2d300_0 .net "input13", 31 0, v0xc33010_13;  1 drivers
v0xc2d3e0_0 .net "input14", 31 0, v0xc33010_14;  1 drivers
v0xc2d4c0_0 .net "input15", 31 0, v0xc33010_15;  1 drivers
v0xc2d5a0_0 .net "input16", 31 0, v0xc33010_16;  1 drivers
v0xc2d680_0 .net "input17", 31 0, v0xc33010_17;  1 drivers
v0xc2d760_0 .net "input18", 31 0, v0xc33010_18;  1 drivers
v0xc2d840_0 .net "input19", 31 0, v0xc33010_19;  1 drivers
v0xc2d920_0 .net "input2", 31 0, v0xc33010_2;  1 drivers
v0xc2dad0_0 .net "input20", 31 0, v0xc33010_20;  1 drivers
v0xc2db70_0 .net "input21", 31 0, v0xc33010_21;  1 drivers
v0xc2dc50_0 .net "input22", 31 0, v0xc33010_22;  1 drivers
v0xc2dd30_0 .net "input23", 31 0, v0xc33010_23;  1 drivers
v0xc2de10_0 .net "input24", 31 0, v0xc33010_24;  1 drivers
v0xc2def0_0 .net "input25", 31 0, v0xc33010_25;  1 drivers
v0xc2dfd0_0 .net "input26", 31 0, v0xc33010_26;  1 drivers
v0xc2e0b0_0 .net "input27", 31 0, v0xc33010_27;  1 drivers
v0xc2e190_0 .net "input28", 31 0, v0xc33010_28;  1 drivers
v0xc2e270_0 .net "input29", 31 0, v0xc33010_29;  1 drivers
v0xc2e350_0 .net "input3", 31 0, v0xc33010_3;  1 drivers
v0xc2e430_0 .net "input30", 31 0, v0xc33010_30;  1 drivers
v0xc2e510_0 .net "input31", 31 0, v0xc33010_31;  1 drivers
v0xc2e5f0_0 .net "input4", 31 0, v0xc33010_4;  1 drivers
v0xc2e6d0_0 .net "input5", 31 0, v0xc33010_5;  1 drivers
v0xc2e7b0_0 .net "input6", 31 0, v0xc33010_6;  1 drivers
v0xc2da00_0 .net "input7", 31 0, v0xc33010_7;  1 drivers
v0xc2ea80_0 .net "input8", 31 0, v0xc33010_8;  1 drivers
v0xc2eb60_0 .net "input9", 31 0, v0xc33010_9;  1 drivers
v0xc2ec40 .array "mux", 0 31;
v0xc2ec40_0 .net v0xc2ec40 0, 31 0, L_0xc47db0; 1 drivers
v0xc2ec40_1 .net v0xc2ec40 1, 31 0, L_0xc47e20; 1 drivers
v0xc2ec40_2 .net v0xc2ec40 2, 31 0, L_0xc47e90; 1 drivers
v0xc2ec40_3 .net v0xc2ec40 3, 31 0, L_0xc47f00; 1 drivers
v0xc2ec40_4 .net v0xc2ec40 4, 31 0, L_0xc47f70; 1 drivers
v0xc2ec40_5 .net v0xc2ec40 5, 31 0, L_0xc47fe0; 1 drivers
v0xc2ec40_6 .net v0xc2ec40 6, 31 0, L_0xc48090; 1 drivers
v0xc2ec40_7 .net v0xc2ec40 7, 31 0, L_0xc48100; 1 drivers
v0xc2ec40_8 .net v0xc2ec40 8, 31 0, L_0xc48170; 1 drivers
v0xc2ec40_9 .net v0xc2ec40 9, 31 0, L_0xc481e0; 1 drivers
v0xc2ec40_10 .net v0xc2ec40 10, 31 0, L_0xc482b0; 1 drivers
v0xc2ec40_11 .net v0xc2ec40 11, 31 0, L_0xc48320; 1 drivers
v0xc2ec40_12 .net v0xc2ec40 12, 31 0, L_0xc48400; 1 drivers
v0xc2ec40_13 .net v0xc2ec40 13, 31 0, L_0xc48470; 1 drivers
v0xc2ec40_14 .net v0xc2ec40 14, 31 0, L_0xc48390; 1 drivers
v0xc2ec40_15 .net v0xc2ec40 15, 31 0, L_0xc48560; 1 drivers
v0xc2ec40_16 .net v0xc2ec40 16, 31 0, L_0xc48660; 1 drivers
v0xc2ec40_17 .net v0xc2ec40 17, 31 0, L_0xc486d0; 1 drivers
v0xc2ec40_18 .net v0xc2ec40 18, 31 0, L_0xc485d0; 1 drivers
v0xc2ec40_19 .net v0xc2ec40 19, 31 0, L_0xc487e0; 1 drivers
v0xc2ec40_20 .net v0xc2ec40 20, 31 0, L_0xc48740; 1 drivers
v0xc2ec40_21 .net v0xc2ec40 21, 31 0, L_0xc48900; 1 drivers
v0xc2ec40_22 .net v0xc2ec40 22, 31 0, L_0xc48850; 1 drivers
v0xc2ec40_23 .net v0xc2ec40 23, 31 0, L_0xc48a30; 1 drivers
v0xc2ec40_24 .net v0xc2ec40 24, 31 0, L_0xc48970; 1 drivers
v0xc2ec40_25 .net v0xc2ec40 25, 31 0, L_0xc48b70; 1 drivers
v0xc2ec40_26 .net v0xc2ec40 26, 31 0, L_0xc48aa0; 1 drivers
v0xc2ec40_27 .net v0xc2ec40 27, 31 0, L_0xc48cc0; 1 drivers
v0xc2ec40_28 .net v0xc2ec40 28, 31 0, L_0xc48be0; 1 drivers
v0xc2ec40_29 .net v0xc2ec40 29, 31 0, L_0xc48c50; 1 drivers
v0xc2ec40_30 .net v0xc2ec40 30, 31 0, L_0xc48e30; 1 drivers
v0xc2ec40_31 .net v0xc2ec40 31, 31 0, L_0xc48ea0; 1 drivers
v0xc2f210_0 .net "out", 31 0, L_0xc49150;  alias, 1 drivers
L_0xc48d30 .array/port v0xc2ec40, L_0xc49020;
L_0xc49020 .concat [ 5 2 0 0], v0xb69b30_0, L_0x7f2ff04580a8;
S_0xc2f830 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0xc26530;
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
L_0x7f2ff0458180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0xc491c0 .functor BUFZ 32, L_0x7f2ff0458180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49230 .functor BUFZ 32, v0xc33010_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49330 .functor BUFZ 32, v0xc33010_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49430 .functor BUFZ 32, v0xc33010_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49560 .functor BUFZ 32, v0xc33010_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49690 .functor BUFZ 32, v0xc33010_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc497c0 .functor BUFZ 32, v0xc33010_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc498c0 .functor BUFZ 32, v0xc33010_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc499f0 .functor BUFZ 32, v0xc33010_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49b20 .functor BUFZ 32, v0xc33010_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49c50 .functor BUFZ 32, v0xc33010_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49d80 .functor BUFZ 32, v0xc33010_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49f20 .functor BUFZ 32, v0xc33010_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a050 .functor BUFZ 32, v0xc33010_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc49eb0 .functor BUFZ 32, v0xc33010_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a240 .functor BUFZ 32, v0xc33010_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a400 .functor BUFZ 32, v0xc33010_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a530 .functor BUFZ 32, v0xc33010_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a370 .functor BUFZ 32, v0xc33010_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a7c0 .functor BUFZ 32, v0xc33010_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a660 .functor BUFZ 32, v0xc33010_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4aa30 .functor BUFZ 32, v0xc33010_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4a8f0 .functor BUFZ 32, v0xc33010_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4acb0 .functor BUFZ 32, v0xc33010_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4ab60 .functor BUFZ 32, v0xc33010_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4af40 .functor BUFZ 32, v0xc33010_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4ade0 .functor BUFZ 32, v0xc33010_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4b1e0 .functor BUFZ 32, v0xc33010_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4b070 .functor BUFZ 32, v0xc33010_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4b460 .functor BUFZ 32, v0xc33010_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4b2e0 .functor BUFZ 32, v0xc33010_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4b6f0 .functor BUFZ 32, v0xc33010_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0xc4b9a0 .functor BUFZ 32, L_0xc4b560, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f2ff0458138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0xc2c7d0_0 .net *"_s101", 1 0, L_0x7f2ff0458138;  1 drivers
v0xc2fe50_0 .net *"_s96", 31 0, L_0xc4b560;  1 drivers
v0xc2ff50_0 .net *"_s98", 6 0, L_0xc4b900;  1 drivers
v0xc30010_0 .net "address", 4 0, v0xb69770_0;  alias, 1 drivers
v0xc30120_0 .net "input0", 31 0, L_0x7f2ff0458180;  1 drivers
v0xc30250_0 .net "input1", 31 0, v0xc33010_1;  alias, 1 drivers
v0xc30310_0 .net "input10", 31 0, v0xc33010_10;  alias, 1 drivers
v0xc303b0_0 .net "input11", 31 0, v0xc33010_11;  alias, 1 drivers
v0xc30450_0 .net "input12", 31 0, v0xc33010_12;  alias, 1 drivers
v0xc305b0_0 .net "input13", 31 0, v0xc33010_13;  alias, 1 drivers
v0xc30680_0 .net "input14", 31 0, v0xc33010_14;  alias, 1 drivers
v0xc30750_0 .net "input15", 31 0, v0xc33010_15;  alias, 1 drivers
v0xc30820_0 .net "input16", 31 0, v0xc33010_16;  alias, 1 drivers
v0xc308f0_0 .net "input17", 31 0, v0xc33010_17;  alias, 1 drivers
v0xc309c0_0 .net "input18", 31 0, v0xc33010_18;  alias, 1 drivers
v0xc30a90_0 .net "input19", 31 0, v0xc33010_19;  alias, 1 drivers
v0xc30b60_0 .net "input2", 31 0, v0xc33010_2;  alias, 1 drivers
v0xc30d10_0 .net "input20", 31 0, v0xc33010_20;  alias, 1 drivers
v0xc30db0_0 .net "input21", 31 0, v0xc33010_21;  alias, 1 drivers
v0xc30e50_0 .net "input22", 31 0, v0xc33010_22;  alias, 1 drivers
v0xc30f20_0 .net "input23", 31 0, v0xc33010_23;  alias, 1 drivers
v0xc30ff0_0 .net "input24", 31 0, v0xc33010_24;  alias, 1 drivers
v0xc310c0_0 .net "input25", 31 0, v0xc33010_25;  alias, 1 drivers
v0xc31190_0 .net "input26", 31 0, v0xc33010_26;  alias, 1 drivers
v0xc31260_0 .net "input27", 31 0, v0xc33010_27;  alias, 1 drivers
v0xc31330_0 .net "input28", 31 0, v0xc33010_28;  alias, 1 drivers
v0xc31400_0 .net "input29", 31 0, v0xc33010_29;  alias, 1 drivers
v0xc314d0_0 .net "input3", 31 0, v0xc33010_3;  alias, 1 drivers
v0xc315a0_0 .net "input30", 31 0, v0xc33010_30;  alias, 1 drivers
v0xc31670_0 .net "input31", 31 0, v0xc33010_31;  alias, 1 drivers
v0xc31740_0 .net "input4", 31 0, v0xc33010_4;  alias, 1 drivers
v0xc31810_0 .net "input5", 31 0, v0xc33010_5;  alias, 1 drivers
v0xc318e0_0 .net "input6", 31 0, v0xc33010_6;  alias, 1 drivers
v0xc30c30_0 .net "input7", 31 0, v0xc33010_7;  alias, 1 drivers
v0xc31b90_0 .net "input8", 31 0, v0xc33010_8;  alias, 1 drivers
v0xc31c60_0 .net "input9", 31 0, v0xc33010_9;  alias, 1 drivers
v0xc31d30 .array "mux", 0 31;
v0xc31d30_0 .net v0xc31d30 0, 31 0, L_0xc491c0; 1 drivers
v0xc31d30_1 .net v0xc31d30 1, 31 0, L_0xc49230; 1 drivers
v0xc31d30_2 .net v0xc31d30 2, 31 0, L_0xc49330; 1 drivers
v0xc31d30_3 .net v0xc31d30 3, 31 0, L_0xc49430; 1 drivers
v0xc31d30_4 .net v0xc31d30 4, 31 0, L_0xc49560; 1 drivers
v0xc31d30_5 .net v0xc31d30 5, 31 0, L_0xc49690; 1 drivers
v0xc31d30_6 .net v0xc31d30 6, 31 0, L_0xc497c0; 1 drivers
v0xc31d30_7 .net v0xc31d30 7, 31 0, L_0xc498c0; 1 drivers
v0xc31d30_8 .net v0xc31d30 8, 31 0, L_0xc499f0; 1 drivers
v0xc31d30_9 .net v0xc31d30 9, 31 0, L_0xc49b20; 1 drivers
v0xc31d30_10 .net v0xc31d30 10, 31 0, L_0xc49c50; 1 drivers
v0xc31d30_11 .net v0xc31d30 11, 31 0, L_0xc49d80; 1 drivers
v0xc31d30_12 .net v0xc31d30 12, 31 0, L_0xc49f20; 1 drivers
v0xc31d30_13 .net v0xc31d30 13, 31 0, L_0xc4a050; 1 drivers
v0xc31d30_14 .net v0xc31d30 14, 31 0, L_0xc49eb0; 1 drivers
v0xc31d30_15 .net v0xc31d30 15, 31 0, L_0xc4a240; 1 drivers
v0xc31d30_16 .net v0xc31d30 16, 31 0, L_0xc4a400; 1 drivers
v0xc31d30_17 .net v0xc31d30 17, 31 0, L_0xc4a530; 1 drivers
v0xc31d30_18 .net v0xc31d30 18, 31 0, L_0xc4a370; 1 drivers
v0xc31d30_19 .net v0xc31d30 19, 31 0, L_0xc4a7c0; 1 drivers
v0xc31d30_20 .net v0xc31d30 20, 31 0, L_0xc4a660; 1 drivers
v0xc31d30_21 .net v0xc31d30 21, 31 0, L_0xc4aa30; 1 drivers
v0xc31d30_22 .net v0xc31d30 22, 31 0, L_0xc4a8f0; 1 drivers
v0xc31d30_23 .net v0xc31d30 23, 31 0, L_0xc4acb0; 1 drivers
v0xc31d30_24 .net v0xc31d30 24, 31 0, L_0xc4ab60; 1 drivers
v0xc31d30_25 .net v0xc31d30 25, 31 0, L_0xc4af40; 1 drivers
v0xc31d30_26 .net v0xc31d30 26, 31 0, L_0xc4ade0; 1 drivers
v0xc31d30_27 .net v0xc31d30 27, 31 0, L_0xc4b1e0; 1 drivers
v0xc31d30_28 .net v0xc31d30 28, 31 0, L_0xc4b070; 1 drivers
v0xc31d30_29 .net v0xc31d30 29, 31 0, L_0xc4b460; 1 drivers
v0xc31d30_30 .net v0xc31d30 30, 31 0, L_0xc4b2e0; 1 drivers
v0xc31d30_31 .net v0xc31d30 31, 31 0, L_0xc4b6f0; 1 drivers
v0xc322e0_0 .net "out", 31 0, L_0xc4b9a0;  alias, 1 drivers
L_0xc4b560 .array/port v0xc31d30, L_0xc4b900;
L_0xc4b900 .concat [ 5 2 0 0], v0xb69770_0, L_0x7f2ff0458138;
S_0xb50dd0 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f2ff04b8b08 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0xc35eb0_0 .net "address", 4 0, o0x7f2ff04b8b08;  0 drivers
o0x7f2ff04b8b38 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0xc35fb0_0 .net "inputs", 31 0, o0x7f2ff04b8b38;  0 drivers
v0xc36090_0 .net "out", 0 0, L_0xc73fc0;  1 drivers
L_0xc73fc0 .part/v o0x7f2ff04b8b38, o0x7f2ff04b8b08, 1;
S_0xb4c740 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f2ff04b8c28 .functor BUFZ 1, C4<z>; HiZ drive
v0xc361d0_0 .net "clk", 0 0, o0x7f2ff04b8c28;  0 drivers
o0x7f2ff04b8c58 .functor BUFZ 1, C4<z>; HiZ drive
v0xc362b0_0 .net "d", 0 0, o0x7f2ff04b8c58;  0 drivers
v0xc36370_0 .var "q", 0 0;
o0x7f2ff04b8cb8 .functor BUFZ 1, C4<z>; HiZ drive
v0xc36410_0 .net "wrenable", 0 0, o0x7f2ff04b8cb8;  0 drivers
E_0xba7080 .event posedge, v0xc361d0_0;
S_0xbb5e60 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f2ff04b8da8 .functor BUFZ 1, C4<z>; HiZ drive
v0xc36590_0 .net "clk", 0 0, o0x7f2ff04b8da8;  0 drivers
o0x7f2ff04b8dd8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0xc36670_0 .net "d", 31 0, o0x7f2ff04b8dd8;  0 drivers
v0xc36750_0 .var "q", 31 0;
o0x7f2ff04b8e38 .functor BUFZ 1, C4<z>; HiZ drive
v0xc36810_0 .net "wrenable", 0 0, o0x7f2ff04b8e38;  0 drivers
E_0xc30cd0 .event posedge, v0xc36590_0;
S_0xbb17c0 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f2ff04b8f28 .functor BUFZ 1, C4<z>; HiZ drive
v0xc369d0_0 .net "clk", 0 0, o0x7f2ff04b8f28;  0 drivers
o0x7f2ff04b8f58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0xc36ab0_0 .net "d", 31 0, o0x7f2ff04b8f58;  0 drivers
v0xc36b90_0 .var "q", 31 0;
o0x7f2ff04b8fb8 .functor BUFZ 1, C4<z>; HiZ drive
v0xc36c50_0 .net "wrenable", 0 0, o0x7f2ff04b8fb8;  0 drivers
E_0xc36950 .event posedge, v0xc369d0_0;
    .scope S_0xc23e80;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0xc24260_0, 0;
    %end;
    .thread T_0;
    .scope S_0xc23e80;
T_1 ;
    %wait E_0xc240f0;
    %load/vec4 v0xc24260_0;
    %addi 4, 0, 32;
    %store/vec4 v0xc24730_0, 0, 32;
    %load/vec4 v0xc24320_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0xc24730_0;
    %assign/vec4 v0xc24650_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0xc24320_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0xc24150_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xc24650_0, 4, 5;
    %load/vec4 v0xc24730_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xc24650_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0xc24650_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0xc24320_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0xc24510_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0xc248d0_0, 0, 32;
    %load/vec4 v0xc248d0_0;
    %load/vec4 v0xc24730_0;
    %add;
    %assign/vec4 v0xc24650_0, 0;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0xc24810_0;
    %assign/vec4 v0xc24650_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0xc23e80;
T_2 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc24650_0;
    %store/vec4 v0xc24260_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0xb92be0;
T_3 ;
    %wait E_0xb2ccc0;
    %load/vec4 v0xba2d30_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xba6f60_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0xba73d0_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0xba2d30_0;
    %pushi/vec4 4, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xba2970_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.2, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xba73d0_0, 0, 2;
    %vpi_call 5 17 "$display", "I AM GOING TO BRANCH ON EQUAL: Flag = %b", v0xba2970_0 {0 0 0};
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0xba2d30_0;
    %pushi/vec4 5, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0xba2970_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xba73d0_0, 0, 2;
    %vpi_call 5 18 "$display", "I AM GOING TO BRANCH ON NOT EQUAL: Flag = %b", v0xba2970_0 {0 0 0};
    %jmp T_3.5;
T_3.4 ;
    %load/vec4 v0xba2d30_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0xba2d30_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.6, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xba73d0_0, 0, 2;
    %jmp T_3.7;
T_3.6 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xba73d0_0, 0, 2;
T_3.7 ;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %vpi_call 5 21 "$display", "grrr,opcode: %b, zeroflag: %b, controlSig: %b", v0xba2d30_0, v0xba2970_0, v0xba73d0_0 {0 0 0};
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0xc229b0;
T_4 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc232c0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0xc22d60_0;
    %ix/getv 3, v0xc22c60_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc235b0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0xc229b0;
T_5 ;
    %vpi_call 10 20 "$readmemh", "cpuSubmodules/hexTxt/fib2.text", v0xc235b0 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0xb8e550;
T_6 ;
    %wait E_0xb3da40;
    %load/vec4 v0xb7fb50_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xb83e40_0, 4, 16;
    %jmp T_6.1;
T_6.0 ;
    %pushi/vec4 65535, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xb83e40_0, 4, 16;
T_6.1 ;
    %load/vec4 v0xb7fb50_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0xb7f850_0, 0, 6;
    %load/vec4 v0xb7fb50_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0xb83d80_0, 0, 6;
    %load/vec4 v0xb7fb50_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0xb69b30_0, 0, 5;
    %load/vec4 v0xb7fb50_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0xb69770_0, 0, 5;
    %load/vec4 v0xb7fb50_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0xb7b620_0, 0, 5;
    %load/vec4 v0xb7fb50_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0xb69810_0, 0, 6;
    %load/vec4 v0xb7fb50_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0xb83e40_0, 4, 16;
    %load/vec4 v0xb7fb50_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0xb88730_0, 0, 26;
    %load/vec4 v0xb7f850_0;
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
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.5 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.6 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.8 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.9 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0xb83d80_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0xb83d80_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0xb83d80_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
    %jmp T_6.17;
T_6.16 ;
    %load/vec4 v0xb83d80_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.18, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7b1a0_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0xb9e740_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7f790_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e380_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb84140_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0xb7b240_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb9e440_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0xb7b560_0, 0, 2;
T_6.18 ;
T_6.17 ;
T_6.15 ;
T_6.13 ;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0xc26f60;
T_7 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0xc27210;
T_8 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0xc274a0;
T_9 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0xc27750;
T_10 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0xc27a50;
T_11 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0xc27d00;
T_12 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0xc27fb0;
T_13 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0xc28260;
T_14 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0xc28550;
T_15 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0xc28800;
T_16 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0xc28ab0;
T_17 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0xc28d60;
T_18 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0xc29010;
T_19 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0xc292c0;
T_20 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0xc29570;
T_21 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0xc29820;
T_22 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0xc29b70;
T_23 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0xc29e00;
T_24 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0xc2a0b0;
T_25 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0xc2a360;
T_26 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0xc2a610;
T_27 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0xc2a8c0;
T_28 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0xc2ab70;
T_29 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0xc2ae20;
T_30 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0xc2b0d0;
T_31 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0xc2b380;
T_32 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0xc2b630;
T_33 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0xc2b8e0;
T_34 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0xc2bb90;
T_35 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0xc2be40;
T_36 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0xc2c0f0;
T_37 ;
    %wait E_0xc22be0;
    %load/vec4 v0xc32ec0_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0xc32d10_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0xc33010, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0xb55460;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xc34c70_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0xb55460;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0xc34c70_0;
    %nor/r;
    %store/vec4 v0xc34c70_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0xb55460;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0xc35d50_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0xc35e10_0 {0 0 0};
    %delay 1000000, 0;
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0xb4c740;
T_41 ;
    %wait E_0xba7080;
    %load/vec4 v0xc36410_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0xc362b0_0;
    %assign/vec4 v0xc36370_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0xbb5e60;
T_42 ;
    %wait E_0xc30cd0;
    %load/vec4 v0xc36810_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0xc36670_0;
    %assign/vec4 v0xc36750_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0xbb17c0;
T_43 ;
    %wait E_0xc36950;
    %load/vec4 v0xc36c50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0xc36b90_0, 0;
T_43.0 ;
    %jmp T_43;
    .thread T_43;
# The file index is used to find the file name in the following table.
:file_names 17;
    "N/A";
    "<interactive>";
    "./cpuSubmodules/ALU/operations/add_sub.v";
    "cpu.t.v";
    "./singlecycleCPU.v";
    "./cpuSubmodules/pcController.v";
    "./cpuSubmodules/instruction_decoder.v";
    "./cpuSubmodules/ALU/alu.v";
    "./cpuSubmodules/ALU/operations/gates.v";
    "./cpuSubmodules/ALU/operations/multiplexer.v";
    "./cpuSubmodules/memory.v";
    "./cpuSubmodules/muxes.v";
    "./cpuSubmodules/pc_multiplexer.v";
    "./cpuSubmodules/regfile.v";
    "./cpuSubmodules/decoders.v";
    "./cpuSubmodules/mux.v";
    "./cpuSubmodules/register.v";
