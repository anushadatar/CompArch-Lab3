#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x12267e0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7fc1d7c31018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7fc1d7c31048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x13661b0 .functor XOR 1, o0x7fc1d7c31018, o0x7fc1d7c31048, C4<0>, C4<0>;
o0x7fc1d7c31078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1366240 .functor XOR 1, L_0x13661b0, o0x7fc1d7c31078, C4<0>, C4<0>;
L_0x1366300 .functor AND 1, L_0x13661b0, o0x7fc1d7c31078, C4<1>, C4<1>;
L_0x13663c0 .functor AND 1, o0x7fc1d7c31018, o0x7fc1d7c31048, C4<1>, C4<1>;
L_0x13664d0 .functor OR 1, L_0x1366300, L_0x13663c0, C4<0>, C4<0>;
L_0x13665e0 .functor XOR 1, L_0x13664d0, o0x7fc1d7c31078, C4<0>, C4<0>;
v0x1230fa0_0 .net "A", 0 0, o0x7fc1d7c31018;  0 drivers
v0x126d0b0_0 .net "B", 0 0, o0x7fc1d7c31048;  0 drivers
v0x12d6630_0 .net "carryin", 0 0, o0x7fc1d7c31078;  0 drivers
v0x12d6270_0 .net "carryout", 0 0, L_0x13664d0;  1 drivers
v0x12d6330_0 .net "out1", 0 0, L_0x13661b0;  1 drivers
v0x12d2040_0 .net "out2", 0 0, L_0x1366300;  1 drivers
v0x12d2100_0 .net "out3", 0 0, L_0x13663c0;  1 drivers
v0x12d1c80_0 .net "overflow", 0 0, L_0x13665e0;  1 drivers
v0x12d1d40_0 .net "sum", 0 0, L_0x1366240;  1 drivers
S_0x1288d80 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x1364060_0 .var "clk", 0 0;
v0x13651b0_0 .net "dataMem", 31 0, L_0x1366780;  1 drivers
v0x1365270_0 .net "regRT", 31 0, L_0x137ac50;  1 drivers
S_0x12e0a10 .scope module, "cpu" "singlecycleCPU" 3 9, 4 21 0, S_0x1288d80;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x13630f0_0 .net "ALU_op", 2 0, v0x12b3060_0;  1 drivers
v0x13631d0_0 .net "DM_WE", 0 0, v0x12aee30_0;  1 drivers
v0x1363290_0 .net "DM_add", 0 0, v0x12aeef0_0;  1 drivers
v0x1363330_0 .net "JumpAddress", 25 0, v0x12aea70_0;  1 drivers
v0x1363420_0 .net "PC", 31 0, v0x13536d0_0;  1 drivers
v0x1363510_0 .net "S", 1 0, v0x12bc0b0_0;  1 drivers
L_0x7fc1d7be8b58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x13635b0_0 .net/2u *"_s10", 31 0, L_0x7fc1d7be8b58;  1 drivers
v0x1363650_0 .net *"_s4", 29 0, L_0x1366bd0;  1 drivers
L_0x7fc1d7be8018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1363730_0 .net *"_s6", 1 0, L_0x7fc1d7be8018;  1 drivers
v0x13638a0_0 .net "alu2", 31 0, L_0x13a2ef0;  1 drivers
v0x1363960_0 .net "alu_out", 31 0, L_0x139f3e0;  1 drivers
v0x1363a70_0 .net "clk", 0 0, v0x1364060_0;  1 drivers
v0x1363ba0_0 .net "co_flag", 0 0, L_0x1337830;  1 drivers
v0x1363cd0_0 .net "dataMem", 31 0, L_0x1366780;  alias, 1 drivers
v0x1363d90_0 .net "dest_add", 1 0, v0x1298a80_0;  1 drivers
v0x1363e50_0 .net "funct", 5 0, v0x1294850_0;  1 drivers
v0x1363f60_0 .net "immediate", 31 0, v0x1294910_0;  1 drivers
v0x1364110_0 .net "instruction", 31 0, L_0x1366920;  1 drivers
v0x13641b0_0 .net "op_imm", 0 0, v0x1290260_0;  1 drivers
v0x13642a0_0 .net "opcode", 5 0, v0x1290320_0;  1 drivers
v0x13643b0_0 .net "ov_flag", 0 0, L_0x139ef90;  1 drivers
v0x13644e0_0 .net "pc", 1 0, v0x128fea0_0;  1 drivers
v0x13645a0_0 .net "rd", 4 0, v0x128ff60_0;  1 drivers
v0x13646b0_0 .net "regRS", 31 0, L_0x13783d0;  1 drivers
v0x1364800_0 .net "regRT", 31 0, L_0x137ac50;  alias, 1 drivers
v0x1364950_0 .net "reg_WE", 0 0, v0x128a210_0;  1 drivers
v0x13649f0_0 .net "reg_in", 1 0, v0x128a2b0_0;  1 drivers
v0x1364ab0_0 .net "reg_in_mux_out", 31 0, L_0x13a2bb0;  1 drivers
v0x1364b70_0 .net "reg_select_mux_out", 4 0, L_0x13a2580;  1 drivers
v0x1364c30_0 .net "rs", 4 0, v0x1285b80_0;  1 drivers
v0x1364cf0_0 .net "rt", 4 0, v0x12814f0_0;  1 drivers
v0x1364e40_0 .net "shamt", 5 0, v0x1281590_0;  1 drivers
v0x1364f00_0 .net "zero_flag", 0 0, L_0x139e3e0;  1 drivers
L_0x13669e0 .arith/sum 32, v0x1294910_0, L_0x13783d0;
L_0x1366bd0 .part v0x13536d0_0, 2, 30;
L_0x1366c70 .concat [ 30 2 0 0], L_0x1366bd0, L_0x7fc1d7be8018;
L_0x13a2d40 .arith/sum 32, v0x13536d0_0, L_0x7fc1d7be8b58;
S_0x12ce320 .scope module, "controlPC" "pcController" 4 54, 5 8 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x12bc0b0_0 .var "controlSig", 1 0;
v0x12bbc40_0 .net "function1", 5 0, v0x1294850_0;  alias, 1 drivers
v0x12b7a10_0 .net "opcode", 5 0, v0x1290320_0;  alias, 1 drivers
v0x12b7650_0 .net "zeroFlag", 0 0, L_0x139e3e0;  alias, 1 drivers
E_0x125b9d0 .event edge, v0x12b7a10_0;
S_0x12cab70 .scope module, "decode" "instructionDecoder" 4 58, 6 20 0, S_0x12e0a10;
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
v0x12b3060_0 .var "ALU_op", 2 0;
v0x12aee30_0 .var "DM_WE", 0 0;
v0x12aeef0_0 .var "DM_add", 0 0;
v0x12aea70_0 .var "address", 25 0;
v0x1298e40_0 .net "clk", 0 0, v0x1364060_0;  alias, 1 drivers
v0x1298a80_0 .var "dest_add", 1 0;
v0x1294850_0 .var "funct", 5 0;
v0x1294910_0 .var "immediate", 31 0;
v0x1294490_0 .net "instruction", 31 0, L_0x1366920;  alias, 1 drivers
v0x1290260_0 .var "op_imm", 0 0;
v0x1290320_0 .var "opcode", 5 0;
v0x128fea0_0 .var "pc", 1 0;
v0x128ff60_0 .var "rd", 4 0;
v0x128a210_0 .var "reg_WE", 0 0;
v0x128a2b0_0 .var "reg_in", 1 0;
v0x1285b80_0 .var "rs", 4 0;
v0x12814f0_0 .var "rt", 4 0;
v0x1281590_0 .var "shamt", 5 0;
E_0x12b34c0 .event edge, v0x1294490_0;
S_0x12c64e0 .scope module, "lulu" "ALU" 4 64, 7 105 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x139e3e0/0/0 .functor OR 1, L_0x138db50, L_0x139f630, L_0x139f6d0, L_0x139f7c0;
L_0x139e3e0/0/4 .functor OR 1, L_0x13a0090, L_0x138dc40, L_0x139fd50, L_0x139fe40;
L_0x139e3e0/0/8 .functor OR 1, L_0x139ff30, L_0x13a05a0, L_0x13a0240, L_0x13a0330;
L_0x139e3e0/0/12 .functor OR 1, L_0x13a0420, L_0x13a0130, L_0x13a0640, L_0x13a0730;
L_0x139e3e0/0/16 .functor OR 1, L_0x13a0820, L_0x13a0910, L_0x13a0f80, L_0x13a1020;
L_0x139e3e0/0/20 .functor OR 1, L_0x13a0bd0, L_0x13a0cc0, L_0x13a0db0, L_0x13a0ea0;
L_0x139e3e0/0/24 .functor OR 1, L_0x13a1110, L_0x13a1200, L_0x13a12f0, L_0x13a13e0;
L_0x139e3e0/0/28 .functor OR 1, L_0x13a1930, L_0x13a09c0, L_0x13a0ab0, L_0x13a1530;
L_0x139e3e0/0/32 .functor OR 1, L_0x13a1620, L_0x13a1710, C4<0>, C4<0>;
L_0x139e3e0/1/0 .functor OR 1, L_0x139e3e0/0/0, L_0x139e3e0/0/4, L_0x139e3e0/0/8, L_0x139e3e0/0/12;
L_0x139e3e0/1/4 .functor OR 1, L_0x139e3e0/0/16, L_0x139e3e0/0/20, L_0x139e3e0/0/24, L_0x139e3e0/0/28;
L_0x139e3e0/1/8 .functor OR 1, L_0x139e3e0/0/32, C4<0>, C4<0>, C4<0>;
L_0x139e3e0 .functor NOR 1, L_0x139e3e0/1/0, L_0x139e3e0/1/4, L_0x139e3e0/1/8, C4<0>;
v0x134f7b0_0 .net "A", 31 0, L_0x13783d0;  alias, 1 drivers
v0x134f8b0_0 .net "B", 31 0, L_0x13a2ef0;  alias, 1 drivers
v0x134f990_0 .net *"_s322", 0 0, L_0x138db50;  1 drivers
v0x134fa80_0 .net *"_s324", 0 0, L_0x139f630;  1 drivers
v0x134fb60_0 .net *"_s326", 0 0, L_0x139f6d0;  1 drivers
v0x134fc90_0 .net *"_s328", 0 0, L_0x139f7c0;  1 drivers
v0x134fd70_0 .net *"_s330", 0 0, L_0x13a0090;  1 drivers
v0x134fe50_0 .net *"_s332", 0 0, L_0x138dc40;  1 drivers
v0x134ff30_0 .net *"_s334", 0 0, L_0x139fd50;  1 drivers
v0x13500a0_0 .net *"_s336", 0 0, L_0x139fe40;  1 drivers
v0x1350180_0 .net *"_s338", 0 0, L_0x139ff30;  1 drivers
v0x1350260_0 .net *"_s340", 0 0, L_0x13a05a0;  1 drivers
v0x1350340_0 .net *"_s342", 0 0, L_0x13a0240;  1 drivers
v0x1350420_0 .net *"_s344", 0 0, L_0x13a0330;  1 drivers
v0x1350500_0 .net *"_s346", 0 0, L_0x13a0420;  1 drivers
v0x13505e0_0 .net *"_s348", 0 0, L_0x13a0130;  1 drivers
v0x13506c0_0 .net *"_s350", 0 0, L_0x13a0640;  1 drivers
v0x1350870_0 .net *"_s352", 0 0, L_0x13a0730;  1 drivers
v0x1350910_0 .net *"_s354", 0 0, L_0x13a0820;  1 drivers
v0x13509f0_0 .net *"_s356", 0 0, L_0x13a0910;  1 drivers
v0x1350ad0_0 .net *"_s358", 0 0, L_0x13a0f80;  1 drivers
v0x1350bb0_0 .net *"_s360", 0 0, L_0x13a1020;  1 drivers
v0x1350c90_0 .net *"_s362", 0 0, L_0x13a0bd0;  1 drivers
v0x1350d70_0 .net *"_s364", 0 0, L_0x13a0cc0;  1 drivers
v0x1350e50_0 .net *"_s366", 0 0, L_0x13a0db0;  1 drivers
v0x1350f30_0 .net *"_s368", 0 0, L_0x13a0ea0;  1 drivers
v0x1351010_0 .net *"_s370", 0 0, L_0x13a1110;  1 drivers
v0x13510f0_0 .net *"_s372", 0 0, L_0x13a1200;  1 drivers
v0x13511d0_0 .net *"_s374", 0 0, L_0x13a12f0;  1 drivers
v0x13512b0_0 .net *"_s376", 0 0, L_0x13a13e0;  1 drivers
v0x1351390_0 .net *"_s378", 0 0, L_0x13a1930;  1 drivers
v0x1351470_0 .net *"_s380", 0 0, L_0x13a09c0;  1 drivers
v0x1351550_0 .net *"_s382", 0 0, L_0x13a0ab0;  1 drivers
v0x13507a0_0 .net *"_s384", 0 0, L_0x13a1530;  1 drivers
v0x1351820_0 .net *"_s386", 0 0, L_0x13a1620;  1 drivers
v0x1351900_0 .net *"_s388", 0 0, L_0x13a1710;  1 drivers
v0x13519e0_0 .net "carryout", 0 0, L_0x1337830;  alias, 1 drivers
v0x1351a80_0 .net "command", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1351b40_0 .net "cout", 30 0, L_0x139e050;  1 drivers
v0x1351c20_0 .net "overflow", 0 0, L_0x139ef90;  alias, 1 drivers
v0x1351cc0_0 .net "result", 31 0, L_0x139f3e0;  alias, 1 drivers
v0x1351da0_0 .net "zero", 0 0, L_0x139e3e0;  alias, 1 drivers
L_0x137b6d0 .part L_0x13783d0, 0, 1;
L_0x137b770 .part L_0x13a2ef0, 0, 1;
L_0x137b810 .part v0x12b3060_0, 0, 1;
L_0x137c620 .part L_0x13783d0, 1, 1;
L_0x137c7d0 .part L_0x13a2ef0, 1, 1;
L_0x137c870 .part L_0x139e050, 0, 1;
L_0x137d940 .part L_0x13783d0, 2, 1;
L_0x137d9e0 .part L_0x13a2ef0, 2, 1;
L_0x137da80 .part L_0x139e050, 1, 1;
L_0x137eba0 .part L_0x13783d0, 3, 1;
L_0x137ec40 .part L_0x13a2ef0, 3, 1;
L_0x137ece0 .part L_0x139e050, 2, 1;
L_0x137fdd0 .part L_0x13783d0, 4, 1;
L_0x137fe70 .part L_0x13a2ef0, 4, 1;
L_0x137ff10 .part L_0x139e050, 3, 1;
L_0x1380fb0 .part L_0x13783d0, 5, 1;
L_0x13810e0 .part L_0x13a2ef0, 5, 1;
L_0x1381290 .part L_0x139e050, 4, 1;
L_0x1382160 .part L_0x13783d0, 6, 1;
L_0x1382200 .part L_0x13a2ef0, 6, 1;
L_0x1381330 .part L_0x139e050, 5, 1;
L_0x13832d0 .part L_0x13783d0, 7, 1;
L_0x13822a0 .part L_0x13a2ef0, 7, 1;
L_0x1383430 .part L_0x139e050, 6, 1;
L_0x1384410 .part L_0x13783d0, 8, 1;
L_0x13844b0 .part L_0x13a2ef0, 8, 1;
L_0x1383560 .part L_0x139e050, 7, 1;
L_0x1385600 .part L_0x13783d0, 9, 1;
L_0x1384550 .part L_0x13a2ef0, 9, 1;
L_0x13858b0 .part L_0x139e050, 8, 1;
L_0x1386a70 .part L_0x13783d0, 10, 1;
L_0x1386b10 .part L_0x13a2ef0, 10, 1;
L_0x1386bb0 .part L_0x139e050, 9, 1;
L_0x1387bf0 .part L_0x13783d0, 11, 1;
L_0x137c6c0 .part L_0x13a2ef0, 11, 1;
L_0x1387db0 .part L_0x139e050, 10, 1;
L_0x1388e60 .part L_0x13783d0, 12, 1;
L_0x1388f00 .part L_0x13a2ef0, 12, 1;
L_0x1387ee0 .part L_0x139e050, 11, 1;
L_0x138a0a0 .part L_0x13783d0, 13, 1;
L_0x1388fa0 .part L_0x13a2ef0, 13, 1;
L_0x1389040 .part L_0x139e050, 12, 1;
L_0x138b3e0 .part L_0x13783d0, 14, 1;
L_0x138b480 .part L_0x13a2ef0, 14, 1;
L_0x138a4a0 .part L_0x139e050, 13, 1;
L_0x138c630 .part L_0x13783d0, 15, 1;
L_0x138b520 .part L_0x13a2ef0, 15, 1;
L_0x138b5c0 .part L_0x139e050, 14, 1;
L_0x138d870 .part L_0x13783d0, 16, 1;
L_0x138d910 .part L_0x13a2ef0, 16, 1;
L_0x138c8e0 .part L_0x139e050, 15, 1;
L_0x138eb90 .part L_0x13783d0, 17, 1;
L_0x138d9b0 .part L_0x13a2ef0, 17, 1;
L_0x138da50 .part L_0x139e050, 16, 1;
L_0x138fdd0 .part L_0x13783d0, 18, 1;
L_0x138fe70 .part L_0x13a2ef0, 18, 1;
L_0x138ee70 .part L_0x139e050, 17, 1;
L_0x1390ff0 .part L_0x13783d0, 19, 1;
L_0x138ff10 .part L_0x13a2ef0, 19, 1;
L_0x138ffb0 .part L_0x139e050, 18, 1;
L_0x1392220 .part L_0x13783d0, 20, 1;
L_0x13922c0 .part L_0x13a2ef0, 20, 1;
L_0x1391090 .part L_0x139e050, 19, 1;
L_0x1393450 .part L_0x13783d0, 21, 1;
L_0x1392360 .part L_0x13a2ef0, 21, 1;
L_0x1392400 .part L_0x139e050, 20, 1;
L_0x1394690 .part L_0x13783d0, 22, 1;
L_0x1394730 .part L_0x13a2ef0, 22, 1;
L_0x13934f0 .part L_0x139e050, 21, 1;
L_0x13958c0 .part L_0x13783d0, 23, 1;
L_0x13947d0 .part L_0x13a2ef0, 23, 1;
L_0x1394870 .part L_0x139e050, 22, 1;
L_0x1396af0 .part L_0x13783d0, 24, 1;
L_0x1396b90 .part L_0x13a2ef0, 24, 1;
L_0x1395960 .part L_0x139e050, 23, 1;
L_0x1397d20 .part L_0x13783d0, 25, 1;
L_0x13856a0 .part L_0x13a2ef0, 25, 1;
L_0x1385740 .part L_0x139e050, 24, 1;
L_0x1386960 .part L_0x13783d0, 26, 1;
L_0x1399190 .part L_0x13a2ef0, 26, 1;
L_0x13981d0 .part L_0x139e050, 25, 1;
L_0x139a200 .part L_0x13783d0, 27, 1;
L_0x1399230 .part L_0x13a2ef0, 27, 1;
L_0x13992d0 .part L_0x139e050, 26, 1;
L_0x139b330 .part L_0x13783d0, 28, 1;
L_0x139b3d0 .part L_0x13a2ef0, 28, 1;
L_0x139a2a0 .part L_0x139e050, 27, 1;
L_0x139c450 .part L_0x13783d0, 29, 1;
L_0x139b470 .part L_0x13a2ef0, 29, 1;
L_0x138a290 .part L_0x139e050, 28, 1;
LS_0x139e050_0_0 .concat8 [ 1 1 1 1], L_0x1257d30, L_0x1270e30, L_0x1308650, L_0x1330480;
LS_0x139e050_0_4 .concat8 [ 1 1 1 1], L_0x133bc50, L_0x133f620, L_0x1342ff0, L_0x13469c0;
LS_0x139e050_0_8 .concat8 [ 1 1 1 1], L_0x134a390, L_0x134dd60, L_0x125cb50, L_0x127fd50;
LS_0x139e050_0_12 .concat8 [ 1 1 1 1], L_0x12c69c0, L_0x1243850, L_0x1282da0, L_0x12a5c50;
LS_0x139e050_0_16 .concat8 [ 1 1 1 1], L_0x12e7f70, L_0x10de870, L_0x13012b0, L_0x1304c80;
LS_0x139e050_0_20 .concat8 [ 1 1 1 1], L_0x130c020, L_0x130f9f0, L_0x13133c0, L_0x1316fc0;
LS_0x139e050_0_24 .concat8 [ 1 1 1 1], L_0x131a990, L_0x131e340, L_0x1321d40, L_0x1325710;
LS_0x139e050_0_28 .concat8 [ 1 1 1 0], L_0x13290e0, L_0x132cab0, L_0x1333e50;
LS_0x139e050_1_0 .concat8 [ 4 4 4 4], LS_0x139e050_0_0, LS_0x139e050_0_4, LS_0x139e050_0_8, LS_0x139e050_0_12;
LS_0x139e050_1_4 .concat8 [ 4 4 4 3], LS_0x139e050_0_16, LS_0x139e050_0_20, LS_0x139e050_0_24, LS_0x139e050_0_28;
L_0x139e050 .concat8 [ 16 15 0 0], LS_0x139e050_1_0, LS_0x139e050_1_4;
L_0x139e200 .part L_0x13783d0, 30, 1;
L_0x139cbd0 .part L_0x13a2ef0, 30, 1;
L_0x139cc70 .part L_0x139e050, 29, 1;
LS_0x139f3e0_0_0 .concat8 [ 1 1 1 1], L_0x137b400, L_0x137c160, L_0x137d280, L_0x137e570;
LS_0x139f3e0_0_4 .concat8 [ 1 1 1 1], L_0x137f7a0, L_0x1380980, L_0x1381b90, L_0x1382d00;
LS_0x139f3e0_0_8 .concat8 [ 1 1 1 1], L_0x1383e40, L_0x1385030, L_0x1386330, L_0x13875c0;
LS_0x139f3e0_0_12 .concat8 [ 1 1 1 1], L_0x1388830, L_0x1389a70, L_0x138adb0, L_0x138c000;
LS_0x139f3e0_0_16 .concat8 [ 1 1 1 1], L_0x138d240, L_0x138e560, L_0x138f7a0, L_0x13909c0;
LS_0x139f3e0_0_20 .concat8 [ 1 1 1 1], L_0x1391bf0, L_0x1392e20, L_0x1394060, L_0x1395290;
LS_0x139f3e0_0_24 .concat8 [ 1 1 1 1], L_0x13964c0, L_0x13976f0, L_0x13989b0, L_0x1399c30;
LS_0x139f3e0_0_28 .concat8 [ 1 1 1 1], L_0x139ad60, L_0x139be80, L_0x134ef90, L_0x139ee50;
LS_0x139f3e0_1_0 .concat8 [ 4 4 4 4], LS_0x139f3e0_0_0, LS_0x139f3e0_0_4, LS_0x139f3e0_0_8, LS_0x139f3e0_0_12;
LS_0x139f3e0_1_4 .concat8 [ 4 4 4 4], LS_0x139f3e0_0_16, LS_0x139f3e0_0_20, LS_0x139f3e0_0_24, LS_0x139f3e0_0_28;
L_0x139f3e0 .concat8 [ 16 16 0 0], LS_0x139f3e0_1_0, LS_0x139f3e0_1_4;
L_0x139f590 .part L_0x13783d0, 31, 1;
L_0x139e2a0 .part L_0x13a2ef0, 31, 1;
L_0x139e340 .part L_0x139e050, 30, 1;
L_0x138db50 .part L_0x139f3e0, 0, 1;
L_0x139f630 .part L_0x139f3e0, 1, 1;
L_0x139f6d0 .part L_0x139f3e0, 2, 1;
L_0x139f7c0 .part L_0x139f3e0, 3, 1;
L_0x13a0090 .part L_0x139f3e0, 4, 1;
L_0x138dc40 .part L_0x139f3e0, 5, 1;
L_0x139fd50 .part L_0x139f3e0, 6, 1;
L_0x139fe40 .part L_0x139f3e0, 7, 1;
L_0x139ff30 .part L_0x139f3e0, 8, 1;
L_0x13a05a0 .part L_0x139f3e0, 9, 1;
L_0x13a0240 .part L_0x139f3e0, 10, 1;
L_0x13a0330 .part L_0x139f3e0, 11, 1;
L_0x13a0420 .part L_0x139f3e0, 12, 1;
L_0x13a0130 .part L_0x139f3e0, 13, 1;
L_0x13a0640 .part L_0x139f3e0, 14, 1;
L_0x13a0730 .part L_0x139f3e0, 15, 1;
L_0x13a0820 .part L_0x139f3e0, 16, 1;
L_0x13a0910 .part L_0x139f3e0, 17, 1;
L_0x13a0f80 .part L_0x139f3e0, 18, 1;
L_0x13a1020 .part L_0x139f3e0, 19, 1;
L_0x13a0bd0 .part L_0x139f3e0, 20, 1;
L_0x13a0cc0 .part L_0x139f3e0, 21, 1;
L_0x13a0db0 .part L_0x139f3e0, 22, 1;
L_0x13a0ea0 .part L_0x139f3e0, 23, 1;
L_0x13a1110 .part L_0x139f3e0, 24, 1;
L_0x13a1200 .part L_0x139f3e0, 25, 1;
L_0x13a12f0 .part L_0x139f3e0, 26, 1;
L_0x13a13e0 .part L_0x139f3e0, 27, 1;
L_0x13a1930 .part L_0x139f3e0, 28, 1;
L_0x13a09c0 .part L_0x139f3e0, 29, 1;
L_0x13a0ab0 .part L_0x139f3e0, 28, 1;
L_0x13a1530 .part L_0x139f3e0, 29, 1;
L_0x13a1620 .part L_0x139f3e0, 30, 1;
L_0x13a1710 .part L_0x139f3e0, 31, 1;
S_0x12c1e50 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x137b4a0 .functor BUFZ 1, L_0x137aed0, C4<0>, C4<0>, C4<0>;
L_0x137b510 .functor BUFZ 1, L_0x137aed0, C4<0>, C4<0>, C4<0>;
v0x1255f90_0 .net "A", 0 0, L_0x137b6d0;  1 drivers
v0x1256030_0 .net "B", 0 0, L_0x137b770;  1 drivers
v0x1255ac0_0 .net "I", 7 0, L_0x137b630;  1 drivers
v0x1255b60_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1255640_0 .net *"_s15", 0 0, L_0x137b4a0;  1 drivers
v0x1255120_0 .net *"_s19", 0 0, L_0x137b510;  1 drivers
L_0x7fc1d7be81c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1254c50_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be81c8;  1 drivers
v0x1254780_0 .net "addORsub", 0 0, L_0x137aed0;  1 drivers
v0x1254820_0 .net "carryin", 0 0, L_0x137b810;  1 drivers
v0x12542b0_0 .net "carryout", 0 0, L_0x1257d30;  1 drivers
v0x1254350_0 .net "modB", 0 0, L_0x137acc0;  1 drivers
v0x1253de0_0 .net "out", 0 0, L_0x137b400;  1 drivers
L_0x137ad30 .part v0x12b3060_0, 0, 1;
LS_0x137b630_0_0 .concat8 [ 1 1 1 1], L_0x137b4a0, L_0x137b510, L_0x137b130, L_0x7fc1d7be81c8;
LS_0x137b630_0_4 .concat8 [ 1 1 1 1], L_0x1256e00, L_0x137b2b0, L_0x137b320, L_0x137b390;
L_0x137b630 .concat8 [ 4 4 0 0], LS_0x137b630_0_0, LS_0x137b630_0_4;
S_0x126a1f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x137add0 .functor XOR 1, L_0x137b6d0, L_0x137acc0, C4<0>, C4<0>;
L_0x137aed0 .functor XOR 1, L_0x137add0, L_0x137b810, C4<0>, C4<0>;
L_0x137af40 .functor AND 1, L_0x137add0, L_0x137b810, C4<1>, C4<1>;
L_0x137afb0 .functor AND 1, L_0x137b6d0, L_0x137acc0, C4<1>, C4<1>;
L_0x1257d30 .functor OR 1, L_0x137af40, L_0x137afb0, C4<0>, C4<0>;
v0x12e1ea0_0 .net "A", 0 0, L_0x137b6d0;  alias, 1 drivers
v0x12e1f40_0 .net "B", 0 0, L_0x137acc0;  alias, 1 drivers
v0x12cc000_0 .net "carryin", 0 0, L_0x137b810;  alias, 1 drivers
v0x12c7970_0 .net "carryout", 0 0, L_0x1257d30;  alias, 1 drivers
v0x12c7a30_0 .net "out1", 0 0, L_0x137add0;  1 drivers
v0x12c32e0_0 .net "out2", 0 0, L_0x137af40;  1 drivers
v0x12c33a0_0 .net "out3", 0 0, L_0x137afb0;  1 drivers
v0x12bec40_0 .net "sum", 0 0, L_0x137aed0;  alias, 1 drivers
S_0x12abfa0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1256e00 .functor AND 1, L_0x137b6d0, L_0x137b770, C4<1>, C4<1>;
v0x126b6f0_0 .net "A", 0 0, L_0x137b6d0;  alias, 1 drivers
v0x12a8da0_0 .net "B", 0 0, L_0x137b770;  alias, 1 drivers
v0x12a8e40_0 .net "out", 0 0, L_0x1256e00;  1 drivers
S_0x12a7910 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12a0080_0 .net "I", 7 0, L_0x137b630;  alias, 1 drivers
v0x1266fe0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12670a0_0 .net "out", 0 0, L_0x137b400;  alias, 1 drivers
L_0x137b400 .part/v L_0x137b630, v0x12b3060_0, 1;
S_0x12a3280 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137b2b0 .functor NAND 1, L_0x137b6d0, L_0x137b770, C4<1>, C4<1>;
v0x12605e0_0 .net "A", 0 0, L_0x137b6d0;  alias, 1 drivers
v0x12628d0_0 .net "B", 0 0, L_0x137b770;  alias, 1 drivers
v0x10e3e80_0 .net "out", 0 0, L_0x137b2b0;  1 drivers
S_0x129ebf0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137b320 .functor NOR 1, L_0x137b6d0, L_0x137b770, C4<0>, C4<0>;
v0x12599c0_0 .net "A", 0 0, L_0x137b6d0;  alias, 1 drivers
v0x1258610_0 .net "B", 0 0, L_0x137b770;  alias, 1 drivers
v0x1258140_0 .net "out", 0 0, L_0x137b320;  1 drivers
S_0x1265b50 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137b390 .functor OR 1, L_0x137b6d0, L_0x137b770, C4<0>, C4<0>;
v0x1257c70_0 .net "A", 0 0, L_0x137b6d0;  alias, 1 drivers
v0x12577a0_0 .net "B", 0 0, L_0x137b770;  alias, 1 drivers
v0x1257840_0 .net "out", 0 0, L_0x137b390;  1 drivers
S_0x12bdc90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137acc0 .functor XOR 1, L_0x137b770, L_0x137ad30, C4<0>, C4<0>;
v0x1257340_0 .net "A", 0 0, L_0x137b770;  alias, 1 drivers
v0x1256e90_0 .net "B", 0 0, L_0x137ad30;  1 drivers
v0x124fa80_0 .net "out", 0 0, L_0x137acc0;  alias, 1 drivers
S_0x12778f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12c1e50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137b130 .functor XOR 1, L_0x137b6d0, L_0x137b770, C4<0>, C4<0>;
v0x1256930_0 .net "A", 0 0, L_0x137b6d0;  alias, 1 drivers
v0x12569f0_0 .net "B", 0 0, L_0x137b770;  alias, 1 drivers
v0x1256460_0 .net "out", 0 0, L_0x137b130;  1 drivers
S_0x1273300 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x137c220 .functor BUFZ 1, L_0x137bb90, C4<0>, C4<0>, C4<0>;
L_0x137c2d0 .functor BUFZ 1, L_0x137bb90, C4<0>, C4<0>, C4<0>;
v0x12ae5e0_0 .net "A", 0 0, L_0x137c620;  1 drivers
v0x12ae680_0 .net "B", 0 0, L_0x137c7d0;  1 drivers
v0x129cbe0_0 .net "I", 7 0, L_0x137c3f0;  1 drivers
v0x129cc80_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1298680_0 .net *"_s15", 0 0, L_0x137c220;  1 drivers
v0x1294000_0 .net *"_s19", 0 0, L_0x137c2d0;  1 drivers
L_0x7fc1d7be8210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x128fa10_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8210;  1 drivers
v0x12b0ab0_0 .net "addORsub", 0 0, L_0x137bb90;  1 drivers
v0x12b0b50_0 .net "carryin", 0 0, L_0x137c870;  1 drivers
v0x129aac0_0 .net "carryout", 0 0, L_0x1270e30;  1 drivers
v0x129ab90_0 .net "modB", 0 0, L_0x137b940;  1 drivers
v0x12964d0_0 .net "out", 0 0, L_0x137c160;  1 drivers
L_0x137b9b0 .part v0x12b3060_0, 0, 1;
LS_0x137c3f0_0_0 .concat8 [ 1 1 1 1], L_0x137c220, L_0x137c2d0, L_0x137be30, L_0x7fc1d7be8210;
LS_0x137c3f0_0_4 .concat8 [ 1 1 1 1], L_0x12d17f0, L_0x137bfb0, L_0x137c040, L_0x137c0d0;
L_0x137c3f0 .concat8 [ 4 4 0 0], LS_0x137c3f0_0_0, LS_0x137c3f0_0_4;
S_0x126ed10 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x137ba70 .functor XOR 1, L_0x137c620, L_0x137b940, C4<0>, C4<0>;
L_0x137bb90 .functor XOR 1, L_0x137ba70, L_0x137c870, C4<0>, C4<0>;
L_0x137bc20 .functor AND 1, L_0x137ba70, L_0x137c870, C4<1>, C4<1>;
L_0x137bcb0 .functor AND 1, L_0x137c620, L_0x137b940, C4<1>, C4<1>;
L_0x1270e30 .functor OR 1, L_0x137bc20, L_0x137bcb0, C4<0>, C4<0>;
v0x1253910_0 .net "A", 0 0, L_0x137c620;  alias, 1 drivers
v0x1253440_0 .net "B", 0 0, L_0x137b940;  alias, 1 drivers
v0x1253500_0 .net "carryin", 0 0, L_0x137c870;  alias, 1 drivers
v0x1252f70_0 .net "carryout", 0 0, L_0x1270e30;  alias, 1 drivers
v0x1253030_0 .net "out1", 0 0, L_0x137ba70;  1 drivers
v0x1252aa0_0 .net "out2", 0 0, L_0x137bc20;  1 drivers
v0x1252b40_0 .net "out3", 0 0, L_0x137bcb0;  1 drivers
v0x12525d0_0 .net "sum", 0 0, L_0x137bb90;  alias, 1 drivers
S_0x12dc8a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12d17f0 .functor AND 1, L_0x137c620, L_0x137c7d0, C4<1>, C4<1>;
v0x1252150_0 .net "A", 0 0, L_0x137c620;  alias, 1 drivers
v0x1251c30_0 .net "B", 0 0, L_0x137c7d0;  alias, 1 drivers
v0x1251cd0_0 .net "out", 0 0, L_0x12d17f0;  1 drivers
S_0x12d82b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1251290_0 .net "I", 7 0, L_0x137c3f0;  alias, 1 drivers
v0x1250dc0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1250e80_0 .net "out", 0 0, L_0x137c160;  alias, 1 drivers
L_0x137c160 .part/v L_0x137c3f0, v0x12b3060_0, 1;
S_0x12d3cc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137bfb0 .functor NAND 1, L_0x137c620, L_0x137c7d0, C4<1>, C4<1>;
v0x124f130_0 .net "A", 0 0, L_0x137c620;  alias, 1 drivers
v0x12508f0_0 .net "B", 0 0, L_0x137c7d0;  alias, 1 drivers
v0x12509b0_0 .net "out", 0 0, L_0x137bfb0;  1 drivers
S_0x12cf6d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137c040 .functor NOR 1, L_0x137c620, L_0x137c7d0, C4<0>, C4<0>;
v0x124ff50_0 .net "A", 0 0, L_0x137c620;  alias, 1 drivers
v0x1250010_0 .net "B", 0 0, L_0x137c7d0;  alias, 1 drivers
v0x1279a80_0 .net "out", 0 0, L_0x137c040;  1 drivers
S_0x12bd3c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137c0d0 .functor OR 1, L_0x137c620, L_0x137c7d0, C4<0>, C4<0>;
v0x12754c0_0 .net "A", 0 0, L_0x137c620;  alias, 1 drivers
v0x1270ec0_0 .net "B", 0 0, L_0x137c7d0;  alias, 1 drivers
v0x12da3d0_0 .net "out", 0 0, L_0x137c0d0;  1 drivers
S_0x12b9690 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137b940 .functor XOR 1, L_0x137c7d0, L_0x137b9b0, C4<0>, C4<0>;
v0x12d5e30_0 .net "A", 0 0, L_0x137c7d0;  alias, 1 drivers
v0x12d1880_0 .net "B", 0 0, L_0x137b9b0;  1 drivers
v0x126c840_0 .net "out", 0 0, L_0x137b940;  alias, 1 drivers
S_0x12b50a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1273300;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137be30 .functor XOR 1, L_0x137c620, L_0x137c7d0, C4<0>, C4<0>;
v0x12bb7b0_0 .net "A", 0 0, L_0x137c620;  alias, 1 drivers
v0x12bb870_0 .net "B", 0 0, L_0x137c7d0;  alias, 1 drivers
v0x12b71c0_0 .net "out", 0 0, L_0x137be30;  1 drivers
S_0x1291ee0 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1386490 .functor BUFZ 1, L_0x1385bf0, C4<0>, C4<0>, C4<0>;
L_0x1386520 .functor BUFZ 1, L_0x1385bf0, C4<0>, C4<0>, C4<0>;
v0x124b3a0_0 .net "A", 0 0, L_0x1386a70;  1 drivers
v0x124b440_0 .net "B", 0 0, L_0x1386b10;  1 drivers
v0x124b020_0 .net "I", 7 0, L_0x1386640;  1 drivers
v0x124ac60_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x124ad00_0 .net *"_s15", 0 0, L_0x1386490;  1 drivers
v0x124a900_0 .net *"_s19", 0 0, L_0x1386520;  1 drivers
L_0x7fc1d7be8498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x124a9e0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8498;  1 drivers
v0x124a5a0_0 .net "addORsub", 0 0, L_0x1385bf0;  1 drivers
v0x124a640_0 .net "carryin", 0 0, L_0x1386bb0;  1 drivers
v0x124a240_0 .net "carryout", 0 0, L_0x125cb50;  1 drivers
v0x124a310_0 .net "modB", 0 0, L_0x13859e0;  1 drivers
v0x1249ee0_0 .net "out", 0 0, L_0x1386330;  1 drivers
L_0x1385a50 .part v0x12b3060_0, 0, 1;
LS_0x1386640_0_0 .concat8 [ 1 1 1 1], L_0x1386490, L_0x1386520, L_0x1386000, L_0x7fc1d7be8498;
LS_0x1386640_0_4 .concat8 [ 1 1 1 1], L_0x12486c0, L_0x1386180, L_0x1386210, L_0x13862a0;
L_0x1386640 .concat8 [ 4 4 0 0], LS_0x1386640_0_0, LS_0x1386640_0_4;
S_0x128d900 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1385af0 .functor XOR 1, L_0x1386a70, L_0x13859e0, C4<0>, C4<0>;
L_0x1385bf0 .functor XOR 1, L_0x1385af0, L_0x1386bb0, C4<0>, C4<0>;
L_0x1385d00 .functor AND 1, L_0x1385af0, L_0x1386bb0, C4<1>, C4<1>;
L_0x1385d90 .functor AND 1, L_0x1386a70, L_0x13859e0, C4<1>, C4<1>;
L_0x125cb50 .functor OR 1, L_0x1385d00, L_0x1385d90, C4<0>, C4<0>;
v0x1249b80_0 .net "A", 0 0, L_0x1386a70;  alias, 1 drivers
v0x1249c60_0 .net "B", 0 0, L_0x13859e0;  alias, 1 drivers
v0x1249840_0 .net "carryin", 0 0, L_0x1386bb0;  alias, 1 drivers
v0x1249910_0 .net "carryout", 0 0, L_0x125cb50;  alias, 1 drivers
v0x12494c0_0 .net "out1", 0 0, L_0x1385af0;  1 drivers
v0x125fe90_0 .net "out2", 0 0, L_0x1385d00;  1 drivers
v0x125ff50_0 .net "out3", 0 0, L_0x1385d90;  1 drivers
v0x125fb60_0 .net "sum", 0 0, L_0x1385bf0;  alias, 1 drivers
S_0x125f730 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12486c0 .functor AND 1, L_0x1386a70, L_0x1386b10, C4<1>, C4<1>;
v0x125f470_0 .net "A", 0 0, L_0x1386a70;  alias, 1 drivers
v0x125f0d0_0 .net "B", 0 0, L_0x1386b10;  alias, 1 drivers
v0x125f170_0 .net "out", 0 0, L_0x12486c0;  1 drivers
S_0x125eda0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x125eb40_0 .net "I", 7 0, L_0x1386640;  alias, 1 drivers
v0x125e760_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x125e820_0 .net "out", 0 0, L_0x1386330;  alias, 1 drivers
L_0x1386330 .part/v L_0x1386640, v0x12b3060_0, 1;
S_0x125e0e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1386180 .functor NAND 1, L_0x1386a70, L_0x1386b10, C4<1>, C4<1>;
v0x125ddb0_0 .net "A", 0 0, L_0x1386a70;  alias, 1 drivers
v0x125da80_0 .net "B", 0 0, L_0x1386b10;  alias, 1 drivers
v0x125db40_0 .net "out", 0 0, L_0x1386180;  1 drivers
S_0x125d750 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1386210 .functor NOR 1, L_0x1386a70, L_0x1386b10, C4<0>, C4<0>;
v0x125d4c0_0 .net "A", 0 0, L_0x1386a70;  alias, 1 drivers
v0x125d0f0_0 .net "B", 0 0, L_0x1386b10;  alias, 1 drivers
v0x125cdc0_0 .net "out", 0 0, L_0x1386210;  1 drivers
S_0x1248da0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13862a0 .functor OR 1, L_0x1386a70, L_0x1386b10, C4<0>, C4<0>;
v0x125ca90_0 .net "A", 0 0, L_0x1386a70;  alias, 1 drivers
v0x125c760_0 .net "B", 0 0, L_0x1386b10;  alias, 1 drivers
v0x125c820_0 .net "out", 0 0, L_0x13862a0;  1 drivers
S_0x125c080 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13859e0 .functor XOR 1, L_0x1386b10, L_0x1385a50, C4<0>, C4<0>;
v0x1248a90_0 .net "A", 0 0, L_0x1386b10;  alias, 1 drivers
v0x1248750_0 .net "B", 0 0, L_0x1385a50;  1 drivers
v0x124bdc0_0 .net "out", 0 0, L_0x13859e0;  alias, 1 drivers
S_0x124ba60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1291ee0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1386000 .functor XOR 1, L_0x1386a70, L_0x1386b10, C4<0>, C4<0>;
v0x124bea0_0 .net "A", 0 0, L_0x1386a70;  alias, 1 drivers
v0x124b700_0 .net "B", 0 0, L_0x1386b10;  alias, 1 drivers
v0x124b7c0_0 .net "out", 0 0, L_0x1386000;  1 drivers
S_0x12b2bd0 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1387720 .functor BUFZ 1, L_0x1386e80, C4<0>, C4<0>, C4<0>;
L_0x13877b0 .functor BUFZ 1, L_0x1386e80, C4<0>, C4<0>, C4<0>;
v0x129e7f0_0 .net "A", 0 0, L_0x1387bf0;  1 drivers
v0x129e890_0 .net "B", 0 0, L_0x137c6c0;  1 drivers
v0x1265750_0 .net "I", 7 0, L_0x13878d0;  1 drivers
v0x1265820_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12783a0_0 .net *"_s15", 0 0, L_0x1387720;  1 drivers
v0x1273ca0_0 .net *"_s19", 0 0, L_0x13877b0;  1 drivers
L_0x7fc1d7be84e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1273d60_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be84e0;  1 drivers
v0x126f6b0_0 .net "addORsub", 0 0, L_0x1386e80;  1 drivers
v0x126f750_0 .net "carryin", 0 0, L_0x1387db0;  1 drivers
v0x12dd240_0 .net "carryout", 0 0, L_0x127fd50;  1 drivers
v0x12dd310_0 .net "modB", 0 0, L_0x1386c50;  1 drivers
v0x12d8c50_0 .net "out", 0 0, L_0x13875c0;  1 drivers
L_0x1386cc0 .part v0x12b3060_0, 0, 1;
LS_0x13878d0_0_0 .concat8 [ 1 1 1 1], L_0x1387720, L_0x13877b0, L_0x13872b0, L_0x7fc1d7be84e0;
LS_0x13878d0_0_4 .concat8 [ 1 1 1 1], L_0x12ca880, L_0x1387430, L_0x13874a0, L_0x1387530;
L_0x13878d0 .concat8 [ 4 4 0 0], LS_0x13878d0_0_0, LS_0x13878d0_0_4;
S_0x1247ac0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1386d60 .functor XOR 1, L_0x1387bf0, L_0x1386c50, C4<0>, C4<0>;
L_0x1386e80 .functor XOR 1, L_0x1386d60, L_0x1387db0, C4<0>, C4<0>;
L_0x1386fb0 .functor AND 1, L_0x1386d60, L_0x1387db0, C4<1>, C4<1>;
L_0x1387040 .functor AND 1, L_0x1387bf0, L_0x1386c50, C4<1>, C4<1>;
L_0x127fd50 .functor OR 1, L_0x1386fb0, L_0x1387040, C4<0>, C4<0>;
v0x12f4410_0 .net "A", 0 0, L_0x1387bf0;  alias, 1 drivers
v0x12f44b0_0 .net "B", 0 0, L_0x1386c50;  alias, 1 drivers
v0x12f6800_0 .net "carryin", 0 0, L_0x1387db0;  alias, 1 drivers
v0x12f68d0_0 .net "carryout", 0 0, L_0x127fd50;  alias, 1 drivers
v0x127ab10_0 .net "out1", 0 0, L_0x1386d60;  1 drivers
v0x127abd0_0 .net "out2", 0 0, L_0x1386fb0;  1 drivers
v0x1276520_0 .net "out3", 0 0, L_0x1387040;  1 drivers
v0x12765c0_0 .net "sum", 0 0, L_0x1386e80;  alias, 1 drivers
S_0x1271f50 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12ca880 .functor AND 1, L_0x1387bf0, L_0x137c6c0, C4<1>, C4<1>;
v0x126da00_0 .net "A", 0 0, L_0x1387bf0;  alias, 1 drivers
v0x12db4d0_0 .net "B", 0 0, L_0x137c6c0;  alias, 1 drivers
v0x12db570_0 .net "out", 0 0, L_0x12ca880;  1 drivers
S_0x12d28f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12bc8b0_0 .net "I", 7 0, L_0x13878d0;  alias, 1 drivers
v0x12bc970_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12b82c0_0 .net "out", 0 0, L_0x13875c0;  alias, 1 drivers
L_0x13875c0 .part/v L_0x13878d0, v0x12b3060_0, 1;
S_0x12b3cd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1387430 .functor NAND 1, L_0x1387bf0, L_0x137c6c0, C4<1>, C4<1>;
v0x12af6e0_0 .net "A", 0 0, L_0x1387bf0;  alias, 1 drivers
v0x12af7d0_0 .net "B", 0 0, L_0x137c6c0;  alias, 1 drivers
v0x12996f0_0 .net "out", 0 0, L_0x1387430;  1 drivers
S_0x1295100 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13874a0 .functor NOR 1, L_0x1387bf0, L_0x137c6c0, C4<0>, C4<0>;
v0x1290bb0_0 .net "A", 0 0, L_0x1387bf0;  alias, 1 drivers
v0x1288980_0 .net "B", 0 0, L_0x137c6c0;  alias, 1 drivers
v0x1288a90_0 .net "out", 0 0, L_0x13874a0;  1 drivers
S_0x12842f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1387530 .functor OR 1, L_0x1387bf0, L_0x137c6c0, C4<0>, C4<0>;
v0x127fcb0_0 .net "A", 0 0, L_0x1387bf0;  alias, 1 drivers
v0x12e4ca0_0 .net "B", 0 0, L_0x137c6c0;  alias, 1 drivers
v0x12e4d60_0 .net "out", 0 0, L_0x1387530;  1 drivers
S_0x12e0610 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1386c50 .functor XOR 1, L_0x137c6c0, L_0x1386cc0, C4<0>, C4<0>;
v0x12ca7c0_0 .net "A", 0 0, L_0x137c6c0;  alias, 1 drivers
v0x12c60e0_0 .net "B", 0 0, L_0x1386cc0;  1 drivers
v0x12c61a0_0 .net "out", 0 0, L_0x1386c50;  alias, 1 drivers
S_0x12c1a50 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12b2bd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13872b0 .functor XOR 1, L_0x1387bf0, L_0x137c6c0, C4<0>, C4<0>;
v0x12a7560_0 .net "A", 0 0, L_0x1387bf0;  alias, 1 drivers
v0x12a7620_0 .net "B", 0 0, L_0x137c6c0;  alias, 1 drivers
v0x12a2e80_0 .net "out", 0 0, L_0x13872b0;  1 drivers
S_0x12d4660 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1388990 .functor BUFZ 1, L_0x1388110, C4<0>, C4<0>, C4<0>;
L_0x1388a20 .functor BUFZ 1, L_0x1388110, C4<0>, C4<0>, C4<0>;
v0x1266030_0 .net "A", 0 0, L_0x1388e60;  1 drivers
v0x12660d0_0 .net "B", 0 0, L_0x1388f00;  1 drivers
v0x127a5c0_0 .net "I", 7 0, L_0x1388b40;  1 drivers
v0x127a6c0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1275fd0_0 .net *"_s15", 0 0, L_0x1388990;  1 drivers
v0x1276070_0 .net *"_s19", 0 0, L_0x1388a20;  1 drivers
L_0x7fc1d7be8528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x12719e0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8528;  1 drivers
v0x1271ac0_0 .net "addORsub", 0 0, L_0x1388110;  1 drivers
v0x126d3f0_0 .net "carryin", 0 0, L_0x1387ee0;  1 drivers
v0x12daf80_0 .net "carryout", 0 0, L_0x12c69c0;  1 drivers
v0x12db050_0 .net "modB", 0 0, L_0x137c760;  1 drivers
v0x12d6990_0 .net "out", 0 0, L_0x1388830;  1 drivers
L_0x1387c90 .part v0x12b3060_0, 0, 1;
LS_0x1388b40_0_0 .concat8 [ 1 1 1 1], L_0x1388990, L_0x1388a20, L_0x1388520, L_0x7fc1d7be8528;
LS_0x1388b40_0_4 .concat8 [ 1 1 1 1], L_0x12ac480, L_0x13886a0, L_0x1388710, L_0x13887a0;
L_0x1388b40 .concat8 [ 4 4 0 0], LS_0x1388b40_0_0, LS_0x1388b40_0_4;
S_0x12ba030 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1388010 .functor XOR 1, L_0x1388e60, L_0x137c760, C4<0>, C4<0>;
L_0x1388110 .functor XOR 1, L_0x1388010, L_0x1387ee0, C4<0>, C4<0>;
L_0x1388220 .functor AND 1, L_0x1388010, L_0x1387ee0, C4<1>, C4<1>;
L_0x1388290 .functor AND 1, L_0x1388e60, L_0x137c760, C4<1>, C4<1>;
L_0x12c69c0 .functor OR 1, L_0x1388220, L_0x1388290, C4<0>, C4<0>;
v0x12b5a40_0 .net "A", 0 0, L_0x1388e60;  alias, 1 drivers
v0x12b5b20_0 .net "B", 0 0, L_0x137c760;  alias, 1 drivers
v0x12b1450_0 .net "carryin", 0 0, L_0x1387ee0;  alias, 1 drivers
v0x12b1510_0 .net "carryout", 0 0, L_0x12c69c0;  alias, 1 drivers
v0x129b460_0 .net "out1", 0 0, L_0x1388010;  1 drivers
v0x129b570_0 .net "out2", 0 0, L_0x1388220;  1 drivers
v0x1296e70_0 .net "out3", 0 0, L_0x1388290;  1 drivers
v0x1296f30_0 .net "sum", 0 0, L_0x1388110;  alias, 1 drivers
S_0x1292880 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12ac480 .functor AND 1, L_0x1388e60, L_0x1388f00, C4<1>, C4<1>;
v0x128e2f0_0 .net "A", 0 0, L_0x1388e60;  alias, 1 drivers
v0x128e3b0_0 .net "B", 0 0, L_0x1388f00;  alias, 1 drivers
v0x1249100_0 .net "out", 0 0, L_0x12ac480;  1 drivers
S_0x123d770 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12e9820_0 .net "I", 7 0, L_0x1388b40;  alias, 1 drivers
v0x12bd7b0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12bd870_0 .net "out", 0 0, L_0x1388830;  alias, 1 drivers
L_0x1388830 .part/v L_0x1388b40, v0x12b3060_0, 1;
S_0x12613d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13886a0 .functor NAND 1, L_0x1388e60, L_0x1388f00, C4<1>, C4<1>;
v0x12892b0_0 .net "A", 0 0, L_0x1388e60;  alias, 1 drivers
v0x1284bd0_0 .net "B", 0 0, L_0x1388f00;  alias, 1 drivers
v0x1284c90_0 .net "out", 0 0, L_0x13886a0;  1 drivers
S_0x1280540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1388710 .functor NOR 1, L_0x1388e60, L_0x1388f00, C4<0>, C4<0>;
v0x12e9390_0 .net "A", 0 0, L_0x1388e60;  alias, 1 drivers
v0x12e5580_0 .net "B", 0 0, L_0x1388f00;  alias, 1 drivers
v0x12e5690_0 .net "out", 0 0, L_0x1388710;  1 drivers
S_0x12e0ef0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13887a0 .functor OR 1, L_0x1388e60, L_0x1388f00, C4<0>, C4<0>;
v0x12cb0f0_0 .net "A", 0 0, L_0x1388e60;  alias, 1 drivers
v0x12c6a50_0 .net "B", 0 0, L_0x1388f00;  alias, 1 drivers
v0x12c2330_0 .net "out", 0 0, L_0x13887a0;  1 drivers
S_0x126a6d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137c760 .functor XOR 1, L_0x1388f00, L_0x1387c90, C4<0>, C4<0>;
v0x12c2430_0 .net "A", 0 0, L_0x1388f00;  alias, 1 drivers
v0x12ac510_0 .net "B", 0 0, L_0x1387c90;  1 drivers
v0x12a7df0_0 .net "out", 0 0, L_0x137c760;  alias, 1 drivers
S_0x12a3760 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12d4660;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1388520 .functor XOR 1, L_0x1388e60, L_0x1388f00, C4<0>, C4<0>;
v0x12a7ed0_0 .net "A", 0 0, L_0x1388e60;  alias, 1 drivers
v0x129f0d0_0 .net "B", 0 0, L_0x1388f00;  alias, 1 drivers
v0x129f190_0 .net "out", 0 0, L_0x1388520;  1 drivers
S_0x12d23a0 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1389bd0 .functor BUFZ 1, L_0x1389330, C4<0>, C4<0>, C4<0>;
L_0x1389c60 .functor BUFZ 1, L_0x1389330, C4<0>, C4<0>, C4<0>;
v0x1241600_0 .net "A", 0 0, L_0x138a0a0;  1 drivers
v0x12416a0_0 .net "B", 0 0, L_0x1388fa0;  1 drivers
v0x1241130_0 .net "I", 7 0, L_0x1389d80;  1 drivers
v0x1241230_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1240c60_0 .net *"_s15", 0 0, L_0x1389bd0;  1 drivers
v0x1240d20_0 .net *"_s19", 0 0, L_0x1389c60;  1 drivers
L_0x7fc1d7be8570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1240790_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8570;  1 drivers
v0x1240870_0 .net "addORsub", 0 0, L_0x1389330;  1 drivers
v0x12402c0_0 .net "carryin", 0 0, L_0x1389040;  1 drivers
v0x12403f0_0 .net "carryout", 0 0, L_0x1243850;  1 drivers
v0x123fdf0_0 .net "modB", 0 0, L_0x13890e0;  1 drivers
v0x123fe90_0 .net "out", 0 0, L_0x1389a70;  1 drivers
L_0x1389150 .part v0x12b3060_0, 0, 1;
LS_0x1389d80_0_0 .concat8 [ 1 1 1 1], L_0x1389bd0, L_0x1389c60, L_0x1389760, L_0x7fc1d7be8570;
LS_0x1389d80_0_4 .concat8 [ 1 1 1 1], L_0x1242940, L_0x13898e0, L_0x1389950, L_0x13899e0;
L_0x1389d80 .concat8 [ 4 4 0 0], LS_0x1389d80_0_0, LS_0x1389d80_0_4;
S_0x12b7d70 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x13891f0 .functor XOR 1, L_0x138a0a0, L_0x13890e0, C4<0>, C4<0>;
L_0x1389330 .functor XOR 1, L_0x13891f0, L_0x1389040, C4<0>, C4<0>;
L_0x1389460 .functor AND 1, L_0x13891f0, L_0x1389040, C4<1>, C4<1>;
L_0x13894f0 .functor AND 1, L_0x138a0a0, L_0x13890e0, C4<1>, C4<1>;
L_0x1243850 .functor OR 1, L_0x1389460, L_0x13894f0, C4<0>, C4<0>;
v0x12b3800_0 .net "A", 0 0, L_0x138a0a0;  alias, 1 drivers
v0x12af190_0 .net "B", 0 0, L_0x13890e0;  alias, 1 drivers
v0x12af250_0 .net "carryin", 0 0, L_0x1389040;  alias, 1 drivers
v0x12991a0_0 .net "carryout", 0 0, L_0x1243850;  alias, 1 drivers
v0x1299260_0 .net "out1", 0 0, L_0x13891f0;  1 drivers
v0x1294bb0_0 .net "out2", 0 0, L_0x1389460;  1 drivers
v0x1294c70_0 .net "out3", 0 0, L_0x13894f0;  1 drivers
v0x12905c0_0 .net "sum", 0 0, L_0x1389330;  alias, 1 drivers
S_0x1259190 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1242940 .functor AND 1, L_0x138a0a0, L_0x1388fa0, C4<1>, C4<1>;
v0x12467d0_0 .net "A", 0 0, L_0x138a0a0;  alias, 1 drivers
v0x12468a0_0 .net "B", 0 0, L_0x1388fa0;  alias, 1 drivers
v0x1246300_0 .net "out", 0 0, L_0x1242940;  1 drivers
S_0x1245e30 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1245960_0 .net "I", 7 0, L_0x1389d80;  alias, 1 drivers
v0x1245a40_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1245490_0 .net "out", 0 0, L_0x1389a70;  alias, 1 drivers
L_0x1389a70 .part/v L_0x1389d80, v0x12b3060_0, 1;
S_0x1244fc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13898e0 .functor NAND 1, L_0x138a0a0, L_0x1388fa0, C4<1>, C4<1>;
v0x12455b0_0 .net "A", 0 0, L_0x138a0a0;  alias, 1 drivers
v0x123dc30_0 .net "B", 0 0, L_0x1388fa0;  alias, 1 drivers
v0x123dcf0_0 .net "out", 0 0, L_0x13898e0;  1 drivers
S_0x1244af0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1389950 .functor NOR 1, L_0x138a0a0, L_0x1388fa0, C4<0>, C4<0>;
v0x12446c0_0 .net "A", 0 0, L_0x138a0a0;  alias, 1 drivers
v0x1244150_0 .net "B", 0 0, L_0x1388fa0;  alias, 1 drivers
v0x1244260_0 .net "out", 0 0, L_0x1389950;  1 drivers
S_0x1243c80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13899e0 .functor OR 1, L_0x138a0a0, L_0x1388fa0, C4<0>, C4<0>;
v0x12437b0_0 .net "A", 0 0, L_0x138a0a0;  alias, 1 drivers
v0x12438e0_0 .net "B", 0 0, L_0x1388fa0;  alias, 1 drivers
v0x12432e0_0 .net "out", 0 0, L_0x13899e0;  1 drivers
S_0x1242e10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13890e0 .functor XOR 1, L_0x1388fa0, L_0x1389150, C4<0>, C4<0>;
v0x1243410_0 .net "A", 0 0, L_0x1388fa0;  alias, 1 drivers
v0x12429d0_0 .net "B", 0 0, L_0x1389150;  1 drivers
v0x1242a70_0 .net "out", 0 0, L_0x13890e0;  alias, 1 drivers
S_0x1241fa0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12d23a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1389760 .functor XOR 1, L_0x138a0a0, L_0x1388fa0, C4<0>, C4<0>;
v0x1242510_0 .net "A", 0 0, L_0x138a0a0;  alias, 1 drivers
v0x1241ad0_0 .net "B", 0 0, L_0x1388fa0;  alias, 1 drivers
v0x1241b90_0 .net "out", 0 0, L_0x1389760;  1 drivers
S_0x123f920 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x138af10 .functor BUFZ 1, L_0x138a690, C4<0>, C4<0>, C4<0>;
L_0x138afa0 .functor BUFZ 1, L_0x138a690, C4<0>, C4<0>, C4<0>;
v0x12e3b30_0 .net "A", 0 0, L_0x138b3e0;  1 drivers
v0x12e3bd0_0 .net "B", 0 0, L_0x138b480;  1 drivers
v0x12e3730_0 .net "I", 7 0, L_0x138b0c0;  1 drivers
v0x12e3830_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12e3340_0 .net *"_s15", 0 0, L_0x138af10;  1 drivers
v0x12e3450_0 .net *"_s19", 0 0, L_0x138afa0;  1 drivers
L_0x7fc1d7be85b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x12df4a0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be85b8;  1 drivers
v0x12df580_0 .net "addORsub", 0 0, L_0x138a690;  1 drivers
v0x12df0a0_0 .net "carryin", 0 0, L_0x138a4a0;  1 drivers
v0x12decb0_0 .net "carryout", 0 0, L_0x1282da0;  1 drivers
v0x12ded80_0 .net "modB", 0 0, L_0x1381210;  1 drivers
v0x12cdc90_0 .net "out", 0 0, L_0x138adb0;  1 drivers
L_0x138a140 .part v0x12b3060_0, 0, 1;
LS_0x138b0c0_0_0 .concat8 [ 1 1 1 1], L_0x138af10, L_0x138afa0, L_0x138aaa0, L_0x7fc1d7be85b8;
LS_0x138b0c0_0_4 .concat8 [ 1 1 1 1], L_0x127eaf0, L_0x138ac20, L_0x138ac90, L_0x138ad20;
L_0x138b0c0 .concat8 [ 4 4 0 0], LS_0x138b0c0_0_0, LS_0x138b0c0_0_4;
S_0x123ef80 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x138a1e0 .functor XOR 1, L_0x138b3e0, L_0x1381210, C4<0>, C4<0>;
L_0x138a690 .functor XOR 1, L_0x138a1e0, L_0x138a4a0, C4<0>, C4<0>;
L_0x138a7a0 .functor AND 1, L_0x138a1e0, L_0x138a4a0, C4<1>, C4<1>;
L_0x138a830 .functor AND 1, L_0x138b3e0, L_0x1381210, C4<1>, C4<1>;
L_0x1282da0 .functor OR 1, L_0x138a7a0, L_0x138a830, C4<0>, C4<0>;
v0x123f570_0 .net "A", 0 0, L_0x138b3e0;  alias, 1 drivers
v0x123d260_0 .net "B", 0 0, L_0x1381210;  alias, 1 drivers
v0x123d320_0 .net "carryin", 0 0, L_0x138a4a0;  alias, 1 drivers
v0x123eaa0_0 .net "carryout", 0 0, L_0x1282da0;  alias, 1 drivers
v0x123eb60_0 .net "out1", 0 0, L_0x138a1e0;  1 drivers
v0x123e5d0_0 .net "out2", 0 0, L_0x138a7a0;  1 drivers
v0x123e690_0 .net "out3", 0 0, L_0x138a830;  1 drivers
v0x123e0f0_0 .net "sum", 0 0, L_0x138a690;  alias, 1 drivers
S_0x12473e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x127eaf0 .functor AND 1, L_0x138b3e0, L_0x138b480, C4<1>, C4<1>;
v0x1225670_0 .net "A", 0 0, L_0x138b3e0;  alias, 1 drivers
v0x1225710_0 .net "B", 0 0, L_0x138b480;  alias, 1 drivers
v0x1224f30_0 .net "out", 0 0, L_0x127eaf0;  1 drivers
S_0x118b1a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1225050_0 .net "I", 7 0, L_0x138b0c0;  alias, 1 drivers
v0x128bea0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x128bf40_0 .net "out", 0 0, L_0x138adb0;  alias, 1 drivers
L_0x138adb0 .part/v L_0x138b0c0, v0x12b3060_0, 1;
S_0x128baa0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138ac20 .functor NAND 1, L_0x138b3e0, L_0x138b480, C4<1>, C4<1>;
v0x128b6b0_0 .net "A", 0 0, L_0x138b3e0;  alias, 1 drivers
v0x128b7c0_0 .net "B", 0 0, L_0x138b480;  alias, 1 drivers
v0x12645e0_0 .net "out", 0 0, L_0x138ac20;  1 drivers
S_0x1287810 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138ac90 .functor NOR 1, L_0x138b3e0, L_0x138b480, C4<0>, C4<0>;
v0x1287410_0 .net "A", 0 0, L_0x138b3e0;  alias, 1 drivers
v0x12874b0_0 .net "B", 0 0, L_0x138b480;  alias, 1 drivers
v0x1287020_0 .net "out", 0 0, L_0x138ac90;  1 drivers
S_0x1283180 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138ad20 .functor OR 1, L_0x138b3e0, L_0x138b480, C4<0>, C4<0>;
v0x1287150_0 .net "A", 0 0, L_0x138b3e0;  alias, 1 drivers
v0x1282e30_0 .net "B", 0 0, L_0x138b480;  alias, 1 drivers
v0x1282990_0 .net "out", 0 0, L_0x138ad20;  1 drivers
S_0x12641c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1381210 .functor XOR 1, L_0x138b480, L_0x138a140, C4<0>, C4<0>;
v0x1282a90_0 .net "A", 0 0, L_0x138b480;  alias, 1 drivers
v0x127eb80_0 .net "B", 0 0, L_0x138a140;  1 drivers
v0x127e6f0_0 .net "out", 0 0, L_0x1381210;  alias, 1 drivers
S_0x127e300 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x123f920;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138aaa0 .functor XOR 1, L_0x138b3e0, L_0x138b480, C4<0>, C4<0>;
v0x127e800_0 .net "A", 0 0, L_0x138b3e0;  alias, 1 drivers
v0x1263da0_0 .net "B", 0 0, L_0x138b480;  alias, 1 drivers
v0x1263e60_0 .net "out", 0 0, L_0x138aaa0;  1 drivers
S_0x12cd890 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x138c160 .functor BUFZ 1, L_0x138b8c0, C4<0>, C4<0>, C4<0>;
L_0x138c1f0 .functor BUFZ 1, L_0x138b8c0, C4<0>, C4<0>, C4<0>;
v0x1287f90_0 .net "A", 0 0, L_0x138c630;  1 drivers
v0x12837d0_0 .net "B", 0 0, L_0x138b520;  1 drivers
v0x1283890_0 .net "I", 7 0, L_0x138c310;  1 drivers
v0x127f140_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12ea650_0 .net *"_s15", 0 0, L_0x138c160;  1 drivers
v0x1278290_0 .net *"_s19", 0 0, L_0x138c1f0;  1 drivers
L_0x7fc1d7be8600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x127f1e0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8600;  1 drivers
v0x12e4180_0 .net "addORsub", 0 0, L_0x138b8c0;  1 drivers
v0x12e4220_0 .net "carryin", 0 0, L_0x138b5c0;  1 drivers
v0x12dfaf0_0 .net "carryout", 0 0, L_0x12a5c50;  1 drivers
v0x12dfbc0_0 .net "modB", 0 0, L_0x138b690;  1 drivers
v0x12c9c50_0 .net "out", 0 0, L_0x138c000;  1 drivers
L_0x138b700 .part v0x12b3060_0, 0, 1;
LS_0x138c310_0_0 .concat8 [ 1 1 1 1], L_0x138c160, L_0x138c1f0, L_0x138bcf0, L_0x7fc1d7be8600;
LS_0x138c310_0_4 .concat8 [ 1 1 1 1], L_0x12a1910, L_0x138be70, L_0x138bee0, L_0x138bf70;
L_0x138c310 .concat8 [ 4 4 0 0], LS_0x138c310_0_0, LS_0x138c310_0_4;
S_0x12cd4a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x138b7a0 .functor XOR 1, L_0x138c630, L_0x138b690, C4<0>, C4<0>;
L_0x138b8c0 .functor XOR 1, L_0x138b7a0, L_0x138b5c0, C4<0>, C4<0>;
L_0x138b9f0 .functor AND 1, L_0x138b7a0, L_0x138b5c0, C4<1>, C4<1>;
L_0x138ba80 .functor AND 1, L_0x138c630, L_0x138b690, C4<1>, C4<1>;
L_0x12a5c50 .functor OR 1, L_0x138b9f0, L_0x138ba80, C4<0>, C4<0>;
v0x12c9680_0 .net "A", 0 0, L_0x138c630;  alias, 1 drivers
v0x12c9200_0 .net "B", 0 0, L_0x138b690;  alias, 1 drivers
v0x12c92c0_0 .net "carryin", 0 0, L_0x138b5c0;  alias, 1 drivers
v0x12c8e10_0 .net "carryout", 0 0, L_0x12a5c50;  alias, 1 drivers
v0x12c8ed0_0 .net "out1", 0 0, L_0x138b7a0;  1 drivers
v0x12c4f70_0 .net "out2", 0 0, L_0x138b9f0;  1 drivers
v0x12c5030_0 .net "out3", 0 0, L_0x138ba80;  1 drivers
v0x12c4b70_0 .net "sum", 0 0, L_0x138b8c0;  alias, 1 drivers
S_0x12c4780 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12a1910 .functor AND 1, L_0x138c630, L_0x138b520, C4<1>, C4<1>;
v0x12c08e0_0 .net "A", 0 0, L_0x138c630;  alias, 1 drivers
v0x12c09a0_0 .net "B", 0 0, L_0x138b520;  alias, 1 drivers
v0x12c04e0_0 .net "out", 0 0, L_0x12a1910;  1 drivers
S_0x12c00f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12c0600_0 .net "I", 7 0, L_0x138c310;  alias, 1 drivers
v0x1268c80_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1268d40_0 .net "out", 0 0, L_0x138c000;  alias, 1 drivers
L_0x138c000 .part/v L_0x138c310, v0x12b3060_0, 1;
S_0x1268880 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138be70 .functor NAND 1, L_0x138c630, L_0x138b520, C4<1>, C4<1>;
v0x12aaa30_0 .net "A", 0 0, L_0x138c630;  alias, 1 drivers
v0x12aab20_0 .net "B", 0 0, L_0x138b520;  alias, 1 drivers
v0x12aa630_0 .net "out", 0 0, L_0x138be70;  1 drivers
S_0x12aa240 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138bee0 .functor NOR 1, L_0x138c630, L_0x138b520, C4<0>, C4<0>;
v0x12aa740_0 .net "A", 0 0, L_0x138c630;  alias, 1 drivers
v0x12a63a0_0 .net "B", 0 0, L_0x138b520;  alias, 1 drivers
v0x12a6490_0 .net "out", 0 0, L_0x138bee0;  1 drivers
S_0x12a5fa0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138bf70 .functor OR 1, L_0x138c630, L_0x138b520, C4<0>, C4<0>;
v0x12a5bb0_0 .net "A", 0 0, L_0x138c630;  alias, 1 drivers
v0x12a5ce0_0 .net "B", 0 0, L_0x138b520;  alias, 1 drivers
v0x1268490_0 .net "out", 0 0, L_0x138bf70;  1 drivers
S_0x12a1d10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138b690 .functor XOR 1, L_0x138b520, L_0x138b700, C4<0>, C4<0>;
v0x12685a0_0 .net "A", 0 0, L_0x138b520;  alias, 1 drivers
v0x12a19a0_0 .net "B", 0 0, L_0x138b700;  1 drivers
v0x12a1520_0 .net "out", 0 0, L_0x138b690;  alias, 1 drivers
S_0x129d680 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12cd890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138bcf0 .functor XOR 1, L_0x138c630, L_0x138b520, C4<0>, C4<0>;
v0x129d2a0_0 .net "A", 0 0, L_0x138c630;  alias, 1 drivers
v0x129d360_0 .net "B", 0 0, L_0x138b520;  alias, 1 drivers
v0x1287e60_0 .net "out", 0 0, L_0x138bcf0;  1 drivers
S_0x12c55c0 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x138d3a0 .functor BUFZ 1, L_0x138cb00, C4<0>, C4<0>, C4<0>;
L_0x138d430 .functor BUFZ 1, L_0x138cb00, C4<0>, C4<0>, C4<0>;
v0x1120370_0 .net "A", 0 0, L_0x138d870;  1 drivers
v0x1120dc0_0 .net "B", 0 0, L_0x138d910;  1 drivers
v0x1120e80_0 .net "I", 7 0, L_0x138d550;  1 drivers
v0x1120f80_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1121020_0 .net *"_s15", 0 0, L_0x138d3a0;  1 drivers
v0x11210e0_0 .net *"_s19", 0 0, L_0x138d430;  1 drivers
L_0x7fc1d7be8648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1121b50_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8648;  1 drivers
v0x1121c10_0 .net "addORsub", 0 0, L_0x138cb00;  1 drivers
v0x1121cb0_0 .net "carryin", 0 0, L_0x138c8e0;  1 drivers
v0x1121e10_0 .net "carryout", 0 0, L_0x12e7f70;  1 drivers
v0x1123ba0_0 .net "modB", 0 0, L_0x138c6d0;  1 drivers
v0x1123c40_0 .net "out", 0 0, L_0x138d240;  1 drivers
L_0x138c740 .part v0x12b3060_0, 0, 1;
LS_0x138d550_0_0 .concat8 [ 1 1 1 1], L_0x138d3a0, L_0x138d430, L_0x138cf30, L_0x7fc1d7be8648;
LS_0x138d550_0_4 .concat8 [ 1 1 1 1], L_0x1120110, L_0x138d0b0, L_0x138d120, L_0x138d1b0;
L_0x138d550 .concat8 [ 4 4 0 0], LS_0x138d550_0_0, LS_0x138d550_0_4;
S_0x12692d0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x138c7e0 .functor XOR 1, L_0x138d870, L_0x138c6d0, C4<0>, C4<0>;
L_0x138cb00 .functor XOR 1, L_0x138c7e0, L_0x138c8e0, C4<0>, C4<0>;
L_0x138cc30 .functor AND 1, L_0x138c7e0, L_0x138c8e0, C4<1>, C4<1>;
L_0x138ccc0 .functor AND 1, L_0x138d870, L_0x138c6d0, C4<1>, C4<1>;
L_0x12e7f70 .functor OR 1, L_0x138cc30, L_0x138ccc0, C4<0>, C4<0>;
v0x12c0fd0_0 .net "A", 0 0, L_0x138d870;  alias, 1 drivers
v0x12ab080_0 .net "B", 0 0, L_0x138c6d0;  alias, 1 drivers
v0x12ab140_0 .net "carryin", 0 0, L_0x138c8e0;  alias, 1 drivers
v0x12a69f0_0 .net "carryout", 0 0, L_0x12e7f70;  alias, 1 drivers
v0x12a6ab0_0 .net "out1", 0 0, L_0x138c7e0;  1 drivers
v0x12a2360_0 .net "out2", 0 0, L_0x138cc30;  1 drivers
v0x12a2420_0 .net "out3", 0 0, L_0x138ccc0;  1 drivers
v0x129dcd0_0 .net "sum", 0 0, L_0x138cb00;  alias, 1 drivers
S_0x128c4f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1120110 .functor AND 1, L_0x138d870, L_0x138d910, C4<1>, C4<1>;
v0x1264c30_0 .net "A", 0 0, L_0x138d870;  alias, 1 drivers
v0x1264cf0_0 .net "B", 0 0, L_0x138d910;  alias, 1 drivers
v0x12e7ca0_0 .net "out", 0 0, L_0x1120110;  1 drivers
S_0x12e7dc0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12eaee0_0 .net "I", 7 0, L_0x138d550;  alias, 1 drivers
v0x12eafc0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12eb080_0 .net "out", 0 0, L_0x138d240;  alias, 1 drivers
L_0x138d240 .part/v L_0x138d550, v0x12b3060_0, 1;
S_0x1102740 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138d0b0 .functor NAND 1, L_0x138d870, L_0x138d910, C4<1>, C4<1>;
v0x1102960_0 .net "A", 0 0, L_0x138d870;  alias, 1 drivers
v0x1102a70_0 .net "B", 0 0, L_0x138d910;  alias, 1 drivers
v0x10fe180_0 .net "out", 0 0, L_0x138d0b0;  1 drivers
S_0x10fe260 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138d120 .functor NOR 1, L_0x138d870, L_0x138d910, C4<0>, C4<0>;
v0x10fe4d0_0 .net "A", 0 0, L_0x138d870;  alias, 1 drivers
v0x111d840_0 .net "B", 0 0, L_0x138d910;  alias, 1 drivers
v0x111d950_0 .net "out", 0 0, L_0x138d120;  1 drivers
S_0x111da70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138d1b0 .functor OR 1, L_0x138d870, L_0x138d910, C4<0>, C4<0>;
v0x111f320_0 .net "A", 0 0, L_0x138d870;  alias, 1 drivers
v0x111f3e0_0 .net "B", 0 0, L_0x138d910;  alias, 1 drivers
v0x111f4a0_0 .net "out", 0 0, L_0x138d1b0;  1 drivers
S_0x111f5a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138c6d0 .functor XOR 1, L_0x138d910, L_0x138c740, C4<0>, C4<0>;
v0x1120070_0 .net "A", 0 0, L_0x138d910;  alias, 1 drivers
v0x11201a0_0 .net "B", 0 0, L_0x138c740;  1 drivers
v0x1120260_0 .net "out", 0 0, L_0x138c6d0;  alias, 1 drivers
S_0x111e5d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12c55c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138cf30 .functor XOR 1, L_0x138d870, L_0x138d910, C4<0>, C4<0>;
v0x111e7a0_0 .net "A", 0 0, L_0x138d870;  alias, 1 drivers
v0x111e860_0 .net "B", 0 0, L_0x138d910;  alias, 1 drivers
v0x111e920_0 .net "out", 0 0, L_0x138cf30;  1 drivers
S_0x1123d60 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x138e6c0 .functor BUFZ 1, L_0x138de60, C4<0>, C4<0>, C4<0>;
L_0x138e750 .functor BUFZ 1, L_0x138de60, C4<0>, C4<0>, C4<0>;
v0x1126380_0 .net "A", 0 0, L_0x138eb90;  1 drivers
v0x1126420_0 .net "B", 0 0, L_0x138d9b0;  1 drivers
v0x108acf0_0 .net "I", 7 0, L_0x138e870;  1 drivers
v0x108adc0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x108ae60_0 .net *"_s15", 0 0, L_0x138e6c0;  1 drivers
v0x108af70_0 .net *"_s19", 0 0, L_0x138e750;  1 drivers
L_0x7fc1d7be8690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x108b050_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8690;  1 drivers
v0x10ea410_0 .net "addORsub", 0 0, L_0x138de60;  1 drivers
v0x10ea4b0_0 .net "carryin", 0 0, L_0x138da50;  1 drivers
v0x10ea610_0 .net "carryout", 0 0, L_0x10de870;  1 drivers
v0x10ea6e0_0 .net "modB", 0 0, L_0x13846c0;  1 drivers
v0x10ea780_0 .net "out", 0 0, L_0x138e560;  1 drivers
L_0x1384730 .part v0x12b3060_0, 0, 1;
LS_0x138e870_0_0 .concat8 [ 1 1 1 1], L_0x138e6c0, L_0x138e750, L_0x138e250, L_0x7fc1d7be8690;
LS_0x138e870_0_4 .concat8 [ 1 1 1 1], L_0x10f9d60, L_0x138e3d0, L_0x138e440, L_0x138e4d0;
L_0x138e870 .concat8 [ 4 4 0 0], LS_0x138e870_0_0, LS_0x138e870_0_4;
S_0x1132ac0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x138dd60 .functor XOR 1, L_0x138eb90, L_0x13846c0, C4<0>, C4<0>;
L_0x138de60 .functor XOR 1, L_0x138dd60, L_0x138da50, C4<0>, C4<0>;
L_0x138df70 .functor AND 1, L_0x138dd60, L_0x138da50, C4<1>, C4<1>;
L_0x138dfe0 .functor AND 1, L_0x138eb90, L_0x13846c0, C4<1>, C4<1>;
L_0x10de870 .functor OR 1, L_0x138df70, L_0x138dfe0, C4<0>, C4<0>;
v0x1132ce0_0 .net "A", 0 0, L_0x138eb90;  alias, 1 drivers
v0x10dc2e0_0 .net "B", 0 0, L_0x13846c0;  alias, 1 drivers
v0x10dc3a0_0 .net "carryin", 0 0, L_0x138da50;  alias, 1 drivers
v0x10dc470_0 .net "carryout", 0 0, L_0x10de870;  alias, 1 drivers
v0x10dc530_0 .net "out1", 0 0, L_0x138dd60;  1 drivers
v0x10dc640_0 .net "out2", 0 0, L_0x138df70;  1 drivers
v0x10c4eb0_0 .net "out3", 0 0, L_0x138dfe0;  1 drivers
v0x10c4f70_0 .net "sum", 0 0, L_0x138de60;  alias, 1 drivers
S_0x10c50d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x10f9d60 .functor AND 1, L_0x138eb90, L_0x138d9b0, C4<1>, C4<1>;
v0x10d8650_0 .net "A", 0 0, L_0x138eb90;  alias, 1 drivers
v0x10d86f0_0 .net "B", 0 0, L_0x138d9b0;  alias, 1 drivers
v0x10d8790_0 .net "out", 0 0, L_0x10f9d60;  1 drivers
S_0x10d88e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x111c6d0_0 .net "I", 7 0, L_0x138e870;  alias, 1 drivers
v0x111c790_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x111c850_0 .net "out", 0 0, L_0x138e560;  alias, 1 drivers
L_0x138e560 .part/v L_0x138e870, v0x12b3060_0, 1;
S_0x111c970 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138e3d0 .functor NAND 1, L_0x138eb90, L_0x138d9b0, C4<1>, C4<1>;
v0x10f8560_0 .net "A", 0 0, L_0x138eb90;  alias, 1 drivers
v0x10f8670_0 .net "B", 0 0, L_0x138d9b0;  alias, 1 drivers
v0x10f8730_0 .net "out", 0 0, L_0x138e3d0;  1 drivers
S_0x10dd440 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138e440 .functor NOR 1, L_0x138eb90, L_0x138d9b0, C4<0>, C4<0>;
v0x10dd6b0_0 .net "A", 0 0, L_0x138eb90;  alias, 1 drivers
v0x10dd770_0 .net "B", 0 0, L_0x138d9b0;  alias, 1 drivers
v0x10f8810_0 .net "out", 0 0, L_0x138e440;  1 drivers
S_0x10de590 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138e4d0 .functor OR 1, L_0x138eb90, L_0x138d9b0, C4<0>, C4<0>;
v0x10de7b0_0 .net "A", 0 0, L_0x138eb90;  alias, 1 drivers
v0x10de900_0 .net "B", 0 0, L_0x138d9b0;  alias, 1 drivers
v0x10fbe90_0 .net "out", 0 0, L_0x138e4d0;  1 drivers
S_0x10fbfb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13846c0 .functor XOR 1, L_0x138d9b0, L_0x1384730, C4<0>, C4<0>;
v0x10fc180_0 .net "A", 0 0, L_0x138d9b0;  alias, 1 drivers
v0x10f9df0_0 .net "B", 0 0, L_0x1384730;  1 drivers
v0x10f9eb0_0 .net "out", 0 0, L_0x13846c0;  alias, 1 drivers
S_0x10f9fc0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1123d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138e250 .functor XOR 1, L_0x138eb90, L_0x138d9b0, C4<0>, C4<0>;
v0x11260f0_0 .net "A", 0 0, L_0x138eb90;  alias, 1 drivers
v0x1126190_0 .net "B", 0 0, L_0x138d9b0;  alias, 1 drivers
v0x1126250_0 .net "out", 0 0, L_0x138e250;  1 drivers
S_0x10f3ef0 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x138f900 .functor BUFZ 1, L_0x138f0c0, C4<0>, C4<0>, C4<0>;
L_0x138f990 .functor BUFZ 1, L_0x138f0c0, C4<0>, C4<0>, C4<0>;
v0x1301ea0_0 .net "A", 0 0, L_0x138fdd0;  1 drivers
v0x1301f40_0 .net "B", 0 0, L_0x138fe70;  1 drivers
v0x1302000_0 .net "I", 7 0, L_0x138fab0;  1 drivers
v0x1302100_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13021a0_0 .net *"_s15", 0 0, L_0x138f900;  1 drivers
v0x13022b0_0 .net *"_s19", 0 0, L_0x138f990;  1 drivers
L_0x7fc1d7be86d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1302390_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be86d8;  1 drivers
v0x1302470_0 .net "addORsub", 0 0, L_0x138f0c0;  1 drivers
v0x1302510_0 .net "carryin", 0 0, L_0x138ee70;  1 drivers
v0x1302670_0 .net "carryout", 0 0, L_0x13012b0;  1 drivers
v0x1302740_0 .net "modB", 0 0, L_0x138ec30;  1 drivers
v0x13027e0_0 .net "out", 0 0, L_0x138f7a0;  1 drivers
L_0x138eca0 .part v0x12b3060_0, 0, 1;
LS_0x138fab0_0_0 .concat8 [ 1 1 1 1], L_0x138f900, L_0x138f990, L_0x138f4b0, L_0x7fc1d7be86d8;
LS_0x138fab0_0_4 .concat8 [ 1 1 1 1], L_0x1301790, L_0x138f630, L_0x138f6a0, L_0x138f710;
L_0x138fab0 .concat8 [ 4 4 0 0], LS_0x138fab0_0_0, LS_0x138fab0_0_4;
S_0x10f4160 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x138ed40 .functor XOR 1, L_0x138fdd0, L_0x138ec30, C4<0>, C4<0>;
L_0x138f0c0 .functor XOR 1, L_0x138ed40, L_0x138ee70, C4<0>, C4<0>;
L_0x138f1d0 .functor AND 1, L_0x138ed40, L_0x138ee70, C4<1>, C4<1>;
L_0x138f240 .functor AND 1, L_0x138fdd0, L_0x138ec30, C4<1>, C4<1>;
L_0x13012b0 .functor OR 1, L_0x138f1d0, L_0x138f240, C4<0>, C4<0>;
v0x10f5440_0 .net "A", 0 0, L_0x138fdd0;  alias, 1 drivers
v0x10f5500_0 .net "B", 0 0, L_0x138ec30;  alias, 1 drivers
v0x10f55c0_0 .net "carryin", 0 0, L_0x138ee70;  alias, 1 drivers
v0x10f5690_0 .net "carryout", 0 0, L_0x13012b0;  alias, 1 drivers
v0x10f6be0_0 .net "out1", 0 0, L_0x138ed40;  1 drivers
v0x10f6cf0_0 .net "out2", 0 0, L_0x138f1d0;  1 drivers
v0x10f6db0_0 .net "out3", 0 0, L_0x138f240;  1 drivers
v0x10f6e70_0 .net "sum", 0 0, L_0x138f0c0;  alias, 1 drivers
S_0x1128f90 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1301790 .functor AND 1, L_0x138fdd0, L_0x138fe70, C4<1>, C4<1>;
v0x11291d0_0 .net "A", 0 0, L_0x138fdd0;  alias, 1 drivers
v0x1129290_0 .net "B", 0 0, L_0x138fe70;  alias, 1 drivers
v0x11064a0_0 .net "out", 0 0, L_0x1301790;  1 drivers
S_0x11065c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1106810_0 .net "I", 7 0, L_0x138fab0;  alias, 1 drivers
v0x1300480_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1300520_0 .net "out", 0 0, L_0x138f7a0;  alias, 1 drivers
L_0x138f7a0 .part/v L_0x138fab0, v0x12b3060_0, 1;
S_0x13005c0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138f630 .functor NAND 1, L_0x138fdd0, L_0x138fe70, C4<1>, C4<1>;
v0x13007e0_0 .net "A", 0 0, L_0x138fdd0;  alias, 1 drivers
v0x13008d0_0 .net "B", 0 0, L_0x138fe70;  alias, 1 drivers
v0x1300990_0 .net "out", 0 0, L_0x138f630;  1 drivers
S_0x1300a90 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138f6a0 .functor NOR 1, L_0x138fdd0, L_0x138fe70, C4<0>, C4<0>;
v0x1300d00_0 .net "A", 0 0, L_0x138fdd0;  alias, 1 drivers
v0x1300dc0_0 .net "B", 0 0, L_0x138fe70;  alias, 1 drivers
v0x1300ed0_0 .net "out", 0 0, L_0x138f6a0;  1 drivers
S_0x1300fd0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138f710 .functor OR 1, L_0x138fdd0, L_0x138fe70, C4<0>, C4<0>;
v0x13011f0_0 .net "A", 0 0, L_0x138fdd0;  alias, 1 drivers
v0x1301340_0 .net "B", 0 0, L_0x138fe70;  alias, 1 drivers
v0x1301400_0 .net "out", 0 0, L_0x138f710;  1 drivers
S_0x1301500 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138ec30 .functor XOR 1, L_0x138fe70, L_0x138eca0, C4<0>, C4<0>;
v0x13016d0_0 .net "A", 0 0, L_0x138fe70;  alias, 1 drivers
v0x1301820_0 .net "B", 0 0, L_0x138eca0;  1 drivers
v0x13018e0_0 .net "out", 0 0, L_0x138ec30;  alias, 1 drivers
S_0x1301a20 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x10f3ef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138f4b0 .functor XOR 1, L_0x138fdd0, L_0x138fe70, C4<0>, C4<0>;
v0x1301bf0_0 .net "A", 0 0, L_0x138fdd0;  alias, 1 drivers
v0x1301cb0_0 .net "B", 0 0, L_0x138fe70;  alias, 1 drivers
v0x1301d70_0 .net "out", 0 0, L_0x138f4b0;  1 drivers
S_0x1302900 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1390b20 .functor BUFZ 1, L_0x1390280, C4<0>, C4<0>, C4<0>;
L_0x1390bb0 .functor BUFZ 1, L_0x1390280, C4<0>, C4<0>, C4<0>;
v0x1305870_0 .net "A", 0 0, L_0x1390ff0;  1 drivers
v0x1305910_0 .net "B", 0 0, L_0x138ff10;  1 drivers
v0x13059d0_0 .net "I", 7 0, L_0x1390cd0;  1 drivers
v0x1305ad0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1305b70_0 .net *"_s15", 0 0, L_0x1390b20;  1 drivers
v0x1305c80_0 .net *"_s19", 0 0, L_0x1390bb0;  1 drivers
L_0x7fc1d7be8720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1305d60_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8720;  1 drivers
v0x1305e40_0 .net "addORsub", 0 0, L_0x1390280;  1 drivers
v0x1305ee0_0 .net "carryin", 0 0, L_0x138ffb0;  1 drivers
v0x1306040_0 .net "carryout", 0 0, L_0x1304c80;  1 drivers
v0x1306110_0 .net "modB", 0 0, L_0x138efa0;  1 drivers
v0x13061b0_0 .net "out", 0 0, L_0x13909c0;  1 drivers
L_0x13900e0 .part v0x12b3060_0, 0, 1;
LS_0x1390cd0_0_0 .concat8 [ 1 1 1 1], L_0x1390b20, L_0x1390bb0, L_0x13906b0, L_0x7fc1d7be8720;
LS_0x1390cd0_0_4 .concat8 [ 1 1 1 1], L_0x1305160, L_0x1390830, L_0x13908a0, L_0x1390930;
L_0x1390cd0 .concat8 [ 4 4 0 0], LS_0x1390cd0_0_0, LS_0x1390cd0_0_4;
S_0x1302b70 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1390180 .functor XOR 1, L_0x1390ff0, L_0x138efa0, C4<0>, C4<0>;
L_0x1390280 .functor XOR 1, L_0x1390180, L_0x138ffb0, C4<0>, C4<0>;
L_0x13903b0 .functor AND 1, L_0x1390180, L_0x138ffb0, C4<1>, C4<1>;
L_0x1390440 .functor AND 1, L_0x1390ff0, L_0x138efa0, C4<1>, C4<1>;
L_0x1304c80 .functor OR 1, L_0x13903b0, L_0x1390440, C4<0>, C4<0>;
v0x1302e10_0 .net "A", 0 0, L_0x1390ff0;  alias, 1 drivers
v0x1302ef0_0 .net "B", 0 0, L_0x138efa0;  alias, 1 drivers
v0x1302fb0_0 .net "carryin", 0 0, L_0x138ffb0;  alias, 1 drivers
v0x1303080_0 .net "carryout", 0 0, L_0x1304c80;  alias, 1 drivers
v0x1303140_0 .net "out1", 0 0, L_0x1390180;  1 drivers
v0x1303250_0 .net "out2", 0 0, L_0x13903b0;  1 drivers
v0x1303310_0 .net "out3", 0 0, L_0x1390440;  1 drivers
v0x13033d0_0 .net "sum", 0 0, L_0x1390280;  alias, 1 drivers
S_0x1303530 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1305160 .functor AND 1, L_0x1390ff0, L_0x138ff10, C4<1>, C4<1>;
v0x1303770_0 .net "A", 0 0, L_0x1390ff0;  alias, 1 drivers
v0x1303830_0 .net "B", 0 0, L_0x138ff10;  alias, 1 drivers
v0x13038d0_0 .net "out", 0 0, L_0x1305160;  1 drivers
S_0x1303a20 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1303c70_0 .net "I", 7 0, L_0x1390cd0;  alias, 1 drivers
v0x1303d50_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1303e10_0 .net "out", 0 0, L_0x13909c0;  alias, 1 drivers
L_0x13909c0 .part/v L_0x1390cd0, v0x12b3060_0, 1;
S_0x1303f60 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1390830 .functor NAND 1, L_0x1390ff0, L_0x138ff10, C4<1>, C4<1>;
v0x1304180_0 .net "A", 0 0, L_0x1390ff0;  alias, 1 drivers
v0x1304290_0 .net "B", 0 0, L_0x138ff10;  alias, 1 drivers
v0x1304350_0 .net "out", 0 0, L_0x1390830;  1 drivers
S_0x1304460 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13908a0 .functor NOR 1, L_0x1390ff0, L_0x138ff10, C4<0>, C4<0>;
v0x13046d0_0 .net "A", 0 0, L_0x1390ff0;  alias, 1 drivers
v0x1304790_0 .net "B", 0 0, L_0x138ff10;  alias, 1 drivers
v0x13048a0_0 .net "out", 0 0, L_0x13908a0;  1 drivers
S_0x13049a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1390930 .functor OR 1, L_0x1390ff0, L_0x138ff10, C4<0>, C4<0>;
v0x1304bc0_0 .net "A", 0 0, L_0x1390ff0;  alias, 1 drivers
v0x1304d10_0 .net "B", 0 0, L_0x138ff10;  alias, 1 drivers
v0x1304dd0_0 .net "out", 0 0, L_0x1390930;  1 drivers
S_0x1304ed0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138efa0 .functor XOR 1, L_0x138ff10, L_0x13900e0, C4<0>, C4<0>;
v0x13050a0_0 .net "A", 0 0, L_0x138ff10;  alias, 1 drivers
v0x13051f0_0 .net "B", 0 0, L_0x13900e0;  1 drivers
v0x13052b0_0 .net "out", 0 0, L_0x138efa0;  alias, 1 drivers
S_0x13053f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1302900;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13906b0 .functor XOR 1, L_0x1390ff0, L_0x138ff10, C4<0>, C4<0>;
v0x13055c0_0 .net "A", 0 0, L_0x1390ff0;  alias, 1 drivers
v0x1305680_0 .net "B", 0 0, L_0x138ff10;  alias, 1 drivers
v0x1305740_0 .net "out", 0 0, L_0x13906b0;  1 drivers
S_0x13062d0 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x137d3e0 .functor BUFZ 1, L_0x137cbb0, C4<0>, C4<0>, C4<0>;
L_0x137d470 .functor BUFZ 1, L_0x137cbb0, C4<0>, C4<0>, C4<0>;
v0x1309240_0 .net "A", 0 0, L_0x137d940;  1 drivers
v0x13092e0_0 .net "B", 0 0, L_0x137d9e0;  1 drivers
v0x13093a0_0 .net "I", 7 0, L_0x137d590;  1 drivers
v0x13094a0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1309540_0 .net *"_s15", 0 0, L_0x137d3e0;  1 drivers
v0x1309650_0 .net *"_s19", 0 0, L_0x137d470;  1 drivers
L_0x7fc1d7be8258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1309730_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8258;  1 drivers
v0x1309810_0 .net "addORsub", 0 0, L_0x137cbb0;  1 drivers
v0x13098b0_0 .net "carryin", 0 0, L_0x137da80;  1 drivers
v0x1309a10_0 .net "carryout", 0 0, L_0x1308650;  1 drivers
v0x1309ae0_0 .net "modB", 0 0, L_0x137c9a0;  1 drivers
v0x1309b80_0 .net "out", 0 0, L_0x137d280;  1 drivers
L_0x137ca10 .part v0x12b3060_0, 0, 1;
LS_0x137d590_0_0 .concat8 [ 1 1 1 1], L_0x137d3e0, L_0x137d470, L_0x137cf70, L_0x7fc1d7be8258;
LS_0x137d590_0_4 .concat8 [ 1 1 1 1], L_0x1308b30, L_0x137d0f0, L_0x137d160, L_0x137d1f0;
L_0x137d590 .concat8 [ 4 4 0 0], LS_0x137d590_0_0, LS_0x137d590_0_4;
S_0x1306540 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x137cab0 .functor XOR 1, L_0x137d940, L_0x137c9a0, C4<0>, C4<0>;
L_0x137cbb0 .functor XOR 1, L_0x137cab0, L_0x137da80, C4<0>, C4<0>;
L_0x137cc70 .functor AND 1, L_0x137cab0, L_0x137da80, C4<1>, C4<1>;
L_0x137cd00 .functor AND 1, L_0x137d940, L_0x137c9a0, C4<1>, C4<1>;
L_0x1308650 .functor OR 1, L_0x137cc70, L_0x137cd00, C4<0>, C4<0>;
v0x13067e0_0 .net "A", 0 0, L_0x137d940;  alias, 1 drivers
v0x13068c0_0 .net "B", 0 0, L_0x137c9a0;  alias, 1 drivers
v0x1306980_0 .net "carryin", 0 0, L_0x137da80;  alias, 1 drivers
v0x1306a50_0 .net "carryout", 0 0, L_0x1308650;  alias, 1 drivers
v0x1306b10_0 .net "out1", 0 0, L_0x137cab0;  1 drivers
v0x1306c20_0 .net "out2", 0 0, L_0x137cc70;  1 drivers
v0x1306ce0_0 .net "out3", 0 0, L_0x137cd00;  1 drivers
v0x1306da0_0 .net "sum", 0 0, L_0x137cbb0;  alias, 1 drivers
S_0x1306f00 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1308b30 .functor AND 1, L_0x137d940, L_0x137d9e0, C4<1>, C4<1>;
v0x1307140_0 .net "A", 0 0, L_0x137d940;  alias, 1 drivers
v0x1307200_0 .net "B", 0 0, L_0x137d9e0;  alias, 1 drivers
v0x13072a0_0 .net "out", 0 0, L_0x1308b30;  1 drivers
S_0x13073f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1307640_0 .net "I", 7 0, L_0x137d590;  alias, 1 drivers
v0x1307720_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13077e0_0 .net "out", 0 0, L_0x137d280;  alias, 1 drivers
L_0x137d280 .part/v L_0x137d590, v0x12b3060_0, 1;
S_0x1307930 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137d0f0 .functor NAND 1, L_0x137d940, L_0x137d9e0, C4<1>, C4<1>;
v0x1307b50_0 .net "A", 0 0, L_0x137d940;  alias, 1 drivers
v0x1307c60_0 .net "B", 0 0, L_0x137d9e0;  alias, 1 drivers
v0x1307d20_0 .net "out", 0 0, L_0x137d0f0;  1 drivers
S_0x1307e30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137d160 .functor NOR 1, L_0x137d940, L_0x137d9e0, C4<0>, C4<0>;
v0x13080a0_0 .net "A", 0 0, L_0x137d940;  alias, 1 drivers
v0x1308160_0 .net "B", 0 0, L_0x137d9e0;  alias, 1 drivers
v0x1308270_0 .net "out", 0 0, L_0x137d160;  1 drivers
S_0x1308370 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137d1f0 .functor OR 1, L_0x137d940, L_0x137d9e0, C4<0>, C4<0>;
v0x1308590_0 .net "A", 0 0, L_0x137d940;  alias, 1 drivers
v0x13086e0_0 .net "B", 0 0, L_0x137d9e0;  alias, 1 drivers
v0x13087a0_0 .net "out", 0 0, L_0x137d1f0;  1 drivers
S_0x13088a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137c9a0 .functor XOR 1, L_0x137d9e0, L_0x137ca10, C4<0>, C4<0>;
v0x1308a70_0 .net "A", 0 0, L_0x137d9e0;  alias, 1 drivers
v0x1308bc0_0 .net "B", 0 0, L_0x137ca10;  1 drivers
v0x1308c80_0 .net "out", 0 0, L_0x137c9a0;  alias, 1 drivers
S_0x1308dc0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x13062d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137cf70 .functor XOR 1, L_0x137d940, L_0x137d9e0, C4<0>, C4<0>;
v0x1308f90_0 .net "A", 0 0, L_0x137d940;  alias, 1 drivers
v0x1309050_0 .net "B", 0 0, L_0x137d9e0;  alias, 1 drivers
v0x1309110_0 .net "out", 0 0, L_0x137cf70;  1 drivers
S_0x1309ca0 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1391d50 .functor BUFZ 1, L_0x13914b0, C4<0>, C4<0>, C4<0>;
L_0x1391de0 .functor BUFZ 1, L_0x13914b0, C4<0>, C4<0>, C4<0>;
v0x130cc10_0 .net "A", 0 0, L_0x1392220;  1 drivers
v0x130ccb0_0 .net "B", 0 0, L_0x13922c0;  1 drivers
v0x130cd70_0 .net "I", 7 0, L_0x1391f00;  1 drivers
v0x130ce70_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x130cf10_0 .net *"_s15", 0 0, L_0x1391d50;  1 drivers
v0x130d020_0 .net *"_s19", 0 0, L_0x1391de0;  1 drivers
L_0x7fc1d7be8768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x130d100_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8768;  1 drivers
v0x130d1e0_0 .net "addORsub", 0 0, L_0x13914b0;  1 drivers
v0x130d280_0 .net "carryin", 0 0, L_0x1391090;  1 drivers
v0x130d3e0_0 .net "carryout", 0 0, L_0x130c020;  1 drivers
v0x130d4b0_0 .net "modB", 0 0, L_0x1391280;  1 drivers
v0x130d550_0 .net "out", 0 0, L_0x1391bf0;  1 drivers
L_0x13912f0 .part v0x12b3060_0, 0, 1;
LS_0x1391f00_0_0 .concat8 [ 1 1 1 1], L_0x1391d50, L_0x1391de0, L_0x13918e0, L_0x7fc1d7be8768;
LS_0x1391f00_0_4 .concat8 [ 1 1 1 1], L_0x130c500, L_0x1391a60, L_0x1391ad0, L_0x1391b60;
L_0x1391f00 .concat8 [ 4 4 0 0], LS_0x1391f00_0_0, LS_0x1391f00_0_4;
S_0x1309f10 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1391390 .functor XOR 1, L_0x1392220, L_0x1391280, C4<0>, C4<0>;
L_0x13914b0 .functor XOR 1, L_0x1391390, L_0x1391090, C4<0>, C4<0>;
L_0x13915e0 .functor AND 1, L_0x1391390, L_0x1391090, C4<1>, C4<1>;
L_0x1391670 .functor AND 1, L_0x1392220, L_0x1391280, C4<1>, C4<1>;
L_0x130c020 .functor OR 1, L_0x13915e0, L_0x1391670, C4<0>, C4<0>;
v0x130a1b0_0 .net "A", 0 0, L_0x1392220;  alias, 1 drivers
v0x130a290_0 .net "B", 0 0, L_0x1391280;  alias, 1 drivers
v0x130a350_0 .net "carryin", 0 0, L_0x1391090;  alias, 1 drivers
v0x130a420_0 .net "carryout", 0 0, L_0x130c020;  alias, 1 drivers
v0x130a4e0_0 .net "out1", 0 0, L_0x1391390;  1 drivers
v0x130a5f0_0 .net "out2", 0 0, L_0x13915e0;  1 drivers
v0x130a6b0_0 .net "out3", 0 0, L_0x1391670;  1 drivers
v0x130a770_0 .net "sum", 0 0, L_0x13914b0;  alias, 1 drivers
S_0x130a8d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x130c500 .functor AND 1, L_0x1392220, L_0x13922c0, C4<1>, C4<1>;
v0x130ab10_0 .net "A", 0 0, L_0x1392220;  alias, 1 drivers
v0x130abd0_0 .net "B", 0 0, L_0x13922c0;  alias, 1 drivers
v0x130ac70_0 .net "out", 0 0, L_0x130c500;  1 drivers
S_0x130adc0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x130b010_0 .net "I", 7 0, L_0x1391f00;  alias, 1 drivers
v0x130b0f0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x130b1b0_0 .net "out", 0 0, L_0x1391bf0;  alias, 1 drivers
L_0x1391bf0 .part/v L_0x1391f00, v0x12b3060_0, 1;
S_0x130b300 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1391a60 .functor NAND 1, L_0x1392220, L_0x13922c0, C4<1>, C4<1>;
v0x130b520_0 .net "A", 0 0, L_0x1392220;  alias, 1 drivers
v0x130b630_0 .net "B", 0 0, L_0x13922c0;  alias, 1 drivers
v0x130b6f0_0 .net "out", 0 0, L_0x1391a60;  1 drivers
S_0x130b800 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1391ad0 .functor NOR 1, L_0x1392220, L_0x13922c0, C4<0>, C4<0>;
v0x130ba70_0 .net "A", 0 0, L_0x1392220;  alias, 1 drivers
v0x130bb30_0 .net "B", 0 0, L_0x13922c0;  alias, 1 drivers
v0x130bc40_0 .net "out", 0 0, L_0x1391ad0;  1 drivers
S_0x130bd40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1391b60 .functor OR 1, L_0x1392220, L_0x13922c0, C4<0>, C4<0>;
v0x130bf60_0 .net "A", 0 0, L_0x1392220;  alias, 1 drivers
v0x130c0b0_0 .net "B", 0 0, L_0x13922c0;  alias, 1 drivers
v0x130c170_0 .net "out", 0 0, L_0x1391b60;  1 drivers
S_0x130c270 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1391280 .functor XOR 1, L_0x13922c0, L_0x13912f0, C4<0>, C4<0>;
v0x130c440_0 .net "A", 0 0, L_0x13922c0;  alias, 1 drivers
v0x130c590_0 .net "B", 0 0, L_0x13912f0;  1 drivers
v0x130c650_0 .net "out", 0 0, L_0x1391280;  alias, 1 drivers
S_0x130c790 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1309ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13918e0 .functor XOR 1, L_0x1392220, L_0x13922c0, C4<0>, C4<0>;
v0x130c960_0 .net "A", 0 0, L_0x1392220;  alias, 1 drivers
v0x130ca20_0 .net "B", 0 0, L_0x13922c0;  alias, 1 drivers
v0x130cae0_0 .net "out", 0 0, L_0x13918e0;  1 drivers
S_0x130d670 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1392f80 .functor BUFZ 1, L_0x1392700, C4<0>, C4<0>, C4<0>;
L_0x1393010 .functor BUFZ 1, L_0x1392700, C4<0>, C4<0>, C4<0>;
v0x13105e0_0 .net "A", 0 0, L_0x1393450;  1 drivers
v0x1310680_0 .net "B", 0 0, L_0x1392360;  1 drivers
v0x1310740_0 .net "I", 7 0, L_0x1393130;  1 drivers
v0x1310840_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13108e0_0 .net *"_s15", 0 0, L_0x1392f80;  1 drivers
v0x13109f0_0 .net *"_s19", 0 0, L_0x1393010;  1 drivers
L_0x7fc1d7be87b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1310ad0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be87b0;  1 drivers
v0x1310bb0_0 .net "addORsub", 0 0, L_0x1392700;  1 drivers
v0x1310c50_0 .net "carryin", 0 0, L_0x1392400;  1 drivers
v0x1310db0_0 .net "carryout", 0 0, L_0x130f9f0;  1 drivers
v0x1310e80_0 .net "modB", 0 0, L_0x13911c0;  1 drivers
v0x1310f20_0 .net "out", 0 0, L_0x1392e20;  1 drivers
L_0x1392560 .part v0x12b3060_0, 0, 1;
LS_0x1393130_0_0 .concat8 [ 1 1 1 1], L_0x1392f80, L_0x1393010, L_0x1392b10, L_0x7fc1d7be87b0;
LS_0x1393130_0_4 .concat8 [ 1 1 1 1], L_0x130fed0, L_0x1392c90, L_0x1392d00, L_0x1392d90;
L_0x1393130 .concat8 [ 4 4 0 0], LS_0x1393130_0_0, LS_0x1393130_0_4;
S_0x130d8e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1392600 .functor XOR 1, L_0x1393450, L_0x13911c0, C4<0>, C4<0>;
L_0x1392700 .functor XOR 1, L_0x1392600, L_0x1392400, C4<0>, C4<0>;
L_0x1392810 .functor AND 1, L_0x1392600, L_0x1392400, C4<1>, C4<1>;
L_0x13928a0 .functor AND 1, L_0x1393450, L_0x13911c0, C4<1>, C4<1>;
L_0x130f9f0 .functor OR 1, L_0x1392810, L_0x13928a0, C4<0>, C4<0>;
v0x130db80_0 .net "A", 0 0, L_0x1393450;  alias, 1 drivers
v0x130dc60_0 .net "B", 0 0, L_0x13911c0;  alias, 1 drivers
v0x130dd20_0 .net "carryin", 0 0, L_0x1392400;  alias, 1 drivers
v0x130ddf0_0 .net "carryout", 0 0, L_0x130f9f0;  alias, 1 drivers
v0x130deb0_0 .net "out1", 0 0, L_0x1392600;  1 drivers
v0x130dfc0_0 .net "out2", 0 0, L_0x1392810;  1 drivers
v0x130e080_0 .net "out3", 0 0, L_0x13928a0;  1 drivers
v0x130e140_0 .net "sum", 0 0, L_0x1392700;  alias, 1 drivers
S_0x130e2a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x130fed0 .functor AND 1, L_0x1393450, L_0x1392360, C4<1>, C4<1>;
v0x130e4e0_0 .net "A", 0 0, L_0x1393450;  alias, 1 drivers
v0x130e5a0_0 .net "B", 0 0, L_0x1392360;  alias, 1 drivers
v0x130e640_0 .net "out", 0 0, L_0x130fed0;  1 drivers
S_0x130e790 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x130e9e0_0 .net "I", 7 0, L_0x1393130;  alias, 1 drivers
v0x130eac0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x130eb80_0 .net "out", 0 0, L_0x1392e20;  alias, 1 drivers
L_0x1392e20 .part/v L_0x1393130, v0x12b3060_0, 1;
S_0x130ecd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1392c90 .functor NAND 1, L_0x1393450, L_0x1392360, C4<1>, C4<1>;
v0x130eef0_0 .net "A", 0 0, L_0x1393450;  alias, 1 drivers
v0x130f000_0 .net "B", 0 0, L_0x1392360;  alias, 1 drivers
v0x130f0c0_0 .net "out", 0 0, L_0x1392c90;  1 drivers
S_0x130f1d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1392d00 .functor NOR 1, L_0x1393450, L_0x1392360, C4<0>, C4<0>;
v0x130f440_0 .net "A", 0 0, L_0x1393450;  alias, 1 drivers
v0x130f500_0 .net "B", 0 0, L_0x1392360;  alias, 1 drivers
v0x130f610_0 .net "out", 0 0, L_0x1392d00;  1 drivers
S_0x130f710 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1392d90 .functor OR 1, L_0x1393450, L_0x1392360, C4<0>, C4<0>;
v0x130f930_0 .net "A", 0 0, L_0x1393450;  alias, 1 drivers
v0x130fa80_0 .net "B", 0 0, L_0x1392360;  alias, 1 drivers
v0x130fb40_0 .net "out", 0 0, L_0x1392d90;  1 drivers
S_0x130fc40 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13911c0 .functor XOR 1, L_0x1392360, L_0x1392560, C4<0>, C4<0>;
v0x130fe10_0 .net "A", 0 0, L_0x1392360;  alias, 1 drivers
v0x130ff60_0 .net "B", 0 0, L_0x1392560;  1 drivers
v0x1310020_0 .net "out", 0 0, L_0x13911c0;  alias, 1 drivers
S_0x1310160 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x130d670;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1392b10 .functor XOR 1, L_0x1393450, L_0x1392360, C4<0>, C4<0>;
v0x1310330_0 .net "A", 0 0, L_0x1393450;  alias, 1 drivers
v0x13103f0_0 .net "B", 0 0, L_0x1392360;  alias, 1 drivers
v0x13104b0_0 .net "out", 0 0, L_0x1392b10;  1 drivers
S_0x1311040 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x13941c0 .functor BUFZ 1, L_0x1393920, C4<0>, C4<0>, C4<0>;
L_0x1394250 .functor BUFZ 1, L_0x1393920, C4<0>, C4<0>, C4<0>;
v0x1313fb0_0 .net "A", 0 0, L_0x1394690;  1 drivers
v0x1314050_0 .net "B", 0 0, L_0x1394730;  1 drivers
v0x1314110_0 .net "I", 7 0, L_0x1394370;  1 drivers
v0x1314210_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x12ea440_0 .net *"_s15", 0 0, L_0x13941c0;  1 drivers
v0x12ea550_0 .net *"_s19", 0 0, L_0x1394250;  1 drivers
L_0x7fc1d7be87f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x13146c0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be87f8;  1 drivers
v0x1314760_0 .net "addORsub", 0 0, L_0x1393920;  1 drivers
v0x1314800_0 .net "carryin", 0 0, L_0x13934f0;  1 drivers
v0x1314930_0 .net "carryout", 0 0, L_0x13133c0;  1 drivers
v0x1314a00_0 .net "modB", 0 0, L_0x1393710;  1 drivers
v0x1314aa0_0 .net "out", 0 0, L_0x1394060;  1 drivers
L_0x1393780 .part v0x12b3060_0, 0, 1;
LS_0x1394370_0_0 .concat8 [ 1 1 1 1], L_0x13941c0, L_0x1394250, L_0x1393d50, L_0x7fc1d7be87f8;
LS_0x1394370_0_4 .concat8 [ 1 1 1 1], L_0x13138a0, L_0x1393ed0, L_0x1393f40, L_0x1393fd0;
L_0x1394370 .concat8 [ 4 4 0 0], LS_0x1394370_0_0, LS_0x1394370_0_4;
S_0x13112b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1393820 .functor XOR 1, L_0x1394690, L_0x1393710, C4<0>, C4<0>;
L_0x1393920 .functor XOR 1, L_0x1393820, L_0x13934f0, C4<0>, C4<0>;
L_0x1393a50 .functor AND 1, L_0x1393820, L_0x13934f0, C4<1>, C4<1>;
L_0x1393ae0 .functor AND 1, L_0x1394690, L_0x1393710, C4<1>, C4<1>;
L_0x13133c0 .functor OR 1, L_0x1393a50, L_0x1393ae0, C4<0>, C4<0>;
v0x1311550_0 .net "A", 0 0, L_0x1394690;  alias, 1 drivers
v0x1311630_0 .net "B", 0 0, L_0x1393710;  alias, 1 drivers
v0x13116f0_0 .net "carryin", 0 0, L_0x13934f0;  alias, 1 drivers
v0x13117c0_0 .net "carryout", 0 0, L_0x13133c0;  alias, 1 drivers
v0x1311880_0 .net "out1", 0 0, L_0x1393820;  1 drivers
v0x1311990_0 .net "out2", 0 0, L_0x1393a50;  1 drivers
v0x1311a50_0 .net "out3", 0 0, L_0x1393ae0;  1 drivers
v0x1311b10_0 .net "sum", 0 0, L_0x1393920;  alias, 1 drivers
S_0x1311c70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13138a0 .functor AND 1, L_0x1394690, L_0x1394730, C4<1>, C4<1>;
v0x1311eb0_0 .net "A", 0 0, L_0x1394690;  alias, 1 drivers
v0x1311f70_0 .net "B", 0 0, L_0x1394730;  alias, 1 drivers
v0x1312010_0 .net "out", 0 0, L_0x13138a0;  1 drivers
S_0x1312160 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x13123b0_0 .net "I", 7 0, L_0x1394370;  alias, 1 drivers
v0x1312490_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1312550_0 .net "out", 0 0, L_0x1394060;  alias, 1 drivers
L_0x1394060 .part/v L_0x1394370, v0x12b3060_0, 1;
S_0x13126a0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1393ed0 .functor NAND 1, L_0x1394690, L_0x1394730, C4<1>, C4<1>;
v0x13128c0_0 .net "A", 0 0, L_0x1394690;  alias, 1 drivers
v0x13129d0_0 .net "B", 0 0, L_0x1394730;  alias, 1 drivers
v0x1312a90_0 .net "out", 0 0, L_0x1393ed0;  1 drivers
S_0x1312ba0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1393f40 .functor NOR 1, L_0x1394690, L_0x1394730, C4<0>, C4<0>;
v0x1312e10_0 .net "A", 0 0, L_0x1394690;  alias, 1 drivers
v0x1312ed0_0 .net "B", 0 0, L_0x1394730;  alias, 1 drivers
v0x1312fe0_0 .net "out", 0 0, L_0x1393f40;  1 drivers
S_0x13130e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1393fd0 .functor OR 1, L_0x1394690, L_0x1394730, C4<0>, C4<0>;
v0x1313300_0 .net "A", 0 0, L_0x1394690;  alias, 1 drivers
v0x1313450_0 .net "B", 0 0, L_0x1394730;  alias, 1 drivers
v0x1313510_0 .net "out", 0 0, L_0x1393fd0;  1 drivers
S_0x1313610 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1393710 .functor XOR 1, L_0x1394730, L_0x1393780, C4<0>, C4<0>;
v0x13137e0_0 .net "A", 0 0, L_0x1394730;  alias, 1 drivers
v0x1313930_0 .net "B", 0 0, L_0x1393780;  1 drivers
v0x13139f0_0 .net "out", 0 0, L_0x1393710;  alias, 1 drivers
S_0x1313b30 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1311040;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1393d50 .functor XOR 1, L_0x1394690, L_0x1394730, C4<0>, C4<0>;
v0x1313d00_0 .net "A", 0 0, L_0x1394690;  alias, 1 drivers
v0x1313dc0_0 .net "B", 0 0, L_0x1394730;  alias, 1 drivers
v0x1313e80_0 .net "out", 0 0, L_0x1393d50;  1 drivers
S_0x1314bc0 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x13953f0 .functor BUFZ 1, L_0x1394b50, C4<0>, C4<0>, C4<0>;
L_0x1395480 .functor BUFZ 1, L_0x1394b50, C4<0>, C4<0>, C4<0>;
v0x1317bb0_0 .net "A", 0 0, L_0x13958c0;  1 drivers
v0x1317c50_0 .net "B", 0 0, L_0x13947d0;  1 drivers
v0x1317d10_0 .net "I", 7 0, L_0x13955a0;  1 drivers
v0x1317e10_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1317eb0_0 .net *"_s15", 0 0, L_0x13953f0;  1 drivers
v0x1317fc0_0 .net *"_s19", 0 0, L_0x1395480;  1 drivers
L_0x7fc1d7be8840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x13180a0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8840;  1 drivers
v0x1318180_0 .net "addORsub", 0 0, L_0x1394b50;  1 drivers
v0x1318220_0 .net "carryin", 0 0, L_0x1394870;  1 drivers
v0x1318380_0 .net "carryout", 0 0, L_0x1316fc0;  1 drivers
v0x1318450_0 .net "modB", 0 0, L_0x1393620;  1 drivers
v0x13184f0_0 .net "out", 0 0, L_0x1395290;  1 drivers
L_0x1394a00 .part v0x12b3060_0, 0, 1;
LS_0x13955a0_0_0 .concat8 [ 1 1 1 1], L_0x13953f0, L_0x1395480, L_0x1394f80, L_0x7fc1d7be8840;
LS_0x13955a0_0_4 .concat8 [ 1 1 1 1], L_0x13174a0, L_0x1395100, L_0x1395170, L_0x1395200;
L_0x13955a0 .concat8 [ 4 4 0 0], LS_0x13955a0_0_0, LS_0x13955a0_0_4;
S_0x1314f40 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1393690 .functor XOR 1, L_0x13958c0, L_0x1393620, C4<0>, C4<0>;
L_0x1394b50 .functor XOR 1, L_0x1393690, L_0x1394870, C4<0>, C4<0>;
L_0x1394c80 .functor AND 1, L_0x1393690, L_0x1394870, C4<1>, C4<1>;
L_0x1394d10 .functor AND 1, L_0x13958c0, L_0x1393620, C4<1>, C4<1>;
L_0x1316fc0 .functor OR 1, L_0x1394c80, L_0x1394d10, C4<0>, C4<0>;
v0x1315170_0 .net "A", 0 0, L_0x13958c0;  alias, 1 drivers
v0x1315230_0 .net "B", 0 0, L_0x1393620;  alias, 1 drivers
v0x13152f0_0 .net "carryin", 0 0, L_0x1394870;  alias, 1 drivers
v0x13153c0_0 .net "carryout", 0 0, L_0x1316fc0;  alias, 1 drivers
v0x1315480_0 .net "out1", 0 0, L_0x1393690;  1 drivers
v0x1315590_0 .net "out2", 0 0, L_0x1394c80;  1 drivers
v0x1315650_0 .net "out3", 0 0, L_0x1394d10;  1 drivers
v0x1315710_0 .net "sum", 0 0, L_0x1394b50;  alias, 1 drivers
S_0x1315870 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13174a0 .functor AND 1, L_0x13958c0, L_0x13947d0, C4<1>, C4<1>;
v0x1315ab0_0 .net "A", 0 0, L_0x13958c0;  alias, 1 drivers
v0x1315b70_0 .net "B", 0 0, L_0x13947d0;  alias, 1 drivers
v0x1315c10_0 .net "out", 0 0, L_0x13174a0;  1 drivers
S_0x1315d60 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1315fb0_0 .net "I", 7 0, L_0x13955a0;  alias, 1 drivers
v0x1316090_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1316150_0 .net "out", 0 0, L_0x1395290;  alias, 1 drivers
L_0x1395290 .part/v L_0x13955a0, v0x12b3060_0, 1;
S_0x13162a0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1395100 .functor NAND 1, L_0x13958c0, L_0x13947d0, C4<1>, C4<1>;
v0x13164c0_0 .net "A", 0 0, L_0x13958c0;  alias, 1 drivers
v0x13165d0_0 .net "B", 0 0, L_0x13947d0;  alias, 1 drivers
v0x1316690_0 .net "out", 0 0, L_0x1395100;  1 drivers
S_0x13167a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1395170 .functor NOR 1, L_0x13958c0, L_0x13947d0, C4<0>, C4<0>;
v0x1316a10_0 .net "A", 0 0, L_0x13958c0;  alias, 1 drivers
v0x1316ad0_0 .net "B", 0 0, L_0x13947d0;  alias, 1 drivers
v0x1316be0_0 .net "out", 0 0, L_0x1395170;  1 drivers
S_0x1316ce0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1395200 .functor OR 1, L_0x13958c0, L_0x13947d0, C4<0>, C4<0>;
v0x1316f00_0 .net "A", 0 0, L_0x13958c0;  alias, 1 drivers
v0x1317050_0 .net "B", 0 0, L_0x13947d0;  alias, 1 drivers
v0x1317110_0 .net "out", 0 0, L_0x1395200;  1 drivers
S_0x1317210 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1393620 .functor XOR 1, L_0x13947d0, L_0x1394a00, C4<0>, C4<0>;
v0x13173e0_0 .net "A", 0 0, L_0x13947d0;  alias, 1 drivers
v0x1317530_0 .net "B", 0 0, L_0x1394a00;  1 drivers
v0x13175f0_0 .net "out", 0 0, L_0x1393620;  alias, 1 drivers
S_0x1317730 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1314bc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1394f80 .functor XOR 1, L_0x13958c0, L_0x13947d0, C4<0>, C4<0>;
v0x1317900_0 .net "A", 0 0, L_0x13958c0;  alias, 1 drivers
v0x13179c0_0 .net "B", 0 0, L_0x13947d0;  alias, 1 drivers
v0x1317a80_0 .net "out", 0 0, L_0x1394f80;  1 drivers
S_0x1318610 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1396620 .functor BUFZ 1, L_0x1395dc0, C4<0>, C4<0>, C4<0>;
L_0x13966b0 .functor BUFZ 1, L_0x1395dc0, C4<0>, C4<0>, C4<0>;
v0x131b580_0 .net "A", 0 0, L_0x1396af0;  1 drivers
v0x131b620_0 .net "B", 0 0, L_0x1396b90;  1 drivers
v0x131b6e0_0 .net "I", 7 0, L_0x13967d0;  1 drivers
v0x131b7e0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x131b880_0 .net *"_s15", 0 0, L_0x1396620;  1 drivers
v0x131b990_0 .net *"_s19", 0 0, L_0x13966b0;  1 drivers
L_0x7fc1d7be8888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x131ba70_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8888;  1 drivers
v0x131bb50_0 .net "addORsub", 0 0, L_0x1395dc0;  1 drivers
v0x131bbf0_0 .net "carryin", 0 0, L_0x1395960;  1 drivers
v0x131bd50_0 .net "carryout", 0 0, L_0x131a990;  1 drivers
v0x131be20_0 .net "modB", 0 0, L_0x1395bb0;  1 drivers
v0x131bec0_0 .net "out", 0 0, L_0x13964c0;  1 drivers
L_0x1395c20 .part v0x12b3060_0, 0, 1;
LS_0x13967d0_0_0 .concat8 [ 1 1 1 1], L_0x1396620, L_0x13966b0, L_0x13961b0, L_0x7fc1d7be8888;
LS_0x13967d0_0_4 .concat8 [ 1 1 1 1], L_0x131ae70, L_0x1396330, L_0x13963a0, L_0x1396430;
L_0x13967d0 .concat8 [ 4 4 0 0], LS_0x13967d0_0_0, LS_0x13967d0_0_4;
S_0x1318880 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1395cc0 .functor XOR 1, L_0x1396af0, L_0x1395bb0, C4<0>, C4<0>;
L_0x1395dc0 .functor XOR 1, L_0x1395cc0, L_0x1395960, C4<0>, C4<0>;
L_0x1395ed0 .functor AND 1, L_0x1395cc0, L_0x1395960, C4<1>, C4<1>;
L_0x1395f40 .functor AND 1, L_0x1396af0, L_0x1395bb0, C4<1>, C4<1>;
L_0x131a990 .functor OR 1, L_0x1395ed0, L_0x1395f40, C4<0>, C4<0>;
v0x1318b20_0 .net "A", 0 0, L_0x1396af0;  alias, 1 drivers
v0x1318c00_0 .net "B", 0 0, L_0x1395bb0;  alias, 1 drivers
v0x1318cc0_0 .net "carryin", 0 0, L_0x1395960;  alias, 1 drivers
v0x1318d90_0 .net "carryout", 0 0, L_0x131a990;  alias, 1 drivers
v0x1318e50_0 .net "out1", 0 0, L_0x1395cc0;  1 drivers
v0x1318f60_0 .net "out2", 0 0, L_0x1395ed0;  1 drivers
v0x1319020_0 .net "out3", 0 0, L_0x1395f40;  1 drivers
v0x13190e0_0 .net "sum", 0 0, L_0x1395dc0;  alias, 1 drivers
S_0x1319240 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x131ae70 .functor AND 1, L_0x1396af0, L_0x1396b90, C4<1>, C4<1>;
v0x1319480_0 .net "A", 0 0, L_0x1396af0;  alias, 1 drivers
v0x1319540_0 .net "B", 0 0, L_0x1396b90;  alias, 1 drivers
v0x13195e0_0 .net "out", 0 0, L_0x131ae70;  1 drivers
S_0x1319730 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1319980_0 .net "I", 7 0, L_0x13967d0;  alias, 1 drivers
v0x1319a60_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1319b20_0 .net "out", 0 0, L_0x13964c0;  alias, 1 drivers
L_0x13964c0 .part/v L_0x13967d0, v0x12b3060_0, 1;
S_0x1319c70 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1396330 .functor NAND 1, L_0x1396af0, L_0x1396b90, C4<1>, C4<1>;
v0x1319e90_0 .net "A", 0 0, L_0x1396af0;  alias, 1 drivers
v0x1319fa0_0 .net "B", 0 0, L_0x1396b90;  alias, 1 drivers
v0x131a060_0 .net "out", 0 0, L_0x1396330;  1 drivers
S_0x131a170 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13963a0 .functor NOR 1, L_0x1396af0, L_0x1396b90, C4<0>, C4<0>;
v0x131a3e0_0 .net "A", 0 0, L_0x1396af0;  alias, 1 drivers
v0x131a4a0_0 .net "B", 0 0, L_0x1396b90;  alias, 1 drivers
v0x131a5b0_0 .net "out", 0 0, L_0x13963a0;  1 drivers
S_0x131a6b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1396430 .functor OR 1, L_0x1396af0, L_0x1396b90, C4<0>, C4<0>;
v0x131a8d0_0 .net "A", 0 0, L_0x1396af0;  alias, 1 drivers
v0x131aa20_0 .net "B", 0 0, L_0x1396b90;  alias, 1 drivers
v0x131aae0_0 .net "out", 0 0, L_0x1396430;  1 drivers
S_0x131abe0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1395bb0 .functor XOR 1, L_0x1396b90, L_0x1395c20, C4<0>, C4<0>;
v0x131adb0_0 .net "A", 0 0, L_0x1396b90;  alias, 1 drivers
v0x131af00_0 .net "B", 0 0, L_0x1395c20;  1 drivers
v0x131afc0_0 .net "out", 0 0, L_0x1395bb0;  alias, 1 drivers
S_0x131b100 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1318610;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13961b0 .functor XOR 1, L_0x1396af0, L_0x1396b90, C4<0>, C4<0>;
v0x131b2d0_0 .net "A", 0 0, L_0x1396af0;  alias, 1 drivers
v0x131b390_0 .net "B", 0 0, L_0x1396b90;  alias, 1 drivers
v0x131b450_0 .net "out", 0 0, L_0x13961b0;  1 drivers
S_0x131bfe0 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1397850 .functor BUFZ 1, L_0x1396fb0, C4<0>, C4<0>, C4<0>;
L_0x13978e0 .functor BUFZ 1, L_0x1396fb0, C4<0>, C4<0>, C4<0>;
v0x131ef60_0 .net "A", 0 0, L_0x1397d20;  1 drivers
v0x131f000_0 .net "B", 0 0, L_0x13856a0;  1 drivers
v0x131f0c0_0 .net "I", 7 0, L_0x1397a00;  1 drivers
v0x131f1c0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x131f260_0 .net *"_s15", 0 0, L_0x1397850;  1 drivers
v0x131f370_0 .net *"_s19", 0 0, L_0x13978e0;  1 drivers
L_0x7fc1d7be88d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x131f450_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be88d0;  1 drivers
v0x131f530_0 .net "addORsub", 0 0, L_0x1396fb0;  1 drivers
v0x131f5d0_0 .net "carryin", 0 0, L_0x1385740;  1 drivers
v0x131f730_0 .net "carryout", 0 0, L_0x131e340;  1 drivers
v0x131f800_0 .net "modB", 0 0, L_0x1395a90;  1 drivers
v0x131f8a0_0 .net "out", 0 0, L_0x13976f0;  1 drivers
L_0x1395b00 .part v0x12b3060_0, 0, 1;
LS_0x1397a00_0_0 .concat8 [ 1 1 1 1], L_0x1397850, L_0x13978e0, L_0x13973e0, L_0x7fc1d7be88d0;
LS_0x1397a00_0_4 .concat8 [ 1 1 1 1], L_0x131e850, L_0x1397560, L_0x13975d0, L_0x1397660;
L_0x1397a00 .concat8 [ 4 4 0 0], LS_0x1397a00_0_0, LS_0x1397a00_0_4;
S_0x131c250 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1396e90 .functor XOR 1, L_0x1397d20, L_0x1395a90, C4<0>, C4<0>;
L_0x1396fb0 .functor XOR 1, L_0x1396e90, L_0x1385740, C4<0>, C4<0>;
L_0x13970e0 .functor AND 1, L_0x1396e90, L_0x1385740, C4<1>, C4<1>;
L_0x1397170 .functor AND 1, L_0x1397d20, L_0x1395a90, C4<1>, C4<1>;
L_0x131e340 .functor OR 1, L_0x13970e0, L_0x1397170, C4<0>, C4<0>;
v0x131c4f0_0 .net "A", 0 0, L_0x1397d20;  alias, 1 drivers
v0x131c5d0_0 .net "B", 0 0, L_0x1395a90;  alias, 1 drivers
v0x131c690_0 .net "carryin", 0 0, L_0x1385740;  alias, 1 drivers
v0x131c760_0 .net "carryout", 0 0, L_0x131e340;  alias, 1 drivers
v0x131c820_0 .net "out1", 0 0, L_0x1396e90;  1 drivers
v0x131c930_0 .net "out2", 0 0, L_0x13970e0;  1 drivers
v0x131c9f0_0 .net "out3", 0 0, L_0x1397170;  1 drivers
v0x131cab0_0 .net "sum", 0 0, L_0x1396fb0;  alias, 1 drivers
S_0x131cc10 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x131e850 .functor AND 1, L_0x1397d20, L_0x13856a0, C4<1>, C4<1>;
v0x131ce50_0 .net "A", 0 0, L_0x1397d20;  alias, 1 drivers
v0x131cf10_0 .net "B", 0 0, L_0x13856a0;  alias, 1 drivers
v0x131cfb0_0 .net "out", 0 0, L_0x131e850;  1 drivers
S_0x131d100 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x131d350_0 .net "I", 7 0, L_0x1397a00;  alias, 1 drivers
v0x131d430_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x131d4f0_0 .net "out", 0 0, L_0x13976f0;  alias, 1 drivers
L_0x13976f0 .part/v L_0x1397a00, v0x12b3060_0, 1;
S_0x131d640 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1397560 .functor NAND 1, L_0x1397d20, L_0x13856a0, C4<1>, C4<1>;
v0x131d860_0 .net "A", 0 0, L_0x1397d20;  alias, 1 drivers
v0x131d970_0 .net "B", 0 0, L_0x13856a0;  alias, 1 drivers
v0x131da30_0 .net "out", 0 0, L_0x1397560;  1 drivers
S_0x131db40 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13975d0 .functor NOR 1, L_0x1397d20, L_0x13856a0, C4<0>, C4<0>;
v0x131ddb0_0 .net "A", 0 0, L_0x1397d20;  alias, 1 drivers
v0x131de70_0 .net "B", 0 0, L_0x13856a0;  alias, 1 drivers
v0x131df80_0 .net "out", 0 0, L_0x13975d0;  1 drivers
S_0x131e060 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1397660 .functor OR 1, L_0x1397d20, L_0x13856a0, C4<0>, C4<0>;
v0x131e280_0 .net "A", 0 0, L_0x1397d20;  alias, 1 drivers
v0x131e3d0_0 .net "B", 0 0, L_0x13856a0;  alias, 1 drivers
v0x131e490_0 .net "out", 0 0, L_0x1397660;  1 drivers
S_0x131e5c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1395a90 .functor XOR 1, L_0x13856a0, L_0x1395b00, C4<0>, C4<0>;
v0x131e790_0 .net "A", 0 0, L_0x13856a0;  alias, 1 drivers
v0x131e8e0_0 .net "B", 0 0, L_0x1395b00;  1 drivers
v0x131e9a0_0 .net "out", 0 0, L_0x1395a90;  alias, 1 drivers
S_0x131eae0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x131bfe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13973e0 .functor XOR 1, L_0x1397d20, L_0x13856a0, C4<0>, C4<0>;
v0x131ecb0_0 .net "A", 0 0, L_0x1397d20;  alias, 1 drivers
v0x131ed70_0 .net "B", 0 0, L_0x13856a0;  alias, 1 drivers
v0x131ee30_0 .net "out", 0 0, L_0x13973e0;  1 drivers
S_0x131f9c0 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1398af0 .functor BUFZ 1, L_0x1396df0, C4<0>, C4<0>, C4<0>;
L_0x1398b60 .functor BUFZ 1, L_0x1396df0, C4<0>, C4<0>, C4<0>;
v0x1322930_0 .net "A", 0 0, L_0x1386960;  1 drivers
v0x13229d0_0 .net "B", 0 0, L_0x1399190;  1 drivers
v0x1322a90_0 .net "I", 7 0, L_0x1398c60;  1 drivers
v0x1322b90_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1322c30_0 .net *"_s15", 0 0, L_0x1398af0;  1 drivers
v0x1322d40_0 .net *"_s19", 0 0, L_0x1398b60;  1 drivers
L_0x7fc1d7be8918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1322e20_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8918;  1 drivers
v0x1322f00_0 .net "addORsub", 0 0, L_0x1396df0;  1 drivers
v0x1322fa0_0 .net "carryin", 0 0, L_0x13981d0;  1 drivers
v0x1323100_0 .net "carryout", 0 0, L_0x1321d40;  1 drivers
v0x13231d0_0 .net "modB", 0 0, L_0x1377760;  1 drivers
v0x1323270_0 .net "out", 0 0, L_0x13989b0;  1 drivers
L_0x1396c30 .part v0x12b3060_0, 0, 1;
LS_0x1398c60_0_0 .concat8 [ 1 1 1 1], L_0x1398af0, L_0x1398b60, L_0x13986e0, L_0x7fc1d7be8918;
LS_0x1398c60_0_4 .concat8 [ 1 1 1 1], L_0x1322220, L_0x1398860, L_0x13988d0, L_0x1398940;
L_0x1398c60 .concat8 [ 4 4 0 0], LS_0x1398c60_0_0, LS_0x1398c60_0_4;
S_0x131fc30 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1396cd0 .functor XOR 1, L_0x1386960, L_0x1377760, C4<0>, C4<0>;
L_0x1396df0 .functor XOR 1, L_0x1396cd0, L_0x13981d0, C4<0>, C4<0>;
L_0x1398450 .functor AND 1, L_0x1396cd0, L_0x13981d0, C4<1>, C4<1>;
L_0x13984c0 .functor AND 1, L_0x1386960, L_0x1377760, C4<1>, C4<1>;
L_0x1321d40 .functor OR 1, L_0x1398450, L_0x13984c0, C4<0>, C4<0>;
v0x131fed0_0 .net "A", 0 0, L_0x1386960;  alias, 1 drivers
v0x131ffb0_0 .net "B", 0 0, L_0x1377760;  alias, 1 drivers
v0x1320070_0 .net "carryin", 0 0, L_0x13981d0;  alias, 1 drivers
v0x1320140_0 .net "carryout", 0 0, L_0x1321d40;  alias, 1 drivers
v0x1320200_0 .net "out1", 0 0, L_0x1396cd0;  1 drivers
v0x1320310_0 .net "out2", 0 0, L_0x1398450;  1 drivers
v0x13203d0_0 .net "out3", 0 0, L_0x13984c0;  1 drivers
v0x1320490_0 .net "sum", 0 0, L_0x1396df0;  alias, 1 drivers
S_0x13205f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1322220 .functor AND 1, L_0x1386960, L_0x1399190, C4<1>, C4<1>;
v0x1320830_0 .net "A", 0 0, L_0x1386960;  alias, 1 drivers
v0x13208f0_0 .net "B", 0 0, L_0x1399190;  alias, 1 drivers
v0x1320990_0 .net "out", 0 0, L_0x1322220;  1 drivers
S_0x1320ae0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1320d30_0 .net "I", 7 0, L_0x1398c60;  alias, 1 drivers
v0x1320e10_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1320ed0_0 .net "out", 0 0, L_0x13989b0;  alias, 1 drivers
L_0x13989b0 .part/v L_0x1398c60, v0x12b3060_0, 1;
S_0x1321020 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1398860 .functor NAND 1, L_0x1386960, L_0x1399190, C4<1>, C4<1>;
v0x1321240_0 .net "A", 0 0, L_0x1386960;  alias, 1 drivers
v0x1321350_0 .net "B", 0 0, L_0x1399190;  alias, 1 drivers
v0x1321410_0 .net "out", 0 0, L_0x1398860;  1 drivers
S_0x1321520 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13988d0 .functor NOR 1, L_0x1386960, L_0x1399190, C4<0>, C4<0>;
v0x1321790_0 .net "A", 0 0, L_0x1386960;  alias, 1 drivers
v0x1321850_0 .net "B", 0 0, L_0x1399190;  alias, 1 drivers
v0x1321960_0 .net "out", 0 0, L_0x13988d0;  1 drivers
S_0x1321a60 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1398940 .functor OR 1, L_0x1386960, L_0x1399190, C4<0>, C4<0>;
v0x1321c80_0 .net "A", 0 0, L_0x1386960;  alias, 1 drivers
v0x1321dd0_0 .net "B", 0 0, L_0x1399190;  alias, 1 drivers
v0x1321e90_0 .net "out", 0 0, L_0x1398940;  1 drivers
S_0x1321f90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1377760 .functor XOR 1, L_0x1399190, L_0x1396c30, C4<0>, C4<0>;
v0x1322160_0 .net "A", 0 0, L_0x1399190;  alias, 1 drivers
v0x13222b0_0 .net "B", 0 0, L_0x1396c30;  1 drivers
v0x1322370_0 .net "out", 0 0, L_0x1377760;  alias, 1 drivers
S_0x13224b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x131f9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13986e0 .functor XOR 1, L_0x1386960, L_0x1399190, C4<0>, C4<0>;
v0x1322680_0 .net "A", 0 0, L_0x1386960;  alias, 1 drivers
v0x1322740_0 .net "B", 0 0, L_0x1399190;  alias, 1 drivers
v0x1322800_0 .net "out", 0 0, L_0x13986e0;  1 drivers
S_0x1323390 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1399d70 .functor BUFZ 1, L_0x13995c0, C4<0>, C4<0>, C4<0>;
L_0x1399de0 .functor BUFZ 1, L_0x13995c0, C4<0>, C4<0>, C4<0>;
v0x1326300_0 .net "A", 0 0, L_0x139a200;  1 drivers
v0x13263a0_0 .net "B", 0 0, L_0x1399230;  1 drivers
v0x1326460_0 .net "I", 7 0, L_0x1399ee0;  1 drivers
v0x1326560_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1326600_0 .net *"_s15", 0 0, L_0x1399d70;  1 drivers
v0x1326710_0 .net *"_s19", 0 0, L_0x1399de0;  1 drivers
L_0x7fc1d7be8960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x13267f0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8960;  1 drivers
v0x13268d0_0 .net "addORsub", 0 0, L_0x13995c0;  1 drivers
v0x1326970_0 .net "carryin", 0 0, L_0x13992d0;  1 drivers
v0x1326ad0_0 .net "carryout", 0 0, L_0x1325710;  1 drivers
v0x1326ba0_0 .net "modB", 0 0, L_0x1386a00;  1 drivers
v0x1326c40_0 .net "out", 0 0, L_0x1399c30;  1 drivers
L_0x1398300 .part v0x12b3060_0, 0, 1;
LS_0x1399ee0_0_0 .concat8 [ 1 1 1 1], L_0x1399d70, L_0x1399de0, L_0x1399960, L_0x7fc1d7be8960;
LS_0x1399ee0_0_4 .concat8 [ 1 1 1 1], L_0x1325bf0, L_0x1399ae0, L_0x1399b50, L_0x1399bc0;
L_0x1399ee0 .concat8 [ 4 4 0 0], LS_0x1399ee0_0_0, LS_0x1399ee0_0_4;
S_0x1323600 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x13994c0 .functor XOR 1, L_0x139a200, L_0x1386a00, C4<0>, C4<0>;
L_0x13995c0 .functor XOR 1, L_0x13994c0, L_0x13992d0, C4<0>, C4<0>;
L_0x1399680 .functor AND 1, L_0x13994c0, L_0x13992d0, C4<1>, C4<1>;
L_0x13996f0 .functor AND 1, L_0x139a200, L_0x1386a00, C4<1>, C4<1>;
L_0x1325710 .functor OR 1, L_0x1399680, L_0x13996f0, C4<0>, C4<0>;
v0x13238a0_0 .net "A", 0 0, L_0x139a200;  alias, 1 drivers
v0x1323980_0 .net "B", 0 0, L_0x1386a00;  alias, 1 drivers
v0x1323a40_0 .net "carryin", 0 0, L_0x13992d0;  alias, 1 drivers
v0x1323b10_0 .net "carryout", 0 0, L_0x1325710;  alias, 1 drivers
v0x1323bd0_0 .net "out1", 0 0, L_0x13994c0;  1 drivers
v0x1323ce0_0 .net "out2", 0 0, L_0x1399680;  1 drivers
v0x1323da0_0 .net "out3", 0 0, L_0x13996f0;  1 drivers
v0x1323e60_0 .net "sum", 0 0, L_0x13995c0;  alias, 1 drivers
S_0x1323fc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1325bf0 .functor AND 1, L_0x139a200, L_0x1399230, C4<1>, C4<1>;
v0x1324200_0 .net "A", 0 0, L_0x139a200;  alias, 1 drivers
v0x13242c0_0 .net "B", 0 0, L_0x1399230;  alias, 1 drivers
v0x1324360_0 .net "out", 0 0, L_0x1325bf0;  1 drivers
S_0x13244b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1324700_0 .net "I", 7 0, L_0x1399ee0;  alias, 1 drivers
v0x13247e0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13248a0_0 .net "out", 0 0, L_0x1399c30;  alias, 1 drivers
L_0x1399c30 .part/v L_0x1399ee0, v0x12b3060_0, 1;
S_0x13249f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1399ae0 .functor NAND 1, L_0x139a200, L_0x1399230, C4<1>, C4<1>;
v0x1324c10_0 .net "A", 0 0, L_0x139a200;  alias, 1 drivers
v0x1324d20_0 .net "B", 0 0, L_0x1399230;  alias, 1 drivers
v0x1324de0_0 .net "out", 0 0, L_0x1399ae0;  1 drivers
S_0x1324ef0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1399b50 .functor NOR 1, L_0x139a200, L_0x1399230, C4<0>, C4<0>;
v0x1325160_0 .net "A", 0 0, L_0x139a200;  alias, 1 drivers
v0x1325220_0 .net "B", 0 0, L_0x1399230;  alias, 1 drivers
v0x1325330_0 .net "out", 0 0, L_0x1399b50;  1 drivers
S_0x1325430 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1399bc0 .functor OR 1, L_0x139a200, L_0x1399230, C4<0>, C4<0>;
v0x1325650_0 .net "A", 0 0, L_0x139a200;  alias, 1 drivers
v0x13257a0_0 .net "B", 0 0, L_0x1399230;  alias, 1 drivers
v0x1325860_0 .net "out", 0 0, L_0x1399bc0;  1 drivers
S_0x1325960 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1386a00 .functor XOR 1, L_0x1399230, L_0x1398300, C4<0>, C4<0>;
v0x1325b30_0 .net "A", 0 0, L_0x1399230;  alias, 1 drivers
v0x1325c80_0 .net "B", 0 0, L_0x1398300;  1 drivers
v0x1325d40_0 .net "out", 0 0, L_0x1386a00;  alias, 1 drivers
S_0x1325e80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1323390;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1399960 .functor XOR 1, L_0x139a200, L_0x1399230, C4<0>, C4<0>;
v0x1326050_0 .net "A", 0 0, L_0x139a200;  alias, 1 drivers
v0x1326110_0 .net "B", 0 0, L_0x1399230;  alias, 1 drivers
v0x13261d0_0 .net "out", 0 0, L_0x1399960;  1 drivers
S_0x1326d60 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x139aea0 .functor BUFZ 1, L_0x139a6f0, C4<0>, C4<0>, C4<0>;
L_0x139af10 .functor BUFZ 1, L_0x139a6f0, C4<0>, C4<0>, C4<0>;
v0x1329cd0_0 .net "A", 0 0, L_0x139b330;  1 drivers
v0x1329d70_0 .net "B", 0 0, L_0x139b3d0;  1 drivers
v0x1329e30_0 .net "I", 7 0, L_0x139b010;  1 drivers
v0x1329f30_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1329fd0_0 .net *"_s15", 0 0, L_0x139aea0;  1 drivers
v0x132a0e0_0 .net *"_s19", 0 0, L_0x139af10;  1 drivers
L_0x7fc1d7be89a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x132a1c0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be89a8;  1 drivers
v0x132a2a0_0 .net "addORsub", 0 0, L_0x139a6f0;  1 drivers
v0x132a340_0 .net "carryin", 0 0, L_0x139a2a0;  1 drivers
v0x132a4a0_0 .net "carryout", 0 0, L_0x13290e0;  1 drivers
v0x132a570_0 .net "modB", 0 0, L_0x1399400;  1 drivers
v0x132a610_0 .net "out", 0 0, L_0x139ad60;  1 drivers
L_0x139a550 .part v0x12b3060_0, 0, 1;
LS_0x139b010_0_0 .concat8 [ 1 1 1 1], L_0x139aea0, L_0x139af10, L_0x139aa90, L_0x7fc1d7be89a8;
LS_0x139b010_0_4 .concat8 [ 1 1 1 1], L_0x13295c0, L_0x139ac10, L_0x139ac80, L_0x139acf0;
L_0x139b010 .concat8 [ 4 4 0 0], LS_0x139b010_0_0, LS_0x139b010_0_4;
S_0x1326fd0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x139a5f0 .functor XOR 1, L_0x139b330, L_0x1399400, C4<0>, C4<0>;
L_0x139a6f0 .functor XOR 1, L_0x139a5f0, L_0x139a2a0, C4<0>, C4<0>;
L_0x139a7b0 .functor AND 1, L_0x139a5f0, L_0x139a2a0, C4<1>, C4<1>;
L_0x139a820 .functor AND 1, L_0x139b330, L_0x1399400, C4<1>, C4<1>;
L_0x13290e0 .functor OR 1, L_0x139a7b0, L_0x139a820, C4<0>, C4<0>;
v0x1327270_0 .net "A", 0 0, L_0x139b330;  alias, 1 drivers
v0x1327350_0 .net "B", 0 0, L_0x1399400;  alias, 1 drivers
v0x1327410_0 .net "carryin", 0 0, L_0x139a2a0;  alias, 1 drivers
v0x13274e0_0 .net "carryout", 0 0, L_0x13290e0;  alias, 1 drivers
v0x13275a0_0 .net "out1", 0 0, L_0x139a5f0;  1 drivers
v0x13276b0_0 .net "out2", 0 0, L_0x139a7b0;  1 drivers
v0x1327770_0 .net "out3", 0 0, L_0x139a820;  1 drivers
v0x1327830_0 .net "sum", 0 0, L_0x139a6f0;  alias, 1 drivers
S_0x1327990 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13295c0 .functor AND 1, L_0x139b330, L_0x139b3d0, C4<1>, C4<1>;
v0x1327bd0_0 .net "A", 0 0, L_0x139b330;  alias, 1 drivers
v0x1327c90_0 .net "B", 0 0, L_0x139b3d0;  alias, 1 drivers
v0x1327d30_0 .net "out", 0 0, L_0x13295c0;  1 drivers
S_0x1327e80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x13280d0_0 .net "I", 7 0, L_0x139b010;  alias, 1 drivers
v0x13281b0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1328270_0 .net "out", 0 0, L_0x139ad60;  alias, 1 drivers
L_0x139ad60 .part/v L_0x139b010, v0x12b3060_0, 1;
S_0x13283c0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139ac10 .functor NAND 1, L_0x139b330, L_0x139b3d0, C4<1>, C4<1>;
v0x13285e0_0 .net "A", 0 0, L_0x139b330;  alias, 1 drivers
v0x13286f0_0 .net "B", 0 0, L_0x139b3d0;  alias, 1 drivers
v0x13287b0_0 .net "out", 0 0, L_0x139ac10;  1 drivers
S_0x13288c0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139ac80 .functor NOR 1, L_0x139b330, L_0x139b3d0, C4<0>, C4<0>;
v0x1328b30_0 .net "A", 0 0, L_0x139b330;  alias, 1 drivers
v0x1328bf0_0 .net "B", 0 0, L_0x139b3d0;  alias, 1 drivers
v0x1328d00_0 .net "out", 0 0, L_0x139ac80;  1 drivers
S_0x1328e00 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139acf0 .functor OR 1, L_0x139b330, L_0x139b3d0, C4<0>, C4<0>;
v0x1329020_0 .net "A", 0 0, L_0x139b330;  alias, 1 drivers
v0x1329170_0 .net "B", 0 0, L_0x139b3d0;  alias, 1 drivers
v0x1329230_0 .net "out", 0 0, L_0x139acf0;  1 drivers
S_0x1329330 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1399400 .functor XOR 1, L_0x139b3d0, L_0x139a550, C4<0>, C4<0>;
v0x1329500_0 .net "A", 0 0, L_0x139b3d0;  alias, 1 drivers
v0x1329650_0 .net "B", 0 0, L_0x139a550;  1 drivers
v0x1329710_0 .net "out", 0 0, L_0x1399400;  alias, 1 drivers
S_0x1329850 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1326d60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139aa90 .functor XOR 1, L_0x139b330, L_0x139b3d0, C4<0>, C4<0>;
v0x1329a20_0 .net "A", 0 0, L_0x139b330;  alias, 1 drivers
v0x1329ae0_0 .net "B", 0 0, L_0x139b3d0;  alias, 1 drivers
v0x1329ba0_0 .net "out", 0 0, L_0x139aa90;  1 drivers
S_0x132a730 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x139bfc0 .functor BUFZ 1, L_0x139b7c0, C4<0>, C4<0>, C4<0>;
L_0x139c030 .functor BUFZ 1, L_0x139b7c0, C4<0>, C4<0>, C4<0>;
v0x132d6a0_0 .net "A", 0 0, L_0x139c450;  1 drivers
v0x132d740_0 .net "B", 0 0, L_0x139b470;  1 drivers
v0x132d800_0 .net "I", 7 0, L_0x139c130;  1 drivers
v0x132d900_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x132d9a0_0 .net *"_s15", 0 0, L_0x139bfc0;  1 drivers
v0x132dab0_0 .net *"_s19", 0 0, L_0x139c030;  1 drivers
L_0x7fc1d7be89f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x132db90_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be89f0;  1 drivers
v0x132dc70_0 .net "addORsub", 0 0, L_0x139b7c0;  1 drivers
v0x132dd10_0 .net "carryin", 0 0, L_0x138a290;  1 drivers
v0x132de70_0 .net "carryout", 0 0, L_0x132cab0;  1 drivers
v0x132df40_0 .net "modB", 0 0, L_0x139a3d0;  1 drivers
v0x132dfe0_0 .net "out", 0 0, L_0x139be80;  1 drivers
L_0x139a440 .part v0x12b3060_0, 0, 1;
LS_0x139c130_0_0 .concat8 [ 1 1 1 1], L_0x139bfc0, L_0x139c030, L_0x139bbb0, L_0x7fc1d7be89f0;
LS_0x139c130_0_4 .concat8 [ 1 1 1 1], L_0x132cf90, L_0x139bd30, L_0x139bda0, L_0x139be10;
L_0x139c130 .concat8 [ 4 4 0 0], LS_0x139c130_0_0, LS_0x139c130_0_4;
S_0x132a9a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x139a4e0 .functor XOR 1, L_0x139c450, L_0x139a3d0, C4<0>, C4<0>;
L_0x139b7c0 .functor XOR 1, L_0x139a4e0, L_0x138a290, C4<0>, C4<0>;
L_0x139b8d0 .functor AND 1, L_0x139a4e0, L_0x138a290, C4<1>, C4<1>;
L_0x139b940 .functor AND 1, L_0x139c450, L_0x139a3d0, C4<1>, C4<1>;
L_0x132cab0 .functor OR 1, L_0x139b8d0, L_0x139b940, C4<0>, C4<0>;
v0x132ac40_0 .net "A", 0 0, L_0x139c450;  alias, 1 drivers
v0x132ad20_0 .net "B", 0 0, L_0x139a3d0;  alias, 1 drivers
v0x132ade0_0 .net "carryin", 0 0, L_0x138a290;  alias, 1 drivers
v0x132aeb0_0 .net "carryout", 0 0, L_0x132cab0;  alias, 1 drivers
v0x132af70_0 .net "out1", 0 0, L_0x139a4e0;  1 drivers
v0x132b080_0 .net "out2", 0 0, L_0x139b8d0;  1 drivers
v0x132b140_0 .net "out3", 0 0, L_0x139b940;  1 drivers
v0x132b200_0 .net "sum", 0 0, L_0x139b7c0;  alias, 1 drivers
S_0x132b360 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x132cf90 .functor AND 1, L_0x139c450, L_0x139b470, C4<1>, C4<1>;
v0x132b5a0_0 .net "A", 0 0, L_0x139c450;  alias, 1 drivers
v0x132b660_0 .net "B", 0 0, L_0x139b470;  alias, 1 drivers
v0x132b700_0 .net "out", 0 0, L_0x132cf90;  1 drivers
S_0x132b850 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x132baa0_0 .net "I", 7 0, L_0x139c130;  alias, 1 drivers
v0x132bb80_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x132bc40_0 .net "out", 0 0, L_0x139be80;  alias, 1 drivers
L_0x139be80 .part/v L_0x139c130, v0x12b3060_0, 1;
S_0x132bd90 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139bd30 .functor NAND 1, L_0x139c450, L_0x139b470, C4<1>, C4<1>;
v0x132bfb0_0 .net "A", 0 0, L_0x139c450;  alias, 1 drivers
v0x132c0c0_0 .net "B", 0 0, L_0x139b470;  alias, 1 drivers
v0x132c180_0 .net "out", 0 0, L_0x139bd30;  1 drivers
S_0x132c290 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139bda0 .functor NOR 1, L_0x139c450, L_0x139b470, C4<0>, C4<0>;
v0x132c500_0 .net "A", 0 0, L_0x139c450;  alias, 1 drivers
v0x132c5c0_0 .net "B", 0 0, L_0x139b470;  alias, 1 drivers
v0x132c6d0_0 .net "out", 0 0, L_0x139bda0;  1 drivers
S_0x132c7d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139be10 .functor OR 1, L_0x139c450, L_0x139b470, C4<0>, C4<0>;
v0x132c9f0_0 .net "A", 0 0, L_0x139c450;  alias, 1 drivers
v0x132cb40_0 .net "B", 0 0, L_0x139b470;  alias, 1 drivers
v0x132cc00_0 .net "out", 0 0, L_0x139be10;  1 drivers
S_0x132cd00 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139a3d0 .functor XOR 1, L_0x139b470, L_0x139a440, C4<0>, C4<0>;
v0x132ced0_0 .net "A", 0 0, L_0x139b470;  alias, 1 drivers
v0x132d020_0 .net "B", 0 0, L_0x139a440;  1 drivers
v0x132d0e0_0 .net "out", 0 0, L_0x139a3d0;  alias, 1 drivers
S_0x132d220 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x132a730;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139bbb0 .functor XOR 1, L_0x139c450, L_0x139b470, C4<0>, C4<0>;
v0x132d3f0_0 .net "A", 0 0, L_0x139c450;  alias, 1 drivers
v0x132d4b0_0 .net "B", 0 0, L_0x139b470;  alias, 1 drivers
v0x132d570_0 .net "out", 0 0, L_0x139bbb0;  1 drivers
S_0x132e100 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x137e6d0 .functor BUFZ 1, L_0x137de30, C4<0>, C4<0>, C4<0>;
L_0x137e760 .functor BUFZ 1, L_0x137de30, C4<0>, C4<0>, C4<0>;
v0x1331070_0 .net "A", 0 0, L_0x137eba0;  1 drivers
v0x1331110_0 .net "B", 0 0, L_0x137ec40;  1 drivers
v0x13311d0_0 .net "I", 7 0, L_0x137e880;  1 drivers
v0x13312d0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1331370_0 .net *"_s15", 0 0, L_0x137e6d0;  1 drivers
v0x1331480_0 .net *"_s19", 0 0, L_0x137e760;  1 drivers
L_0x7fc1d7be82a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1331560_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be82a0;  1 drivers
v0x1331640_0 .net "addORsub", 0 0, L_0x137de30;  1 drivers
v0x13316e0_0 .net "carryin", 0 0, L_0x137ece0;  1 drivers
v0x1331840_0 .net "carryout", 0 0, L_0x1330480;  1 drivers
v0x1331910_0 .net "modB", 0 0, L_0x137dbb0;  1 drivers
v0x13319b0_0 .net "out", 0 0, L_0x137e570;  1 drivers
L_0x137dc20 .part v0x12b3060_0, 0, 1;
LS_0x137e880_0_0 .concat8 [ 1 1 1 1], L_0x137e6d0, L_0x137e760, L_0x137e260, L_0x7fc1d7be82a0;
LS_0x137e880_0_4 .concat8 [ 1 1 1 1], L_0x1330960, L_0x137e3e0, L_0x137e450, L_0x137e4e0;
L_0x137e880 .concat8 [ 4 4 0 0], LS_0x137e880_0_0, LS_0x137e880_0_4;
S_0x132e370 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x137dd10 .functor XOR 1, L_0x137eba0, L_0x137dbb0, C4<0>, C4<0>;
L_0x137de30 .functor XOR 1, L_0x137dd10, L_0x137ece0, C4<0>, C4<0>;
L_0x137df60 .functor AND 1, L_0x137dd10, L_0x137ece0, C4<1>, C4<1>;
L_0x137dff0 .functor AND 1, L_0x137eba0, L_0x137dbb0, C4<1>, C4<1>;
L_0x1330480 .functor OR 1, L_0x137df60, L_0x137dff0, C4<0>, C4<0>;
v0x132e610_0 .net "A", 0 0, L_0x137eba0;  alias, 1 drivers
v0x132e6f0_0 .net "B", 0 0, L_0x137dbb0;  alias, 1 drivers
v0x132e7b0_0 .net "carryin", 0 0, L_0x137ece0;  alias, 1 drivers
v0x132e880_0 .net "carryout", 0 0, L_0x1330480;  alias, 1 drivers
v0x132e940_0 .net "out1", 0 0, L_0x137dd10;  1 drivers
v0x132ea50_0 .net "out2", 0 0, L_0x137df60;  1 drivers
v0x132eb10_0 .net "out3", 0 0, L_0x137dff0;  1 drivers
v0x132ebd0_0 .net "sum", 0 0, L_0x137de30;  alias, 1 drivers
S_0x132ed30 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1330960 .functor AND 1, L_0x137eba0, L_0x137ec40, C4<1>, C4<1>;
v0x132ef70_0 .net "A", 0 0, L_0x137eba0;  alias, 1 drivers
v0x132f030_0 .net "B", 0 0, L_0x137ec40;  alias, 1 drivers
v0x132f0d0_0 .net "out", 0 0, L_0x1330960;  1 drivers
S_0x132f220 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x132f470_0 .net "I", 7 0, L_0x137e880;  alias, 1 drivers
v0x132f550_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x132f610_0 .net "out", 0 0, L_0x137e570;  alias, 1 drivers
L_0x137e570 .part/v L_0x137e880, v0x12b3060_0, 1;
S_0x132f760 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137e3e0 .functor NAND 1, L_0x137eba0, L_0x137ec40, C4<1>, C4<1>;
v0x132f980_0 .net "A", 0 0, L_0x137eba0;  alias, 1 drivers
v0x132fa90_0 .net "B", 0 0, L_0x137ec40;  alias, 1 drivers
v0x132fb50_0 .net "out", 0 0, L_0x137e3e0;  1 drivers
S_0x132fc60 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137e450 .functor NOR 1, L_0x137eba0, L_0x137ec40, C4<0>, C4<0>;
v0x132fed0_0 .net "A", 0 0, L_0x137eba0;  alias, 1 drivers
v0x132ff90_0 .net "B", 0 0, L_0x137ec40;  alias, 1 drivers
v0x13300a0_0 .net "out", 0 0, L_0x137e450;  1 drivers
S_0x13301a0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137e4e0 .functor OR 1, L_0x137eba0, L_0x137ec40, C4<0>, C4<0>;
v0x13303c0_0 .net "A", 0 0, L_0x137eba0;  alias, 1 drivers
v0x1330510_0 .net "B", 0 0, L_0x137ec40;  alias, 1 drivers
v0x13305d0_0 .net "out", 0 0, L_0x137e4e0;  1 drivers
S_0x13306d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137dbb0 .functor XOR 1, L_0x137ec40, L_0x137dc20, C4<0>, C4<0>;
v0x13308a0_0 .net "A", 0 0, L_0x137ec40;  alias, 1 drivers
v0x13309f0_0 .net "B", 0 0, L_0x137dc20;  1 drivers
v0x1330ab0_0 .net "out", 0 0, L_0x137dbb0;  alias, 1 drivers
S_0x1330bf0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x132e100;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137e260 .functor XOR 1, L_0x137eba0, L_0x137ec40, C4<0>, C4<0>;
v0x1330dc0_0 .net "A", 0 0, L_0x137eba0;  alias, 1 drivers
v0x1330e80_0 .net "B", 0 0, L_0x137ec40;  alias, 1 drivers
v0x1330f40_0 .net "out", 0 0, L_0x137e260;  1 drivers
S_0x1331ad0 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x134f0f0 .functor BUFZ 1, L_0x139b640, C4<0>, C4<0>, C4<0>;
L_0x134f180 .functor BUFZ 1, L_0x139b640, C4<0>, C4<0>, C4<0>;
v0x1334a40_0 .net "A", 0 0, L_0x139e200;  1 drivers
v0x1334ae0_0 .net "B", 0 0, L_0x139cbd0;  1 drivers
v0x1334ba0_0 .net "I", 7 0, L_0x134f2a0;  1 drivers
v0x1334ca0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1334d40_0 .net *"_s15", 0 0, L_0x134f0f0;  1 drivers
v0x1334e50_0 .net *"_s19", 0 0, L_0x134f180;  1 drivers
L_0x7fc1d7be8a38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1334f30_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8a38;  1 drivers
v0x1335010_0 .net "addORsub", 0 0, L_0x139b640;  1 drivers
v0x13350b0_0 .net "carryin", 0 0, L_0x139cc70;  1 drivers
v0x1335210_0 .net "carryout", 0 0, L_0x1333e50;  1 drivers
v0x13352e0_0 .net "modB", 0 0, L_0x138a3c0;  1 drivers
v0x1335380_0 .net "out", 0 0, L_0x134ef90;  1 drivers
L_0x139b510 .part v0x12b3060_0, 0, 1;
LS_0x134f2a0_0_0 .concat8 [ 1 1 1 1], L_0x134f0f0, L_0x134f180, L_0x134eca0, L_0x7fc1d7be8a38;
LS_0x134f2a0_0_4 .concat8 [ 1 1 1 1], L_0x1334330, L_0x134ee20, L_0x134ee90, L_0x134ef00;
L_0x134f2a0 .concat8 [ 4 4 0 0], LS_0x134f2a0_0_0, LS_0x134f2a0_0_4;
S_0x1331d40 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x138a430 .functor XOR 1, L_0x139e200, L_0x138a3c0, C4<0>, C4<0>;
L_0x139b640 .functor XOR 1, L_0x138a430, L_0x139cc70, C4<0>, C4<0>;
L_0x139c4f0 .functor AND 1, L_0x138a430, L_0x139cc70, C4<1>, C4<1>;
L_0x139c580 .functor AND 1, L_0x139e200, L_0x138a3c0, C4<1>, C4<1>;
L_0x1333e50 .functor OR 1, L_0x139c4f0, L_0x139c580, C4<0>, C4<0>;
v0x1331fe0_0 .net "A", 0 0, L_0x139e200;  alias, 1 drivers
v0x13320c0_0 .net "B", 0 0, L_0x138a3c0;  alias, 1 drivers
v0x1332180_0 .net "carryin", 0 0, L_0x139cc70;  alias, 1 drivers
v0x1332250_0 .net "carryout", 0 0, L_0x1333e50;  alias, 1 drivers
v0x1332310_0 .net "out1", 0 0, L_0x138a430;  1 drivers
v0x1332420_0 .net "out2", 0 0, L_0x139c4f0;  1 drivers
v0x13324e0_0 .net "out3", 0 0, L_0x139c580;  1 drivers
v0x13325a0_0 .net "sum", 0 0, L_0x139b640;  alias, 1 drivers
S_0x1332700 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1334330 .functor AND 1, L_0x139e200, L_0x139cbd0, C4<1>, C4<1>;
v0x1332940_0 .net "A", 0 0, L_0x139e200;  alias, 1 drivers
v0x1332a00_0 .net "B", 0 0, L_0x139cbd0;  alias, 1 drivers
v0x1332aa0_0 .net "out", 0 0, L_0x1334330;  1 drivers
S_0x1332bf0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1332e40_0 .net "I", 7 0, L_0x134f2a0;  alias, 1 drivers
v0x1332f20_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1332fe0_0 .net "out", 0 0, L_0x134ef90;  alias, 1 drivers
L_0x134ef90 .part/v L_0x134f2a0, v0x12b3060_0, 1;
S_0x1333130 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x134ee20 .functor NAND 1, L_0x139e200, L_0x139cbd0, C4<1>, C4<1>;
v0x1333350_0 .net "A", 0 0, L_0x139e200;  alias, 1 drivers
v0x1333460_0 .net "B", 0 0, L_0x139cbd0;  alias, 1 drivers
v0x1333520_0 .net "out", 0 0, L_0x134ee20;  1 drivers
S_0x1333630 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x134ee90 .functor NOR 1, L_0x139e200, L_0x139cbd0, C4<0>, C4<0>;
v0x13338a0_0 .net "A", 0 0, L_0x139e200;  alias, 1 drivers
v0x1333960_0 .net "B", 0 0, L_0x139cbd0;  alias, 1 drivers
v0x1333a70_0 .net "out", 0 0, L_0x134ee90;  1 drivers
S_0x1333b70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x134ef00 .functor OR 1, L_0x139e200, L_0x139cbd0, C4<0>, C4<0>;
v0x1333d90_0 .net "A", 0 0, L_0x139e200;  alias, 1 drivers
v0x1333ee0_0 .net "B", 0 0, L_0x139cbd0;  alias, 1 drivers
v0x1333fa0_0 .net "out", 0 0, L_0x134ef00;  1 drivers
S_0x13340a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x138a3c0 .functor XOR 1, L_0x139cbd0, L_0x139b510, C4<0>, C4<0>;
v0x1334270_0 .net "A", 0 0, L_0x139cbd0;  alias, 1 drivers
v0x13343c0_0 .net "B", 0 0, L_0x139b510;  1 drivers
v0x1334480_0 .net "out", 0 0, L_0x138a3c0;  alias, 1 drivers
S_0x13345c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1331ad0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x134eca0 .functor XOR 1, L_0x139e200, L_0x139cbd0, C4<0>, C4<0>;
v0x1334790_0 .net "A", 0 0, L_0x139e200;  alias, 1 drivers
v0x1334850_0 .net "B", 0 0, L_0x139cbd0;  alias, 1 drivers
v0x1334910_0 .net "out", 0 0, L_0x134eca0;  1 drivers
S_0x13354a0 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x139cda0 .functor BUFZ 1, L_0x139e840, C4<0>, C4<0>, C4<0>;
L_0x139ce10 .functor BUFZ 1, L_0x139e840, C4<0>, C4<0>, C4<0>;
v0x1338e40_0 .net "A", 0 0, L_0x139f590;  1 drivers
v0x1338ee0_0 .net "B", 0 0, L_0x139e2a0;  1 drivers
v0x1338fa0_0 .net "I", 7 0, L_0x139f070;  1 drivers
v0x13390a0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1339140_0 .net *"_s3", 0 0, L_0x139cda0;  1 drivers
v0x1339250_0 .net *"_s7", 0 0, L_0x139ce10;  1 drivers
v0x1339330_0 .net "as", 0 0, L_0x139e840;  1 drivers
v0x1339420_0 .net "carryin", 0 0, L_0x139e340;  1 drivers
v0x1339510_0 .net "carryout", 0 0, L_0x1337830;  alias, 1 drivers
v0x1339640_0 .net "modB", 0 0, L_0x139e630;  1 drivers
v0x1339730_0 .net "out", 0 0, L_0x139ee50;  1 drivers
v0x13397d0_0 .net "overflow", 0 0, L_0x139ef90;  alias, 1 drivers
L_0x139e6a0 .part v0x12b3060_0, 0, 1;
LS_0x139f070_0_0 .concat8 [ 1 1 1 1], L_0x139cda0, L_0x139ce10, L_0x139eb80, L_0x139f000;
LS_0x139f070_0_4 .concat8 [ 1 1 1 1], L_0x1337d10, L_0x139ed00, L_0x139ed70, L_0x139ede0;
L_0x139f070 .concat8 [ 4 4 0 0], LS_0x139f070_0_0, LS_0x139f070_0_4;
S_0x1335720 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x139e740 .functor XOR 1, L_0x139f590, L_0x139e630, C4<0>, C4<0>;
L_0x139e840 .functor XOR 1, L_0x139e740, L_0x139e340, C4<0>, C4<0>;
L_0x139e8b0 .functor AND 1, L_0x139e740, L_0x139e340, C4<1>, C4<1>;
L_0x139e9b0 .functor AND 1, L_0x139f590, L_0x139e630, C4<1>, C4<1>;
L_0x1337830 .functor OR 1, L_0x139e8b0, L_0x139e9b0, C4<0>, C4<0>;
v0x13359c0_0 .net "A", 0 0, L_0x139f590;  alias, 1 drivers
v0x1335aa0_0 .net "B", 0 0, L_0x139e630;  alias, 1 drivers
v0x1335b60_0 .net "carryin", 0 0, L_0x139e340;  alias, 1 drivers
v0x1335c30_0 .net "carryout", 0 0, L_0x1337830;  alias, 1 drivers
v0x1335cf0_0 .net "out1", 0 0, L_0x139e740;  1 drivers
v0x1335e00_0 .net "out2", 0 0, L_0x139e8b0;  1 drivers
v0x1335ec0_0 .net "out3", 0 0, L_0x139e9b0;  1 drivers
v0x1335f80_0 .net "sum", 0 0, L_0x139e840;  alias, 1 drivers
S_0x13360e0 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1337d10 .functor AND 1, L_0x139f590, L_0x139e2a0, C4<1>, C4<1>;
v0x1336320_0 .net "A", 0 0, L_0x139f590;  alias, 1 drivers
v0x13363e0_0 .net "B", 0 0, L_0x139e2a0;  alias, 1 drivers
v0x1336480_0 .net "out", 0 0, L_0x1337d10;  1 drivers
S_0x13365d0 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1336820_0 .net "I", 7 0, L_0x139f070;  alias, 1 drivers
v0x1336900_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13369c0_0 .net "out", 0 0, L_0x139ee50;  alias, 1 drivers
L_0x139ee50 .part/v L_0x139f070, v0x12b3060_0, 1;
S_0x1336b10 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139ed00 .functor NAND 1, L_0x139f590, L_0x139e2a0, C4<1>, C4<1>;
v0x1336d30_0 .net "A", 0 0, L_0x139f590;  alias, 1 drivers
v0x1336e40_0 .net "B", 0 0, L_0x139e2a0;  alias, 1 drivers
v0x1336f00_0 .net "out", 0 0, L_0x139ed00;  1 drivers
S_0x1337010 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139ed70 .functor NOR 1, L_0x139f590, L_0x139e2a0, C4<0>, C4<0>;
v0x1337280_0 .net "A", 0 0, L_0x139f590;  alias, 1 drivers
v0x1337340_0 .net "B", 0 0, L_0x139e2a0;  alias, 1 drivers
v0x1337450_0 .net "out", 0 0, L_0x139ed70;  1 drivers
S_0x1337550 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139ede0 .functor OR 1, L_0x139f590, L_0x139e2a0, C4<0>, C4<0>;
v0x1337770_0 .net "A", 0 0, L_0x139f590;  alias, 1 drivers
v0x13378c0_0 .net "B", 0 0, L_0x139e2a0;  alias, 1 drivers
v0x1337980_0 .net "out", 0 0, L_0x139ede0;  1 drivers
S_0x1337a80 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139e630 .functor XOR 1, L_0x139e2a0, L_0x139e6a0, C4<0>, C4<0>;
v0x1337c50_0 .net "A", 0 0, L_0x139e2a0;  alias, 1 drivers
v0x1337da0_0 .net "B", 0 0, L_0x139e6a0;  1 drivers
v0x1337e60_0 .net "out", 0 0, L_0x139e630;  alias, 1 drivers
S_0x1337fa0 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139eb80 .functor XOR 1, L_0x139f590, L_0x139e2a0, C4<0>, C4<0>;
v0x1338170_0 .net "A", 0 0, L_0x139f590;  alias, 1 drivers
v0x1338230_0 .net "B", 0 0, L_0x139e2a0;  alias, 1 drivers
v0x13382f0_0 .net "out", 0 0, L_0x139eb80;  1 drivers
S_0x1338420 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139ef90 .functor XOR 1, L_0x139e340, L_0x1337830, C4<0>, C4<0>;
v0x1338680_0 .net "A", 0 0, L_0x139e340;  alias, 1 drivers
v0x1338770_0 .net "B", 0 0, L_0x1337830;  alias, 1 drivers
v0x1338840_0 .net "out", 0 0, L_0x139ef90;  alias, 1 drivers
S_0x1338950 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0x13354a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x139f000 .functor XOR 1, L_0x139ef90, L_0x139e840, C4<0>, C4<0>;
v0x1338b70_0 .net "A", 0 0, L_0x139ef90;  alias, 1 drivers
v0x1338c60_0 .net "B", 0 0, L_0x139e840;  alias, 1 drivers
v0x1338d30_0 .net "out", 0 0, L_0x139f000;  1 drivers
S_0x13399c0 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x137f900 .functor BUFZ 1, L_0x137f0b0, C4<0>, C4<0>, C4<0>;
L_0x137f990 .functor BUFZ 1, L_0x137f0b0, C4<0>, C4<0>, C4<0>;
v0x133c840_0 .net "A", 0 0, L_0x137fdd0;  1 drivers
v0x133c8e0_0 .net "B", 0 0, L_0x137fe70;  1 drivers
v0x133c9a0_0 .net "I", 7 0, L_0x137fab0;  1 drivers
v0x133caa0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x133cb40_0 .net *"_s15", 0 0, L_0x137f900;  1 drivers
v0x133cc50_0 .net *"_s19", 0 0, L_0x137f990;  1 drivers
L_0x7fc1d7be82e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x133cd30_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be82e8;  1 drivers
v0x133ce10_0 .net "addORsub", 0 0, L_0x137f0b0;  1 drivers
v0x133ceb0_0 .net "carryin", 0 0, L_0x137ff10;  1 drivers
v0x133d010_0 .net "carryout", 0 0, L_0x133bc50;  1 drivers
v0x133d0e0_0 .net "modB", 0 0, L_0x137ee80;  1 drivers
v0x133d180_0 .net "out", 0 0, L_0x137f7a0;  1 drivers
L_0x137eef0 .part v0x12b3060_0, 0, 1;
LS_0x137fab0_0_0 .concat8 [ 1 1 1 1], L_0x137f900, L_0x137f990, L_0x137f490, L_0x7fc1d7be82e8;
LS_0x137fab0_0_4 .concat8 [ 1 1 1 1], L_0x133c130, L_0x137f610, L_0x137f680, L_0x137f710;
L_0x137fab0 .concat8 [ 4 4 0 0], LS_0x137fab0_0_0, LS_0x137fab0_0_4;
S_0x1339c30 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x137ef90 .functor XOR 1, L_0x137fdd0, L_0x137ee80, C4<0>, C4<0>;
L_0x137f0b0 .functor XOR 1, L_0x137ef90, L_0x137ff10, C4<0>, C4<0>;
L_0x137f190 .functor AND 1, L_0x137ef90, L_0x137ff10, C4<1>, C4<1>;
L_0x137f220 .functor AND 1, L_0x137fdd0, L_0x137ee80, C4<1>, C4<1>;
L_0x133bc50 .functor OR 1, L_0x137f190, L_0x137f220, C4<0>, C4<0>;
v0x1339ea0_0 .net "A", 0 0, L_0x137fdd0;  alias, 1 drivers
v0x1339f80_0 .net "B", 0 0, L_0x137ee80;  alias, 1 drivers
v0x133a040_0 .net "carryin", 0 0, L_0x137ff10;  alias, 1 drivers
v0x133a0e0_0 .net "carryout", 0 0, L_0x133bc50;  alias, 1 drivers
v0x133a1a0_0 .net "out1", 0 0, L_0x137ef90;  1 drivers
v0x133a2b0_0 .net "out2", 0 0, L_0x137f190;  1 drivers
v0x133a370_0 .net "out3", 0 0, L_0x137f220;  1 drivers
v0x133a430_0 .net "sum", 0 0, L_0x137f0b0;  alias, 1 drivers
S_0x133a590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x133c130 .functor AND 1, L_0x137fdd0, L_0x137fe70, C4<1>, C4<1>;
v0x133a7d0_0 .net "A", 0 0, L_0x137fdd0;  alias, 1 drivers
v0x133a890_0 .net "B", 0 0, L_0x137fe70;  alias, 1 drivers
v0x133a930_0 .net "out", 0 0, L_0x133c130;  1 drivers
S_0x133aa50 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x133ac70_0 .net "I", 7 0, L_0x137fab0;  alias, 1 drivers
v0x133ad50_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x133ae10_0 .net "out", 0 0, L_0x137f7a0;  alias, 1 drivers
L_0x137f7a0 .part/v L_0x137fab0, v0x12b3060_0, 1;
S_0x133af30 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137f610 .functor NAND 1, L_0x137fdd0, L_0x137fe70, C4<1>, C4<1>;
v0x133b150_0 .net "A", 0 0, L_0x137fdd0;  alias, 1 drivers
v0x133b260_0 .net "B", 0 0, L_0x137fe70;  alias, 1 drivers
v0x133b320_0 .net "out", 0 0, L_0x137f610;  1 drivers
S_0x133b430 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137f680 .functor NOR 1, L_0x137fdd0, L_0x137fe70, C4<0>, C4<0>;
v0x133b6a0_0 .net "A", 0 0, L_0x137fdd0;  alias, 1 drivers
v0x133b760_0 .net "B", 0 0, L_0x137fe70;  alias, 1 drivers
v0x133b870_0 .net "out", 0 0, L_0x137f680;  1 drivers
S_0x133b970 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137f710 .functor OR 1, L_0x137fdd0, L_0x137fe70, C4<0>, C4<0>;
v0x133bb90_0 .net "A", 0 0, L_0x137fdd0;  alias, 1 drivers
v0x133bce0_0 .net "B", 0 0, L_0x137fe70;  alias, 1 drivers
v0x133bda0_0 .net "out", 0 0, L_0x137f710;  1 drivers
S_0x133bea0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137ee80 .functor XOR 1, L_0x137fe70, L_0x137eef0, C4<0>, C4<0>;
v0x133c070_0 .net "A", 0 0, L_0x137fe70;  alias, 1 drivers
v0x133c1c0_0 .net "B", 0 0, L_0x137eef0;  1 drivers
v0x133c280_0 .net "out", 0 0, L_0x137ee80;  alias, 1 drivers
S_0x133c3c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x13399c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137f490 .functor XOR 1, L_0x137fdd0, L_0x137fe70, C4<0>, C4<0>;
v0x133c590_0 .net "A", 0 0, L_0x137fdd0;  alias, 1 drivers
v0x133c650_0 .net "B", 0 0, L_0x137fe70;  alias, 1 drivers
v0x133c710_0 .net "out", 0 0, L_0x137f490;  1 drivers
S_0x133d2a0 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1380ae0 .functor BUFZ 1, L_0x1380290, C4<0>, C4<0>, C4<0>;
L_0x1380b70 .functor BUFZ 1, L_0x1380290, C4<0>, C4<0>, C4<0>;
v0x1340210_0 .net "A", 0 0, L_0x1380fb0;  1 drivers
v0x13402b0_0 .net "B", 0 0, L_0x13810e0;  1 drivers
v0x1340370_0 .net "I", 7 0, L_0x1380c90;  1 drivers
v0x1340470_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1340510_0 .net *"_s15", 0 0, L_0x1380ae0;  1 drivers
v0x1340620_0 .net *"_s19", 0 0, L_0x1380b70;  1 drivers
L_0x7fc1d7be8330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1340700_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8330;  1 drivers
v0x13407e0_0 .net "addORsub", 0 0, L_0x1380290;  1 drivers
v0x1340880_0 .net "carryin", 0 0, L_0x1381290;  1 drivers
v0x13409e0_0 .net "carryout", 0 0, L_0x133f620;  1 drivers
v0x1340ab0_0 .net "modB", 0 0, L_0x137ee10;  1 drivers
v0x1340b50_0 .net "out", 0 0, L_0x1380980;  1 drivers
L_0x13800d0 .part v0x12b3060_0, 0, 1;
LS_0x1380c90_0_0 .concat8 [ 1 1 1 1], L_0x1380ae0, L_0x1380b70, L_0x1380670, L_0x7fc1d7be8330;
LS_0x1380c90_0_4 .concat8 [ 1 1 1 1], L_0x133fb00, L_0x13807f0, L_0x1380860, L_0x13808f0;
L_0x1380c90 .concat8 [ 4 4 0 0], LS_0x1380c90_0_0, LS_0x1380c90_0_4;
S_0x133d510 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1380170 .functor XOR 1, L_0x1380fb0, L_0x137ee10, C4<0>, C4<0>;
L_0x1380290 .functor XOR 1, L_0x1380170, L_0x1381290, C4<0>, C4<0>;
L_0x1380370 .functor AND 1, L_0x1380170, L_0x1381290, C4<1>, C4<1>;
L_0x1380400 .functor AND 1, L_0x1380fb0, L_0x137ee10, C4<1>, C4<1>;
L_0x133f620 .functor OR 1, L_0x1380370, L_0x1380400, C4<0>, C4<0>;
v0x133d7b0_0 .net "A", 0 0, L_0x1380fb0;  alias, 1 drivers
v0x133d890_0 .net "B", 0 0, L_0x137ee10;  alias, 1 drivers
v0x133d950_0 .net "carryin", 0 0, L_0x1381290;  alias, 1 drivers
v0x133da20_0 .net "carryout", 0 0, L_0x133f620;  alias, 1 drivers
v0x133dae0_0 .net "out1", 0 0, L_0x1380170;  1 drivers
v0x133dbf0_0 .net "out2", 0 0, L_0x1380370;  1 drivers
v0x133dcb0_0 .net "out3", 0 0, L_0x1380400;  1 drivers
v0x133dd70_0 .net "sum", 0 0, L_0x1380290;  alias, 1 drivers
S_0x133ded0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x133fb00 .functor AND 1, L_0x1380fb0, L_0x13810e0, C4<1>, C4<1>;
v0x133e110_0 .net "A", 0 0, L_0x1380fb0;  alias, 1 drivers
v0x133e1d0_0 .net "B", 0 0, L_0x13810e0;  alias, 1 drivers
v0x133e270_0 .net "out", 0 0, L_0x133fb00;  1 drivers
S_0x133e3c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x133e610_0 .net "I", 7 0, L_0x1380c90;  alias, 1 drivers
v0x133e6f0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x133e7b0_0 .net "out", 0 0, L_0x1380980;  alias, 1 drivers
L_0x1380980 .part/v L_0x1380c90, v0x12b3060_0, 1;
S_0x133e900 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13807f0 .functor NAND 1, L_0x1380fb0, L_0x13810e0, C4<1>, C4<1>;
v0x133eb20_0 .net "A", 0 0, L_0x1380fb0;  alias, 1 drivers
v0x133ec30_0 .net "B", 0 0, L_0x13810e0;  alias, 1 drivers
v0x133ecf0_0 .net "out", 0 0, L_0x13807f0;  1 drivers
S_0x133ee00 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1380860 .functor NOR 1, L_0x1380fb0, L_0x13810e0, C4<0>, C4<0>;
v0x133f070_0 .net "A", 0 0, L_0x1380fb0;  alias, 1 drivers
v0x133f130_0 .net "B", 0 0, L_0x13810e0;  alias, 1 drivers
v0x133f240_0 .net "out", 0 0, L_0x1380860;  1 drivers
S_0x133f340 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13808f0 .functor OR 1, L_0x1380fb0, L_0x13810e0, C4<0>, C4<0>;
v0x133f560_0 .net "A", 0 0, L_0x1380fb0;  alias, 1 drivers
v0x133f6b0_0 .net "B", 0 0, L_0x13810e0;  alias, 1 drivers
v0x133f770_0 .net "out", 0 0, L_0x13808f0;  1 drivers
S_0x133f870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x137ee10 .functor XOR 1, L_0x13810e0, L_0x13800d0, C4<0>, C4<0>;
v0x133fa40_0 .net "A", 0 0, L_0x13810e0;  alias, 1 drivers
v0x133fb90_0 .net "B", 0 0, L_0x13800d0;  1 drivers
v0x133fc50_0 .net "out", 0 0, L_0x137ee10;  alias, 1 drivers
S_0x133fd90 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x133d2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1380670 .functor XOR 1, L_0x1380fb0, L_0x13810e0, C4<0>, C4<0>;
v0x133ff60_0 .net "A", 0 0, L_0x1380fb0;  alias, 1 drivers
v0x1340020_0 .net "B", 0 0, L_0x13810e0;  alias, 1 drivers
v0x13400e0_0 .net "out", 0 0, L_0x1380670;  1 drivers
S_0x1340c70 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1381cd0 .functor BUFZ 1, L_0x1381570, C4<0>, C4<0>, C4<0>;
L_0x1381d40 .functor BUFZ 1, L_0x1381570, C4<0>, C4<0>, C4<0>;
v0x1343be0_0 .net "A", 0 0, L_0x1382160;  1 drivers
v0x1343c80_0 .net "B", 0 0, L_0x1382200;  1 drivers
v0x1343d40_0 .net "I", 7 0, L_0x1381e40;  1 drivers
v0x1343e40_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1343ee0_0 .net *"_s15", 0 0, L_0x1381cd0;  1 drivers
v0x1343ff0_0 .net *"_s19", 0 0, L_0x1381d40;  1 drivers
L_0x7fc1d7be8378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x13440d0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8378;  1 drivers
v0x13441b0_0 .net "addORsub", 0 0, L_0x1381570;  1 drivers
v0x1344250_0 .net "carryin", 0 0, L_0x1381330;  1 drivers
v0x13443b0_0 .net "carryout", 0 0, L_0x1342ff0;  1 drivers
v0x1344480_0 .net "modB", 0 0, L_0x1381050;  1 drivers
v0x1344520_0 .net "out", 0 0, L_0x1381b90;  1 drivers
L_0x13813d0 .part v0x12b3060_0, 0, 1;
LS_0x1381e40_0_0 .concat8 [ 1 1 1 1], L_0x1381cd0, L_0x1381d40, L_0x13818c0, L_0x7fc1d7be8378;
LS_0x1381e40_0_4 .concat8 [ 1 1 1 1], L_0x13434d0, L_0x1381a40, L_0x1381ab0, L_0x1381b20;
L_0x1381e40 .concat8 [ 4 4 0 0], LS_0x1381e40_0_0, LS_0x1381e40_0_4;
S_0x1340ee0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1381470 .functor XOR 1, L_0x1382160, L_0x1381050, C4<0>, C4<0>;
L_0x1381570 .functor XOR 1, L_0x1381470, L_0x1381330, C4<0>, C4<0>;
L_0x13815e0 .functor AND 1, L_0x1381470, L_0x1381330, C4<1>, C4<1>;
L_0x1381650 .functor AND 1, L_0x1382160, L_0x1381050, C4<1>, C4<1>;
L_0x1342ff0 .functor OR 1, L_0x13815e0, L_0x1381650, C4<0>, C4<0>;
v0x1341180_0 .net "A", 0 0, L_0x1382160;  alias, 1 drivers
v0x1341260_0 .net "B", 0 0, L_0x1381050;  alias, 1 drivers
v0x1341320_0 .net "carryin", 0 0, L_0x1381330;  alias, 1 drivers
v0x13413f0_0 .net "carryout", 0 0, L_0x1342ff0;  alias, 1 drivers
v0x13414b0_0 .net "out1", 0 0, L_0x1381470;  1 drivers
v0x13415c0_0 .net "out2", 0 0, L_0x13815e0;  1 drivers
v0x1341680_0 .net "out3", 0 0, L_0x1381650;  1 drivers
v0x1341740_0 .net "sum", 0 0, L_0x1381570;  alias, 1 drivers
S_0x13418a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13434d0 .functor AND 1, L_0x1382160, L_0x1382200, C4<1>, C4<1>;
v0x1341ae0_0 .net "A", 0 0, L_0x1382160;  alias, 1 drivers
v0x1341ba0_0 .net "B", 0 0, L_0x1382200;  alias, 1 drivers
v0x1341c40_0 .net "out", 0 0, L_0x13434d0;  1 drivers
S_0x1341d90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1341fe0_0 .net "I", 7 0, L_0x1381e40;  alias, 1 drivers
v0x13420c0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1342180_0 .net "out", 0 0, L_0x1381b90;  alias, 1 drivers
L_0x1381b90 .part/v L_0x1381e40, v0x12b3060_0, 1;
S_0x13422d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1381a40 .functor NAND 1, L_0x1382160, L_0x1382200, C4<1>, C4<1>;
v0x13424f0_0 .net "A", 0 0, L_0x1382160;  alias, 1 drivers
v0x1342600_0 .net "B", 0 0, L_0x1382200;  alias, 1 drivers
v0x13426c0_0 .net "out", 0 0, L_0x1381a40;  1 drivers
S_0x13427d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1381ab0 .functor NOR 1, L_0x1382160, L_0x1382200, C4<0>, C4<0>;
v0x1342a40_0 .net "A", 0 0, L_0x1382160;  alias, 1 drivers
v0x1342b00_0 .net "B", 0 0, L_0x1382200;  alias, 1 drivers
v0x1342c10_0 .net "out", 0 0, L_0x1381ab0;  1 drivers
S_0x1342d10 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1381b20 .functor OR 1, L_0x1382160, L_0x1382200, C4<0>, C4<0>;
v0x1342f30_0 .net "A", 0 0, L_0x1382160;  alias, 1 drivers
v0x1343080_0 .net "B", 0 0, L_0x1382200;  alias, 1 drivers
v0x1343140_0 .net "out", 0 0, L_0x1381b20;  1 drivers
S_0x1343240 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1381050 .functor XOR 1, L_0x1382200, L_0x13813d0, C4<0>, C4<0>;
v0x1343410_0 .net "A", 0 0, L_0x1382200;  alias, 1 drivers
v0x1343560_0 .net "B", 0 0, L_0x13813d0;  1 drivers
v0x1343620_0 .net "out", 0 0, L_0x1381050;  alias, 1 drivers
S_0x1343760 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1340c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13818c0 .functor XOR 1, L_0x1382160, L_0x1382200, C4<0>, C4<0>;
v0x1343930_0 .net "A", 0 0, L_0x1382160;  alias, 1 drivers
v0x13439f0_0 .net "B", 0 0, L_0x1382200;  alias, 1 drivers
v0x1343ab0_0 .net "out", 0 0, L_0x13818c0;  1 drivers
S_0x1344640 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1382e40 .functor BUFZ 1, L_0x1382640, C4<0>, C4<0>, C4<0>;
L_0x1382eb0 .functor BUFZ 1, L_0x1382640, C4<0>, C4<0>, C4<0>;
v0x13475b0_0 .net "A", 0 0, L_0x13832d0;  1 drivers
v0x1347650_0 .net "B", 0 0, L_0x13822a0;  1 drivers
v0x1347710_0 .net "I", 7 0, L_0x1382fb0;  1 drivers
v0x1347810_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13478b0_0 .net *"_s15", 0 0, L_0x1382e40;  1 drivers
v0x13479c0_0 .net *"_s19", 0 0, L_0x1382eb0;  1 drivers
L_0x7fc1d7be83c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1347aa0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be83c0;  1 drivers
v0x1347b80_0 .net "addORsub", 0 0, L_0x1382640;  1 drivers
v0x1347c20_0 .net "carryin", 0 0, L_0x1383430;  1 drivers
v0x1347d80_0 .net "carryout", 0 0, L_0x13469c0;  1 drivers
v0x1347e50_0 .net "modB", 0 0, L_0x13823e0;  1 drivers
v0x1347ef0_0 .net "out", 0 0, L_0x1382d00;  1 drivers
L_0x1382450 .part v0x12b3060_0, 0, 1;
LS_0x1382fb0_0_0 .concat8 [ 1 1 1 1], L_0x1382e40, L_0x1382eb0, L_0x1382a30, L_0x7fc1d7be83c0;
LS_0x1382fb0_0_4 .concat8 [ 1 1 1 1], L_0x1346ea0, L_0x1382bb0, L_0x1382c20, L_0x1382c90;
L_0x1382fb0 .concat8 [ 4 4 0 0], LS_0x1382fb0_0_0, LS_0x1382fb0_0_4;
S_0x13448b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1382540 .functor XOR 1, L_0x13832d0, L_0x13823e0, C4<0>, C4<0>;
L_0x1382640 .functor XOR 1, L_0x1382540, L_0x1383430, C4<0>, C4<0>;
L_0x1382750 .functor AND 1, L_0x1382540, L_0x1383430, C4<1>, C4<1>;
L_0x13827c0 .functor AND 1, L_0x13832d0, L_0x13823e0, C4<1>, C4<1>;
L_0x13469c0 .functor OR 1, L_0x1382750, L_0x13827c0, C4<0>, C4<0>;
v0x1344b50_0 .net "A", 0 0, L_0x13832d0;  alias, 1 drivers
v0x1344c30_0 .net "B", 0 0, L_0x13823e0;  alias, 1 drivers
v0x1344cf0_0 .net "carryin", 0 0, L_0x1383430;  alias, 1 drivers
v0x1344dc0_0 .net "carryout", 0 0, L_0x13469c0;  alias, 1 drivers
v0x1344e80_0 .net "out1", 0 0, L_0x1382540;  1 drivers
v0x1344f90_0 .net "out2", 0 0, L_0x1382750;  1 drivers
v0x1345050_0 .net "out3", 0 0, L_0x13827c0;  1 drivers
v0x1345110_0 .net "sum", 0 0, L_0x1382640;  alias, 1 drivers
S_0x1345270 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1346ea0 .functor AND 1, L_0x13832d0, L_0x13822a0, C4<1>, C4<1>;
v0x13454b0_0 .net "A", 0 0, L_0x13832d0;  alias, 1 drivers
v0x1345570_0 .net "B", 0 0, L_0x13822a0;  alias, 1 drivers
v0x1345610_0 .net "out", 0 0, L_0x1346ea0;  1 drivers
S_0x1345760 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x13459b0_0 .net "I", 7 0, L_0x1382fb0;  alias, 1 drivers
v0x1345a90_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1345b50_0 .net "out", 0 0, L_0x1382d00;  alias, 1 drivers
L_0x1382d00 .part/v L_0x1382fb0, v0x12b3060_0, 1;
S_0x1345ca0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1382bb0 .functor NAND 1, L_0x13832d0, L_0x13822a0, C4<1>, C4<1>;
v0x1345ec0_0 .net "A", 0 0, L_0x13832d0;  alias, 1 drivers
v0x1345fd0_0 .net "B", 0 0, L_0x13822a0;  alias, 1 drivers
v0x1346090_0 .net "out", 0 0, L_0x1382bb0;  1 drivers
S_0x13461a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1382c20 .functor NOR 1, L_0x13832d0, L_0x13822a0, C4<0>, C4<0>;
v0x1346410_0 .net "A", 0 0, L_0x13832d0;  alias, 1 drivers
v0x13464d0_0 .net "B", 0 0, L_0x13822a0;  alias, 1 drivers
v0x13465e0_0 .net "out", 0 0, L_0x1382c20;  1 drivers
S_0x13466e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1382c90 .functor OR 1, L_0x13832d0, L_0x13822a0, C4<0>, C4<0>;
v0x1346900_0 .net "A", 0 0, L_0x13832d0;  alias, 1 drivers
v0x1346a50_0 .net "B", 0 0, L_0x13822a0;  alias, 1 drivers
v0x1346b10_0 .net "out", 0 0, L_0x1382c90;  1 drivers
S_0x1346c10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x13823e0 .functor XOR 1, L_0x13822a0, L_0x1382450, C4<0>, C4<0>;
v0x1346de0_0 .net "A", 0 0, L_0x13822a0;  alias, 1 drivers
v0x1346f30_0 .net "B", 0 0, L_0x1382450;  1 drivers
v0x1346ff0_0 .net "out", 0 0, L_0x13823e0;  alias, 1 drivers
S_0x1347130 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1344640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1382a30 .functor XOR 1, L_0x13832d0, L_0x13822a0, C4<0>, C4<0>;
v0x1347300_0 .net "A", 0 0, L_0x13832d0;  alias, 1 drivers
v0x13473c0_0 .net "B", 0 0, L_0x13822a0;  alias, 1 drivers
v0x1347480_0 .net "out", 0 0, L_0x1382a30;  1 drivers
S_0x1348010 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1383f80 .functor BUFZ 1, L_0x13837d0, C4<0>, C4<0>, C4<0>;
L_0x1383ff0 .functor BUFZ 1, L_0x13837d0, C4<0>, C4<0>, C4<0>;
v0x134af80_0 .net "A", 0 0, L_0x1384410;  1 drivers
v0x134b020_0 .net "B", 0 0, L_0x13844b0;  1 drivers
v0x134b0e0_0 .net "I", 7 0, L_0x13840f0;  1 drivers
v0x134b1e0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x134b280_0 .net *"_s15", 0 0, L_0x1383f80;  1 drivers
v0x134b390_0 .net *"_s19", 0 0, L_0x1383ff0;  1 drivers
L_0x7fc1d7be8408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x134b470_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8408;  1 drivers
v0x134b550_0 .net "addORsub", 0 0, L_0x13837d0;  1 drivers
v0x134b5f0_0 .net "carryin", 0 0, L_0x1383560;  1 drivers
v0x134b750_0 .net "carryout", 0 0, L_0x134a390;  1 drivers
v0x134b820_0 .net "modB", 0 0, L_0x1383370;  1 drivers
v0x134b8c0_0 .net "out", 0 0, L_0x1383e40;  1 drivers
L_0x1383630 .part v0x12b3060_0, 0, 1;
LS_0x13840f0_0_0 .concat8 [ 1 1 1 1], L_0x1383f80, L_0x1383ff0, L_0x1383b70, L_0x7fc1d7be8408;
LS_0x13840f0_0_4 .concat8 [ 1 1 1 1], L_0x134a870, L_0x1383cf0, L_0x1383d60, L_0x1383dd0;
L_0x13840f0 .concat8 [ 4 4 0 0], LS_0x13840f0_0_0, LS_0x13840f0_0_4;
S_0x1348280 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x13836d0 .functor XOR 1, L_0x1384410, L_0x1383370, C4<0>, C4<0>;
L_0x13837d0 .functor XOR 1, L_0x13836d0, L_0x1383560, C4<0>, C4<0>;
L_0x1383890 .functor AND 1, L_0x13836d0, L_0x1383560, C4<1>, C4<1>;
L_0x1383900 .functor AND 1, L_0x1384410, L_0x1383370, C4<1>, C4<1>;
L_0x134a390 .functor OR 1, L_0x1383890, L_0x1383900, C4<0>, C4<0>;
v0x1348520_0 .net "A", 0 0, L_0x1384410;  alias, 1 drivers
v0x1348600_0 .net "B", 0 0, L_0x1383370;  alias, 1 drivers
v0x13486c0_0 .net "carryin", 0 0, L_0x1383560;  alias, 1 drivers
v0x1348790_0 .net "carryout", 0 0, L_0x134a390;  alias, 1 drivers
v0x1348850_0 .net "out1", 0 0, L_0x13836d0;  1 drivers
v0x1348960_0 .net "out2", 0 0, L_0x1383890;  1 drivers
v0x1348a20_0 .net "out3", 0 0, L_0x1383900;  1 drivers
v0x1348ae0_0 .net "sum", 0 0, L_0x13837d0;  alias, 1 drivers
S_0x1348c40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x134a870 .functor AND 1, L_0x1384410, L_0x13844b0, C4<1>, C4<1>;
v0x1348e80_0 .net "A", 0 0, L_0x1384410;  alias, 1 drivers
v0x1348f40_0 .net "B", 0 0, L_0x13844b0;  alias, 1 drivers
v0x1348fe0_0 .net "out", 0 0, L_0x134a870;  1 drivers
S_0x1349130 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1349380_0 .net "I", 7 0, L_0x13840f0;  alias, 1 drivers
v0x1349460_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x1349520_0 .net "out", 0 0, L_0x1383e40;  alias, 1 drivers
L_0x1383e40 .part/v L_0x13840f0, v0x12b3060_0, 1;
S_0x1349670 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1383cf0 .functor NAND 1, L_0x1384410, L_0x13844b0, C4<1>, C4<1>;
v0x1349890_0 .net "A", 0 0, L_0x1384410;  alias, 1 drivers
v0x13499a0_0 .net "B", 0 0, L_0x13844b0;  alias, 1 drivers
v0x1349a60_0 .net "out", 0 0, L_0x1383cf0;  1 drivers
S_0x1349b70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1383d60 .functor NOR 1, L_0x1384410, L_0x13844b0, C4<0>, C4<0>;
v0x1349de0_0 .net "A", 0 0, L_0x1384410;  alias, 1 drivers
v0x1349ea0_0 .net "B", 0 0, L_0x13844b0;  alias, 1 drivers
v0x1349fb0_0 .net "out", 0 0, L_0x1383d60;  1 drivers
S_0x134a0b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1383dd0 .functor OR 1, L_0x1384410, L_0x13844b0, C4<0>, C4<0>;
v0x134a2d0_0 .net "A", 0 0, L_0x1384410;  alias, 1 drivers
v0x134a420_0 .net "B", 0 0, L_0x13844b0;  alias, 1 drivers
v0x134a4e0_0 .net "out", 0 0, L_0x1383dd0;  1 drivers
S_0x134a5e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1383370 .functor XOR 1, L_0x13844b0, L_0x1383630, C4<0>, C4<0>;
v0x134a7b0_0 .net "A", 0 0, L_0x13844b0;  alias, 1 drivers
v0x134a900_0 .net "B", 0 0, L_0x1383630;  1 drivers
v0x134a9c0_0 .net "out", 0 0, L_0x1383370;  alias, 1 drivers
S_0x134ab00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1348010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1383b70 .functor XOR 1, L_0x1384410, L_0x13844b0, C4<0>, C4<0>;
v0x134acd0_0 .net "A", 0 0, L_0x1384410;  alias, 1 drivers
v0x134ad90_0 .net "B", 0 0, L_0x13844b0;  alias, 1 drivers
v0x134ae50_0 .net "out", 0 0, L_0x1383b70;  1 drivers
S_0x134b9e0 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0x12c64e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1385170 .functor BUFZ 1, L_0x1384970, C4<0>, C4<0>, C4<0>;
L_0x13851e0 .functor BUFZ 1, L_0x1384970, C4<0>, C4<0>, C4<0>;
v0x134e950_0 .net "A", 0 0, L_0x1385600;  1 drivers
v0x134e9f0_0 .net "B", 0 0, L_0x1384550;  1 drivers
v0x134eab0_0 .net "I", 7 0, L_0x13852e0;  1 drivers
v0x134ebb0_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x13142b0_0 .net *"_s15", 0 0, L_0x1385170;  1 drivers
v0x13143c0_0 .net *"_s19", 0 0, L_0x13851e0;  1 drivers
L_0x7fc1d7be8450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x13144a0_0 .net/2s *"_s23", 0 0, L_0x7fc1d7be8450;  1 drivers
v0x1314580_0 .net "addORsub", 0 0, L_0x1384970;  1 drivers
v0x1314620_0 .net "carryin", 0 0, L_0x13858b0;  1 drivers
v0x134f520_0 .net "carryout", 0 0, L_0x134dd60;  1 drivers
v0x134f5f0_0 .net "modB", 0 0, L_0x1380040;  1 drivers
v0x134f690_0 .net "out", 0 0, L_0x1385030;  1 drivers
L_0x13847d0 .part v0x12b3060_0, 0, 1;
LS_0x13852e0_0_0 .concat8 [ 1 1 1 1], L_0x1385170, L_0x13851e0, L_0x1384d60, L_0x7fc1d7be8450;
LS_0x13852e0_0_4 .concat8 [ 1 1 1 1], L_0x134e240, L_0x1384ee0, L_0x1384f50, L_0x1384fc0;
L_0x13852e0 .concat8 [ 4 4 0 0], LS_0x13852e0_0_0, LS_0x13852e0_0_4;
S_0x134bc50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1384870 .functor XOR 1, L_0x1385600, L_0x1380040, C4<0>, C4<0>;
L_0x1384970 .functor XOR 1, L_0x1384870, L_0x13858b0, C4<0>, C4<0>;
L_0x1384a80 .functor AND 1, L_0x1384870, L_0x13858b0, C4<1>, C4<1>;
L_0x1384af0 .functor AND 1, L_0x1385600, L_0x1380040, C4<1>, C4<1>;
L_0x134dd60 .functor OR 1, L_0x1384a80, L_0x1384af0, C4<0>, C4<0>;
v0x134bef0_0 .net "A", 0 0, L_0x1385600;  alias, 1 drivers
v0x134bfd0_0 .net "B", 0 0, L_0x1380040;  alias, 1 drivers
v0x134c090_0 .net "carryin", 0 0, L_0x13858b0;  alias, 1 drivers
v0x134c160_0 .net "carryout", 0 0, L_0x134dd60;  alias, 1 drivers
v0x134c220_0 .net "out1", 0 0, L_0x1384870;  1 drivers
v0x134c330_0 .net "out2", 0 0, L_0x1384a80;  1 drivers
v0x134c3f0_0 .net "out3", 0 0, L_0x1384af0;  1 drivers
v0x134c4b0_0 .net "sum", 0 0, L_0x1384970;  alias, 1 drivers
S_0x134c610 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x134e240 .functor AND 1, L_0x1385600, L_0x1384550, C4<1>, C4<1>;
v0x134c850_0 .net "A", 0 0, L_0x1385600;  alias, 1 drivers
v0x134c910_0 .net "B", 0 0, L_0x1384550;  alias, 1 drivers
v0x134c9b0_0 .net "out", 0 0, L_0x134e240;  1 drivers
S_0x134cb00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x134cd50_0 .net "I", 7 0, L_0x13852e0;  alias, 1 drivers
v0x134ce30_0 .net "S", 2 0, v0x12b3060_0;  alias, 1 drivers
v0x134cef0_0 .net "out", 0 0, L_0x1385030;  alias, 1 drivers
L_0x1385030 .part/v L_0x13852e0, v0x12b3060_0, 1;
S_0x134d040 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1384ee0 .functor NAND 1, L_0x1385600, L_0x1384550, C4<1>, C4<1>;
v0x134d260_0 .net "A", 0 0, L_0x1385600;  alias, 1 drivers
v0x134d370_0 .net "B", 0 0, L_0x1384550;  alias, 1 drivers
v0x134d430_0 .net "out", 0 0, L_0x1384ee0;  1 drivers
S_0x134d540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1384f50 .functor NOR 1, L_0x1385600, L_0x1384550, C4<0>, C4<0>;
v0x134d7b0_0 .net "A", 0 0, L_0x1385600;  alias, 1 drivers
v0x134d870_0 .net "B", 0 0, L_0x1384550;  alias, 1 drivers
v0x134d980_0 .net "out", 0 0, L_0x1384f50;  1 drivers
S_0x134da80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1384fc0 .functor OR 1, L_0x1385600, L_0x1384550, C4<0>, C4<0>;
v0x134dca0_0 .net "A", 0 0, L_0x1385600;  alias, 1 drivers
v0x134ddf0_0 .net "B", 0 0, L_0x1384550;  alias, 1 drivers
v0x134deb0_0 .net "out", 0 0, L_0x1384fc0;  1 drivers
S_0x134dfb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1380040 .functor XOR 1, L_0x1384550, L_0x13847d0, C4<0>, C4<0>;
v0x134e180_0 .net "A", 0 0, L_0x1384550;  alias, 1 drivers
v0x134e2d0_0 .net "B", 0 0, L_0x13847d0;  1 drivers
v0x134e390_0 .net "out", 0 0, L_0x1380040;  alias, 1 drivers
S_0x134e4d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x134b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1384d60 .functor XOR 1, L_0x1385600, L_0x1384550, C4<0>, C4<0>;
v0x134e6a0_0 .net "A", 0 0, L_0x1385600;  alias, 1 drivers
v0x134e760_0 .net "B", 0 0, L_0x1384550;  alias, 1 drivers
v0x134e820_0 .net "out", 0 0, L_0x1384d60;  1 drivers
S_0x1351f00 .scope module, "mem" "memory" 4 56, 10 1 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "regWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x1366780 .functor BUFZ 32, L_0x13666e0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1366920 .functor BUFZ 32, L_0x1366880, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x13521b0_0 .net "Addr0", 31 0, L_0x13669e0;  1 drivers
v0x13522b0_0 .net "DataIn0", 31 0, L_0x137ac50;  alias, 1 drivers
v0x1352390_0 .net "DataOut0", 31 0, L_0x1366780;  alias, 1 drivers
v0x1352480_0 .net *"_s0", 31 0, L_0x13666e0;  1 drivers
v0x1352560_0 .net *"_s4", 31 0, L_0x1366880;  1 drivers
v0x1352690_0 .net "clk", 0 0, v0x1364060_0;  alias, 1 drivers
v0x1352730_0 .net "instruct_Addr1", 31 0, L_0x1366c70;  1 drivers
v0x13527f0_0 .net "instruct_DataOut1", 31 0, L_0x1366920;  alias, 1 drivers
v0x13528e0 .array "mem", 0 1023, 31 0;
v0x1352a30_0 .var "real_add", 31 0;
v0x1352b10_0 .net "regWE", 0 0, v0x12aee30_0;  alias, 1 drivers
E_0x1352130 .event posedge, v0x1298e40_0;
L_0x13666e0 .array/port v0x13528e0, L_0x13669e0;
L_0x1366880 .array/port v0x13528e0, L_0x1366c70;
S_0x1352cb0 .scope module, "op_imm_mux" "mux2" 4 68, 11 1 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x1352ef0_0 .net "input0", 31 0, v0x1294910_0;  alias, 1 drivers
v0x1353000_0 .net "input1", 31 0, L_0x137ac50;  alias, 1 drivers
v0x13530d0_0 .net "out", 31 0, L_0x13a2ef0;  alias, 1 drivers
v0x13531d0_0 .net "select0", 0 0, v0x1290260_0;  alias, 1 drivers
L_0x13a2ef0 .functor MUXZ 32, L_0x137ac50, v0x1294910_0, v0x1290260_0, C4<>;
S_0x13532f0 .scope module, "pcmux" "pc_multiplexer" 4 53, 12 7 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x13535c0_0 .net "JumpAddress", 25 0, v0x12aea70_0;  alias, 1 drivers
v0x13536d0_0 .var "PC", 31 0;
v0x1353790_0 .net "S", 1 0, v0x128fea0_0;  alias, 1 drivers
v0x1353890_0 .net "clk", 0 0, v0x1364060_0;  alias, 1 drivers
v0x1353980_0 .net "immediate", 31 0, v0x1294910_0;  alias, 1 drivers
v0x1353ac0_0 .var "mux_out", 31 0;
v0x1353ba0_0 .var "nextPC", 31 0;
v0x1353c80_0 .net "regRs", 31 0, L_0x13783d0;  alias, 1 drivers
v0x1353d40_0 .var "tempimmediate", 31 0;
E_0x1353560/0 .event edge, v0x128fea0_0, v0x134f7b0_0, v0x1294910_0, v0x12aea70_0;
E_0x1353560/1 .event edge, v0x1353ba0_0;
E_0x1353560 .event/or E_0x1353560/0, E_0x1353560/1;
S_0x1353f90 .scope module, "reg_in_mux" "mux3_32bit" 4 67, 11 21 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x1354190_0 .net *"_s1", 0 0, L_0x13a2760;  1 drivers
v0x1354290_0 .net *"_s10", 31 0, L_0x13a2ac0;  1 drivers
v0x1354370_0 .net *"_s3", 0 0, L_0x13a2800;  1 drivers
L_0x7fc1d7be8b10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1354430_0 .net/2u *"_s4", 31 0, L_0x7fc1d7be8b10;  1 drivers
v0x1354510_0 .net *"_s6", 31 0, L_0x13a2930;  1 drivers
v0x1354640_0 .net *"_s9", 0 0, L_0x13a2a20;  1 drivers
v0x1354720_0 .net "input0", 31 0, L_0x139f3e0;  alias, 1 drivers
v0x13547e0_0 .net "input1", 31 0, L_0x1366780;  alias, 1 drivers
v0x13548b0_0 .net "input2", 31 0, L_0x13a2d40;  1 drivers
v0x1354a00_0 .net "out", 31 0, L_0x13a2bb0;  alias, 1 drivers
v0x1354ae0_0 .net "select0", 1 0, v0x128a2b0_0;  alias, 1 drivers
L_0x13a2760 .part v0x128a2b0_0, 1, 1;
L_0x13a2800 .part v0x128a2b0_0, 0, 1;
L_0x13a2930 .functor MUXZ 32, L_0x13a2d40, L_0x7fc1d7be8b10, L_0x13a2800, C4<>;
L_0x13a2a20 .part v0x128a2b0_0, 0, 1;
L_0x13a2ac0 .functor MUXZ 32, L_0x139f3e0, L_0x1366780, L_0x13a2a20, C4<>;
L_0x13a2bb0 .functor MUXZ 32, L_0x13a2ac0, L_0x13a2930, L_0x13a2760, C4<>;
S_0x1354c80 .scope module, "reg_select_mux" "mux3_5bit" 4 66, 11 11 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x1354e80_0 .net *"_s1", 0 0, L_0x13a1800;  1 drivers
v0x1354f80_0 .net *"_s10", 4 0, L_0x13a2490;  1 drivers
v0x1355060_0 .net *"_s3", 0 0, L_0x13a2260;  1 drivers
L_0x7fc1d7be8a80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x1355150_0 .net/2u *"_s4", 4 0, L_0x7fc1d7be8a80;  1 drivers
v0x1355230_0 .net *"_s6", 4 0, L_0x13a2300;  1 drivers
v0x1355360_0 .net *"_s9", 0 0, L_0x13a23f0;  1 drivers
v0x1355440_0 .net "input0", 4 0, v0x128ff60_0;  alias, 1 drivers
v0x1355500_0 .net "input1", 4 0, v0x12814f0_0;  alias, 1 drivers
L_0x7fc1d7be8ac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x13555d0_0 .net "input2", 4 0, L_0x7fc1d7be8ac8;  1 drivers
v0x1355720_0 .net "out", 4 0, L_0x13a2580;  alias, 1 drivers
v0x1355800_0 .net "select0", 1 0, v0x1298a80_0;  alias, 1 drivers
L_0x13a1800 .part v0x1298a80_0, 1, 1;
L_0x13a2260 .part v0x1298a80_0, 0, 1;
L_0x13a2300 .functor MUXZ 5, L_0x7fc1d7be8ac8, L_0x7fc1d7be8a80, L_0x13a2260, C4<>;
L_0x13a23f0 .part v0x1298a80_0, 0, 1;
L_0x13a2490 .functor MUXZ 5, v0x128ff60_0, v0x12814f0_0, L_0x13a23f0, C4<>;
L_0x13a2580 .functor MUXZ 5, L_0x13a2490, L_0x13a2300, L_0x13a1800, C4<>;
S_0x13559a0 .scope module, "regi" "regfile" 4 62, 13 12 0, S_0x12e0a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x135ee80_0 .net "Clk", 0 0, v0x1364060_0;  alias, 1 drivers
v0x1361d60_0 .net "ReadData1", 31 0, L_0x13783d0;  alias, 1 drivers
v0x1361e00_0 .net "ReadData2", 31 0, L_0x137ac50;  alias, 1 drivers
v0x1361ea0_0 .net "ReadRegister1", 4 0, v0x1285b80_0;  alias, 1 drivers
v0x1361f90_0 .net "ReadRegister2", 4 0, v0x12814f0_0;  alias, 1 drivers
v0x1362080_0 .net "RegWrite", 0 0, v0x128a210_0;  alias, 1 drivers
v0x1362170_0 .net "WriteData", 31 0, L_0x13a2bb0;  alias, 1 drivers
v0x1362230_0 .net "WriteRegister", 4 0, L_0x13a2580;  alias, 1 drivers
v0x1362320_0 .net "decoded", 31 0, L_0x1376ea0;  1 drivers
v0x1362470 .array "registers", 0 31, 31 0;
S_0x1355c80 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x13559a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x1355ee0_0 .net *"_s0", 31 0, L_0x1366d60;  1 drivers
L_0x7fc1d7be8060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1355fe0_0 .net *"_s3", 30 0, L_0x7fc1d7be8060;  1 drivers
v0x13560c0_0 .net "address", 4 0, L_0x13a2580;  alias, 1 drivers
v0x1356190_0 .net "enable", 0 0, v0x128a210_0;  alias, 1 drivers
v0x1356260_0 .net "out", 31 0, L_0x1376ea0;  alias, 1 drivers
L_0x1366d60 .concat [ 1 31 0 0], v0x128a210_0, L_0x7fc1d7be8060;
L_0x1376ea0 .shift/l 32, L_0x1366d60, L_0x13a2580;
S_0x13563d0 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x13565c0 .param/l "i" 0 13 33, +C4<01>;
S_0x1356680 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1356870 .param/l "i" 0 13 33, +C4<010>;
S_0x1356910 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1356b00 .param/l "i" 0 13 33, +C4<011>;
S_0x1356bc0 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1356e00 .param/l "i" 0 13 33, +C4<0100>;
S_0x1356ec0 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x13570b0 .param/l "i" 0 13 33, +C4<0101>;
S_0x1357170 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1357360 .param/l "i" 0 13 33, +C4<0110>;
S_0x1357420 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1357610 .param/l "i" 0 13 33, +C4<0111>;
S_0x13576d0 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1356db0 .param/l "i" 0 13 33, +C4<01000>;
S_0x13579c0 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1357bb0 .param/l "i" 0 13 33, +C4<01001>;
S_0x1357c70 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1357e60 .param/l "i" 0 13 33, +C4<01010>;
S_0x1357f20 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1358110 .param/l "i" 0 13 33, +C4<01011>;
S_0x13581d0 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x13583c0 .param/l "i" 0 13 33, +C4<01100>;
S_0x1358480 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1358670 .param/l "i" 0 13 33, +C4<01101>;
S_0x1358730 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1358920 .param/l "i" 0 13 33, +C4<01110>;
S_0x13589e0 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1358bd0 .param/l "i" 0 13 33, +C4<01111>;
S_0x1358c90 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x13578c0 .param/l "i" 0 13 33, +C4<010000>;
S_0x1358fe0 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x13591b0 .param/l "i" 0 13 33, +C4<010001>;
S_0x1359270 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1359460 .param/l "i" 0 13 33, +C4<010010>;
S_0x1359520 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1359710 .param/l "i" 0 13 33, +C4<010011>;
S_0x13597d0 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x13599c0 .param/l "i" 0 13 33, +C4<010100>;
S_0x1359a80 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1359c70 .param/l "i" 0 13 33, +C4<010101>;
S_0x1359d30 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x1359f20 .param/l "i" 0 13 33, +C4<010110>;
S_0x1359fe0 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135a1d0 .param/l "i" 0 13 33, +C4<010111>;
S_0x135a290 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135a480 .param/l "i" 0 13 33, +C4<011000>;
S_0x135a540 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135a730 .param/l "i" 0 13 33, +C4<011001>;
S_0x135a7f0 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135a9e0 .param/l "i" 0 13 33, +C4<011010>;
S_0x135aaa0 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135ac90 .param/l "i" 0 13 33, +C4<011011>;
S_0x135ad50 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135af40 .param/l "i" 0 13 33, +C4<011100>;
S_0x135b000 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135b1f0 .param/l "i" 0 13 33, +C4<011101>;
S_0x135b2b0 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135b4a0 .param/l "i" 0 13 33, +C4<011110>;
S_0x135b560 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x13559a0;
 .timescale 0 0;
P_0x135b750 .param/l "i" 0 13 33, +C4<011111>;
S_0x135b810 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x13559a0;
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
L_0x7fc1d7be80f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1377070 .functor BUFZ 32, L_0x7fc1d7be80f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_1 .array/port v0x1362470, 1;
L_0x13770e0 .functor BUFZ 32, v0x1362470_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_2 .array/port v0x1362470, 2;
L_0x1377150 .functor BUFZ 32, v0x1362470_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_3 .array/port v0x1362470, 3;
L_0x13771c0 .functor BUFZ 32, v0x1362470_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_4 .array/port v0x1362470, 4;
L_0x1377230 .functor BUFZ 32, v0x1362470_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_5 .array/port v0x1362470, 5;
L_0x13772a0 .functor BUFZ 32, v0x1362470_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_6 .array/port v0x1362470, 6;
L_0x1377310 .functor BUFZ 32, v0x1362470_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_7 .array/port v0x1362470, 7;
L_0x1377380 .functor BUFZ 32, v0x1362470_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_8 .array/port v0x1362470, 8;
L_0x13773f0 .functor BUFZ 32, v0x1362470_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_9 .array/port v0x1362470, 9;
L_0x1377460 .functor BUFZ 32, v0x1362470_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_10 .array/port v0x1362470, 10;
L_0x1377530 .functor BUFZ 32, v0x1362470_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_11 .array/port v0x1362470, 11;
L_0x13775a0 .functor BUFZ 32, v0x1362470_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_12 .array/port v0x1362470, 12;
L_0x1377680 .functor BUFZ 32, v0x1362470_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_13 .array/port v0x1362470, 13;
L_0x13776f0 .functor BUFZ 32, v0x1362470_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_14 .array/port v0x1362470, 14;
L_0x1377610 .functor BUFZ 32, v0x1362470_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_15 .array/port v0x1362470, 15;
L_0x13777e0 .functor BUFZ 32, v0x1362470_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_16 .array/port v0x1362470, 16;
L_0x13778e0 .functor BUFZ 32, v0x1362470_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_17 .array/port v0x1362470, 17;
L_0x1377950 .functor BUFZ 32, v0x1362470_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_18 .array/port v0x1362470, 18;
L_0x1377850 .functor BUFZ 32, v0x1362470_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_19 .array/port v0x1362470, 19;
L_0x1377a60 .functor BUFZ 32, v0x1362470_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_20 .array/port v0x1362470, 20;
L_0x13779c0 .functor BUFZ 32, v0x1362470_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_21 .array/port v0x1362470, 21;
L_0x1377b80 .functor BUFZ 32, v0x1362470_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_22 .array/port v0x1362470, 22;
L_0x1377ad0 .functor BUFZ 32, v0x1362470_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_23 .array/port v0x1362470, 23;
L_0x1377cb0 .functor BUFZ 32, v0x1362470_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_24 .array/port v0x1362470, 24;
L_0x1377bf0 .functor BUFZ 32, v0x1362470_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_25 .array/port v0x1362470, 25;
L_0x1377df0 .functor BUFZ 32, v0x1362470_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_26 .array/port v0x1362470, 26;
L_0x1377d20 .functor BUFZ 32, v0x1362470_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_27 .array/port v0x1362470, 27;
L_0x1377f40 .functor BUFZ 32, v0x1362470_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_28 .array/port v0x1362470, 28;
L_0x1377e60 .functor BUFZ 32, v0x1362470_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_29 .array/port v0x1362470, 29;
L_0x1377ed0 .functor BUFZ 32, v0x1362470_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_30 .array/port v0x1362470, 30;
L_0x13780b0 .functor BUFZ 32, v0x1362470_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1362470_31 .array/port v0x1362470, 31;
L_0x1378120 .functor BUFZ 32, v0x1362470_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13783d0 .functor BUFZ 32, L_0x1377fb0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fc1d7be80a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1358e80_0 .net *"_s101", 1 0, L_0x7fc1d7be80a8;  1 drivers
v0x135c050_0 .net *"_s96", 31 0, L_0x1377fb0;  1 drivers
v0x135c110_0 .net *"_s98", 6 0, L_0x13782a0;  1 drivers
v0x135c1f0_0 .net "address", 4 0, v0x1285b80_0;  alias, 1 drivers
v0x135c2b0_0 .net "input0", 31 0, L_0x7fc1d7be80f0;  1 drivers
v0x135c3c0_0 .net "input1", 31 0, v0x1362470_1;  1 drivers
v0x135c4a0_0 .net "input10", 31 0, v0x1362470_10;  1 drivers
v0x135c580_0 .net "input11", 31 0, v0x1362470_11;  1 drivers
v0x135c660_0 .net "input12", 31 0, v0x1362470_12;  1 drivers
v0x135c7d0_0 .net "input13", 31 0, v0x1362470_13;  1 drivers
v0x135c8b0_0 .net "input14", 31 0, v0x1362470_14;  1 drivers
v0x135c990_0 .net "input15", 31 0, v0x1362470_15;  1 drivers
v0x135ca70_0 .net "input16", 31 0, v0x1362470_16;  1 drivers
v0x135cb50_0 .net "input17", 31 0, v0x1362470_17;  1 drivers
v0x135cc30_0 .net "input18", 31 0, v0x1362470_18;  1 drivers
v0x135cd10_0 .net "input19", 31 0, v0x1362470_19;  1 drivers
v0x135cdf0_0 .net "input2", 31 0, v0x1362470_2;  1 drivers
v0x135cfa0_0 .net "input20", 31 0, v0x1362470_20;  1 drivers
v0x135d040_0 .net "input21", 31 0, v0x1362470_21;  1 drivers
v0x135d120_0 .net "input22", 31 0, v0x1362470_22;  1 drivers
v0x135d200_0 .net "input23", 31 0, v0x1362470_23;  1 drivers
v0x135d2e0_0 .net "input24", 31 0, v0x1362470_24;  1 drivers
v0x135d3c0_0 .net "input25", 31 0, v0x1362470_25;  1 drivers
v0x135d4a0_0 .net "input26", 31 0, v0x1362470_26;  1 drivers
v0x135d580_0 .net "input27", 31 0, v0x1362470_27;  1 drivers
v0x135d660_0 .net "input28", 31 0, v0x1362470_28;  1 drivers
v0x135d740_0 .net "input29", 31 0, v0x1362470_29;  1 drivers
v0x135d820_0 .net "input3", 31 0, v0x1362470_3;  1 drivers
v0x135d900_0 .net "input30", 31 0, v0x1362470_30;  1 drivers
v0x135d9e0_0 .net "input31", 31 0, v0x1362470_31;  1 drivers
v0x135dac0_0 .net "input4", 31 0, v0x1362470_4;  1 drivers
v0x135dba0_0 .net "input5", 31 0, v0x1362470_5;  1 drivers
v0x135dc80_0 .net "input6", 31 0, v0x1362470_6;  1 drivers
v0x135ced0_0 .net "input7", 31 0, v0x1362470_7;  1 drivers
v0x135df50_0 .net "input8", 31 0, v0x1362470_8;  1 drivers
v0x135e030_0 .net "input9", 31 0, v0x1362470_9;  1 drivers
v0x135e110 .array "mux", 0 31;
v0x135e110_0 .net v0x135e110 0, 31 0, L_0x1377070; 1 drivers
v0x135e110_1 .net v0x135e110 1, 31 0, L_0x13770e0; 1 drivers
v0x135e110_2 .net v0x135e110 2, 31 0, L_0x1377150; 1 drivers
v0x135e110_3 .net v0x135e110 3, 31 0, L_0x13771c0; 1 drivers
v0x135e110_4 .net v0x135e110 4, 31 0, L_0x1377230; 1 drivers
v0x135e110_5 .net v0x135e110 5, 31 0, L_0x13772a0; 1 drivers
v0x135e110_6 .net v0x135e110 6, 31 0, L_0x1377310; 1 drivers
v0x135e110_7 .net v0x135e110 7, 31 0, L_0x1377380; 1 drivers
v0x135e110_8 .net v0x135e110 8, 31 0, L_0x13773f0; 1 drivers
v0x135e110_9 .net v0x135e110 9, 31 0, L_0x1377460; 1 drivers
v0x135e110_10 .net v0x135e110 10, 31 0, L_0x1377530; 1 drivers
v0x135e110_11 .net v0x135e110 11, 31 0, L_0x13775a0; 1 drivers
v0x135e110_12 .net v0x135e110 12, 31 0, L_0x1377680; 1 drivers
v0x135e110_13 .net v0x135e110 13, 31 0, L_0x13776f0; 1 drivers
v0x135e110_14 .net v0x135e110 14, 31 0, L_0x1377610; 1 drivers
v0x135e110_15 .net v0x135e110 15, 31 0, L_0x13777e0; 1 drivers
v0x135e110_16 .net v0x135e110 16, 31 0, L_0x13778e0; 1 drivers
v0x135e110_17 .net v0x135e110 17, 31 0, L_0x1377950; 1 drivers
v0x135e110_18 .net v0x135e110 18, 31 0, L_0x1377850; 1 drivers
v0x135e110_19 .net v0x135e110 19, 31 0, L_0x1377a60; 1 drivers
v0x135e110_20 .net v0x135e110 20, 31 0, L_0x13779c0; 1 drivers
v0x135e110_21 .net v0x135e110 21, 31 0, L_0x1377b80; 1 drivers
v0x135e110_22 .net v0x135e110 22, 31 0, L_0x1377ad0; 1 drivers
v0x135e110_23 .net v0x135e110 23, 31 0, L_0x1377cb0; 1 drivers
v0x135e110_24 .net v0x135e110 24, 31 0, L_0x1377bf0; 1 drivers
v0x135e110_25 .net v0x135e110 25, 31 0, L_0x1377df0; 1 drivers
v0x135e110_26 .net v0x135e110 26, 31 0, L_0x1377d20; 1 drivers
v0x135e110_27 .net v0x135e110 27, 31 0, L_0x1377f40; 1 drivers
v0x135e110_28 .net v0x135e110 28, 31 0, L_0x1377e60; 1 drivers
v0x135e110_29 .net v0x135e110 29, 31 0, L_0x1377ed0; 1 drivers
v0x135e110_30 .net v0x135e110 30, 31 0, L_0x13780b0; 1 drivers
v0x135e110_31 .net v0x135e110 31, 31 0, L_0x1378120; 1 drivers
v0x135e6e0_0 .net "out", 31 0, L_0x13783d0;  alias, 1 drivers
L_0x1377fb0 .array/port v0x135e110, L_0x13782a0;
L_0x13782a0 .concat [ 5 2 0 0], v0x1285b80_0, L_0x7fc1d7be80a8;
S_0x135ed00 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x13559a0;
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
L_0x7fc1d7be8180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1378440 .functor BUFZ 32, L_0x7fc1d7be8180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13784b0 .functor BUFZ 32, v0x1362470_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13785b0 .functor BUFZ 32, v0x1362470_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13786b0 .functor BUFZ 32, v0x1362470_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378810 .functor BUFZ 32, v0x1362470_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378940 .functor BUFZ 32, v0x1362470_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378a70 .functor BUFZ 32, v0x1362470_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378b70 .functor BUFZ 32, v0x1362470_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378ca0 .functor BUFZ 32, v0x1362470_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378dd0 .functor BUFZ 32, v0x1362470_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1378f00 .functor BUFZ 32, v0x1362470_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379030 .functor BUFZ 32, v0x1362470_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13791d0 .functor BUFZ 32, v0x1362470_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379300 .functor BUFZ 32, v0x1362470_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379160 .functor BUFZ 32, v0x1362470_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13794f0 .functor BUFZ 32, v0x1362470_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13796b0 .functor BUFZ 32, v0x1362470_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x13797e0 .functor BUFZ 32, v0x1362470_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379620 .functor BUFZ 32, v0x1362470_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379a70 .functor BUFZ 32, v0x1362470_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379910 .functor BUFZ 32, v0x1362470_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379ce0 .functor BUFZ 32, v0x1362470_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379ba0 .functor BUFZ 32, v0x1362470_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379f60 .functor BUFZ 32, v0x1362470_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1379e10 .functor BUFZ 32, v0x1362470_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a1f0 .functor BUFZ 32, v0x1362470_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a090 .functor BUFZ 32, v0x1362470_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a490 .functor BUFZ 32, v0x1362470_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a320 .functor BUFZ 32, v0x1362470_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a710 .functor BUFZ 32, v0x1362470_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a590 .functor BUFZ 32, v0x1362470_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137a9a0 .functor BUFZ 32, v0x1362470_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x137ac50 .functor BUFZ 32, L_0x137a810, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fc1d7be8138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x135bc40_0 .net *"_s101", 1 0, L_0x7fc1d7be8138;  1 drivers
v0x135f320_0 .net *"_s96", 31 0, L_0x137a810;  1 drivers
v0x135f420_0 .net *"_s98", 6 0, L_0x137abb0;  1 drivers
v0x135f4e0_0 .net "address", 4 0, v0x12814f0_0;  alias, 1 drivers
v0x135f5f0_0 .net "input0", 31 0, L_0x7fc1d7be8180;  1 drivers
v0x135f720_0 .net "input1", 31 0, v0x1362470_1;  alias, 1 drivers
v0x135f7e0_0 .net "input10", 31 0, v0x1362470_10;  alias, 1 drivers
v0x135f880_0 .net "input11", 31 0, v0x1362470_11;  alias, 1 drivers
v0x135f920_0 .net "input12", 31 0, v0x1362470_12;  alias, 1 drivers
v0x135fa50_0 .net "input13", 31 0, v0x1362470_13;  alias, 1 drivers
v0x135fb20_0 .net "input14", 31 0, v0x1362470_14;  alias, 1 drivers
v0x135fbf0_0 .net "input15", 31 0, v0x1362470_15;  alias, 1 drivers
v0x135fcc0_0 .net "input16", 31 0, v0x1362470_16;  alias, 1 drivers
v0x135fd90_0 .net "input17", 31 0, v0x1362470_17;  alias, 1 drivers
v0x135fe60_0 .net "input18", 31 0, v0x1362470_18;  alias, 1 drivers
v0x135ff30_0 .net "input19", 31 0, v0x1362470_19;  alias, 1 drivers
v0x135ffd0_0 .net "input2", 31 0, v0x1362470_2;  alias, 1 drivers
v0x1360180_0 .net "input20", 31 0, v0x1362470_20;  alias, 1 drivers
v0x1360220_0 .net "input21", 31 0, v0x1362470_21;  alias, 1 drivers
v0x13602c0_0 .net "input22", 31 0, v0x1362470_22;  alias, 1 drivers
v0x1360360_0 .net "input23", 31 0, v0x1362470_23;  alias, 1 drivers
v0x1360400_0 .net "input24", 31 0, v0x1362470_24;  alias, 1 drivers
v0x13604d0_0 .net "input25", 31 0, v0x1362470_25;  alias, 1 drivers
v0x13605a0_0 .net "input26", 31 0, v0x1362470_26;  alias, 1 drivers
v0x1360670_0 .net "input27", 31 0, v0x1362470_27;  alias, 1 drivers
v0x1360740_0 .net "input28", 31 0, v0x1362470_28;  alias, 1 drivers
v0x1360810_0 .net "input29", 31 0, v0x1362470_29;  alias, 1 drivers
v0x13608e0_0 .net "input3", 31 0, v0x1362470_3;  alias, 1 drivers
v0x13609b0_0 .net "input30", 31 0, v0x1362470_30;  alias, 1 drivers
v0x1360a80_0 .net "input31", 31 0, v0x1362470_31;  alias, 1 drivers
v0x1360b50_0 .net "input4", 31 0, v0x1362470_4;  alias, 1 drivers
v0x1360c20_0 .net "input5", 31 0, v0x1362470_5;  alias, 1 drivers
v0x1360cf0_0 .net "input6", 31 0, v0x1362470_6;  alias, 1 drivers
v0x13600a0_0 .net "input7", 31 0, v0x1362470_7;  alias, 1 drivers
v0x1360fa0_0 .net "input8", 31 0, v0x1362470_8;  alias, 1 drivers
v0x1361070_0 .net "input9", 31 0, v0x1362470_9;  alias, 1 drivers
v0x1361140 .array "mux", 0 31;
v0x1361140_0 .net v0x1361140 0, 31 0, L_0x1378440; 1 drivers
v0x1361140_1 .net v0x1361140 1, 31 0, L_0x13784b0; 1 drivers
v0x1361140_2 .net v0x1361140 2, 31 0, L_0x13785b0; 1 drivers
v0x1361140_3 .net v0x1361140 3, 31 0, L_0x13786b0; 1 drivers
v0x1361140_4 .net v0x1361140 4, 31 0, L_0x1378810; 1 drivers
v0x1361140_5 .net v0x1361140 5, 31 0, L_0x1378940; 1 drivers
v0x1361140_6 .net v0x1361140 6, 31 0, L_0x1378a70; 1 drivers
v0x1361140_7 .net v0x1361140 7, 31 0, L_0x1378b70; 1 drivers
v0x1361140_8 .net v0x1361140 8, 31 0, L_0x1378ca0; 1 drivers
v0x1361140_9 .net v0x1361140 9, 31 0, L_0x1378dd0; 1 drivers
v0x1361140_10 .net v0x1361140 10, 31 0, L_0x1378f00; 1 drivers
v0x1361140_11 .net v0x1361140 11, 31 0, L_0x1379030; 1 drivers
v0x1361140_12 .net v0x1361140 12, 31 0, L_0x13791d0; 1 drivers
v0x1361140_13 .net v0x1361140 13, 31 0, L_0x1379300; 1 drivers
v0x1361140_14 .net v0x1361140 14, 31 0, L_0x1379160; 1 drivers
v0x1361140_15 .net v0x1361140 15, 31 0, L_0x13794f0; 1 drivers
v0x1361140_16 .net v0x1361140 16, 31 0, L_0x13796b0; 1 drivers
v0x1361140_17 .net v0x1361140 17, 31 0, L_0x13797e0; 1 drivers
v0x1361140_18 .net v0x1361140 18, 31 0, L_0x1379620; 1 drivers
v0x1361140_19 .net v0x1361140 19, 31 0, L_0x1379a70; 1 drivers
v0x1361140_20 .net v0x1361140 20, 31 0, L_0x1379910; 1 drivers
v0x1361140_21 .net v0x1361140 21, 31 0, L_0x1379ce0; 1 drivers
v0x1361140_22 .net v0x1361140 22, 31 0, L_0x1379ba0; 1 drivers
v0x1361140_23 .net v0x1361140 23, 31 0, L_0x1379f60; 1 drivers
v0x1361140_24 .net v0x1361140 24, 31 0, L_0x1379e10; 1 drivers
v0x1361140_25 .net v0x1361140 25, 31 0, L_0x137a1f0; 1 drivers
v0x1361140_26 .net v0x1361140 26, 31 0, L_0x137a090; 1 drivers
v0x1361140_27 .net v0x1361140 27, 31 0, L_0x137a490; 1 drivers
v0x1361140_28 .net v0x1361140 28, 31 0, L_0x137a320; 1 drivers
v0x1361140_29 .net v0x1361140 29, 31 0, L_0x137a710; 1 drivers
v0x1361140_30 .net v0x1361140 30, 31 0, L_0x137a590; 1 drivers
v0x1361140_31 .net v0x1361140 31, 31 0, L_0x137a9a0; 1 drivers
v0x13616f0_0 .net "out", 31 0, L_0x137ac50;  alias, 1 drivers
L_0x137a810 .array/port v0x1361140, L_0x137abb0;
L_0x137abb0 .concat [ 5 2 0 0], v0x12814f0_0, L_0x7fc1d7be8138;
S_0x12846f0 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7fc1d7c48ad8 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1365310_0 .net "address", 4 0, o0x7fc1d7c48ad8;  0 drivers
o0x7fc1d7c48b08 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1365410_0 .net "inputs", 31 0, o0x7fc1d7c48b08;  0 drivers
v0x13654f0_0 .net "out", 0 0, L_0x13a2f90;  1 drivers
L_0x13a2f90 .part/v o0x7fc1d7c48b08, o0x7fc1d7c48ad8, 1;
S_0x1280060 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fc1d7c48bf8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1365630_0 .net "clk", 0 0, o0x7fc1d7c48bf8;  0 drivers
o0x7fc1d7c48c28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1365710_0 .net "d", 0 0, o0x7fc1d7c48c28;  0 drivers
v0x13657d0_0 .var "q", 0 0;
o0x7fc1d7c48c88 .functor BUFZ 1, C4<z>; HiZ drive
v0x1365870_0 .net "wrenable", 0 0, o0x7fc1d7c48c88;  0 drivers
E_0x12bbd60 .event posedge, v0x1365630_0;
S_0x12e8e10 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fc1d7c48d78 .functor BUFZ 1, C4<z>; HiZ drive
v0x13659f0_0 .net "clk", 0 0, o0x7fc1d7c48d78;  0 drivers
o0x7fc1d7c48da8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1365ad0_0 .net "d", 31 0, o0x7fc1d7c48da8;  0 drivers
v0x1365bb0_0 .var "q", 31 0;
o0x7fc1d7c48e08 .functor BUFZ 1, C4<z>; HiZ drive
v0x1365c70_0 .net "wrenable", 0 0, o0x7fc1d7c48e08;  0 drivers
E_0x1294560 .event posedge, v0x13659f0_0;
S_0x12e50a0 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fc1d7c48ef8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1365df0_0 .net "clk", 0 0, o0x7fc1d7c48ef8;  0 drivers
o0x7fc1d7c48f28 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1365ed0_0 .net "d", 31 0, o0x7fc1d7c48f28;  0 drivers
v0x1365fb0_0 .var "q", 31 0;
o0x7fc1d7c48f88 .functor BUFZ 1, C4<z>; HiZ drive
v0x1366070_0 .net "wrenable", 0 0, o0x7fc1d7c48f88;  0 drivers
E_0x1360140 .event posedge, v0x1365df0_0;
    .scope S_0x13532f0;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x13536d0_0, 0;
    %end;
    .thread T_0;
    .scope S_0x13532f0;
T_1 ;
    %wait E_0x1353560;
    %load/vec4 v0x1353790_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x1353ba0_0;
    %assign/vec4 v0x1353ac0_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x1353790_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x13535c0_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1353ac0_0, 4, 5;
    %load/vec4 v0x1353ba0_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1353ac0_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1353ac0_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x1353790_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x1353980_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x1353d40_0, 0, 32;
    %load/vec4 v0x1353d40_0;
    %load/vec4 v0x1353ba0_0;
    %add;
    %store/vec4 v0x1353ac0_0, 0, 32;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x1353c80_0;
    %assign/vec4 v0x1353ac0_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0x13536d0_0;
    %addi 4, 0, 32;
    %assign/vec4 v0x1353ba0_0, 0;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x13532f0;
T_2 ;
    %wait E_0x1352130;
    %load/vec4 v0x1353ac0_0;
    %store/vec4 v0x13536d0_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x12ce320;
T_3 ;
    %wait E_0x125b9d0;
    %load/vec4 v0x12b7a10_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x12bbc40_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x12bc0b0_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x12b7a10_0;
    %cmpi/e 4, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x12b7a10_0;
    %cmpi/e 5, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.2, 4;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x12bc0b0_0, 0, 2;
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x12b7a10_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x12b7a10_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.4, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x12bc0b0_0, 0, 2;
    %jmp T_3.5;
T_3.4 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x12bc0b0_0, 0, 2;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x1351f00;
T_4 ;
    %wait E_0x1352130;
    %vpi_call 10 15 "$display", "thing %b", &A<v0x13528e0, 1> {0 0 0};
    %load/vec4 v0x1352b10_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %pushi/vec4 1023, 0, 32;
    %load/vec4 v0x13521b0_0;
    %sub;
    %store/vec4 v0x1352a30_0, 0, 32;
    %load/vec4 v0x13522b0_0;
    %ix/getv 3, v0x1352a30_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x13528e0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x1351f00;
T_5 ;
    %vpi_call 10 21 "$readmemh", "yeet.text", v0x13528e0 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x12cab70;
T_6 ;
    %wait E_0x12b34c0;
    %load/vec4 v0x1294490_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x1290320_0, 0, 6;
    %load/vec4 v0x1294490_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x1294850_0, 0, 6;
    %load/vec4 v0x1294490_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x1285b80_0, 0, 5;
    %load/vec4 v0x1294490_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x12814f0_0, 0, 5;
    %load/vec4 v0x1294490_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x128ff60_0, 0, 5;
    %load/vec4 v0x1294490_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x1281590_0, 0, 6;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1294910_0, 4, 16;
    %load/vec4 v0x1294490_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1294910_0, 4, 16;
    %load/vec4 v0x1294490_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x12aea70_0, 0, 26;
    %load/vec4 v0x1290320_0;
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
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.1 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.2 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.3 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.6 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.7 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.9;
T_6.8 ;
    %load/vec4 v0x1294850_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.10, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x1294850_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x1294850_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x1294850_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x128a210_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x12b3060_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1290260_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aee30_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1298a80_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x128a2b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x12aeef0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x128fea0_0, 0, 2;
T_6.16 ;
T_6.15 ;
T_6.13 ;
T_6.11 ;
    %jmp T_6.9;
T_6.9 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x13563d0;
T_7 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x1356680;
T_8 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x1356910;
T_9 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x1356bc0;
T_10 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x1356ec0;
T_11 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x1357170;
T_12 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x1357420;
T_13 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x13576d0;
T_14 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x13579c0;
T_15 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x1357c70;
T_16 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x1357f20;
T_17 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x13581d0;
T_18 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x1358480;
T_19 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x1358730;
T_20 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x13589e0;
T_21 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x1358c90;
T_22 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x1358fe0;
T_23 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x1359270;
T_24 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x1359520;
T_25 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x13597d0;
T_26 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x1359a80;
T_27 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x1359d30;
T_28 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x1359fe0;
T_29 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x135a290;
T_30 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x135a540;
T_31 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x135a7f0;
T_32 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x135aaa0;
T_33 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x135ad50;
T_34 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x135b000;
T_35 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x135b2b0;
T_36 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x135b560;
T_37 ;
    %wait E_0x1352130;
    %load/vec4 v0x1362320_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x1362170_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1362470, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x1288d80;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1364060_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x1288d80;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x1364060_0;
    %nor/r;
    %store/vec4 v0x1364060_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x1288d80;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x13651b0_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x1365270_0 {0 0 0};
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x1280060;
T_41 ;
    %wait E_0x12bbd60;
    %load/vec4 v0x1365870_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x1365710_0;
    %assign/vec4 v0x13657d0_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x12e8e10;
T_42 ;
    %wait E_0x1294560;
    %load/vec4 v0x1365c70_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x1365ad0_0;
    %assign/vec4 v0x1365bb0_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x12e50a0;
T_43 ;
    %wait E_0x1360140;
    %load/vec4 v0x1366070_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1365fb0_0, 0;
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
