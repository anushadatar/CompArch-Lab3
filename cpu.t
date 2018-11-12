#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1403cb0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7fa42f028018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7fa42f028048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1543bf0 .functor XOR 1, o0x7fa42f028018, o0x7fa42f028048, C4<0>, C4<0>;
o0x7fa42f028078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1543c80 .functor XOR 1, L_0x1543bf0, o0x7fa42f028078, C4<0>, C4<0>;
L_0x1543d40 .functor AND 1, L_0x1543bf0, o0x7fa42f028078, C4<1>, C4<1>;
L_0x1543e00 .functor AND 1, o0x7fa42f028018, o0x7fa42f028048, C4<1>, C4<1>;
L_0x1543f10 .functor OR 1, L_0x1543d40, L_0x1543e00, C4<0>, C4<0>;
L_0x1544020 .functor XOR 1, L_0x1543f10, o0x7fa42f028078, C4<0>, C4<0>;
v0x140e9d0_0 .net "A", 0 0, o0x7fa42f028018;  0 drivers
v0x144ed30_0 .net "B", 0 0, o0x7fa42f028048;  0 drivers
v0x144edf0_0 .net "carryin", 0 0, o0x7fa42f028078;  0 drivers
v0x14b8710_0 .net "carryout", 0 0, L_0x1543f10;  1 drivers
v0x14b8320_0 .net "out1", 0 0, L_0x1543bf0;  1 drivers
v0x144ab00_0 .net "out2", 0 0, L_0x1543d40;  1 drivers
v0x144abc0_0 .net "out3", 0 0, L_0x1543e00;  1 drivers
v0x14b40f0_0 .net "overflow", 0 0, L_0x1544020;  1 drivers
v0x14b41b0_0 .net "sum", 0 0, L_0x1543c80;  1 drivers
S_0x14695f0 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x1541ad0_0 .var "clk", 0 0;
v0x1542bb0_0 .net "dataMem", 31 0, L_0x1544370;  1 drivers
v0x1542c70_0 .net "regRT", 31 0, L_0x15587c0;  1 drivers
S_0x14c2b90 .scope module, "cpu" "singlecycleCPU" 3 9, 4 16 0, S_0x14695f0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x1540af0_0 .net "ALU_op", 2 0, v0x1499720_0;  1 drivers
v0x1540bd0_0 .net "DM_WE", 0 0, v0x14954f0_0;  1 drivers
v0x1540c90_0 .net "DM_add", 0 0, v0x14955b0_0;  1 drivers
v0x1540d30_0 .net "JumpAddress", 25 0, v0x1495130_0;  1 drivers
v0x1540e20_0 .net "PC", 31 0, v0x15310a0_0;  1 drivers
v0x1540f10_0 .net "S", 1 0, v0x14af780_0;  1 drivers
L_0x7fa42efdfb58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x1541000_0 .net/2u *"_s10", 31 0, L_0x7fa42efdfb58;  1 drivers
v0x15410c0_0 .net *"_s4", 29 0, L_0x1544770;  1 drivers
L_0x7fa42efdf018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x15411a0_0 .net *"_s6", 1 0, L_0x7fa42efdf018;  1 drivers
v0x1541310_0 .net "alu2", 31 0, L_0x1580ab0;  1 drivers
v0x15413d0_0 .net "alu_out", 31 0, L_0x157cfa0;  1 drivers
v0x15414e0_0 .net "clk", 0 0, v0x1541ad0_0;  1 drivers
v0x1541610_0 .net "co_flag", 0 0, L_0x1515110;  1 drivers
v0x1541740_0 .net "dataMem", 31 0, L_0x1544370;  alias, 1 drivers
v0x1541800_0 .net "dest_add", 1 0, v0x1490b40_0;  1 drivers
v0x15418c0_0 .net "funct", 5 0, v0x148c910_0;  1 drivers
v0x15419d0_0 .net "immediate", 31 0, v0x148c9d0_0;  1 drivers
v0x1541b80_0 .net "instruction", 31 0, L_0x1544510;  1 drivers
v0x1541c20_0 .net "op_imm", 0 0, v0x1476900_0;  1 drivers
v0x1541d10_0 .net "opcode", 5 0, v0x14769c0_0;  1 drivers
v0x1541e20_0 .net "ov_flag", 0 0, L_0x157cb50;  1 drivers
v0x1541f50_0 .net "pc", 1 0, v0x1476540_0;  1 drivers
v0x1542010_0 .net "rd", 4 0, v0x1476600_0;  1 drivers
v0x15420b0_0 .net "regRS", 31 0, L_0x1555f70;  1 drivers
v0x1542200_0 .net "regRT", 31 0, L_0x15587c0;  alias, 1 drivers
v0x1542350_0 .net "reg_WE", 0 0, v0x1472310_0;  1 drivers
v0x15423f0_0 .net "reg_in", 1 0, v0x14723d0_0;  1 drivers
v0x15424b0_0 .net "reg_in_mux_out", 31 0, L_0x1580770;  1 drivers
v0x1542570_0 .net "reg_select_mux_out", 4 0, L_0x1580140;  1 drivers
v0x1542630_0 .net "rs", 4 0, v0x1471f50_0;  1 drivers
v0x15426f0_0 .net "rt", 4 0, v0x146dd20_0;  1 drivers
v0x1542840_0 .net "shamt", 5 0, v0x146ddc0_0;  1 drivers
v0x1542900_0 .net "zero_flag", 0 0, L_0x157bfa0;  1 drivers
L_0x15445d0 .arith/sum 32, v0x148c9d0_0, L_0x1555f70;
L_0x1544770 .part v0x15310a0_0, 2, 30;
L_0x1544810 .concat [ 30 2 0 0], L_0x1544770, L_0x7fa42efdf018;
L_0x1580900 .arith/sum 32, v0x15310a0_0, L_0x7fa42efdfb58;
S_0x14be500 .scope module, "controlPC" "pcController" 4 49, 5 8 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x14af780_0 .var "controlSig", 1 0;
v0x144a740_0 .net "function1", 5 0, v0x148c910_0;  alias, 1 drivers
v0x144a800_0 .net "opcode", 5 0, v0x14769c0_0;  alias, 1 drivers
v0x14ab560_0 .net "zeroFlag", 0 0, L_0x157bfa0;  alias, 1 drivers
E_0x1439a30 .event edge, v0x144a740_0, v0x14ab560_0, v0x144a800_0;
S_0x14a8670 .scope module, "decode" "instructionDecoder" 4 53, 6 20 0, S_0x14c2b90;
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
v0x1499720_0 .var "ALU_op", 2 0;
v0x14954f0_0 .var "DM_WE", 0 0;
v0x14955b0_0 .var "DM_add", 0 0;
v0x1495130_0 .var "address", 25 0;
v0x1490f00_0 .net "clk", 0 0, v0x1541ad0_0;  alias, 1 drivers
v0x1490b40_0 .var "dest_add", 1 0;
v0x148c910_0 .var "funct", 5 0;
v0x148c9d0_0 .var "immediate", 31 0;
v0x148c550_0 .net "instruction", 31 0, L_0x1544510;  alias, 1 drivers
v0x1476900_0 .var "op_imm", 0 0;
v0x14769c0_0 .var "opcode", 5 0;
v0x1476540_0 .var "pc", 1 0;
v0x1476600_0 .var "rd", 4 0;
v0x1472310_0 .var "reg_WE", 0 0;
v0x14723d0_0 .var "reg_in", 1 0;
v0x1471f50_0 .var "rs", 4 0;
v0x146dd20_0 .var "rt", 4 0;
v0x146ddc0_0 .var "shamt", 5 0;
E_0x1499b80 .event edge, v0x148c550_0;
S_0x14a3fe0 .scope module, "lulu" "ALU" 4 59, 7 105 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x157bfa0/0/0 .functor OR 1, L_0x156b710, L_0x157d1f0, L_0x157d290, L_0x157d380;
L_0x157bfa0/0/4 .functor OR 1, L_0x157dc50, L_0x156b800, L_0x157d910, L_0x157da00;
L_0x157bfa0/0/8 .functor OR 1, L_0x157daf0, L_0x157e160, L_0x157de00, L_0x157def0;
L_0x157bfa0/0/12 .functor OR 1, L_0x157dfe0, L_0x157dcf0, L_0x157e200, L_0x157e2f0;
L_0x157bfa0/0/16 .functor OR 1, L_0x157e3e0, L_0x157e4d0, L_0x157eb40, L_0x157ebe0;
L_0x157bfa0/0/20 .functor OR 1, L_0x157e790, L_0x157e880, L_0x157e970, L_0x157ea60;
L_0x157bfa0/0/24 .functor OR 1, L_0x157ecd0, L_0x157edc0, L_0x157eeb0, L_0x157efa0;
L_0x157bfa0/0/28 .functor OR 1, L_0x157f4f0, L_0x157e580, L_0x157e670, L_0x157f0f0;
L_0x157bfa0/0/32 .functor OR 1, L_0x157f1e0, L_0x157f2d0, C4<0>, C4<0>;
L_0x157bfa0/1/0 .functor OR 1, L_0x157bfa0/0/0, L_0x157bfa0/0/4, L_0x157bfa0/0/8, L_0x157bfa0/0/12;
L_0x157bfa0/1/4 .functor OR 1, L_0x157bfa0/0/16, L_0x157bfa0/0/20, L_0x157bfa0/0/24, L_0x157bfa0/0/28;
L_0x157bfa0/1/8 .functor OR 1, L_0x157bfa0/0/32, C4<0>, C4<0>, C4<0>;
L_0x157bfa0 .functor NOR 1, L_0x157bfa0/1/0, L_0x157bfa0/1/4, L_0x157bfa0/1/8, C4<0>;
v0x152d090_0 .net "A", 31 0, L_0x1555f70;  alias, 1 drivers
v0x152d190_0 .net "B", 31 0, L_0x1580ab0;  alias, 1 drivers
v0x152d270_0 .net *"_s322", 0 0, L_0x156b710;  1 drivers
v0x152d360_0 .net *"_s324", 0 0, L_0x157d1f0;  1 drivers
v0x152d440_0 .net *"_s326", 0 0, L_0x157d290;  1 drivers
v0x152d570_0 .net *"_s328", 0 0, L_0x157d380;  1 drivers
v0x152d650_0 .net *"_s330", 0 0, L_0x157dc50;  1 drivers
v0x152d730_0 .net *"_s332", 0 0, L_0x156b800;  1 drivers
v0x152d810_0 .net *"_s334", 0 0, L_0x157d910;  1 drivers
v0x152d980_0 .net *"_s336", 0 0, L_0x157da00;  1 drivers
v0x152da60_0 .net *"_s338", 0 0, L_0x157daf0;  1 drivers
v0x152db40_0 .net *"_s340", 0 0, L_0x157e160;  1 drivers
v0x152dc20_0 .net *"_s342", 0 0, L_0x157de00;  1 drivers
v0x152dd00_0 .net *"_s344", 0 0, L_0x157def0;  1 drivers
v0x152dde0_0 .net *"_s346", 0 0, L_0x157dfe0;  1 drivers
v0x152dec0_0 .net *"_s348", 0 0, L_0x157dcf0;  1 drivers
v0x152dfa0_0 .net *"_s350", 0 0, L_0x157e200;  1 drivers
v0x152e150_0 .net *"_s352", 0 0, L_0x157e2f0;  1 drivers
v0x152e1f0_0 .net *"_s354", 0 0, L_0x157e3e0;  1 drivers
v0x152e2d0_0 .net *"_s356", 0 0, L_0x157e4d0;  1 drivers
v0x152e3b0_0 .net *"_s358", 0 0, L_0x157eb40;  1 drivers
v0x152e490_0 .net *"_s360", 0 0, L_0x157ebe0;  1 drivers
v0x152e570_0 .net *"_s362", 0 0, L_0x157e790;  1 drivers
v0x152e650_0 .net *"_s364", 0 0, L_0x157e880;  1 drivers
v0x152e730_0 .net *"_s366", 0 0, L_0x157e970;  1 drivers
v0x152e810_0 .net *"_s368", 0 0, L_0x157ea60;  1 drivers
v0x152e8f0_0 .net *"_s370", 0 0, L_0x157ecd0;  1 drivers
v0x152e9d0_0 .net *"_s372", 0 0, L_0x157edc0;  1 drivers
v0x152eab0_0 .net *"_s374", 0 0, L_0x157eeb0;  1 drivers
v0x152eb90_0 .net *"_s376", 0 0, L_0x157efa0;  1 drivers
v0x152ec70_0 .net *"_s378", 0 0, L_0x157f4f0;  1 drivers
v0x152ed50_0 .net *"_s380", 0 0, L_0x157e580;  1 drivers
v0x152ee30_0 .net *"_s382", 0 0, L_0x157e670;  1 drivers
v0x152e080_0 .net *"_s384", 0 0, L_0x157f0f0;  1 drivers
v0x152f100_0 .net *"_s386", 0 0, L_0x157f1e0;  1 drivers
v0x152f1e0_0 .net *"_s388", 0 0, L_0x157f2d0;  1 drivers
v0x152f2c0_0 .net "carryout", 0 0, L_0x1515110;  alias, 1 drivers
v0x152f360_0 .net "command", 2 0, v0x1499720_0;  alias, 1 drivers
v0x152f420_0 .net "cout", 30 0, L_0x157bc10;  1 drivers
v0x152f500_0 .net "overflow", 0 0, L_0x157cb50;  alias, 1 drivers
v0x152f5a0_0 .net "result", 31 0, L_0x157cfa0;  alias, 1 drivers
v0x152f680_0 .net "zero", 0 0, L_0x157bfa0;  alias, 1 drivers
L_0x1559240 .part L_0x1555f70, 0, 1;
L_0x15592e0 .part L_0x1580ab0, 0, 1;
L_0x1559380 .part v0x1499720_0, 0, 1;
L_0x155a170 .part L_0x1555f70, 1, 1;
L_0x155a320 .part L_0x1580ab0, 1, 1;
L_0x155a3c0 .part L_0x157bc10, 0, 1;
L_0x155b490 .part L_0x1555f70, 2, 1;
L_0x155b530 .part L_0x1580ab0, 2, 1;
L_0x155b5d0 .part L_0x157bc10, 1, 1;
L_0x155c6f0 .part L_0x1555f70, 3, 1;
L_0x155c790 .part L_0x1580ab0, 3, 1;
L_0x155c830 .part L_0x157bc10, 2, 1;
L_0x155d920 .part L_0x1555f70, 4, 1;
L_0x155d9c0 .part L_0x1580ab0, 4, 1;
L_0x155da60 .part L_0x157bc10, 3, 1;
L_0x155e9c0 .part L_0x1555f70, 5, 1;
L_0x155eaf0 .part L_0x1580ab0, 5, 1;
L_0x155eca0 .part L_0x157bc10, 4, 1;
L_0x155fc10 .part L_0x1555f70, 6, 1;
L_0x155fcb0 .part L_0x1580ab0, 6, 1;
L_0x155ed40 .part L_0x157bc10, 5, 1;
L_0x1560d30 .part L_0x1555f70, 7, 1;
L_0x155fd50 .part L_0x1580ab0, 7, 1;
L_0x1560e90 .part L_0x157bc10, 6, 1;
L_0x1561f30 .part L_0x1555f70, 8, 1;
L_0x1561fd0 .part L_0x1580ab0, 8, 1;
L_0x1560fc0 .part L_0x157bc10, 7, 1;
L_0x15631e0 .part L_0x1555f70, 9, 1;
L_0x1562070 .part L_0x1580ab0, 9, 1;
L_0x1563490 .part L_0x157bc10, 8, 1;
L_0x1564630 .part L_0x1555f70, 10, 1;
L_0x15646d0 .part L_0x1580ab0, 10, 1;
L_0x1564770 .part L_0x157bc10, 9, 1;
L_0x15657b0 .part L_0x1555f70, 11, 1;
L_0x155a210 .part L_0x1580ab0, 11, 1;
L_0x1565970 .part L_0x157bc10, 10, 1;
L_0x1566a20 .part L_0x1555f70, 12, 1;
L_0x1566ac0 .part L_0x1580ab0, 12, 1;
L_0x1565aa0 .part L_0x157bc10, 11, 1;
L_0x1567c60 .part L_0x1555f70, 13, 1;
L_0x1566b60 .part L_0x1580ab0, 13, 1;
L_0x1566c00 .part L_0x157bc10, 12, 1;
L_0x1568fa0 .part L_0x1555f70, 14, 1;
L_0x1569040 .part L_0x1580ab0, 14, 1;
L_0x1568060 .part L_0x157bc10, 13, 1;
L_0x156a1f0 .part L_0x1555f70, 15, 1;
L_0x15690e0 .part L_0x1580ab0, 15, 1;
L_0x1569180 .part L_0x157bc10, 14, 1;
L_0x156b430 .part L_0x1555f70, 16, 1;
L_0x156b4d0 .part L_0x1580ab0, 16, 1;
L_0x156a4a0 .part L_0x157bc10, 15, 1;
L_0x156c750 .part L_0x1555f70, 17, 1;
L_0x156b570 .part L_0x1580ab0, 17, 1;
L_0x156b610 .part L_0x157bc10, 16, 1;
L_0x156d990 .part L_0x1555f70, 18, 1;
L_0x156da30 .part L_0x1580ab0, 18, 1;
L_0x156ca30 .part L_0x157bc10, 17, 1;
L_0x156ebb0 .part L_0x1555f70, 19, 1;
L_0x156dad0 .part L_0x1580ab0, 19, 1;
L_0x156db70 .part L_0x157bc10, 18, 1;
L_0x156fde0 .part L_0x1555f70, 20, 1;
L_0x156fe80 .part L_0x1580ab0, 20, 1;
L_0x156ec50 .part L_0x157bc10, 19, 1;
L_0x1571010 .part L_0x1555f70, 21, 1;
L_0x156ff20 .part L_0x1580ab0, 21, 1;
L_0x156ffc0 .part L_0x157bc10, 20, 1;
L_0x1572250 .part L_0x1555f70, 22, 1;
L_0x15722f0 .part L_0x1580ab0, 22, 1;
L_0x15710b0 .part L_0x157bc10, 21, 1;
L_0x1573480 .part L_0x1555f70, 23, 1;
L_0x1572390 .part L_0x1580ab0, 23, 1;
L_0x1572430 .part L_0x157bc10, 22, 1;
L_0x15746b0 .part L_0x1555f70, 24, 1;
L_0x1574750 .part L_0x1580ab0, 24, 1;
L_0x1573520 .part L_0x157bc10, 23, 1;
L_0x15758e0 .part L_0x1555f70, 25, 1;
L_0x1563280 .part L_0x1580ab0, 25, 1;
L_0x1563320 .part L_0x157bc10, 24, 1;
L_0x1564520 .part L_0x1555f70, 26, 1;
L_0x1576d50 .part L_0x1580ab0, 26, 1;
L_0x1575d90 .part L_0x157bc10, 25, 1;
L_0x1577dc0 .part L_0x1555f70, 27, 1;
L_0x1576df0 .part L_0x1580ab0, 27, 1;
L_0x1576e90 .part L_0x157bc10, 26, 1;
L_0x1578ef0 .part L_0x1555f70, 28, 1;
L_0x1578f90 .part L_0x1580ab0, 28, 1;
L_0x1577e60 .part L_0x157bc10, 27, 1;
L_0x157a010 .part L_0x1555f70, 29, 1;
L_0x1579030 .part L_0x1580ab0, 29, 1;
L_0x1567e50 .part L_0x157bc10, 28, 1;
LS_0x157bc10_0_0 .concat8 [ 1 1 1 1], L_0x14403c0, L_0x142df70, L_0x14e5fd0, L_0x150dd60;
LS_0x157bc10_0_4 .concat8 [ 1 1 1 1], L_0x1519530, L_0x151cf00, L_0x15208d0, L_0x15242a0;
LS_0x157bc10_0_8 .concat8 [ 1 1 1 1], L_0x1527c70, L_0x152b640, L_0x143af80, L_0x1472c60;
LS_0x157bc10_0_12 .concat8 [ 1 1 1 1], L_0x14627a0, L_0x141b790, L_0x1464bc0, L_0x1445fd0;
LS_0x157bc10_0_16 .concat8 [ 1 1 1 1], L_0x12f7e20, L_0x12b8980, L_0x14decb0, L_0x14e2640;
LS_0x157bc10_0_20 .concat8 [ 1 1 1 1], L_0x14e9960, L_0x14ed330, L_0x14f0d00, L_0x14f48b0;
LS_0x157bc10_0_24 .concat8 [ 1 1 1 1], L_0x14f8280, L_0x14fbc50, L_0x14ff620, L_0x1502ff0;
LS_0x157bc10_0_28 .concat8 [ 1 1 1 0], L_0x15069c0, L_0x150a390, L_0x1511730;
LS_0x157bc10_1_0 .concat8 [ 4 4 4 4], LS_0x157bc10_0_0, LS_0x157bc10_0_4, LS_0x157bc10_0_8, LS_0x157bc10_0_12;
LS_0x157bc10_1_4 .concat8 [ 4 4 4 3], LS_0x157bc10_0_16, LS_0x157bc10_0_20, LS_0x157bc10_0_24, LS_0x157bc10_0_28;
L_0x157bc10 .concat8 [ 16 15 0 0], LS_0x157bc10_1_0, LS_0x157bc10_1_4;
L_0x157bdc0 .part L_0x1555f70, 30, 1;
L_0x157a790 .part L_0x1580ab0, 30, 1;
L_0x157a830 .part L_0x157bc10, 29, 1;
LS_0x157cfa0_0_0 .concat8 [ 1 1 1 1], L_0x1558f70, L_0x1559cd0, L_0x155add0, L_0x155c0c0;
LS_0x157cfa0_0_4 .concat8 [ 1 1 1 1], L_0x155d2f0, L_0x155e3f0, L_0x155f640, L_0x1560760;
LS_0x157cfa0_0_8 .concat8 [ 1 1 1 1], L_0x1561900, L_0x1562bb0, L_0x1563ef0, L_0x1565180;
LS_0x157cfa0_0_12 .concat8 [ 1 1 1 1], L_0x15663f0, L_0x1567630, L_0x1568970, L_0x1569bc0;
LS_0x157cfa0_0_16 .concat8 [ 1 1 1 1], L_0x156ae00, L_0x156c120, L_0x156d360, L_0x156e580;
LS_0x157cfa0_0_20 .concat8 [ 1 1 1 1], L_0x156f7b0, L_0x15709e0, L_0x1571c20, L_0x1572e50;
LS_0x157cfa0_0_24 .concat8 [ 1 1 1 1], L_0x1574080, L_0x15752b0, L_0x1576570, L_0x15777f0;
LS_0x157cfa0_0_28 .concat8 [ 1 1 1 1], L_0x1578920, L_0x1579a40, L_0x152c870, L_0x157ca10;
LS_0x157cfa0_1_0 .concat8 [ 4 4 4 4], LS_0x157cfa0_0_0, LS_0x157cfa0_0_4, LS_0x157cfa0_0_8, LS_0x157cfa0_0_12;
LS_0x157cfa0_1_4 .concat8 [ 4 4 4 4], LS_0x157cfa0_0_16, LS_0x157cfa0_0_20, LS_0x157cfa0_0_24, LS_0x157cfa0_0_28;
L_0x157cfa0 .concat8 [ 16 16 0 0], LS_0x157cfa0_1_0, LS_0x157cfa0_1_4;
L_0x157d150 .part L_0x1555f70, 31, 1;
L_0x157be60 .part L_0x1580ab0, 31, 1;
L_0x157bf00 .part L_0x157bc10, 30, 1;
L_0x156b710 .part L_0x157cfa0, 0, 1;
L_0x157d1f0 .part L_0x157cfa0, 1, 1;
L_0x157d290 .part L_0x157cfa0, 2, 1;
L_0x157d380 .part L_0x157cfa0, 3, 1;
L_0x157dc50 .part L_0x157cfa0, 4, 1;
L_0x156b800 .part L_0x157cfa0, 5, 1;
L_0x157d910 .part L_0x157cfa0, 6, 1;
L_0x157da00 .part L_0x157cfa0, 7, 1;
L_0x157daf0 .part L_0x157cfa0, 8, 1;
L_0x157e160 .part L_0x157cfa0, 9, 1;
L_0x157de00 .part L_0x157cfa0, 10, 1;
L_0x157def0 .part L_0x157cfa0, 11, 1;
L_0x157dfe0 .part L_0x157cfa0, 12, 1;
L_0x157dcf0 .part L_0x157cfa0, 13, 1;
L_0x157e200 .part L_0x157cfa0, 14, 1;
L_0x157e2f0 .part L_0x157cfa0, 15, 1;
L_0x157e3e0 .part L_0x157cfa0, 16, 1;
L_0x157e4d0 .part L_0x157cfa0, 17, 1;
L_0x157eb40 .part L_0x157cfa0, 18, 1;
L_0x157ebe0 .part L_0x157cfa0, 19, 1;
L_0x157e790 .part L_0x157cfa0, 20, 1;
L_0x157e880 .part L_0x157cfa0, 21, 1;
L_0x157e970 .part L_0x157cfa0, 22, 1;
L_0x157ea60 .part L_0x157cfa0, 23, 1;
L_0x157ecd0 .part L_0x157cfa0, 24, 1;
L_0x157edc0 .part L_0x157cfa0, 25, 1;
L_0x157eeb0 .part L_0x157cfa0, 26, 1;
L_0x157efa0 .part L_0x157cfa0, 27, 1;
L_0x157f4f0 .part L_0x157cfa0, 28, 1;
L_0x157e580 .part L_0x157cfa0, 29, 1;
L_0x157e670 .part L_0x157cfa0, 28, 1;
L_0x157f0f0 .part L_0x157cfa0, 29, 1;
L_0x157f1e0 .part L_0x157cfa0, 30, 1;
L_0x157f2d0 .part L_0x157cfa0, 31, 1;
S_0x149f950 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1559010 .functor BUFZ 1, L_0x1558a40, C4<0>, C4<0>, C4<0>;
L_0x1559080 .functor BUFZ 1, L_0x1558a40, C4<0>, C4<0>, C4<0>;
v0x14348b0_0 .net "A", 0 0, L_0x1559240;  1 drivers
v0x1434950_0 .net "B", 0 0, L_0x15592e0;  1 drivers
v0x142d530_0 .net "I", 7 0, L_0x15591a0;  1 drivers
v0x142d600_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14343e0_0 .net *"_s15", 0 0, L_0x1559010;  1 drivers
v0x1433f10_0 .net *"_s19", 0 0, L_0x1559080;  1 drivers
L_0x7fa42efdf1c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1433a40_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf1c8;  1 drivers
v0x1433570_0 .net "addORsub", 0 0, L_0x1558a40;  1 drivers
v0x1433610_0 .net "carryin", 0 0, L_0x1559380;  1 drivers
v0x14330a0_0 .net "carryout", 0 0, L_0x14403c0;  1 drivers
v0x1433140_0 .net "modB", 0 0, L_0x1558830;  1 drivers
v0x1432bd0_0 .net "out", 0 0, L_0x1558f70;  1 drivers
L_0x15588a0 .part v0x1499720_0, 0, 1;
LS_0x15591a0_0_0 .concat8 [ 1 1 1 1], L_0x1559010, L_0x1559080, L_0x1558ca0, L_0x7fa42efdf1c8;
LS_0x15591a0_0_4 .concat8 [ 1 1 1 1], L_0x1435bf0, L_0x1558e20, L_0x1558e90, L_0x1558f00;
L_0x15591a0 .concat8 [ 4 4 0 0], LS_0x15591a0_0_0, LS_0x15591a0_0_4;
S_0x1447c90 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1558940 .functor XOR 1, L_0x1559240, L_0x1558830, C4<0>, C4<0>;
L_0x1558a40 .functor XOR 1, L_0x1558940, L_0x1559380, C4<0>, C4<0>;
L_0x1558ab0 .functor AND 1, L_0x1558940, L_0x1559380, C4<1>, C4<1>;
L_0x1558b20 .functor AND 1, L_0x1559240, L_0x1558830, C4<1>, C4<1>;
L_0x14403c0 .functor OR 1, L_0x1558ab0, L_0x1558b20, C4<0>, C4<0>;
v0x145f050_0 .net "A", 0 0, L_0x1559240;  alias, 1 drivers
v0x145a930_0 .net "B", 0 0, L_0x1558830;  alias, 1 drivers
v0x145a9f0_0 .net "carryin", 0 0, L_0x1559380;  alias, 1 drivers
v0x14c78e0_0 .net "carryout", 0 0, L_0x14403c0;  alias, 1 drivers
v0x14c4020_0 .net "out1", 0 0, L_0x1558940;  1 drivers
v0x14bf990_0 .net "out2", 0 0, L_0x1558ab0;  1 drivers
v0x14bfa50_0 .net "out3", 0 0, L_0x1558b20;  1 drivers
v0x14bb2f0_0 .net "sum", 0 0, L_0x1558a40;  alias, 1 drivers
S_0x1489aa0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1435bf0 .functor AND 1, L_0x1559240, L_0x15592e0, C4<1>, C4<1>;
v0x14a9b50_0 .net "A", 0 0, L_0x1559240;  alias, 1 drivers
v0x14a5470_0 .net "B", 0 0, L_0x15592e0;  alias, 1 drivers
v0x14a5510_0 .net "out", 0 0, L_0x1435bf0;  1 drivers
S_0x1485410 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x149c740_0 .net "I", 7 0, L_0x15591a0;  alias, 1 drivers
v0x14868a0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1482210_0 .net "out", 0 0, L_0x1558f70;  alias, 1 drivers
L_0x1558f70 .part/v L_0x15591a0, v0x1499720_0, 1;
S_0x1480d80 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1558e20 .functor NAND 1, L_0x1559240, L_0x15592e0, C4<1>, C4<1>;
v0x147db80_0 .net "A", 0 0, L_0x1559240;  alias, 1 drivers
v0x1478ec0_0 .net "B", 0 0, L_0x15592e0;  alias, 1 drivers
v0x1478f60_0 .net "out", 0 0, L_0x1558e20;  1 drivers
S_0x147c6f0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1558e90 .functor NOR 1, L_0x1559240, L_0x15592e0, C4<0>, C4<0>;
v0x1479530_0 .net "A", 0 0, L_0x1559240;  alias, 1 drivers
v0x1444a80_0 .net "B", 0 0, L_0x15592e0;  alias, 1 drivers
v0x1444b40_0 .net "out", 0 0, L_0x1558e90;  1 drivers
S_0x146a000 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1558f00 .functor OR 1, L_0x1559240, L_0x15592e0, C4<0>, C4<0>;
v0x1440300_0 .net "A", 0 0, L_0x1559240;  alias, 1 drivers
v0x12be180_0 .net "B", 0 0, L_0x15592e0;  alias, 1 drivers
v0x12be240_0 .net "out", 0 0, L_0x1558f00;  1 drivers
S_0x14435f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1558830 .functor XOR 1, L_0x15592e0, L_0x15588a0, C4<0>, C4<0>;
v0x1436110_0 .net "A", 0 0, L_0x15592e0;  alias, 1 drivers
v0x1435c80_0 .net "B", 0 0, L_0x15588a0;  1 drivers
v0x1435720_0 .net "out", 0 0, L_0x1558830;  alias, 1 drivers
S_0x1459980 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x149f950;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1558ca0 .functor XOR 1, L_0x1559240, L_0x15592e0, C4<0>, C4<0>;
v0x1435250_0 .net "A", 0 0, L_0x1559240;  alias, 1 drivers
v0x1435310_0 .net "B", 0 0, L_0x15592e0;  alias, 1 drivers
v0x1434d80_0 .net "out", 0 0, L_0x1558ca0;  1 drivers
S_0x149b790 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1559d90 .functor BUFZ 1, L_0x1559700, C4<0>, C4<0>, C4<0>;
L_0x1559e20 .functor BUFZ 1, L_0x1559700, C4<0>, C4<0>, C4<0>;
v0x14af2b0_0 .net "A", 0 0, L_0x155a170;  1 drivers
v0x14af350_0 .net "B", 0 0, L_0x155a320;  1 drivers
v0x14aacc0_0 .net "I", 7 0, L_0x1559f40;  1 drivers
v0x14aad90_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x144a2b0_0 .net *"_s15", 0 0, L_0x1559d90;  1 drivers
v0x1499290_0 .net *"_s19", 0 0, L_0x1559e20;  1 drivers
L_0x7fa42efdf210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14906b0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf210;  1 drivers
v0x148c0c0_0 .net "addORsub", 0 0, L_0x1559700;  1 drivers
v0x148c160_0 .net "carryin", 0 0, L_0x155a3c0;  1 drivers
v0x14760b0_0 .net "carryout", 0 0, L_0x142df70;  1 drivers
v0x1476180_0 .net "modB", 0 0, L_0x15594b0;  1 drivers
v0x1471ac0_0 .net "out", 0 0, L_0x1559cd0;  1 drivers
L_0x1559520 .part v0x1499720_0, 0, 1;
LS_0x1559f40_0_0 .concat8 [ 1 1 1 1], L_0x1559d90, L_0x1559e20, L_0x15599a0, L_0x7fa42efdf210;
LS_0x1559f40_0_4 .concat8 [ 1 1 1 1], L_0x1457540, L_0x1559b20, L_0x1559bb0, L_0x1559c40;
L_0x1559f40 .concat8 [ 4 4 0 0], LS_0x1559f40_0_0, LS_0x1559f40_0_4;
S_0x1455360 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x15595e0 .functor XOR 1, L_0x155a170, L_0x15594b0, C4<0>, C4<0>;
L_0x1559700 .functor XOR 1, L_0x15595e0, L_0x155a3c0, C4<0>, C4<0>;
L_0x1559790 .functor AND 1, L_0x15595e0, L_0x155a3c0, C4<1>, C4<1>;
L_0x1559820 .functor AND 1, L_0x155a170, L_0x15594b0, C4<1>, C4<1>;
L_0x142df70 .functor OR 1, L_0x1559790, L_0x1559820, C4<0>, C4<0>;
v0x1432230_0 .net "A", 0 0, L_0x155a170;  alias, 1 drivers
v0x1431d60_0 .net "B", 0 0, L_0x15594b0;  alias, 1 drivers
v0x1431e20_0 .net "carryin", 0 0, L_0x155a3c0;  alias, 1 drivers
v0x1431890_0 .net "carryout", 0 0, L_0x142df70;  alias, 1 drivers
v0x1431950_0 .net "out1", 0 0, L_0x15595e0;  1 drivers
v0x142d060_0 .net "out2", 0 0, L_0x1559790;  1 drivers
v0x142d100_0 .net "out3", 0 0, L_0x1559820;  1 drivers
v0x14313c0_0 .net "sum", 0 0, L_0x1559700;  alias, 1 drivers
S_0x1450d70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1457540 .functor AND 1, L_0x155a170, L_0x155a320, C4<1>, C4<1>;
v0x1430f40_0 .net "A", 0 0, L_0x155a170;  alias, 1 drivers
v0x1430a20_0 .net "B", 0 0, L_0x155a320;  alias, 1 drivers
v0x1430ac0_0 .net "out", 0 0, L_0x1457540;  1 drivers
S_0x144c780 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1430080_0 .net "I", 7 0, L_0x1559f40;  alias, 1 drivers
v0x142fbb0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x142fc70_0 .net "out", 0 0, L_0x1559cd0;  alias, 1 drivers
L_0x1559cd0 .part/v L_0x1559f40, v0x1499720_0, 1;
S_0x14b5d70 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1559b20 .functor NAND 1, L_0x155a170, L_0x155a320, C4<1>, C4<1>;
v0x142f780_0 .net "A", 0 0, L_0x155a170;  alias, 1 drivers
v0x142f260_0 .net "B", 0 0, L_0x155a320;  alias, 1 drivers
v0x142ed40_0 .net "out", 0 0, L_0x1559b20;  1 drivers
S_0x14b1780 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1559bb0 .functor NOR 1, L_0x155a170, L_0x155a320, C4<0>, C4<0>;
v0x142e8c0_0 .net "A", 0 0, L_0x155a170;  alias, 1 drivers
v0x142cb90_0 .net "B", 0 0, L_0x155a320;  alias, 1 drivers
v0x142e3a0_0 .net "out", 0 0, L_0x1559bb0;  1 drivers
S_0x14ad190 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1559c40 .functor OR 1, L_0x155a170, L_0x155a320, C4<0>, C4<0>;
v0x142ded0_0 .net "A", 0 0, L_0x155a170;  alias, 1 drivers
v0x142da00_0 .net "B", 0 0, L_0x155a320;  alias, 1 drivers
v0x142dac0_0 .net "out", 0 0, L_0x1559c40;  1 drivers
S_0x1497170 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15594b0 .functor XOR 1, L_0x155a320, L_0x1559520, C4<0>, C4<0>;
v0x1457480_0 .net "A", 0 0, L_0x155a320;  alias, 1 drivers
v0x1452e90_0 .net "B", 0 0, L_0x1559520;  1 drivers
v0x1452f30_0 .net "out", 0 0, L_0x15594b0;  alias, 1 drivers
S_0x1448670 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x149b790;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15599a0 .functor XOR 1, L_0x155a170, L_0x155a320, C4<0>, C4<0>;
v0x144e960_0 .net "A", 0 0, L_0x155a170;  alias, 1 drivers
v0x14b7eb0_0 .net "B", 0 0, L_0x155a320;  alias, 1 drivers
v0x14b38a0_0 .net "out", 0 0, L_0x15599a0;  1 drivers
S_0x1492b80 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1564050 .functor BUFZ 1, L_0x15637d0, C4<0>, C4<0>, C4<0>;
L_0x15640e0 .functor BUFZ 1, L_0x15637d0, C4<0>, C4<0>, C4<0>;
v0x14394e0_0 .net "A", 0 0, L_0x1564630;  1 drivers
v0x1439580_0 .net "B", 0 0, L_0x15646d0;  1 drivers
v0x1439190_0 .net "I", 7 0, L_0x1564200;  1 drivers
v0x1439260_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1438e60_0 .net *"_s15", 0 0, L_0x1564050;  1 drivers
v0x1438b30_0 .net *"_s19", 0 0, L_0x15640e0;  1 drivers
L_0x7fa42efdf498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1438c10_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf498;  1 drivers
v0x1438800_0 .net "addORsub", 0 0, L_0x15637d0;  1 drivers
v0x14388a0_0 .net "carryin", 0 0, L_0x1564770;  1 drivers
v0x1426590_0 .net "carryout", 0 0, L_0x143af80;  1 drivers
v0x1438480_0 .net "modB", 0 0, L_0x15635c0;  1 drivers
v0x1438520_0 .net "out", 0 0, L_0x1563ef0;  1 drivers
L_0x1563630 .part v0x1499720_0, 0, 1;
LS_0x1564200_0_0 .concat8 [ 1 1 1 1], L_0x1564050, L_0x15640e0, L_0x1563be0, L_0x7fa42efdf498;
LS_0x1564200_0_4 .concat8 [ 1 1 1 1], L_0x1426950, L_0x1563d60, L_0x1563dd0, L_0x1563e60;
L_0x1564200 .concat8 [ 4 4 0 0], LS_0x1564200_0_0, LS_0x1564200_0_4;
S_0x148e590 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x15636d0 .functor XOR 1, L_0x1564630, L_0x15635c0, C4<0>, C4<0>;
L_0x15637d0 .functor XOR 1, L_0x15636d0, L_0x1564770, C4<0>, C4<0>;
L_0x15638e0 .functor AND 1, L_0x15636d0, L_0x1564770, C4<1>, C4<1>;
L_0x1563970 .functor AND 1, L_0x1564630, L_0x15635c0, C4<1>, C4<1>;
L_0x143af80 .functor OR 1, L_0x15638e0, L_0x1563970, C4<0>, C4<0>;
v0x148a480_0 .net "A", 0 0, L_0x1564630;  alias, 1 drivers
v0x148a540_0 .net "B", 0 0, L_0x15635c0;  alias, 1 drivers
v0x1478a40_0 .net "carryin", 0 0, L_0x1564770;  alias, 1 drivers
v0x1478b30_0 .net "carryout", 0 0, L_0x143af80;  alias, 1 drivers
v0x1473f90_0 .net "out1", 0 0, L_0x15636d0;  1 drivers
v0x1474030_0 .net "out2", 0 0, L_0x15638e0;  1 drivers
v0x146f9a0_0 .net "out3", 0 0, L_0x1563970;  1 drivers
v0x146fa60_0 .net "sum", 0 0, L_0x15637d0;  alias, 1 drivers
S_0x1426f60 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1426950 .functor AND 1, L_0x1564630, L_0x15646d0, C4<1>, C4<1>;
v0x143d930_0 .net "A", 0 0, L_0x1564630;  alias, 1 drivers
v0x143d9f0_0 .net "B", 0 0, L_0x15646d0;  alias, 1 drivers
v0x143d600_0 .net "out", 0 0, L_0x1426950;  1 drivers
S_0x143d1d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x143cea0_0 .net "I", 7 0, L_0x1564200;  alias, 1 drivers
v0x143cf60_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x143cb70_0 .net "out", 0 0, L_0x1563ef0;  alias, 1 drivers
L_0x1563ef0 .part/v L_0x1564200, v0x1499720_0, 1;
S_0x143c840 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1563d60 .functor NAND 1, L_0x1564630, L_0x15646d0, C4<1>, C4<1>;
v0x143c5b0_0 .net "A", 0 0, L_0x1564630;  alias, 1 drivers
v0x143c1e0_0 .net "B", 0 0, L_0x15646d0;  alias, 1 drivers
v0x143c2a0_0 .net "out", 0 0, L_0x1563d60;  1 drivers
S_0x143beb0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1563dd0 .functor NOR 1, L_0x1564630, L_0x15646d0, C4<0>, C4<0>;
v0x143bc70_0 .net "A", 0 0, L_0x1564630;  alias, 1 drivers
v0x143b850_0 .net "B", 0 0, L_0x15646d0;  alias, 1 drivers
v0x143b520_0 .net "out", 0 0, L_0x1563dd0;  1 drivers
S_0x143b1f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1563e60 .functor OR 1, L_0x1564630, L_0x15646d0, C4<0>, C4<0>;
v0x143aec0_0 .net "A", 0 0, L_0x1564630;  alias, 1 drivers
v0x143ab90_0 .net "B", 0 0, L_0x15646d0;  alias, 1 drivers
v0x143ac50_0 .net "out", 0 0, L_0x1563e60;  1 drivers
S_0x143a860 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15635c0 .functor XOR 1, L_0x15646d0, L_0x1563630, C4<0>, C4<0>;
v0x14268b0_0 .net "A", 0 0, L_0x15646d0;  alias, 1 drivers
v0x143a530_0 .net "B", 0 0, L_0x1563630;  1 drivers
v0x143a5f0_0 .net "out", 0 0, L_0x15635c0;  alias, 1 drivers
S_0x1439b20 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1492b80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1563be0 .functor XOR 1, L_0x1564630, L_0x15646d0, C4<0>, C4<0>;
v0x143a290_0 .net "A", 0 0, L_0x1564630;  alias, 1 drivers
v0x14397f0_0 .net "B", 0 0, L_0x15646d0;  alias, 1 drivers
v0x14398b0_0 .net "out", 0 0, L_0x1563be0;  1 drivers
S_0x1438150 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x15652e0 .functor BUFZ 1, L_0x1564a40, C4<0>, C4<0>, C4<0>;
L_0x1565370 .functor BUFZ 1, L_0x1564a40, C4<0>, C4<0>, C4<0>;
v0x14a3be0_0 .net "A", 0 0, L_0x15657b0;  1 drivers
v0x14a3c80_0 .net "B", 0 0, L_0x155a210;  1 drivers
v0x149f550_0 .net "I", 7 0, L_0x1565490;  1 drivers
v0x149f620_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x149b3c0_0 .net *"_s15", 0 0, L_0x15652e0;  1 drivers
v0x1485010_0 .net *"_s19", 0 0, L_0x1565370;  1 drivers
L_0x7fa42efdf4e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14850d0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf4e0;  1 drivers
v0x1480980_0 .net "addORsub", 0 0, L_0x1564a40;  1 drivers
v0x1480a20_0 .net "carryin", 0 0, L_0x1565970;  1 drivers
v0x147c2f0_0 .net "carryout", 0 0, L_0x1472c60;  1 drivers
v0x147c3c0_0 .net "modB", 0 0, L_0x1564810;  1 drivers
v0x14431f0_0 .net "out", 0 0, L_0x1565180;  1 drivers
L_0x1564880 .part v0x1499720_0, 0, 1;
LS_0x1565490_0_0 .concat8 [ 1 1 1 1], L_0x15652e0, L_0x1565370, L_0x1564e70, L_0x7fa42efdf4e0;
LS_0x1565490_0_4 .concat8 [ 1 1 1 1], L_0x1461ec0, L_0x1564ff0, L_0x1565060, L_0x15650f0;
L_0x1565490 .concat8 [ 4 4 0 0], LS_0x1565490_0_0, LS_0x1565490_0_4;
S_0x14377b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1564920 .functor XOR 1, L_0x15657b0, L_0x1564810, C4<0>, C4<0>;
L_0x1564a40 .functor XOR 1, L_0x1564920, L_0x1565970, C4<0>, C4<0>;
L_0x1564b70 .functor AND 1, L_0x1564920, L_0x1565970, C4<1>, C4<1>;
L_0x1564c00 .functor AND 1, L_0x15657b0, L_0x1564810, C4<1>, C4<1>;
L_0x1472c60 .functor OR 1, L_0x1564b70, L_0x1564c00, C4<0>, C4<0>;
v0x1426200_0 .net "A", 0 0, L_0x15657b0;  alias, 1 drivers
v0x1494ca0_0 .net "B", 0 0, L_0x1564810;  alias, 1 drivers
v0x1494d60_0 .net "carryin", 0 0, L_0x1565970;  alias, 1 drivers
v0x14ba040_0 .net "carryout", 0 0, L_0x1472c60;  alias, 1 drivers
v0x14ba100_0 .net "out1", 0 0, L_0x1564920;  1 drivers
v0x14d4bb0_0 .net "out2", 0 0, L_0x1564b70;  1 drivers
v0x14d4c70_0 .net "out3", 0 0, L_0x1564c00;  1 drivers
v0x1437320_0 .net "sum", 0 0, L_0x1564a40;  alias, 1 drivers
S_0x1425580 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1461ec0 .functor AND 1, L_0x15657b0, L_0x155a210, C4<1>, C4<1>;
v0x14d1ef0_0 .net "A", 0 0, L_0x15657b0;  alias, 1 drivers
v0x14d4290_0 .net "B", 0 0, L_0x155a210;  alias, 1 drivers
v0x14d4330_0 .net "out", 0 0, L_0x1461ec0;  1 drivers
S_0x1453f90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x144f9f0_0 .net "I", 7 0, L_0x1565490;  alias, 1 drivers
v0x144fa90_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x144b3d0_0 .net "out", 0 0, L_0x1565180;  alias, 1 drivers
L_0x1565180 .part/v L_0x1565490, v0x1499720_0, 1;
S_0x14b8f90 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1564ff0 .functor NAND 1, L_0x15657b0, L_0x155a210, C4<1>, C4<1>;
v0x14b4a40_0 .net "A", 0 0, L_0x15657b0;  alias, 1 drivers
v0x14b03b0_0 .net "B", 0 0, L_0x155a210;  alias, 1 drivers
v0x14b0470_0 .net "out", 0 0, L_0x1564ff0;  1 drivers
S_0x14abdc0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1565060 .functor NOR 1, L_0x15657b0, L_0x155a210, C4<0>, C4<0>;
v0x1495e90_0 .net "A", 0 0, L_0x15657b0;  alias, 1 drivers
v0x14917b0_0 .net "B", 0 0, L_0x155a210;  alias, 1 drivers
v0x148d1c0_0 .net "out", 0 0, L_0x1565060;  1 drivers
S_0x14771b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15650f0 .functor OR 1, L_0x15657b0, L_0x155a210, C4<0>, C4<0>;
v0x1472bc0_0 .net "A", 0 0, L_0x15657b0;  alias, 1 drivers
v0x146e5d0_0 .net "B", 0 0, L_0x155a210;  alias, 1 drivers
v0x146e690_0 .net "out", 0 0, L_0x15650f0;  1 drivers
S_0x1466460 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1564810 .functor XOR 1, L_0x155a210, L_0x1564880, C4<0>, C4<0>;
v0x1461e20_0 .net "A", 0 0, L_0x155a210;  alias, 1 drivers
v0x145d740_0 .net "B", 0 0, L_0x1564880;  1 drivers
v0x145d800_0 .net "out", 0 0, L_0x1564810;  alias, 1 drivers
S_0x14594a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1438150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1564e70 .functor XOR 1, L_0x15657b0, L_0x155a210, C4<0>, C4<0>;
v0x14c27e0_0 .net "A", 0 0, L_0x15657b0;  alias, 1 drivers
v0x14c28a0_0 .net "B", 0 0, L_0x155a210;  alias, 1 drivers
v0x14be100_0 .net "out", 0 0, L_0x1564e70;  1 drivers
S_0x1455d00 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1566550 .functor BUFZ 1, L_0x1565cd0, C4<0>, C4<0>, C4<0>;
L_0x15665e0 .functor BUFZ 1, L_0x1565cd0, C4<0>, C4<0>, C4<0>;
v0x149fe30_0 .net "A", 0 0, L_0x1566a20;  1 drivers
v0x149fed0_0 .net "B", 0 0, L_0x1566ac0;  1 drivers
v0x14858f0_0 .net "I", 7 0, L_0x1566700;  1 drivers
v0x14859c0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1481260_0 .net *"_s15", 0 0, L_0x1566550;  1 drivers
v0x1481320_0 .net *"_s19", 0 0, L_0x15665e0;  1 drivers
L_0x7fa42efdf528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x147cbd0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf528;  1 drivers
v0x147ccb0_0 .net "addORsub", 0 0, L_0x1565cd0;  1 drivers
v0x1443ad0_0 .net "carryin", 0 0, L_0x1565aa0;  1 drivers
v0x1443b70_0 .net "carryout", 0 0, L_0x14627a0;  1 drivers
v0x1453a40_0 .net "modB", 0 0, L_0x155a2b0;  1 drivers
v0x1453ae0_0 .net "out", 0 0, L_0x15663f0;  1 drivers
L_0x1565850 .part v0x1499720_0, 0, 1;
LS_0x1566700_0_0 .concat8 [ 1 1 1 1], L_0x1566550, L_0x15665e0, L_0x15660e0, L_0x7fa42efdf528;
LS_0x1566700_0_4 .concat8 [ 1 1 1 1], L_0x14c3180, L_0x1566260, L_0x15662d0, L_0x1566360;
L_0x1566700 .concat8 [ 4 4 0 0], LS_0x1566700_0_0, LS_0x1566700_0_4;
S_0x144d120 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1565bd0 .functor XOR 1, L_0x1566a20, L_0x155a2b0, C4<0>, C4<0>;
L_0x1565cd0 .functor XOR 1, L_0x1565bd0, L_0x1565aa0, C4<0>, C4<0>;
L_0x1565de0 .functor AND 1, L_0x1565bd0, L_0x1565aa0, C4<1>, C4<1>;
L_0x1565e50 .functor AND 1, L_0x1566a20, L_0x155a2b0, C4<1>, C4<1>;
L_0x14627a0 .functor OR 1, L_0x1565de0, L_0x1565e50, C4<0>, C4<0>;
v0x14b6710_0 .net "A", 0 0, L_0x1566a20;  alias, 1 drivers
v0x14b67f0_0 .net "B", 0 0, L_0x155a2b0;  alias, 1 drivers
v0x14b2120_0 .net "carryin", 0 0, L_0x1565aa0;  alias, 1 drivers
v0x14b21e0_0 .net "carryout", 0 0, L_0x14627a0;  alias, 1 drivers
v0x14adb30_0 .net "out1", 0 0, L_0x1565bd0;  1 drivers
v0x14adc40_0 .net "out2", 0 0, L_0x1565de0;  1 drivers
v0x1497b10_0 .net "out3", 0 0, L_0x1565e50;  1 drivers
v0x1497bd0_0 .net "sum", 0 0, L_0x1565cd0;  alias, 1 drivers
S_0x1493520 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14c3180 .functor AND 1, L_0x1566a20, L_0x1566ac0, C4<1>, C4<1>;
v0x148ef80_0 .net "A", 0 0, L_0x1566a20;  alias, 1 drivers
v0x148f020_0 .net "B", 0 0, L_0x1566ac0;  alias, 1 drivers
v0x1478580_0 .net "out", 0 0, L_0x14c3180;  1 drivers
S_0x1474930 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1470340_0 .net "I", 7 0, L_0x1566700;  alias, 1 drivers
v0x1470440_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x146bd50_0 .net "out", 0 0, L_0x15663f0;  alias, 1 drivers
L_0x15663f0 .part/v L_0x1566700, v0x1499720_0, 1;
S_0x1426bc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1566260 .functor NAND 1, L_0x1566a20, L_0x1566ac0, C4<1>, C4<1>;
v0x141b280_0 .net "A", 0 0, L_0x1566a20;  alias, 1 drivers
v0x141ad40_0 .net "B", 0 0, L_0x1566ac0;  alias, 1 drivers
v0x141ae00_0 .net "out", 0 0, L_0x1566260;  1 drivers
S_0x14c72c0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15662d0 .functor NOR 1, L_0x1566a20, L_0x1566ac0, C4<0>, C4<0>;
v0x14a95b0_0 .net "A", 0 0, L_0x1566a20;  alias, 1 drivers
v0x143ee70_0 .net "B", 0 0, L_0x1566ac0;  alias, 1 drivers
v0x143ef80_0 .net "out", 0 0, L_0x15662d0;  1 drivers
S_0x1466d40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1566360 .functor OR 1, L_0x1566a20, L_0x1566ac0, C4<0>, C4<0>;
v0x1462700_0 .net "A", 0 0, L_0x1566a20;  alias, 1 drivers
v0x145e020_0 .net "B", 0 0, L_0x1566ac0;  alias, 1 drivers
v0x145e0c0_0 .net "out", 0 0, L_0x1566360;  1 drivers
S_0x14c6de0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155a2b0 .functor XOR 1, L_0x1566ac0, L_0x1565850, C4<0>, C4<0>;
v0x14c30c0_0 .net "A", 0 0, L_0x1566ac0;  alias, 1 drivers
v0x14be9e0_0 .net "B", 0 0, L_0x1565850;  1 drivers
v0x14beaa0_0 .net "out", 0 0, L_0x155a2b0;  alias, 1 drivers
S_0x14ba340 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1455d00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15660e0 .functor XOR 1, L_0x1566a20, L_0x1566ac0, C4<0>, C4<0>;
v0x14a8ba0_0 .net "A", 0 0, L_0x1566a20;  alias, 1 drivers
v0x14a8c60_0 .net "B", 0 0, L_0x1566ac0;  alias, 1 drivers
v0x14a44c0_0 .net "out", 0 0, L_0x15660e0;  1 drivers
S_0x144f450 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1567790 .functor BUFZ 1, L_0x1566ef0, C4<0>, C4<0>, C4<0>;
L_0x1567820 .functor BUFZ 1, L_0x1566ef0, C4<0>, C4<0>, C4<0>;
v0x1420ed0_0 .net "A", 0 0, L_0x1567c60;  1 drivers
v0x14208d0_0 .net "B", 0 0, L_0x1566b60;  1 drivers
v0x1420990_0 .net "I", 7 0, L_0x1567940;  1 drivers
v0x1420400_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14204a0_0 .net *"_s15", 0 0, L_0x1567790;  1 drivers
v0x141ff30_0 .net *"_s19", 0 0, L_0x1567820;  1 drivers
L_0x7fa42efdf570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x141fff0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf570;  1 drivers
v0x141fa60_0 .net "addORsub", 0 0, L_0x1566ef0;  1 drivers
v0x141fb00_0 .net "carryin", 0 0, L_0x1566c00;  1 drivers
v0x141f590_0 .net "carryout", 0 0, L_0x141b790;  1 drivers
v0x141f660_0 .net "modB", 0 0, L_0x1566ca0;  1 drivers
v0x141f0c0_0 .net "out", 0 0, L_0x1567630;  1 drivers
L_0x1566d10 .part v0x1499720_0, 0, 1;
LS_0x1567940_0_0 .concat8 [ 1 1 1 1], L_0x1567790, L_0x1567820, L_0x1567320, L_0x7fa42efdf570;
LS_0x1567940_0_4 .concat8 [ 1 1 1 1], L_0x1421c10, L_0x15674a0, L_0x1567510, L_0x15675a0;
L_0x1567940 .concat8 [ 4 4 0 0], LS_0x1567940_0_0, LS_0x1567940_0_4;
S_0x14b8a40 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1566dd0 .functor XOR 1, L_0x1567c60, L_0x1566ca0, C4<0>, C4<0>;
L_0x1566ef0 .functor XOR 1, L_0x1566dd0, L_0x1566c00, C4<0>, C4<0>;
L_0x1567020 .functor AND 1, L_0x1566dd0, L_0x1566c00, C4<1>, C4<1>;
L_0x15670b0 .functor AND 1, L_0x1567c60, L_0x1566ca0, C4<1>, C4<1>;
L_0x141b790 .functor OR 1, L_0x1567020, L_0x15670b0, C4<0>, C4<0>;
v0x14b44d0_0 .net "A", 0 0, L_0x1567c60;  alias, 1 drivers
v0x14afe60_0 .net "B", 0 0, L_0x1566ca0;  alias, 1 drivers
v0x14aff20_0 .net "carryin", 0 0, L_0x1566c00;  alias, 1 drivers
v0x14ab870_0 .net "carryout", 0 0, L_0x141b790;  alias, 1 drivers
v0x14ab930_0 .net "out1", 0 0, L_0x1566dd0;  1 drivers
v0x1495850_0 .net "out2", 0 0, L_0x1567020;  1 drivers
v0x14958f0_0 .net "out3", 0 0, L_0x15670b0;  1 drivers
v0x1491260_0 .net "sum", 0 0, L_0x1566ef0;  alias, 1 drivers
S_0x148cc70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1421c10 .functor AND 1, L_0x1567c60, L_0x1566b60, C4<1>, C4<1>;
v0x1476c60_0 .net "A", 0 0, L_0x1567c60;  alias, 1 drivers
v0x1476d00_0 .net "B", 0 0, L_0x1566b60;  alias, 1 drivers
v0x1472670_0 .net "out", 0 0, L_0x1421c10;  1 drivers
S_0x146e080 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14699f0_0 .net "I", 7 0, L_0x1567940;  alias, 1 drivers
v0x1469ad0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1436c40_0 .net "out", 0 0, L_0x1567630;  alias, 1 drivers
L_0x1567630 .part/v L_0x1567940, v0x1499720_0, 1;
S_0x1424290 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15674a0 .functor NAND 1, L_0x1567c60, L_0x1566b60, C4<1>, C4<1>;
v0x1436d70_0 .net "A", 0 0, L_0x1567c60;  alias, 1 drivers
v0x1423dc0_0 .net "B", 0 0, L_0x1566b60;  alias, 1 drivers
v0x1423e80_0 .net "out", 0 0, L_0x15674a0;  1 drivers
S_0x14238f0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1567510 .functor NOR 1, L_0x1567c60, L_0x1566b60, C4<0>, C4<0>;
v0x14234c0_0 .net "A", 0 0, L_0x1567c60;  alias, 1 drivers
v0x1422f50_0 .net "B", 0 0, L_0x1566b60;  alias, 1 drivers
v0x1423060_0 .net "out", 0 0, L_0x1567510;  1 drivers
S_0x1422a80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15675a0 .functor OR 1, L_0x1567c60, L_0x1566b60, C4<0>, C4<0>;
v0x141b6f0_0 .net "A", 0 0, L_0x1567c60;  alias, 1 drivers
v0x141b820_0 .net "B", 0 0, L_0x1566b60;  alias, 1 drivers
v0x14225b0_0 .net "out", 0 0, L_0x15675a0;  1 drivers
S_0x14220e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1566ca0 .functor XOR 1, L_0x1566b60, L_0x1566d10, C4<0>, C4<0>;
v0x14226e0_0 .net "A", 0 0, L_0x1566b60;  alias, 1 drivers
v0x1421ca0_0 .net "B", 0 0, L_0x1566d10;  1 drivers
v0x1421d40_0 .net "out", 0 0, L_0x1566ca0;  alias, 1 drivers
S_0x1421780 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x144f450;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1567320 .functor XOR 1, L_0x1567c60, L_0x1566b60, C4<0>, C4<0>;
v0x14212c0_0 .net "A", 0 0, L_0x1567c60;  alias, 1 drivers
v0x1421380_0 .net "B", 0 0, L_0x1566b60;  alias, 1 drivers
v0x1420da0_0 .net "out", 0 0, L_0x1567320;  1 drivers
S_0x141ebf0 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1568ad0 .functor BUFZ 1, L_0x1568250, C4<0>, C4<0>, C4<0>;
L_0x1568b60 .functor BUFZ 1, L_0x1568250, C4<0>, C4<0>, C4<0>;
v0x145bf10_0 .net "A", 0 0, L_0x1568fa0;  1 drivers
v0x1441840_0 .net "B", 0 0, L_0x1569040;  1 drivers
v0x1441900_0 .net "I", 7 0, L_0x1568c80;  1 drivers
v0x14c1620_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14c16c0_0 .net *"_s15", 0 0, L_0x1568ad0;  1 drivers
v0x14c1220_0 .net *"_s19", 0 0, L_0x1568b60;  1 drivers
L_0x7fa42efdf5b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14c1300_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf5b8;  1 drivers
v0x14c0e30_0 .net "addORsub", 0 0, L_0x1568250;  1 drivers
v0x14c0ed0_0 .net "carryin", 0 0, L_0x1568060;  1 drivers
v0x14bcf90_0 .net "carryout", 0 0, L_0x1464bc0;  1 drivers
v0x14bd060_0 .net "modB", 0 0, L_0x155ec20;  1 drivers
v0x14bcb90_0 .net "out", 0 0, L_0x1568970;  1 drivers
L_0x1567d00 .part v0x1499720_0, 0, 1;
LS_0x1568c80_0_0 .concat8 [ 1 1 1 1], L_0x1568ad0, L_0x1568b60, L_0x1568660, L_0x7fa42efdf5b8;
LS_0x1568c80_0_4 .concat8 [ 1 1 1 1], L_0x1460530, L_0x15687e0, L_0x1568850, L_0x15688e0;
L_0x1568c80 .concat8 [ 4 4 0 0], LS_0x1568c80_0_0, LS_0x1568c80_0_4;
S_0x141e720 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1567da0 .functor XOR 1, L_0x1568fa0, L_0x155ec20, C4<0>, C4<0>;
L_0x1568250 .functor XOR 1, L_0x1567da0, L_0x1568060, C4<0>, C4<0>;
L_0x1568360 .functor AND 1, L_0x1567da0, L_0x1568060, C4<1>, C4<1>;
L_0x15683f0 .functor AND 1, L_0x1568fa0, L_0x155ec20, C4<1>, C4<1>;
L_0x1464bc0 .functor OR 1, L_0x1568360, L_0x15683f0, C4<0>, C4<0>;
v0x141e2d0_0 .net "A", 0 0, L_0x1568fa0;  alias, 1 drivers
v0x141dd80_0 .net "B", 0 0, L_0x155ec20;  alias, 1 drivers
v0x141de40_0 .net "carryin", 0 0, L_0x1568060;  alias, 1 drivers
v0x141d8b0_0 .net "carryout", 0 0, L_0x1464bc0;  alias, 1 drivers
v0x141d970_0 .net "out1", 0 0, L_0x1567da0;  1 drivers
v0x141d3e0_0 .net "out2", 0 0, L_0x1568360;  1 drivers
v0x141d4a0_0 .net "out3", 0 0, L_0x15683f0;  1 drivers
v0x141cf10_0 .net "sum", 0 0, L_0x1568250;  alias, 1 drivers
S_0x141ca40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1460530 .functor AND 1, L_0x1568fa0, L_0x1569040, C4<1>, C4<1>;
v0x141c560_0 .net "A", 0 0, L_0x1568fa0;  alias, 1 drivers
v0x141c600_0 .net "B", 0 0, L_0x1569040;  alias, 1 drivers
v0x141c090_0 .net "out", 0 0, L_0x1460530;  1 drivers
S_0x141bbb0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x141c1b0_0 .net "I", 7 0, L_0x1568c80;  alias, 1 drivers
v0x1424ea0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1424f40_0 .net "out", 0 0, L_0x1568970;  alias, 1 drivers
L_0x1568970 .part/v L_0x1568c80, v0x1499720_0, 1;
S_0x1402950 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15687e0 .functor NAND 1, L_0x1568fa0, L_0x1569040, C4<1>, C4<1>;
v0x1402240_0 .net "A", 0 0, L_0x1568fa0;  alias, 1 drivers
v0x1402330_0 .net "B", 0 0, L_0x1569040;  alias, 1 drivers
v0x1403090_0 .net "out", 0 0, L_0x15687e0;  1 drivers
S_0x1366970 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1568850 .functor NOR 1, L_0x1568fa0, L_0x1569040, C4<0>, C4<0>;
v0x1442080_0 .net "A", 0 0, L_0x1568fa0;  alias, 1 drivers
v0x1442140_0 .net "B", 0 0, L_0x1569040;  alias, 1 drivers
v0x14652f0_0 .net "out", 0 0, L_0x1568850;  1 drivers
S_0x1464ef0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15688e0 .functor OR 1, L_0x1568fa0, L_0x1569040, C4<0>, C4<0>;
v0x1464b00_0 .net "A", 0 0, L_0x1568fa0;  alias, 1 drivers
v0x1460c60_0 .net "B", 0 0, L_0x1569040;  alias, 1 drivers
v0x1460d20_0 .net "out", 0 0, L_0x15688e0;  1 drivers
S_0x1460860 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155ec20 .functor XOR 1, L_0x1569040, L_0x1567d00, C4<0>, C4<0>;
v0x1460470_0 .net "A", 0 0, L_0x1569040;  alias, 1 drivers
v0x1441c60_0 .net "B", 0 0, L_0x1567d00;  1 drivers
v0x1441d20_0 .net "out", 0 0, L_0x155ec20;  alias, 1 drivers
S_0x145c5d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x141ebf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1568660 .functor XOR 1, L_0x1568fa0, L_0x1569040, C4<0>, C4<0>;
v0x145c1d0_0 .net "A", 0 0, L_0x1568fa0;  alias, 1 drivers
v0x145c290_0 .net "B", 0 0, L_0x1569040;  alias, 1 drivers
v0x145bde0_0 .net "out", 0 0, L_0x1568660;  1 drivers
S_0x14bc7a0 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1569d20 .functor BUFZ 1, L_0x1569480, C4<0>, C4<0>, C4<0>;
L_0x1569db0 .functor BUFZ 1, L_0x1569480, C4<0>, C4<0>, C4<0>;
v0x1465a70_0 .net "A", 0 0, L_0x156a1f0;  1 drivers
v0x14612b0_0 .net "B", 0 0, L_0x15690e0;  1 drivers
v0x1461370_0 .net "I", 7 0, L_0x1569ed0;  1 drivers
v0x145cc20_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14c8140_0 .net *"_s15", 0 0, L_0x1569d20;  1 drivers
v0x149b2b0_0 .net *"_s19", 0 0, L_0x1569db0;  1 drivers
L_0x7fa42efdf600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x145ccc0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf600;  1 drivers
v0x1458580_0 .net "addORsub", 0 0, L_0x1569480;  1 drivers
v0x1458620_0 .net "carryin", 0 0, L_0x1569180;  1 drivers
v0x14c1c70_0 .net "carryout", 0 0, L_0x1445fd0;  1 drivers
v0x14c1d40_0 .net "modB", 0 0, L_0x1569250;  1 drivers
v0x14bd5e0_0 .net "out", 0 0, L_0x1569bc0;  1 drivers
L_0x15692c0 .part v0x1499720_0, 0, 1;
LS_0x1569ed0_0_0 .concat8 [ 1 1 1 1], L_0x1569d20, L_0x1569db0, L_0x15698b0, L_0x7fa42efdf600;
LS_0x1569ed0_0_4 .concat8 [ 1 1 1 1], L_0x147f0e0, L_0x1569a30, L_0x1569aa0, L_0x1569b30;
L_0x1569ed0 .concat8 [ 4 4 0 0], LS_0x1569ed0_0_0, LS_0x1569ed0_0_4;
S_0x14a7100 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1569360 .functor XOR 1, L_0x156a1f0, L_0x1569250, C4<0>, C4<0>;
L_0x1569480 .functor XOR 1, L_0x1569360, L_0x1569180, C4<0>, C4<0>;
L_0x15695b0 .functor AND 1, L_0x1569360, L_0x1569180, C4<1>, C4<1>;
L_0x1569640 .functor AND 1, L_0x156a1f0, L_0x1569250, C4<1>, C4<1>;
L_0x1445fd0 .functor OR 1, L_0x15695b0, L_0x1569640, C4<0>, C4<0>;
v0x14a6d00_0 .net "A", 0 0, L_0x156a1f0;  alias, 1 drivers
v0x14a6de0_0 .net "B", 0 0, L_0x1569250;  alias, 1 drivers
v0x14a6910_0 .net "carryin", 0 0, L_0x1569180;  alias, 1 drivers
v0x14a69b0_0 .net "carryout", 0 0, L_0x1445fd0;  alias, 1 drivers
v0x14a2a70_0 .net "out1", 0 0, L_0x1569360;  1 drivers
v0x14a2b80_0 .net "out2", 0 0, L_0x15695b0;  1 drivers
v0x14a2670_0 .net "out3", 0 0, L_0x1569640;  1 drivers
v0x14a2730_0 .net "sum", 0 0, L_0x1569480;  alias, 1 drivers
S_0x14a2280 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x147f0e0 .functor AND 1, L_0x156a1f0, L_0x15690e0, C4<1>, C4<1>;
v0x149e3e0_0 .net "A", 0 0, L_0x156a1f0;  alias, 1 drivers
v0x149e4d0_0 .net "B", 0 0, L_0x15690e0;  alias, 1 drivers
v0x149dfe0_0 .net "out", 0 0, L_0x147f0e0;  1 drivers
S_0x149dbf0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1446720_0 .net "I", 7 0, L_0x1569ed0;  alias, 1 drivers
v0x1446800_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1446320_0 .net "out", 0 0, L_0x1569bc0;  alias, 1 drivers
L_0x1569bc0 .part/v L_0x1569ed0, v0x1499720_0, 1;
S_0x1488530 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1569a30 .functor NAND 1, L_0x156a1f0, L_0x15690e0, C4<1>, C4<1>;
v0x1446440_0 .net "A", 0 0, L_0x156a1f0;  alias, 1 drivers
v0x1488130_0 .net "B", 0 0, L_0x15690e0;  alias, 1 drivers
v0x14881f0_0 .net "out", 0 0, L_0x1569a30;  1 drivers
S_0x1487d40 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1569aa0 .functor NOR 1, L_0x156a1f0, L_0x15690e0, C4<0>, C4<0>;
v0x1483f40_0 .net "A", 0 0, L_0x156a1f0;  alias, 1 drivers
v0x1483aa0_0 .net "B", 0 0, L_0x15690e0;  alias, 1 drivers
v0x1483bb0_0 .net "out", 0 0, L_0x1569aa0;  1 drivers
S_0x14836b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1569b30 .functor OR 1, L_0x156a1f0, L_0x15690e0, C4<0>, C4<0>;
v0x1445f30_0 .net "A", 0 0, L_0x156a1f0;  alias, 1 drivers
v0x1446060_0 .net "B", 0 0, L_0x15690e0;  alias, 1 drivers
v0x147f830_0 .net "out", 0 0, L_0x1569b30;  1 drivers
S_0x147f410 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1569250 .functor XOR 1, L_0x15690e0, L_0x15692c0, C4<0>, C4<0>;
v0x147f020_0 .net "A", 0 0, L_0x15690e0;  alias, 1 drivers
v0x147b180_0 .net "B", 0 0, L_0x15692c0;  1 drivers
v0x147b240_0 .net "out", 0 0, L_0x1569250;  alias, 1 drivers
S_0x147ad80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14bc7a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15698b0 .functor XOR 1, L_0x156a1f0, L_0x15690e0, C4<0>, C4<0>;
v0x147a990_0 .net "A", 0 0, L_0x156a1f0;  alias, 1 drivers
v0x147aa50_0 .net "B", 0 0, L_0x15690e0;  alias, 1 drivers
v0x1465940_0 .net "out", 0 0, L_0x15698b0;  1 drivers
S_0x14a7750 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x156af60 .functor BUFZ 1, L_0x156a6c0, C4<0>, C4<0>, C4<0>;
L_0x156aff0 .functor BUFZ 1, L_0x156a6c0, C4<0>, C4<0>, C4<0>;
v0x12f8a00_0 .net "A", 0 0, L_0x156b430;  1 drivers
v0x12f8aa0_0 .net "B", 0 0, L_0x156b4d0;  1 drivers
v0x12f8b60_0 .net "I", 7 0, L_0x156b110;  1 drivers
v0x12fb0c0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x12fb160_0 .net *"_s15", 0 0, L_0x156af60;  1 drivers
v0x12fb270_0 .net *"_s19", 0 0, L_0x156aff0;  1 drivers
L_0x7fa42efdf648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x12fb350_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf648;  1 drivers
v0x12fb430_0 .net "addORsub", 0 0, L_0x156a6c0;  1 drivers
v0x12fbe50_0 .net "carryin", 0 0, L_0x156a4a0;  1 drivers
v0x12fbf20_0 .net "carryout", 0 0, L_0x12f7e20;  1 drivers
v0x12fbff0_0 .net "modB", 0 0, L_0x156a290;  1 drivers
v0x12fc090_0 .net "out", 0 0, L_0x156ae00;  1 drivers
L_0x156a300 .part v0x1499720_0, 0, 1;
LS_0x156b110_0_0 .concat8 [ 1 1 1 1], L_0x156af60, L_0x156aff0, L_0x156aaf0, L_0x7fa42efdf648;
LS_0x156b110_0_4 .concat8 [ 1 1 1 1], L_0x12f9860, L_0x156ac70, L_0x156ace0, L_0x156ad70;
L_0x156b110 .concat8 [ 4 4 0 0], LS_0x156b110_0_0, LS_0x156b110_0_4;
S_0x149ea30 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x156a3a0 .functor XOR 1, L_0x156b430, L_0x156a290, C4<0>, C4<0>;
L_0x156a6c0 .functor XOR 1, L_0x156a3a0, L_0x156a4a0, C4<0>, C4<0>;
L_0x156a7f0 .functor AND 1, L_0x156a3a0, L_0x156a4a0, C4<1>, C4<1>;
L_0x156a880 .functor AND 1, L_0x156b430, L_0x156a290, C4<1>, C4<1>;
L_0x12f7e20 .functor OR 1, L_0x156a7f0, L_0x156a880, C4<0>, C4<0>;
v0x14a3160_0 .net "A", 0 0, L_0x156b430;  alias, 1 drivers
v0x149a390_0 .net "B", 0 0, L_0x156a290;  alias, 1 drivers
v0x149a450_0 .net "carryin", 0 0, L_0x156a4a0;  alias, 1 drivers
v0x1446d70_0 .net "carryout", 0 0, L_0x12f7e20;  alias, 1 drivers
v0x1446e30_0 .net "out1", 0 0, L_0x156a3a0;  1 drivers
v0x1488b80_0 .net "out2", 0 0, L_0x156a7f0;  1 drivers
v0x1488c40_0 .net "out3", 0 0, L_0x156a880;  1 drivers
v0x14844f0_0 .net "sum", 0 0, L_0x156a6c0;  alias, 1 drivers
S_0x147fe60 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12f9860 .functor AND 1, L_0x156b430, L_0x156b4d0, C4<1>, C4<1>;
v0x147b7d0_0 .net "A", 0 0, L_0x156b430;  alias, 1 drivers
v0x147b890_0 .net "B", 0 0, L_0x156b4d0;  alias, 1 drivers
v0x14426d0_0 .net "out", 0 0, L_0x12f9860;  1 drivers
S_0x14c5790 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14c5940_0 .net "I", 7 0, L_0x156b110;  alias, 1 drivers
v0x14c5a20_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14427f0_0 .net "out", 0 0, L_0x156ae00;  alias, 1 drivers
L_0x156ae00 .part/v L_0x156b110, v0x1499720_0, 1;
S_0x14c89d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156ac70 .functor NAND 1, L_0x156b430, L_0x156b4d0, C4<1>, C4<1>;
v0x14c8ba0_0 .net "A", 0 0, L_0x156b430;  alias, 1 drivers
v0x12dca40_0 .net "B", 0 0, L_0x156b4d0;  alias, 1 drivers
v0x12dcb00_0 .net "out", 0 0, L_0x156ac70;  1 drivers
S_0x12dcbe0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156ace0 .functor NOR 1, L_0x156b430, L_0x156b4d0, C4<0>, C4<0>;
v0x12d8480_0 .net "A", 0 0, L_0x156b430;  alias, 1 drivers
v0x12d8540_0 .net "B", 0 0, L_0x156b4d0;  alias, 1 drivers
v0x12d8650_0 .net "out", 0 0, L_0x156ace0;  1 drivers
S_0x12f7b40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156ad70 .functor OR 1, L_0x156b430, L_0x156b4d0, C4<0>, C4<0>;
v0x12f7d60_0 .net "A", 0 0, L_0x156b430;  alias, 1 drivers
v0x12f7eb0_0 .net "B", 0 0, L_0x156b4d0;  alias, 1 drivers
v0x12d8750_0 .net "out", 0 0, L_0x156ad70;  1 drivers
S_0x12f9620 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156a290 .functor XOR 1, L_0x156b4d0, L_0x156a300, C4<0>, C4<0>;
v0x12f97a0_0 .net "A", 0 0, L_0x156b4d0;  alias, 1 drivers
v0x12f98f0_0 .net "B", 0 0, L_0x156a300;  1 drivers
v0x12fa370_0 .net "out", 0 0, L_0x156a290;  alias, 1 drivers
S_0x12fa4b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14a7750;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156aaf0 .functor XOR 1, L_0x156b430, L_0x156b4d0, C4<0>, C4<0>;
v0x12fa630_0 .net "A", 0 0, L_0x156b430;  alias, 1 drivers
v0x12fa6f0_0 .net "B", 0 0, L_0x156b4d0;  alias, 1 drivers
v0x12f88d0_0 .net "out", 0 0, L_0x156aaf0;  1 drivers
S_0x12fdea0 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x156c280 .functor BUFZ 1, L_0x156ba20, C4<0>, C4<0>, C4<0>;
L_0x156c310 .functor BUFZ 1, L_0x156ba20, C4<0>, C4<0>, C4<0>;
v0x1300450_0 .net "A", 0 0, L_0x156c750;  1 drivers
v0x13004f0_0 .net "B", 0 0, L_0x156b570;  1 drivers
v0x13005b0_0 .net "I", 7 0, L_0x156c430;  1 drivers
v0x13006b0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1300750_0 .net *"_s15", 0 0, L_0x156c280;  1 drivers
v0x1264d40_0 .net *"_s19", 0 0, L_0x156c310;  1 drivers
L_0x7fa42efdf690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1264e20_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf690;  1 drivers
v0x1264f00_0 .net "addORsub", 0 0, L_0x156ba20;  1 drivers
v0x1264fa0_0 .net "carryin", 0 0, L_0x156b610;  1 drivers
v0x12c4710_0 .net "carryout", 0 0, L_0x12b8980;  1 drivers
v0x12c47e0_0 .net "modB", 0 0, L_0x15621e0;  1 drivers
v0x12c4880_0 .net "out", 0 0, L_0x156c120;  1 drivers
L_0x1562250 .part v0x1499720_0, 0, 1;
LS_0x156c430_0_0 .concat8 [ 1 1 1 1], L_0x156c280, L_0x156c310, L_0x156be10, L_0x7fa42efdf690;
LS_0x156c430_0_4 .concat8 [ 1 1 1 1], L_0x12d6420, L_0x156bf90, L_0x156c000, L_0x156c090;
L_0x156c430 .concat8 [ 4 4 0 0], LS_0x156c430_0_0, LS_0x156c430_0_4;
S_0x12fe110 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x156b920 .functor XOR 1, L_0x156c750, L_0x15621e0, C4<0>, C4<0>;
L_0x156ba20 .functor XOR 1, L_0x156b920, L_0x156b610, C4<0>, C4<0>;
L_0x156bb30 .functor AND 1, L_0x156b920, L_0x156b610, C4<1>, C4<1>;
L_0x156bba0 .functor AND 1, L_0x156c750, L_0x15621e0, C4<1>, C4<1>;
L_0x12b8980 .functor OR 1, L_0x156bb30, L_0x156bba0, C4<0>, C4<0>;
v0x12fc190_0 .net "A", 0 0, L_0x156c750;  alias, 1 drivers
v0x130e0c0_0 .net "B", 0 0, L_0x15621e0;  alias, 1 drivers
v0x130e180_0 .net "carryin", 0 0, L_0x156b610;  alias, 1 drivers
v0x130e250_0 .net "carryout", 0 0, L_0x12b8980;  alias, 1 drivers
v0x130e310_0 .net "out1", 0 0, L_0x156b920;  1 drivers
v0x130e420_0 .net "out2", 0 0, L_0x156bb30;  1 drivers
v0x12b65a0_0 .net "out3", 0 0, L_0x156bba0;  1 drivers
v0x12b6660_0 .net "sum", 0 0, L_0x156ba20;  alias, 1 drivers
S_0x12b67c0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x12d6420 .functor AND 1, L_0x156c750, L_0x156b570, C4<1>, C4<1>;
v0x129ef20_0 .net "A", 0 0, L_0x156c750;  alias, 1 drivers
v0x129efe0_0 .net "B", 0 0, L_0x156b570;  alias, 1 drivers
v0x129f080_0 .net "out", 0 0, L_0x12d6420;  1 drivers
S_0x12b2be0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12b2e30_0 .net "I", 7 0, L_0x156c430;  alias, 1 drivers
v0x12b2f30_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x129f1a0_0 .net "out", 0 0, L_0x156c120;  alias, 1 drivers
L_0x156c120 .part/v L_0x156c430, v0x1499720_0, 1;
S_0x12f69f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156bf90 .functor NAND 1, L_0x156c750, L_0x156b570, C4<1>, C4<1>;
v0x12f6c10_0 .net "A", 0 0, L_0x156c750;  alias, 1 drivers
v0x12f6d20_0 .net "B", 0 0, L_0x156b570;  alias, 1 drivers
v0x12d2860_0 .net "out", 0 0, L_0x156bf90;  1 drivers
S_0x12d2960 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156c000 .functor NOR 1, L_0x156c750, L_0x156b570, C4<0>, C4<0>;
v0x12d2bd0_0 .net "A", 0 0, L_0x156c750;  alias, 1 drivers
v0x12b7760_0 .net "B", 0 0, L_0x156b570;  alias, 1 drivers
v0x12b7870_0 .net "out", 0 0, L_0x156c000;  1 drivers
S_0x12b7970 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156c090 .functor OR 1, L_0x156c750, L_0x156b570, C4<0>, C4<0>;
v0x12b88e0_0 .net "A", 0 0, L_0x156c750;  alias, 1 drivers
v0x12b8a10_0 .net "B", 0 0, L_0x156b570;  alias, 1 drivers
v0x12b8ad0_0 .net "out", 0 0, L_0x156c090;  1 drivers
S_0x12d6190 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15621e0 .functor XOR 1, L_0x156b570, L_0x1562250, C4<0>, C4<0>;
v0x12d6360_0 .net "A", 0 0, L_0x156b570;  alias, 1 drivers
v0x12d64b0_0 .net "B", 0 0, L_0x1562250;  1 drivers
v0x12b8bd0_0 .net "out", 0 0, L_0x15621e0;  alias, 1 drivers
S_0x12d4060 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12fdea0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156be10 .functor XOR 1, L_0x156c750, L_0x156b570, C4<0>, C4<0>;
v0x12d4230_0 .net "A", 0 0, L_0x156c750;  alias, 1 drivers
v0x12d42f0_0 .net "B", 0 0, L_0x156b570;  alias, 1 drivers
v0x12d43b0_0 .net "out", 0 0, L_0x156be10;  1 drivers
S_0x12c4990 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x156d4c0 .functor BUFZ 1, L_0x156cc80, C4<0>, C4<0>, C4<0>;
L_0x156d550 .functor BUFZ 1, L_0x156cc80, C4<0>, C4<0>, C4<0>;
v0x14df8a0_0 .net "A", 0 0, L_0x156d990;  1 drivers
v0x14df940_0 .net "B", 0 0, L_0x156da30;  1 drivers
v0x14dfa00_0 .net "I", 7 0, L_0x156d670;  1 drivers
v0x14dfb00_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14dfba0_0 .net *"_s15", 0 0, L_0x156d4c0;  1 drivers
v0x14dfcb0_0 .net *"_s19", 0 0, L_0x156d550;  1 drivers
L_0x7fa42efdf6d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14dfd90_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf6d8;  1 drivers
v0x14dfe70_0 .net "addORsub", 0 0, L_0x156cc80;  1 drivers
v0x14dff10_0 .net "carryin", 0 0, L_0x156ca30;  1 drivers
v0x14e0070_0 .net "carryout", 0 0, L_0x14decb0;  1 drivers
v0x14e0140_0 .net "modB", 0 0, L_0x156c7f0;  1 drivers
v0x14e01e0_0 .net "out", 0 0, L_0x156d360;  1 drivers
L_0x156c860 .part v0x1499720_0, 0, 1;
LS_0x156d670_0_0 .concat8 [ 1 1 1 1], L_0x156d4c0, L_0x156d550, L_0x156d070, L_0x7fa42efdf6d8;
LS_0x156d670_0_4 .concat8 [ 1 1 1 1], L_0x14df190, L_0x156d1f0, L_0x156d260, L_0x156d2d0;
L_0x156d670 .concat8 [ 4 4 0 0], LS_0x156d670_0_0, LS_0x156d670_0_4;
S_0x12ce2e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x156c900 .functor XOR 1, L_0x156d990, L_0x156c7f0, C4<0>, C4<0>;
L_0x156cc80 .functor XOR 1, L_0x156c900, L_0x156ca30, C4<0>, C4<0>;
L_0x156cd90 .functor AND 1, L_0x156c900, L_0x156ca30, C4<1>, C4<1>;
L_0x156ce00 .functor AND 1, L_0x156d990, L_0x156c7f0, C4<1>, C4<1>;
L_0x14decb0 .functor OR 1, L_0x156cd90, L_0x156ce00, C4<0>, C4<0>;
v0x12ce560_0 .net "A", 0 0, L_0x156d990;  alias, 1 drivers
v0x12cf700_0 .net "B", 0 0, L_0x156c7f0;  alias, 1 drivers
v0x12cf7c0_0 .net "carryin", 0 0, L_0x156ca30;  alias, 1 drivers
v0x12cf890_0 .net "carryout", 0 0, L_0x14decb0;  alias, 1 drivers
v0x12cf950_0 .net "out1", 0 0, L_0x156c900;  1 drivers
v0x12d0ee0_0 .net "out2", 0 0, L_0x156cd90;  1 drivers
v0x12d0fa0_0 .net "out3", 0 0, L_0x156ce00;  1 drivers
v0x12d1060_0 .net "sum", 0 0, L_0x156cc80;  alias, 1 drivers
S_0x1304690 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14df190 .functor AND 1, L_0x156d990, L_0x156da30, C4<1>, C4<1>;
v0x13048d0_0 .net "A", 0 0, L_0x156d990;  alias, 1 drivers
v0x1304990_0 .net "B", 0 0, L_0x156da30;  alias, 1 drivers
v0x12d11c0_0 .net "out", 0 0, L_0x14df190;  1 drivers
S_0x12e07a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x12e09f0_0 .net "I", 7 0, L_0x156d670;  alias, 1 drivers
v0x12e0ad0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14ddf40_0 .net "out", 0 0, L_0x156d360;  alias, 1 drivers
L_0x156d360 .part/v L_0x156d670, v0x1499720_0, 1;
S_0x14ddfe0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156d1f0 .functor NAND 1, L_0x156d990, L_0x156da30, C4<1>, C4<1>;
v0x14de1b0_0 .net "A", 0 0, L_0x156d990;  alias, 1 drivers
v0x14de2c0_0 .net "B", 0 0, L_0x156da30;  alias, 1 drivers
v0x14de380_0 .net "out", 0 0, L_0x156d1f0;  1 drivers
S_0x14de490 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156d260 .functor NOR 1, L_0x156d990, L_0x156da30, C4<0>, C4<0>;
v0x14de700_0 .net "A", 0 0, L_0x156d990;  alias, 1 drivers
v0x14de7c0_0 .net "B", 0 0, L_0x156da30;  alias, 1 drivers
v0x14de8d0_0 .net "out", 0 0, L_0x156d260;  1 drivers
S_0x14de9d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156d2d0 .functor OR 1, L_0x156d990, L_0x156da30, C4<0>, C4<0>;
v0x14debf0_0 .net "A", 0 0, L_0x156d990;  alias, 1 drivers
v0x14ded40_0 .net "B", 0 0, L_0x156da30;  alias, 1 drivers
v0x14dee00_0 .net "out", 0 0, L_0x156d2d0;  1 drivers
S_0x14def00 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156c7f0 .functor XOR 1, L_0x156da30, L_0x156c860, C4<0>, C4<0>;
v0x14df0d0_0 .net "A", 0 0, L_0x156da30;  alias, 1 drivers
v0x14df220_0 .net "B", 0 0, L_0x156c860;  1 drivers
v0x14df2e0_0 .net "out", 0 0, L_0x156c7f0;  alias, 1 drivers
S_0x14df420 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x12c4990;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156d070 .functor XOR 1, L_0x156d990, L_0x156da30, C4<0>, C4<0>;
v0x14df5f0_0 .net "A", 0 0, L_0x156d990;  alias, 1 drivers
v0x14df6b0_0 .net "B", 0 0, L_0x156da30;  alias, 1 drivers
v0x14df770_0 .net "out", 0 0, L_0x156d070;  1 drivers
S_0x14e02c0 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x156e6e0 .functor BUFZ 1, L_0x156de40, C4<0>, C4<0>, C4<0>;
L_0x156e770 .functor BUFZ 1, L_0x156de40, C4<0>, C4<0>, C4<0>;
v0x14e3230_0 .net "A", 0 0, L_0x156ebb0;  1 drivers
v0x14e32d0_0 .net "B", 0 0, L_0x156dad0;  1 drivers
v0x14e3390_0 .net "I", 7 0, L_0x156e890;  1 drivers
v0x14e3490_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14e3530_0 .net *"_s15", 0 0, L_0x156e6e0;  1 drivers
v0x14e3640_0 .net *"_s19", 0 0, L_0x156e770;  1 drivers
L_0x7fa42efdf720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14e3720_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf720;  1 drivers
v0x14e3800_0 .net "addORsub", 0 0, L_0x156de40;  1 drivers
v0x14e38a0_0 .net "carryin", 0 0, L_0x156db70;  1 drivers
v0x14e3a00_0 .net "carryout", 0 0, L_0x14e2640;  1 drivers
v0x14e3ad0_0 .net "modB", 0 0, L_0x156cb60;  1 drivers
v0x14e3b70_0 .net "out", 0 0, L_0x156e580;  1 drivers
L_0x156dca0 .part v0x1499720_0, 0, 1;
LS_0x156e890_0_0 .concat8 [ 1 1 1 1], L_0x156e6e0, L_0x156e770, L_0x156e270, L_0x7fa42efdf720;
LS_0x156e890_0_4 .concat8 [ 1 1 1 1], L_0x14e2b20, L_0x156e3f0, L_0x156e460, L_0x156e4f0;
L_0x156e890 .concat8 [ 4 4 0 0], LS_0x156e890_0_0, LS_0x156e890_0_4;
S_0x14e0530 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x156dd40 .functor XOR 1, L_0x156ebb0, L_0x156cb60, C4<0>, C4<0>;
L_0x156de40 .functor XOR 1, L_0x156dd40, L_0x156db70, C4<0>, C4<0>;
L_0x156df70 .functor AND 1, L_0x156dd40, L_0x156db70, C4<1>, C4<1>;
L_0x156e000 .functor AND 1, L_0x156ebb0, L_0x156cb60, C4<1>, C4<1>;
L_0x14e2640 .functor OR 1, L_0x156df70, L_0x156e000, C4<0>, C4<0>;
v0x14e07d0_0 .net "A", 0 0, L_0x156ebb0;  alias, 1 drivers
v0x14e08b0_0 .net "B", 0 0, L_0x156cb60;  alias, 1 drivers
v0x14e0970_0 .net "carryin", 0 0, L_0x156db70;  alias, 1 drivers
v0x14e0a40_0 .net "carryout", 0 0, L_0x14e2640;  alias, 1 drivers
v0x14e0b00_0 .net "out1", 0 0, L_0x156dd40;  1 drivers
v0x14e0c10_0 .net "out2", 0 0, L_0x156df70;  1 drivers
v0x14e0cd0_0 .net "out3", 0 0, L_0x156e000;  1 drivers
v0x14e0d90_0 .net "sum", 0 0, L_0x156de40;  alias, 1 drivers
S_0x14e0ef0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14e2b20 .functor AND 1, L_0x156ebb0, L_0x156dad0, C4<1>, C4<1>;
v0x14e1130_0 .net "A", 0 0, L_0x156ebb0;  alias, 1 drivers
v0x14e11f0_0 .net "B", 0 0, L_0x156dad0;  alias, 1 drivers
v0x14e1290_0 .net "out", 0 0, L_0x14e2b20;  1 drivers
S_0x14e13e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14e1630_0 .net "I", 7 0, L_0x156e890;  alias, 1 drivers
v0x14e1710_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14e17d0_0 .net "out", 0 0, L_0x156e580;  alias, 1 drivers
L_0x156e580 .part/v L_0x156e890, v0x1499720_0, 1;
S_0x14e1920 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156e3f0 .functor NAND 1, L_0x156ebb0, L_0x156dad0, C4<1>, C4<1>;
v0x14e1b40_0 .net "A", 0 0, L_0x156ebb0;  alias, 1 drivers
v0x14e1c50_0 .net "B", 0 0, L_0x156dad0;  alias, 1 drivers
v0x14e1d10_0 .net "out", 0 0, L_0x156e3f0;  1 drivers
S_0x14e1e20 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156e460 .functor NOR 1, L_0x156ebb0, L_0x156dad0, C4<0>, C4<0>;
v0x14e2090_0 .net "A", 0 0, L_0x156ebb0;  alias, 1 drivers
v0x14e2150_0 .net "B", 0 0, L_0x156dad0;  alias, 1 drivers
v0x14e2260_0 .net "out", 0 0, L_0x156e460;  1 drivers
S_0x14e2360 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156e4f0 .functor OR 1, L_0x156ebb0, L_0x156dad0, C4<0>, C4<0>;
v0x14e2580_0 .net "A", 0 0, L_0x156ebb0;  alias, 1 drivers
v0x14e26d0_0 .net "B", 0 0, L_0x156dad0;  alias, 1 drivers
v0x14e2790_0 .net "out", 0 0, L_0x156e4f0;  1 drivers
S_0x14e2890 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156cb60 .functor XOR 1, L_0x156dad0, L_0x156dca0, C4<0>, C4<0>;
v0x14e2a60_0 .net "A", 0 0, L_0x156dad0;  alias, 1 drivers
v0x14e2bb0_0 .net "B", 0 0, L_0x156dca0;  1 drivers
v0x14e2c70_0 .net "out", 0 0, L_0x156cb60;  alias, 1 drivers
S_0x14e2db0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14e02c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156e270 .functor XOR 1, L_0x156ebb0, L_0x156dad0, C4<0>, C4<0>;
v0x14e2f80_0 .net "A", 0 0, L_0x156ebb0;  alias, 1 drivers
v0x14e3040_0 .net "B", 0 0, L_0x156dad0;  alias, 1 drivers
v0x14e3100_0 .net "out", 0 0, L_0x156e270;  1 drivers
S_0x14e3c50 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x155af30 .functor BUFZ 1, L_0x155a700, C4<0>, C4<0>, C4<0>;
L_0x155afc0 .functor BUFZ 1, L_0x155a700, C4<0>, C4<0>, C4<0>;
v0x14e6bc0_0 .net "A", 0 0, L_0x155b490;  1 drivers
v0x14e6c60_0 .net "B", 0 0, L_0x155b530;  1 drivers
v0x14e6d20_0 .net "I", 7 0, L_0x155b0e0;  1 drivers
v0x14e6e20_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14e6ec0_0 .net *"_s15", 0 0, L_0x155af30;  1 drivers
v0x14e6fd0_0 .net *"_s19", 0 0, L_0x155afc0;  1 drivers
L_0x7fa42efdf258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14e70b0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf258;  1 drivers
v0x14e7190_0 .net "addORsub", 0 0, L_0x155a700;  1 drivers
v0x14e7230_0 .net "carryin", 0 0, L_0x155b5d0;  1 drivers
v0x14e7390_0 .net "carryout", 0 0, L_0x14e5fd0;  1 drivers
v0x14e7460_0 .net "modB", 0 0, L_0x155a4f0;  1 drivers
v0x14e7500_0 .net "out", 0 0, L_0x155add0;  1 drivers
L_0x155a560 .part v0x1499720_0, 0, 1;
LS_0x155b0e0_0_0 .concat8 [ 1 1 1 1], L_0x155af30, L_0x155afc0, L_0x155aac0, L_0x7fa42efdf258;
LS_0x155b0e0_0_4 .concat8 [ 1 1 1 1], L_0x14e64b0, L_0x155ac40, L_0x155acb0, L_0x155ad40;
L_0x155b0e0 .concat8 [ 4 4 0 0], LS_0x155b0e0_0_0, LS_0x155b0e0_0_4;
S_0x14e3ec0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x155a600 .functor XOR 1, L_0x155b490, L_0x155a4f0, C4<0>, C4<0>;
L_0x155a700 .functor XOR 1, L_0x155a600, L_0x155b5d0, C4<0>, C4<0>;
L_0x155a7c0 .functor AND 1, L_0x155a600, L_0x155b5d0, C4<1>, C4<1>;
L_0x155a850 .functor AND 1, L_0x155b490, L_0x155a4f0, C4<1>, C4<1>;
L_0x14e5fd0 .functor OR 1, L_0x155a7c0, L_0x155a850, C4<0>, C4<0>;
v0x14e4160_0 .net "A", 0 0, L_0x155b490;  alias, 1 drivers
v0x14e4240_0 .net "B", 0 0, L_0x155a4f0;  alias, 1 drivers
v0x14e4300_0 .net "carryin", 0 0, L_0x155b5d0;  alias, 1 drivers
v0x14e43d0_0 .net "carryout", 0 0, L_0x14e5fd0;  alias, 1 drivers
v0x14e4490_0 .net "out1", 0 0, L_0x155a600;  1 drivers
v0x14e45a0_0 .net "out2", 0 0, L_0x155a7c0;  1 drivers
v0x14e4660_0 .net "out3", 0 0, L_0x155a850;  1 drivers
v0x14e4720_0 .net "sum", 0 0, L_0x155a700;  alias, 1 drivers
S_0x14e4880 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14e64b0 .functor AND 1, L_0x155b490, L_0x155b530, C4<1>, C4<1>;
v0x14e4ac0_0 .net "A", 0 0, L_0x155b490;  alias, 1 drivers
v0x14e4b80_0 .net "B", 0 0, L_0x155b530;  alias, 1 drivers
v0x14e4c20_0 .net "out", 0 0, L_0x14e64b0;  1 drivers
S_0x14e4d70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14e4fc0_0 .net "I", 7 0, L_0x155b0e0;  alias, 1 drivers
v0x14e50a0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14e5160_0 .net "out", 0 0, L_0x155add0;  alias, 1 drivers
L_0x155add0 .part/v L_0x155b0e0, v0x1499720_0, 1;
S_0x14e52b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155ac40 .functor NAND 1, L_0x155b490, L_0x155b530, C4<1>, C4<1>;
v0x14e54d0_0 .net "A", 0 0, L_0x155b490;  alias, 1 drivers
v0x14e55e0_0 .net "B", 0 0, L_0x155b530;  alias, 1 drivers
v0x14e56a0_0 .net "out", 0 0, L_0x155ac40;  1 drivers
S_0x14e57b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155acb0 .functor NOR 1, L_0x155b490, L_0x155b530, C4<0>, C4<0>;
v0x14e5a20_0 .net "A", 0 0, L_0x155b490;  alias, 1 drivers
v0x14e5ae0_0 .net "B", 0 0, L_0x155b530;  alias, 1 drivers
v0x14e5bf0_0 .net "out", 0 0, L_0x155acb0;  1 drivers
S_0x14e5cf0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155ad40 .functor OR 1, L_0x155b490, L_0x155b530, C4<0>, C4<0>;
v0x14e5f10_0 .net "A", 0 0, L_0x155b490;  alias, 1 drivers
v0x14e6060_0 .net "B", 0 0, L_0x155b530;  alias, 1 drivers
v0x14e6120_0 .net "out", 0 0, L_0x155ad40;  1 drivers
S_0x14e6220 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155a4f0 .functor XOR 1, L_0x155b530, L_0x155a560, C4<0>, C4<0>;
v0x14e63f0_0 .net "A", 0 0, L_0x155b530;  alias, 1 drivers
v0x14e6540_0 .net "B", 0 0, L_0x155a560;  1 drivers
v0x14e6600_0 .net "out", 0 0, L_0x155a4f0;  alias, 1 drivers
S_0x14e6740 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14e3c50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155aac0 .functor XOR 1, L_0x155b490, L_0x155b530, C4<0>, C4<0>;
v0x14e6910_0 .net "A", 0 0, L_0x155b490;  alias, 1 drivers
v0x14e69d0_0 .net "B", 0 0, L_0x155b530;  alias, 1 drivers
v0x14e6a90_0 .net "out", 0 0, L_0x155aac0;  1 drivers
S_0x14e75e0 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x156f910 .functor BUFZ 1, L_0x156f070, C4<0>, C4<0>, C4<0>;
L_0x156f9a0 .functor BUFZ 1, L_0x156f070, C4<0>, C4<0>, C4<0>;
v0x14ea550_0 .net "A", 0 0, L_0x156fde0;  1 drivers
v0x14ea5f0_0 .net "B", 0 0, L_0x156fe80;  1 drivers
v0x14ea6b0_0 .net "I", 7 0, L_0x156fac0;  1 drivers
v0x14ea7b0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14ea850_0 .net *"_s15", 0 0, L_0x156f910;  1 drivers
v0x14ea960_0 .net *"_s19", 0 0, L_0x156f9a0;  1 drivers
L_0x7fa42efdf768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14eaa40_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf768;  1 drivers
v0x14eab20_0 .net "addORsub", 0 0, L_0x156f070;  1 drivers
v0x14eabc0_0 .net "carryin", 0 0, L_0x156ec50;  1 drivers
v0x14ead20_0 .net "carryout", 0 0, L_0x14e9960;  1 drivers
v0x14eadf0_0 .net "modB", 0 0, L_0x156ee40;  1 drivers
v0x14eae90_0 .net "out", 0 0, L_0x156f7b0;  1 drivers
L_0x156eeb0 .part v0x1499720_0, 0, 1;
LS_0x156fac0_0_0 .concat8 [ 1 1 1 1], L_0x156f910, L_0x156f9a0, L_0x156f4a0, L_0x7fa42efdf768;
LS_0x156fac0_0_4 .concat8 [ 1 1 1 1], L_0x14e9e40, L_0x156f620, L_0x156f690, L_0x156f720;
L_0x156fac0 .concat8 [ 4 4 0 0], LS_0x156fac0_0_0, LS_0x156fac0_0_4;
S_0x14e7850 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x156ef50 .functor XOR 1, L_0x156fde0, L_0x156ee40, C4<0>, C4<0>;
L_0x156f070 .functor XOR 1, L_0x156ef50, L_0x156ec50, C4<0>, C4<0>;
L_0x156f1a0 .functor AND 1, L_0x156ef50, L_0x156ec50, C4<1>, C4<1>;
L_0x156f230 .functor AND 1, L_0x156fde0, L_0x156ee40, C4<1>, C4<1>;
L_0x14e9960 .functor OR 1, L_0x156f1a0, L_0x156f230, C4<0>, C4<0>;
v0x14e7af0_0 .net "A", 0 0, L_0x156fde0;  alias, 1 drivers
v0x14e7bd0_0 .net "B", 0 0, L_0x156ee40;  alias, 1 drivers
v0x14e7c90_0 .net "carryin", 0 0, L_0x156ec50;  alias, 1 drivers
v0x14e7d60_0 .net "carryout", 0 0, L_0x14e9960;  alias, 1 drivers
v0x14e7e20_0 .net "out1", 0 0, L_0x156ef50;  1 drivers
v0x14e7f30_0 .net "out2", 0 0, L_0x156f1a0;  1 drivers
v0x14e7ff0_0 .net "out3", 0 0, L_0x156f230;  1 drivers
v0x14e80b0_0 .net "sum", 0 0, L_0x156f070;  alias, 1 drivers
S_0x14e8210 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14e9e40 .functor AND 1, L_0x156fde0, L_0x156fe80, C4<1>, C4<1>;
v0x14e8450_0 .net "A", 0 0, L_0x156fde0;  alias, 1 drivers
v0x14e8510_0 .net "B", 0 0, L_0x156fe80;  alias, 1 drivers
v0x14e85b0_0 .net "out", 0 0, L_0x14e9e40;  1 drivers
S_0x14e8700 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14e8950_0 .net "I", 7 0, L_0x156fac0;  alias, 1 drivers
v0x14e8a30_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14e8af0_0 .net "out", 0 0, L_0x156f7b0;  alias, 1 drivers
L_0x156f7b0 .part/v L_0x156fac0, v0x1499720_0, 1;
S_0x14e8c40 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156f620 .functor NAND 1, L_0x156fde0, L_0x156fe80, C4<1>, C4<1>;
v0x14e8e60_0 .net "A", 0 0, L_0x156fde0;  alias, 1 drivers
v0x14e8f70_0 .net "B", 0 0, L_0x156fe80;  alias, 1 drivers
v0x14e9030_0 .net "out", 0 0, L_0x156f620;  1 drivers
S_0x14e9140 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156f690 .functor NOR 1, L_0x156fde0, L_0x156fe80, C4<0>, C4<0>;
v0x14e93b0_0 .net "A", 0 0, L_0x156fde0;  alias, 1 drivers
v0x14e9470_0 .net "B", 0 0, L_0x156fe80;  alias, 1 drivers
v0x14e9580_0 .net "out", 0 0, L_0x156f690;  1 drivers
S_0x14e9680 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156f720 .functor OR 1, L_0x156fde0, L_0x156fe80, C4<0>, C4<0>;
v0x14e98a0_0 .net "A", 0 0, L_0x156fde0;  alias, 1 drivers
v0x14e99f0_0 .net "B", 0 0, L_0x156fe80;  alias, 1 drivers
v0x14e9ab0_0 .net "out", 0 0, L_0x156f720;  1 drivers
S_0x14e9bb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156ee40 .functor XOR 1, L_0x156fe80, L_0x156eeb0, C4<0>, C4<0>;
v0x14e9d80_0 .net "A", 0 0, L_0x156fe80;  alias, 1 drivers
v0x14e9ed0_0 .net "B", 0 0, L_0x156eeb0;  1 drivers
v0x14e9f90_0 .net "out", 0 0, L_0x156ee40;  alias, 1 drivers
S_0x14ea0d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14e75e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156f4a0 .functor XOR 1, L_0x156fde0, L_0x156fe80, C4<0>, C4<0>;
v0x14ea2a0_0 .net "A", 0 0, L_0x156fde0;  alias, 1 drivers
v0x14ea360_0 .net "B", 0 0, L_0x156fe80;  alias, 1 drivers
v0x14ea420_0 .net "out", 0 0, L_0x156f4a0;  1 drivers
S_0x14eafb0 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1570b40 .functor BUFZ 1, L_0x15702c0, C4<0>, C4<0>, C4<0>;
L_0x1570bd0 .functor BUFZ 1, L_0x15702c0, C4<0>, C4<0>, C4<0>;
v0x14edf20_0 .net "A", 0 0, L_0x1571010;  1 drivers
v0x14edfc0_0 .net "B", 0 0, L_0x156ff20;  1 drivers
v0x14ee080_0 .net "I", 7 0, L_0x1570cf0;  1 drivers
v0x14ee180_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14ee220_0 .net *"_s15", 0 0, L_0x1570b40;  1 drivers
v0x14ee330_0 .net *"_s19", 0 0, L_0x1570bd0;  1 drivers
L_0x7fa42efdf7b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14ee410_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf7b0;  1 drivers
v0x14ee4f0_0 .net "addORsub", 0 0, L_0x15702c0;  1 drivers
v0x14ee590_0 .net "carryin", 0 0, L_0x156ffc0;  1 drivers
v0x14ee6f0_0 .net "carryout", 0 0, L_0x14ed330;  1 drivers
v0x14ee7c0_0 .net "modB", 0 0, L_0x156ed80;  1 drivers
v0x14ee860_0 .net "out", 0 0, L_0x15709e0;  1 drivers
L_0x1570120 .part v0x1499720_0, 0, 1;
LS_0x1570cf0_0_0 .concat8 [ 1 1 1 1], L_0x1570b40, L_0x1570bd0, L_0x15706d0, L_0x7fa42efdf7b0;
LS_0x1570cf0_0_4 .concat8 [ 1 1 1 1], L_0x14ed810, L_0x1570850, L_0x15708c0, L_0x1570950;
L_0x1570cf0 .concat8 [ 4 4 0 0], LS_0x1570cf0_0_0, LS_0x1570cf0_0_4;
S_0x14eb220 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x15701c0 .functor XOR 1, L_0x1571010, L_0x156ed80, C4<0>, C4<0>;
L_0x15702c0 .functor XOR 1, L_0x15701c0, L_0x156ffc0, C4<0>, C4<0>;
L_0x15703d0 .functor AND 1, L_0x15701c0, L_0x156ffc0, C4<1>, C4<1>;
L_0x1570460 .functor AND 1, L_0x1571010, L_0x156ed80, C4<1>, C4<1>;
L_0x14ed330 .functor OR 1, L_0x15703d0, L_0x1570460, C4<0>, C4<0>;
v0x14eb4c0_0 .net "A", 0 0, L_0x1571010;  alias, 1 drivers
v0x14eb5a0_0 .net "B", 0 0, L_0x156ed80;  alias, 1 drivers
v0x14eb660_0 .net "carryin", 0 0, L_0x156ffc0;  alias, 1 drivers
v0x14eb730_0 .net "carryout", 0 0, L_0x14ed330;  alias, 1 drivers
v0x14eb7f0_0 .net "out1", 0 0, L_0x15701c0;  1 drivers
v0x14eb900_0 .net "out2", 0 0, L_0x15703d0;  1 drivers
v0x14eb9c0_0 .net "out3", 0 0, L_0x1570460;  1 drivers
v0x14eba80_0 .net "sum", 0 0, L_0x15702c0;  alias, 1 drivers
S_0x14ebbe0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14ed810 .functor AND 1, L_0x1571010, L_0x156ff20, C4<1>, C4<1>;
v0x14ebe20_0 .net "A", 0 0, L_0x1571010;  alias, 1 drivers
v0x14ebee0_0 .net "B", 0 0, L_0x156ff20;  alias, 1 drivers
v0x14ebf80_0 .net "out", 0 0, L_0x14ed810;  1 drivers
S_0x14ec0d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14ec320_0 .net "I", 7 0, L_0x1570cf0;  alias, 1 drivers
v0x14ec400_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14ec4c0_0 .net "out", 0 0, L_0x15709e0;  alias, 1 drivers
L_0x15709e0 .part/v L_0x1570cf0, v0x1499720_0, 1;
S_0x14ec610 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1570850 .functor NAND 1, L_0x1571010, L_0x156ff20, C4<1>, C4<1>;
v0x14ec830_0 .net "A", 0 0, L_0x1571010;  alias, 1 drivers
v0x14ec940_0 .net "B", 0 0, L_0x156ff20;  alias, 1 drivers
v0x14eca00_0 .net "out", 0 0, L_0x1570850;  1 drivers
S_0x14ecb10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15708c0 .functor NOR 1, L_0x1571010, L_0x156ff20, C4<0>, C4<0>;
v0x14ecd80_0 .net "A", 0 0, L_0x1571010;  alias, 1 drivers
v0x14ece40_0 .net "B", 0 0, L_0x156ff20;  alias, 1 drivers
v0x14ecf50_0 .net "out", 0 0, L_0x15708c0;  1 drivers
S_0x14ed050 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1570950 .functor OR 1, L_0x1571010, L_0x156ff20, C4<0>, C4<0>;
v0x14ed270_0 .net "A", 0 0, L_0x1571010;  alias, 1 drivers
v0x14ed3c0_0 .net "B", 0 0, L_0x156ff20;  alias, 1 drivers
v0x14ed480_0 .net "out", 0 0, L_0x1570950;  1 drivers
S_0x14ed580 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x156ed80 .functor XOR 1, L_0x156ff20, L_0x1570120, C4<0>, C4<0>;
v0x14ed750_0 .net "A", 0 0, L_0x156ff20;  alias, 1 drivers
v0x14ed8a0_0 .net "B", 0 0, L_0x1570120;  1 drivers
v0x14ed960_0 .net "out", 0 0, L_0x156ed80;  alias, 1 drivers
S_0x14edaa0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14eafb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15706d0 .functor XOR 1, L_0x1571010, L_0x156ff20, C4<0>, C4<0>;
v0x14edc70_0 .net "A", 0 0, L_0x1571010;  alias, 1 drivers
v0x14edd30_0 .net "B", 0 0, L_0x156ff20;  alias, 1 drivers
v0x14eddf0_0 .net "out", 0 0, L_0x15706d0;  1 drivers
S_0x14ee980 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1571d80 .functor BUFZ 1, L_0x15714e0, C4<0>, C4<0>, C4<0>;
L_0x1571e10 .functor BUFZ 1, L_0x15714e0, C4<0>, C4<0>, C4<0>;
v0x14f18f0_0 .net "A", 0 0, L_0x1572250;  1 drivers
v0x14f1990_0 .net "B", 0 0, L_0x15722f0;  1 drivers
v0x14f1a50_0 .net "I", 7 0, L_0x1571f30;  1 drivers
v0x14f1b50_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14c7f30_0 .net *"_s15", 0 0, L_0x1571d80;  1 drivers
v0x14c8040_0 .net *"_s19", 0 0, L_0x1571e10;  1 drivers
L_0x7fa42efdf7f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14f2000_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf7f8;  1 drivers
v0x14f20a0_0 .net "addORsub", 0 0, L_0x15714e0;  1 drivers
v0x14f2140_0 .net "carryin", 0 0, L_0x15710b0;  1 drivers
v0x14f2270_0 .net "carryout", 0 0, L_0x14f0d00;  1 drivers
v0x14f2310_0 .net "modB", 0 0, L_0x15712d0;  1 drivers
v0x14f23b0_0 .net "out", 0 0, L_0x1571c20;  1 drivers
L_0x1571340 .part v0x1499720_0, 0, 1;
LS_0x1571f30_0_0 .concat8 [ 1 1 1 1], L_0x1571d80, L_0x1571e10, L_0x1571910, L_0x7fa42efdf7f8;
LS_0x1571f30_0_4 .concat8 [ 1 1 1 1], L_0x14f11e0, L_0x1571a90, L_0x1571b00, L_0x1571b90;
L_0x1571f30 .concat8 [ 4 4 0 0], LS_0x1571f30_0_0, LS_0x1571f30_0_4;
S_0x14eebf0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x15713e0 .functor XOR 1, L_0x1572250, L_0x15712d0, C4<0>, C4<0>;
L_0x15714e0 .functor XOR 1, L_0x15713e0, L_0x15710b0, C4<0>, C4<0>;
L_0x1571610 .functor AND 1, L_0x15713e0, L_0x15710b0, C4<1>, C4<1>;
L_0x15716a0 .functor AND 1, L_0x1572250, L_0x15712d0, C4<1>, C4<1>;
L_0x14f0d00 .functor OR 1, L_0x1571610, L_0x15716a0, C4<0>, C4<0>;
v0x14eee90_0 .net "A", 0 0, L_0x1572250;  alias, 1 drivers
v0x14eef70_0 .net "B", 0 0, L_0x15712d0;  alias, 1 drivers
v0x14ef030_0 .net "carryin", 0 0, L_0x15710b0;  alias, 1 drivers
v0x14ef100_0 .net "carryout", 0 0, L_0x14f0d00;  alias, 1 drivers
v0x14ef1c0_0 .net "out1", 0 0, L_0x15713e0;  1 drivers
v0x14ef2d0_0 .net "out2", 0 0, L_0x1571610;  1 drivers
v0x14ef390_0 .net "out3", 0 0, L_0x15716a0;  1 drivers
v0x14ef450_0 .net "sum", 0 0, L_0x15714e0;  alias, 1 drivers
S_0x14ef5b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14f11e0 .functor AND 1, L_0x1572250, L_0x15722f0, C4<1>, C4<1>;
v0x14ef7f0_0 .net "A", 0 0, L_0x1572250;  alias, 1 drivers
v0x14ef8b0_0 .net "B", 0 0, L_0x15722f0;  alias, 1 drivers
v0x14ef950_0 .net "out", 0 0, L_0x14f11e0;  1 drivers
S_0x14efaa0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14efcf0_0 .net "I", 7 0, L_0x1571f30;  alias, 1 drivers
v0x14efdd0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14efe90_0 .net "out", 0 0, L_0x1571c20;  alias, 1 drivers
L_0x1571c20 .part/v L_0x1571f30, v0x1499720_0, 1;
S_0x14effe0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1571a90 .functor NAND 1, L_0x1572250, L_0x15722f0, C4<1>, C4<1>;
v0x14f0200_0 .net "A", 0 0, L_0x1572250;  alias, 1 drivers
v0x14f0310_0 .net "B", 0 0, L_0x15722f0;  alias, 1 drivers
v0x14f03d0_0 .net "out", 0 0, L_0x1571a90;  1 drivers
S_0x14f04e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1571b00 .functor NOR 1, L_0x1572250, L_0x15722f0, C4<0>, C4<0>;
v0x14f0750_0 .net "A", 0 0, L_0x1572250;  alias, 1 drivers
v0x14f0810_0 .net "B", 0 0, L_0x15722f0;  alias, 1 drivers
v0x14f0920_0 .net "out", 0 0, L_0x1571b00;  1 drivers
S_0x14f0a20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1571b90 .functor OR 1, L_0x1572250, L_0x15722f0, C4<0>, C4<0>;
v0x14f0c40_0 .net "A", 0 0, L_0x1572250;  alias, 1 drivers
v0x14f0d90_0 .net "B", 0 0, L_0x15722f0;  alias, 1 drivers
v0x14f0e50_0 .net "out", 0 0, L_0x1571b90;  1 drivers
S_0x14f0f50 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15712d0 .functor XOR 1, L_0x15722f0, L_0x1571340, C4<0>, C4<0>;
v0x14f1120_0 .net "A", 0 0, L_0x15722f0;  alias, 1 drivers
v0x14f1270_0 .net "B", 0 0, L_0x1571340;  1 drivers
v0x14f1330_0 .net "out", 0 0, L_0x15712d0;  alias, 1 drivers
S_0x14f1470 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14ee980;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1571910 .functor XOR 1, L_0x1572250, L_0x15722f0, C4<0>, C4<0>;
v0x14f1640_0 .net "A", 0 0, L_0x1572250;  alias, 1 drivers
v0x14f1700_0 .net "B", 0 0, L_0x15722f0;  alias, 1 drivers
v0x14f17c0_0 .net "out", 0 0, L_0x1571910;  1 drivers
S_0x14f24b0 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1572fb0 .functor BUFZ 1, L_0x1572710, C4<0>, C4<0>, C4<0>;
L_0x1573040 .functor BUFZ 1, L_0x1572710, C4<0>, C4<0>, C4<0>;
v0x14f54a0_0 .net "A", 0 0, L_0x1573480;  1 drivers
v0x14f5540_0 .net "B", 0 0, L_0x1572390;  1 drivers
v0x14f5600_0 .net "I", 7 0, L_0x1573160;  1 drivers
v0x14f5700_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14f57a0_0 .net *"_s15", 0 0, L_0x1572fb0;  1 drivers
v0x14f58b0_0 .net *"_s19", 0 0, L_0x1573040;  1 drivers
L_0x7fa42efdf840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14f5990_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf840;  1 drivers
v0x14f5a70_0 .net "addORsub", 0 0, L_0x1572710;  1 drivers
v0x14f5b10_0 .net "carryin", 0 0, L_0x1572430;  1 drivers
v0x14f5c70_0 .net "carryout", 0 0, L_0x14f48b0;  1 drivers
v0x14f5d40_0 .net "modB", 0 0, L_0x15711e0;  1 drivers
v0x14f5de0_0 .net "out", 0 0, L_0x1572e50;  1 drivers
L_0x15725c0 .part v0x1499720_0, 0, 1;
LS_0x1573160_0_0 .concat8 [ 1 1 1 1], L_0x1572fb0, L_0x1573040, L_0x1572b40, L_0x7fa42efdf840;
LS_0x1573160_0_4 .concat8 [ 1 1 1 1], L_0x14f4d90, L_0x1572cc0, L_0x1572d30, L_0x1572dc0;
L_0x1573160 .concat8 [ 4 4 0 0], LS_0x1573160_0_0, LS_0x1573160_0_4;
S_0x14f2830 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1571250 .functor XOR 1, L_0x1573480, L_0x15711e0, C4<0>, C4<0>;
L_0x1572710 .functor XOR 1, L_0x1571250, L_0x1572430, C4<0>, C4<0>;
L_0x1572840 .functor AND 1, L_0x1571250, L_0x1572430, C4<1>, C4<1>;
L_0x15728d0 .functor AND 1, L_0x1573480, L_0x15711e0, C4<1>, C4<1>;
L_0x14f48b0 .functor OR 1, L_0x1572840, L_0x15728d0, C4<0>, C4<0>;
v0x14f2a60_0 .net "A", 0 0, L_0x1573480;  alias, 1 drivers
v0x14f2b20_0 .net "B", 0 0, L_0x15711e0;  alias, 1 drivers
v0x14f2be0_0 .net "carryin", 0 0, L_0x1572430;  alias, 1 drivers
v0x14f2cb0_0 .net "carryout", 0 0, L_0x14f48b0;  alias, 1 drivers
v0x14f2d70_0 .net "out1", 0 0, L_0x1571250;  1 drivers
v0x14f2e80_0 .net "out2", 0 0, L_0x1572840;  1 drivers
v0x14f2f40_0 .net "out3", 0 0, L_0x15728d0;  1 drivers
v0x14f3000_0 .net "sum", 0 0, L_0x1572710;  alias, 1 drivers
S_0x14f3160 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14f4d90 .functor AND 1, L_0x1573480, L_0x1572390, C4<1>, C4<1>;
v0x14f33a0_0 .net "A", 0 0, L_0x1573480;  alias, 1 drivers
v0x14f3460_0 .net "B", 0 0, L_0x1572390;  alias, 1 drivers
v0x14f3500_0 .net "out", 0 0, L_0x14f4d90;  1 drivers
S_0x14f3650 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14f38a0_0 .net "I", 7 0, L_0x1573160;  alias, 1 drivers
v0x14f3980_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14f3a40_0 .net "out", 0 0, L_0x1572e50;  alias, 1 drivers
L_0x1572e50 .part/v L_0x1573160, v0x1499720_0, 1;
S_0x14f3b90 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1572cc0 .functor NAND 1, L_0x1573480, L_0x1572390, C4<1>, C4<1>;
v0x14f3db0_0 .net "A", 0 0, L_0x1573480;  alias, 1 drivers
v0x14f3ec0_0 .net "B", 0 0, L_0x1572390;  alias, 1 drivers
v0x14f3f80_0 .net "out", 0 0, L_0x1572cc0;  1 drivers
S_0x14f4090 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1572d30 .functor NOR 1, L_0x1573480, L_0x1572390, C4<0>, C4<0>;
v0x14f4300_0 .net "A", 0 0, L_0x1573480;  alias, 1 drivers
v0x14f43c0_0 .net "B", 0 0, L_0x1572390;  alias, 1 drivers
v0x14f44d0_0 .net "out", 0 0, L_0x1572d30;  1 drivers
S_0x14f45d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1572dc0 .functor OR 1, L_0x1573480, L_0x1572390, C4<0>, C4<0>;
v0x14f47f0_0 .net "A", 0 0, L_0x1573480;  alias, 1 drivers
v0x14f4940_0 .net "B", 0 0, L_0x1572390;  alias, 1 drivers
v0x14f4a00_0 .net "out", 0 0, L_0x1572dc0;  1 drivers
S_0x14f4b00 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15711e0 .functor XOR 1, L_0x1572390, L_0x15725c0, C4<0>, C4<0>;
v0x14f4cd0_0 .net "A", 0 0, L_0x1572390;  alias, 1 drivers
v0x14f4e20_0 .net "B", 0 0, L_0x15725c0;  1 drivers
v0x14f4ee0_0 .net "out", 0 0, L_0x15711e0;  alias, 1 drivers
S_0x14f5020 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14f24b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1572b40 .functor XOR 1, L_0x1573480, L_0x1572390, C4<0>, C4<0>;
v0x14f51f0_0 .net "A", 0 0, L_0x1573480;  alias, 1 drivers
v0x14f52b0_0 .net "B", 0 0, L_0x1572390;  alias, 1 drivers
v0x14f5370_0 .net "out", 0 0, L_0x1572b40;  1 drivers
S_0x14f5f00 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x15741e0 .functor BUFZ 1, L_0x1573980, C4<0>, C4<0>, C4<0>;
L_0x1574270 .functor BUFZ 1, L_0x1573980, C4<0>, C4<0>, C4<0>;
v0x14f8e70_0 .net "A", 0 0, L_0x15746b0;  1 drivers
v0x14f8f10_0 .net "B", 0 0, L_0x1574750;  1 drivers
v0x14f8fd0_0 .net "I", 7 0, L_0x1574390;  1 drivers
v0x14f90d0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14f9170_0 .net *"_s15", 0 0, L_0x15741e0;  1 drivers
v0x14f9280_0 .net *"_s19", 0 0, L_0x1574270;  1 drivers
L_0x7fa42efdf888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14f9360_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf888;  1 drivers
v0x14f9440_0 .net "addORsub", 0 0, L_0x1573980;  1 drivers
v0x14f94e0_0 .net "carryin", 0 0, L_0x1573520;  1 drivers
v0x14f9640_0 .net "carryout", 0 0, L_0x14f8280;  1 drivers
v0x14f9710_0 .net "modB", 0 0, L_0x1573770;  1 drivers
v0x14f97b0_0 .net "out", 0 0, L_0x1574080;  1 drivers
L_0x15737e0 .part v0x1499720_0, 0, 1;
LS_0x1574390_0_0 .concat8 [ 1 1 1 1], L_0x15741e0, L_0x1574270, L_0x1573d70, L_0x7fa42efdf888;
LS_0x1574390_0_4 .concat8 [ 1 1 1 1], L_0x14f8760, L_0x1573ef0, L_0x1573f60, L_0x1573ff0;
L_0x1574390 .concat8 [ 4 4 0 0], LS_0x1574390_0_0, LS_0x1574390_0_4;
S_0x14f6170 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1573880 .functor XOR 1, L_0x15746b0, L_0x1573770, C4<0>, C4<0>;
L_0x1573980 .functor XOR 1, L_0x1573880, L_0x1573520, C4<0>, C4<0>;
L_0x1573a90 .functor AND 1, L_0x1573880, L_0x1573520, C4<1>, C4<1>;
L_0x1573b00 .functor AND 1, L_0x15746b0, L_0x1573770, C4<1>, C4<1>;
L_0x14f8280 .functor OR 1, L_0x1573a90, L_0x1573b00, C4<0>, C4<0>;
v0x14f6410_0 .net "A", 0 0, L_0x15746b0;  alias, 1 drivers
v0x14f64f0_0 .net "B", 0 0, L_0x1573770;  alias, 1 drivers
v0x14f65b0_0 .net "carryin", 0 0, L_0x1573520;  alias, 1 drivers
v0x14f6680_0 .net "carryout", 0 0, L_0x14f8280;  alias, 1 drivers
v0x14f6740_0 .net "out1", 0 0, L_0x1573880;  1 drivers
v0x14f6850_0 .net "out2", 0 0, L_0x1573a90;  1 drivers
v0x14f6910_0 .net "out3", 0 0, L_0x1573b00;  1 drivers
v0x14f69d0_0 .net "sum", 0 0, L_0x1573980;  alias, 1 drivers
S_0x14f6b30 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14f8760 .functor AND 1, L_0x15746b0, L_0x1574750, C4<1>, C4<1>;
v0x14f6d70_0 .net "A", 0 0, L_0x15746b0;  alias, 1 drivers
v0x14f6e30_0 .net "B", 0 0, L_0x1574750;  alias, 1 drivers
v0x14f6ed0_0 .net "out", 0 0, L_0x14f8760;  1 drivers
S_0x14f7020 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14f7270_0 .net "I", 7 0, L_0x1574390;  alias, 1 drivers
v0x14f7350_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14f7410_0 .net "out", 0 0, L_0x1574080;  alias, 1 drivers
L_0x1574080 .part/v L_0x1574390, v0x1499720_0, 1;
S_0x14f7560 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1573ef0 .functor NAND 1, L_0x15746b0, L_0x1574750, C4<1>, C4<1>;
v0x14f7780_0 .net "A", 0 0, L_0x15746b0;  alias, 1 drivers
v0x14f7890_0 .net "B", 0 0, L_0x1574750;  alias, 1 drivers
v0x14f7950_0 .net "out", 0 0, L_0x1573ef0;  1 drivers
S_0x14f7a60 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1573f60 .functor NOR 1, L_0x15746b0, L_0x1574750, C4<0>, C4<0>;
v0x14f7cd0_0 .net "A", 0 0, L_0x15746b0;  alias, 1 drivers
v0x14f7d90_0 .net "B", 0 0, L_0x1574750;  alias, 1 drivers
v0x14f7ea0_0 .net "out", 0 0, L_0x1573f60;  1 drivers
S_0x14f7fa0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1573ff0 .functor OR 1, L_0x15746b0, L_0x1574750, C4<0>, C4<0>;
v0x14f81c0_0 .net "A", 0 0, L_0x15746b0;  alias, 1 drivers
v0x14f8310_0 .net "B", 0 0, L_0x1574750;  alias, 1 drivers
v0x14f83d0_0 .net "out", 0 0, L_0x1573ff0;  1 drivers
S_0x14f84d0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1573770 .functor XOR 1, L_0x1574750, L_0x15737e0, C4<0>, C4<0>;
v0x14f86a0_0 .net "A", 0 0, L_0x1574750;  alias, 1 drivers
v0x14f87f0_0 .net "B", 0 0, L_0x15737e0;  1 drivers
v0x14f88b0_0 .net "out", 0 0, L_0x1573770;  alias, 1 drivers
S_0x14f89f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14f5f00;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1573d70 .functor XOR 1, L_0x15746b0, L_0x1574750, C4<0>, C4<0>;
v0x14f8bc0_0 .net "A", 0 0, L_0x15746b0;  alias, 1 drivers
v0x14f8c80_0 .net "B", 0 0, L_0x1574750;  alias, 1 drivers
v0x14f8d40_0 .net "out", 0 0, L_0x1573d70;  1 drivers
S_0x14f98d0 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1575410 .functor BUFZ 1, L_0x1574b70, C4<0>, C4<0>, C4<0>;
L_0x15754a0 .functor BUFZ 1, L_0x1574b70, C4<0>, C4<0>, C4<0>;
v0x14fc840_0 .net "A", 0 0, L_0x15758e0;  1 drivers
v0x14fc8e0_0 .net "B", 0 0, L_0x1563280;  1 drivers
v0x14fc9a0_0 .net "I", 7 0, L_0x15755c0;  1 drivers
v0x14fcaa0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14fcb40_0 .net *"_s15", 0 0, L_0x1575410;  1 drivers
v0x14fcc50_0 .net *"_s19", 0 0, L_0x15754a0;  1 drivers
L_0x7fa42efdf8d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14fcd30_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf8d0;  1 drivers
v0x14fce10_0 .net "addORsub", 0 0, L_0x1574b70;  1 drivers
v0x14fceb0_0 .net "carryin", 0 0, L_0x1563320;  1 drivers
v0x14fd010_0 .net "carryout", 0 0, L_0x14fbc50;  1 drivers
v0x14fd0e0_0 .net "modB", 0 0, L_0x1573650;  1 drivers
v0x14fd180_0 .net "out", 0 0, L_0x15752b0;  1 drivers
L_0x15736c0 .part v0x1499720_0, 0, 1;
LS_0x15755c0_0_0 .concat8 [ 1 1 1 1], L_0x1575410, L_0x15754a0, L_0x1574fa0, L_0x7fa42efdf8d0;
LS_0x15755c0_0_4 .concat8 [ 1 1 1 1], L_0x14fc130, L_0x1575120, L_0x1575190, L_0x1575220;
L_0x15755c0 .concat8 [ 4 4 0 0], LS_0x15755c0_0_0, LS_0x15755c0_0_4;
S_0x14f9b40 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1574a50 .functor XOR 1, L_0x15758e0, L_0x1573650, C4<0>, C4<0>;
L_0x1574b70 .functor XOR 1, L_0x1574a50, L_0x1563320, C4<0>, C4<0>;
L_0x1574ca0 .functor AND 1, L_0x1574a50, L_0x1563320, C4<1>, C4<1>;
L_0x1574d30 .functor AND 1, L_0x15758e0, L_0x1573650, C4<1>, C4<1>;
L_0x14fbc50 .functor OR 1, L_0x1574ca0, L_0x1574d30, C4<0>, C4<0>;
v0x14f9de0_0 .net "A", 0 0, L_0x15758e0;  alias, 1 drivers
v0x14f9ec0_0 .net "B", 0 0, L_0x1573650;  alias, 1 drivers
v0x14f9f80_0 .net "carryin", 0 0, L_0x1563320;  alias, 1 drivers
v0x14fa050_0 .net "carryout", 0 0, L_0x14fbc50;  alias, 1 drivers
v0x14fa110_0 .net "out1", 0 0, L_0x1574a50;  1 drivers
v0x14fa220_0 .net "out2", 0 0, L_0x1574ca0;  1 drivers
v0x14fa2e0_0 .net "out3", 0 0, L_0x1574d30;  1 drivers
v0x14fa3a0_0 .net "sum", 0 0, L_0x1574b70;  alias, 1 drivers
S_0x14fa500 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14fc130 .functor AND 1, L_0x15758e0, L_0x1563280, C4<1>, C4<1>;
v0x14fa740_0 .net "A", 0 0, L_0x15758e0;  alias, 1 drivers
v0x14fa800_0 .net "B", 0 0, L_0x1563280;  alias, 1 drivers
v0x14fa8a0_0 .net "out", 0 0, L_0x14fc130;  1 drivers
S_0x14fa9f0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14fac40_0 .net "I", 7 0, L_0x15755c0;  alias, 1 drivers
v0x14fad20_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14fade0_0 .net "out", 0 0, L_0x15752b0;  alias, 1 drivers
L_0x15752b0 .part/v L_0x15755c0, v0x1499720_0, 1;
S_0x14faf30 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1575120 .functor NAND 1, L_0x15758e0, L_0x1563280, C4<1>, C4<1>;
v0x14fb150_0 .net "A", 0 0, L_0x15758e0;  alias, 1 drivers
v0x14fb260_0 .net "B", 0 0, L_0x1563280;  alias, 1 drivers
v0x14fb320_0 .net "out", 0 0, L_0x1575120;  1 drivers
S_0x14fb430 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1575190 .functor NOR 1, L_0x15758e0, L_0x1563280, C4<0>, C4<0>;
v0x14fb6a0_0 .net "A", 0 0, L_0x15758e0;  alias, 1 drivers
v0x14fb760_0 .net "B", 0 0, L_0x1563280;  alias, 1 drivers
v0x14fb870_0 .net "out", 0 0, L_0x1575190;  1 drivers
S_0x14fb970 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1575220 .functor OR 1, L_0x15758e0, L_0x1563280, C4<0>, C4<0>;
v0x14fbb90_0 .net "A", 0 0, L_0x15758e0;  alias, 1 drivers
v0x14fbce0_0 .net "B", 0 0, L_0x1563280;  alias, 1 drivers
v0x14fbda0_0 .net "out", 0 0, L_0x1575220;  1 drivers
S_0x14fbea0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1573650 .functor XOR 1, L_0x1563280, L_0x15736c0, C4<0>, C4<0>;
v0x14fc070_0 .net "A", 0 0, L_0x1563280;  alias, 1 drivers
v0x14fc1c0_0 .net "B", 0 0, L_0x15736c0;  1 drivers
v0x14fc280_0 .net "out", 0 0, L_0x1573650;  alias, 1 drivers
S_0x14fc3c0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14f98d0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1574fa0 .functor XOR 1, L_0x15758e0, L_0x1563280, C4<0>, C4<0>;
v0x14fc590_0 .net "A", 0 0, L_0x15758e0;  alias, 1 drivers
v0x14fc650_0 .net "B", 0 0, L_0x1563280;  alias, 1 drivers
v0x14fc710_0 .net "out", 0 0, L_0x1574fa0;  1 drivers
S_0x14fd2a0 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x15766b0 .functor BUFZ 1, L_0x15749b0, C4<0>, C4<0>, C4<0>;
L_0x1576720 .functor BUFZ 1, L_0x15749b0, C4<0>, C4<0>, C4<0>;
v0x1500210_0 .net "A", 0 0, L_0x1564520;  1 drivers
v0x15002b0_0 .net "B", 0 0, L_0x1576d50;  1 drivers
v0x1500370_0 .net "I", 7 0, L_0x1576820;  1 drivers
v0x1500470_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1500510_0 .net *"_s15", 0 0, L_0x15766b0;  1 drivers
v0x1500620_0 .net *"_s19", 0 0, L_0x1576720;  1 drivers
L_0x7fa42efdf918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1500700_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf918;  1 drivers
v0x15007e0_0 .net "addORsub", 0 0, L_0x15749b0;  1 drivers
v0x1500880_0 .net "carryin", 0 0, L_0x1575d90;  1 drivers
v0x15009e0_0 .net "carryout", 0 0, L_0x14ff620;  1 drivers
v0x1500ab0_0 .net "modB", 0 0, L_0x1555300;  1 drivers
v0x1500b50_0 .net "out", 0 0, L_0x1576570;  1 drivers
L_0x15747f0 .part v0x1499720_0, 0, 1;
LS_0x1576820_0_0 .concat8 [ 1 1 1 1], L_0x15766b0, L_0x1576720, L_0x15762a0, L_0x7fa42efdf918;
LS_0x1576820_0_4 .concat8 [ 1 1 1 1], L_0x14ffb00, L_0x1576420, L_0x1576490, L_0x1576500;
L_0x1576820 .concat8 [ 4 4 0 0], LS_0x1576820_0_0, LS_0x1576820_0_4;
S_0x14fd510 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1574890 .functor XOR 1, L_0x1564520, L_0x1555300, C4<0>, C4<0>;
L_0x15749b0 .functor XOR 1, L_0x1574890, L_0x1575d90, C4<0>, C4<0>;
L_0x1576010 .functor AND 1, L_0x1574890, L_0x1575d90, C4<1>, C4<1>;
L_0x1576080 .functor AND 1, L_0x1564520, L_0x1555300, C4<1>, C4<1>;
L_0x14ff620 .functor OR 1, L_0x1576010, L_0x1576080, C4<0>, C4<0>;
v0x14fd7b0_0 .net "A", 0 0, L_0x1564520;  alias, 1 drivers
v0x14fd890_0 .net "B", 0 0, L_0x1555300;  alias, 1 drivers
v0x14fd950_0 .net "carryin", 0 0, L_0x1575d90;  alias, 1 drivers
v0x14fda20_0 .net "carryout", 0 0, L_0x14ff620;  alias, 1 drivers
v0x14fdae0_0 .net "out1", 0 0, L_0x1574890;  1 drivers
v0x14fdbf0_0 .net "out2", 0 0, L_0x1576010;  1 drivers
v0x14fdcb0_0 .net "out3", 0 0, L_0x1576080;  1 drivers
v0x14fdd70_0 .net "sum", 0 0, L_0x15749b0;  alias, 1 drivers
S_0x14fded0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x14ffb00 .functor AND 1, L_0x1564520, L_0x1576d50, C4<1>, C4<1>;
v0x14fe110_0 .net "A", 0 0, L_0x1564520;  alias, 1 drivers
v0x14fe1d0_0 .net "B", 0 0, L_0x1576d50;  alias, 1 drivers
v0x14fe270_0 .net "out", 0 0, L_0x14ffb00;  1 drivers
S_0x14fe3c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x14fe610_0 .net "I", 7 0, L_0x1576820;  alias, 1 drivers
v0x14fe6f0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14fe7b0_0 .net "out", 0 0, L_0x1576570;  alias, 1 drivers
L_0x1576570 .part/v L_0x1576820, v0x1499720_0, 1;
S_0x14fe900 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1576420 .functor NAND 1, L_0x1564520, L_0x1576d50, C4<1>, C4<1>;
v0x14feb20_0 .net "A", 0 0, L_0x1564520;  alias, 1 drivers
v0x14fec30_0 .net "B", 0 0, L_0x1576d50;  alias, 1 drivers
v0x14fecf0_0 .net "out", 0 0, L_0x1576420;  1 drivers
S_0x14fee00 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1576490 .functor NOR 1, L_0x1564520, L_0x1576d50, C4<0>, C4<0>;
v0x14ff070_0 .net "A", 0 0, L_0x1564520;  alias, 1 drivers
v0x14ff130_0 .net "B", 0 0, L_0x1576d50;  alias, 1 drivers
v0x14ff240_0 .net "out", 0 0, L_0x1576490;  1 drivers
S_0x14ff340 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1576500 .functor OR 1, L_0x1564520, L_0x1576d50, C4<0>, C4<0>;
v0x14ff560_0 .net "A", 0 0, L_0x1564520;  alias, 1 drivers
v0x14ff6b0_0 .net "B", 0 0, L_0x1576d50;  alias, 1 drivers
v0x14ff770_0 .net "out", 0 0, L_0x1576500;  1 drivers
S_0x14ff870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1555300 .functor XOR 1, L_0x1576d50, L_0x15747f0, C4<0>, C4<0>;
v0x14ffa40_0 .net "A", 0 0, L_0x1576d50;  alias, 1 drivers
v0x14ffb90_0 .net "B", 0 0, L_0x15747f0;  1 drivers
v0x14ffc50_0 .net "out", 0 0, L_0x1555300;  alias, 1 drivers
S_0x14ffd90 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x14fd2a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15762a0 .functor XOR 1, L_0x1564520, L_0x1576d50, C4<0>, C4<0>;
v0x14fff60_0 .net "A", 0 0, L_0x1564520;  alias, 1 drivers
v0x1500020_0 .net "B", 0 0, L_0x1576d50;  alias, 1 drivers
v0x15000e0_0 .net "out", 0 0, L_0x15762a0;  1 drivers
S_0x1500c70 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1577930 .functor BUFZ 1, L_0x1577180, C4<0>, C4<0>, C4<0>;
L_0x15779a0 .functor BUFZ 1, L_0x1577180, C4<0>, C4<0>, C4<0>;
v0x1503be0_0 .net "A", 0 0, L_0x1577dc0;  1 drivers
v0x1503c80_0 .net "B", 0 0, L_0x1576df0;  1 drivers
v0x1503d40_0 .net "I", 7 0, L_0x1577aa0;  1 drivers
v0x1503e40_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1503ee0_0 .net *"_s15", 0 0, L_0x1577930;  1 drivers
v0x1503ff0_0 .net *"_s19", 0 0, L_0x15779a0;  1 drivers
L_0x7fa42efdf960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x15040d0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf960;  1 drivers
v0x15041b0_0 .net "addORsub", 0 0, L_0x1577180;  1 drivers
v0x1504250_0 .net "carryin", 0 0, L_0x1576e90;  1 drivers
v0x15043b0_0 .net "carryout", 0 0, L_0x1502ff0;  1 drivers
v0x1504480_0 .net "modB", 0 0, L_0x15645c0;  1 drivers
v0x1504520_0 .net "out", 0 0, L_0x15777f0;  1 drivers
L_0x1575ec0 .part v0x1499720_0, 0, 1;
LS_0x1577aa0_0_0 .concat8 [ 1 1 1 1], L_0x1577930, L_0x15779a0, L_0x1577520, L_0x7fa42efdf960;
LS_0x1577aa0_0_4 .concat8 [ 1 1 1 1], L_0x15034d0, L_0x15776a0, L_0x1577710, L_0x1577780;
L_0x1577aa0 .concat8 [ 4 4 0 0], LS_0x1577aa0_0_0, LS_0x1577aa0_0_4;
S_0x1500ee0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1577080 .functor XOR 1, L_0x1577dc0, L_0x15645c0, C4<0>, C4<0>;
L_0x1577180 .functor XOR 1, L_0x1577080, L_0x1576e90, C4<0>, C4<0>;
L_0x1577240 .functor AND 1, L_0x1577080, L_0x1576e90, C4<1>, C4<1>;
L_0x15772b0 .functor AND 1, L_0x1577dc0, L_0x15645c0, C4<1>, C4<1>;
L_0x1502ff0 .functor OR 1, L_0x1577240, L_0x15772b0, C4<0>, C4<0>;
v0x1501180_0 .net "A", 0 0, L_0x1577dc0;  alias, 1 drivers
v0x1501260_0 .net "B", 0 0, L_0x15645c0;  alias, 1 drivers
v0x1501320_0 .net "carryin", 0 0, L_0x1576e90;  alias, 1 drivers
v0x15013f0_0 .net "carryout", 0 0, L_0x1502ff0;  alias, 1 drivers
v0x15014b0_0 .net "out1", 0 0, L_0x1577080;  1 drivers
v0x15015c0_0 .net "out2", 0 0, L_0x1577240;  1 drivers
v0x1501680_0 .net "out3", 0 0, L_0x15772b0;  1 drivers
v0x1501740_0 .net "sum", 0 0, L_0x1577180;  alias, 1 drivers
S_0x15018a0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15034d0 .functor AND 1, L_0x1577dc0, L_0x1576df0, C4<1>, C4<1>;
v0x1501ae0_0 .net "A", 0 0, L_0x1577dc0;  alias, 1 drivers
v0x1501ba0_0 .net "B", 0 0, L_0x1576df0;  alias, 1 drivers
v0x1501c40_0 .net "out", 0 0, L_0x15034d0;  1 drivers
S_0x1501d90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1501fe0_0 .net "I", 7 0, L_0x1577aa0;  alias, 1 drivers
v0x15020c0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1502180_0 .net "out", 0 0, L_0x15777f0;  alias, 1 drivers
L_0x15777f0 .part/v L_0x1577aa0, v0x1499720_0, 1;
S_0x15022d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15776a0 .functor NAND 1, L_0x1577dc0, L_0x1576df0, C4<1>, C4<1>;
v0x15024f0_0 .net "A", 0 0, L_0x1577dc0;  alias, 1 drivers
v0x1502600_0 .net "B", 0 0, L_0x1576df0;  alias, 1 drivers
v0x15026c0_0 .net "out", 0 0, L_0x15776a0;  1 drivers
S_0x15027d0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1577710 .functor NOR 1, L_0x1577dc0, L_0x1576df0, C4<0>, C4<0>;
v0x1502a40_0 .net "A", 0 0, L_0x1577dc0;  alias, 1 drivers
v0x1502b00_0 .net "B", 0 0, L_0x1576df0;  alias, 1 drivers
v0x1502c10_0 .net "out", 0 0, L_0x1577710;  1 drivers
S_0x1502d10 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1577780 .functor OR 1, L_0x1577dc0, L_0x1576df0, C4<0>, C4<0>;
v0x1502f30_0 .net "A", 0 0, L_0x1577dc0;  alias, 1 drivers
v0x1503080_0 .net "B", 0 0, L_0x1576df0;  alias, 1 drivers
v0x1503140_0 .net "out", 0 0, L_0x1577780;  1 drivers
S_0x1503240 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15645c0 .functor XOR 1, L_0x1576df0, L_0x1575ec0, C4<0>, C4<0>;
v0x1503410_0 .net "A", 0 0, L_0x1576df0;  alias, 1 drivers
v0x1503560_0 .net "B", 0 0, L_0x1575ec0;  1 drivers
v0x1503620_0 .net "out", 0 0, L_0x15645c0;  alias, 1 drivers
S_0x1503760 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1500c70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1577520 .functor XOR 1, L_0x1577dc0, L_0x1576df0, C4<0>, C4<0>;
v0x1503930_0 .net "A", 0 0, L_0x1577dc0;  alias, 1 drivers
v0x15039f0_0 .net "B", 0 0, L_0x1576df0;  alias, 1 drivers
v0x1503ab0_0 .net "out", 0 0, L_0x1577520;  1 drivers
S_0x1504640 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1578a60 .functor BUFZ 1, L_0x15782b0, C4<0>, C4<0>, C4<0>;
L_0x1578ad0 .functor BUFZ 1, L_0x15782b0, C4<0>, C4<0>, C4<0>;
v0x15075b0_0 .net "A", 0 0, L_0x1578ef0;  1 drivers
v0x1507650_0 .net "B", 0 0, L_0x1578f90;  1 drivers
v0x1507710_0 .net "I", 7 0, L_0x1578bd0;  1 drivers
v0x1507810_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x15078b0_0 .net *"_s15", 0 0, L_0x1578a60;  1 drivers
v0x15079c0_0 .net *"_s19", 0 0, L_0x1578ad0;  1 drivers
L_0x7fa42efdf9a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1507aa0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf9a8;  1 drivers
v0x1507b80_0 .net "addORsub", 0 0, L_0x15782b0;  1 drivers
v0x1507c20_0 .net "carryin", 0 0, L_0x1577e60;  1 drivers
v0x1507d80_0 .net "carryout", 0 0, L_0x15069c0;  1 drivers
v0x1507e50_0 .net "modB", 0 0, L_0x1576fc0;  1 drivers
v0x1507ef0_0 .net "out", 0 0, L_0x1578920;  1 drivers
L_0x1578110 .part v0x1499720_0, 0, 1;
LS_0x1578bd0_0_0 .concat8 [ 1 1 1 1], L_0x1578a60, L_0x1578ad0, L_0x1578650, L_0x7fa42efdf9a8;
LS_0x1578bd0_0_4 .concat8 [ 1 1 1 1], L_0x1506ea0, L_0x15787d0, L_0x1578840, L_0x15788b0;
L_0x1578bd0 .concat8 [ 4 4 0 0], LS_0x1578bd0_0_0, LS_0x1578bd0_0_4;
S_0x15048b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x15781b0 .functor XOR 1, L_0x1578ef0, L_0x1576fc0, C4<0>, C4<0>;
L_0x15782b0 .functor XOR 1, L_0x15781b0, L_0x1577e60, C4<0>, C4<0>;
L_0x1578370 .functor AND 1, L_0x15781b0, L_0x1577e60, C4<1>, C4<1>;
L_0x15783e0 .functor AND 1, L_0x1578ef0, L_0x1576fc0, C4<1>, C4<1>;
L_0x15069c0 .functor OR 1, L_0x1578370, L_0x15783e0, C4<0>, C4<0>;
v0x1504b50_0 .net "A", 0 0, L_0x1578ef0;  alias, 1 drivers
v0x1504c30_0 .net "B", 0 0, L_0x1576fc0;  alias, 1 drivers
v0x1504cf0_0 .net "carryin", 0 0, L_0x1577e60;  alias, 1 drivers
v0x1504dc0_0 .net "carryout", 0 0, L_0x15069c0;  alias, 1 drivers
v0x1504e80_0 .net "out1", 0 0, L_0x15781b0;  1 drivers
v0x1504f90_0 .net "out2", 0 0, L_0x1578370;  1 drivers
v0x1505050_0 .net "out3", 0 0, L_0x15783e0;  1 drivers
v0x1505110_0 .net "sum", 0 0, L_0x15782b0;  alias, 1 drivers
S_0x1505270 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1506ea0 .functor AND 1, L_0x1578ef0, L_0x1578f90, C4<1>, C4<1>;
v0x15054b0_0 .net "A", 0 0, L_0x1578ef0;  alias, 1 drivers
v0x1505570_0 .net "B", 0 0, L_0x1578f90;  alias, 1 drivers
v0x1505610_0 .net "out", 0 0, L_0x1506ea0;  1 drivers
S_0x1505760 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x15059b0_0 .net "I", 7 0, L_0x1578bd0;  alias, 1 drivers
v0x1505a90_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1505b50_0 .net "out", 0 0, L_0x1578920;  alias, 1 drivers
L_0x1578920 .part/v L_0x1578bd0, v0x1499720_0, 1;
S_0x1505ca0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15787d0 .functor NAND 1, L_0x1578ef0, L_0x1578f90, C4<1>, C4<1>;
v0x1505ec0_0 .net "A", 0 0, L_0x1578ef0;  alias, 1 drivers
v0x1505fd0_0 .net "B", 0 0, L_0x1578f90;  alias, 1 drivers
v0x1506090_0 .net "out", 0 0, L_0x15787d0;  1 drivers
S_0x15061a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1578840 .functor NOR 1, L_0x1578ef0, L_0x1578f90, C4<0>, C4<0>;
v0x1506410_0 .net "A", 0 0, L_0x1578ef0;  alias, 1 drivers
v0x15064d0_0 .net "B", 0 0, L_0x1578f90;  alias, 1 drivers
v0x15065e0_0 .net "out", 0 0, L_0x1578840;  1 drivers
S_0x15066e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15788b0 .functor OR 1, L_0x1578ef0, L_0x1578f90, C4<0>, C4<0>;
v0x1506900_0 .net "A", 0 0, L_0x1578ef0;  alias, 1 drivers
v0x1506a50_0 .net "B", 0 0, L_0x1578f90;  alias, 1 drivers
v0x1506b10_0 .net "out", 0 0, L_0x15788b0;  1 drivers
S_0x1506c10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1576fc0 .functor XOR 1, L_0x1578f90, L_0x1578110, C4<0>, C4<0>;
v0x1506de0_0 .net "A", 0 0, L_0x1578f90;  alias, 1 drivers
v0x1506f30_0 .net "B", 0 0, L_0x1578110;  1 drivers
v0x1506ff0_0 .net "out", 0 0, L_0x1576fc0;  alias, 1 drivers
S_0x1507130 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1504640;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1578650 .functor XOR 1, L_0x1578ef0, L_0x1578f90, C4<0>, C4<0>;
v0x1507300_0 .net "A", 0 0, L_0x1578ef0;  alias, 1 drivers
v0x15073c0_0 .net "B", 0 0, L_0x1578f90;  alias, 1 drivers
v0x1507480_0 .net "out", 0 0, L_0x1578650;  1 drivers
S_0x1508010 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1579b80 .functor BUFZ 1, L_0x1579380, C4<0>, C4<0>, C4<0>;
L_0x1579bf0 .functor BUFZ 1, L_0x1579380, C4<0>, C4<0>, C4<0>;
v0x150af80_0 .net "A", 0 0, L_0x157a010;  1 drivers
v0x150b020_0 .net "B", 0 0, L_0x1579030;  1 drivers
v0x150b0e0_0 .net "I", 7 0, L_0x1579cf0;  1 drivers
v0x150b1e0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x150b280_0 .net *"_s15", 0 0, L_0x1579b80;  1 drivers
v0x150b390_0 .net *"_s19", 0 0, L_0x1579bf0;  1 drivers
L_0x7fa42efdf9f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x150b470_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf9f0;  1 drivers
v0x150b550_0 .net "addORsub", 0 0, L_0x1579380;  1 drivers
v0x150b5f0_0 .net "carryin", 0 0, L_0x1567e50;  1 drivers
v0x150b750_0 .net "carryout", 0 0, L_0x150a390;  1 drivers
v0x150b820_0 .net "modB", 0 0, L_0x1577f90;  1 drivers
v0x150b8c0_0 .net "out", 0 0, L_0x1579a40;  1 drivers
L_0x1578000 .part v0x1499720_0, 0, 1;
LS_0x1579cf0_0_0 .concat8 [ 1 1 1 1], L_0x1579b80, L_0x1579bf0, L_0x1579770, L_0x7fa42efdf9f0;
LS_0x1579cf0_0_4 .concat8 [ 1 1 1 1], L_0x150a870, L_0x15798f0, L_0x1579960, L_0x15799d0;
L_0x1579cf0 .concat8 [ 4 4 0 0], LS_0x1579cf0_0_0, LS_0x1579cf0_0_4;
S_0x1508280 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x15780a0 .functor XOR 1, L_0x157a010, L_0x1577f90, C4<0>, C4<0>;
L_0x1579380 .functor XOR 1, L_0x15780a0, L_0x1567e50, C4<0>, C4<0>;
L_0x1579490 .functor AND 1, L_0x15780a0, L_0x1567e50, C4<1>, C4<1>;
L_0x1579500 .functor AND 1, L_0x157a010, L_0x1577f90, C4<1>, C4<1>;
L_0x150a390 .functor OR 1, L_0x1579490, L_0x1579500, C4<0>, C4<0>;
v0x1508520_0 .net "A", 0 0, L_0x157a010;  alias, 1 drivers
v0x1508600_0 .net "B", 0 0, L_0x1577f90;  alias, 1 drivers
v0x15086c0_0 .net "carryin", 0 0, L_0x1567e50;  alias, 1 drivers
v0x1508790_0 .net "carryout", 0 0, L_0x150a390;  alias, 1 drivers
v0x1508850_0 .net "out1", 0 0, L_0x15780a0;  1 drivers
v0x1508960_0 .net "out2", 0 0, L_0x1579490;  1 drivers
v0x1508a20_0 .net "out3", 0 0, L_0x1579500;  1 drivers
v0x1508ae0_0 .net "sum", 0 0, L_0x1579380;  alias, 1 drivers
S_0x1508c40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x150a870 .functor AND 1, L_0x157a010, L_0x1579030, C4<1>, C4<1>;
v0x1508e80_0 .net "A", 0 0, L_0x157a010;  alias, 1 drivers
v0x1508f40_0 .net "B", 0 0, L_0x1579030;  alias, 1 drivers
v0x1508fe0_0 .net "out", 0 0, L_0x150a870;  1 drivers
S_0x1509130 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1509380_0 .net "I", 7 0, L_0x1579cf0;  alias, 1 drivers
v0x1509460_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1509520_0 .net "out", 0 0, L_0x1579a40;  alias, 1 drivers
L_0x1579a40 .part/v L_0x1579cf0, v0x1499720_0, 1;
S_0x1509670 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15798f0 .functor NAND 1, L_0x157a010, L_0x1579030, C4<1>, C4<1>;
v0x1509890_0 .net "A", 0 0, L_0x157a010;  alias, 1 drivers
v0x15099a0_0 .net "B", 0 0, L_0x1579030;  alias, 1 drivers
v0x1509a60_0 .net "out", 0 0, L_0x15798f0;  1 drivers
S_0x1509b70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1579960 .functor NOR 1, L_0x157a010, L_0x1579030, C4<0>, C4<0>;
v0x1509de0_0 .net "A", 0 0, L_0x157a010;  alias, 1 drivers
v0x1509ea0_0 .net "B", 0 0, L_0x1579030;  alias, 1 drivers
v0x1509fb0_0 .net "out", 0 0, L_0x1579960;  1 drivers
S_0x150a0b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15799d0 .functor OR 1, L_0x157a010, L_0x1579030, C4<0>, C4<0>;
v0x150a2d0_0 .net "A", 0 0, L_0x157a010;  alias, 1 drivers
v0x150a420_0 .net "B", 0 0, L_0x1579030;  alias, 1 drivers
v0x150a4e0_0 .net "out", 0 0, L_0x15799d0;  1 drivers
S_0x150a5e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1577f90 .functor XOR 1, L_0x1579030, L_0x1578000, C4<0>, C4<0>;
v0x150a7b0_0 .net "A", 0 0, L_0x1579030;  alias, 1 drivers
v0x150a900_0 .net "B", 0 0, L_0x1578000;  1 drivers
v0x150a9c0_0 .net "out", 0 0, L_0x1577f90;  alias, 1 drivers
S_0x150ab00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1508010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1579770 .functor XOR 1, L_0x157a010, L_0x1579030, C4<0>, C4<0>;
v0x150acd0_0 .net "A", 0 0, L_0x157a010;  alias, 1 drivers
v0x150ad90_0 .net "B", 0 0, L_0x1579030;  alias, 1 drivers
v0x150ae50_0 .net "out", 0 0, L_0x1579770;  1 drivers
S_0x150b9e0 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x155c220 .functor BUFZ 1, L_0x155b980, C4<0>, C4<0>, C4<0>;
L_0x155c2b0 .functor BUFZ 1, L_0x155b980, C4<0>, C4<0>, C4<0>;
v0x150e950_0 .net "A", 0 0, L_0x155c6f0;  1 drivers
v0x150e9f0_0 .net "B", 0 0, L_0x155c790;  1 drivers
v0x150eab0_0 .net "I", 7 0, L_0x155c3d0;  1 drivers
v0x150ebb0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x150ec50_0 .net *"_s15", 0 0, L_0x155c220;  1 drivers
v0x150ed60_0 .net *"_s19", 0 0, L_0x155c2b0;  1 drivers
L_0x7fa42efdf2a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x150ee40_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf2a0;  1 drivers
v0x150ef20_0 .net "addORsub", 0 0, L_0x155b980;  1 drivers
v0x150efc0_0 .net "carryin", 0 0, L_0x155c830;  1 drivers
v0x150f120_0 .net "carryout", 0 0, L_0x150dd60;  1 drivers
v0x150f1f0_0 .net "modB", 0 0, L_0x155b700;  1 drivers
v0x150f290_0 .net "out", 0 0, L_0x155c0c0;  1 drivers
L_0x155b770 .part v0x1499720_0, 0, 1;
LS_0x155c3d0_0_0 .concat8 [ 1 1 1 1], L_0x155c220, L_0x155c2b0, L_0x155bdb0, L_0x7fa42efdf2a0;
LS_0x155c3d0_0_4 .concat8 [ 1 1 1 1], L_0x150e240, L_0x155bf30, L_0x155bfa0, L_0x155c030;
L_0x155c3d0 .concat8 [ 4 4 0 0], LS_0x155c3d0_0_0, LS_0x155c3d0_0_4;
S_0x150bc50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x155b860 .functor XOR 1, L_0x155c6f0, L_0x155b700, C4<0>, C4<0>;
L_0x155b980 .functor XOR 1, L_0x155b860, L_0x155c830, C4<0>, C4<0>;
L_0x155bab0 .functor AND 1, L_0x155b860, L_0x155c830, C4<1>, C4<1>;
L_0x155bb40 .functor AND 1, L_0x155c6f0, L_0x155b700, C4<1>, C4<1>;
L_0x150dd60 .functor OR 1, L_0x155bab0, L_0x155bb40, C4<0>, C4<0>;
v0x150bef0_0 .net "A", 0 0, L_0x155c6f0;  alias, 1 drivers
v0x150bfd0_0 .net "B", 0 0, L_0x155b700;  alias, 1 drivers
v0x150c090_0 .net "carryin", 0 0, L_0x155c830;  alias, 1 drivers
v0x150c160_0 .net "carryout", 0 0, L_0x150dd60;  alias, 1 drivers
v0x150c220_0 .net "out1", 0 0, L_0x155b860;  1 drivers
v0x150c330_0 .net "out2", 0 0, L_0x155bab0;  1 drivers
v0x150c3f0_0 .net "out3", 0 0, L_0x155bb40;  1 drivers
v0x150c4b0_0 .net "sum", 0 0, L_0x155b980;  alias, 1 drivers
S_0x150c610 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x150e240 .functor AND 1, L_0x155c6f0, L_0x155c790, C4<1>, C4<1>;
v0x150c850_0 .net "A", 0 0, L_0x155c6f0;  alias, 1 drivers
v0x150c910_0 .net "B", 0 0, L_0x155c790;  alias, 1 drivers
v0x150c9b0_0 .net "out", 0 0, L_0x150e240;  1 drivers
S_0x150cb00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x150cd50_0 .net "I", 7 0, L_0x155c3d0;  alias, 1 drivers
v0x150ce30_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x150cef0_0 .net "out", 0 0, L_0x155c0c0;  alias, 1 drivers
L_0x155c0c0 .part/v L_0x155c3d0, v0x1499720_0, 1;
S_0x150d040 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155bf30 .functor NAND 1, L_0x155c6f0, L_0x155c790, C4<1>, C4<1>;
v0x150d260_0 .net "A", 0 0, L_0x155c6f0;  alias, 1 drivers
v0x150d370_0 .net "B", 0 0, L_0x155c790;  alias, 1 drivers
v0x150d430_0 .net "out", 0 0, L_0x155bf30;  1 drivers
S_0x150d540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155bfa0 .functor NOR 1, L_0x155c6f0, L_0x155c790, C4<0>, C4<0>;
v0x150d7b0_0 .net "A", 0 0, L_0x155c6f0;  alias, 1 drivers
v0x150d870_0 .net "B", 0 0, L_0x155c790;  alias, 1 drivers
v0x150d980_0 .net "out", 0 0, L_0x155bfa0;  1 drivers
S_0x150da80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155c030 .functor OR 1, L_0x155c6f0, L_0x155c790, C4<0>, C4<0>;
v0x150dca0_0 .net "A", 0 0, L_0x155c6f0;  alias, 1 drivers
v0x150ddf0_0 .net "B", 0 0, L_0x155c790;  alias, 1 drivers
v0x150deb0_0 .net "out", 0 0, L_0x155c030;  1 drivers
S_0x150dfb0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155b700 .functor XOR 1, L_0x155c790, L_0x155b770, C4<0>, C4<0>;
v0x150e180_0 .net "A", 0 0, L_0x155c790;  alias, 1 drivers
v0x150e2d0_0 .net "B", 0 0, L_0x155b770;  1 drivers
v0x150e390_0 .net "out", 0 0, L_0x155b700;  alias, 1 drivers
S_0x150e4d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x150b9e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155bdb0 .functor XOR 1, L_0x155c6f0, L_0x155c790, C4<0>, C4<0>;
v0x150e6a0_0 .net "A", 0 0, L_0x155c6f0;  alias, 1 drivers
v0x150e760_0 .net "B", 0 0, L_0x155c790;  alias, 1 drivers
v0x150e820_0 .net "out", 0 0, L_0x155bdb0;  1 drivers
S_0x150f3b0 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x152c9d0 .functor BUFZ 1, L_0x1579200, C4<0>, C4<0>, C4<0>;
L_0x152ca60 .functor BUFZ 1, L_0x1579200, C4<0>, C4<0>, C4<0>;
v0x1512320_0 .net "A", 0 0, L_0x157bdc0;  1 drivers
v0x15123c0_0 .net "B", 0 0, L_0x157a790;  1 drivers
v0x1512480_0 .net "I", 7 0, L_0x152cb80;  1 drivers
v0x1512580_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1512620_0 .net *"_s15", 0 0, L_0x152c9d0;  1 drivers
v0x1512730_0 .net *"_s19", 0 0, L_0x152ca60;  1 drivers
L_0x7fa42efdfa38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1512810_0 .net/2s *"_s23", 0 0, L_0x7fa42efdfa38;  1 drivers
v0x15128f0_0 .net "addORsub", 0 0, L_0x1579200;  1 drivers
v0x1512990_0 .net "carryin", 0 0, L_0x157a830;  1 drivers
v0x1512af0_0 .net "carryout", 0 0, L_0x1511730;  1 drivers
v0x1512bc0_0 .net "modB", 0 0, L_0x1567f80;  1 drivers
v0x1512c60_0 .net "out", 0 0, L_0x152c870;  1 drivers
L_0x15790d0 .part v0x1499720_0, 0, 1;
LS_0x152cb80_0_0 .concat8 [ 1 1 1 1], L_0x152c9d0, L_0x152ca60, L_0x152c580, L_0x7fa42efdfa38;
LS_0x152cb80_0_4 .concat8 [ 1 1 1 1], L_0x1511c10, L_0x152c700, L_0x152c770, L_0x152c7e0;
L_0x152cb80 .concat8 [ 4 4 0 0], LS_0x152cb80_0_0, LS_0x152cb80_0_4;
S_0x150f620 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1567ff0 .functor XOR 1, L_0x157bdc0, L_0x1567f80, C4<0>, C4<0>;
L_0x1579200 .functor XOR 1, L_0x1567ff0, L_0x157a830, C4<0>, C4<0>;
L_0x157a0b0 .functor AND 1, L_0x1567ff0, L_0x157a830, C4<1>, C4<1>;
L_0x157a140 .functor AND 1, L_0x157bdc0, L_0x1567f80, C4<1>, C4<1>;
L_0x1511730 .functor OR 1, L_0x157a0b0, L_0x157a140, C4<0>, C4<0>;
v0x150f8c0_0 .net "A", 0 0, L_0x157bdc0;  alias, 1 drivers
v0x150f9a0_0 .net "B", 0 0, L_0x1567f80;  alias, 1 drivers
v0x150fa60_0 .net "carryin", 0 0, L_0x157a830;  alias, 1 drivers
v0x150fb30_0 .net "carryout", 0 0, L_0x1511730;  alias, 1 drivers
v0x150fbf0_0 .net "out1", 0 0, L_0x1567ff0;  1 drivers
v0x150fd00_0 .net "out2", 0 0, L_0x157a0b0;  1 drivers
v0x150fdc0_0 .net "out3", 0 0, L_0x157a140;  1 drivers
v0x150fe80_0 .net "sum", 0 0, L_0x1579200;  alias, 1 drivers
S_0x150ffe0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1511c10 .functor AND 1, L_0x157bdc0, L_0x157a790, C4<1>, C4<1>;
v0x1510220_0 .net "A", 0 0, L_0x157bdc0;  alias, 1 drivers
v0x15102e0_0 .net "B", 0 0, L_0x157a790;  alias, 1 drivers
v0x1510380_0 .net "out", 0 0, L_0x1511c10;  1 drivers
S_0x15104d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1510720_0 .net "I", 7 0, L_0x152cb80;  alias, 1 drivers
v0x1510800_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x15108c0_0 .net "out", 0 0, L_0x152c870;  alias, 1 drivers
L_0x152c870 .part/v L_0x152cb80, v0x1499720_0, 1;
S_0x1510a10 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x152c700 .functor NAND 1, L_0x157bdc0, L_0x157a790, C4<1>, C4<1>;
v0x1510c30_0 .net "A", 0 0, L_0x157bdc0;  alias, 1 drivers
v0x1510d40_0 .net "B", 0 0, L_0x157a790;  alias, 1 drivers
v0x1510e00_0 .net "out", 0 0, L_0x152c700;  1 drivers
S_0x1510f10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x152c770 .functor NOR 1, L_0x157bdc0, L_0x157a790, C4<0>, C4<0>;
v0x1511180_0 .net "A", 0 0, L_0x157bdc0;  alias, 1 drivers
v0x1511240_0 .net "B", 0 0, L_0x157a790;  alias, 1 drivers
v0x1511350_0 .net "out", 0 0, L_0x152c770;  1 drivers
S_0x1511450 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x152c7e0 .functor OR 1, L_0x157bdc0, L_0x157a790, C4<0>, C4<0>;
v0x1511670_0 .net "A", 0 0, L_0x157bdc0;  alias, 1 drivers
v0x15117c0_0 .net "B", 0 0, L_0x157a790;  alias, 1 drivers
v0x1511880_0 .net "out", 0 0, L_0x152c7e0;  1 drivers
S_0x1511980 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1567f80 .functor XOR 1, L_0x157a790, L_0x15790d0, C4<0>, C4<0>;
v0x1511b50_0 .net "A", 0 0, L_0x157a790;  alias, 1 drivers
v0x1511ca0_0 .net "B", 0 0, L_0x15790d0;  1 drivers
v0x1511d60_0 .net "out", 0 0, L_0x1567f80;  alias, 1 drivers
S_0x1511ea0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x150f3b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x152c580 .functor XOR 1, L_0x157bdc0, L_0x157a790, C4<0>, C4<0>;
v0x1512070_0 .net "A", 0 0, L_0x157bdc0;  alias, 1 drivers
v0x1512130_0 .net "B", 0 0, L_0x157a790;  alias, 1 drivers
v0x15121f0_0 .net "out", 0 0, L_0x152c580;  1 drivers
S_0x1512d80 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x157a960 .functor BUFZ 1, L_0x157c400, C4<0>, C4<0>, C4<0>;
L_0x157a9d0 .functor BUFZ 1, L_0x157c400, C4<0>, C4<0>, C4<0>;
v0x1516720_0 .net "A", 0 0, L_0x157d150;  1 drivers
v0x15167c0_0 .net "B", 0 0, L_0x157be60;  1 drivers
v0x1516880_0 .net "I", 7 0, L_0x157cc30;  1 drivers
v0x1516980_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1516a20_0 .net *"_s3", 0 0, L_0x157a960;  1 drivers
v0x1516b30_0 .net *"_s7", 0 0, L_0x157a9d0;  1 drivers
v0x1516c10_0 .net "as", 0 0, L_0x157c400;  1 drivers
v0x1516d00_0 .net "carryin", 0 0, L_0x157bf00;  1 drivers
v0x1516df0_0 .net "carryout", 0 0, L_0x1515110;  alias, 1 drivers
v0x1516f20_0 .net "modB", 0 0, L_0x157c1f0;  1 drivers
v0x1517010_0 .net "out", 0 0, L_0x157ca10;  1 drivers
v0x15170b0_0 .net "overflow", 0 0, L_0x157cb50;  alias, 1 drivers
L_0x157c260 .part v0x1499720_0, 0, 1;
LS_0x157cc30_0_0 .concat8 [ 1 1 1 1], L_0x157a960, L_0x157a9d0, L_0x157c740, L_0x157cbc0;
LS_0x157cc30_0_4 .concat8 [ 1 1 1 1], L_0x15155f0, L_0x157c8c0, L_0x157c930, L_0x157c9a0;
L_0x157cc30 .concat8 [ 4 4 0 0], LS_0x157cc30_0_0, LS_0x157cc30_0_4;
S_0x1513000 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x157c300 .functor XOR 1, L_0x157d150, L_0x157c1f0, C4<0>, C4<0>;
L_0x157c400 .functor XOR 1, L_0x157c300, L_0x157bf00, C4<0>, C4<0>;
L_0x157c470 .functor AND 1, L_0x157c300, L_0x157bf00, C4<1>, C4<1>;
L_0x157c570 .functor AND 1, L_0x157d150, L_0x157c1f0, C4<1>, C4<1>;
L_0x1515110 .functor OR 1, L_0x157c470, L_0x157c570, C4<0>, C4<0>;
v0x15132a0_0 .net "A", 0 0, L_0x157d150;  alias, 1 drivers
v0x1513380_0 .net "B", 0 0, L_0x157c1f0;  alias, 1 drivers
v0x1513440_0 .net "carryin", 0 0, L_0x157bf00;  alias, 1 drivers
v0x1513510_0 .net "carryout", 0 0, L_0x1515110;  alias, 1 drivers
v0x15135d0_0 .net "out1", 0 0, L_0x157c300;  1 drivers
v0x15136e0_0 .net "out2", 0 0, L_0x157c470;  1 drivers
v0x15137a0_0 .net "out3", 0 0, L_0x157c570;  1 drivers
v0x1513860_0 .net "sum", 0 0, L_0x157c400;  alias, 1 drivers
S_0x15139c0 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15155f0 .functor AND 1, L_0x157d150, L_0x157be60, C4<1>, C4<1>;
v0x1513c00_0 .net "A", 0 0, L_0x157d150;  alias, 1 drivers
v0x1513cc0_0 .net "B", 0 0, L_0x157be60;  alias, 1 drivers
v0x1513d60_0 .net "out", 0 0, L_0x15155f0;  1 drivers
S_0x1513eb0 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1514100_0 .net "I", 7 0, L_0x157cc30;  alias, 1 drivers
v0x15141e0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x15142a0_0 .net "out", 0 0, L_0x157ca10;  alias, 1 drivers
L_0x157ca10 .part/v L_0x157cc30, v0x1499720_0, 1;
S_0x15143f0 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157c8c0 .functor NAND 1, L_0x157d150, L_0x157be60, C4<1>, C4<1>;
v0x1514610_0 .net "A", 0 0, L_0x157d150;  alias, 1 drivers
v0x1514720_0 .net "B", 0 0, L_0x157be60;  alias, 1 drivers
v0x15147e0_0 .net "out", 0 0, L_0x157c8c0;  1 drivers
S_0x15148f0 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157c930 .functor NOR 1, L_0x157d150, L_0x157be60, C4<0>, C4<0>;
v0x1514b60_0 .net "A", 0 0, L_0x157d150;  alias, 1 drivers
v0x1514c20_0 .net "B", 0 0, L_0x157be60;  alias, 1 drivers
v0x1514d30_0 .net "out", 0 0, L_0x157c930;  1 drivers
S_0x1514e30 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157c9a0 .functor OR 1, L_0x157d150, L_0x157be60, C4<0>, C4<0>;
v0x1515050_0 .net "A", 0 0, L_0x157d150;  alias, 1 drivers
v0x15151a0_0 .net "B", 0 0, L_0x157be60;  alias, 1 drivers
v0x1515260_0 .net "out", 0 0, L_0x157c9a0;  1 drivers
S_0x1515360 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157c1f0 .functor XOR 1, L_0x157be60, L_0x157c260, C4<0>, C4<0>;
v0x1515530_0 .net "A", 0 0, L_0x157be60;  alias, 1 drivers
v0x1515680_0 .net "B", 0 0, L_0x157c260;  1 drivers
v0x1515740_0 .net "out", 0 0, L_0x157c1f0;  alias, 1 drivers
S_0x1515880 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157c740 .functor XOR 1, L_0x157d150, L_0x157be60, C4<0>, C4<0>;
v0x1515a50_0 .net "A", 0 0, L_0x157d150;  alias, 1 drivers
v0x1515b10_0 .net "B", 0 0, L_0x157be60;  alias, 1 drivers
v0x1515bd0_0 .net "out", 0 0, L_0x157c740;  1 drivers
S_0x1515d00 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157cb50 .functor XOR 1, L_0x157bf00, L_0x1515110, C4<0>, C4<0>;
v0x1515f60_0 .net "A", 0 0, L_0x157bf00;  alias, 1 drivers
v0x1516050_0 .net "B", 0 0, L_0x1515110;  alias, 1 drivers
v0x1516120_0 .net "out", 0 0, L_0x157cb50;  alias, 1 drivers
S_0x1516230 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0x1512d80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x157cbc0 .functor XOR 1, L_0x157cb50, L_0x157c400, C4<0>, C4<0>;
v0x1516450_0 .net "A", 0 0, L_0x157cb50;  alias, 1 drivers
v0x1516540_0 .net "B", 0 0, L_0x157c400;  alias, 1 drivers
v0x1516610_0 .net "out", 0 0, L_0x157cbc0;  1 drivers
S_0x15172a0 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x155d450 .functor BUFZ 1, L_0x155cc00, C4<0>, C4<0>, C4<0>;
L_0x155d4e0 .functor BUFZ 1, L_0x155cc00, C4<0>, C4<0>, C4<0>;
v0x151a120_0 .net "A", 0 0, L_0x155d920;  1 drivers
v0x151a1c0_0 .net "B", 0 0, L_0x155d9c0;  1 drivers
v0x151a280_0 .net "I", 7 0, L_0x155d600;  1 drivers
v0x151a380_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x151a420_0 .net *"_s15", 0 0, L_0x155d450;  1 drivers
v0x151a530_0 .net *"_s19", 0 0, L_0x155d4e0;  1 drivers
L_0x7fa42efdf2e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x151a610_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf2e8;  1 drivers
v0x151a6f0_0 .net "addORsub", 0 0, L_0x155cc00;  1 drivers
v0x151a790_0 .net "carryin", 0 0, L_0x155da60;  1 drivers
v0x151a8f0_0 .net "carryout", 0 0, L_0x1519530;  1 drivers
v0x151a9c0_0 .net "modB", 0 0, L_0x155c9d0;  1 drivers
v0x151aa60_0 .net "out", 0 0, L_0x155d2f0;  1 drivers
L_0x155ca40 .part v0x1499720_0, 0, 1;
LS_0x155d600_0_0 .concat8 [ 1 1 1 1], L_0x155d450, L_0x155d4e0, L_0x155cfe0, L_0x7fa42efdf2e8;
LS_0x155d600_0_4 .concat8 [ 1 1 1 1], L_0x1519a10, L_0x155d160, L_0x155d1d0, L_0x155d260;
L_0x155d600 .concat8 [ 4 4 0 0], LS_0x155d600_0_0, LS_0x155d600_0_4;
S_0x1517510 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x155cae0 .functor XOR 1, L_0x155d920, L_0x155c9d0, C4<0>, C4<0>;
L_0x155cc00 .functor XOR 1, L_0x155cae0, L_0x155da60, C4<0>, C4<0>;
L_0x155cce0 .functor AND 1, L_0x155cae0, L_0x155da60, C4<1>, C4<1>;
L_0x155cd70 .functor AND 1, L_0x155d920, L_0x155c9d0, C4<1>, C4<1>;
L_0x1519530 .functor OR 1, L_0x155cce0, L_0x155cd70, C4<0>, C4<0>;
v0x1517780_0 .net "A", 0 0, L_0x155d920;  alias, 1 drivers
v0x1517860_0 .net "B", 0 0, L_0x155c9d0;  alias, 1 drivers
v0x1517920_0 .net "carryin", 0 0, L_0x155da60;  alias, 1 drivers
v0x15179c0_0 .net "carryout", 0 0, L_0x1519530;  alias, 1 drivers
v0x1517a80_0 .net "out1", 0 0, L_0x155cae0;  1 drivers
v0x1517b90_0 .net "out2", 0 0, L_0x155cce0;  1 drivers
v0x1517c50_0 .net "out3", 0 0, L_0x155cd70;  1 drivers
v0x1517d10_0 .net "sum", 0 0, L_0x155cc00;  alias, 1 drivers
S_0x1517e70 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1519a10 .functor AND 1, L_0x155d920, L_0x155d9c0, C4<1>, C4<1>;
v0x15180b0_0 .net "A", 0 0, L_0x155d920;  alias, 1 drivers
v0x1518170_0 .net "B", 0 0, L_0x155d9c0;  alias, 1 drivers
v0x1518210_0 .net "out", 0 0, L_0x1519a10;  1 drivers
S_0x1518330 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1518550_0 .net "I", 7 0, L_0x155d600;  alias, 1 drivers
v0x1518630_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x15186f0_0 .net "out", 0 0, L_0x155d2f0;  alias, 1 drivers
L_0x155d2f0 .part/v L_0x155d600, v0x1499720_0, 1;
S_0x1518810 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155d160 .functor NAND 1, L_0x155d920, L_0x155d9c0, C4<1>, C4<1>;
v0x1518a30_0 .net "A", 0 0, L_0x155d920;  alias, 1 drivers
v0x1518b40_0 .net "B", 0 0, L_0x155d9c0;  alias, 1 drivers
v0x1518c00_0 .net "out", 0 0, L_0x155d160;  1 drivers
S_0x1518d10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155d1d0 .functor NOR 1, L_0x155d920, L_0x155d9c0, C4<0>, C4<0>;
v0x1518f80_0 .net "A", 0 0, L_0x155d920;  alias, 1 drivers
v0x1519040_0 .net "B", 0 0, L_0x155d9c0;  alias, 1 drivers
v0x1519150_0 .net "out", 0 0, L_0x155d1d0;  1 drivers
S_0x1519250 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155d260 .functor OR 1, L_0x155d920, L_0x155d9c0, C4<0>, C4<0>;
v0x1519470_0 .net "A", 0 0, L_0x155d920;  alias, 1 drivers
v0x15195c0_0 .net "B", 0 0, L_0x155d9c0;  alias, 1 drivers
v0x1519680_0 .net "out", 0 0, L_0x155d260;  1 drivers
S_0x1519780 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155c9d0 .functor XOR 1, L_0x155d9c0, L_0x155ca40, C4<0>, C4<0>;
v0x1519950_0 .net "A", 0 0, L_0x155d9c0;  alias, 1 drivers
v0x1519aa0_0 .net "B", 0 0, L_0x155ca40;  1 drivers
v0x1519b60_0 .net "out", 0 0, L_0x155c9d0;  alias, 1 drivers
S_0x1519ca0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x15172a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155cfe0 .functor XOR 1, L_0x155d920, L_0x155d9c0, C4<0>, C4<0>;
v0x1519e70_0 .net "A", 0 0, L_0x155d920;  alias, 1 drivers
v0x1519f30_0 .net "B", 0 0, L_0x155d9c0;  alias, 1 drivers
v0x1519ff0_0 .net "out", 0 0, L_0x155cfe0;  1 drivers
S_0x151ab80 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x155e530 .functor BUFZ 1, L_0x155dde0, C4<0>, C4<0>, C4<0>;
L_0x155e5a0 .functor BUFZ 1, L_0x155dde0, C4<0>, C4<0>, C4<0>;
v0x151daf0_0 .net "A", 0 0, L_0x155e9c0;  1 drivers
v0x151db90_0 .net "B", 0 0, L_0x155eaf0;  1 drivers
v0x151dc50_0 .net "I", 7 0, L_0x155e6a0;  1 drivers
v0x151dd50_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x151ddf0_0 .net *"_s15", 0 0, L_0x155e530;  1 drivers
v0x151df00_0 .net *"_s19", 0 0, L_0x155e5a0;  1 drivers
L_0x7fa42efdf330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x151dfe0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf330;  1 drivers
v0x151e0c0_0 .net "addORsub", 0 0, L_0x155dde0;  1 drivers
v0x151e160_0 .net "carryin", 0 0, L_0x155eca0;  1 drivers
v0x151e2c0_0 .net "carryout", 0 0, L_0x151cf00;  1 drivers
v0x151e390_0 .net "modB", 0 0, L_0x155c960;  1 drivers
v0x151e430_0 .net "out", 0 0, L_0x155e3f0;  1 drivers
L_0x155dc20 .part v0x1499720_0, 0, 1;
LS_0x155e6a0_0_0 .concat8 [ 1 1 1 1], L_0x155e530, L_0x155e5a0, L_0x155e120, L_0x7fa42efdf330;
LS_0x155e6a0_0_4 .concat8 [ 1 1 1 1], L_0x151d3e0, L_0x155e2a0, L_0x155e310, L_0x155e380;
L_0x155e6a0 .concat8 [ 4 4 0 0], LS_0x155e6a0_0_0, LS_0x155e6a0_0_4;
S_0x151adf0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x155dcc0 .functor XOR 1, L_0x155e9c0, L_0x155c960, C4<0>, C4<0>;
L_0x155dde0 .functor XOR 1, L_0x155dcc0, L_0x155eca0, C4<0>, C4<0>;
L_0x155dec0 .functor AND 1, L_0x155dcc0, L_0x155eca0, C4<1>, C4<1>;
L_0x155df50 .functor AND 1, L_0x155e9c0, L_0x155c960, C4<1>, C4<1>;
L_0x151cf00 .functor OR 1, L_0x155dec0, L_0x155df50, C4<0>, C4<0>;
v0x151b090_0 .net "A", 0 0, L_0x155e9c0;  alias, 1 drivers
v0x151b170_0 .net "B", 0 0, L_0x155c960;  alias, 1 drivers
v0x151b230_0 .net "carryin", 0 0, L_0x155eca0;  alias, 1 drivers
v0x151b300_0 .net "carryout", 0 0, L_0x151cf00;  alias, 1 drivers
v0x151b3c0_0 .net "out1", 0 0, L_0x155dcc0;  1 drivers
v0x151b4d0_0 .net "out2", 0 0, L_0x155dec0;  1 drivers
v0x151b590_0 .net "out3", 0 0, L_0x155df50;  1 drivers
v0x151b650_0 .net "sum", 0 0, L_0x155dde0;  alias, 1 drivers
S_0x151b7b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x151d3e0 .functor AND 1, L_0x155e9c0, L_0x155eaf0, C4<1>, C4<1>;
v0x151b9f0_0 .net "A", 0 0, L_0x155e9c0;  alias, 1 drivers
v0x151bab0_0 .net "B", 0 0, L_0x155eaf0;  alias, 1 drivers
v0x151bb50_0 .net "out", 0 0, L_0x151d3e0;  1 drivers
S_0x151bca0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x151bef0_0 .net "I", 7 0, L_0x155e6a0;  alias, 1 drivers
v0x151bfd0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x151c090_0 .net "out", 0 0, L_0x155e3f0;  alias, 1 drivers
L_0x155e3f0 .part/v L_0x155e6a0, v0x1499720_0, 1;
S_0x151c1e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155e2a0 .functor NAND 1, L_0x155e9c0, L_0x155eaf0, C4<1>, C4<1>;
v0x151c400_0 .net "A", 0 0, L_0x155e9c0;  alias, 1 drivers
v0x151c510_0 .net "B", 0 0, L_0x155eaf0;  alias, 1 drivers
v0x151c5d0_0 .net "out", 0 0, L_0x155e2a0;  1 drivers
S_0x151c6e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155e310 .functor NOR 1, L_0x155e9c0, L_0x155eaf0, C4<0>, C4<0>;
v0x151c950_0 .net "A", 0 0, L_0x155e9c0;  alias, 1 drivers
v0x151ca10_0 .net "B", 0 0, L_0x155eaf0;  alias, 1 drivers
v0x151cb20_0 .net "out", 0 0, L_0x155e310;  1 drivers
S_0x151cc20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155e380 .functor OR 1, L_0x155e9c0, L_0x155eaf0, C4<0>, C4<0>;
v0x151ce40_0 .net "A", 0 0, L_0x155e9c0;  alias, 1 drivers
v0x151cf90_0 .net "B", 0 0, L_0x155eaf0;  alias, 1 drivers
v0x151d050_0 .net "out", 0 0, L_0x155e380;  1 drivers
S_0x151d150 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155c960 .functor XOR 1, L_0x155eaf0, L_0x155dc20, C4<0>, C4<0>;
v0x151d320_0 .net "A", 0 0, L_0x155eaf0;  alias, 1 drivers
v0x151d470_0 .net "B", 0 0, L_0x155dc20;  1 drivers
v0x151d530_0 .net "out", 0 0, L_0x155c960;  alias, 1 drivers
S_0x151d670 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x151ab80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155e120 .functor XOR 1, L_0x155e9c0, L_0x155eaf0, C4<0>, C4<0>;
v0x151d840_0 .net "A", 0 0, L_0x155e9c0;  alias, 1 drivers
v0x151d900_0 .net "B", 0 0, L_0x155eaf0;  alias, 1 drivers
v0x151d9c0_0 .net "out", 0 0, L_0x155e120;  1 drivers
S_0x151e550 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x155f780 .functor BUFZ 1, L_0x155ef80, C4<0>, C4<0>, C4<0>;
L_0x155f7f0 .functor BUFZ 1, L_0x155ef80, C4<0>, C4<0>, C4<0>;
v0x15214c0_0 .net "A", 0 0, L_0x155fc10;  1 drivers
v0x1521560_0 .net "B", 0 0, L_0x155fcb0;  1 drivers
v0x1521620_0 .net "I", 7 0, L_0x155f8f0;  1 drivers
v0x1521720_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x15217c0_0 .net *"_s15", 0 0, L_0x155f780;  1 drivers
v0x15218d0_0 .net *"_s19", 0 0, L_0x155f7f0;  1 drivers
L_0x7fa42efdf378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x15219b0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf378;  1 drivers
v0x1521a90_0 .net "addORsub", 0 0, L_0x155ef80;  1 drivers
v0x1521b30_0 .net "carryin", 0 0, L_0x155ed40;  1 drivers
v0x1521c90_0 .net "carryout", 0 0, L_0x15208d0;  1 drivers
v0x1521d60_0 .net "modB", 0 0, L_0x155ea60;  1 drivers
v0x1521e00_0 .net "out", 0 0, L_0x155f640;  1 drivers
L_0x155ede0 .part v0x1499720_0, 0, 1;
LS_0x155f8f0_0_0 .concat8 [ 1 1 1 1], L_0x155f780, L_0x155f7f0, L_0x155f370, L_0x7fa42efdf378;
LS_0x155f8f0_0_4 .concat8 [ 1 1 1 1], L_0x1520db0, L_0x155f4f0, L_0x155f560, L_0x155f5d0;
L_0x155f8f0 .concat8 [ 4 4 0 0], LS_0x155f8f0_0_0, LS_0x155f8f0_0_4;
S_0x151e7c0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x155ee80 .functor XOR 1, L_0x155fc10, L_0x155ea60, C4<0>, C4<0>;
L_0x155ef80 .functor XOR 1, L_0x155ee80, L_0x155ed40, C4<0>, C4<0>;
L_0x155f090 .functor AND 1, L_0x155ee80, L_0x155ed40, C4<1>, C4<1>;
L_0x155f100 .functor AND 1, L_0x155fc10, L_0x155ea60, C4<1>, C4<1>;
L_0x15208d0 .functor OR 1, L_0x155f090, L_0x155f100, C4<0>, C4<0>;
v0x151ea60_0 .net "A", 0 0, L_0x155fc10;  alias, 1 drivers
v0x151eb40_0 .net "B", 0 0, L_0x155ea60;  alias, 1 drivers
v0x151ec00_0 .net "carryin", 0 0, L_0x155ed40;  alias, 1 drivers
v0x151ecd0_0 .net "carryout", 0 0, L_0x15208d0;  alias, 1 drivers
v0x151ed90_0 .net "out1", 0 0, L_0x155ee80;  1 drivers
v0x151eea0_0 .net "out2", 0 0, L_0x155f090;  1 drivers
v0x151ef60_0 .net "out3", 0 0, L_0x155f100;  1 drivers
v0x151f020_0 .net "sum", 0 0, L_0x155ef80;  alias, 1 drivers
S_0x151f180 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1520db0 .functor AND 1, L_0x155fc10, L_0x155fcb0, C4<1>, C4<1>;
v0x151f3c0_0 .net "A", 0 0, L_0x155fc10;  alias, 1 drivers
v0x151f480_0 .net "B", 0 0, L_0x155fcb0;  alias, 1 drivers
v0x151f520_0 .net "out", 0 0, L_0x1520db0;  1 drivers
S_0x151f670 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x151f8c0_0 .net "I", 7 0, L_0x155f8f0;  alias, 1 drivers
v0x151f9a0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x151fa60_0 .net "out", 0 0, L_0x155f640;  alias, 1 drivers
L_0x155f640 .part/v L_0x155f8f0, v0x1499720_0, 1;
S_0x151fbb0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155f4f0 .functor NAND 1, L_0x155fc10, L_0x155fcb0, C4<1>, C4<1>;
v0x151fdd0_0 .net "A", 0 0, L_0x155fc10;  alias, 1 drivers
v0x151fee0_0 .net "B", 0 0, L_0x155fcb0;  alias, 1 drivers
v0x151ffa0_0 .net "out", 0 0, L_0x155f4f0;  1 drivers
S_0x15200b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155f560 .functor NOR 1, L_0x155fc10, L_0x155fcb0, C4<0>, C4<0>;
v0x1520320_0 .net "A", 0 0, L_0x155fc10;  alias, 1 drivers
v0x15203e0_0 .net "B", 0 0, L_0x155fcb0;  alias, 1 drivers
v0x15204f0_0 .net "out", 0 0, L_0x155f560;  1 drivers
S_0x15205f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155f5d0 .functor OR 1, L_0x155fc10, L_0x155fcb0, C4<0>, C4<0>;
v0x1520810_0 .net "A", 0 0, L_0x155fc10;  alias, 1 drivers
v0x1520960_0 .net "B", 0 0, L_0x155fcb0;  alias, 1 drivers
v0x1520a20_0 .net "out", 0 0, L_0x155f5d0;  1 drivers
S_0x1520b20 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155ea60 .functor XOR 1, L_0x155fcb0, L_0x155ede0, C4<0>, C4<0>;
v0x1520cf0_0 .net "A", 0 0, L_0x155fcb0;  alias, 1 drivers
v0x1520e40_0 .net "B", 0 0, L_0x155ede0;  1 drivers
v0x1520f00_0 .net "out", 0 0, L_0x155ea60;  alias, 1 drivers
S_0x1521040 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x151e550;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155f370 .functor XOR 1, L_0x155fc10, L_0x155fcb0, C4<0>, C4<0>;
v0x1521210_0 .net "A", 0 0, L_0x155fc10;  alias, 1 drivers
v0x15212d0_0 .net "B", 0 0, L_0x155fcb0;  alias, 1 drivers
v0x1521390_0 .net "out", 0 0, L_0x155f370;  1 drivers
S_0x1521f20 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x15608a0 .functor BUFZ 1, L_0x15600a0, C4<0>, C4<0>, C4<0>;
L_0x1560910 .functor BUFZ 1, L_0x15600a0, C4<0>, C4<0>, C4<0>;
v0x1524e90_0 .net "A", 0 0, L_0x1560d30;  1 drivers
v0x1524f30_0 .net "B", 0 0, L_0x155fd50;  1 drivers
v0x1524ff0_0 .net "I", 7 0, L_0x1560a10;  1 drivers
v0x15250f0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1525190_0 .net *"_s15", 0 0, L_0x15608a0;  1 drivers
v0x15252a0_0 .net *"_s19", 0 0, L_0x1560910;  1 drivers
L_0x7fa42efdf3c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1525380_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf3c0;  1 drivers
v0x1525460_0 .net "addORsub", 0 0, L_0x15600a0;  1 drivers
v0x1525500_0 .net "carryin", 0 0, L_0x1560e90;  1 drivers
v0x1525660_0 .net "carryout", 0 0, L_0x15242a0;  1 drivers
v0x1525730_0 .net "modB", 0 0, L_0x155fe90;  1 drivers
v0x15257d0_0 .net "out", 0 0, L_0x1560760;  1 drivers
L_0x155ff00 .part v0x1499720_0, 0, 1;
LS_0x1560a10_0_0 .concat8 [ 1 1 1 1], L_0x15608a0, L_0x1560910, L_0x1560490, L_0x7fa42efdf3c0;
LS_0x1560a10_0_4 .concat8 [ 1 1 1 1], L_0x1524780, L_0x1560610, L_0x1560680, L_0x15606f0;
L_0x1560a10 .concat8 [ 4 4 0 0], LS_0x1560a10_0_0, LS_0x1560a10_0_4;
S_0x1522190 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x155ffa0 .functor XOR 1, L_0x1560d30, L_0x155fe90, C4<0>, C4<0>;
L_0x15600a0 .functor XOR 1, L_0x155ffa0, L_0x1560e90, C4<0>, C4<0>;
L_0x15601b0 .functor AND 1, L_0x155ffa0, L_0x1560e90, C4<1>, C4<1>;
L_0x1560220 .functor AND 1, L_0x1560d30, L_0x155fe90, C4<1>, C4<1>;
L_0x15242a0 .functor OR 1, L_0x15601b0, L_0x1560220, C4<0>, C4<0>;
v0x1522430_0 .net "A", 0 0, L_0x1560d30;  alias, 1 drivers
v0x1522510_0 .net "B", 0 0, L_0x155fe90;  alias, 1 drivers
v0x15225d0_0 .net "carryin", 0 0, L_0x1560e90;  alias, 1 drivers
v0x15226a0_0 .net "carryout", 0 0, L_0x15242a0;  alias, 1 drivers
v0x1522760_0 .net "out1", 0 0, L_0x155ffa0;  1 drivers
v0x1522870_0 .net "out2", 0 0, L_0x15601b0;  1 drivers
v0x1522930_0 .net "out3", 0 0, L_0x1560220;  1 drivers
v0x15229f0_0 .net "sum", 0 0, L_0x15600a0;  alias, 1 drivers
S_0x1522b50 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1524780 .functor AND 1, L_0x1560d30, L_0x155fd50, C4<1>, C4<1>;
v0x1522d90_0 .net "A", 0 0, L_0x1560d30;  alias, 1 drivers
v0x1522e50_0 .net "B", 0 0, L_0x155fd50;  alias, 1 drivers
v0x1522ef0_0 .net "out", 0 0, L_0x1524780;  1 drivers
S_0x1523040 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1523290_0 .net "I", 7 0, L_0x1560a10;  alias, 1 drivers
v0x1523370_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1523430_0 .net "out", 0 0, L_0x1560760;  alias, 1 drivers
L_0x1560760 .part/v L_0x1560a10, v0x1499720_0, 1;
S_0x1523580 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1560610 .functor NAND 1, L_0x1560d30, L_0x155fd50, C4<1>, C4<1>;
v0x15237a0_0 .net "A", 0 0, L_0x1560d30;  alias, 1 drivers
v0x15238b0_0 .net "B", 0 0, L_0x155fd50;  alias, 1 drivers
v0x1523970_0 .net "out", 0 0, L_0x1560610;  1 drivers
S_0x1523a80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1560680 .functor NOR 1, L_0x1560d30, L_0x155fd50, C4<0>, C4<0>;
v0x1523cf0_0 .net "A", 0 0, L_0x1560d30;  alias, 1 drivers
v0x1523db0_0 .net "B", 0 0, L_0x155fd50;  alias, 1 drivers
v0x1523ec0_0 .net "out", 0 0, L_0x1560680;  1 drivers
S_0x1523fc0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15606f0 .functor OR 1, L_0x1560d30, L_0x155fd50, C4<0>, C4<0>;
v0x15241e0_0 .net "A", 0 0, L_0x1560d30;  alias, 1 drivers
v0x1524330_0 .net "B", 0 0, L_0x155fd50;  alias, 1 drivers
v0x15243f0_0 .net "out", 0 0, L_0x15606f0;  1 drivers
S_0x15244f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155fe90 .functor XOR 1, L_0x155fd50, L_0x155ff00, C4<0>, C4<0>;
v0x15246c0_0 .net "A", 0 0, L_0x155fd50;  alias, 1 drivers
v0x1524810_0 .net "B", 0 0, L_0x155ff00;  1 drivers
v0x15248d0_0 .net "out", 0 0, L_0x155fe90;  alias, 1 drivers
S_0x1524a10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1521f20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1560490 .functor XOR 1, L_0x1560d30, L_0x155fd50, C4<0>, C4<0>;
v0x1524be0_0 .net "A", 0 0, L_0x1560d30;  alias, 1 drivers
v0x1524ca0_0 .net "B", 0 0, L_0x155fd50;  alias, 1 drivers
v0x1524d60_0 .net "out", 0 0, L_0x1560490;  1 drivers
S_0x15258f0 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1561a60 .functor BUFZ 1, L_0x1561230, C4<0>, C4<0>, C4<0>;
L_0x1561af0 .functor BUFZ 1, L_0x1561230, C4<0>, C4<0>, C4<0>;
v0x1528860_0 .net "A", 0 0, L_0x1561f30;  1 drivers
v0x1528900_0 .net "B", 0 0, L_0x1561fd0;  1 drivers
v0x15289c0_0 .net "I", 7 0, L_0x1561c10;  1 drivers
v0x1528ac0_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1528b60_0 .net *"_s15", 0 0, L_0x1561a60;  1 drivers
v0x1528c70_0 .net *"_s19", 0 0, L_0x1561af0;  1 drivers
L_0x7fa42efdf408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1528d50_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf408;  1 drivers
v0x1528e30_0 .net "addORsub", 0 0, L_0x1561230;  1 drivers
v0x1528ed0_0 .net "carryin", 0 0, L_0x1560fc0;  1 drivers
v0x1529030_0 .net "carryout", 0 0, L_0x1527c70;  1 drivers
v0x1529100_0 .net "modB", 0 0, L_0x1560dd0;  1 drivers
v0x15291a0_0 .net "out", 0 0, L_0x1561900;  1 drivers
L_0x1561090 .part v0x1499720_0, 0, 1;
LS_0x1561c10_0_0 .concat8 [ 1 1 1 1], L_0x1561a60, L_0x1561af0, L_0x15615f0, L_0x7fa42efdf408;
LS_0x1561c10_0_4 .concat8 [ 1 1 1 1], L_0x1528150, L_0x1561770, L_0x15617e0, L_0x1561870;
L_0x1561c10 .concat8 [ 4 4 0 0], LS_0x1561c10_0_0, LS_0x1561c10_0_4;
S_0x1525b60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1561130 .functor XOR 1, L_0x1561f30, L_0x1560dd0, C4<0>, C4<0>;
L_0x1561230 .functor XOR 1, L_0x1561130, L_0x1560fc0, C4<0>, C4<0>;
L_0x15612f0 .functor AND 1, L_0x1561130, L_0x1560fc0, C4<1>, C4<1>;
L_0x1561380 .functor AND 1, L_0x1561f30, L_0x1560dd0, C4<1>, C4<1>;
L_0x1527c70 .functor OR 1, L_0x15612f0, L_0x1561380, C4<0>, C4<0>;
v0x1525e00_0 .net "A", 0 0, L_0x1561f30;  alias, 1 drivers
v0x1525ee0_0 .net "B", 0 0, L_0x1560dd0;  alias, 1 drivers
v0x1525fa0_0 .net "carryin", 0 0, L_0x1560fc0;  alias, 1 drivers
v0x1526070_0 .net "carryout", 0 0, L_0x1527c70;  alias, 1 drivers
v0x1526130_0 .net "out1", 0 0, L_0x1561130;  1 drivers
v0x1526240_0 .net "out2", 0 0, L_0x15612f0;  1 drivers
v0x1526300_0 .net "out3", 0 0, L_0x1561380;  1 drivers
v0x15263c0_0 .net "sum", 0 0, L_0x1561230;  alias, 1 drivers
S_0x1526520 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1528150 .functor AND 1, L_0x1561f30, L_0x1561fd0, C4<1>, C4<1>;
v0x1526760_0 .net "A", 0 0, L_0x1561f30;  alias, 1 drivers
v0x1526820_0 .net "B", 0 0, L_0x1561fd0;  alias, 1 drivers
v0x15268c0_0 .net "out", 0 0, L_0x1528150;  1 drivers
S_0x1526a10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1526c60_0 .net "I", 7 0, L_0x1561c10;  alias, 1 drivers
v0x1526d40_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x1526e00_0 .net "out", 0 0, L_0x1561900;  alias, 1 drivers
L_0x1561900 .part/v L_0x1561c10, v0x1499720_0, 1;
S_0x1526f50 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1561770 .functor NAND 1, L_0x1561f30, L_0x1561fd0, C4<1>, C4<1>;
v0x1527170_0 .net "A", 0 0, L_0x1561f30;  alias, 1 drivers
v0x1527280_0 .net "B", 0 0, L_0x1561fd0;  alias, 1 drivers
v0x1527340_0 .net "out", 0 0, L_0x1561770;  1 drivers
S_0x1527450 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15617e0 .functor NOR 1, L_0x1561f30, L_0x1561fd0, C4<0>, C4<0>;
v0x15276c0_0 .net "A", 0 0, L_0x1561f30;  alias, 1 drivers
v0x1527780_0 .net "B", 0 0, L_0x1561fd0;  alias, 1 drivers
v0x1527890_0 .net "out", 0 0, L_0x15617e0;  1 drivers
S_0x1527990 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1561870 .functor OR 1, L_0x1561f30, L_0x1561fd0, C4<0>, C4<0>;
v0x1527bb0_0 .net "A", 0 0, L_0x1561f30;  alias, 1 drivers
v0x1527d00_0 .net "B", 0 0, L_0x1561fd0;  alias, 1 drivers
v0x1527dc0_0 .net "out", 0 0, L_0x1561870;  1 drivers
S_0x1527ec0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1560dd0 .functor XOR 1, L_0x1561fd0, L_0x1561090, C4<0>, C4<0>;
v0x1528090_0 .net "A", 0 0, L_0x1561fd0;  alias, 1 drivers
v0x15281e0_0 .net "B", 0 0, L_0x1561090;  1 drivers
v0x15282a0_0 .net "out", 0 0, L_0x1560dd0;  alias, 1 drivers
S_0x15283e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x15258f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15615f0 .functor XOR 1, L_0x1561f30, L_0x1561fd0, C4<0>, C4<0>;
v0x15285b0_0 .net "A", 0 0, L_0x1561f30;  alias, 1 drivers
v0x1528670_0 .net "B", 0 0, L_0x1561fd0;  alias, 1 drivers
v0x1528730_0 .net "out", 0 0, L_0x15615f0;  1 drivers
S_0x15292c0 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0x14a3fe0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1562d10 .functor BUFZ 1, L_0x1562490, C4<0>, C4<0>, C4<0>;
L_0x1562da0 .functor BUFZ 1, L_0x1562490, C4<0>, C4<0>, C4<0>;
v0x152c230_0 .net "A", 0 0, L_0x15631e0;  1 drivers
v0x152c2d0_0 .net "B", 0 0, L_0x1562070;  1 drivers
v0x152c390_0 .net "I", 7 0, L_0x1562ec0;  1 drivers
v0x152c490_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x14f1bf0_0 .net *"_s15", 0 0, L_0x1562d10;  1 drivers
v0x14f1d00_0 .net *"_s19", 0 0, L_0x1562da0;  1 drivers
L_0x7fa42efdf450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x14f1de0_0 .net/2s *"_s23", 0 0, L_0x7fa42efdf450;  1 drivers
v0x14f1ec0_0 .net "addORsub", 0 0, L_0x1562490;  1 drivers
v0x14f1f60_0 .net "carryin", 0 0, L_0x1563490;  1 drivers
v0x152ce00_0 .net "carryout", 0 0, L_0x152b640;  1 drivers
v0x152ced0_0 .net "modB", 0 0, L_0x155db90;  1 drivers
v0x152cf70_0 .net "out", 0 0, L_0x1562bb0;  1 drivers
L_0x15622f0 .part v0x1499720_0, 0, 1;
LS_0x1562ec0_0_0 .concat8 [ 1 1 1 1], L_0x1562d10, L_0x1562da0, L_0x15628a0, L_0x7fa42efdf450;
LS_0x1562ec0_0_4 .concat8 [ 1 1 1 1], L_0x152bb20, L_0x1562a20, L_0x1562a90, L_0x1562b20;
L_0x1562ec0 .concat8 [ 4 4 0 0], LS_0x1562ec0_0_0, LS_0x1562ec0_0_4;
S_0x1529530 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1562390 .functor XOR 1, L_0x15631e0, L_0x155db90, C4<0>, C4<0>;
L_0x1562490 .functor XOR 1, L_0x1562390, L_0x1563490, C4<0>, C4<0>;
L_0x15625a0 .functor AND 1, L_0x1562390, L_0x1563490, C4<1>, C4<1>;
L_0x1562630 .functor AND 1, L_0x15631e0, L_0x155db90, C4<1>, C4<1>;
L_0x152b640 .functor OR 1, L_0x15625a0, L_0x1562630, C4<0>, C4<0>;
v0x15297d0_0 .net "A", 0 0, L_0x15631e0;  alias, 1 drivers
v0x15298b0_0 .net "B", 0 0, L_0x155db90;  alias, 1 drivers
v0x1529970_0 .net "carryin", 0 0, L_0x1563490;  alias, 1 drivers
v0x1529a40_0 .net "carryout", 0 0, L_0x152b640;  alias, 1 drivers
v0x1529b00_0 .net "out1", 0 0, L_0x1562390;  1 drivers
v0x1529c10_0 .net "out2", 0 0, L_0x15625a0;  1 drivers
v0x1529cd0_0 .net "out3", 0 0, L_0x1562630;  1 drivers
v0x1529d90_0 .net "sum", 0 0, L_0x1562490;  alias, 1 drivers
S_0x1529ef0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x152bb20 .functor AND 1, L_0x15631e0, L_0x1562070, C4<1>, C4<1>;
v0x152a130_0 .net "A", 0 0, L_0x15631e0;  alias, 1 drivers
v0x152a1f0_0 .net "B", 0 0, L_0x1562070;  alias, 1 drivers
v0x152a290_0 .net "out", 0 0, L_0x152bb20;  1 drivers
S_0x152a3e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x152a630_0 .net "I", 7 0, L_0x1562ec0;  alias, 1 drivers
v0x152a710_0 .net "S", 2 0, v0x1499720_0;  alias, 1 drivers
v0x152a7d0_0 .net "out", 0 0, L_0x1562bb0;  alias, 1 drivers
L_0x1562bb0 .part/v L_0x1562ec0, v0x1499720_0, 1;
S_0x152a920 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1562a20 .functor NAND 1, L_0x15631e0, L_0x1562070, C4<1>, C4<1>;
v0x152ab40_0 .net "A", 0 0, L_0x15631e0;  alias, 1 drivers
v0x152ac50_0 .net "B", 0 0, L_0x1562070;  alias, 1 drivers
v0x152ad10_0 .net "out", 0 0, L_0x1562a20;  1 drivers
S_0x152ae20 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1562a90 .functor NOR 1, L_0x15631e0, L_0x1562070, C4<0>, C4<0>;
v0x152b090_0 .net "A", 0 0, L_0x15631e0;  alias, 1 drivers
v0x152b150_0 .net "B", 0 0, L_0x1562070;  alias, 1 drivers
v0x152b260_0 .net "out", 0 0, L_0x1562a90;  1 drivers
S_0x152b360 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1562b20 .functor OR 1, L_0x15631e0, L_0x1562070, C4<0>, C4<0>;
v0x152b580_0 .net "A", 0 0, L_0x15631e0;  alias, 1 drivers
v0x152b6d0_0 .net "B", 0 0, L_0x1562070;  alias, 1 drivers
v0x152b790_0 .net "out", 0 0, L_0x1562b20;  1 drivers
S_0x152b890 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x155db90 .functor XOR 1, L_0x1562070, L_0x15622f0, C4<0>, C4<0>;
v0x152ba60_0 .net "A", 0 0, L_0x1562070;  alias, 1 drivers
v0x152bbb0_0 .net "B", 0 0, L_0x15622f0;  1 drivers
v0x152bc70_0 .net "out", 0 0, L_0x155db90;  alias, 1 drivers
S_0x152bdb0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x15292c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x15628a0 .functor XOR 1, L_0x15631e0, L_0x1562070, C4<0>, C4<0>;
v0x152bf80_0 .net "A", 0 0, L_0x15631e0;  alias, 1 drivers
v0x152c040_0 .net "B", 0 0, L_0x1562070;  alias, 1 drivers
v0x152c100_0 .net "out", 0 0, L_0x15628a0;  1 drivers
S_0x152f7e0 .scope module, "mem" "memory" 4 51, 10 1 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "dmWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x15441c0 .functor BUFZ 32, L_0x1544120, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1544370 .functor BUFZ 32, L_0x1544280, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1544510 .functor BUFZ 32, L_0x1544470, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x152fa90_0 .net "Addr0", 31 0, L_0x15445d0;  1 drivers
v0x152fb90_0 .net "DataIn0", 31 0, L_0x15587c0;  alias, 1 drivers
v0x152fc70_0 .net "DataOut0", 31 0, L_0x1544370;  alias, 1 drivers
v0x152fd60_0 .net *"_s0", 31 0, L_0x1544120;  1 drivers
v0x152fe40_0 .net *"_s4", 31 0, L_0x1544280;  1 drivers
v0x152ff70_0 .net *"_s8", 31 0, L_0x1544470;  1 drivers
v0x1530050_0 .net "clk", 0 0, v0x1541ad0_0;  alias, 1 drivers
v0x15300f0_0 .net "dmWE", 0 0, v0x14954f0_0;  alias, 1 drivers
v0x15301c0_0 .net "instruct_Addr1", 31 0, L_0x1544810;  1 drivers
v0x15302f0_0 .net "instruct_DataOut1", 31 0, L_0x1544510;  alias, 1 drivers
v0x15303e0 .array "mem", 0 32767, 31 0;
v0x1530480_0 .net "memAtAdd", 31 0, L_0x15441c0;  1 drivers
E_0x152fa10 .event posedge, v0x1490f00_0;
L_0x1544120 .array/port v0x15303e0, L_0x15445d0;
L_0x1544280 .array/port v0x15303e0, L_0x15445d0;
L_0x1544470 .array/port v0x15303e0, L_0x1544810;
S_0x1530680 .scope module, "op_imm_mux" "mux2" 4 64, 11 1 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x15308c0_0 .net "input0", 31 0, v0x148c9d0_0;  alias, 1 drivers
v0x15309d0_0 .net "input1", 31 0, L_0x15587c0;  alias, 1 drivers
v0x1530aa0_0 .net "out", 31 0, L_0x1580ab0;  alias, 1 drivers
v0x1530ba0_0 .net "select0", 0 0, v0x1476900_0;  alias, 1 drivers
L_0x1580ab0 .functor MUXZ 32, L_0x15587c0, v0x148c9d0_0, v0x1476900_0, C4<>;
S_0x1530cc0 .scope module, "pcmux" "pc_multiplexer" 4 48, 12 7 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x1530f90_0 .net "JumpAddress", 25 0, v0x1495130_0;  alias, 1 drivers
v0x15310a0_0 .var "PC", 31 0;
v0x1531160_0 .net "S", 1 0, v0x14af780_0;  alias, 1 drivers
v0x1531260_0 .net "clk", 0 0, v0x1541ad0_0;  alias, 1 drivers
v0x1531350_0 .net "immediate", 31 0, v0x148c9d0_0;  alias, 1 drivers
v0x1531490_0 .var "mux_out", 31 0;
v0x1531570_0 .var "nextPC", 31 0;
v0x1531650_0 .net "regRs", 31 0, L_0x1555f70;  alias, 1 drivers
v0x1531710_0 .var "tempimmediate", 31 0;
E_0x1530f30/0 .event edge, v0x14af780_0, v0x152d090_0, v0x148c9d0_0, v0x1495130_0;
E_0x1530f30/1 .event edge, v0x1531570_0;
E_0x1530f30 .event/or E_0x1530f30/0, E_0x1530f30/1;
S_0x1531960 .scope module, "reg_in_mux" "mux3_32bit" 4 63, 11 21 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x1531b60_0 .net *"_s1", 0 0, L_0x1580320;  1 drivers
v0x1531c60_0 .net *"_s10", 31 0, L_0x1580680;  1 drivers
v0x1531d40_0 .net *"_s3", 0 0, L_0x15803c0;  1 drivers
L_0x7fa42efdfb10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1531e00_0 .net/2u *"_s4", 31 0, L_0x7fa42efdfb10;  1 drivers
v0x1531ee0_0 .net *"_s6", 31 0, L_0x15804f0;  1 drivers
v0x1532010_0 .net *"_s9", 0 0, L_0x15805e0;  1 drivers
v0x15320f0_0 .net "input0", 31 0, L_0x157cfa0;  alias, 1 drivers
v0x15321b0_0 .net "input1", 31 0, L_0x1544370;  alias, 1 drivers
v0x1532280_0 .net "input2", 31 0, L_0x1580900;  1 drivers
v0x15323d0_0 .net "out", 31 0, L_0x1580770;  alias, 1 drivers
v0x15324b0_0 .net "select0", 1 0, v0x14723d0_0;  alias, 1 drivers
L_0x1580320 .part v0x14723d0_0, 1, 1;
L_0x15803c0 .part v0x14723d0_0, 0, 1;
L_0x15804f0 .functor MUXZ 32, L_0x1580900, L_0x7fa42efdfb10, L_0x15803c0, C4<>;
L_0x15805e0 .part v0x14723d0_0, 0, 1;
L_0x1580680 .functor MUXZ 32, L_0x157cfa0, L_0x1544370, L_0x15805e0, C4<>;
L_0x1580770 .functor MUXZ 32, L_0x1580680, L_0x15804f0, L_0x1580320, C4<>;
S_0x1532650 .scope module, "reg_select_mux" "mux3_5bit" 4 62, 11 11 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x1532850_0 .net *"_s1", 0 0, L_0x157f3c0;  1 drivers
v0x1532950_0 .net *"_s10", 4 0, L_0x1580050;  1 drivers
v0x1532a30_0 .net *"_s3", 0 0, L_0x157fe20;  1 drivers
L_0x7fa42efdfa80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x1532b20_0 .net/2u *"_s4", 4 0, L_0x7fa42efdfa80;  1 drivers
v0x1532c00_0 .net *"_s6", 4 0, L_0x157fec0;  1 drivers
v0x1532d30_0 .net *"_s9", 0 0, L_0x157ffb0;  1 drivers
v0x1532e10_0 .net "input0", 4 0, v0x1476600_0;  alias, 1 drivers
v0x1532ed0_0 .net "input1", 4 0, v0x146dd20_0;  alias, 1 drivers
L_0x7fa42efdfac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x1532fa0_0 .net "input2", 4 0, L_0x7fa42efdfac8;  1 drivers
v0x1533110_0 .net "out", 4 0, L_0x1580140;  alias, 1 drivers
v0x15331f0_0 .net "select0", 1 0, v0x1490b40_0;  alias, 1 drivers
L_0x157f3c0 .part v0x1490b40_0, 1, 1;
L_0x157fe20 .part v0x1490b40_0, 0, 1;
L_0x157fec0 .functor MUXZ 5, L_0x7fa42efdfac8, L_0x7fa42efdfa80, L_0x157fe20, C4<>;
L_0x157ffb0 .part v0x1490b40_0, 0, 1;
L_0x1580050 .functor MUXZ 5, v0x1476600_0, v0x146dd20_0, L_0x157ffb0, C4<>;
L_0x1580140 .functor MUXZ 5, L_0x1580050, L_0x157fec0, L_0x157f3c0, C4<>;
S_0x1533360 .scope module, "regi" "regfile" 4 57, 13 12 0, S_0x14c2b90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x153c840_0 .net "Clk", 0 0, v0x1541ad0_0;  alias, 1 drivers
v0x153f760_0 .net "ReadData1", 31 0, L_0x1555f70;  alias, 1 drivers
v0x153f800_0 .net "ReadData2", 31 0, L_0x15587c0;  alias, 1 drivers
v0x153f8a0_0 .net "ReadRegister1", 4 0, v0x1471f50_0;  alias, 1 drivers
v0x153f990_0 .net "ReadRegister2", 4 0, v0x146dd20_0;  alias, 1 drivers
v0x153fa80_0 .net "RegWrite", 0 0, v0x1472310_0;  alias, 1 drivers
v0x153fb70_0 .net "WriteData", 31 0, L_0x1580770;  alias, 1 drivers
v0x153fc30_0 .net "WriteRegister", 4 0, L_0x1580140;  alias, 1 drivers
v0x153fd20_0 .net "decoded", 31 0, L_0x1554a40;  1 drivers
v0x153fe70 .array "registers", 0 31, 31 0;
S_0x1533640 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x1533360;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x15338a0_0 .net *"_s0", 31 0, L_0x1544900;  1 drivers
L_0x7fa42efdf060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x15339a0_0 .net *"_s3", 30 0, L_0x7fa42efdf060;  1 drivers
v0x1533a80_0 .net "address", 4 0, L_0x1580140;  alias, 1 drivers
v0x1533b50_0 .net "enable", 0 0, v0x1472310_0;  alias, 1 drivers
v0x1533c20_0 .net "out", 31 0, L_0x1554a40;  alias, 1 drivers
L_0x1544900 .concat [ 1 31 0 0], v0x1472310_0, L_0x7fa42efdf060;
L_0x1554a40 .shift/l 32, L_0x1544900, L_0x1580140;
S_0x1533d90 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1533f80 .param/l "i" 0 13 33, +C4<01>;
S_0x1534040 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1534230 .param/l "i" 0 13 33, +C4<010>;
S_0x15342d0 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15344c0 .param/l "i" 0 13 33, +C4<011>;
S_0x1534580 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15347c0 .param/l "i" 0 13 33, +C4<0100>;
S_0x1534880 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1534a70 .param/l "i" 0 13 33, +C4<0101>;
S_0x1534b30 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1534d20 .param/l "i" 0 13 33, +C4<0110>;
S_0x1534de0 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1534fd0 .param/l "i" 0 13 33, +C4<0111>;
S_0x1535090 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1534770 .param/l "i" 0 13 33, +C4<01000>;
S_0x1535380 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1535570 .param/l "i" 0 13 33, +C4<01001>;
S_0x1535630 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1535820 .param/l "i" 0 13 33, +C4<01010>;
S_0x15358e0 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1535ad0 .param/l "i" 0 13 33, +C4<01011>;
S_0x1535b90 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1535d80 .param/l "i" 0 13 33, +C4<01100>;
S_0x1535e40 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1536030 .param/l "i" 0 13 33, +C4<01101>;
S_0x15360f0 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15362e0 .param/l "i" 0 13 33, +C4<01110>;
S_0x15363a0 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1536590 .param/l "i" 0 13 33, +C4<01111>;
S_0x1536650 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1535280 .param/l "i" 0 13 33, +C4<010000>;
S_0x15369a0 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1536b70 .param/l "i" 0 13 33, +C4<010001>;
S_0x1536c30 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1536e20 .param/l "i" 0 13 33, +C4<010010>;
S_0x1536ee0 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15370d0 .param/l "i" 0 13 33, +C4<010011>;
S_0x1537190 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1537380 .param/l "i" 0 13 33, +C4<010100>;
S_0x1537440 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1537630 .param/l "i" 0 13 33, +C4<010101>;
S_0x15376f0 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15378e0 .param/l "i" 0 13 33, +C4<010110>;
S_0x15379a0 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1537b90 .param/l "i" 0 13 33, +C4<010111>;
S_0x1537c50 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1537e40 .param/l "i" 0 13 33, +C4<011000>;
S_0x1537f00 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15380f0 .param/l "i" 0 13 33, +C4<011001>;
S_0x15381b0 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x15383a0 .param/l "i" 0 13 33, +C4<011010>;
S_0x1538460 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1538650 .param/l "i" 0 13 33, +C4<011011>;
S_0x1538710 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1538900 .param/l "i" 0 13 33, +C4<011100>;
S_0x15389c0 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1538bb0 .param/l "i" 0 13 33, +C4<011101>;
S_0x1538c70 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1538e60 .param/l "i" 0 13 33, +C4<011110>;
S_0x1538f20 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x1533360;
 .timescale 0 0;
P_0x1539110 .param/l "i" 0 13 33, +C4<011111>;
S_0x15391d0 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x1533360;
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
L_0x7fa42efdf0f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1554c10 .functor BUFZ 32, L_0x7fa42efdf0f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_1 .array/port v0x153fe70, 1;
L_0x1554c80 .functor BUFZ 32, v0x153fe70_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_2 .array/port v0x153fe70, 2;
L_0x1554cf0 .functor BUFZ 32, v0x153fe70_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_3 .array/port v0x153fe70, 3;
L_0x1554d60 .functor BUFZ 32, v0x153fe70_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_4 .array/port v0x153fe70, 4;
L_0x1554dd0 .functor BUFZ 32, v0x153fe70_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_5 .array/port v0x153fe70, 5;
L_0x1554e40 .functor BUFZ 32, v0x153fe70_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_6 .array/port v0x153fe70, 6;
L_0x1554eb0 .functor BUFZ 32, v0x153fe70_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_7 .array/port v0x153fe70, 7;
L_0x1554f20 .functor BUFZ 32, v0x153fe70_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_8 .array/port v0x153fe70, 8;
L_0x1554f90 .functor BUFZ 32, v0x153fe70_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_9 .array/port v0x153fe70, 9;
L_0x1555000 .functor BUFZ 32, v0x153fe70_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_10 .array/port v0x153fe70, 10;
L_0x15550d0 .functor BUFZ 32, v0x153fe70_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_11 .array/port v0x153fe70, 11;
L_0x1555140 .functor BUFZ 32, v0x153fe70_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_12 .array/port v0x153fe70, 12;
L_0x1555220 .functor BUFZ 32, v0x153fe70_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_13 .array/port v0x153fe70, 13;
L_0x1555290 .functor BUFZ 32, v0x153fe70_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_14 .array/port v0x153fe70, 14;
L_0x15551b0 .functor BUFZ 32, v0x153fe70_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_15 .array/port v0x153fe70, 15;
L_0x1555380 .functor BUFZ 32, v0x153fe70_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_16 .array/port v0x153fe70, 16;
L_0x1555480 .functor BUFZ 32, v0x153fe70_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_17 .array/port v0x153fe70, 17;
L_0x15554f0 .functor BUFZ 32, v0x153fe70_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_18 .array/port v0x153fe70, 18;
L_0x15553f0 .functor BUFZ 32, v0x153fe70_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_19 .array/port v0x153fe70, 19;
L_0x1555600 .functor BUFZ 32, v0x153fe70_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_20 .array/port v0x153fe70, 20;
L_0x1555560 .functor BUFZ 32, v0x153fe70_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_21 .array/port v0x153fe70, 21;
L_0x1555720 .functor BUFZ 32, v0x153fe70_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_22 .array/port v0x153fe70, 22;
L_0x1555670 .functor BUFZ 32, v0x153fe70_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_23 .array/port v0x153fe70, 23;
L_0x1555850 .functor BUFZ 32, v0x153fe70_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_24 .array/port v0x153fe70, 24;
L_0x1555790 .functor BUFZ 32, v0x153fe70_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_25 .array/port v0x153fe70, 25;
L_0x1555990 .functor BUFZ 32, v0x153fe70_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_26 .array/port v0x153fe70, 26;
L_0x15558c0 .functor BUFZ 32, v0x153fe70_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_27 .array/port v0x153fe70, 27;
L_0x1555ae0 .functor BUFZ 32, v0x153fe70_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_28 .array/port v0x153fe70, 28;
L_0x1555a00 .functor BUFZ 32, v0x153fe70_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_29 .array/port v0x153fe70, 29;
L_0x1555a70 .functor BUFZ 32, v0x153fe70_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_30 .array/port v0x153fe70, 30;
L_0x1555c50 .functor BUFZ 32, v0x153fe70_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x153fe70_31 .array/port v0x153fe70, 31;
L_0x1555cc0 .functor BUFZ 32, v0x153fe70_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1555f70 .functor BUFZ 32, L_0x1555b50, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fa42efdf0a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1536840_0 .net *"_s101", 1 0, L_0x7fa42efdf0a8;  1 drivers
v0x1539a10_0 .net *"_s96", 31 0, L_0x1555b50;  1 drivers
v0x1539ad0_0 .net *"_s98", 6 0, L_0x1555e40;  1 drivers
v0x1539bb0_0 .net "address", 4 0, v0x1471f50_0;  alias, 1 drivers
v0x1539c70_0 .net "input0", 31 0, L_0x7fa42efdf0f0;  1 drivers
v0x1539d80_0 .net "input1", 31 0, v0x153fe70_1;  1 drivers
v0x1539e60_0 .net "input10", 31 0, v0x153fe70_10;  1 drivers
v0x1539f40_0 .net "input11", 31 0, v0x153fe70_11;  1 drivers
v0x153a020_0 .net "input12", 31 0, v0x153fe70_12;  1 drivers
v0x153a190_0 .net "input13", 31 0, v0x153fe70_13;  1 drivers
v0x153a270_0 .net "input14", 31 0, v0x153fe70_14;  1 drivers
v0x153a350_0 .net "input15", 31 0, v0x153fe70_15;  1 drivers
v0x153a430_0 .net "input16", 31 0, v0x153fe70_16;  1 drivers
v0x153a510_0 .net "input17", 31 0, v0x153fe70_17;  1 drivers
v0x153a5f0_0 .net "input18", 31 0, v0x153fe70_18;  1 drivers
v0x153a6d0_0 .net "input19", 31 0, v0x153fe70_19;  1 drivers
v0x153a7b0_0 .net "input2", 31 0, v0x153fe70_2;  1 drivers
v0x153a960_0 .net "input20", 31 0, v0x153fe70_20;  1 drivers
v0x153aa00_0 .net "input21", 31 0, v0x153fe70_21;  1 drivers
v0x153aae0_0 .net "input22", 31 0, v0x153fe70_22;  1 drivers
v0x153abc0_0 .net "input23", 31 0, v0x153fe70_23;  1 drivers
v0x153aca0_0 .net "input24", 31 0, v0x153fe70_24;  1 drivers
v0x153ad80_0 .net "input25", 31 0, v0x153fe70_25;  1 drivers
v0x153ae60_0 .net "input26", 31 0, v0x153fe70_26;  1 drivers
v0x153af40_0 .net "input27", 31 0, v0x153fe70_27;  1 drivers
v0x153b020_0 .net "input28", 31 0, v0x153fe70_28;  1 drivers
v0x153b100_0 .net "input29", 31 0, v0x153fe70_29;  1 drivers
v0x153b1e0_0 .net "input3", 31 0, v0x153fe70_3;  1 drivers
v0x153b2c0_0 .net "input30", 31 0, v0x153fe70_30;  1 drivers
v0x153b3a0_0 .net "input31", 31 0, v0x153fe70_31;  1 drivers
v0x153b480_0 .net "input4", 31 0, v0x153fe70_4;  1 drivers
v0x153b560_0 .net "input5", 31 0, v0x153fe70_5;  1 drivers
v0x153b640_0 .net "input6", 31 0, v0x153fe70_6;  1 drivers
v0x153a890_0 .net "input7", 31 0, v0x153fe70_7;  1 drivers
v0x153b910_0 .net "input8", 31 0, v0x153fe70_8;  1 drivers
v0x153b9f0_0 .net "input9", 31 0, v0x153fe70_9;  1 drivers
v0x153bad0 .array "mux", 0 31;
v0x153bad0_0 .net v0x153bad0 0, 31 0, L_0x1554c10; 1 drivers
v0x153bad0_1 .net v0x153bad0 1, 31 0, L_0x1554c80; 1 drivers
v0x153bad0_2 .net v0x153bad0 2, 31 0, L_0x1554cf0; 1 drivers
v0x153bad0_3 .net v0x153bad0 3, 31 0, L_0x1554d60; 1 drivers
v0x153bad0_4 .net v0x153bad0 4, 31 0, L_0x1554dd0; 1 drivers
v0x153bad0_5 .net v0x153bad0 5, 31 0, L_0x1554e40; 1 drivers
v0x153bad0_6 .net v0x153bad0 6, 31 0, L_0x1554eb0; 1 drivers
v0x153bad0_7 .net v0x153bad0 7, 31 0, L_0x1554f20; 1 drivers
v0x153bad0_8 .net v0x153bad0 8, 31 0, L_0x1554f90; 1 drivers
v0x153bad0_9 .net v0x153bad0 9, 31 0, L_0x1555000; 1 drivers
v0x153bad0_10 .net v0x153bad0 10, 31 0, L_0x15550d0; 1 drivers
v0x153bad0_11 .net v0x153bad0 11, 31 0, L_0x1555140; 1 drivers
v0x153bad0_12 .net v0x153bad0 12, 31 0, L_0x1555220; 1 drivers
v0x153bad0_13 .net v0x153bad0 13, 31 0, L_0x1555290; 1 drivers
v0x153bad0_14 .net v0x153bad0 14, 31 0, L_0x15551b0; 1 drivers
v0x153bad0_15 .net v0x153bad0 15, 31 0, L_0x1555380; 1 drivers
v0x153bad0_16 .net v0x153bad0 16, 31 0, L_0x1555480; 1 drivers
v0x153bad0_17 .net v0x153bad0 17, 31 0, L_0x15554f0; 1 drivers
v0x153bad0_18 .net v0x153bad0 18, 31 0, L_0x15553f0; 1 drivers
v0x153bad0_19 .net v0x153bad0 19, 31 0, L_0x1555600; 1 drivers
v0x153bad0_20 .net v0x153bad0 20, 31 0, L_0x1555560; 1 drivers
v0x153bad0_21 .net v0x153bad0 21, 31 0, L_0x1555720; 1 drivers
v0x153bad0_22 .net v0x153bad0 22, 31 0, L_0x1555670; 1 drivers
v0x153bad0_23 .net v0x153bad0 23, 31 0, L_0x1555850; 1 drivers
v0x153bad0_24 .net v0x153bad0 24, 31 0, L_0x1555790; 1 drivers
v0x153bad0_25 .net v0x153bad0 25, 31 0, L_0x1555990; 1 drivers
v0x153bad0_26 .net v0x153bad0 26, 31 0, L_0x15558c0; 1 drivers
v0x153bad0_27 .net v0x153bad0 27, 31 0, L_0x1555ae0; 1 drivers
v0x153bad0_28 .net v0x153bad0 28, 31 0, L_0x1555a00; 1 drivers
v0x153bad0_29 .net v0x153bad0 29, 31 0, L_0x1555a70; 1 drivers
v0x153bad0_30 .net v0x153bad0 30, 31 0, L_0x1555c50; 1 drivers
v0x153bad0_31 .net v0x153bad0 31, 31 0, L_0x1555cc0; 1 drivers
v0x153c0a0_0 .net "out", 31 0, L_0x1555f70;  alias, 1 drivers
L_0x1555b50 .array/port v0x153bad0, L_0x1555e40;
L_0x1555e40 .concat [ 5 2 0 0], v0x1471f50_0, L_0x7fa42efdf0a8;
S_0x153c6c0 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x1533360;
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
L_0x7fa42efdf180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1555fe0 .functor BUFZ 32, L_0x7fa42efdf180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556050 .functor BUFZ 32, v0x153fe70_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556150 .functor BUFZ 32, v0x153fe70_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556250 .functor BUFZ 32, v0x153fe70_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556380 .functor BUFZ 32, v0x153fe70_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x15564b0 .functor BUFZ 32, v0x153fe70_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x15565e0 .functor BUFZ 32, v0x153fe70_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x15566e0 .functor BUFZ 32, v0x153fe70_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556810 .functor BUFZ 32, v0x153fe70_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556940 .functor BUFZ 32, v0x153fe70_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556a70 .functor BUFZ 32, v0x153fe70_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556ba0 .functor BUFZ 32, v0x153fe70_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556d40 .functor BUFZ 32, v0x153fe70_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556e70 .functor BUFZ 32, v0x153fe70_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1556cd0 .functor BUFZ 32, v0x153fe70_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557060 .functor BUFZ 32, v0x153fe70_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557220 .functor BUFZ 32, v0x153fe70_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557350 .functor BUFZ 32, v0x153fe70_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557190 .functor BUFZ 32, v0x153fe70_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x15575e0 .functor BUFZ 32, v0x153fe70_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557480 .functor BUFZ 32, v0x153fe70_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557850 .functor BUFZ 32, v0x153fe70_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557710 .functor BUFZ 32, v0x153fe70_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557ad0 .functor BUFZ 32, v0x153fe70_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557980 .functor BUFZ 32, v0x153fe70_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557d60 .functor BUFZ 32, v0x153fe70_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557c00 .functor BUFZ 32, v0x153fe70_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1558000 .functor BUFZ 32, v0x153fe70_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1557e90 .functor BUFZ 32, v0x153fe70_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1558280 .functor BUFZ 32, v0x153fe70_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1558100 .functor BUFZ 32, v0x153fe70_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1558510 .functor BUFZ 32, v0x153fe70_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x15587c0 .functor BUFZ 32, L_0x1558380, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fa42efdf138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1539600_0 .net *"_s101", 1 0, L_0x7fa42efdf138;  1 drivers
v0x153cce0_0 .net *"_s96", 31 0, L_0x1558380;  1 drivers
v0x153cde0_0 .net *"_s98", 6 0, L_0x1558720;  1 drivers
v0x153cea0_0 .net "address", 4 0, v0x146dd20_0;  alias, 1 drivers
v0x153cfb0_0 .net "input0", 31 0, L_0x7fa42efdf180;  1 drivers
v0x153d0a0_0 .net "input1", 31 0, v0x153fe70_1;  alias, 1 drivers
v0x153d140_0 .net "input10", 31 0, v0x153fe70_10;  alias, 1 drivers
v0x153d1e0_0 .net "input11", 31 0, v0x153fe70_11;  alias, 1 drivers
v0x153d2b0_0 .net "input12", 31 0, v0x153fe70_12;  alias, 1 drivers
v0x153d410_0 .net "input13", 31 0, v0x153fe70_13;  alias, 1 drivers
v0x153d4e0_0 .net "input14", 31 0, v0x153fe70_14;  alias, 1 drivers
v0x153d5b0_0 .net "input15", 31 0, v0x153fe70_15;  alias, 1 drivers
v0x153d680_0 .net "input16", 31 0, v0x153fe70_16;  alias, 1 drivers
v0x153d750_0 .net "input17", 31 0, v0x153fe70_17;  alias, 1 drivers
v0x153d820_0 .net "input18", 31 0, v0x153fe70_18;  alias, 1 drivers
v0x153d8f0_0 .net "input19", 31 0, v0x153fe70_19;  alias, 1 drivers
v0x153d9c0_0 .net "input2", 31 0, v0x153fe70_2;  alias, 1 drivers
v0x153db70_0 .net "input20", 31 0, v0x153fe70_20;  alias, 1 drivers
v0x153dc10_0 .net "input21", 31 0, v0x153fe70_21;  alias, 1 drivers
v0x153dcb0_0 .net "input22", 31 0, v0x153fe70_22;  alias, 1 drivers
v0x153dd80_0 .net "input23", 31 0, v0x153fe70_23;  alias, 1 drivers
v0x153de50_0 .net "input24", 31 0, v0x153fe70_24;  alias, 1 drivers
v0x153df20_0 .net "input25", 31 0, v0x153fe70_25;  alias, 1 drivers
v0x153dff0_0 .net "input26", 31 0, v0x153fe70_26;  alias, 1 drivers
v0x153e0c0_0 .net "input27", 31 0, v0x153fe70_27;  alias, 1 drivers
v0x153e190_0 .net "input28", 31 0, v0x153fe70_28;  alias, 1 drivers
v0x153e260_0 .net "input29", 31 0, v0x153fe70_29;  alias, 1 drivers
v0x153e330_0 .net "input3", 31 0, v0x153fe70_3;  alias, 1 drivers
v0x153e400_0 .net "input30", 31 0, v0x153fe70_30;  alias, 1 drivers
v0x153e4d0_0 .net "input31", 31 0, v0x153fe70_31;  alias, 1 drivers
v0x153e5a0_0 .net "input4", 31 0, v0x153fe70_4;  alias, 1 drivers
v0x153e670_0 .net "input5", 31 0, v0x153fe70_5;  alias, 1 drivers
v0x153e740_0 .net "input6", 31 0, v0x153fe70_6;  alias, 1 drivers
v0x153da90_0 .net "input7", 31 0, v0x153fe70_7;  alias, 1 drivers
v0x153e9f0_0 .net "input8", 31 0, v0x153fe70_8;  alias, 1 drivers
v0x153eac0_0 .net "input9", 31 0, v0x153fe70_9;  alias, 1 drivers
v0x153eb90 .array "mux", 0 31;
v0x153eb90_0 .net v0x153eb90 0, 31 0, L_0x1555fe0; 1 drivers
v0x153eb90_1 .net v0x153eb90 1, 31 0, L_0x1556050; 1 drivers
v0x153eb90_2 .net v0x153eb90 2, 31 0, L_0x1556150; 1 drivers
v0x153eb90_3 .net v0x153eb90 3, 31 0, L_0x1556250; 1 drivers
v0x153eb90_4 .net v0x153eb90 4, 31 0, L_0x1556380; 1 drivers
v0x153eb90_5 .net v0x153eb90 5, 31 0, L_0x15564b0; 1 drivers
v0x153eb90_6 .net v0x153eb90 6, 31 0, L_0x15565e0; 1 drivers
v0x153eb90_7 .net v0x153eb90 7, 31 0, L_0x15566e0; 1 drivers
v0x153eb90_8 .net v0x153eb90 8, 31 0, L_0x1556810; 1 drivers
v0x153eb90_9 .net v0x153eb90 9, 31 0, L_0x1556940; 1 drivers
v0x153eb90_10 .net v0x153eb90 10, 31 0, L_0x1556a70; 1 drivers
v0x153eb90_11 .net v0x153eb90 11, 31 0, L_0x1556ba0; 1 drivers
v0x153eb90_12 .net v0x153eb90 12, 31 0, L_0x1556d40; 1 drivers
v0x153eb90_13 .net v0x153eb90 13, 31 0, L_0x1556e70; 1 drivers
v0x153eb90_14 .net v0x153eb90 14, 31 0, L_0x1556cd0; 1 drivers
v0x153eb90_15 .net v0x153eb90 15, 31 0, L_0x1557060; 1 drivers
v0x153eb90_16 .net v0x153eb90 16, 31 0, L_0x1557220; 1 drivers
v0x153eb90_17 .net v0x153eb90 17, 31 0, L_0x1557350; 1 drivers
v0x153eb90_18 .net v0x153eb90 18, 31 0, L_0x1557190; 1 drivers
v0x153eb90_19 .net v0x153eb90 19, 31 0, L_0x15575e0; 1 drivers
v0x153eb90_20 .net v0x153eb90 20, 31 0, L_0x1557480; 1 drivers
v0x153eb90_21 .net v0x153eb90 21, 31 0, L_0x1557850; 1 drivers
v0x153eb90_22 .net v0x153eb90 22, 31 0, L_0x1557710; 1 drivers
v0x153eb90_23 .net v0x153eb90 23, 31 0, L_0x1557ad0; 1 drivers
v0x153eb90_24 .net v0x153eb90 24, 31 0, L_0x1557980; 1 drivers
v0x153eb90_25 .net v0x153eb90 25, 31 0, L_0x1557d60; 1 drivers
v0x153eb90_26 .net v0x153eb90 26, 31 0, L_0x1557c00; 1 drivers
v0x153eb90_27 .net v0x153eb90 27, 31 0, L_0x1558000; 1 drivers
v0x153eb90_28 .net v0x153eb90 28, 31 0, L_0x1557e90; 1 drivers
v0x153eb90_29 .net v0x153eb90 29, 31 0, L_0x1558280; 1 drivers
v0x153eb90_30 .net v0x153eb90 30, 31 0, L_0x1558100; 1 drivers
v0x153eb90_31 .net v0x153eb90 31, 31 0, L_0x1558510; 1 drivers
v0x153f140_0 .net "out", 31 0, L_0x15587c0;  alias, 1 drivers
L_0x1558380 .array/port v0x153eb90, L_0x1558720;
L_0x1558720 .concat [ 5 2 0 0], v0x146dd20_0, L_0x7fa42efdf138;
S_0x1466860 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7fa42f03fb08 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1542d10_0 .net "address", 4 0, o0x7fa42f03fb08;  0 drivers
o0x7fa42f03fb38 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1542e10_0 .net "inputs", 31 0, o0x7fa42f03fb38;  0 drivers
v0x1542ef0_0 .net "out", 0 0, L_0x1580b50;  1 drivers
L_0x1580b50 .part/v o0x7fa42f03fb38, o0x7fa42f03fb08, 1;
S_0x14621d0 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fa42f03fc28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1543030_0 .net "clk", 0 0, o0x7fa42f03fc28;  0 drivers
o0x7fa42f03fc58 .functor BUFZ 1, C4<z>; HiZ drive
v0x1543110_0 .net "d", 0 0, o0x7fa42f03fc58;  0 drivers
v0x15431d0_0 .var "q", 0 0;
o0x7fa42f03fcb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1543270_0 .net "wrenable", 0 0, o0x7fa42f03fcb8;  0 drivers
E_0x14ab220 .event posedge, v0x1543030_0;
S_0x145db40 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fa42f03fda8 .functor BUFZ 1, C4<z>; HiZ drive
v0x15433f0_0 .net "clk", 0 0, o0x7fa42f03fda8;  0 drivers
o0x7fa42f03fdd8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x15434d0_0 .net "d", 31 0, o0x7fa42f03fdd8;  0 drivers
v0x15435b0_0 .var "q", 31 0;
o0x7fa42f03fe38 .functor BUFZ 1, C4<z>; HiZ drive
v0x1543670_0 .net "wrenable", 0 0, o0x7fa42f03fe38;  0 drivers
E_0x153db30 .event posedge, v0x15433f0_0;
S_0x14c6900 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fa42f03ff28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1543830_0 .net "clk", 0 0, o0x7fa42f03ff28;  0 drivers
o0x7fa42f03ff58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1543910_0 .net "d", 31 0, o0x7fa42f03ff58;  0 drivers
v0x15439f0_0 .var "q", 31 0;
o0x7fa42f03ffb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1543ab0_0 .net "wrenable", 0 0, o0x7fa42f03ffb8;  0 drivers
E_0x15437b0 .event posedge, v0x1543830_0;
    .scope S_0x1530cc0;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x15310a0_0, 0;
    %end;
    .thread T_0;
    .scope S_0x1530cc0;
T_1 ;
    %wait E_0x1530f30;
    %load/vec4 v0x15310a0_0;
    %addi 4, 0, 32;
    %store/vec4 v0x1531570_0, 0, 32;
    %load/vec4 v0x1531160_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x1531570_0;
    %assign/vec4 v0x1531490_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x1531160_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x1530f90_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1531490_0, 4, 5;
    %load/vec4 v0x1531570_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1531490_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1531490_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x1531160_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x1531350_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x1531710_0, 0, 32;
    %load/vec4 v0x1531710_0;
    %load/vec4 v0x1531570_0;
    %add;
    %assign/vec4 v0x1531490_0, 0;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x1531650_0;
    %assign/vec4 v0x1531490_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x1530cc0;
T_2 ;
    %wait E_0x152fa10;
    %load/vec4 v0x1531490_0;
    %store/vec4 v0x15310a0_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x14be500;
T_3 ;
    %wait E_0x1439a30;
    %load/vec4 v0x144a800_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x144a740_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x14af780_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x144a800_0;
    %pushi/vec4 4, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x14ab560_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.2, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x14af780_0, 0, 2;
    %vpi_call 5 17 "$display", "I AM GOING TO BRANCH ON EQUAL: Flag = %b", v0x14ab560_0 {0 0 0};
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x144a800_0;
    %pushi/vec4 5, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x14ab560_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x14af780_0, 0, 2;
    %vpi_call 5 18 "$display", "I AM GOING TO BRANCH ON NOT EQUAL: Flag = %b", v0x14ab560_0 {0 0 0};
    %jmp T_3.5;
T_3.4 ;
    %load/vec4 v0x144a800_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x144a800_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.6, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x14af780_0, 0, 2;
    %jmp T_3.7;
T_3.6 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14af780_0, 0, 2;
T_3.7 ;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %vpi_call 5 21 "$display", "grrr,opcode: %b, zeroflag: %b, controlSig: %b", v0x144a800_0, v0x14ab560_0, v0x14af780_0 {0 0 0};
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x152f7e0;
T_4 ;
    %wait E_0x152fa10;
    %load/vec4 v0x15300f0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x152fb90_0;
    %ix/getv 3, v0x152fa90_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x15303e0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x152f7e0;
T_5 ;
    %vpi_call 10 20 "$readmemh", "fib2.text", v0x15303e0 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x14a8670;
T_6 ;
    %wait E_0x1499b80;
    %load/vec4 v0x148c550_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x148c9d0_0, 4, 16;
    %jmp T_6.1;
T_6.0 ;
    %pushi/vec4 65535, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x148c9d0_0, 4, 16;
T_6.1 ;
    %load/vec4 v0x148c550_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x14769c0_0, 0, 6;
    %load/vec4 v0x148c550_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x148c910_0, 0, 6;
    %load/vec4 v0x148c550_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x1471f50_0, 0, 5;
    %load/vec4 v0x148c550_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x146dd20_0, 0, 5;
    %load/vec4 v0x148c550_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x1476600_0, 0, 5;
    %load/vec4 v0x148c550_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x146ddc0_0, 0, 6;
    %load/vec4 v0x148c550_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x148c9d0_0, 4, 16;
    %load/vec4 v0x148c550_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x1495130_0, 0, 26;
    %load/vec4 v0x14769c0_0;
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
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.5 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.6 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.8 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.9 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x148c910_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x148c910_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x148c910_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
    %jmp T_6.17;
T_6.16 ;
    %load/vec4 v0x148c910_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.18, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1472310_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1499720_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1476900_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14954f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1490b40_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x14723d0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x14955b0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1476540_0, 0, 2;
T_6.18 ;
T_6.17 ;
T_6.15 ;
T_6.13 ;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x1533d90;
T_7 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x1534040;
T_8 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x15342d0;
T_9 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x1534580;
T_10 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x1534880;
T_11 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x1534b30;
T_12 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x1534de0;
T_13 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x1535090;
T_14 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x1535380;
T_15 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x1535630;
T_16 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x15358e0;
T_17 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x1535b90;
T_18 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x1535e40;
T_19 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x15360f0;
T_20 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x15363a0;
T_21 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x1536650;
T_22 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x15369a0;
T_23 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x1536c30;
T_24 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x1536ee0;
T_25 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x1537190;
T_26 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x1537440;
T_27 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x15376f0;
T_28 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x15379a0;
T_29 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x1537c50;
T_30 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x1537f00;
T_31 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x15381b0;
T_32 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x1538460;
T_33 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x1538710;
T_34 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x15389c0;
T_35 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x1538c70;
T_36 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x1538f20;
T_37 ;
    %wait E_0x152fa10;
    %load/vec4 v0x153fd20_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x153fb70_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x153fe70, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x14695f0;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1541ad0_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x14695f0;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x1541ad0_0;
    %nor/r;
    %store/vec4 v0x1541ad0_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x14695f0;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x1542bb0_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x1542c70_0 {0 0 0};
    %delay 1000000, 0;
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x14621d0;
T_41 ;
    %wait E_0x14ab220;
    %load/vec4 v0x1543270_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x1543110_0;
    %assign/vec4 v0x15431d0_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x145db40;
T_42 ;
    %wait E_0x153db30;
    %load/vec4 v0x1543670_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x15434d0_0;
    %assign/vec4 v0x15435b0_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x14c6900;
T_43 ;
    %wait E_0x15437b0;
    %load/vec4 v0x1543ab0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x15439f0_0, 0;
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
