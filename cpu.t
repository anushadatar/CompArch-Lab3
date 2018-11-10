#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x19b6b40 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7fb90a11b018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7fb90a11b048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1a702f0 .functor XOR 1, o0x7fb90a11b018, o0x7fb90a11b048, C4<0>, C4<0>;
o0x7fb90a11b078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1a714d0 .functor XOR 1, L_0x1a702f0, o0x7fb90a11b078, C4<0>, C4<0>;
L_0x1a71540 .functor AND 1, L_0x1a702f0, o0x7fb90a11b078, C4<1>, C4<1>;
L_0x1a71600 .functor AND 1, o0x7fb90a11b018, o0x7fb90a11b048, C4<1>, C4<1>;
L_0x1a71710 .functor OR 1, L_0x1a71540, L_0x1a71600, C4<0>, C4<0>;
L_0x1a71820 .functor XOR 1, L_0x1a71710, o0x7fb90a11b078, C4<0>, C4<0>;
v0x1944880_0 .net "A", 0 0, o0x7fb90a11b018;  0 drivers
v0x195b3d0_0 .net "B", 0 0, o0x7fb90a11b048;  0 drivers
v0x194fd10_0 .net "carryin", 0 0, o0x7fb90a11b078;  0 drivers
v0x1991c50_0 .net "carryout", 0 0, L_0x1a71710;  1 drivers
v0x1991d10_0 .net "out1", 0 0, L_0x1a702f0;  1 drivers
v0x1991890_0 .net "out2", 0 0, L_0x1a71540;  1 drivers
v0x1991950_0 .net "out3", 0 0, L_0x1a71600;  1 drivers
v0x198d680_0 .net "overflow", 0 0, L_0x1a71820;  1 drivers
v0x198d2a0_0 .net "sum", 0 0, L_0x1a714d0;  1 drivers
S_0x1939b40 .scope module, "mux32to1by1" "mux32to1by1" 3 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7fb90a11b2e8 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x19890f0_0 .net "address", 4 0, o0x7fb90a11b2e8;  0 drivers
o0x7fb90a11b318 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1988cd0_0 .net "inputs", 31 0, o0x7fb90a11b318;  0 drivers
v0x19f2630_0 .net "out", 0 0, L_0x1a718e0;  1 drivers
L_0x1a718e0 .part/v o0x7fb90a11b318, o0x7fb90a11b2e8, 1;
S_0x19c6760 .scope module, "register" "register" 4 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fb90a11b408 .functor BUFZ 1, C4<z>; HiZ drive
v0x19f2270_0 .net "clk", 0 0, o0x7fb90a11b408;  0 drivers
o0x7fb90a11b438 .functor BUFZ 1, C4<z>; HiZ drive
v0x19f2330_0 .net "d", 0 0, o0x7fb90a11b438;  0 drivers
v0x19ee040_0 .var "q", 0 0;
o0x7fb90a11b498 .functor BUFZ 1, C4<z>; HiZ drive
v0x19edc80_0 .net "wrenable", 0 0, o0x7fb90a11b498;  0 drivers
E_0x196f0d0 .event posedge, v0x19f2270_0;
S_0x199c0e0 .scope module, "register32" "register32" 4 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fb90a11b588 .functor BUFZ 1, C4<z>; HiZ drive
v0x19e9a50_0 .net "clk", 0 0, o0x7fb90a11b588;  0 drivers
o0x7fb90a11b5b8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x19e9690_0 .net "d", 31 0, o0x7fb90a11b5b8;  0 drivers
v0x19d3a70_0 .var "q", 31 0;
o0x7fb90a11b618 .functor BUFZ 1, C4<z>; HiZ drive
v0x19d3b30_0 .net "wrenable", 0 0, o0x7fb90a11b618;  0 drivers
E_0x19ee110 .event posedge, v0x19e9a50_0;
S_0x19fc180 .scope module, "register32zero" "register32zero" 4 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7fb90a11b708 .functor BUFZ 1, C4<z>; HiZ drive
v0x19d36f0_0 .net "clk", 0 0, o0x7fb90a11b708;  0 drivers
o0x7fb90a11b738 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x19cf480_0 .net "d", 31 0, o0x7fb90a11b738;  0 drivers
v0x19cf0c0_0 .var "q", 31 0;
o0x7fb90a11b798 .functor BUFZ 1, C4<z>; HiZ drive
v0x19cf180_0 .net "wrenable", 0 0, o0x7fb90a11b798;  0 drivers
E_0x19e97b0 .event posedge, v0x19d36f0_0;
S_0x19f8410 .scope module, "singlecycleCPU" "singlecycleCPU" 5 21;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x1a6f3f0_0 .net "ALU_op", 2 0, v0x19b4ae0_0;  1 drivers
v0x1a6f4d0_0 .net "DM_WE", 0 0, v0x19b0890_0;  1 drivers
v0x1a6f590_0 .net "DM_add", 0 0, v0x19b0950_0;  1 drivers
v0x1a6f630_0 .net "JumpAddress", 25 0, v0x19b04d0_0;  1 drivers
v0x1a6f6d0_0 .net "PC", 31 0, v0x1a5f9e0_0;  1 drivers
v0x1a6f7c0_0 .net "S", 1 0, v0x19caad0_0;  1 drivers
L_0x7fb90a0d2b58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x1a6f860_0 .net/2u *"_s10", 31 0, L_0x7fb90a0d2b58;  1 drivers
v0x1a6f900_0 .net *"_s4", 29 0, L_0x1a71e30;  1 drivers
L_0x7fb90a0d2018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1a6f9c0_0 .net *"_s6", 1 0, L_0x7fb90a0d2018;  1 drivers
v0x1a6fb30_0 .net "alu2", 31 0, L_0x1aae470;  1 drivers
v0x1a6fbf0_0 .net "alu_out", 31 0, L_0x1aaa880;  1 drivers
o0x7fb90a11bac8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1a6fd00_0 .net "clk", 0 0, o0x7fb90a11bac8;  0 drivers
v0x1a6fe30_0 .net "co_flag", 0 0, L_0x1a43c20;  1 drivers
v0x1a6ff60_0 .net "dataMem", 31 0, L_0x1a71a20;  1 drivers
v0x1a70020_0 .net "dest_add", 1 0, v0x19abee0_0;  1 drivers
v0x1a700e0_0 .net "funct", 5 0, v0x19a7cb0_0;  1 drivers
v0x1a701f0_0 .net "immediate", 31 0, v0x19a7d70_0;  1 drivers
v0x1a703a0_0 .net "instruction", 31 0, L_0x1a71b80;  1 drivers
v0x1a70440_0 .net "op_imm", 0 0, v0x199d570_0;  1 drivers
v0x1a70530_0 .net "opcode", 5 0, v0x199d630_0;  1 drivers
v0x1a70640_0 .net "ov_flag", 0 0, L_0x1aaa430;  1 drivers
v0x1a70770_0 .net "pc", 1 0, v0x1998ed0_0;  1 drivers
v0x1a70830_0 .net "rd", 4 0, v0x1998f90_0;  1 drivers
v0x1a70940_0 .net "regRS", 31 0, L_0x1a835f0;  1 drivers
v0x1a70a90_0 .net "regRT", 31 0, L_0x1a85de0;  1 drivers
v0x1a70be0_0 .net "reg_WE", 0 0, v0x19fd130_0;  1 drivers
v0x1a70d10_0 .net "reg_in", 1 0, v0x19fd1f0_0;  1 drivers
v0x1a70dd0_0 .net "reg_in_mux_out", 31 0, L_0x1aae180;  1 drivers
v0x1a70e90_0 .net "reg_select_mux_out", 4 0, L_0x1aadac0;  1 drivers
v0x1a70f50_0 .net "rs", 4 0, v0x19f98a0_0;  1 drivers
v0x1a71010_0 .net "rt", 4 0, v0x1983020_0;  1 drivers
v0x1a71160_0 .net "shamt", 5 0, v0x19830c0_0;  1 drivers
v0x1a71220_0 .net "zero_flag", 0 0, L_0x1aa98d0;  1 drivers
L_0x1a71c40 .arith/sum 32, v0x19a7d70_0, L_0x1a835f0;
L_0x1a71e30 .part v0x1a5f9e0_0, 2, 30;
L_0x1a71ed0 .concat [ 30 2 0 0], L_0x1a71e30, L_0x7fb90a0d2018;
L_0x1aae2c0 .arith/sum 32, v0x1a5f9e0_0, L_0x7fb90a0d2b58;
S_0x1981b90 .scope module, "controlPC" "pcController" 5 54, 6 8 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x19caad0_0 .var "controlSig", 1 0;
v0x19c63a0_0 .net "function1", 5 0, v0x19a7cb0_0;  alias, 1 drivers
v0x19b51e0_0 .net "opcode", 5 0, v0x199d630_0;  alias, 1 drivers
v0x19b52a0_0 .net "zeroFlag", 0 0, L_0x1aa98d0;  alias, 1 drivers
E_0x19caf40 .event edge, v0x19b51e0_0;
S_0x19e2580 .scope module, "decode" "instructionDecoder" 5 58, 7 20 0, S_0x19f8410;
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
v0x19b4ae0_0 .var "ALU_op", 2 0;
v0x19b0890_0 .var "DM_WE", 0 0;
v0x19b0950_0 .var "DM_add", 0 0;
v0x19b04d0_0 .var "address", 25 0;
v0x19ac2a0_0 .net "clk", 0 0, o0x7fb90a11bac8;  alias, 0 drivers
v0x19abee0_0 .var "dest_add", 1 0;
v0x19a7cb0_0 .var "funct", 5 0;
v0x19a7d70_0 .var "immediate", 31 0;
v0x19a78f0_0 .net "instruction", 31 0, L_0x1a71b80;  alias, 1 drivers
v0x199d570_0 .var "op_imm", 0 0;
v0x199d630_0 .var "opcode", 5 0;
v0x1998ed0_0 .var "pc", 1 0;
v0x1998f90_0 .var "rd", 4 0;
v0x19fd130_0 .var "reg_WE", 0 0;
v0x19fd1f0_0 .var "reg_in", 1 0;
v0x19f98a0_0 .var "rs", 4 0;
v0x1983020_0 .var "rt", 4 0;
v0x19830c0_0 .var "shamt", 5 0;
E_0x19b4f90 .event edge, v0x19a78f0_0;
S_0x19ddef0 .scope module, "lulu" "ALU" 5 64, 8 105 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x1aa98d0/0/0 .functor OR 1, L_0x1a99060, L_0x1aaaad0, L_0x1aaab70, L_0x1aaac60;
L_0x1aa98d0/0/4 .functor OR 1, L_0x1aab530, L_0x1aab6e0, L_0x1aab1f0, L_0x1aab2e0;
L_0x1aa98d0/0/8 .functor OR 1, L_0x1aab3d0, L_0x1aabae0, L_0x1aab780, L_0x1aab870;
L_0x1aa98d0/0/12 .functor OR 1, L_0x1aab960, L_0x1aab5d0, L_0x1aabb80, L_0x1aabc70;
L_0x1aa98d0/0/16 .functor OR 1, L_0x1aabd60, L_0x1aabe50, L_0x1aac4c0, L_0x1aac560;
L_0x1aa98d0/0/20 .functor OR 1, L_0x1aac110, L_0x1aac200, L_0x1aac2f0, L_0x1aac3e0;
L_0x1aa98d0/0/24 .functor OR 1, L_0x1aac650, L_0x1aac740, L_0x1aac830, L_0x1aac920;
L_0x1aa98d0/0/28 .functor OR 1, L_0x1aace70, L_0x1aabf00, L_0x1aabff0, L_0x1aaca70;
L_0x1aa98d0/0/32 .functor OR 1, L_0x1aacb60, L_0x1aacc50, C4<0>, C4<0>;
L_0x1aa98d0/1/0 .functor OR 1, L_0x1aa98d0/0/0, L_0x1aa98d0/0/4, L_0x1aa98d0/0/8, L_0x1aa98d0/0/12;
L_0x1aa98d0/1/4 .functor OR 1, L_0x1aa98d0/0/16, L_0x1aa98d0/0/20, L_0x1aa98d0/0/24, L_0x1aa98d0/0/28;
L_0x1aa98d0/1/8 .functor OR 1, L_0x1aa98d0/0/32, C4<0>, C4<0>, C4<0>;
L_0x1aa98d0 .functor NOR 1, L_0x1aa98d0/1/0, L_0x1aa98d0/1/4, L_0x1aa98d0/1/8, C4<0>;
v0x1a5bba0_0 .net "A", 31 0, L_0x1a835f0;  alias, 1 drivers
v0x1a5bca0_0 .net "B", 31 0, L_0x1aae470;  alias, 1 drivers
v0x1a5bd80_0 .net *"_s322", 0 0, L_0x1a99060;  1 drivers
v0x1a5be70_0 .net *"_s324", 0 0, L_0x1aaaad0;  1 drivers
v0x1a5bf50_0 .net *"_s326", 0 0, L_0x1aaab70;  1 drivers
v0x1a5c080_0 .net *"_s328", 0 0, L_0x1aaac60;  1 drivers
v0x1a5c160_0 .net *"_s330", 0 0, L_0x1aab530;  1 drivers
v0x1a5c240_0 .net *"_s332", 0 0, L_0x1aab6e0;  1 drivers
v0x1a5c320_0 .net *"_s334", 0 0, L_0x1aab1f0;  1 drivers
v0x1a5c490_0 .net *"_s336", 0 0, L_0x1aab2e0;  1 drivers
v0x1a5c570_0 .net *"_s338", 0 0, L_0x1aab3d0;  1 drivers
v0x1a5c650_0 .net *"_s340", 0 0, L_0x1aabae0;  1 drivers
v0x1a5c730_0 .net *"_s342", 0 0, L_0x1aab780;  1 drivers
v0x1a5c810_0 .net *"_s344", 0 0, L_0x1aab870;  1 drivers
v0x1a5c8f0_0 .net *"_s346", 0 0, L_0x1aab960;  1 drivers
v0x1a5c9d0_0 .net *"_s348", 0 0, L_0x1aab5d0;  1 drivers
v0x1a5cab0_0 .net *"_s350", 0 0, L_0x1aabb80;  1 drivers
v0x1a5cc60_0 .net *"_s352", 0 0, L_0x1aabc70;  1 drivers
v0x1a5cd00_0 .net *"_s354", 0 0, L_0x1aabd60;  1 drivers
v0x1a5cde0_0 .net *"_s356", 0 0, L_0x1aabe50;  1 drivers
v0x1a5cec0_0 .net *"_s358", 0 0, L_0x1aac4c0;  1 drivers
v0x1a5cfa0_0 .net *"_s360", 0 0, L_0x1aac560;  1 drivers
v0x1a5d080_0 .net *"_s362", 0 0, L_0x1aac110;  1 drivers
v0x1a5d160_0 .net *"_s364", 0 0, L_0x1aac200;  1 drivers
v0x1a5d240_0 .net *"_s366", 0 0, L_0x1aac2f0;  1 drivers
v0x1a5d320_0 .net *"_s368", 0 0, L_0x1aac3e0;  1 drivers
v0x1a5d400_0 .net *"_s370", 0 0, L_0x1aac650;  1 drivers
v0x1a5d4e0_0 .net *"_s372", 0 0, L_0x1aac740;  1 drivers
v0x1a5d5c0_0 .net *"_s374", 0 0, L_0x1aac830;  1 drivers
v0x1a5d6a0_0 .net *"_s376", 0 0, L_0x1aac920;  1 drivers
v0x1a5d780_0 .net *"_s378", 0 0, L_0x1aace70;  1 drivers
v0x1a5d860_0 .net *"_s380", 0 0, L_0x1aabf00;  1 drivers
v0x1a5d940_0 .net *"_s382", 0 0, L_0x1aabff0;  1 drivers
v0x1a5cb90_0 .net *"_s384", 0 0, L_0x1aaca70;  1 drivers
v0x1a5dc10_0 .net *"_s386", 0 0, L_0x1aacb60;  1 drivers
v0x1a5dcf0_0 .net *"_s388", 0 0, L_0x1aacc50;  1 drivers
v0x1a5ddd0_0 .net "carryout", 0 0, L_0x1a43c20;  alias, 1 drivers
v0x1a5de70_0 .net "command", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a5df30_0 .net "cout", 30 0, L_0x1aa9540;  1 drivers
v0x1a5e010_0 .net "overflow", 0 0, L_0x1aaa430;  alias, 1 drivers
v0x1a5e0b0_0 .net "result", 31 0, L_0x1aaa880;  alias, 1 drivers
v0x1a5e190_0 .net "zero", 0 0, L_0x1aa98d0;  alias, 1 drivers
L_0x1a86840 .part L_0x1a835f0, 0, 1;
L_0x1a868e0 .part L_0x1aae470, 0, 1;
L_0x1a86980 .part v0x19b4ae0_0, 0, 1;
L_0x1a87710 .part L_0x1a835f0, 1, 1;
L_0x1a878c0 .part L_0x1aae470, 1, 1;
L_0x1a87960 .part L_0x1aa9540, 0, 1;
L_0x1a88a30 .part L_0x1a835f0, 2, 1;
L_0x1a88ad0 .part L_0x1aae470, 2, 1;
L_0x1a88b70 .part L_0x1aa9540, 1, 1;
L_0x1a89c90 .part L_0x1a835f0, 3, 1;
L_0x1a89d30 .part L_0x1aae470, 3, 1;
L_0x1a89dd0 .part L_0x1aa9540, 2, 1;
L_0x1a8aec0 .part L_0x1a835f0, 4, 1;
L_0x1a8af60 .part L_0x1aae470, 4, 1;
L_0x1a8b000 .part L_0x1aa9540, 3, 1;
L_0x1a8c0a0 .part L_0x1a835f0, 5, 1;
L_0x1a8c1d0 .part L_0x1aae470, 5, 1;
L_0x1a8c380 .part L_0x1aa9540, 4, 1;
L_0x1a8d3d0 .part L_0x1a835f0, 6, 1;
L_0x1a8d470 .part L_0x1aae470, 6, 1;
L_0x1a8c420 .part L_0x1aa9540, 5, 1;
L_0x1a8e5f0 .part L_0x1a835f0, 7, 1;
L_0x1a8d510 .part L_0x1aae470, 7, 1;
L_0x1a8e750 .part L_0x1aa9540, 6, 1;
L_0x1a8f840 .part L_0x1a835f0, 8, 1;
L_0x1a8f8e0 .part L_0x1aae470, 8, 1;
L_0x1a8e880 .part L_0x1aa9540, 7, 1;
L_0x1a90af0 .part L_0x1a835f0, 9, 1;
L_0x1a8f980 .part L_0x1aae470, 9, 1;
L_0x1a90da0 .part L_0x1aa9540, 8, 1;
L_0x1a91f40 .part L_0x1a835f0, 10, 1;
L_0x1a91fe0 .part L_0x1aae470, 10, 1;
L_0x1a92080 .part L_0x1aa9540, 9, 1;
L_0x1a930c0 .part L_0x1a835f0, 11, 1;
L_0x1a877b0 .part L_0x1aae470, 11, 1;
L_0x1a93280 .part L_0x1aa9540, 10, 1;
L_0x1a94350 .part L_0x1a835f0, 12, 1;
L_0x1a943f0 .part L_0x1aae470, 12, 1;
L_0x1a933b0 .part L_0x1aa9540, 11, 1;
L_0x1a95570 .part L_0x1a835f0, 13, 1;
L_0x1a94490 .part L_0x1aae470, 13, 1;
L_0x1a94530 .part L_0x1aa9540, 12, 1;
L_0x1a968d0 .part L_0x1a835f0, 14, 1;
L_0x1a96970 .part L_0x1aae470, 14, 1;
L_0x1a95970 .part L_0x1aa9540, 13, 1;
L_0x1a97b40 .part L_0x1a835f0, 15, 1;
L_0x1a96a10 .part L_0x1aae470, 15, 1;
L_0x1a96ab0 .part L_0x1aa9540, 14, 1;
L_0x1a98d80 .part L_0x1a835f0, 16, 1;
L_0x1a98e20 .part L_0x1aae470, 16, 1;
L_0x1a97df0 .part L_0x1aa9540, 15, 1;
L_0x1a9a0a0 .part L_0x1a835f0, 17, 1;
L_0x1a98ec0 .part L_0x1aae470, 17, 1;
L_0x1a98f60 .part L_0x1aa9540, 16, 1;
L_0x1a9b2e0 .part L_0x1a835f0, 18, 1;
L_0x1a9b380 .part L_0x1aae470, 18, 1;
L_0x1a9a380 .part L_0x1aa9540, 17, 1;
L_0x1a9c500 .part L_0x1a835f0, 19, 1;
L_0x1a9b420 .part L_0x1aae470, 19, 1;
L_0x1a9b4c0 .part L_0x1aa9540, 18, 1;
L_0x1a9d730 .part L_0x1a835f0, 20, 1;
L_0x1a9d7d0 .part L_0x1aae470, 20, 1;
L_0x1a9c5a0 .part L_0x1aa9540, 19, 1;
L_0x1a9e960 .part L_0x1a835f0, 21, 1;
L_0x1a9d870 .part L_0x1aae470, 21, 1;
L_0x1a9d910 .part L_0x1aa9540, 20, 1;
L_0x1a9fba0 .part L_0x1a835f0, 22, 1;
L_0x1a9fc40 .part L_0x1aae470, 22, 1;
L_0x1a9ea00 .part L_0x1aa9540, 21, 1;
L_0x1aa0dd0 .part L_0x1a835f0, 23, 1;
L_0x1a9fce0 .part L_0x1aae470, 23, 1;
L_0x1a9fd80 .part L_0x1aa9540, 22, 1;
L_0x1aa2000 .part L_0x1a835f0, 24, 1;
L_0x1aa20a0 .part L_0x1aae470, 24, 1;
L_0x1aa0e70 .part L_0x1aa9540, 23, 1;
L_0x1aa30a0 .part L_0x1a835f0, 25, 1;
L_0x1a90b90 .part L_0x1aae470, 25, 1;
L_0x1a90c30 .part L_0x1aa9540, 24, 1;
L_0x1a91e30 .part L_0x1a835f0, 26, 1;
L_0x1aa4600 .part L_0x1aae470, 26, 1;
L_0x1aa3550 .part L_0x1aa9540, 25, 1;
L_0x1aa5650 .part L_0x1a835f0, 27, 1;
L_0x1aa46a0 .part L_0x1aae470, 27, 1;
L_0x1aa4740 .part L_0x1aa9540, 26, 1;
L_0x1aa6780 .part L_0x1a835f0, 28, 1;
L_0x1aa6820 .part L_0x1aae470, 28, 1;
L_0x1aa56f0 .part L_0x1aa9540, 27, 1;
L_0x1aa78a0 .part L_0x1a835f0, 29, 1;
L_0x1aa68c0 .part L_0x1aae470, 29, 1;
L_0x1a95760 .part L_0x1aa9540, 28, 1;
LS_0x1aa9540_0_0 .concat8 [ 1 1 1 1], L_0x1969830, L_0x1988820, L_0x1a14ac0, L_0x1a3c870;
LS_0x1aa9540_0_4 .concat8 [ 1 1 1 1], L_0x1a48040, L_0x1a4ba10, L_0x1a4f3e0, L_0x1a52db0;
LS_0x1aa9540_0_8 .concat8 [ 1 1 1 1], L_0x1a56780, L_0x1a5a150, L_0x195f4e0, L_0x19c36c0;
LS_0x1aa9540_0_12 .concat8 [ 1 1 1 1], L_0x19a5400, L_0x1958910, L_0x19e52a0, L_0x19b9480;
LS_0x1aa9540_0_16 .concat8 [ 1 1 1 1], L_0x183ba70, L_0x18050c0, L_0x1a0d720, L_0x1a110f0;
LS_0x1aa9540_0_20 .concat8 [ 1 1 1 1], L_0x1a183d0, L_0x1a1bda0, L_0x1a1f770, L_0x1a233c0;
LS_0x1aa9540_0_24 .concat8 [ 1 1 1 1], L_0x1a26d90, L_0x1a2a760, L_0x1a2e130, L_0x1a31b00;
LS_0x1aa9540_0_28 .concat8 [ 1 1 1 0], L_0x1a354d0, L_0x1a38ea0, L_0x1aa7ba0;
LS_0x1aa9540_1_0 .concat8 [ 4 4 4 4], LS_0x1aa9540_0_0, LS_0x1aa9540_0_4, LS_0x1aa9540_0_8, LS_0x1aa9540_0_12;
LS_0x1aa9540_1_4 .concat8 [ 4 4 4 3], LS_0x1aa9540_0_16, LS_0x1aa9540_0_20, LS_0x1aa9540_0_24, LS_0x1aa9540_0_28;
L_0x1aa9540 .concat8 [ 16 15 0 0], LS_0x1aa9540_1_0, LS_0x1aa9540_1_4;
L_0x1aa96f0 .part L_0x1a835f0, 30, 1;
L_0x1aa8020 .part L_0x1aae470, 30, 1;
L_0x1aa80c0 .part L_0x1aa9540, 29, 1;
LS_0x1aaa880_0_0 .concat8 [ 1 1 1 1], L_0x1a86590, L_0x1a87270, L_0x1a88370, L_0x1a89660;
LS_0x1aaa880_0_4 .concat8 [ 1 1 1 1], L_0x1a8a890, L_0x1a8ba70, L_0x1a8cda0, L_0x1a8dfc0;
LS_0x1aaa880_0_8 .concat8 [ 1 1 1 1], L_0x1a8f210, L_0x1a904c0, L_0x1a91800, L_0x1a92a90;
LS_0x1aaa880_0_12 .concat8 [ 1 1 1 1], L_0x1a93d00, L_0x1a94f40, L_0x1a962a0, L_0x1a974f0;
LS_0x1aaa880_0_16 .concat8 [ 1 1 1 1], L_0x1a98750, L_0x1a99a70, L_0x1a9acb0, L_0x1a9bed0;
LS_0x1aaa880_0_20 .concat8 [ 1 1 1 1], L_0x1a9d100, L_0x1a9e330, L_0x1a9f570, L_0x1aa07a0;
LS_0x1aaa880_0_24 .concat8 [ 1 1 1 1], L_0x1aa19d0, L_0x1aa2c00, L_0x1aa3e20, L_0x1aa5080;
LS_0x1aaa880_0_28 .concat8 [ 1 1 1 1], L_0x1aa61b0, L_0x1aa72d0, L_0x1a5b410, L_0x1aaa2f0;
LS_0x1aaa880_1_0 .concat8 [ 4 4 4 4], LS_0x1aaa880_0_0, LS_0x1aaa880_0_4, LS_0x1aaa880_0_8, LS_0x1aaa880_0_12;
LS_0x1aaa880_1_4 .concat8 [ 4 4 4 4], LS_0x1aaa880_0_16, LS_0x1aaa880_0_20, LS_0x1aaa880_0_24, LS_0x1aaa880_0_28;
L_0x1aaa880 .concat8 [ 16 16 0 0], LS_0x1aaa880_1_0, LS_0x1aaa880_1_4;
L_0x1aaaa30 .part L_0x1a835f0, 31, 1;
L_0x1aa9790 .part L_0x1aae470, 31, 1;
L_0x1aa9830 .part L_0x1aa9540, 30, 1;
L_0x1a99060 .part L_0x1aaa880, 0, 1;
L_0x1aaaad0 .part L_0x1aaa880, 1, 1;
L_0x1aaab70 .part L_0x1aaa880, 2, 1;
L_0x1aaac60 .part L_0x1aaa880, 3, 1;
L_0x1aab530 .part L_0x1aaa880, 4, 1;
L_0x1aab6e0 .part L_0x1aaa880, 5, 1;
L_0x1aab1f0 .part L_0x1aaa880, 6, 1;
L_0x1aab2e0 .part L_0x1aaa880, 7, 1;
L_0x1aab3d0 .part L_0x1aaa880, 8, 1;
L_0x1aabae0 .part L_0x1aaa880, 9, 1;
L_0x1aab780 .part L_0x1aaa880, 10, 1;
L_0x1aab870 .part L_0x1aaa880, 11, 1;
L_0x1aab960 .part L_0x1aaa880, 12, 1;
L_0x1aab5d0 .part L_0x1aaa880, 13, 1;
L_0x1aabb80 .part L_0x1aaa880, 14, 1;
L_0x1aabc70 .part L_0x1aaa880, 15, 1;
L_0x1aabd60 .part L_0x1aaa880, 16, 1;
L_0x1aabe50 .part L_0x1aaa880, 17, 1;
L_0x1aac4c0 .part L_0x1aaa880, 18, 1;
L_0x1aac560 .part L_0x1aaa880, 19, 1;
L_0x1aac110 .part L_0x1aaa880, 20, 1;
L_0x1aac200 .part L_0x1aaa880, 21, 1;
L_0x1aac2f0 .part L_0x1aaa880, 22, 1;
L_0x1aac3e0 .part L_0x1aaa880, 23, 1;
L_0x1aac650 .part L_0x1aaa880, 24, 1;
L_0x1aac740 .part L_0x1aaa880, 25, 1;
L_0x1aac830 .part L_0x1aaa880, 26, 1;
L_0x1aac920 .part L_0x1aaa880, 27, 1;
L_0x1aace70 .part L_0x1aaa880, 28, 1;
L_0x1aabf00 .part L_0x1aaa880, 29, 1;
L_0x1aabff0 .part L_0x1aaa880, 28, 1;
L_0x1aaca70 .part L_0x1aaa880, 29, 1;
L_0x1aacb60 .part L_0x1aaa880, 30, 1;
L_0x1aacc50 .part L_0x1aaa880, 31, 1;
S_0x19d9860 .scope module, "alu0" "ALU_1bit" 8 118, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a86630 .functor BUFZ 1, L_0x1a86060, C4<0>, C4<0>, C4<0>;
L_0x1a866a0 .functor BUFZ 1, L_0x1a86060, C4<0>, C4<0>, C4<0>;
v0x1967680_0 .net "A", 0 0, L_0x1a86840;  1 drivers
v0x1967720_0 .net "B", 0 0, L_0x1a868e0;  1 drivers
v0x19671b0_0 .net "I", 7 0, L_0x1a867a0;  1 drivers
v0x1967250_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1966ce0_0 .net *"_s15", 0 0, L_0x1a86630;  1 drivers
v0x1951080_0 .net *"_s19", 0 0, L_0x1a866a0;  1 drivers
L_0x7fb90a0d21c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1955d80_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d21c8;  1 drivers
v0x19558b0_0 .net "addORsub", 0 0, L_0x1a86060;  1 drivers
v0x1955950_0 .net "carryin", 0 0, L_0x1a86980;  1 drivers
v0x19553e0_0 .net "carryout", 0 0, L_0x1969830;  1 drivers
v0x1955480_0 .net "modB", 0 0, L_0x1a85e50;  1 drivers
v0x1950bb0_0 .net "out", 0 0, L_0x1a86590;  1 drivers
L_0x1a85ec0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a867a0_0_0 .concat8 [ 1 1 1 1], L_0x1a86630, L_0x1a866a0, L_0x1a862c0, L_0x7fb90a0d21c8;
LS_0x1a867a0_0_4 .concat8 [ 1 1 1 1], L_0x19689c0, L_0x1a86440, L_0x1a864b0, L_0x1a86520;
L_0x1a867a0 .concat8 [ 4 4 0 0], LS_0x1a867a0_0_0, LS_0x1a867a0_0_4;
S_0x197d500 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a85f60 .functor XOR 1, L_0x1a86840, L_0x1a85e50, C4<0>, C4<0>;
L_0x1a86060 .functor XOR 1, L_0x1a85f60, L_0x1a86980, C4<0>, C4<0>;
L_0x1a860d0 .functor AND 1, L_0x1a85f60, L_0x1a86980, C4<1>, C4<1>;
L_0x1a86140 .functor AND 1, L_0x1a86840, L_0x1a85e50, C4<1>, C4<1>;
L_0x1969830 .functor OR 1, L_0x1a860d0, L_0x1a86140, C4<0>, C4<0>;
v0x197ea10_0 .net "A", 0 0, L_0x1a86840;  alias, 1 drivers
v0x19c4e60_0 .net "B", 0 0, L_0x1a85e50;  alias, 1 drivers
v0x19c4f20_0 .net "carryin", 0 0, L_0x1a86980;  alias, 1 drivers
v0x19c07d0_0 .net "carryout", 0 0, L_0x1969830;  alias, 1 drivers
v0x19c0870_0 .net "out1", 0 0, L_0x1a85f60;  1 drivers
v0x19bc190_0 .net "out2", 0 0, L_0x1a860d0;  1 drivers
v0x19b6230_0 .net "out3", 0 0, L_0x1a86140;  1 drivers
v0x19b62f0_0 .net "sum", 0 0, L_0x1a86060;  alias, 1 drivers
S_0x19c7170 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19689c0 .functor AND 1, L_0x1a86840, L_0x1a868e0, C4<1>, C4<1>;
v0x19a1c10_0 .net "A", 0 0, L_0x1a86840;  alias, 1 drivers
v0x19a1cb0_0 .net "B", 0 0, L_0x1a868e0;  alias, 1 drivers
v0x197a300_0 .net "out", 0 0, L_0x19689c0;  1 drivers
S_0x19c39d0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x17fe8f0_0 .net "I", 7 0, L_0x1a867a0;  alias, 1 drivers
v0x196cd10_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x196b9e0_0 .net "out", 0 0, L_0x1a86590;  alias, 1 drivers
L_0x1a86590 .part/v L_0x1a867a0, v0x19b4ae0_0, 1;
S_0x19bf340 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a86440 .functor NAND 1, L_0x1a86840, L_0x1a868e0, C4<1>, C4<1>;
v0x196b560_0 .net "A", 0 0, L_0x1a86840;  alias, 1 drivers
v0x196b040_0 .net "B", 0 0, L_0x1a868e0;  alias, 1 drivers
v0x196b100_0 .net "out", 0 0, L_0x1a86440;  1 drivers
S_0x19bacb0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a864b0 .functor NOR 1, L_0x1a86840, L_0x1a868e0, C4<0>, C4<0>;
v0x196a6a0_0 .net "A", 0 0, L_0x1a86840;  alias, 1 drivers
v0x196a760_0 .net "B", 0 0, L_0x1a868e0;  alias, 1 drivers
v0x196a220_0 .net "out", 0 0, L_0x1a864b0;  1 drivers
S_0x19b6fe0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a86520 .functor OR 1, L_0x1a86840, L_0x1a868e0, C4<0>, C4<0>;
v0x1969da0_0 .net "A", 0 0, L_0x1a86840;  alias, 1 drivers
v0x19698c0_0 .net "B", 0 0, L_0x1a868e0;  alias, 1 drivers
v0x1969360_0 .net "out", 0 0, L_0x1a86520;  1 drivers
S_0x19a4e10 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a85e50 .functor XOR 1, L_0x1a868e0, L_0x1a85ec0, C4<0>, C4<0>;
v0x1968ee0_0 .net "A", 0 0, L_0x1a868e0;  alias, 1 drivers
v0x1968a50_0 .net "B", 0 0, L_0x1a85ec0;  1 drivers
v0x19684f0_0 .net "out", 0 0, L_0x1a85e50;  alias, 1 drivers
S_0x19a0780 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x19d9860;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a862c0 .functor XOR 1, L_0x1a86840, L_0x1a868e0, C4<0>, C4<0>;
v0x1968020_0 .net "A", 0 0, L_0x1a86840;  alias, 1 drivers
v0x19680e0_0 .net "B", 0 0, L_0x1a868e0;  alias, 1 drivers
v0x1967b50_0 .net "out", 0 0, L_0x1a862c0;  1 drivers
S_0x1978e70 .scope module, "alu1" "ALU_1bit" 8 119, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a87330 .functor BUFZ 1, L_0x1a86cc0, C4<0>, C4<0>, C4<0>;
L_0x1a873c0 .functor BUFZ 1, L_0x1a86cc0, C4<0>, C4<0>, C4<0>;
v0x19b4630_0 .net "A", 0 0, L_0x1a87710;  1 drivers
v0x19b46d0_0 .net "B", 0 0, L_0x1a878c0;  1 drivers
v0x19b0040_0 .net "I", 7 0, L_0x1a874e0;  1 drivers
v0x19b0110_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19abae0_0 .net *"_s15", 0 0, L_0x1a87330;  1 drivers
v0x19a7460_0 .net *"_s19", 0 0, L_0x1a873c0;  1 drivers
L_0x7fb90a0d2210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x19e70f0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2210;  1 drivers
v0x19e71d0_0 .net "addORsub", 0 0, L_0x1a86cc0;  1 drivers
v0x19d56f0_0 .net "carryin", 0 0, L_0x1a87960;  1 drivers
v0x19d5790_0 .net "carryout", 0 0, L_0x1988820;  1 drivers
v0x19d1100_0 .net "modB", 0 0, L_0x1a86ab0;  1 drivers
v0x19d11a0_0 .net "out", 0 0, L_0x1a87270;  1 drivers
L_0x1a86b20 .part v0x19b4ae0_0, 0, 1;
LS_0x1a874e0_0_0 .concat8 [ 1 1 1 1], L_0x1a87330, L_0x1a873c0, L_0x1a86f60, L_0x7fb90a0d2210;
LS_0x1a874e0_0_4 .concat8 [ 1 1 1 1], L_0x19ed8b0, L_0x1a870e0, L_0x1a87150, L_0x1a871e0;
L_0x1a874e0 .concat8 [ 4 4 0 0], LS_0x1a874e0_0_0, LS_0x1a874e0_0_4;
S_0x1966330 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a86bc0 .functor XOR 1, L_0x1a87710, L_0x1a86ab0, C4<0>, C4<0>;
L_0x1a86cc0 .functor XOR 1, L_0x1a86bc0, L_0x1a87960, C4<0>, C4<0>;
L_0x1a86d50 .functor AND 1, L_0x1a86bc0, L_0x1a87960, C4<1>, C4<1>;
L_0x1a86de0 .functor AND 1, L_0x1a87710, L_0x1a86ab0, C4<1>, C4<1>;
L_0x1988820 .functor OR 1, L_0x1a86d50, L_0x1a86de0, C4<0>, C4<0>;
v0x1954fb0_0 .net "A", 0 0, L_0x1a87710;  alias, 1 drivers
v0x1954a40_0 .net "B", 0 0, L_0x1a86ab0;  alias, 1 drivers
v0x1954570_0 .net "carryin", 0 0, L_0x1a87960;  alias, 1 drivers
v0x1954610_0 .net "carryout", 0 0, L_0x1988820;  alias, 1 drivers
v0x19540a0_0 .net "out1", 0 0, L_0x1a86bc0;  1 drivers
v0x1953bd0_0 .net "out2", 0 0, L_0x1a86d50;  1 drivers
v0x1953c90_0 .net "out3", 0 0, L_0x1a86de0;  1 drivers
v0x1953700_0 .net "sum", 0 0, L_0x1a86cc0;  alias, 1 drivers
S_0x19938d0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19ed8b0 .functor AND 1, L_0x1a87710, L_0x1a878c0, C4<1>, C4<1>;
v0x1953230_0 .net "A", 0 0, L_0x1a87710;  alias, 1 drivers
v0x19532f0_0 .net "B", 0 0, L_0x1a878c0;  alias, 1 drivers
v0x1952d60_0 .net "out", 0 0, L_0x19ed8b0;  1 drivers
S_0x198f2e0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1952910_0 .net "I", 7 0, L_0x1a874e0;  alias, 1 drivers
v0x19523c0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1952480_0 .net "out", 0 0, L_0x1a87270;  alias, 1 drivers
L_0x1a87270 .part/v L_0x1a874e0, v0x19b4ae0_0, 1;
S_0x198acf0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a870e0 .functor NAND 1, L_0x1a87710, L_0x1a878c0, C4<1>, C4<1>;
v0x1951ef0_0 .net "A", 0 0, L_0x1a87710;  alias, 1 drivers
v0x1951fb0_0 .net "B", 0 0, L_0x1a878c0;  alias, 1 drivers
v0x1951a40_0 .net "out", 0 0, L_0x1a870e0;  1 drivers
S_0x1986710 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a87150 .functor NOR 1, L_0x1a87710, L_0x1a878c0, C4<0>, C4<0>;
v0x19959f0_0 .net "A", 0 0, L_0x1a87710;  alias, 1 drivers
v0x1995ab0_0 .net "B", 0 0, L_0x1a878c0;  alias, 1 drivers
v0x1991400_0 .net "out", 0 0, L_0x1a87150;  1 drivers
S_0x19f42b0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a871e0 .functor OR 1, L_0x1a87710, L_0x1a878c0, C4<0>, C4<0>;
v0x198ce60_0 .net "A", 0 0, L_0x1a87710;  alias, 1 drivers
v0x19888b0_0 .net "B", 0 0, L_0x1a878c0;  alias, 1 drivers
v0x19f1de0_0 .net "out", 0 0, L_0x1a871e0;  1 drivers
S_0x19efcc0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a86ab0 .functor XOR 1, L_0x1a878c0, L_0x1a86b20, C4<0>, C4<0>;
v0x19ed7f0_0 .net "A", 0 0, L_0x1a878c0;  alias, 1 drivers
v0x19e9200_0 .net "B", 0 0, L_0x1a86b20;  1 drivers
v0x19e92a0_0 .net "out", 0 0, L_0x1a86ab0;  alias, 1 drivers
S_0x19eb6d0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1978e70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a86f60 .functor XOR 1, L_0x1a87710, L_0x1a878c0, C4<0>, C4<0>;
v0x19d3220_0 .net "A", 0 0, L_0x1a87710;  alias, 1 drivers
v0x19d32e0_0 .net "B", 0 0, L_0x1a878c0;  alias, 1 drivers
v0x19cec30_0 .net "out", 0 0, L_0x1a86f60;  1 drivers
S_0x19c8520 .scope module, "alu10" "ALU_1bit" 8 128, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a91960 .functor BUFZ 1, L_0x1a910e0, C4<0>, C4<0>, C4<0>;
L_0x1a919f0 .functor BUFZ 1, L_0x1a910e0, C4<0>, C4<0>, C4<0>;
v0x195d960_0 .net "A", 0 0, L_0x1a91f40;  1 drivers
v0x195da00_0 .net "B", 0 0, L_0x1a91fe0;  1 drivers
v0x195d600_0 .net "I", 7 0, L_0x1a91b10;  1 drivers
v0x195d6d0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x195d2a0_0 .net *"_s15", 0 0, L_0x1a91960;  1 drivers
v0x195d390_0 .net *"_s19", 0 0, L_0x1a919f0;  1 drivers
L_0x7fb90a0d2498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x19ca640_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2498;  1 drivers
v0x19ca720_0 .net "addORsub", 0 0, L_0x1a910e0;  1 drivers
v0x1a0a530_0 .net "carryin", 0 0, L_0x1a92080;  1 drivers
v0x195ae80_0 .net "carryout", 0 0, L_0x195f4e0;  1 drivers
v0x195af50_0 .net "modB", 0 0, L_0x1a90ed0;  1 drivers
v0x1a07820_0 .net "out", 0 0, L_0x1a91800;  1 drivers
L_0x1a90f40 .part v0x19b4ae0_0, 0, 1;
LS_0x1a91b10_0_0 .concat8 [ 1 1 1 1], L_0x1a91960, L_0x1a919f0, L_0x1a914f0, L_0x7fb90a0d2498;
LS_0x1a91b10_0_4 .concat8 [ 1 1 1 1], L_0x195eb80, L_0x1a91670, L_0x1a916e0, L_0x1a91770;
L_0x1a91b10 .concat8 [ 4 4 0 0], LS_0x1a91b10_0_0, LS_0x1a91b10_0_4;
S_0x19b2510 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a90fe0 .functor XOR 1, L_0x1a91f40, L_0x1a90ed0, C4<0>, C4<0>;
L_0x1a910e0 .functor XOR 1, L_0x1a90fe0, L_0x1a92080, C4<0>, C4<0>;
L_0x1a911f0 .functor AND 1, L_0x1a90fe0, L_0x1a92080, C4<1>, C4<1>;
L_0x1a91280 .functor AND 1, L_0x1a91f40, L_0x1a90ed0, C4<1>, C4<1>;
L_0x195f4e0 .functor OR 1, L_0x1a911f0, L_0x1a91280, C4<0>, C4<0>;
v0x19adfa0_0 .net "A", 0 0, L_0x1a91f40;  alias, 1 drivers
v0x19a9930_0 .net "B", 0 0, L_0x1a90ed0;  alias, 1 drivers
v0x19a99f0_0 .net "carryin", 0 0, L_0x1a92080;  alias, 1 drivers
v0x1974c30_0 .net "carryout", 0 0, L_0x195f4e0;  alias, 1 drivers
v0x1974cf0_0 .net "out1", 0 0, L_0x1a90fe0;  1 drivers
v0x195cfb0_0 .net "out2", 0 0, L_0x1a911f0;  1 drivers
v0x195cbe0_0 .net "out3", 0 0, L_0x1a91280;  1 drivers
v0x195cca0_0 .net "sum", 0 0, L_0x1a910e0;  alias, 1 drivers
S_0x195c860 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x195eb80 .functor AND 1, L_0x1a91f40, L_0x1a91fe0, C4<1>, C4<1>;
v0x195c240_0 .net "A", 0 0, L_0x1a91f40;  alias, 1 drivers
v0x195be20_0 .net "B", 0 0, L_0x1a91fe0;  alias, 1 drivers
v0x195bec0_0 .net "out", 0 0, L_0x195eb80;  1 drivers
S_0x1961b00 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x19616a0_0 .net "I", 7 0, L_0x1a91b10;  alias, 1 drivers
v0x1961780_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x195ba80_0 .net "out", 0 0, L_0x1a91800;  alias, 1 drivers
L_0x1a91800 .part/v L_0x1a91b10, v0x19b4ae0_0, 1;
S_0x1961340 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a91670 .functor NAND 1, L_0x1a91f40, L_0x1a91fe0, C4<1>, C4<1>;
v0x1961080_0 .net "A", 0 0, L_0x1a91f40;  alias, 1 drivers
v0x1960cd0_0 .net "B", 0 0, L_0x1a91fe0;  alias, 1 drivers
v0x1960920_0 .net "out", 0 0, L_0x1a91670;  1 drivers
S_0x19605c0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a916e0 .functor NOR 1, L_0x1a91f40, L_0x1a91fe0, C4<0>, C4<0>;
v0x1960260_0 .net "A", 0 0, L_0x1a91f40;  alias, 1 drivers
v0x1960320_0 .net "B", 0 0, L_0x1a91fe0;  alias, 1 drivers
v0x195ff50_0 .net "out", 0 0, L_0x1a916e0;  1 drivers
S_0x195fba0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a91770 .functor OR 1, L_0x1a91f40, L_0x1a91fe0, C4<0>, C4<0>;
v0x195f8e0_0 .net "A", 0 0, L_0x1a91f40;  alias, 1 drivers
v0x195f570_0 .net "B", 0 0, L_0x1a91fe0;  alias, 1 drivers
v0x195f180_0 .net "out", 0 0, L_0x1a91770;  1 drivers
S_0x195ee20 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a90ed0 .functor XOR 1, L_0x1a91fe0, L_0x1a90f40, C4<0>, C4<0>;
v0x195eac0_0 .net "A", 0 0, L_0x1a91fe0;  alias, 1 drivers
v0x195e760_0 .net "B", 0 0, L_0x1a90f40;  1 drivers
v0x195e820_0 .net "out", 0 0, L_0x1a90ed0;  alias, 1 drivers
S_0x195e3e0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x19c8520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a914f0 .functor XOR 1, L_0x1a91f40, L_0x1a91fe0, C4<0>, C4<0>;
v0x195e070_0 .net "A", 0 0, L_0x1a91f40;  alias, 1 drivers
v0x195e110_0 .net "B", 0 0, L_0x1a91fe0;  alias, 1 drivers
v0x195dcc0_0 .net "out", 0 0, L_0x1a914f0;  1 drivers
S_0x1a09c10 .scope module, "alu11" "ALU_1bit" 8 129, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a92bf0 .functor BUFZ 1, L_0x1a92350, C4<0>, C4<0>, C4<0>;
L_0x1a92c80 .functor BUFZ 1, L_0x1a92350, C4<0>, C4<0>, C4<0>;
v0x19870b0_0 .net "A", 0 0, L_0x1a930c0;  1 drivers
v0x1987150_0 .net "B", 0 0, L_0x1a877b0;  1 drivers
v0x19f4c50_0 .net "I", 7 0, L_0x1a92da0;  1 drivers
v0x19f4d20_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19f0770_0 .net *"_s15", 0 0, L_0x1a92bf0;  1 drivers
v0x19ec070_0 .net *"_s19", 0 0, L_0x1a92c80;  1 drivers
L_0x7fb90a0d24e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x19ec130_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d24e0;  1 drivers
v0x19e7a90_0 .net "addORsub", 0 0, L_0x1a92350;  1 drivers
v0x19e7b30_0 .net "carryin", 0 0, L_0x1a93280;  1 drivers
v0x19d1aa0_0 .net "carryout", 0 0, L_0x19c36c0;  1 drivers
v0x19d1b70_0 .net "modB", 0 0, L_0x1a92120;  1 drivers
v0x19cd4b0_0 .net "out", 0 0, L_0x1a92a90;  1 drivers
L_0x1a92190 .part v0x19b4ae0_0, 0, 1;
LS_0x1a92da0_0_0 .concat8 [ 1 1 1 1], L_0x1a92bf0, L_0x1a92c80, L_0x1a92780, L_0x7fb90a0d24e0;
LS_0x1a92da0_0_4 .concat8 [ 1 1 1 1], L_0x19a0490, L_0x1a92900, L_0x1a92970, L_0x1a92a00;
L_0x1a92da0 .concat8 [ 4 4 0 0], LS_0x1a92da0_0_0, LS_0x1a92da0_0_4;
S_0x1992500 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a92230 .functor XOR 1, L_0x1a930c0, L_0x1a92120, C4<0>, C4<0>;
L_0x1a92350 .functor XOR 1, L_0x1a92230, L_0x1a93280, C4<0>, C4<0>;
L_0x1a92480 .functor AND 1, L_0x1a92230, L_0x1a93280, C4<1>, C4<1>;
L_0x1a92510 .functor AND 1, L_0x1a930c0, L_0x1a92120, C4<1>, C4<1>;
L_0x19c36c0 .functor OR 1, L_0x1a92480, L_0x1a92510, C4<0>, C4<0>;
v0x198df90_0 .net "A", 0 0, L_0x1a930c0;  alias, 1 drivers
v0x1989920_0 .net "B", 0 0, L_0x1a92120;  alias, 1 drivers
v0x19899c0_0 .net "carryin", 0 0, L_0x1a93280;  alias, 1 drivers
v0x19f2ee0_0 .net "carryout", 0 0, L_0x19c36c0;  alias, 1 drivers
v0x19f2fa0_0 .net "out1", 0 0, L_0x1a92230;  1 drivers
v0x19ee8f0_0 .net "out2", 0 0, L_0x1a92480;  1 drivers
v0x19ee990_0 .net "out3", 0 0, L_0x1a92510;  1 drivers
v0x19ea300_0 .net "sum", 0 0, L_0x1a92350;  alias, 1 drivers
S_0x19d4320 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19a0490 .functor AND 1, L_0x1a930c0, L_0x1a877b0, C4<1>, C4<1>;
v0x19cfd80_0 .net "A", 0 0, L_0x1a930c0;  alias, 1 drivers
v0x19cb740_0 .net "B", 0 0, L_0x1a877b0;  alias, 1 drivers
v0x19cb7e0_0 .net "out", 0 0, L_0x19a0490;  1 drivers
S_0x19b1140 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x19acba0_0 .net "I", 7 0, L_0x1a92da0;  alias, 1 drivers
v0x19acc40_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19a8560_0 .net "out", 0 0, L_0x1a92a90;  alias, 1 drivers
L_0x1a92a90 .part/v L_0x1a92da0, v0x19b4ae0_0, 1;
S_0x199bce0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a92900 .functor NAND 1, L_0x1a930c0, L_0x1a877b0, C4<1>, C4<1>;
v0x19f8060_0 .net "A", 0 0, L_0x1a930c0;  alias, 1 drivers
v0x1981790_0 .net "B", 0 0, L_0x1a877b0;  alias, 1 drivers
v0x1981850_0 .net "out", 0 0, L_0x1a92900;  1 drivers
S_0x19e2180 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a92970 .functor NOR 1, L_0x1a930c0, L_0x1a877b0, C4<0>, C4<0>;
v0x19ddb90_0 .net "A", 0 0, L_0x1a930c0;  alias, 1 drivers
v0x19d9460_0 .net "B", 0 0, L_0x1a877b0;  alias, 1 drivers
v0x19d9570_0 .net "out", 0 0, L_0x1a92970;  1 drivers
S_0x197d100 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a92a00 .functor OR 1, L_0x1a930c0, L_0x1a877b0, C4<0>, C4<0>;
v0x19c3620_0 .net "A", 0 0, L_0x1a930c0;  alias, 1 drivers
v0x19bef40_0 .net "B", 0 0, L_0x1a877b0;  alias, 1 drivers
v0x19bf000_0 .net "out", 0 0, L_0x1a92a00;  1 drivers
S_0x19ba8b0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a92120 .functor XOR 1, L_0x1a877b0, L_0x1a92190, C4<0>, C4<0>;
v0x19a03d0_0 .net "A", 0 0, L_0x1a877b0;  alias, 1 drivers
v0x1978a70_0 .net "B", 0 0, L_0x1a92190;  1 drivers
v0x1978b30_0 .net "out", 0 0, L_0x1a92120;  alias, 1 drivers
S_0x1994270 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a09c10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a92780 .functor XOR 1, L_0x1a930c0, L_0x1a877b0, C4<0>, C4<0>;
v0x198fcd0_0 .net "A", 0 0, L_0x1a930c0;  alias, 1 drivers
v0x198fd90_0 .net "B", 0 0, L_0x1a877b0;  alias, 1 drivers
v0x198b690_0 .net "out", 0 0, L_0x1a92780;  1 drivers
S_0x19c8ec0 .scope module, "alu12" "ALU_1bit" 8 130, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a93e60 .functor BUFZ 1, L_0x1a935e0, C4<0>, C4<0>, C4<0>;
L_0x1a93f10 .functor BUFZ 1, L_0x1a935e0, C4<0>, C4<0>, C4<0>;
v0x19e9ec0_0 .net "A", 0 0, L_0x1a94350;  1 drivers
v0x19d3dd0_0 .net "B", 0 0, L_0x1a943f0;  1 drivers
v0x19d3e90_0 .net "I", 7 0, L_0x1a94030;  1 drivers
v0x19cf7e0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19cf880_0 .net *"_s15", 0 0, L_0x1a93e60;  1 drivers
v0x19cb1f0_0 .net *"_s19", 0 0, L_0x1a93f10;  1 drivers
L_0x7fb90a0d2528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x19cb2d0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2528;  1 drivers
v0x19c6b60_0 .net "addORsub", 0 0, L_0x1a935e0;  1 drivers
v0x19c6c00_0 .net "carryin", 0 0, L_0x1a933b0;  1 drivers
v0x19b0cb0_0 .net "carryout", 0 0, L_0x19a5400;  1 drivers
v0x19ac600_0 .net "modB", 0 0, L_0x1a87850;  1 drivers
v0x19ac6a0_0 .net "out", 0 0, L_0x1a93d00;  1 drivers
L_0x1a93160 .part v0x19b4ae0_0, 0, 1;
LS_0x1a94030_0_0 .concat8 [ 1 1 1 1], L_0x1a93e60, L_0x1a93f10, L_0x1a939f0, L_0x7fb90a0d2528;
LS_0x1a94030_0_4 .concat8 [ 1 1 1 1], L_0x198dad0, L_0x1a93b70, L_0x1a93be0, L_0x1a93c70;
L_0x1a94030 .concat8 [ 4 4 0 0], LS_0x1a94030_0_0, LS_0x1a94030_0_4;
S_0x19ae8c0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a934e0 .functor XOR 1, L_0x1a94350, L_0x1a87850, C4<0>, C4<0>;
L_0x1a935e0 .functor XOR 1, L_0x1a934e0, L_0x1a933b0, C4<0>, C4<0>;
L_0x1a936f0 .functor AND 1, L_0x1a934e0, L_0x1a933b0, C4<1>, C4<1>;
L_0x1a93760 .functor AND 1, L_0x1a94350, L_0x1a87850, C4<1>, C4<1>;
L_0x19a5400 .functor OR 1, L_0x1a936f0, L_0x1a93760, C4<0>, C4<0>;
v0x19aa2d0_0 .net "A", 0 0, L_0x1a94350;  alias, 1 drivers
v0x19aa3b0_0 .net "B", 0 0, L_0x1a87850;  alias, 1 drivers
v0x19755d0_0 .net "carryin", 0 0, L_0x1a933b0;  alias, 1 drivers
v0x1975690_0 .net "carryout", 0 0, L_0x19a5400;  alias, 1 drivers
v0x195c4c0_0 .net "out1", 0 0, L_0x1a934e0;  1 drivers
v0x195c5d0_0 .net "out2", 0 0, L_0x1a936f0;  1 drivers
v0x19fcb40_0 .net "out3", 0 0, L_0x1a93760;  1 drivers
v0x19fcc00_0 .net "sum", 0 0, L_0x1a935e0;  alias, 1 drivers
S_0x19a5cb0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x198dad0 .functor AND 1, L_0x1a94350, L_0x1a943f0, C4<1>, C4<1>;
v0x199c610_0 .net "A", 0 0, L_0x1a94350;  alias, 1 drivers
v0x199c6b0_0 .net "B", 0 0, L_0x1a943f0;  alias, 1 drivers
v0x19fc660_0 .net "out", 0 0, L_0x198dad0;  1 drivers
S_0x19f88f0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1982070_0 .net "I", 7 0, L_0x1a94030;  alias, 1 drivers
v0x1982170_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19e2a60_0 .net "out", 0 0, L_0x1a93d00;  alias, 1 drivers
L_0x1a93d00 .part/v L_0x1a94030, v0x19b4ae0_0, 1;
S_0x19de3d0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a93b70 .functor NAND 1, L_0x1a94350, L_0x1a943f0, C4<1>, C4<1>;
v0x19d9d90_0 .net "A", 0 0, L_0x1a94350;  alias, 1 drivers
v0x197d9e0_0 .net "B", 0 0, L_0x1a943f0;  alias, 1 drivers
v0x197daa0_0 .net "out", 0 0, L_0x1a93b70;  1 drivers
S_0x19c3eb0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a93be0 .functor NOR 1, L_0x1a94350, L_0x1a943f0, C4<0>, C4<0>;
v0x19bf8c0_0 .net "A", 0 0, L_0x1a94350;  alias, 1 drivers
v0x19bb190_0 .net "B", 0 0, L_0x1a943f0;  alias, 1 drivers
v0x19bb2a0_0 .net "out", 0 0, L_0x1a93be0;  1 drivers
S_0x19b74c0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a93c70 .functor OR 1, L_0x1a94350, L_0x1a943f0, C4<0>, C4<0>;
v0x19a5340_0 .net "A", 0 0, L_0x1a94350;  alias, 1 drivers
v0x19a0c60_0 .net "B", 0 0, L_0x1a943f0;  alias, 1 drivers
v0x19a0d20_0 .net "out", 0 0, L_0x1a93c70;  1 drivers
S_0x1979350 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a87850 .functor XOR 1, L_0x1a943f0, L_0x1a93160, C4<0>, C4<0>;
v0x198da10_0 .net "A", 0 0, L_0x1a943f0;  alias, 1 drivers
v0x19893d0_0 .net "B", 0 0, L_0x1a93160;  1 drivers
v0x1989470_0 .net "out", 0 0, L_0x1a87850;  alias, 1 drivers
S_0x19f2990 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x19c8ec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a939f0 .functor XOR 1, L_0x1a94350, L_0x1a943f0, C4<0>, C4<0>;
v0x19ee3f0_0 .net "A", 0 0, L_0x1a94350;  alias, 1 drivers
v0x19ee4b0_0 .net "B", 0 0, L_0x1a943f0;  alias, 1 drivers
v0x19e9db0_0 .net "out", 0 0, L_0x1a939f0;  1 drivers
S_0x19a8010 .scope module, "alu13" "ALU_1bit" 8 131, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a950a0 .functor BUFZ 1, L_0x1a94800, C4<0>, C4<0>, C4<0>;
L_0x1a95130 .functor BUFZ 1, L_0x1a94800, C4<0>, C4<0>, C4<0>;
v0x19567c0_0 .net "A", 0 0, L_0x1a95570;  1 drivers
v0x19561b0_0 .net "B", 0 0, L_0x1a94490;  1 drivers
v0x1956270_0 .net "I", 7 0, L_0x1a95250;  1 drivers
v0x195a7a0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x195a840_0 .net *"_s15", 0 0, L_0x1a950a0;  1 drivers
v0x1938bd0_0 .net *"_s19", 0 0, L_0x1a95130;  1 drivers
L_0x7fb90a0d2570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1938cb0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2570;  1 drivers
v0x1938490_0 .net "addORsub", 0 0, L_0x1a94800;  1 drivers
v0x1938530_0 .net "carryin", 0 0, L_0x1a94530;  1 drivers
v0x189f3a0_0 .net "carryout", 0 0, L_0x1958910;  1 drivers
v0x189f470_0 .net "modB", 0 0, L_0x1a945d0;  1 drivers
v0x199f210_0 .net "out", 0 0, L_0x1a94f40;  1 drivers
L_0x1a94640 .part v0x19b4ae0_0, 0, 1;
LS_0x1a95250_0_0 .concat8 [ 1 1 1 1], L_0x1a950a0, L_0x1a95130, L_0x1a94c30, L_0x7fb90a0d2570;
LS_0x1a95250_0_4 .concat8 [ 1 1 1 1], L_0x1957aa0, L_0x1a94db0, L_0x1a94e20, L_0x1a94eb0;
L_0x1a95250 .concat8 [ 4 4 0 0], LS_0x1a95250_0_0, LS_0x1a95250_0_4;
S_0x19628f0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a946e0 .functor XOR 1, L_0x1a95570, L_0x1a945d0, C4<0>, C4<0>;
L_0x1a94800 .functor XOR 1, L_0x1a946e0, L_0x1a94530, C4<0>, C4<0>;
L_0x1a94930 .functor AND 1, L_0x1a946e0, L_0x1a94530, C4<1>, C4<1>;
L_0x1a949c0 .functor AND 1, L_0x1a95570, L_0x1a945d0, C4<1>, C4<1>;
L_0x1958910 .functor OR 1, L_0x1a94930, L_0x1a949c0, C4<0>, C4<0>;
v0x1962ee0_0 .net "A", 0 0, L_0x1a95570;  alias, 1 drivers
v0x1965de0_0 .net "B", 0 0, L_0x1a945d0;  alias, 1 drivers
v0x1965ea0_0 .net "carryin", 0 0, L_0x1a94530;  alias, 1 drivers
v0x1965910_0 .net "carryout", 0 0, L_0x1958910;  alias, 1 drivers
v0x19659d0_0 .net "out1", 0 0, L_0x1a946e0;  1 drivers
v0x1965440_0 .net "out2", 0 0, L_0x1a94930;  1 drivers
v0x1965500_0 .net "out3", 0 0, L_0x1a949c0;  1 drivers
v0x1964f70_0 .net "sum", 0 0, L_0x1a94800;  alias, 1 drivers
S_0x1964aa0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1957aa0 .functor AND 1, L_0x1a95570, L_0x1a94490, C4<1>, C4<1>;
v0x19645d0_0 .net "A", 0 0, L_0x1a95570;  alias, 1 drivers
v0x1964670_0 .net "B", 0 0, L_0x1a94490;  alias, 1 drivers
v0x1964100_0 .net "out", 0 0, L_0x1957aa0;  1 drivers
S_0x1962410 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1964220_0 .net "I", 7 0, L_0x1a95250;  alias, 1 drivers
v0x1963c30_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1963cd0_0 .net "out", 0 0, L_0x1a94f40;  alias, 1 drivers
L_0x1a94f40 .part/v L_0x1a95250, v0x19b4ae0_0, 1;
S_0x1963760 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a94db0 .functor NAND 1, L_0x1a95570, L_0x1a94490, C4<1>, C4<1>;
v0x19632e0_0 .net "A", 0 0, L_0x1a95570;  alias, 1 drivers
v0x196c560_0 .net "B", 0 0, L_0x1a94490;  alias, 1 drivers
v0x196c620_0 .net "out", 0 0, L_0x1a94db0;  1 drivers
S_0x1959b90 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a94e20 .functor NOR 1, L_0x1a95570, L_0x1a94490, C4<0>, C4<0>;
v0x1959710_0 .net "A", 0 0, L_0x1a95570;  alias, 1 drivers
v0x19597d0_0 .net "B", 0 0, L_0x1a94490;  alias, 1 drivers
v0x1959240_0 .net "out", 0 0, L_0x1a94e20;  1 drivers
S_0x1958d20 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a94eb0 .functor OR 1, L_0x1a95570, L_0x1a94490, C4<0>, C4<0>;
v0x1958850_0 .net "A", 0 0, L_0x1a95570;  alias, 1 drivers
v0x1958380_0 .net "B", 0 0, L_0x1a94490;  alias, 1 drivers
v0x1958440_0 .net "out", 0 0, L_0x1a94eb0;  1 drivers
S_0x1957eb0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a945d0 .functor XOR 1, L_0x1a94490, L_0x1a94640, C4<0>, C4<0>;
v0x19579e0_0 .net "A", 0 0, L_0x1a94490;  alias, 1 drivers
v0x1957510_0 .net "B", 0 0, L_0x1a94640;  1 drivers
v0x19575d0_0 .net "out", 0 0, L_0x1a945d0;  alias, 1 drivers
S_0x1957040 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x19a8010;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a94c30 .functor XOR 1, L_0x1a95570, L_0x1a94490, C4<0>, C4<0>;
v0x1956b60_0 .net "A", 0 0, L_0x1a95570;  alias, 1 drivers
v0x1956c20_0 .net "B", 0 0, L_0x1a94490;  alias, 1 drivers
v0x1956690_0 .net "out", 0 0, L_0x1a94c30;  1 drivers
S_0x199ee10 .scope module, "alu14" "ALU_1bit" 8 132, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a96400 .functor BUFZ 1, L_0x1a95b60, C4<0>, C4<0>, C4<0>;
L_0x1a96490 .functor BUFZ 1, L_0x1a95b60, C4<0>, C4<0>, C4<0>;
v0x19dc580_0 .net "A", 0 0, L_0x1a968d0;  1 drivers
v0x19dc620_0 .net "B", 0 0, L_0x1a96970;  1 drivers
v0x19dc190_0 .net "I", 7 0, L_0x1a965b0;  1 drivers
v0x19dc290_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19d82f0_0 .net *"_s15", 0 0, L_0x1a96400;  1 drivers
v0x19d8400_0 .net *"_s19", 0 0, L_0x1a96490;  1 drivers
L_0x7fb90a0d25b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x19d7ef0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d25b8;  1 drivers
v0x19d7fd0_0 .net "addORsub", 0 0, L_0x1a95b60;  1 drivers
v0x19d7b00_0 .net "carryin", 0 0, L_0x1a95970;  1 drivers
v0x197bf90_0 .net "carryout", 0 0, L_0x19e52a0;  1 drivers
v0x197c060_0 .net "modB", 0 0, L_0x1a8c300;  1 drivers
v0x19c2460_0 .net "out", 0 0, L_0x1a962a0;  1 drivers
L_0x1a95610 .part v0x19b4ae0_0, 0, 1;
LS_0x1a965b0_0_0 .concat8 [ 1 1 1 1], L_0x1a96400, L_0x1a96490, L_0x1a95f90, L_0x7fb90a0d25b8;
LS_0x1a965b0_0_4 .concat8 [ 1 1 1 1], L_0x19e1010, L_0x1a96110, L_0x1a96180, L_0x1a96210;
L_0x1a965b0 .concat8 [ 4 4 0 0], LS_0x1a965b0_0_0, LS_0x1a965b0_0_4;
S_0x199ea20 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a956d0 .functor XOR 1, L_0x1a968d0, L_0x1a8c300, C4<0>, C4<0>;
L_0x1a95b60 .functor XOR 1, L_0x1a956d0, L_0x1a95970, C4<0>, C4<0>;
L_0x1a95c90 .functor AND 1, L_0x1a956d0, L_0x1a95970, C4<1>, C4<1>;
L_0x1a95d20 .functor AND 1, L_0x1a968d0, L_0x1a8c300, C4<1>, C4<1>;
L_0x19e52a0 .functor OR 1, L_0x1a95c90, L_0x1a95d20, C4<0>, C4<0>;
v0x1977900_0 .net "A", 0 0, L_0x1a968d0;  alias, 1 drivers
v0x19779e0_0 .net "B", 0 0, L_0x1a8c300;  alias, 1 drivers
v0x199ab70_0 .net "carryin", 0 0, L_0x1a95970;  alias, 1 drivers
v0x199ac10_0 .net "carryout", 0 0, L_0x19e52a0;  alias, 1 drivers
v0x199a770_0 .net "out1", 0 0, L_0x1a956d0;  1 drivers
v0x199a880_0 .net "out2", 0 0, L_0x1a95c90;  1 drivers
v0x199a380_0 .net "out3", 0 0, L_0x1a95d20;  1 drivers
v0x199a440_0 .net "sum", 0 0, L_0x1a95b60;  alias, 1 drivers
S_0x19964b0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19e1010 .functor AND 1, L_0x1a968d0, L_0x1a96970, C4<1>, C4<1>;
v0x19960b0_0 .net "A", 0 0, L_0x1a968d0;  alias, 1 drivers
v0x19961a0_0 .net "B", 0 0, L_0x1a96970;  alias, 1 drivers
v0x19774e0_0 .net "out", 0 0, L_0x19e1010;  1 drivers
S_0x19770c0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1984cb0_0 .net "I", 7 0, L_0x1a965b0;  alias, 1 drivers
v0x1984d90_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19848b0_0 .net "out", 0 0, L_0x1a962a0;  alias, 1 drivers
L_0x1a962a0 .part/v L_0x1a965b0, v0x19b4ae0_0, 1;
S_0x19844c0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a96110 .functor NAND 1, L_0x1a968d0, L_0x1a96970, C4<1>, C4<1>;
v0x19849d0_0 .net "A", 0 0, L_0x1a968d0;  alias, 1 drivers
v0x19f6ef0_0 .net "B", 0 0, L_0x1a96970;  alias, 1 drivers
v0x19f6fb0_0 .net "out", 0 0, L_0x1a96110;  1 drivers
S_0x19f6ac0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a96180 .functor NOR 1, L_0x1a968d0, L_0x1a96970, C4<0>, C4<0>;
v0x19f67b0_0 .net "A", 0 0, L_0x1a968d0;  alias, 1 drivers
v0x1980620_0 .net "B", 0 0, L_0x1a96970;  alias, 1 drivers
v0x1980730_0 .net "out", 0 0, L_0x1a96180;  1 drivers
S_0x1980240 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a96210 .functor OR 1, L_0x1a968d0, L_0x1a96970, C4<0>, C4<0>;
v0x19e5740_0 .net "A", 0 0, L_0x1a968d0;  alias, 1 drivers
v0x19e5330_0 .net "B", 0 0, L_0x1a96970;  alias, 1 drivers
v0x19e4eb0_0 .net "out", 0 0, L_0x1a96210;  1 drivers
S_0x197fe30 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8c300 .functor XOR 1, L_0x1a96970, L_0x1a95610, C4<0>, C4<0>;
v0x19e4fb0_0 .net "A", 0 0, L_0x1a96970;  alias, 1 drivers
v0x19e10a0_0 .net "B", 0 0, L_0x1a95610;  1 drivers
v0x19e0c10_0 .net "out", 0 0, L_0x1a8c300;  alias, 1 drivers
S_0x19e0820 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x199ee10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a95f90 .functor XOR 1, L_0x1a968d0, L_0x1a96970, C4<0>, C4<0>;
v0x19e0cf0_0 .net "A", 0 0, L_0x1a968d0;  alias, 1 drivers
v0x19dc980_0 .net "B", 0 0, L_0x1a96970;  alias, 1 drivers
v0x19dca40_0 .net "out", 0 0, L_0x1a95f90;  1 drivers
S_0x19c2060 .scope module, "alu15" "ALU_1bit" 8 133, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a97650 .functor BUFZ 1, L_0x1a96db0, C4<0>, C4<0>, C4<0>;
L_0x1a97700 .functor BUFZ 1, L_0x1a96db0, C4<0>, C4<0>, C4<0>;
v0x19b9d90_0 .net "A", 0 0, L_0x1a97b40;  1 drivers
v0x19b9e30_0 .net "B", 0 0, L_0x1a96a10;  1 drivers
v0x19a3ef0_0 .net "I", 7 0, L_0x1a97820;  1 drivers
v0x19a3ff0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19fd9c0_0 .net *"_s15", 0 0, L_0x1a97650;  1 drivers
v0x19f0660_0 .net *"_s19", 0 0, L_0x1a97700;  1 drivers
L_0x7fb90a0d2600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x199f860_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2600;  1 drivers
v0x199f940_0 .net "addORsub", 0 0, L_0x1a96db0;  1 drivers
v0x1977f50_0 .net "carryin", 0 0, L_0x1a96ab0;  1 drivers
v0x1978080_0 .net "carryout", 0 0, L_0x19b9480;  1 drivers
v0x19b5730_0 .net "modB", 0 0, L_0x1a96b80;  1 drivers
v0x19b57d0_0 .net "out", 0 0, L_0x1a974f0;  1 drivers
L_0x1a96bf0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a97820_0_0 .concat8 [ 1 1 1 1], L_0x1a97650, L_0x1a97700, L_0x1a971e0, L_0x7fb90a0d2600;
LS_0x1a97820_0_4 .concat8 [ 1 1 1 1], L_0x19d8940, L_0x1a97360, L_0x1a973d0, L_0x1a97460;
L_0x1a97820 .concat8 [ 4 4 0 0], LS_0x1a97820_0_0, LS_0x1a97820_0_4;
S_0x19c1c70 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a96c90 .functor XOR 1, L_0x1a97b40, L_0x1a96b80, C4<0>, C4<0>;
L_0x1a96db0 .functor XOR 1, L_0x1a96c90, L_0x1a96ab0, C4<0>, C4<0>;
L_0x1a96ee0 .functor AND 1, L_0x1a96c90, L_0x1a96ab0, C4<1>, C4<1>;
L_0x1a96f70 .functor AND 1, L_0x1a97b40, L_0x1a96b80, C4<1>, C4<1>;
L_0x19b9480 .functor OR 1, L_0x1a96ee0, L_0x1a96f70, C4<0>, C4<0>;
v0x197bb90_0 .net "A", 0 0, L_0x1a97b40;  alias, 1 drivers
v0x197bc70_0 .net "B", 0 0, L_0x1a96b80;  alias, 1 drivers
v0x19bddd0_0 .net "carryin", 0 0, L_0x1a96ab0;  alias, 1 drivers
v0x19bde70_0 .net "carryout", 0 0, L_0x19b9480;  alias, 1 drivers
v0x19bd9d0_0 .net "out1", 0 0, L_0x1a96c90;  1 drivers
v0x19bda90_0 .net "out2", 0 0, L_0x1a96ee0;  1 drivers
v0x19bd5e0_0 .net "out3", 0 0, L_0x1a96f70;  1 drivers
v0x19bd6a0_0 .net "sum", 0 0, L_0x1a96db0;  alias, 1 drivers
S_0x19b9740 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x19d8940 .functor AND 1, L_0x1a97b40, L_0x1a96a10, C4<1>, C4<1>;
v0x19b9340_0 .net "A", 0 0, L_0x1a97b40;  alias, 1 drivers
v0x19b93e0_0 .net "B", 0 0, L_0x1a96a10;  alias, 1 drivers
v0x19b8f50_0 .net "out", 0 0, L_0x19d8940;  1 drivers
S_0x197b7a0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x19a38a0_0 .net "I", 7 0, L_0x1a97820;  alias, 1 drivers
v0x19a3960_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19a34a0_0 .net "out", 0 0, L_0x1a974f0;  alias, 1 drivers
L_0x1a974f0 .part/v L_0x1a97820, v0x19b4ae0_0, 1;
S_0x19a30b0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a97360 .functor NAND 1, L_0x1a97b40, L_0x1a96a10, C4<1>, C4<1>;
v0x199b1c0_0 .net "A", 0 0, L_0x1a97b40;  alias, 1 drivers
v0x199b2d0_0 .net "B", 0 0, L_0x1a96a10;  alias, 1 drivers
v0x1996b10_0 .net "out", 0 0, L_0x1a97360;  1 drivers
S_0x1985300 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a973d0 .functor NOR 1, L_0x1a97b40, L_0x1a96a10, C4<0>, C4<0>;
v0x1996c20_0 .net "A", 0 0, L_0x1a97b40;  alias, 1 drivers
v0x19f74f0_0 .net "B", 0 0, L_0x1a96a10;  alias, 1 drivers
v0x19f75e0_0 .net "out", 0 0, L_0x1a973d0;  1 drivers
S_0x1980c70 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a97460 .functor OR 1, L_0x1a97b40, L_0x1a96a10, C4<0>, C4<0>;
v0x19e5cf0_0 .net "A", 0 0, L_0x1a97b40;  alias, 1 drivers
v0x19e5db0_0 .net "B", 0 0, L_0x1a96a10;  alias, 1 drivers
v0x19e1660_0 .net "out", 0 0, L_0x1a97460;  1 drivers
S_0x19dcfd0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a96b80 .functor XOR 1, L_0x1a96a10, L_0x1a96bf0, C4<0>, C4<0>;
v0x19e1760_0 .net "A", 0 0, L_0x1a96a10;  alias, 1 drivers
v0x19d89d0_0 .net "B", 0 0, L_0x1a96bf0;  1 drivers
v0x197c5e0_0 .net "out", 0 0, L_0x1a96b80;  alias, 1 drivers
S_0x19c2ab0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x19c2060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a971e0 .functor XOR 1, L_0x1a97b40, L_0x1a96a10, C4<0>, C4<0>;
v0x197c6c0_0 .net "A", 0 0, L_0x1a97b40;  alias, 1 drivers
v0x19be420_0 .net "B", 0 0, L_0x1a96a10;  alias, 1 drivers
v0x19be4e0_0 .net "out", 0 0, L_0x1a971e0;  1 drivers
S_0x1973890 .scope module, "alu16" "ALU_1bit" 8 134, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a988b0 .functor BUFZ 1, L_0x1a98010, C4<0>, C4<0>, C4<0>;
L_0x1a98940 .functor BUFZ 1, L_0x1a98010, C4<0>, C4<0>, C4<0>;
v0x17f6f20_0 .net "A", 0 0, L_0x1a98d80;  1 drivers
v0x17f6fc0_0 .net "B", 0 0, L_0x1a98e20;  1 drivers
v0x17dfe90_0 .net "I", 7 0, L_0x1a98a60;  1 drivers
v0x17dff60_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x17e0000_0 .net *"_s15", 0 0, L_0x1a988b0;  1 drivers
v0x17e0130_0 .net *"_s19", 0 0, L_0x1a98940;  1 drivers
L_0x7fb90a0d2648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x17e0210_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2648;  1 drivers
v0x17f3630_0 .net "addORsub", 0 0, L_0x1a98010;  1 drivers
v0x17f36d0_0 .net "carryin", 0 0, L_0x1a97df0;  1 drivers
v0x17f3830_0 .net "carryout", 0 0, L_0x183ba70;  1 drivers
v0x17f3900_0 .net "modB", 0 0, L_0x1a97be0;  1 drivers
v0x17f39a0_0 .net "out", 0 0, L_0x1a98750;  1 drivers
L_0x1a97c50 .part v0x19b4ae0_0, 0, 1;
LS_0x1a98a60_0_0 .concat8 [ 1 1 1 1], L_0x1a988b0, L_0x1a98940, L_0x1a98440, L_0x7fb90a0d2648;
LS_0x1a98a60_0_4 .concat8 [ 1 1 1 1], L_0x183e570, L_0x1a985c0, L_0x1a98630, L_0x1a986c0;
L_0x1a98a60 .concat8 [ 4 4 0 0], LS_0x1a98a60_0_0, LS_0x1a98a60_0_4;
S_0x19fb140 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a97cf0 .functor XOR 1, L_0x1a98d80, L_0x1a97be0, C4<0>, C4<0>;
L_0x1a98010 .functor XOR 1, L_0x1a97cf0, L_0x1a97df0, C4<0>, C4<0>;
L_0x1a98140 .functor AND 1, L_0x1a97cf0, L_0x1a97df0, C4<1>, C4<1>;
L_0x1a981d0 .functor AND 1, L_0x1a98d80, L_0x1a97be0, C4<1>, C4<1>;
L_0x183ba70 .functor OR 1, L_0x1a98140, L_0x1a981d0, C4<0>, C4<0>;
v0x19fe250_0 .net "A", 0 0, L_0x1a98d80;  alias, 1 drivers
v0x19fe330_0 .net "B", 0 0, L_0x1a97be0;  alias, 1 drivers
v0x19fe3f0_0 .net "carryin", 0 0, L_0x1a97df0;  alias, 1 drivers
v0x19fe4c0_0 .net "carryout", 0 0, L_0x183ba70;  alias, 1 drivers
v0x181d110_0 .net "out1", 0 0, L_0x1a97cf0;  1 drivers
v0x181d220_0 .net "out2", 0 0, L_0x1a98140;  1 drivers
v0x181d2e0_0 .net "out3", 0 0, L_0x1a981d0;  1 drivers
v0x181d3a0_0 .net "sum", 0 0, L_0x1a98010;  alias, 1 drivers
S_0x1818b50 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x183e570 .functor AND 1, L_0x1a98d80, L_0x1a98e20, C4<1>, C4<1>;
v0x1818d90_0 .net "A", 0 0, L_0x1a98d80;  alias, 1 drivers
v0x1818e50_0 .net "B", 0 0, L_0x1a98e20;  alias, 1 drivers
v0x1838210_0 .net "out", 0 0, L_0x183e570;  1 drivers
S_0x1838330 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1838550_0 .net "I", 7 0, L_0x1a98a60;  alias, 1 drivers
v0x1839cf0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1839db0_0 .net "out", 0 0, L_0x1a98750;  alias, 1 drivers
L_0x1a98750 .part/v L_0x1a98a60, v0x19b4ae0_0, 1;
S_0x1839f00 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a985c0 .functor NAND 1, L_0x1a98d80, L_0x1a98e20, C4<1>, C4<1>;
v0x183aa40_0 .net "A", 0 0, L_0x1a98d80;  alias, 1 drivers
v0x183ab50_0 .net "B", 0 0, L_0x1a98e20;  alias, 1 drivers
v0x183ac10_0 .net "out", 0 0, L_0x1a985c0;  1 drivers
S_0x1838fa0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a98630 .functor NOR 1, L_0x1a98d80, L_0x1a98e20, C4<0>, C4<0>;
v0x1839210_0 .net "A", 0 0, L_0x1a98d80;  alias, 1 drivers
v0x18392d0_0 .net "B", 0 0, L_0x1a98e20;  alias, 1 drivers
v0x183ad20_0 .net "out", 0 0, L_0x1a98630;  1 drivers
S_0x183b790 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a986c0 .functor OR 1, L_0x1a98d80, L_0x1a98e20, C4<0>, C4<0>;
v0x183b9b0_0 .net "A", 0 0, L_0x1a98d80;  alias, 1 drivers
v0x183bb00_0 .net "B", 0 0, L_0x1a98e20;  alias, 1 drivers
v0x183c520_0 .net "out", 0 0, L_0x1a986c0;  1 drivers
S_0x183c640 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a97be0 .functor XOR 1, L_0x1a98e20, L_0x1a97c50, C4<0>, C4<0>;
v0x183c810_0 .net "A", 0 0, L_0x1a98e20;  alias, 1 drivers
v0x183e600_0 .net "B", 0 0, L_0x1a97c50;  1 drivers
v0x183e6c0_0 .net "out", 0 0, L_0x1a97be0;  alias, 1 drivers
S_0x183e7d0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1973890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a98440 .functor XOR 1, L_0x1a98d80, L_0x1a98e20, C4<0>, C4<0>;
v0x17f6c70_0 .net "A", 0 0, L_0x1a98d80;  alias, 1 drivers
v0x17f6d30_0 .net "B", 0 0, L_0x1a98e20;  alias, 1 drivers
v0x17f6df0_0 .net "out", 0 0, L_0x1a98440;  1 drivers
S_0x18370e0 .scope module, "alu17" "ALU_1bit" 8 135, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a99bd0 .functor BUFZ 1, L_0x1a99370, C4<0>, C4<0>, C4<0>;
L_0x1a99c60 .functor BUFZ 1, L_0x1a99370, C4<0>, C4<0>, C4<0>;
v0x18117a0_0 .net "A", 0 0, L_0x1a9a0a0;  1 drivers
v0x1811840_0 .net "B", 0 0, L_0x1a98ec0;  1 drivers
v0x1811900_0 .net "I", 7 0, L_0x1a99d80;  1 drivers
v0x1843960_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1843a00_0 .net *"_s15", 0 0, L_0x1a99bd0;  1 drivers
v0x1843ac0_0 .net *"_s19", 0 0, L_0x1a99c60;  1 drivers
L_0x7fb90a0d2690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1843ba0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2690;  1 drivers
v0x1843c80_0 .net "addORsub", 0 0, L_0x1a99370;  1 drivers
v0x1820e70_0 .net "carryin", 0 0, L_0x1a98f60;  1 drivers
v0x1820fd0_0 .net "carryout", 0 0, L_0x18050c0;  1 drivers
v0x18210a0_0 .net "modB", 0 0, L_0x1a8faf0;  1 drivers
v0x1821140_0 .net "out", 0 0, L_0x1a99a70;  1 drivers
L_0x1a8fb60 .part v0x19b4ae0_0, 0, 1;
LS_0x1a99d80_0_0 .concat8 [ 1 1 1 1], L_0x1a99bd0, L_0x1a99c60, L_0x1a99760, L_0x7fb90a0d2690;
LS_0x1a99d80_0_4 .concat8 [ 1 1 1 1], L_0x180eb50, L_0x1a998e0, L_0x1a99950, L_0x1a999e0;
L_0x1a99d80 .concat8 [ 4 4 0 0], LS_0x1a99d80_0_0, LS_0x1a99d80_0_4;
S_0x1837350 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a99270 .functor XOR 1, L_0x1a9a0a0, L_0x1a8faf0, C4<0>, C4<0>;
L_0x1a99370 .functor XOR 1, L_0x1a99270, L_0x1a98f60, C4<0>, C4<0>;
L_0x1a99480 .functor AND 1, L_0x1a99270, L_0x1a98f60, C4<1>, C4<1>;
L_0x1a994f0 .functor AND 1, L_0x1a9a0a0, L_0x1a8faf0, C4<1>, C4<1>;
L_0x18050c0 .functor OR 1, L_0x1a99480, L_0x1a994f0, C4<0>, C4<0>;
v0x1812f30_0 .net "A", 0 0, L_0x1a9a0a0;  alias, 1 drivers
v0x1813010_0 .net "B", 0 0, L_0x1a8faf0;  alias, 1 drivers
v0x18130d0_0 .net "carryin", 0 0, L_0x1a98f60;  alias, 1 drivers
v0x18131a0_0 .net "carryout", 0 0, L_0x18050c0;  alias, 1 drivers
v0x1813260_0 .net "out1", 0 0, L_0x1a99270;  1 drivers
v0x17f7e10_0 .net "out2", 0 0, L_0x1a99480;  1 drivers
v0x17f7eb0_0 .net "out3", 0 0, L_0x1a994f0;  1 drivers
v0x17f7f70_0 .net "sum", 0 0, L_0x1a99370;  alias, 1 drivers
S_0x17f8f60 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x180eb50 .functor AND 1, L_0x1a9a0a0, L_0x1a98ec0, C4<1>, C4<1>;
v0x17f91a0_0 .net "A", 0 0, L_0x1a9a0a0;  alias, 1 drivers
v0x17f9260_0 .net "B", 0 0, L_0x1a98ec0;  alias, 1 drivers
v0x17f80d0_0 .net "out", 0 0, L_0x180eb50;  1 drivers
S_0x1816860 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1816ab0_0 .net "I", 7 0, L_0x1a99d80;  alias, 1 drivers
v0x1816b90_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1814730_0 .net "out", 0 0, L_0x1a99a70;  alias, 1 drivers
L_0x1a99a70 .part/v L_0x1a99d80, v0x19b4ae0_0, 1;
S_0x1814850 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a998e0 .functor NAND 1, L_0x1a9a0a0, L_0x1a98ec0, C4<1>, C4<1>;
v0x1814a70_0 .net "A", 0 0, L_0x1a9a0a0;  alias, 1 drivers
v0x1840ac0_0 .net "B", 0 0, L_0x1a98ec0;  alias, 1 drivers
v0x1840b60_0 .net "out", 0 0, L_0x1a998e0;  1 drivers
S_0x1840c50 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a99950 .functor NOR 1, L_0x1a9a0a0, L_0x1a98ec0, C4<0>, C4<0>;
v0x17a5cf0_0 .net "A", 0 0, L_0x1a9a0a0;  alias, 1 drivers
v0x17a5d90_0 .net "B", 0 0, L_0x1a98ec0;  alias, 1 drivers
v0x17a5ea0_0 .net "out", 0 0, L_0x1a99950;  1 drivers
S_0x1804de0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a999e0 .functor OR 1, L_0x1a9a0a0, L_0x1a98ec0, C4<0>, C4<0>;
v0x1805000_0 .net "A", 0 0, L_0x1a9a0a0;  alias, 1 drivers
v0x1805150_0 .net "B", 0 0, L_0x1a98ec0;  alias, 1 drivers
v0x17a5fa0_0 .net "out", 0 0, L_0x1a999e0;  1 drivers
S_0x180e8c0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8faf0 .functor XOR 1, L_0x1a98ec0, L_0x1a8fb60, C4<0>, C4<0>;
v0x180ea90_0 .net "A", 0 0, L_0x1a98ec0;  alias, 1 drivers
v0x180ebe0_0 .net "B", 0 0, L_0x1a8fb60;  1 drivers
v0x180fd90_0 .net "out", 0 0, L_0x1a8faf0;  alias, 1 drivers
S_0x180fed0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x18370e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a99760 .functor XOR 1, L_0x1a9a0a0, L_0x1a98ec0, C4<0>, C4<0>;
v0x18100a0_0 .net "A", 0 0, L_0x1a9a0a0;  alias, 1 drivers
v0x18115b0_0 .net "B", 0 0, L_0x1a98ec0;  alias, 1 drivers
v0x1811670_0 .net "out", 0 0, L_0x1a99760;  1 drivers
S_0x1a0b4e0 .scope module, "alu18" "ALU_1bit" 8 136, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a9ae10 .functor BUFZ 1, L_0x1a9a5d0, C4<0>, C4<0>, C4<0>;
L_0x1a9aea0 .functor BUFZ 1, L_0x1a9a5d0, C4<0>, C4<0>, C4<0>;
v0x1a0e310_0 .net "A", 0 0, L_0x1a9b2e0;  1 drivers
v0x1a0e3b0_0 .net "B", 0 0, L_0x1a9b380;  1 drivers
v0x1a0e470_0 .net "I", 7 0, L_0x1a9afc0;  1 drivers
v0x1a0e570_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a0e610_0 .net *"_s15", 0 0, L_0x1a9ae10;  1 drivers
v0x1a0e720_0 .net *"_s19", 0 0, L_0x1a9aea0;  1 drivers
L_0x7fb90a0d26d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a0e800_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d26d8;  1 drivers
v0x1a0e8e0_0 .net "addORsub", 0 0, L_0x1a9a5d0;  1 drivers
v0x1a0e980_0 .net "carryin", 0 0, L_0x1a9a380;  1 drivers
v0x1a0eae0_0 .net "carryout", 0 0, L_0x1a0d720;  1 drivers
v0x1a0ebb0_0 .net "modB", 0 0, L_0x1a9a140;  1 drivers
v0x1a0ec50_0 .net "out", 0 0, L_0x1a9acb0;  1 drivers
L_0x1a9a1b0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a9afc0_0_0 .concat8 [ 1 1 1 1], L_0x1a9ae10, L_0x1a9aea0, L_0x1a9a9c0, L_0x7fb90a0d26d8;
LS_0x1a9afc0_0_4 .concat8 [ 1 1 1 1], L_0x1a0dc00, L_0x1a9ab40, L_0x1a9abb0, L_0x1a9ac20;
L_0x1a9afc0 .concat8 [ 4 4 0 0], LS_0x1a9afc0_0_0, LS_0x1a9afc0_0_4;
S_0x1a0b700 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a9a250 .functor XOR 1, L_0x1a9b2e0, L_0x1a9a140, C4<0>, C4<0>;
L_0x1a9a5d0 .functor XOR 1, L_0x1a9a250, L_0x1a9a380, C4<0>, C4<0>;
L_0x1a9a6e0 .functor AND 1, L_0x1a9a250, L_0x1a9a380, C4<1>, C4<1>;
L_0x1a9a750 .functor AND 1, L_0x1a9b2e0, L_0x1a9a140, C4<1>, C4<1>;
L_0x1a0d720 .functor OR 1, L_0x1a9a6e0, L_0x1a9a750, C4<0>, C4<0>;
v0x1a0b900_0 .net "A", 0 0, L_0x1a9b2e0;  alias, 1 drivers
v0x1a0b9a0_0 .net "B", 0 0, L_0x1a9a140;  alias, 1 drivers
v0x1a0ba60_0 .net "carryin", 0 0, L_0x1a9a380;  alias, 1 drivers
v0x1a0bb30_0 .net "carryout", 0 0, L_0x1a0d720;  alias, 1 drivers
v0x1a0bbf0_0 .net "out1", 0 0, L_0x1a9a250;  1 drivers
v0x1a0bd00_0 .net "out2", 0 0, L_0x1a9a6e0;  1 drivers
v0x1a0bdc0_0 .net "out3", 0 0, L_0x1a9a750;  1 drivers
v0x1a0be80_0 .net "sum", 0 0, L_0x1a9a5d0;  alias, 1 drivers
S_0x1a0bfe0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a0dc00 .functor AND 1, L_0x1a9b2e0, L_0x1a9b380, C4<1>, C4<1>;
v0x1a0c240_0 .net "A", 0 0, L_0x1a9b2e0;  alias, 1 drivers
v0x1a0c300_0 .net "B", 0 0, L_0x1a9b380;  alias, 1 drivers
v0x1a0c3a0_0 .net "out", 0 0, L_0x1a0dc00;  1 drivers
S_0x1a0c4c0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a0c710_0 .net "I", 7 0, L_0x1a9afc0;  alias, 1 drivers
v0x1a0c7f0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a0c8b0_0 .net "out", 0 0, L_0x1a9acb0;  alias, 1 drivers
L_0x1a9acb0 .part/v L_0x1a9afc0, v0x19b4ae0_0, 1;
S_0x1a0ca00 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9ab40 .functor NAND 1, L_0x1a9b2e0, L_0x1a9b380, C4<1>, C4<1>;
v0x1a0cc20_0 .net "A", 0 0, L_0x1a9b2e0;  alias, 1 drivers
v0x1a0cd30_0 .net "B", 0 0, L_0x1a9b380;  alias, 1 drivers
v0x1a0cdf0_0 .net "out", 0 0, L_0x1a9ab40;  1 drivers
S_0x1a0cf00 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9abb0 .functor NOR 1, L_0x1a9b2e0, L_0x1a9b380, C4<0>, C4<0>;
v0x1a0d170_0 .net "A", 0 0, L_0x1a9b2e0;  alias, 1 drivers
v0x1a0d230_0 .net "B", 0 0, L_0x1a9b380;  alias, 1 drivers
v0x1a0d340_0 .net "out", 0 0, L_0x1a9abb0;  1 drivers
S_0x1a0d440 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9ac20 .functor OR 1, L_0x1a9b2e0, L_0x1a9b380, C4<0>, C4<0>;
v0x1a0d660_0 .net "A", 0 0, L_0x1a9b2e0;  alias, 1 drivers
v0x1a0d7b0_0 .net "B", 0 0, L_0x1a9b380;  alias, 1 drivers
v0x1a0d870_0 .net "out", 0 0, L_0x1a9ac20;  1 drivers
S_0x1a0d970 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9a140 .functor XOR 1, L_0x1a9b380, L_0x1a9a1b0, C4<0>, C4<0>;
v0x1a0db40_0 .net "A", 0 0, L_0x1a9b380;  alias, 1 drivers
v0x1a0dc90_0 .net "B", 0 0, L_0x1a9a1b0;  1 drivers
v0x1a0dd50_0 .net "out", 0 0, L_0x1a9a140;  alias, 1 drivers
S_0x1a0de90 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a0b4e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9a9c0 .functor XOR 1, L_0x1a9b2e0, L_0x1a9b380, C4<0>, C4<0>;
v0x1a0e060_0 .net "A", 0 0, L_0x1a9b2e0;  alias, 1 drivers
v0x1a0e120_0 .net "B", 0 0, L_0x1a9b380;  alias, 1 drivers
v0x1a0e1e0_0 .net "out", 0 0, L_0x1a9a9c0;  1 drivers
S_0x1a0ed70 .scope module, "alu19" "ALU_1bit" 8 137, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a9c030 .functor BUFZ 1, L_0x1a9b790, C4<0>, C4<0>, C4<0>;
L_0x1a9c0c0 .functor BUFZ 1, L_0x1a9b790, C4<0>, C4<0>, C4<0>;
v0x1a11ce0_0 .net "A", 0 0, L_0x1a9c500;  1 drivers
v0x1a11d80_0 .net "B", 0 0, L_0x1a9b420;  1 drivers
v0x1a11e40_0 .net "I", 7 0, L_0x1a9c1e0;  1 drivers
v0x1a11f40_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a11fe0_0 .net *"_s15", 0 0, L_0x1a9c030;  1 drivers
v0x1a120f0_0 .net *"_s19", 0 0, L_0x1a9c0c0;  1 drivers
L_0x7fb90a0d2720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a121d0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2720;  1 drivers
v0x1a122b0_0 .net "addORsub", 0 0, L_0x1a9b790;  1 drivers
v0x1a12350_0 .net "carryin", 0 0, L_0x1a9b4c0;  1 drivers
v0x1a124b0_0 .net "carryout", 0 0, L_0x1a110f0;  1 drivers
v0x1a12580_0 .net "modB", 0 0, L_0x1a9a4b0;  1 drivers
v0x1a12620_0 .net "out", 0 0, L_0x1a9bed0;  1 drivers
L_0x1a9b5f0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a9c1e0_0_0 .concat8 [ 1 1 1 1], L_0x1a9c030, L_0x1a9c0c0, L_0x1a9bbc0, L_0x7fb90a0d2720;
LS_0x1a9c1e0_0_4 .concat8 [ 1 1 1 1], L_0x1a115d0, L_0x1a9bd40, L_0x1a9bdb0, L_0x1a9be40;
L_0x1a9c1e0 .concat8 [ 4 4 0 0], LS_0x1a9c1e0_0_0, LS_0x1a9c1e0_0_4;
S_0x1a0efe0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a9b690 .functor XOR 1, L_0x1a9c500, L_0x1a9a4b0, C4<0>, C4<0>;
L_0x1a9b790 .functor XOR 1, L_0x1a9b690, L_0x1a9b4c0, C4<0>, C4<0>;
L_0x1a9b8c0 .functor AND 1, L_0x1a9b690, L_0x1a9b4c0, C4<1>, C4<1>;
L_0x1a9b950 .functor AND 1, L_0x1a9c500, L_0x1a9a4b0, C4<1>, C4<1>;
L_0x1a110f0 .functor OR 1, L_0x1a9b8c0, L_0x1a9b950, C4<0>, C4<0>;
v0x1a0f280_0 .net "A", 0 0, L_0x1a9c500;  alias, 1 drivers
v0x1a0f360_0 .net "B", 0 0, L_0x1a9a4b0;  alias, 1 drivers
v0x1a0f420_0 .net "carryin", 0 0, L_0x1a9b4c0;  alias, 1 drivers
v0x1a0f4f0_0 .net "carryout", 0 0, L_0x1a110f0;  alias, 1 drivers
v0x1a0f5b0_0 .net "out1", 0 0, L_0x1a9b690;  1 drivers
v0x1a0f6c0_0 .net "out2", 0 0, L_0x1a9b8c0;  1 drivers
v0x1a0f780_0 .net "out3", 0 0, L_0x1a9b950;  1 drivers
v0x1a0f840_0 .net "sum", 0 0, L_0x1a9b790;  alias, 1 drivers
S_0x1a0f9a0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a115d0 .functor AND 1, L_0x1a9c500, L_0x1a9b420, C4<1>, C4<1>;
v0x1a0fbe0_0 .net "A", 0 0, L_0x1a9c500;  alias, 1 drivers
v0x1a0fca0_0 .net "B", 0 0, L_0x1a9b420;  alias, 1 drivers
v0x1a0fd40_0 .net "out", 0 0, L_0x1a115d0;  1 drivers
S_0x1a0fe90 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a100e0_0 .net "I", 7 0, L_0x1a9c1e0;  alias, 1 drivers
v0x1a101c0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a10280_0 .net "out", 0 0, L_0x1a9bed0;  alias, 1 drivers
L_0x1a9bed0 .part/v L_0x1a9c1e0, v0x19b4ae0_0, 1;
S_0x1a103d0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9bd40 .functor NAND 1, L_0x1a9c500, L_0x1a9b420, C4<1>, C4<1>;
v0x1a105f0_0 .net "A", 0 0, L_0x1a9c500;  alias, 1 drivers
v0x1a10700_0 .net "B", 0 0, L_0x1a9b420;  alias, 1 drivers
v0x1a107c0_0 .net "out", 0 0, L_0x1a9bd40;  1 drivers
S_0x1a108d0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9bdb0 .functor NOR 1, L_0x1a9c500, L_0x1a9b420, C4<0>, C4<0>;
v0x1a10b40_0 .net "A", 0 0, L_0x1a9c500;  alias, 1 drivers
v0x1a10c00_0 .net "B", 0 0, L_0x1a9b420;  alias, 1 drivers
v0x1a10d10_0 .net "out", 0 0, L_0x1a9bdb0;  1 drivers
S_0x1a10e10 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9be40 .functor OR 1, L_0x1a9c500, L_0x1a9b420, C4<0>, C4<0>;
v0x1a11030_0 .net "A", 0 0, L_0x1a9c500;  alias, 1 drivers
v0x1a11180_0 .net "B", 0 0, L_0x1a9b420;  alias, 1 drivers
v0x1a11240_0 .net "out", 0 0, L_0x1a9be40;  1 drivers
S_0x1a11340 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9a4b0 .functor XOR 1, L_0x1a9b420, L_0x1a9b5f0, C4<0>, C4<0>;
v0x1a11510_0 .net "A", 0 0, L_0x1a9b420;  alias, 1 drivers
v0x1a11660_0 .net "B", 0 0, L_0x1a9b5f0;  1 drivers
v0x1a11720_0 .net "out", 0 0, L_0x1a9a4b0;  alias, 1 drivers
S_0x1a11860 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a0ed70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9bbc0 .functor XOR 1, L_0x1a9c500, L_0x1a9b420, C4<0>, C4<0>;
v0x1a11a30_0 .net "A", 0 0, L_0x1a9c500;  alias, 1 drivers
v0x1a11af0_0 .net "B", 0 0, L_0x1a9b420;  alias, 1 drivers
v0x1a11bb0_0 .net "out", 0 0, L_0x1a9bbc0;  1 drivers
S_0x1a12740 .scope module, "alu2" "ALU_1bit" 8 120, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a884d0 .functor BUFZ 1, L_0x1a87ca0, C4<0>, C4<0>, C4<0>;
L_0x1a88560 .functor BUFZ 1, L_0x1a87ca0, C4<0>, C4<0>, C4<0>;
v0x1a156b0_0 .net "A", 0 0, L_0x1a88a30;  1 drivers
v0x1a15750_0 .net "B", 0 0, L_0x1a88ad0;  1 drivers
v0x1a15810_0 .net "I", 7 0, L_0x1a88680;  1 drivers
v0x1a15910_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a159b0_0 .net *"_s15", 0 0, L_0x1a884d0;  1 drivers
v0x1a15ac0_0 .net *"_s19", 0 0, L_0x1a88560;  1 drivers
L_0x7fb90a0d2258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a15ba0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2258;  1 drivers
v0x1a15c80_0 .net "addORsub", 0 0, L_0x1a87ca0;  1 drivers
v0x1a15d20_0 .net "carryin", 0 0, L_0x1a88b70;  1 drivers
v0x1a15e80_0 .net "carryout", 0 0, L_0x1a14ac0;  1 drivers
v0x1a15f50_0 .net "modB", 0 0, L_0x1a87a90;  1 drivers
v0x1a15ff0_0 .net "out", 0 0, L_0x1a88370;  1 drivers
L_0x1a87b00 .part v0x19b4ae0_0, 0, 1;
LS_0x1a88680_0_0 .concat8 [ 1 1 1 1], L_0x1a884d0, L_0x1a88560, L_0x1a88060, L_0x7fb90a0d2258;
LS_0x1a88680_0_4 .concat8 [ 1 1 1 1], L_0x1a14fa0, L_0x1a881e0, L_0x1a88250, L_0x1a882e0;
L_0x1a88680 .concat8 [ 4 4 0 0], LS_0x1a88680_0_0, LS_0x1a88680_0_4;
S_0x1a129b0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a87ba0 .functor XOR 1, L_0x1a88a30, L_0x1a87a90, C4<0>, C4<0>;
L_0x1a87ca0 .functor XOR 1, L_0x1a87ba0, L_0x1a88b70, C4<0>, C4<0>;
L_0x1a87d60 .functor AND 1, L_0x1a87ba0, L_0x1a88b70, C4<1>, C4<1>;
L_0x1a87df0 .functor AND 1, L_0x1a88a30, L_0x1a87a90, C4<1>, C4<1>;
L_0x1a14ac0 .functor OR 1, L_0x1a87d60, L_0x1a87df0, C4<0>, C4<0>;
v0x1a12c50_0 .net "A", 0 0, L_0x1a88a30;  alias, 1 drivers
v0x1a12d30_0 .net "B", 0 0, L_0x1a87a90;  alias, 1 drivers
v0x1a12df0_0 .net "carryin", 0 0, L_0x1a88b70;  alias, 1 drivers
v0x1a12ec0_0 .net "carryout", 0 0, L_0x1a14ac0;  alias, 1 drivers
v0x1a12f80_0 .net "out1", 0 0, L_0x1a87ba0;  1 drivers
v0x1a13090_0 .net "out2", 0 0, L_0x1a87d60;  1 drivers
v0x1a13150_0 .net "out3", 0 0, L_0x1a87df0;  1 drivers
v0x1a13210_0 .net "sum", 0 0, L_0x1a87ca0;  alias, 1 drivers
S_0x1a13370 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a14fa0 .functor AND 1, L_0x1a88a30, L_0x1a88ad0, C4<1>, C4<1>;
v0x1a135b0_0 .net "A", 0 0, L_0x1a88a30;  alias, 1 drivers
v0x1a13670_0 .net "B", 0 0, L_0x1a88ad0;  alias, 1 drivers
v0x1a13710_0 .net "out", 0 0, L_0x1a14fa0;  1 drivers
S_0x1a13860 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a13ab0_0 .net "I", 7 0, L_0x1a88680;  alias, 1 drivers
v0x1a13b90_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a13c50_0 .net "out", 0 0, L_0x1a88370;  alias, 1 drivers
L_0x1a88370 .part/v L_0x1a88680, v0x19b4ae0_0, 1;
S_0x1a13da0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a881e0 .functor NAND 1, L_0x1a88a30, L_0x1a88ad0, C4<1>, C4<1>;
v0x1a13fc0_0 .net "A", 0 0, L_0x1a88a30;  alias, 1 drivers
v0x1a140d0_0 .net "B", 0 0, L_0x1a88ad0;  alias, 1 drivers
v0x1a14190_0 .net "out", 0 0, L_0x1a881e0;  1 drivers
S_0x1a142a0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a88250 .functor NOR 1, L_0x1a88a30, L_0x1a88ad0, C4<0>, C4<0>;
v0x1a14510_0 .net "A", 0 0, L_0x1a88a30;  alias, 1 drivers
v0x1a145d0_0 .net "B", 0 0, L_0x1a88ad0;  alias, 1 drivers
v0x1a146e0_0 .net "out", 0 0, L_0x1a88250;  1 drivers
S_0x1a147e0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a882e0 .functor OR 1, L_0x1a88a30, L_0x1a88ad0, C4<0>, C4<0>;
v0x1a14a00_0 .net "A", 0 0, L_0x1a88a30;  alias, 1 drivers
v0x1a14b50_0 .net "B", 0 0, L_0x1a88ad0;  alias, 1 drivers
v0x1a14c10_0 .net "out", 0 0, L_0x1a882e0;  1 drivers
S_0x1a14d10 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a87a90 .functor XOR 1, L_0x1a88ad0, L_0x1a87b00, C4<0>, C4<0>;
v0x1a14ee0_0 .net "A", 0 0, L_0x1a88ad0;  alias, 1 drivers
v0x1a15030_0 .net "B", 0 0, L_0x1a87b00;  1 drivers
v0x1a150f0_0 .net "out", 0 0, L_0x1a87a90;  alias, 1 drivers
S_0x1a15230 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a12740;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a88060 .functor XOR 1, L_0x1a88a30, L_0x1a88ad0, C4<0>, C4<0>;
v0x1a15400_0 .net "A", 0 0, L_0x1a88a30;  alias, 1 drivers
v0x1a154c0_0 .net "B", 0 0, L_0x1a88ad0;  alias, 1 drivers
v0x1a15580_0 .net "out", 0 0, L_0x1a88060;  1 drivers
S_0x1a16090 .scope module, "alu20" "ALU_1bit" 8 138, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a9d260 .functor BUFZ 1, L_0x1a9c9c0, C4<0>, C4<0>, C4<0>;
L_0x1a9d2f0 .functor BUFZ 1, L_0x1a9c9c0, C4<0>, C4<0>, C4<0>;
v0x1a18fc0_0 .net "A", 0 0, L_0x1a9d730;  1 drivers
v0x1a19060_0 .net "B", 0 0, L_0x1a9d7d0;  1 drivers
v0x1a19120_0 .net "I", 7 0, L_0x1a9d410;  1 drivers
v0x1a19220_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a192c0_0 .net *"_s15", 0 0, L_0x1a9d260;  1 drivers
v0x1a193d0_0 .net *"_s19", 0 0, L_0x1a9d2f0;  1 drivers
L_0x7fb90a0d2768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a194b0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2768;  1 drivers
v0x1a19590_0 .net "addORsub", 0 0, L_0x1a9c9c0;  1 drivers
v0x1a19630_0 .net "carryin", 0 0, L_0x1a9c5a0;  1 drivers
v0x1a19790_0 .net "carryout", 0 0, L_0x1a183d0;  1 drivers
v0x1a19860_0 .net "modB", 0 0, L_0x1a9c790;  1 drivers
v0x1a19900_0 .net "out", 0 0, L_0x1a9d100;  1 drivers
L_0x1a9c800 .part v0x19b4ae0_0, 0, 1;
LS_0x1a9d410_0_0 .concat8 [ 1 1 1 1], L_0x1a9d260, L_0x1a9d2f0, L_0x1a9cdf0, L_0x7fb90a0d2768;
LS_0x1a9d410_0_4 .concat8 [ 1 1 1 1], L_0x1a188b0, L_0x1a9cf70, L_0x1a9cfe0, L_0x1a9d070;
L_0x1a9d410 .concat8 [ 4 4 0 0], LS_0x1a9d410_0_0, LS_0x1a9d410_0_4;
S_0x1a16300 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a9c8a0 .functor XOR 1, L_0x1a9d730, L_0x1a9c790, C4<0>, C4<0>;
L_0x1a9c9c0 .functor XOR 1, L_0x1a9c8a0, L_0x1a9c5a0, C4<0>, C4<0>;
L_0x1a9caf0 .functor AND 1, L_0x1a9c8a0, L_0x1a9c5a0, C4<1>, C4<1>;
L_0x1a9cb80 .functor AND 1, L_0x1a9d730, L_0x1a9c790, C4<1>, C4<1>;
L_0x1a183d0 .functor OR 1, L_0x1a9caf0, L_0x1a9cb80, C4<0>, C4<0>;
v0x1a16580_0 .net "A", 0 0, L_0x1a9d730;  alias, 1 drivers
v0x1a16640_0 .net "B", 0 0, L_0x1a9c790;  alias, 1 drivers
v0x1a16700_0 .net "carryin", 0 0, L_0x1a9c5a0;  alias, 1 drivers
v0x1a167d0_0 .net "carryout", 0 0, L_0x1a183d0;  alias, 1 drivers
v0x1a16890_0 .net "out1", 0 0, L_0x1a9c8a0;  1 drivers
v0x1a169a0_0 .net "out2", 0 0, L_0x1a9caf0;  1 drivers
v0x1a16a60_0 .net "out3", 0 0, L_0x1a9cb80;  1 drivers
v0x1a16b20_0 .net "sum", 0 0, L_0x1a9c9c0;  alias, 1 drivers
S_0x1a16c80 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a188b0 .functor AND 1, L_0x1a9d730, L_0x1a9d7d0, C4<1>, C4<1>;
v0x1a16ec0_0 .net "A", 0 0, L_0x1a9d730;  alias, 1 drivers
v0x1a16f80_0 .net "B", 0 0, L_0x1a9d7d0;  alias, 1 drivers
v0x1a17020_0 .net "out", 0 0, L_0x1a188b0;  1 drivers
S_0x1a17170 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a173c0_0 .net "I", 7 0, L_0x1a9d410;  alias, 1 drivers
v0x1a174a0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a17560_0 .net "out", 0 0, L_0x1a9d100;  alias, 1 drivers
L_0x1a9d100 .part/v L_0x1a9d410, v0x19b4ae0_0, 1;
S_0x1a176b0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9cf70 .functor NAND 1, L_0x1a9d730, L_0x1a9d7d0, C4<1>, C4<1>;
v0x1a178d0_0 .net "A", 0 0, L_0x1a9d730;  alias, 1 drivers
v0x1a179e0_0 .net "B", 0 0, L_0x1a9d7d0;  alias, 1 drivers
v0x1a17aa0_0 .net "out", 0 0, L_0x1a9cf70;  1 drivers
S_0x1a17bb0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9cfe0 .functor NOR 1, L_0x1a9d730, L_0x1a9d7d0, C4<0>, C4<0>;
v0x1a17e20_0 .net "A", 0 0, L_0x1a9d730;  alias, 1 drivers
v0x1a17ee0_0 .net "B", 0 0, L_0x1a9d7d0;  alias, 1 drivers
v0x1a17ff0_0 .net "out", 0 0, L_0x1a9cfe0;  1 drivers
S_0x1a180f0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9d070 .functor OR 1, L_0x1a9d730, L_0x1a9d7d0, C4<0>, C4<0>;
v0x1a18310_0 .net "A", 0 0, L_0x1a9d730;  alias, 1 drivers
v0x1a18460_0 .net "B", 0 0, L_0x1a9d7d0;  alias, 1 drivers
v0x1a18520_0 .net "out", 0 0, L_0x1a9d070;  1 drivers
S_0x1a18620 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9c790 .functor XOR 1, L_0x1a9d7d0, L_0x1a9c800, C4<0>, C4<0>;
v0x1a187f0_0 .net "A", 0 0, L_0x1a9d7d0;  alias, 1 drivers
v0x1a18940_0 .net "B", 0 0, L_0x1a9c800;  1 drivers
v0x1a18a00_0 .net "out", 0 0, L_0x1a9c790;  alias, 1 drivers
S_0x1a18b40 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a16090;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9cdf0 .functor XOR 1, L_0x1a9d730, L_0x1a9d7d0, C4<0>, C4<0>;
v0x1a18d10_0 .net "A", 0 0, L_0x1a9d730;  alias, 1 drivers
v0x1a18dd0_0 .net "B", 0 0, L_0x1a9d7d0;  alias, 1 drivers
v0x1a18e90_0 .net "out", 0 0, L_0x1a9cdf0;  1 drivers
S_0x1a19a20 .scope module, "alu21" "ALU_1bit" 8 139, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a9e490 .functor BUFZ 1, L_0x1a9dc10, C4<0>, C4<0>, C4<0>;
L_0x1a9e520 .functor BUFZ 1, L_0x1a9dc10, C4<0>, C4<0>, C4<0>;
v0x1a1c990_0 .net "A", 0 0, L_0x1a9e960;  1 drivers
v0x1a1ca30_0 .net "B", 0 0, L_0x1a9d870;  1 drivers
v0x1a1caf0_0 .net "I", 7 0, L_0x1a9e640;  1 drivers
v0x1a1cbf0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a1cc90_0 .net *"_s15", 0 0, L_0x1a9e490;  1 drivers
v0x1a1cda0_0 .net *"_s19", 0 0, L_0x1a9e520;  1 drivers
L_0x7fb90a0d27b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a1ce80_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d27b0;  1 drivers
v0x1a1cf60_0 .net "addORsub", 0 0, L_0x1a9dc10;  1 drivers
v0x1a1d000_0 .net "carryin", 0 0, L_0x1a9d910;  1 drivers
v0x1a1d160_0 .net "carryout", 0 0, L_0x1a1bda0;  1 drivers
v0x1a1d230_0 .net "modB", 0 0, L_0x1a9c6d0;  1 drivers
v0x1a1d2d0_0 .net "out", 0 0, L_0x1a9e330;  1 drivers
L_0x1a9da70 .part v0x19b4ae0_0, 0, 1;
LS_0x1a9e640_0_0 .concat8 [ 1 1 1 1], L_0x1a9e490, L_0x1a9e520, L_0x1a9e020, L_0x7fb90a0d27b0;
LS_0x1a9e640_0_4 .concat8 [ 1 1 1 1], L_0x1a1c280, L_0x1a9e1a0, L_0x1a9e210, L_0x1a9e2a0;
L_0x1a9e640 .concat8 [ 4 4 0 0], LS_0x1a9e640_0_0, LS_0x1a9e640_0_4;
S_0x1a19c90 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a9db10 .functor XOR 1, L_0x1a9e960, L_0x1a9c6d0, C4<0>, C4<0>;
L_0x1a9dc10 .functor XOR 1, L_0x1a9db10, L_0x1a9d910, C4<0>, C4<0>;
L_0x1a9dd20 .functor AND 1, L_0x1a9db10, L_0x1a9d910, C4<1>, C4<1>;
L_0x1a9ddb0 .functor AND 1, L_0x1a9e960, L_0x1a9c6d0, C4<1>, C4<1>;
L_0x1a1bda0 .functor OR 1, L_0x1a9dd20, L_0x1a9ddb0, C4<0>, C4<0>;
v0x1a19f30_0 .net "A", 0 0, L_0x1a9e960;  alias, 1 drivers
v0x1a1a010_0 .net "B", 0 0, L_0x1a9c6d0;  alias, 1 drivers
v0x1a1a0d0_0 .net "carryin", 0 0, L_0x1a9d910;  alias, 1 drivers
v0x1a1a1a0_0 .net "carryout", 0 0, L_0x1a1bda0;  alias, 1 drivers
v0x1a1a260_0 .net "out1", 0 0, L_0x1a9db10;  1 drivers
v0x1a1a370_0 .net "out2", 0 0, L_0x1a9dd20;  1 drivers
v0x1a1a430_0 .net "out3", 0 0, L_0x1a9ddb0;  1 drivers
v0x1a1a4f0_0 .net "sum", 0 0, L_0x1a9dc10;  alias, 1 drivers
S_0x1a1a650 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a1c280 .functor AND 1, L_0x1a9e960, L_0x1a9d870, C4<1>, C4<1>;
v0x1a1a890_0 .net "A", 0 0, L_0x1a9e960;  alias, 1 drivers
v0x1a1a950_0 .net "B", 0 0, L_0x1a9d870;  alias, 1 drivers
v0x1a1a9f0_0 .net "out", 0 0, L_0x1a1c280;  1 drivers
S_0x1a1ab40 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a1ad90_0 .net "I", 7 0, L_0x1a9e640;  alias, 1 drivers
v0x1a1ae70_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a1af30_0 .net "out", 0 0, L_0x1a9e330;  alias, 1 drivers
L_0x1a9e330 .part/v L_0x1a9e640, v0x19b4ae0_0, 1;
S_0x1a1b080 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9e1a0 .functor NAND 1, L_0x1a9e960, L_0x1a9d870, C4<1>, C4<1>;
v0x1a1b2a0_0 .net "A", 0 0, L_0x1a9e960;  alias, 1 drivers
v0x1a1b3b0_0 .net "B", 0 0, L_0x1a9d870;  alias, 1 drivers
v0x1a1b470_0 .net "out", 0 0, L_0x1a9e1a0;  1 drivers
S_0x1a1b580 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9e210 .functor NOR 1, L_0x1a9e960, L_0x1a9d870, C4<0>, C4<0>;
v0x1a1b7f0_0 .net "A", 0 0, L_0x1a9e960;  alias, 1 drivers
v0x1a1b8b0_0 .net "B", 0 0, L_0x1a9d870;  alias, 1 drivers
v0x1a1b9c0_0 .net "out", 0 0, L_0x1a9e210;  1 drivers
S_0x1a1bac0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9e2a0 .functor OR 1, L_0x1a9e960, L_0x1a9d870, C4<0>, C4<0>;
v0x1a1bce0_0 .net "A", 0 0, L_0x1a9e960;  alias, 1 drivers
v0x1a1be30_0 .net "B", 0 0, L_0x1a9d870;  alias, 1 drivers
v0x1a1bef0_0 .net "out", 0 0, L_0x1a9e2a0;  1 drivers
S_0x1a1bff0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9c6d0 .functor XOR 1, L_0x1a9d870, L_0x1a9da70, C4<0>, C4<0>;
v0x1a1c1c0_0 .net "A", 0 0, L_0x1a9d870;  alias, 1 drivers
v0x1a1c310_0 .net "B", 0 0, L_0x1a9da70;  1 drivers
v0x1a1c3d0_0 .net "out", 0 0, L_0x1a9c6d0;  alias, 1 drivers
S_0x1a1c510 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a19a20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9e020 .functor XOR 1, L_0x1a9e960, L_0x1a9d870, C4<0>, C4<0>;
v0x1a1c6e0_0 .net "A", 0 0, L_0x1a9e960;  alias, 1 drivers
v0x1a1c7a0_0 .net "B", 0 0, L_0x1a9d870;  alias, 1 drivers
v0x1a1c860_0 .net "out", 0 0, L_0x1a9e020;  1 drivers
S_0x1a1d3f0 .scope module, "alu22" "ALU_1bit" 8 140, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a9f6d0 .functor BUFZ 1, L_0x1a9ee30, C4<0>, C4<0>, C4<0>;
L_0x1a9f760 .functor BUFZ 1, L_0x1a9ee30, C4<0>, C4<0>, C4<0>;
v0x1a20360_0 .net "A", 0 0, L_0x1a9fba0;  1 drivers
v0x1a20400_0 .net "B", 0 0, L_0x1a9fc40;  1 drivers
v0x1a204c0_0 .net "I", 7 0, L_0x1a9f880;  1 drivers
v0x1a205c0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x19fd7b0_0 .net *"_s15", 0 0, L_0x1a9f6d0;  1 drivers
v0x19fd8c0_0 .net *"_s19", 0 0, L_0x1a9f760;  1 drivers
L_0x7fb90a0d27f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a20a70_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d27f8;  1 drivers
v0x1a20b30_0 .net "addORsub", 0 0, L_0x1a9ee30;  1 drivers
v0x1a20bd0_0 .net "carryin", 0 0, L_0x1a9ea00;  1 drivers
v0x1a20d30_0 .net "carryout", 0 0, L_0x1a1f770;  1 drivers
v0x1a20e00_0 .net "modB", 0 0, L_0x1a9ec20;  1 drivers
v0x1a20ea0_0 .net "out", 0 0, L_0x1a9f570;  1 drivers
L_0x1a9ec90 .part v0x19b4ae0_0, 0, 1;
LS_0x1a9f880_0_0 .concat8 [ 1 1 1 1], L_0x1a9f6d0, L_0x1a9f760, L_0x1a9f260, L_0x7fb90a0d27f8;
LS_0x1a9f880_0_4 .concat8 [ 1 1 1 1], L_0x1a1fc50, L_0x1a9f3e0, L_0x1a9f450, L_0x1a9f4e0;
L_0x1a9f880 .concat8 [ 4 4 0 0], LS_0x1a9f880_0_0, LS_0x1a9f880_0_4;
S_0x1a1d660 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a9ed30 .functor XOR 1, L_0x1a9fba0, L_0x1a9ec20, C4<0>, C4<0>;
L_0x1a9ee30 .functor XOR 1, L_0x1a9ed30, L_0x1a9ea00, C4<0>, C4<0>;
L_0x1a9ef60 .functor AND 1, L_0x1a9ed30, L_0x1a9ea00, C4<1>, C4<1>;
L_0x1a9eff0 .functor AND 1, L_0x1a9fba0, L_0x1a9ec20, C4<1>, C4<1>;
L_0x1a1f770 .functor OR 1, L_0x1a9ef60, L_0x1a9eff0, C4<0>, C4<0>;
v0x1a1d900_0 .net "A", 0 0, L_0x1a9fba0;  alias, 1 drivers
v0x1a1d9e0_0 .net "B", 0 0, L_0x1a9ec20;  alias, 1 drivers
v0x1a1daa0_0 .net "carryin", 0 0, L_0x1a9ea00;  alias, 1 drivers
v0x1a1db70_0 .net "carryout", 0 0, L_0x1a1f770;  alias, 1 drivers
v0x1a1dc30_0 .net "out1", 0 0, L_0x1a9ed30;  1 drivers
v0x1a1dd40_0 .net "out2", 0 0, L_0x1a9ef60;  1 drivers
v0x1a1de00_0 .net "out3", 0 0, L_0x1a9eff0;  1 drivers
v0x1a1dec0_0 .net "sum", 0 0, L_0x1a9ee30;  alias, 1 drivers
S_0x1a1e020 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a1fc50 .functor AND 1, L_0x1a9fba0, L_0x1a9fc40, C4<1>, C4<1>;
v0x1a1e260_0 .net "A", 0 0, L_0x1a9fba0;  alias, 1 drivers
v0x1a1e320_0 .net "B", 0 0, L_0x1a9fc40;  alias, 1 drivers
v0x1a1e3c0_0 .net "out", 0 0, L_0x1a1fc50;  1 drivers
S_0x1a1e510 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a1e760_0 .net "I", 7 0, L_0x1a9f880;  alias, 1 drivers
v0x1a1e840_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a1e900_0 .net "out", 0 0, L_0x1a9f570;  alias, 1 drivers
L_0x1a9f570 .part/v L_0x1a9f880, v0x19b4ae0_0, 1;
S_0x1a1ea50 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9f3e0 .functor NAND 1, L_0x1a9fba0, L_0x1a9fc40, C4<1>, C4<1>;
v0x1a1ec70_0 .net "A", 0 0, L_0x1a9fba0;  alias, 1 drivers
v0x1a1ed80_0 .net "B", 0 0, L_0x1a9fc40;  alias, 1 drivers
v0x1a1ee40_0 .net "out", 0 0, L_0x1a9f3e0;  1 drivers
S_0x1a1ef50 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9f450 .functor NOR 1, L_0x1a9fba0, L_0x1a9fc40, C4<0>, C4<0>;
v0x1a1f1c0_0 .net "A", 0 0, L_0x1a9fba0;  alias, 1 drivers
v0x1a1f280_0 .net "B", 0 0, L_0x1a9fc40;  alias, 1 drivers
v0x1a1f390_0 .net "out", 0 0, L_0x1a9f450;  1 drivers
S_0x1a1f490 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9f4e0 .functor OR 1, L_0x1a9fba0, L_0x1a9fc40, C4<0>, C4<0>;
v0x1a1f6b0_0 .net "A", 0 0, L_0x1a9fba0;  alias, 1 drivers
v0x1a1f800_0 .net "B", 0 0, L_0x1a9fc40;  alias, 1 drivers
v0x1a1f8c0_0 .net "out", 0 0, L_0x1a9f4e0;  1 drivers
S_0x1a1f9c0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9ec20 .functor XOR 1, L_0x1a9fc40, L_0x1a9ec90, C4<0>, C4<0>;
v0x1a1fb90_0 .net "A", 0 0, L_0x1a9fc40;  alias, 1 drivers
v0x1a1fce0_0 .net "B", 0 0, L_0x1a9ec90;  1 drivers
v0x1a1fda0_0 .net "out", 0 0, L_0x1a9ec20;  alias, 1 drivers
S_0x1a1fee0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a1d3f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9f260 .functor XOR 1, L_0x1a9fba0, L_0x1a9fc40, C4<0>, C4<0>;
v0x1a200b0_0 .net "A", 0 0, L_0x1a9fba0;  alias, 1 drivers
v0x1a20170_0 .net "B", 0 0, L_0x1a9fc40;  alias, 1 drivers
v0x1a20230_0 .net "out", 0 0, L_0x1a9f260;  1 drivers
S_0x1a20fc0 .scope module, "alu23" "ALU_1bit" 8 141, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa0900 .functor BUFZ 1, L_0x1aa0060, C4<0>, C4<0>, C4<0>;
L_0x1aa0990 .functor BUFZ 1, L_0x1aa0060, C4<0>, C4<0>, C4<0>;
v0x1a23fb0_0 .net "A", 0 0, L_0x1aa0dd0;  1 drivers
v0x1a24050_0 .net "B", 0 0, L_0x1a9fce0;  1 drivers
v0x1a24110_0 .net "I", 7 0, L_0x1aa0ab0;  1 drivers
v0x1a24210_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a242b0_0 .net *"_s15", 0 0, L_0x1aa0900;  1 drivers
v0x1a243c0_0 .net *"_s19", 0 0, L_0x1aa0990;  1 drivers
L_0x7fb90a0d2840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a244a0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2840;  1 drivers
v0x1a24580_0 .net "addORsub", 0 0, L_0x1aa0060;  1 drivers
v0x1a24620_0 .net "carryin", 0 0, L_0x1a9fd80;  1 drivers
v0x1a24780_0 .net "carryout", 0 0, L_0x1a233c0;  1 drivers
v0x1a24850_0 .net "modB", 0 0, L_0x1a9eb30;  1 drivers
v0x1a248f0_0 .net "out", 0 0, L_0x1aa07a0;  1 drivers
L_0x1a9ff10 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa0ab0_0_0 .concat8 [ 1 1 1 1], L_0x1aa0900, L_0x1aa0990, L_0x1aa0490, L_0x7fb90a0d2840;
LS_0x1aa0ab0_0_4 .concat8 [ 1 1 1 1], L_0x1a238a0, L_0x1aa0610, L_0x1aa0680, L_0x1aa0710;
L_0x1aa0ab0 .concat8 [ 4 4 0 0], LS_0x1aa0ab0_0_0, LS_0x1aa0ab0_0_4;
S_0x1a21340 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a9eba0 .functor XOR 1, L_0x1aa0dd0, L_0x1a9eb30, C4<0>, C4<0>;
L_0x1aa0060 .functor XOR 1, L_0x1a9eba0, L_0x1a9fd80, C4<0>, C4<0>;
L_0x1aa0190 .functor AND 1, L_0x1a9eba0, L_0x1a9fd80, C4<1>, C4<1>;
L_0x1aa0220 .functor AND 1, L_0x1aa0dd0, L_0x1a9eb30, C4<1>, C4<1>;
L_0x1a233c0 .functor OR 1, L_0x1aa0190, L_0x1aa0220, C4<0>, C4<0>;
v0x1a21570_0 .net "A", 0 0, L_0x1aa0dd0;  alias, 1 drivers
v0x1a21630_0 .net "B", 0 0, L_0x1a9eb30;  alias, 1 drivers
v0x1a216f0_0 .net "carryin", 0 0, L_0x1a9fd80;  alias, 1 drivers
v0x1a217c0_0 .net "carryout", 0 0, L_0x1a233c0;  alias, 1 drivers
v0x1a21880_0 .net "out1", 0 0, L_0x1a9eba0;  1 drivers
v0x1a21990_0 .net "out2", 0 0, L_0x1aa0190;  1 drivers
v0x1a21a50_0 .net "out3", 0 0, L_0x1aa0220;  1 drivers
v0x1a21b10_0 .net "sum", 0 0, L_0x1aa0060;  alias, 1 drivers
S_0x1a21c70 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a238a0 .functor AND 1, L_0x1aa0dd0, L_0x1a9fce0, C4<1>, C4<1>;
v0x1a21eb0_0 .net "A", 0 0, L_0x1aa0dd0;  alias, 1 drivers
v0x1a21f70_0 .net "B", 0 0, L_0x1a9fce0;  alias, 1 drivers
v0x1a22010_0 .net "out", 0 0, L_0x1a238a0;  1 drivers
S_0x1a22160 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a223b0_0 .net "I", 7 0, L_0x1aa0ab0;  alias, 1 drivers
v0x1a22490_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a22550_0 .net "out", 0 0, L_0x1aa07a0;  alias, 1 drivers
L_0x1aa07a0 .part/v L_0x1aa0ab0, v0x19b4ae0_0, 1;
S_0x1a226a0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa0610 .functor NAND 1, L_0x1aa0dd0, L_0x1a9fce0, C4<1>, C4<1>;
v0x1a228c0_0 .net "A", 0 0, L_0x1aa0dd0;  alias, 1 drivers
v0x1a229d0_0 .net "B", 0 0, L_0x1a9fce0;  alias, 1 drivers
v0x1a22a90_0 .net "out", 0 0, L_0x1aa0610;  1 drivers
S_0x1a22ba0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa0680 .functor NOR 1, L_0x1aa0dd0, L_0x1a9fce0, C4<0>, C4<0>;
v0x1a22e10_0 .net "A", 0 0, L_0x1aa0dd0;  alias, 1 drivers
v0x1a22ed0_0 .net "B", 0 0, L_0x1a9fce0;  alias, 1 drivers
v0x1a22fe0_0 .net "out", 0 0, L_0x1aa0680;  1 drivers
S_0x1a230e0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa0710 .functor OR 1, L_0x1aa0dd0, L_0x1a9fce0, C4<0>, C4<0>;
v0x1a23300_0 .net "A", 0 0, L_0x1aa0dd0;  alias, 1 drivers
v0x1a23450_0 .net "B", 0 0, L_0x1a9fce0;  alias, 1 drivers
v0x1a23510_0 .net "out", 0 0, L_0x1aa0710;  1 drivers
S_0x1a23610 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a9eb30 .functor XOR 1, L_0x1a9fce0, L_0x1a9ff10, C4<0>, C4<0>;
v0x1a237e0_0 .net "A", 0 0, L_0x1a9fce0;  alias, 1 drivers
v0x1a23930_0 .net "B", 0 0, L_0x1a9ff10;  1 drivers
v0x1a239f0_0 .net "out", 0 0, L_0x1a9eb30;  alias, 1 drivers
S_0x1a23b30 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a20fc0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa0490 .functor XOR 1, L_0x1aa0dd0, L_0x1a9fce0, C4<0>, C4<0>;
v0x1a23d00_0 .net "A", 0 0, L_0x1aa0dd0;  alias, 1 drivers
v0x1a23dc0_0 .net "B", 0 0, L_0x1a9fce0;  alias, 1 drivers
v0x1a23e80_0 .net "out", 0 0, L_0x1aa0490;  1 drivers
S_0x1a24a10 .scope module, "alu24" "ALU_1bit" 8 142, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa1b30 .functor BUFZ 1, L_0x1aa12d0, C4<0>, C4<0>, C4<0>;
L_0x1aa1bc0 .functor BUFZ 1, L_0x1aa12d0, C4<0>, C4<0>, C4<0>;
v0x1a27980_0 .net "A", 0 0, L_0x1aa2000;  1 drivers
v0x1a27a20_0 .net "B", 0 0, L_0x1aa20a0;  1 drivers
v0x1a27ae0_0 .net "I", 7 0, L_0x1aa1ce0;  1 drivers
v0x1a27be0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a27c80_0 .net *"_s15", 0 0, L_0x1aa1b30;  1 drivers
v0x1a27d90_0 .net *"_s19", 0 0, L_0x1aa1bc0;  1 drivers
L_0x7fb90a0d2888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a27e70_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2888;  1 drivers
v0x1a27f50_0 .net "addORsub", 0 0, L_0x1aa12d0;  1 drivers
v0x1a27ff0_0 .net "carryin", 0 0, L_0x1aa0e70;  1 drivers
v0x1a28150_0 .net "carryout", 0 0, L_0x1a26d90;  1 drivers
v0x1a28220_0 .net "modB", 0 0, L_0x1aa10c0;  1 drivers
v0x1a282c0_0 .net "out", 0 0, L_0x1aa19d0;  1 drivers
L_0x1aa1130 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa1ce0_0_0 .concat8 [ 1 1 1 1], L_0x1aa1b30, L_0x1aa1bc0, L_0x1aa16c0, L_0x7fb90a0d2888;
LS_0x1aa1ce0_0_4 .concat8 [ 1 1 1 1], L_0x1a27270, L_0x1aa1840, L_0x1aa18b0, L_0x1aa1940;
L_0x1aa1ce0 .concat8 [ 4 4 0 0], LS_0x1aa1ce0_0_0, LS_0x1aa1ce0_0_4;
S_0x1a24c80 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa11d0 .functor XOR 1, L_0x1aa2000, L_0x1aa10c0, C4<0>, C4<0>;
L_0x1aa12d0 .functor XOR 1, L_0x1aa11d0, L_0x1aa0e70, C4<0>, C4<0>;
L_0x1aa13e0 .functor AND 1, L_0x1aa11d0, L_0x1aa0e70, C4<1>, C4<1>;
L_0x1aa1450 .functor AND 1, L_0x1aa2000, L_0x1aa10c0, C4<1>, C4<1>;
L_0x1a26d90 .functor OR 1, L_0x1aa13e0, L_0x1aa1450, C4<0>, C4<0>;
v0x1a24f20_0 .net "A", 0 0, L_0x1aa2000;  alias, 1 drivers
v0x1a25000_0 .net "B", 0 0, L_0x1aa10c0;  alias, 1 drivers
v0x1a250c0_0 .net "carryin", 0 0, L_0x1aa0e70;  alias, 1 drivers
v0x1a25190_0 .net "carryout", 0 0, L_0x1a26d90;  alias, 1 drivers
v0x1a25250_0 .net "out1", 0 0, L_0x1aa11d0;  1 drivers
v0x1a25360_0 .net "out2", 0 0, L_0x1aa13e0;  1 drivers
v0x1a25420_0 .net "out3", 0 0, L_0x1aa1450;  1 drivers
v0x1a254e0_0 .net "sum", 0 0, L_0x1aa12d0;  alias, 1 drivers
S_0x1a25640 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a27270 .functor AND 1, L_0x1aa2000, L_0x1aa20a0, C4<1>, C4<1>;
v0x1a25880_0 .net "A", 0 0, L_0x1aa2000;  alias, 1 drivers
v0x1a25940_0 .net "B", 0 0, L_0x1aa20a0;  alias, 1 drivers
v0x1a259e0_0 .net "out", 0 0, L_0x1a27270;  1 drivers
S_0x1a25b30 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a25d80_0 .net "I", 7 0, L_0x1aa1ce0;  alias, 1 drivers
v0x1a25e60_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a25f20_0 .net "out", 0 0, L_0x1aa19d0;  alias, 1 drivers
L_0x1aa19d0 .part/v L_0x1aa1ce0, v0x19b4ae0_0, 1;
S_0x1a26070 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa1840 .functor NAND 1, L_0x1aa2000, L_0x1aa20a0, C4<1>, C4<1>;
v0x1a26290_0 .net "A", 0 0, L_0x1aa2000;  alias, 1 drivers
v0x1a263a0_0 .net "B", 0 0, L_0x1aa20a0;  alias, 1 drivers
v0x1a26460_0 .net "out", 0 0, L_0x1aa1840;  1 drivers
S_0x1a26570 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa18b0 .functor NOR 1, L_0x1aa2000, L_0x1aa20a0, C4<0>, C4<0>;
v0x1a267e0_0 .net "A", 0 0, L_0x1aa2000;  alias, 1 drivers
v0x1a268a0_0 .net "B", 0 0, L_0x1aa20a0;  alias, 1 drivers
v0x1a269b0_0 .net "out", 0 0, L_0x1aa18b0;  1 drivers
S_0x1a26ab0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa1940 .functor OR 1, L_0x1aa2000, L_0x1aa20a0, C4<0>, C4<0>;
v0x1a26cd0_0 .net "A", 0 0, L_0x1aa2000;  alias, 1 drivers
v0x1a26e20_0 .net "B", 0 0, L_0x1aa20a0;  alias, 1 drivers
v0x1a26ee0_0 .net "out", 0 0, L_0x1aa1940;  1 drivers
S_0x1a26fe0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa10c0 .functor XOR 1, L_0x1aa20a0, L_0x1aa1130, C4<0>, C4<0>;
v0x1a271b0_0 .net "A", 0 0, L_0x1aa20a0;  alias, 1 drivers
v0x1a27300_0 .net "B", 0 0, L_0x1aa1130;  1 drivers
v0x1a273c0_0 .net "out", 0 0, L_0x1aa10c0;  alias, 1 drivers
S_0x1a27500 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a24a10;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa16c0 .functor XOR 1, L_0x1aa2000, L_0x1aa20a0, C4<0>, C4<0>;
v0x1a276d0_0 .net "A", 0 0, L_0x1aa2000;  alias, 1 drivers
v0x1a27790_0 .net "B", 0 0, L_0x1aa20a0;  alias, 1 drivers
v0x1a27850_0 .net "out", 0 0, L_0x1aa16c0;  1 drivers
S_0x1a283e0 .scope module, "alu25" "ALU_1bit" 8 143, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa2d60 .functor BUFZ 1, L_0x1aa24c0, C4<0>, C4<0>, C4<0>;
L_0x1aa2df0 .functor BUFZ 1, L_0x1aa24c0, C4<0>, C4<0>, C4<0>;
v0x1a2b350_0 .net "A", 0 0, L_0x1aa30a0;  1 drivers
v0x1a2b3f0_0 .net "B", 0 0, L_0x1a90b90;  1 drivers
v0x1a2b4b0_0 .net "I", 7 0, L_0x1aa2f10;  1 drivers
v0x1a2b5b0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a2b650_0 .net *"_s15", 0 0, L_0x1aa2d60;  1 drivers
v0x1a2b760_0 .net *"_s19", 0 0, L_0x1aa2df0;  1 drivers
L_0x7fb90a0d28d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a2b840_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d28d0;  1 drivers
v0x1a2b920_0 .net "addORsub", 0 0, L_0x1aa24c0;  1 drivers
v0x1a2b9c0_0 .net "carryin", 0 0, L_0x1a90c30;  1 drivers
v0x1a2bb20_0 .net "carryout", 0 0, L_0x1a2a760;  1 drivers
v0x1a2bbf0_0 .net "modB", 0 0, L_0x1aa0fa0;  1 drivers
v0x1a2bc90_0 .net "out", 0 0, L_0x1aa2c00;  1 drivers
L_0x1aa1010 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa2f10_0_0 .concat8 [ 1 1 1 1], L_0x1aa2d60, L_0x1aa2df0, L_0x1aa28f0, L_0x7fb90a0d28d0;
LS_0x1aa2f10_0_4 .concat8 [ 1 1 1 1], L_0x1a2ac40, L_0x1aa2a70, L_0x1aa2ae0, L_0x1aa2b70;
L_0x1aa2f10 .concat8 [ 4 4 0 0], LS_0x1aa2f10_0_0, LS_0x1aa2f10_0_4;
S_0x1a28650 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa23a0 .functor XOR 1, L_0x1aa30a0, L_0x1aa0fa0, C4<0>, C4<0>;
L_0x1aa24c0 .functor XOR 1, L_0x1aa23a0, L_0x1a90c30, C4<0>, C4<0>;
L_0x1aa25f0 .functor AND 1, L_0x1aa23a0, L_0x1a90c30, C4<1>, C4<1>;
L_0x1aa2680 .functor AND 1, L_0x1aa30a0, L_0x1aa0fa0, C4<1>, C4<1>;
L_0x1a2a760 .functor OR 1, L_0x1aa25f0, L_0x1aa2680, C4<0>, C4<0>;
v0x1a288f0_0 .net "A", 0 0, L_0x1aa30a0;  alias, 1 drivers
v0x1a289d0_0 .net "B", 0 0, L_0x1aa0fa0;  alias, 1 drivers
v0x1a28a90_0 .net "carryin", 0 0, L_0x1a90c30;  alias, 1 drivers
v0x1a28b60_0 .net "carryout", 0 0, L_0x1a2a760;  alias, 1 drivers
v0x1a28c20_0 .net "out1", 0 0, L_0x1aa23a0;  1 drivers
v0x1a28d30_0 .net "out2", 0 0, L_0x1aa25f0;  1 drivers
v0x1a28df0_0 .net "out3", 0 0, L_0x1aa2680;  1 drivers
v0x1a28eb0_0 .net "sum", 0 0, L_0x1aa24c0;  alias, 1 drivers
S_0x1a29010 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a2ac40 .functor AND 1, L_0x1aa30a0, L_0x1a90b90, C4<1>, C4<1>;
v0x1a29250_0 .net "A", 0 0, L_0x1aa30a0;  alias, 1 drivers
v0x1a29310_0 .net "B", 0 0, L_0x1a90b90;  alias, 1 drivers
v0x1a293b0_0 .net "out", 0 0, L_0x1a2ac40;  1 drivers
S_0x1a29500 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a29750_0 .net "I", 7 0, L_0x1aa2f10;  alias, 1 drivers
v0x1a29830_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a298f0_0 .net "out", 0 0, L_0x1aa2c00;  alias, 1 drivers
L_0x1aa2c00 .part/v L_0x1aa2f10, v0x19b4ae0_0, 1;
S_0x1a29a40 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa2a70 .functor NAND 1, L_0x1aa30a0, L_0x1a90b90, C4<1>, C4<1>;
v0x1a29c60_0 .net "A", 0 0, L_0x1aa30a0;  alias, 1 drivers
v0x1a29d70_0 .net "B", 0 0, L_0x1a90b90;  alias, 1 drivers
v0x1a29e30_0 .net "out", 0 0, L_0x1aa2a70;  1 drivers
S_0x1a29f40 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa2ae0 .functor NOR 1, L_0x1aa30a0, L_0x1a90b90, C4<0>, C4<0>;
v0x1a2a1b0_0 .net "A", 0 0, L_0x1aa30a0;  alias, 1 drivers
v0x1a2a270_0 .net "B", 0 0, L_0x1a90b90;  alias, 1 drivers
v0x1a2a380_0 .net "out", 0 0, L_0x1aa2ae0;  1 drivers
S_0x1a2a480 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa2b70 .functor OR 1, L_0x1aa30a0, L_0x1a90b90, C4<0>, C4<0>;
v0x1a2a6a0_0 .net "A", 0 0, L_0x1aa30a0;  alias, 1 drivers
v0x1a2a7f0_0 .net "B", 0 0, L_0x1a90b90;  alias, 1 drivers
v0x1a2a8b0_0 .net "out", 0 0, L_0x1aa2b70;  1 drivers
S_0x1a2a9b0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa0fa0 .functor XOR 1, L_0x1a90b90, L_0x1aa1010, C4<0>, C4<0>;
v0x1a2ab80_0 .net "A", 0 0, L_0x1a90b90;  alias, 1 drivers
v0x1a2acd0_0 .net "B", 0 0, L_0x1aa1010;  1 drivers
v0x1a2ad90_0 .net "out", 0 0, L_0x1aa0fa0;  alias, 1 drivers
S_0x1a2aed0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a283e0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa28f0 .functor XOR 1, L_0x1aa30a0, L_0x1a90b90, C4<0>, C4<0>;
v0x1a2b0a0_0 .net "A", 0 0, L_0x1aa30a0;  alias, 1 drivers
v0x1a2b160_0 .net "B", 0 0, L_0x1a90b90;  alias, 1 drivers
v0x1a2b220_0 .net "out", 0 0, L_0x1aa28f0;  1 drivers
S_0x1a2bdb0 .scope module, "alu26" "ALU_1bit" 8 144, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa3f60 .functor BUFZ 1, L_0x1aa22e0, C4<0>, C4<0>, C4<0>;
L_0x1aa3fd0 .functor BUFZ 1, L_0x1aa22e0, C4<0>, C4<0>, C4<0>;
v0x1a2ed20_0 .net "A", 0 0, L_0x1a91e30;  1 drivers
v0x1a2edc0_0 .net "B", 0 0, L_0x1aa4600;  1 drivers
v0x1a2ee80_0 .net "I", 7 0, L_0x1aa40d0;  1 drivers
v0x1a2ef80_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a2f020_0 .net *"_s15", 0 0, L_0x1aa3f60;  1 drivers
v0x1a2f130_0 .net *"_s19", 0 0, L_0x1aa3fd0;  1 drivers
L_0x7fb90a0d2918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a2f210_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2918;  1 drivers
v0x1a2f2f0_0 .net "addORsub", 0 0, L_0x1aa22e0;  1 drivers
v0x1a2f390_0 .net "carryin", 0 0, L_0x1aa3550;  1 drivers
v0x1a2f4f0_0 .net "carryout", 0 0, L_0x1a2e130;  1 drivers
v0x1a2f5c0_0 .net "modB", 0 0, L_0x1956310;  1 drivers
v0x1a2f660_0 .net "out", 0 0, L_0x1aa3e20;  1 drivers
L_0x1aa2140 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa40d0_0_0 .concat8 [ 1 1 1 1], L_0x1aa3f60, L_0x1aa3fd0, L_0x1aa3b50, L_0x7fb90a0d2918;
LS_0x1aa40d0_0_4 .concat8 [ 1 1 1 1], L_0x1a2e610, L_0x1aa3cd0, L_0x1aa3d40, L_0x1aa3db0;
L_0x1aa40d0 .concat8 [ 4 4 0 0], LS_0x1aa40d0_0_0, LS_0x1aa40d0_0_4;
S_0x1a2c020 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa21e0 .functor XOR 1, L_0x1a91e30, L_0x1956310, C4<0>, C4<0>;
L_0x1aa22e0 .functor XOR 1, L_0x1aa21e0, L_0x1aa3550, C4<0>, C4<0>;
L_0x1aa3870 .functor AND 1, L_0x1aa21e0, L_0x1aa3550, C4<1>, C4<1>;
L_0x1aa38e0 .functor AND 1, L_0x1a91e30, L_0x1956310, C4<1>, C4<1>;
L_0x1a2e130 .functor OR 1, L_0x1aa3870, L_0x1aa38e0, C4<0>, C4<0>;
v0x1a2c2c0_0 .net "A", 0 0, L_0x1a91e30;  alias, 1 drivers
v0x1a2c3a0_0 .net "B", 0 0, L_0x1956310;  alias, 1 drivers
v0x1a2c460_0 .net "carryin", 0 0, L_0x1aa3550;  alias, 1 drivers
v0x1a2c530_0 .net "carryout", 0 0, L_0x1a2e130;  alias, 1 drivers
v0x1a2c5f0_0 .net "out1", 0 0, L_0x1aa21e0;  1 drivers
v0x1a2c700_0 .net "out2", 0 0, L_0x1aa3870;  1 drivers
v0x1a2c7c0_0 .net "out3", 0 0, L_0x1aa38e0;  1 drivers
v0x1a2c880_0 .net "sum", 0 0, L_0x1aa22e0;  alias, 1 drivers
S_0x1a2c9e0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a2e610 .functor AND 1, L_0x1a91e30, L_0x1aa4600, C4<1>, C4<1>;
v0x1a2cc20_0 .net "A", 0 0, L_0x1a91e30;  alias, 1 drivers
v0x1a2cce0_0 .net "B", 0 0, L_0x1aa4600;  alias, 1 drivers
v0x1a2cd80_0 .net "out", 0 0, L_0x1a2e610;  1 drivers
S_0x1a2ced0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a2d120_0 .net "I", 7 0, L_0x1aa40d0;  alias, 1 drivers
v0x1a2d200_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a2d2c0_0 .net "out", 0 0, L_0x1aa3e20;  alias, 1 drivers
L_0x1aa3e20 .part/v L_0x1aa40d0, v0x19b4ae0_0, 1;
S_0x1a2d410 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa3cd0 .functor NAND 1, L_0x1a91e30, L_0x1aa4600, C4<1>, C4<1>;
v0x1a2d630_0 .net "A", 0 0, L_0x1a91e30;  alias, 1 drivers
v0x1a2d740_0 .net "B", 0 0, L_0x1aa4600;  alias, 1 drivers
v0x1a2d800_0 .net "out", 0 0, L_0x1aa3cd0;  1 drivers
S_0x1a2d910 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa3d40 .functor NOR 1, L_0x1a91e30, L_0x1aa4600, C4<0>, C4<0>;
v0x1a2db80_0 .net "A", 0 0, L_0x1a91e30;  alias, 1 drivers
v0x1a2dc40_0 .net "B", 0 0, L_0x1aa4600;  alias, 1 drivers
v0x1a2dd50_0 .net "out", 0 0, L_0x1aa3d40;  1 drivers
S_0x1a2de50 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa3db0 .functor OR 1, L_0x1a91e30, L_0x1aa4600, C4<0>, C4<0>;
v0x1a2e070_0 .net "A", 0 0, L_0x1a91e30;  alias, 1 drivers
v0x1a2e1c0_0 .net "B", 0 0, L_0x1aa4600;  alias, 1 drivers
v0x1a2e280_0 .net "out", 0 0, L_0x1aa3db0;  1 drivers
S_0x1a2e380 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1956310 .functor XOR 1, L_0x1aa4600, L_0x1aa2140, C4<0>, C4<0>;
v0x1a2e550_0 .net "A", 0 0, L_0x1aa4600;  alias, 1 drivers
v0x1a2e6a0_0 .net "B", 0 0, L_0x1aa2140;  1 drivers
v0x1a2e760_0 .net "out", 0 0, L_0x1956310;  alias, 1 drivers
S_0x1a2e8a0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a2bdb0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa3b50 .functor XOR 1, L_0x1a91e30, L_0x1aa4600, C4<0>, C4<0>;
v0x1a2ea70_0 .net "A", 0 0, L_0x1a91e30;  alias, 1 drivers
v0x1a2eb30_0 .net "B", 0 0, L_0x1aa4600;  alias, 1 drivers
v0x1a2ebf0_0 .net "out", 0 0, L_0x1aa3b50;  1 drivers
S_0x1a2f780 .scope module, "alu27" "ALU_1bit" 8 145, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa51c0 .functor BUFZ 1, L_0x1aa49c0, C4<0>, C4<0>, C4<0>;
L_0x1aa5230 .functor BUFZ 1, L_0x1aa49c0, C4<0>, C4<0>, C4<0>;
v0x1a326f0_0 .net "A", 0 0, L_0x1aa5650;  1 drivers
v0x1a32790_0 .net "B", 0 0, L_0x1aa46a0;  1 drivers
v0x1a32850_0 .net "I", 7 0, L_0x1aa5330;  1 drivers
v0x1a32950_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a329f0_0 .net *"_s15", 0 0, L_0x1aa51c0;  1 drivers
v0x1a32b00_0 .net *"_s19", 0 0, L_0x1aa5230;  1 drivers
L_0x7fb90a0d2960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a32be0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2960;  1 drivers
v0x1a32cc0_0 .net "addORsub", 0 0, L_0x1aa49c0;  1 drivers
v0x1a32d60_0 .net "carryin", 0 0, L_0x1aa4740;  1 drivers
v0x1a32ec0_0 .net "carryout", 0 0, L_0x1a31b00;  1 drivers
v0x1a32f90_0 .net "modB", 0 0, L_0x1a91ed0;  1 drivers
v0x1a33030_0 .net "out", 0 0, L_0x1aa5080;  1 drivers
L_0x1aa3680 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa5330_0_0 .concat8 [ 1 1 1 1], L_0x1aa51c0, L_0x1aa5230, L_0x1aa4db0, L_0x7fb90a0d2960;
LS_0x1aa5330_0_4 .concat8 [ 1 1 1 1], L_0x1a31fe0, L_0x1aa4f30, L_0x1aa4fa0, L_0x1aa5010;
L_0x1aa5330 .concat8 [ 4 4 0 0], LS_0x1aa5330_0_0, LS_0x1aa5330_0_4;
S_0x1a2f9f0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa3720 .functor XOR 1, L_0x1aa5650, L_0x1a91ed0, C4<0>, C4<0>;
L_0x1aa49c0 .functor XOR 1, L_0x1aa3720, L_0x1aa4740, C4<0>, C4<0>;
L_0x1aa4ad0 .functor AND 1, L_0x1aa3720, L_0x1aa4740, C4<1>, C4<1>;
L_0x1aa4b40 .functor AND 1, L_0x1aa5650, L_0x1a91ed0, C4<1>, C4<1>;
L_0x1a31b00 .functor OR 1, L_0x1aa4ad0, L_0x1aa4b40, C4<0>, C4<0>;
v0x1a2fc90_0 .net "A", 0 0, L_0x1aa5650;  alias, 1 drivers
v0x1a2fd70_0 .net "B", 0 0, L_0x1a91ed0;  alias, 1 drivers
v0x1a2fe30_0 .net "carryin", 0 0, L_0x1aa4740;  alias, 1 drivers
v0x1a2ff00_0 .net "carryout", 0 0, L_0x1a31b00;  alias, 1 drivers
v0x1a2ffc0_0 .net "out1", 0 0, L_0x1aa3720;  1 drivers
v0x1a300d0_0 .net "out2", 0 0, L_0x1aa4ad0;  1 drivers
v0x1a30190_0 .net "out3", 0 0, L_0x1aa4b40;  1 drivers
v0x1a30250_0 .net "sum", 0 0, L_0x1aa49c0;  alias, 1 drivers
S_0x1a303b0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a31fe0 .functor AND 1, L_0x1aa5650, L_0x1aa46a0, C4<1>, C4<1>;
v0x1a305f0_0 .net "A", 0 0, L_0x1aa5650;  alias, 1 drivers
v0x1a306b0_0 .net "B", 0 0, L_0x1aa46a0;  alias, 1 drivers
v0x1a30750_0 .net "out", 0 0, L_0x1a31fe0;  1 drivers
S_0x1a308a0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a30af0_0 .net "I", 7 0, L_0x1aa5330;  alias, 1 drivers
v0x1a30bd0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a30c90_0 .net "out", 0 0, L_0x1aa5080;  alias, 1 drivers
L_0x1aa5080 .part/v L_0x1aa5330, v0x19b4ae0_0, 1;
S_0x1a30de0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa4f30 .functor NAND 1, L_0x1aa5650, L_0x1aa46a0, C4<1>, C4<1>;
v0x1a31000_0 .net "A", 0 0, L_0x1aa5650;  alias, 1 drivers
v0x1a31110_0 .net "B", 0 0, L_0x1aa46a0;  alias, 1 drivers
v0x1a311d0_0 .net "out", 0 0, L_0x1aa4f30;  1 drivers
S_0x1a312e0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa4fa0 .functor NOR 1, L_0x1aa5650, L_0x1aa46a0, C4<0>, C4<0>;
v0x1a31550_0 .net "A", 0 0, L_0x1aa5650;  alias, 1 drivers
v0x1a31610_0 .net "B", 0 0, L_0x1aa46a0;  alias, 1 drivers
v0x1a31720_0 .net "out", 0 0, L_0x1aa4fa0;  1 drivers
S_0x1a31820 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa5010 .functor OR 1, L_0x1aa5650, L_0x1aa46a0, C4<0>, C4<0>;
v0x1a31a40_0 .net "A", 0 0, L_0x1aa5650;  alias, 1 drivers
v0x1a31b90_0 .net "B", 0 0, L_0x1aa46a0;  alias, 1 drivers
v0x1a31c50_0 .net "out", 0 0, L_0x1aa5010;  1 drivers
S_0x1a31d50 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a91ed0 .functor XOR 1, L_0x1aa46a0, L_0x1aa3680, C4<0>, C4<0>;
v0x1a31f20_0 .net "A", 0 0, L_0x1aa46a0;  alias, 1 drivers
v0x1a32070_0 .net "B", 0 0, L_0x1aa3680;  1 drivers
v0x1a32130_0 .net "out", 0 0, L_0x1a91ed0;  alias, 1 drivers
S_0x1a32270 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a2f780;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa4db0 .functor XOR 1, L_0x1aa5650, L_0x1aa46a0, C4<0>, C4<0>;
v0x1a32440_0 .net "A", 0 0, L_0x1aa5650;  alias, 1 drivers
v0x1a32500_0 .net "B", 0 0, L_0x1aa46a0;  alias, 1 drivers
v0x1a325c0_0 .net "out", 0 0, L_0x1aa4db0;  1 drivers
S_0x1a33150 .scope module, "alu28" "ALU_1bit" 8 146, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa62f0 .functor BUFZ 1, L_0x1aa5b40, C4<0>, C4<0>, C4<0>;
L_0x1aa6360 .functor BUFZ 1, L_0x1aa5b40, C4<0>, C4<0>, C4<0>;
v0x1a360c0_0 .net "A", 0 0, L_0x1aa6780;  1 drivers
v0x1a36160_0 .net "B", 0 0, L_0x1aa6820;  1 drivers
v0x1a36220_0 .net "I", 7 0, L_0x1aa6460;  1 drivers
v0x1a36320_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a363c0_0 .net *"_s15", 0 0, L_0x1aa62f0;  1 drivers
v0x1a364d0_0 .net *"_s19", 0 0, L_0x1aa6360;  1 drivers
L_0x7fb90a0d29a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a365b0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d29a8;  1 drivers
v0x1a36690_0 .net "addORsub", 0 0, L_0x1aa5b40;  1 drivers
v0x1a36730_0 .net "carryin", 0 0, L_0x1aa56f0;  1 drivers
v0x1a36890_0 .net "carryout", 0 0, L_0x1a354d0;  1 drivers
v0x1a36960_0 .net "modB", 0 0, L_0x1aa4870;  1 drivers
v0x1a36a00_0 .net "out", 0 0, L_0x1aa61b0;  1 drivers
L_0x1aa59a0 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa6460_0_0 .concat8 [ 1 1 1 1], L_0x1aa62f0, L_0x1aa6360, L_0x1aa5ee0, L_0x7fb90a0d29a8;
LS_0x1aa6460_0_4 .concat8 [ 1 1 1 1], L_0x1a359b0, L_0x1aa6060, L_0x1aa60d0, L_0x1aa6140;
L_0x1aa6460 .concat8 [ 4 4 0 0], LS_0x1aa6460_0_0, LS_0x1aa6460_0_4;
S_0x1a333c0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa5a40 .functor XOR 1, L_0x1aa6780, L_0x1aa4870, C4<0>, C4<0>;
L_0x1aa5b40 .functor XOR 1, L_0x1aa5a40, L_0x1aa56f0, C4<0>, C4<0>;
L_0x1aa5c00 .functor AND 1, L_0x1aa5a40, L_0x1aa56f0, C4<1>, C4<1>;
L_0x1aa5c70 .functor AND 1, L_0x1aa6780, L_0x1aa4870, C4<1>, C4<1>;
L_0x1a354d0 .functor OR 1, L_0x1aa5c00, L_0x1aa5c70, C4<0>, C4<0>;
v0x1a33660_0 .net "A", 0 0, L_0x1aa6780;  alias, 1 drivers
v0x1a33740_0 .net "B", 0 0, L_0x1aa4870;  alias, 1 drivers
v0x1a33800_0 .net "carryin", 0 0, L_0x1aa56f0;  alias, 1 drivers
v0x1a338d0_0 .net "carryout", 0 0, L_0x1a354d0;  alias, 1 drivers
v0x1a33990_0 .net "out1", 0 0, L_0x1aa5a40;  1 drivers
v0x1a33aa0_0 .net "out2", 0 0, L_0x1aa5c00;  1 drivers
v0x1a33b60_0 .net "out3", 0 0, L_0x1aa5c70;  1 drivers
v0x1a33c20_0 .net "sum", 0 0, L_0x1aa5b40;  alias, 1 drivers
S_0x1a33d80 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a359b0 .functor AND 1, L_0x1aa6780, L_0x1aa6820, C4<1>, C4<1>;
v0x1a33fc0_0 .net "A", 0 0, L_0x1aa6780;  alias, 1 drivers
v0x1a34080_0 .net "B", 0 0, L_0x1aa6820;  alias, 1 drivers
v0x1a34120_0 .net "out", 0 0, L_0x1a359b0;  1 drivers
S_0x1a34270 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a344c0_0 .net "I", 7 0, L_0x1aa6460;  alias, 1 drivers
v0x1a345a0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a34660_0 .net "out", 0 0, L_0x1aa61b0;  alias, 1 drivers
L_0x1aa61b0 .part/v L_0x1aa6460, v0x19b4ae0_0, 1;
S_0x1a347b0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa6060 .functor NAND 1, L_0x1aa6780, L_0x1aa6820, C4<1>, C4<1>;
v0x1a349d0_0 .net "A", 0 0, L_0x1aa6780;  alias, 1 drivers
v0x1a34ae0_0 .net "B", 0 0, L_0x1aa6820;  alias, 1 drivers
v0x1a34ba0_0 .net "out", 0 0, L_0x1aa6060;  1 drivers
S_0x1a34cb0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa60d0 .functor NOR 1, L_0x1aa6780, L_0x1aa6820, C4<0>, C4<0>;
v0x1a34f20_0 .net "A", 0 0, L_0x1aa6780;  alias, 1 drivers
v0x1a34fe0_0 .net "B", 0 0, L_0x1aa6820;  alias, 1 drivers
v0x1a350f0_0 .net "out", 0 0, L_0x1aa60d0;  1 drivers
S_0x1a351f0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa6140 .functor OR 1, L_0x1aa6780, L_0x1aa6820, C4<0>, C4<0>;
v0x1a35410_0 .net "A", 0 0, L_0x1aa6780;  alias, 1 drivers
v0x1a35560_0 .net "B", 0 0, L_0x1aa6820;  alias, 1 drivers
v0x1a35620_0 .net "out", 0 0, L_0x1aa6140;  1 drivers
S_0x1a35720 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa4870 .functor XOR 1, L_0x1aa6820, L_0x1aa59a0, C4<0>, C4<0>;
v0x1a358f0_0 .net "A", 0 0, L_0x1aa6820;  alias, 1 drivers
v0x1a35a40_0 .net "B", 0 0, L_0x1aa59a0;  1 drivers
v0x1a35b00_0 .net "out", 0 0, L_0x1aa4870;  alias, 1 drivers
S_0x1a35c40 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a33150;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa5ee0 .functor XOR 1, L_0x1aa6780, L_0x1aa6820, C4<0>, C4<0>;
v0x1a35e10_0 .net "A", 0 0, L_0x1aa6780;  alias, 1 drivers
v0x1a35ed0_0 .net "B", 0 0, L_0x1aa6820;  alias, 1 drivers
v0x1a35f90_0 .net "out", 0 0, L_0x1aa5ee0;  1 drivers
S_0x1a36b20 .scope module, "alu29" "ALU_1bit" 8 147, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1aa7410 .functor BUFZ 1, L_0x1aa6c10, C4<0>, C4<0>, C4<0>;
L_0x1aa7480 .functor BUFZ 1, L_0x1aa6c10, C4<0>, C4<0>, C4<0>;
v0x1a39a90_0 .net "A", 0 0, L_0x1aa78a0;  1 drivers
v0x1a39b30_0 .net "B", 0 0, L_0x1aa68c0;  1 drivers
v0x1a39bf0_0 .net "I", 7 0, L_0x1aa7580;  1 drivers
v0x1a39cf0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a39d90_0 .net *"_s15", 0 0, L_0x1aa7410;  1 drivers
v0x1a39ea0_0 .net *"_s19", 0 0, L_0x1aa7480;  1 drivers
L_0x7fb90a0d29f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a39f80_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d29f0;  1 drivers
v0x1a3a060_0 .net "addORsub", 0 0, L_0x1aa6c10;  1 drivers
v0x1a3a100_0 .net "carryin", 0 0, L_0x1a95760;  1 drivers
v0x1a3a260_0 .net "carryout", 0 0, L_0x1a38ea0;  1 drivers
v0x1a3a330_0 .net "modB", 0 0, L_0x1aa5820;  1 drivers
v0x1a3a3d0_0 .net "out", 0 0, L_0x1aa72d0;  1 drivers
L_0x1aa5890 .part v0x19b4ae0_0, 0, 1;
LS_0x1aa7580_0_0 .concat8 [ 1 1 1 1], L_0x1aa7410, L_0x1aa7480, L_0x1aa7000, L_0x7fb90a0d29f0;
LS_0x1aa7580_0_4 .concat8 [ 1 1 1 1], L_0x1a39380, L_0x1aa7180, L_0x1aa71f0, L_0x1aa7260;
L_0x1aa7580 .concat8 [ 4 4 0 0], LS_0x1aa7580_0_0, LS_0x1aa7580_0_4;
S_0x1a36d90 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa5930 .functor XOR 1, L_0x1aa78a0, L_0x1aa5820, C4<0>, C4<0>;
L_0x1aa6c10 .functor XOR 1, L_0x1aa5930, L_0x1a95760, C4<0>, C4<0>;
L_0x1aa6d20 .functor AND 1, L_0x1aa5930, L_0x1a95760, C4<1>, C4<1>;
L_0x1aa6d90 .functor AND 1, L_0x1aa78a0, L_0x1aa5820, C4<1>, C4<1>;
L_0x1a38ea0 .functor OR 1, L_0x1aa6d20, L_0x1aa6d90, C4<0>, C4<0>;
v0x1a37030_0 .net "A", 0 0, L_0x1aa78a0;  alias, 1 drivers
v0x1a37110_0 .net "B", 0 0, L_0x1aa5820;  alias, 1 drivers
v0x1a371d0_0 .net "carryin", 0 0, L_0x1a95760;  alias, 1 drivers
v0x1a372a0_0 .net "carryout", 0 0, L_0x1a38ea0;  alias, 1 drivers
v0x1a37360_0 .net "out1", 0 0, L_0x1aa5930;  1 drivers
v0x1a37470_0 .net "out2", 0 0, L_0x1aa6d20;  1 drivers
v0x1a37530_0 .net "out3", 0 0, L_0x1aa6d90;  1 drivers
v0x1a375f0_0 .net "sum", 0 0, L_0x1aa6c10;  alias, 1 drivers
S_0x1a37750 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a39380 .functor AND 1, L_0x1aa78a0, L_0x1aa68c0, C4<1>, C4<1>;
v0x1a37990_0 .net "A", 0 0, L_0x1aa78a0;  alias, 1 drivers
v0x1a37a50_0 .net "B", 0 0, L_0x1aa68c0;  alias, 1 drivers
v0x1a37af0_0 .net "out", 0 0, L_0x1a39380;  1 drivers
S_0x1a37c40 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a37e90_0 .net "I", 7 0, L_0x1aa7580;  alias, 1 drivers
v0x1a37f70_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a38030_0 .net "out", 0 0, L_0x1aa72d0;  alias, 1 drivers
L_0x1aa72d0 .part/v L_0x1aa7580, v0x19b4ae0_0, 1;
S_0x1a38180 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa7180 .functor NAND 1, L_0x1aa78a0, L_0x1aa68c0, C4<1>, C4<1>;
v0x1a383a0_0 .net "A", 0 0, L_0x1aa78a0;  alias, 1 drivers
v0x1a384b0_0 .net "B", 0 0, L_0x1aa68c0;  alias, 1 drivers
v0x1a38570_0 .net "out", 0 0, L_0x1aa7180;  1 drivers
S_0x1a38680 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa71f0 .functor NOR 1, L_0x1aa78a0, L_0x1aa68c0, C4<0>, C4<0>;
v0x1a388f0_0 .net "A", 0 0, L_0x1aa78a0;  alias, 1 drivers
v0x1a389b0_0 .net "B", 0 0, L_0x1aa68c0;  alias, 1 drivers
v0x1a38ac0_0 .net "out", 0 0, L_0x1aa71f0;  1 drivers
S_0x1a38bc0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa7260 .functor OR 1, L_0x1aa78a0, L_0x1aa68c0, C4<0>, C4<0>;
v0x1a38de0_0 .net "A", 0 0, L_0x1aa78a0;  alias, 1 drivers
v0x1a38f30_0 .net "B", 0 0, L_0x1aa68c0;  alias, 1 drivers
v0x1a38ff0_0 .net "out", 0 0, L_0x1aa7260;  1 drivers
S_0x1a390f0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa5820 .functor XOR 1, L_0x1aa68c0, L_0x1aa5890, C4<0>, C4<0>;
v0x1a392c0_0 .net "A", 0 0, L_0x1aa68c0;  alias, 1 drivers
v0x1a39410_0 .net "B", 0 0, L_0x1aa5890;  1 drivers
v0x1a394d0_0 .net "out", 0 0, L_0x1aa5820;  alias, 1 drivers
S_0x1a39610 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a36b20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa7000 .functor XOR 1, L_0x1aa78a0, L_0x1aa68c0, C4<0>, C4<0>;
v0x1a397e0_0 .net "A", 0 0, L_0x1aa78a0;  alias, 1 drivers
v0x1a398a0_0 .net "B", 0 0, L_0x1aa68c0;  alias, 1 drivers
v0x1a39960_0 .net "out", 0 0, L_0x1aa7000;  1 drivers
S_0x1a3a4f0 .scope module, "alu3" "ALU_1bit" 8 121, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a897c0 .functor BUFZ 1, L_0x1a88f20, C4<0>, C4<0>, C4<0>;
L_0x1a89850 .functor BUFZ 1, L_0x1a88f20, C4<0>, C4<0>, C4<0>;
v0x1a3d460_0 .net "A", 0 0, L_0x1a89c90;  1 drivers
v0x1a3d500_0 .net "B", 0 0, L_0x1a89d30;  1 drivers
v0x1a3d5c0_0 .net "I", 7 0, L_0x1a89970;  1 drivers
v0x1a3d6c0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a3d760_0 .net *"_s15", 0 0, L_0x1a897c0;  1 drivers
v0x1a3d870_0 .net *"_s19", 0 0, L_0x1a89850;  1 drivers
L_0x7fb90a0d22a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a3d950_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d22a0;  1 drivers
v0x1a3da30_0 .net "addORsub", 0 0, L_0x1a88f20;  1 drivers
v0x1a3dad0_0 .net "carryin", 0 0, L_0x1a89dd0;  1 drivers
v0x1a3dc30_0 .net "carryout", 0 0, L_0x1a3c870;  1 drivers
v0x1a3dd00_0 .net "modB", 0 0, L_0x1a88ca0;  1 drivers
v0x1a3dda0_0 .net "out", 0 0, L_0x1a89660;  1 drivers
L_0x1a88d10 .part v0x19b4ae0_0, 0, 1;
LS_0x1a89970_0_0 .concat8 [ 1 1 1 1], L_0x1a897c0, L_0x1a89850, L_0x1a89350, L_0x7fb90a0d22a0;
LS_0x1a89970_0_4 .concat8 [ 1 1 1 1], L_0x1a3cd50, L_0x1a894d0, L_0x1a89540, L_0x1a895d0;
L_0x1a89970 .concat8 [ 4 4 0 0], LS_0x1a89970_0_0, LS_0x1a89970_0_4;
S_0x1a3a760 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a88e00 .functor XOR 1, L_0x1a89c90, L_0x1a88ca0, C4<0>, C4<0>;
L_0x1a88f20 .functor XOR 1, L_0x1a88e00, L_0x1a89dd0, C4<0>, C4<0>;
L_0x1a89050 .functor AND 1, L_0x1a88e00, L_0x1a89dd0, C4<1>, C4<1>;
L_0x1a890e0 .functor AND 1, L_0x1a89c90, L_0x1a88ca0, C4<1>, C4<1>;
L_0x1a3c870 .functor OR 1, L_0x1a89050, L_0x1a890e0, C4<0>, C4<0>;
v0x1a3aa00_0 .net "A", 0 0, L_0x1a89c90;  alias, 1 drivers
v0x1a3aae0_0 .net "B", 0 0, L_0x1a88ca0;  alias, 1 drivers
v0x1a3aba0_0 .net "carryin", 0 0, L_0x1a89dd0;  alias, 1 drivers
v0x1a3ac70_0 .net "carryout", 0 0, L_0x1a3c870;  alias, 1 drivers
v0x1a3ad30_0 .net "out1", 0 0, L_0x1a88e00;  1 drivers
v0x1a3ae40_0 .net "out2", 0 0, L_0x1a89050;  1 drivers
v0x1a3af00_0 .net "out3", 0 0, L_0x1a890e0;  1 drivers
v0x1a3afc0_0 .net "sum", 0 0, L_0x1a88f20;  alias, 1 drivers
S_0x1a3b120 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a3cd50 .functor AND 1, L_0x1a89c90, L_0x1a89d30, C4<1>, C4<1>;
v0x1a3b360_0 .net "A", 0 0, L_0x1a89c90;  alias, 1 drivers
v0x1a3b420_0 .net "B", 0 0, L_0x1a89d30;  alias, 1 drivers
v0x1a3b4c0_0 .net "out", 0 0, L_0x1a3cd50;  1 drivers
S_0x1a3b610 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a3b860_0 .net "I", 7 0, L_0x1a89970;  alias, 1 drivers
v0x1a3b940_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a3ba00_0 .net "out", 0 0, L_0x1a89660;  alias, 1 drivers
L_0x1a89660 .part/v L_0x1a89970, v0x19b4ae0_0, 1;
S_0x1a3bb50 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a894d0 .functor NAND 1, L_0x1a89c90, L_0x1a89d30, C4<1>, C4<1>;
v0x1a3bd70_0 .net "A", 0 0, L_0x1a89c90;  alias, 1 drivers
v0x1a3be80_0 .net "B", 0 0, L_0x1a89d30;  alias, 1 drivers
v0x1a3bf40_0 .net "out", 0 0, L_0x1a894d0;  1 drivers
S_0x1a3c050 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a89540 .functor NOR 1, L_0x1a89c90, L_0x1a89d30, C4<0>, C4<0>;
v0x1a3c2c0_0 .net "A", 0 0, L_0x1a89c90;  alias, 1 drivers
v0x1a3c380_0 .net "B", 0 0, L_0x1a89d30;  alias, 1 drivers
v0x1a3c490_0 .net "out", 0 0, L_0x1a89540;  1 drivers
S_0x1a3c590 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a895d0 .functor OR 1, L_0x1a89c90, L_0x1a89d30, C4<0>, C4<0>;
v0x1a3c7b0_0 .net "A", 0 0, L_0x1a89c90;  alias, 1 drivers
v0x1a3c900_0 .net "B", 0 0, L_0x1a89d30;  alias, 1 drivers
v0x1a3c9c0_0 .net "out", 0 0, L_0x1a895d0;  1 drivers
S_0x1a3cac0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a88ca0 .functor XOR 1, L_0x1a89d30, L_0x1a88d10, C4<0>, C4<0>;
v0x1a3cc90_0 .net "A", 0 0, L_0x1a89d30;  alias, 1 drivers
v0x1a3cde0_0 .net "B", 0 0, L_0x1a88d10;  1 drivers
v0x1a3cea0_0 .net "out", 0 0, L_0x1a88ca0;  alias, 1 drivers
S_0x1a3cfe0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a3a4f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a89350 .functor XOR 1, L_0x1a89c90, L_0x1a89d30, C4<0>, C4<0>;
v0x1a3d1b0_0 .net "A", 0 0, L_0x1a89c90;  alias, 1 drivers
v0x1a3d270_0 .net "B", 0 0, L_0x1a89d30;  alias, 1 drivers
v0x1a3d330_0 .net "out", 0 0, L_0x1a89350;  1 drivers
S_0x1a3dec0 .scope module, "alu30" "ALU_1bit" 8 148, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a5b570 .functor BUFZ 1, L_0x1aa6a90, C4<0>, C4<0>, C4<0>;
L_0x1a5b600 .functor BUFZ 1, L_0x1aa6a90, C4<0>, C4<0>, C4<0>;
v0x1a40e30_0 .net "A", 0 0, L_0x1aa96f0;  1 drivers
v0x1a40ed0_0 .net "B", 0 0, L_0x1aa8020;  1 drivers
v0x1a40f90_0 .net "I", 7 0, L_0x1a5b720;  1 drivers
v0x1a41090_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a41130_0 .net *"_s15", 0 0, L_0x1a5b570;  1 drivers
v0x1a41240_0 .net *"_s19", 0 0, L_0x1a5b600;  1 drivers
L_0x7fb90a0d2a38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a41320_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2a38;  1 drivers
v0x1a41400_0 .net "addORsub", 0 0, L_0x1aa6a90;  1 drivers
v0x1a414a0_0 .net "carryin", 0 0, L_0x1aa80c0;  1 drivers
v0x1a41600_0 .net "carryout", 0 0, L_0x1aa7ba0;  1 drivers
v0x1a416d0_0 .net "modB", 0 0, L_0x1a95890;  1 drivers
v0x1a41770_0 .net "out", 0 0, L_0x1a5b410;  1 drivers
L_0x1aa6960 .part v0x19b4ae0_0, 0, 1;
LS_0x1a5b720_0_0 .concat8 [ 1 1 1 1], L_0x1a5b570, L_0x1a5b600, L_0x1a5b0e0, L_0x7fb90a0d2a38;
LS_0x1a5b720_0_4 .concat8 [ 1 1 1 1], L_0x1a40720, L_0x1a5b260, L_0x1a5b2f0, L_0x1a5b380;
L_0x1a5b720 .concat8 [ 4 4 0 0], LS_0x1a5b720_0_0, LS_0x1a5b720_0_4;
S_0x1a3e130 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a95900 .functor XOR 1, L_0x1aa96f0, L_0x1a95890, C4<0>, C4<0>;
L_0x1aa6a90 .functor XOR 1, L_0x1a95900, L_0x1aa80c0, C4<0>, C4<0>;
L_0x1aa7990 .functor AND 1, L_0x1a95900, L_0x1aa80c0, C4<1>, C4<1>;
L_0x1aa7a20 .functor AND 1, L_0x1aa96f0, L_0x1a95890, C4<1>, C4<1>;
L_0x1aa7ba0 .functor OR 1, L_0x1aa7990, L_0x1aa7a20, C4<0>, C4<0>;
v0x1a3e3d0_0 .net "A", 0 0, L_0x1aa96f0;  alias, 1 drivers
v0x1a3e4b0_0 .net "B", 0 0, L_0x1a95890;  alias, 1 drivers
v0x1a3e570_0 .net "carryin", 0 0, L_0x1aa80c0;  alias, 1 drivers
v0x1a3e640_0 .net "carryout", 0 0, L_0x1aa7ba0;  alias, 1 drivers
v0x1a3e700_0 .net "out1", 0 0, L_0x1a95900;  1 drivers
v0x1a3e810_0 .net "out2", 0 0, L_0x1aa7990;  1 drivers
v0x1a3e8d0_0 .net "out3", 0 0, L_0x1aa7a20;  1 drivers
v0x1a3e990_0 .net "sum", 0 0, L_0x1aa6a90;  alias, 1 drivers
S_0x1a3eaf0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a40720 .functor AND 1, L_0x1aa96f0, L_0x1aa8020, C4<1>, C4<1>;
v0x1a3ed30_0 .net "A", 0 0, L_0x1aa96f0;  alias, 1 drivers
v0x1a3edf0_0 .net "B", 0 0, L_0x1aa8020;  alias, 1 drivers
v0x1a3ee90_0 .net "out", 0 0, L_0x1a40720;  1 drivers
S_0x1a3efe0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a3f230_0 .net "I", 7 0, L_0x1a5b720;  alias, 1 drivers
v0x1a3f310_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a3f3d0_0 .net "out", 0 0, L_0x1a5b410;  alias, 1 drivers
L_0x1a5b410 .part/v L_0x1a5b720, v0x19b4ae0_0, 1;
S_0x1a3f520 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a5b260 .functor NAND 1, L_0x1aa96f0, L_0x1aa8020, C4<1>, C4<1>;
v0x1a3f740_0 .net "A", 0 0, L_0x1aa96f0;  alias, 1 drivers
v0x1a3f850_0 .net "B", 0 0, L_0x1aa8020;  alias, 1 drivers
v0x1a3f910_0 .net "out", 0 0, L_0x1a5b260;  1 drivers
S_0x1a3fa20 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a5b2f0 .functor NOR 1, L_0x1aa96f0, L_0x1aa8020, C4<0>, C4<0>;
v0x1a3fc90_0 .net "A", 0 0, L_0x1aa96f0;  alias, 1 drivers
v0x1a3fd50_0 .net "B", 0 0, L_0x1aa8020;  alias, 1 drivers
v0x1a3fe60_0 .net "out", 0 0, L_0x1a5b2f0;  1 drivers
S_0x1a3ff60 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a5b380 .functor OR 1, L_0x1aa96f0, L_0x1aa8020, C4<0>, C4<0>;
v0x1a40180_0 .net "A", 0 0, L_0x1aa96f0;  alias, 1 drivers
v0x1a402d0_0 .net "B", 0 0, L_0x1aa8020;  alias, 1 drivers
v0x1a40390_0 .net "out", 0 0, L_0x1a5b380;  1 drivers
S_0x1a40490 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a95890 .functor XOR 1, L_0x1aa8020, L_0x1aa6960, C4<0>, C4<0>;
v0x1a40660_0 .net "A", 0 0, L_0x1aa8020;  alias, 1 drivers
v0x1a407b0_0 .net "B", 0 0, L_0x1aa6960;  1 drivers
v0x1a40870_0 .net "out", 0 0, L_0x1a95890;  alias, 1 drivers
S_0x1a409b0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a3dec0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a5b0e0 .functor XOR 1, L_0x1aa96f0, L_0x1aa8020, C4<0>, C4<0>;
v0x1a40b80_0 .net "A", 0 0, L_0x1aa96f0;  alias, 1 drivers
v0x1a40c40_0 .net "B", 0 0, L_0x1aa8020;  alias, 1 drivers
v0x1a40d00_0 .net "out", 0 0, L_0x1a5b0e0;  1 drivers
S_0x1a41890 .scope module, "alu31" "ALU_last" 8 149, 8 22 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x1aa81f0 .functor BUFZ 1, L_0x1aa9d30, C4<0>, C4<0>, C4<0>;
L_0x1aa8260 .functor BUFZ 1, L_0x1aa9d30, C4<0>, C4<0>, C4<0>;
v0x1a45230_0 .net "A", 0 0, L_0x1aaaa30;  1 drivers
v0x1a452d0_0 .net "B", 0 0, L_0x1aa9790;  1 drivers
v0x1a45390_0 .net "I", 7 0, L_0x1aaa510;  1 drivers
v0x1a45490_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a45530_0 .net *"_s3", 0 0, L_0x1aa81f0;  1 drivers
v0x1a45640_0 .net *"_s7", 0 0, L_0x1aa8260;  1 drivers
v0x1a45720_0 .net "as", 0 0, L_0x1aa9d30;  1 drivers
v0x1a45810_0 .net "carryin", 0 0, L_0x1aa9830;  1 drivers
v0x1a45900_0 .net "carryout", 0 0, L_0x1a43c20;  alias, 1 drivers
v0x1a45a30_0 .net "modB", 0 0, L_0x1aa9b20;  1 drivers
v0x1a45b20_0 .net "out", 0 0, L_0x1aaa2f0;  1 drivers
v0x1a45bc0_0 .net "overflow", 0 0, L_0x1aaa430;  alias, 1 drivers
L_0x1aa9b90 .part v0x19b4ae0_0, 0, 1;
LS_0x1aaa510_0_0 .concat8 [ 1 1 1 1], L_0x1aa81f0, L_0x1aa8260, L_0x1aaa020, L_0x1aaa4a0;
LS_0x1aaa510_0_4 .concat8 [ 1 1 1 1], L_0x1a44100, L_0x1aaa1a0, L_0x1aaa210, L_0x1aaa280;
L_0x1aaa510 .concat8 [ 4 4 0 0], LS_0x1aaa510_0_0, LS_0x1aaa510_0_4;
S_0x1a41b10 .scope module, "addsub" "add_sub" 8 42, 2 8 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1aa9c30 .functor XOR 1, L_0x1aaaa30, L_0x1aa9b20, C4<0>, C4<0>;
L_0x1aa9d30 .functor XOR 1, L_0x1aa9c30, L_0x1aa9830, C4<0>, C4<0>;
L_0x1aa9da0 .functor AND 1, L_0x1aa9c30, L_0x1aa9830, C4<1>, C4<1>;
L_0x1aa9ea0 .functor AND 1, L_0x1aaaa30, L_0x1aa9b20, C4<1>, C4<1>;
L_0x1a43c20 .functor OR 1, L_0x1aa9da0, L_0x1aa9ea0, C4<0>, C4<0>;
v0x1a41db0_0 .net "A", 0 0, L_0x1aaaa30;  alias, 1 drivers
v0x1a41e90_0 .net "B", 0 0, L_0x1aa9b20;  alias, 1 drivers
v0x1a41f50_0 .net "carryin", 0 0, L_0x1aa9830;  alias, 1 drivers
v0x1a42020_0 .net "carryout", 0 0, L_0x1a43c20;  alias, 1 drivers
v0x1a420e0_0 .net "out1", 0 0, L_0x1aa9c30;  1 drivers
v0x1a421f0_0 .net "out2", 0 0, L_0x1aa9da0;  1 drivers
v0x1a422b0_0 .net "out3", 0 0, L_0x1aa9ea0;  1 drivers
v0x1a42370_0 .net "sum", 0 0, L_0x1aa9d30;  alias, 1 drivers
S_0x1a424d0 .scope module, "andgate" "ALUand" 8 44, 9 8 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a44100 .functor AND 1, L_0x1aaaa30, L_0x1aa9790, C4<1>, C4<1>;
v0x1a42710_0 .net "A", 0 0, L_0x1aaaa30;  alias, 1 drivers
v0x1a427d0_0 .net "B", 0 0, L_0x1aa9790;  alias, 1 drivers
v0x1a42870_0 .net "out", 0 0, L_0x1a44100;  1 drivers
S_0x1a429c0 .scope module, "elonMux" "multiplexer" 8 49, 10 4 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a42c10_0 .net "I", 7 0, L_0x1aaa510;  alias, 1 drivers
v0x1a42cf0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a42db0_0 .net "out", 0 0, L_0x1aaa2f0;  alias, 1 drivers
L_0x1aaa2f0 .part/v L_0x1aaa510, v0x19b4ae0_0, 1;
S_0x1a42f00 .scope module, "nandgate" "ALUnand" 8 45, 9 26 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aaa1a0 .functor NAND 1, L_0x1aaaa30, L_0x1aa9790, C4<1>, C4<1>;
v0x1a43120_0 .net "A", 0 0, L_0x1aaaa30;  alias, 1 drivers
v0x1a43230_0 .net "B", 0 0, L_0x1aa9790;  alias, 1 drivers
v0x1a432f0_0 .net "out", 0 0, L_0x1aaa1a0;  1 drivers
S_0x1a43400 .scope module, "norgate" "ALUnor" 8 46, 9 35 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aaa210 .functor NOR 1, L_0x1aaaa30, L_0x1aa9790, C4<0>, C4<0>;
v0x1a43670_0 .net "A", 0 0, L_0x1aaaa30;  alias, 1 drivers
v0x1a43730_0 .net "B", 0 0, L_0x1aa9790;  alias, 1 drivers
v0x1a43840_0 .net "out", 0 0, L_0x1aaa210;  1 drivers
S_0x1a43940 .scope module, "orgate" "ALUor" 8 47, 9 17 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aaa280 .functor OR 1, L_0x1aaaa30, L_0x1aa9790, C4<0>, C4<0>;
v0x1a43b60_0 .net "A", 0 0, L_0x1aaaa30;  alias, 1 drivers
v0x1a43cb0_0 .net "B", 0 0, L_0x1aa9790;  alias, 1 drivers
v0x1a43d70_0 .net "out", 0 0, L_0x1aaa280;  1 drivers
S_0x1a43e70 .scope module, "xorgate" "ALUxor" 8 40, 9 44 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa9b20 .functor XOR 1, L_0x1aa9790, L_0x1aa9b90, C4<0>, C4<0>;
v0x1a44040_0 .net "A", 0 0, L_0x1aa9790;  alias, 1 drivers
v0x1a44190_0 .net "B", 0 0, L_0x1aa9b90;  1 drivers
v0x1a44250_0 .net "out", 0 0, L_0x1aa9b20;  alias, 1 drivers
S_0x1a44390 .scope module, "xorgate1" "ALUxor" 8 43, 9 44 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aaa020 .functor XOR 1, L_0x1aaaa30, L_0x1aa9790, C4<0>, C4<0>;
v0x1a44560_0 .net "A", 0 0, L_0x1aaaa30;  alias, 1 drivers
v0x1a44620_0 .net "B", 0 0, L_0x1aa9790;  alias, 1 drivers
v0x1a446e0_0 .net "out", 0 0, L_0x1aaa020;  1 drivers
S_0x1a44810 .scope module, "xorgate2" "ALUxor" 8 51, 9 44 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aaa430 .functor XOR 1, L_0x1aa9830, L_0x1a43c20, C4<0>, C4<0>;
v0x1a44a70_0 .net "A", 0 0, L_0x1aa9830;  alias, 1 drivers
v0x1a44b60_0 .net "B", 0 0, L_0x1a43c20;  alias, 1 drivers
v0x1a44c30_0 .net "out", 0 0, L_0x1aaa430;  alias, 1 drivers
S_0x1a44d40 .scope module, "xorgate3" "ALUxor" 8 53, 9 44 0, S_0x1a41890;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aaa4a0 .functor XOR 1, L_0x1aaa430, L_0x1aa9d30, C4<0>, C4<0>;
v0x1a44f60_0 .net "A", 0 0, L_0x1aaa430;  alias, 1 drivers
v0x1a45050_0 .net "B", 0 0, L_0x1aa9d30;  alias, 1 drivers
v0x1a45120_0 .net "out", 0 0, L_0x1aaa4a0;  1 drivers
S_0x1a45db0 .scope module, "alu4" "ALU_1bit" 8 122, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a8a9f0 .functor BUFZ 1, L_0x1a8a1a0, C4<0>, C4<0>, C4<0>;
L_0x1a8aa80 .functor BUFZ 1, L_0x1a8a1a0, C4<0>, C4<0>, C4<0>;
v0x1a48c30_0 .net "A", 0 0, L_0x1a8aec0;  1 drivers
v0x1a48cd0_0 .net "B", 0 0, L_0x1a8af60;  1 drivers
v0x1a48d90_0 .net "I", 7 0, L_0x1a8aba0;  1 drivers
v0x1a48e90_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a48f30_0 .net *"_s15", 0 0, L_0x1a8a9f0;  1 drivers
v0x1a49040_0 .net *"_s19", 0 0, L_0x1a8aa80;  1 drivers
L_0x7fb90a0d22e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a49120_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d22e8;  1 drivers
v0x1a49200_0 .net "addORsub", 0 0, L_0x1a8a1a0;  1 drivers
v0x1a492a0_0 .net "carryin", 0 0, L_0x1a8b000;  1 drivers
v0x1a49400_0 .net "carryout", 0 0, L_0x1a48040;  1 drivers
v0x1a494d0_0 .net "modB", 0 0, L_0x1a89f70;  1 drivers
v0x1a49570_0 .net "out", 0 0, L_0x1a8a890;  1 drivers
L_0x1a89fe0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a8aba0_0_0 .concat8 [ 1 1 1 1], L_0x1a8a9f0, L_0x1a8aa80, L_0x1a8a580, L_0x7fb90a0d22e8;
LS_0x1a8aba0_0_4 .concat8 [ 1 1 1 1], L_0x1a48520, L_0x1a8a700, L_0x1a8a770, L_0x1a8a800;
L_0x1a8aba0 .concat8 [ 4 4 0 0], LS_0x1a8aba0_0_0, LS_0x1a8aba0_0_4;
S_0x1a46020 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a8a080 .functor XOR 1, L_0x1a8aec0, L_0x1a89f70, C4<0>, C4<0>;
L_0x1a8a1a0 .functor XOR 1, L_0x1a8a080, L_0x1a8b000, C4<0>, C4<0>;
L_0x1a8a280 .functor AND 1, L_0x1a8a080, L_0x1a8b000, C4<1>, C4<1>;
L_0x1a8a310 .functor AND 1, L_0x1a8aec0, L_0x1a89f70, C4<1>, C4<1>;
L_0x1a48040 .functor OR 1, L_0x1a8a280, L_0x1a8a310, C4<0>, C4<0>;
v0x1a46290_0 .net "A", 0 0, L_0x1a8aec0;  alias, 1 drivers
v0x1a46370_0 .net "B", 0 0, L_0x1a89f70;  alias, 1 drivers
v0x1a46430_0 .net "carryin", 0 0, L_0x1a8b000;  alias, 1 drivers
v0x1a464d0_0 .net "carryout", 0 0, L_0x1a48040;  alias, 1 drivers
v0x1a46590_0 .net "out1", 0 0, L_0x1a8a080;  1 drivers
v0x1a466a0_0 .net "out2", 0 0, L_0x1a8a280;  1 drivers
v0x1a46760_0 .net "out3", 0 0, L_0x1a8a310;  1 drivers
v0x1a46820_0 .net "sum", 0 0, L_0x1a8a1a0;  alias, 1 drivers
S_0x1a46980 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a48520 .functor AND 1, L_0x1a8aec0, L_0x1a8af60, C4<1>, C4<1>;
v0x1a46bc0_0 .net "A", 0 0, L_0x1a8aec0;  alias, 1 drivers
v0x1a46c80_0 .net "B", 0 0, L_0x1a8af60;  alias, 1 drivers
v0x1a46d20_0 .net "out", 0 0, L_0x1a48520;  1 drivers
S_0x1a46e40 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a47060_0 .net "I", 7 0, L_0x1a8aba0;  alias, 1 drivers
v0x1a47140_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a47200_0 .net "out", 0 0, L_0x1a8a890;  alias, 1 drivers
L_0x1a8a890 .part/v L_0x1a8aba0, v0x19b4ae0_0, 1;
S_0x1a47320 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8a700 .functor NAND 1, L_0x1a8aec0, L_0x1a8af60, C4<1>, C4<1>;
v0x1a47540_0 .net "A", 0 0, L_0x1a8aec0;  alias, 1 drivers
v0x1a47650_0 .net "B", 0 0, L_0x1a8af60;  alias, 1 drivers
v0x1a47710_0 .net "out", 0 0, L_0x1a8a700;  1 drivers
S_0x1a47820 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8a770 .functor NOR 1, L_0x1a8aec0, L_0x1a8af60, C4<0>, C4<0>;
v0x1a47a90_0 .net "A", 0 0, L_0x1a8aec0;  alias, 1 drivers
v0x1a47b50_0 .net "B", 0 0, L_0x1a8af60;  alias, 1 drivers
v0x1a47c60_0 .net "out", 0 0, L_0x1a8a770;  1 drivers
S_0x1a47d60 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8a800 .functor OR 1, L_0x1a8aec0, L_0x1a8af60, C4<0>, C4<0>;
v0x1a47f80_0 .net "A", 0 0, L_0x1a8aec0;  alias, 1 drivers
v0x1a480d0_0 .net "B", 0 0, L_0x1a8af60;  alias, 1 drivers
v0x1a48190_0 .net "out", 0 0, L_0x1a8a800;  1 drivers
S_0x1a48290 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a89f70 .functor XOR 1, L_0x1a8af60, L_0x1a89fe0, C4<0>, C4<0>;
v0x1a48460_0 .net "A", 0 0, L_0x1a8af60;  alias, 1 drivers
v0x1a485b0_0 .net "B", 0 0, L_0x1a89fe0;  1 drivers
v0x1a48670_0 .net "out", 0 0, L_0x1a89f70;  alias, 1 drivers
S_0x1a487b0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a45db0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8a580 .functor XOR 1, L_0x1a8aec0, L_0x1a8af60, C4<0>, C4<0>;
v0x1a48980_0 .net "A", 0 0, L_0x1a8aec0;  alias, 1 drivers
v0x1a48a40_0 .net "B", 0 0, L_0x1a8af60;  alias, 1 drivers
v0x1a48b00_0 .net "out", 0 0, L_0x1a8a580;  1 drivers
S_0x1a49690 .scope module, "alu5" "ALU_1bit" 8 123, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a8bbd0 .functor BUFZ 1, L_0x1a8b380, C4<0>, C4<0>, C4<0>;
L_0x1a8bc60 .functor BUFZ 1, L_0x1a8b380, C4<0>, C4<0>, C4<0>;
v0x1a4c600_0 .net "A", 0 0, L_0x1a8c0a0;  1 drivers
v0x1a4c6a0_0 .net "B", 0 0, L_0x1a8c1d0;  1 drivers
v0x1a4c760_0 .net "I", 7 0, L_0x1a8bd80;  1 drivers
v0x1a4c860_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a4c900_0 .net *"_s15", 0 0, L_0x1a8bbd0;  1 drivers
v0x1a4ca10_0 .net *"_s19", 0 0, L_0x1a8bc60;  1 drivers
L_0x7fb90a0d2330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a4caf0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2330;  1 drivers
v0x1a4cbd0_0 .net "addORsub", 0 0, L_0x1a8b380;  1 drivers
v0x1a4cc70_0 .net "carryin", 0 0, L_0x1a8c380;  1 drivers
v0x1a4cdd0_0 .net "carryout", 0 0, L_0x1a4ba10;  1 drivers
v0x1a4cea0_0 .net "modB", 0 0, L_0x1a89f00;  1 drivers
v0x1a4cf40_0 .net "out", 0 0, L_0x1a8ba70;  1 drivers
L_0x1a8b1c0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a8bd80_0_0 .concat8 [ 1 1 1 1], L_0x1a8bbd0, L_0x1a8bc60, L_0x1a8b760, L_0x7fb90a0d2330;
LS_0x1a8bd80_0_4 .concat8 [ 1 1 1 1], L_0x1a4bef0, L_0x1a8b8e0, L_0x1a8b950, L_0x1a8b9e0;
L_0x1a8bd80 .concat8 [ 4 4 0 0], LS_0x1a8bd80_0_0, LS_0x1a8bd80_0_4;
S_0x1a49900 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a8b260 .functor XOR 1, L_0x1a8c0a0, L_0x1a89f00, C4<0>, C4<0>;
L_0x1a8b380 .functor XOR 1, L_0x1a8b260, L_0x1a8c380, C4<0>, C4<0>;
L_0x1a8b460 .functor AND 1, L_0x1a8b260, L_0x1a8c380, C4<1>, C4<1>;
L_0x1a8b4f0 .functor AND 1, L_0x1a8c0a0, L_0x1a89f00, C4<1>, C4<1>;
L_0x1a4ba10 .functor OR 1, L_0x1a8b460, L_0x1a8b4f0, C4<0>, C4<0>;
v0x1a49ba0_0 .net "A", 0 0, L_0x1a8c0a0;  alias, 1 drivers
v0x1a49c80_0 .net "B", 0 0, L_0x1a89f00;  alias, 1 drivers
v0x1a49d40_0 .net "carryin", 0 0, L_0x1a8c380;  alias, 1 drivers
v0x1a49e10_0 .net "carryout", 0 0, L_0x1a4ba10;  alias, 1 drivers
v0x1a49ed0_0 .net "out1", 0 0, L_0x1a8b260;  1 drivers
v0x1a49fe0_0 .net "out2", 0 0, L_0x1a8b460;  1 drivers
v0x1a4a0a0_0 .net "out3", 0 0, L_0x1a8b4f0;  1 drivers
v0x1a4a160_0 .net "sum", 0 0, L_0x1a8b380;  alias, 1 drivers
S_0x1a4a2c0 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a4bef0 .functor AND 1, L_0x1a8c0a0, L_0x1a8c1d0, C4<1>, C4<1>;
v0x1a4a500_0 .net "A", 0 0, L_0x1a8c0a0;  alias, 1 drivers
v0x1a4a5c0_0 .net "B", 0 0, L_0x1a8c1d0;  alias, 1 drivers
v0x1a4a660_0 .net "out", 0 0, L_0x1a4bef0;  1 drivers
S_0x1a4a7b0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a4aa00_0 .net "I", 7 0, L_0x1a8bd80;  alias, 1 drivers
v0x1a4aae0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a4aba0_0 .net "out", 0 0, L_0x1a8ba70;  alias, 1 drivers
L_0x1a8ba70 .part/v L_0x1a8bd80, v0x19b4ae0_0, 1;
S_0x1a4acf0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8b8e0 .functor NAND 1, L_0x1a8c0a0, L_0x1a8c1d0, C4<1>, C4<1>;
v0x1a4af10_0 .net "A", 0 0, L_0x1a8c0a0;  alias, 1 drivers
v0x1a4b020_0 .net "B", 0 0, L_0x1a8c1d0;  alias, 1 drivers
v0x1a4b0e0_0 .net "out", 0 0, L_0x1a8b8e0;  1 drivers
S_0x1a4b1f0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8b950 .functor NOR 1, L_0x1a8c0a0, L_0x1a8c1d0, C4<0>, C4<0>;
v0x1a4b460_0 .net "A", 0 0, L_0x1a8c0a0;  alias, 1 drivers
v0x1a4b520_0 .net "B", 0 0, L_0x1a8c1d0;  alias, 1 drivers
v0x1a4b630_0 .net "out", 0 0, L_0x1a8b950;  1 drivers
S_0x1a4b730 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8b9e0 .functor OR 1, L_0x1a8c0a0, L_0x1a8c1d0, C4<0>, C4<0>;
v0x1a4b950_0 .net "A", 0 0, L_0x1a8c0a0;  alias, 1 drivers
v0x1a4baa0_0 .net "B", 0 0, L_0x1a8c1d0;  alias, 1 drivers
v0x1a4bb60_0 .net "out", 0 0, L_0x1a8b9e0;  1 drivers
S_0x1a4bc60 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a89f00 .functor XOR 1, L_0x1a8c1d0, L_0x1a8b1c0, C4<0>, C4<0>;
v0x1a4be30_0 .net "A", 0 0, L_0x1a8c1d0;  alias, 1 drivers
v0x1a4bf80_0 .net "B", 0 0, L_0x1a8b1c0;  1 drivers
v0x1a4c040_0 .net "out", 0 0, L_0x1a89f00;  alias, 1 drivers
S_0x1a4c180 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a49690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8b760 .functor XOR 1, L_0x1a8c0a0, L_0x1a8c1d0, C4<0>, C4<0>;
v0x1a4c350_0 .net "A", 0 0, L_0x1a8c0a0;  alias, 1 drivers
v0x1a4c410_0 .net "B", 0 0, L_0x1a8c1d0;  alias, 1 drivers
v0x1a4c4d0_0 .net "out", 0 0, L_0x1a8b760;  1 drivers
S_0x1a4d060 .scope module, "alu6" "ALU_1bit" 8 124, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a8cf00 .functor BUFZ 1, L_0x1a8c660, C4<0>, C4<0>, C4<0>;
L_0x1a8cf90 .functor BUFZ 1, L_0x1a8c660, C4<0>, C4<0>, C4<0>;
v0x1a4ffd0_0 .net "A", 0 0, L_0x1a8d3d0;  1 drivers
v0x1a50070_0 .net "B", 0 0, L_0x1a8d470;  1 drivers
v0x1a50130_0 .net "I", 7 0, L_0x1a8d0b0;  1 drivers
v0x1a50230_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a502d0_0 .net *"_s15", 0 0, L_0x1a8cf00;  1 drivers
v0x1a503e0_0 .net *"_s19", 0 0, L_0x1a8cf90;  1 drivers
L_0x7fb90a0d2378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a504c0_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2378;  1 drivers
v0x1a505a0_0 .net "addORsub", 0 0, L_0x1a8c660;  1 drivers
v0x1a50640_0 .net "carryin", 0 0, L_0x1a8c420;  1 drivers
v0x1a507a0_0 .net "carryout", 0 0, L_0x1a4f3e0;  1 drivers
v0x1a50870_0 .net "modB", 0 0, L_0x1a8c140;  1 drivers
v0x1a50910_0 .net "out", 0 0, L_0x1a8cda0;  1 drivers
L_0x1a8c4c0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a8d0b0_0_0 .concat8 [ 1 1 1 1], L_0x1a8cf00, L_0x1a8cf90, L_0x1a8ca90, L_0x7fb90a0d2378;
LS_0x1a8d0b0_0_4 .concat8 [ 1 1 1 1], L_0x1a4f8c0, L_0x1a8cc10, L_0x1a8cc80, L_0x1a8cd10;
L_0x1a8d0b0 .concat8 [ 4 4 0 0], LS_0x1a8d0b0_0_0, LS_0x1a8d0b0_0_4;
S_0x1a4d2d0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a8c560 .functor XOR 1, L_0x1a8d3d0, L_0x1a8c140, C4<0>, C4<0>;
L_0x1a8c660 .functor XOR 1, L_0x1a8c560, L_0x1a8c420, C4<0>, C4<0>;
L_0x1a8c790 .functor AND 1, L_0x1a8c560, L_0x1a8c420, C4<1>, C4<1>;
L_0x1a8c820 .functor AND 1, L_0x1a8d3d0, L_0x1a8c140, C4<1>, C4<1>;
L_0x1a4f3e0 .functor OR 1, L_0x1a8c790, L_0x1a8c820, C4<0>, C4<0>;
v0x1a4d570_0 .net "A", 0 0, L_0x1a8d3d0;  alias, 1 drivers
v0x1a4d650_0 .net "B", 0 0, L_0x1a8c140;  alias, 1 drivers
v0x1a4d710_0 .net "carryin", 0 0, L_0x1a8c420;  alias, 1 drivers
v0x1a4d7e0_0 .net "carryout", 0 0, L_0x1a4f3e0;  alias, 1 drivers
v0x1a4d8a0_0 .net "out1", 0 0, L_0x1a8c560;  1 drivers
v0x1a4d9b0_0 .net "out2", 0 0, L_0x1a8c790;  1 drivers
v0x1a4da70_0 .net "out3", 0 0, L_0x1a8c820;  1 drivers
v0x1a4db30_0 .net "sum", 0 0, L_0x1a8c660;  alias, 1 drivers
S_0x1a4dc90 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a4f8c0 .functor AND 1, L_0x1a8d3d0, L_0x1a8d470, C4<1>, C4<1>;
v0x1a4ded0_0 .net "A", 0 0, L_0x1a8d3d0;  alias, 1 drivers
v0x1a4df90_0 .net "B", 0 0, L_0x1a8d470;  alias, 1 drivers
v0x1a4e030_0 .net "out", 0 0, L_0x1a4f8c0;  1 drivers
S_0x1a4e180 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a4e3d0_0 .net "I", 7 0, L_0x1a8d0b0;  alias, 1 drivers
v0x1a4e4b0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a4e570_0 .net "out", 0 0, L_0x1a8cda0;  alias, 1 drivers
L_0x1a8cda0 .part/v L_0x1a8d0b0, v0x19b4ae0_0, 1;
S_0x1a4e6c0 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8cc10 .functor NAND 1, L_0x1a8d3d0, L_0x1a8d470, C4<1>, C4<1>;
v0x1a4e8e0_0 .net "A", 0 0, L_0x1a8d3d0;  alias, 1 drivers
v0x1a4e9f0_0 .net "B", 0 0, L_0x1a8d470;  alias, 1 drivers
v0x1a4eab0_0 .net "out", 0 0, L_0x1a8cc10;  1 drivers
S_0x1a4ebc0 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8cc80 .functor NOR 1, L_0x1a8d3d0, L_0x1a8d470, C4<0>, C4<0>;
v0x1a4ee30_0 .net "A", 0 0, L_0x1a8d3d0;  alias, 1 drivers
v0x1a4eef0_0 .net "B", 0 0, L_0x1a8d470;  alias, 1 drivers
v0x1a4f000_0 .net "out", 0 0, L_0x1a8cc80;  1 drivers
S_0x1a4f100 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8cd10 .functor OR 1, L_0x1a8d3d0, L_0x1a8d470, C4<0>, C4<0>;
v0x1a4f320_0 .net "A", 0 0, L_0x1a8d3d0;  alias, 1 drivers
v0x1a4f470_0 .net "B", 0 0, L_0x1a8d470;  alias, 1 drivers
v0x1a4f530_0 .net "out", 0 0, L_0x1a8cd10;  1 drivers
S_0x1a4f630 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8c140 .functor XOR 1, L_0x1a8d470, L_0x1a8c4c0, C4<0>, C4<0>;
v0x1a4f800_0 .net "A", 0 0, L_0x1a8d470;  alias, 1 drivers
v0x1a4f950_0 .net "B", 0 0, L_0x1a8c4c0;  1 drivers
v0x1a4fa10_0 .net "out", 0 0, L_0x1a8c140;  alias, 1 drivers
S_0x1a4fb50 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a4d060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8ca90 .functor XOR 1, L_0x1a8d3d0, L_0x1a8d470, C4<0>, C4<0>;
v0x1a4fd20_0 .net "A", 0 0, L_0x1a8d3d0;  alias, 1 drivers
v0x1a4fde0_0 .net "B", 0 0, L_0x1a8d470;  alias, 1 drivers
v0x1a4fea0_0 .net "out", 0 0, L_0x1a8ca90;  1 drivers
S_0x1a50a30 .scope module, "alu7" "ALU_1bit" 8 125, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a8e120 .functor BUFZ 1, L_0x1a8d880, C4<0>, C4<0>, C4<0>;
L_0x1a8e1b0 .functor BUFZ 1, L_0x1a8d880, C4<0>, C4<0>, C4<0>;
v0x1a539a0_0 .net "A", 0 0, L_0x1a8e5f0;  1 drivers
v0x1a53a40_0 .net "B", 0 0, L_0x1a8d510;  1 drivers
v0x1a53b00_0 .net "I", 7 0, L_0x1a8e2d0;  1 drivers
v0x1a53c00_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a53ca0_0 .net *"_s15", 0 0, L_0x1a8e120;  1 drivers
v0x1a53db0_0 .net *"_s19", 0 0, L_0x1a8e1b0;  1 drivers
L_0x7fb90a0d23c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a53e90_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d23c0;  1 drivers
v0x1a53f70_0 .net "addORsub", 0 0, L_0x1a8d880;  1 drivers
v0x1a54010_0 .net "carryin", 0 0, L_0x1a8e750;  1 drivers
v0x1a54170_0 .net "carryout", 0 0, L_0x1a52db0;  1 drivers
v0x1a54240_0 .net "modB", 0 0, L_0x1a8d650;  1 drivers
v0x1a542e0_0 .net "out", 0 0, L_0x1a8dfc0;  1 drivers
L_0x1a8d6c0 .part v0x19b4ae0_0, 0, 1;
LS_0x1a8e2d0_0_0 .concat8 [ 1 1 1 1], L_0x1a8e120, L_0x1a8e1b0, L_0x1a8dcb0, L_0x7fb90a0d23c0;
LS_0x1a8e2d0_0_4 .concat8 [ 1 1 1 1], L_0x1a53290, L_0x1a8de30, L_0x1a8dea0, L_0x1a8df30;
L_0x1a8e2d0 .concat8 [ 4 4 0 0], LS_0x1a8e2d0_0_0, LS_0x1a8e2d0_0_4;
S_0x1a50ca0 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a8d760 .functor XOR 1, L_0x1a8e5f0, L_0x1a8d650, C4<0>, C4<0>;
L_0x1a8d880 .functor XOR 1, L_0x1a8d760, L_0x1a8e750, C4<0>, C4<0>;
L_0x1a8d9b0 .functor AND 1, L_0x1a8d760, L_0x1a8e750, C4<1>, C4<1>;
L_0x1a8da40 .functor AND 1, L_0x1a8e5f0, L_0x1a8d650, C4<1>, C4<1>;
L_0x1a52db0 .functor OR 1, L_0x1a8d9b0, L_0x1a8da40, C4<0>, C4<0>;
v0x1a50f40_0 .net "A", 0 0, L_0x1a8e5f0;  alias, 1 drivers
v0x1a51020_0 .net "B", 0 0, L_0x1a8d650;  alias, 1 drivers
v0x1a510e0_0 .net "carryin", 0 0, L_0x1a8e750;  alias, 1 drivers
v0x1a511b0_0 .net "carryout", 0 0, L_0x1a52db0;  alias, 1 drivers
v0x1a51270_0 .net "out1", 0 0, L_0x1a8d760;  1 drivers
v0x1a51380_0 .net "out2", 0 0, L_0x1a8d9b0;  1 drivers
v0x1a51440_0 .net "out3", 0 0, L_0x1a8da40;  1 drivers
v0x1a51500_0 .net "sum", 0 0, L_0x1a8d880;  alias, 1 drivers
S_0x1a51660 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a53290 .functor AND 1, L_0x1a8e5f0, L_0x1a8d510, C4<1>, C4<1>;
v0x1a518a0_0 .net "A", 0 0, L_0x1a8e5f0;  alias, 1 drivers
v0x1a51960_0 .net "B", 0 0, L_0x1a8d510;  alias, 1 drivers
v0x1a51a00_0 .net "out", 0 0, L_0x1a53290;  1 drivers
S_0x1a51b50 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a51da0_0 .net "I", 7 0, L_0x1a8e2d0;  alias, 1 drivers
v0x1a51e80_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a51f40_0 .net "out", 0 0, L_0x1a8dfc0;  alias, 1 drivers
L_0x1a8dfc0 .part/v L_0x1a8e2d0, v0x19b4ae0_0, 1;
S_0x1a52090 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8de30 .functor NAND 1, L_0x1a8e5f0, L_0x1a8d510, C4<1>, C4<1>;
v0x1a522b0_0 .net "A", 0 0, L_0x1a8e5f0;  alias, 1 drivers
v0x1a523c0_0 .net "B", 0 0, L_0x1a8d510;  alias, 1 drivers
v0x1a52480_0 .net "out", 0 0, L_0x1a8de30;  1 drivers
S_0x1a52590 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8dea0 .functor NOR 1, L_0x1a8e5f0, L_0x1a8d510, C4<0>, C4<0>;
v0x1a52800_0 .net "A", 0 0, L_0x1a8e5f0;  alias, 1 drivers
v0x1a528c0_0 .net "B", 0 0, L_0x1a8d510;  alias, 1 drivers
v0x1a529d0_0 .net "out", 0 0, L_0x1a8dea0;  1 drivers
S_0x1a52ad0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8df30 .functor OR 1, L_0x1a8e5f0, L_0x1a8d510, C4<0>, C4<0>;
v0x1a52cf0_0 .net "A", 0 0, L_0x1a8e5f0;  alias, 1 drivers
v0x1a52e40_0 .net "B", 0 0, L_0x1a8d510;  alias, 1 drivers
v0x1a52f00_0 .net "out", 0 0, L_0x1a8df30;  1 drivers
S_0x1a53000 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8d650 .functor XOR 1, L_0x1a8d510, L_0x1a8d6c0, C4<0>, C4<0>;
v0x1a531d0_0 .net "A", 0 0, L_0x1a8d510;  alias, 1 drivers
v0x1a53320_0 .net "B", 0 0, L_0x1a8d6c0;  1 drivers
v0x1a533e0_0 .net "out", 0 0, L_0x1a8d650;  alias, 1 drivers
S_0x1a53520 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a50a30;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8dcb0 .functor XOR 1, L_0x1a8e5f0, L_0x1a8d510, C4<0>, C4<0>;
v0x1a536f0_0 .net "A", 0 0, L_0x1a8e5f0;  alias, 1 drivers
v0x1a537b0_0 .net "B", 0 0, L_0x1a8d510;  alias, 1 drivers
v0x1a53870_0 .net "out", 0 0, L_0x1a8dcb0;  1 drivers
S_0x1a54400 .scope module, "alu8" "ALU_1bit" 8 126, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a8f370 .functor BUFZ 1, L_0x1a8eaf0, C4<0>, C4<0>, C4<0>;
L_0x1a8f400 .functor BUFZ 1, L_0x1a8eaf0, C4<0>, C4<0>, C4<0>;
v0x1a57370_0 .net "A", 0 0, L_0x1a8f840;  1 drivers
v0x1a57410_0 .net "B", 0 0, L_0x1a8f8e0;  1 drivers
v0x1a574d0_0 .net "I", 7 0, L_0x1a8f520;  1 drivers
v0x1a575d0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a57670_0 .net *"_s15", 0 0, L_0x1a8f370;  1 drivers
v0x1a57780_0 .net *"_s19", 0 0, L_0x1a8f400;  1 drivers
L_0x7fb90a0d2408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a57860_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2408;  1 drivers
v0x1a57940_0 .net "addORsub", 0 0, L_0x1a8eaf0;  1 drivers
v0x1a579e0_0 .net "carryin", 0 0, L_0x1a8e880;  1 drivers
v0x1a57b40_0 .net "carryout", 0 0, L_0x1a56780;  1 drivers
v0x1a57c10_0 .net "modB", 0 0, L_0x1a8e690;  1 drivers
v0x1a57cb0_0 .net "out", 0 0, L_0x1a8f210;  1 drivers
L_0x1a8e950 .part v0x19b4ae0_0, 0, 1;
LS_0x1a8f520_0_0 .concat8 [ 1 1 1 1], L_0x1a8f370, L_0x1a8f400, L_0x1a8ef00, L_0x7fb90a0d2408;
LS_0x1a8f520_0_4 .concat8 [ 1 1 1 1], L_0x1a56c60, L_0x1a8f080, L_0x1a8f0f0, L_0x1a8f180;
L_0x1a8f520 .concat8 [ 4 4 0 0], LS_0x1a8f520_0_0, LS_0x1a8f520_0_4;
S_0x1a54670 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a8e9f0 .functor XOR 1, L_0x1a8f840, L_0x1a8e690, C4<0>, C4<0>;
L_0x1a8eaf0 .functor XOR 1, L_0x1a8e9f0, L_0x1a8e880, C4<0>, C4<0>;
L_0x1a8ec00 .functor AND 1, L_0x1a8e9f0, L_0x1a8e880, C4<1>, C4<1>;
L_0x1a8ec90 .functor AND 1, L_0x1a8f840, L_0x1a8e690, C4<1>, C4<1>;
L_0x1a56780 .functor OR 1, L_0x1a8ec00, L_0x1a8ec90, C4<0>, C4<0>;
v0x1a54910_0 .net "A", 0 0, L_0x1a8f840;  alias, 1 drivers
v0x1a549f0_0 .net "B", 0 0, L_0x1a8e690;  alias, 1 drivers
v0x1a54ab0_0 .net "carryin", 0 0, L_0x1a8e880;  alias, 1 drivers
v0x1a54b80_0 .net "carryout", 0 0, L_0x1a56780;  alias, 1 drivers
v0x1a54c40_0 .net "out1", 0 0, L_0x1a8e9f0;  1 drivers
v0x1a54d50_0 .net "out2", 0 0, L_0x1a8ec00;  1 drivers
v0x1a54e10_0 .net "out3", 0 0, L_0x1a8ec90;  1 drivers
v0x1a54ed0_0 .net "sum", 0 0, L_0x1a8eaf0;  alias, 1 drivers
S_0x1a55030 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a56c60 .functor AND 1, L_0x1a8f840, L_0x1a8f8e0, C4<1>, C4<1>;
v0x1a55270_0 .net "A", 0 0, L_0x1a8f840;  alias, 1 drivers
v0x1a55330_0 .net "B", 0 0, L_0x1a8f8e0;  alias, 1 drivers
v0x1a553d0_0 .net "out", 0 0, L_0x1a56c60;  1 drivers
S_0x1a55520 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a55770_0 .net "I", 7 0, L_0x1a8f520;  alias, 1 drivers
v0x1a55850_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a55910_0 .net "out", 0 0, L_0x1a8f210;  alias, 1 drivers
L_0x1a8f210 .part/v L_0x1a8f520, v0x19b4ae0_0, 1;
S_0x1a55a60 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8f080 .functor NAND 1, L_0x1a8f840, L_0x1a8f8e0, C4<1>, C4<1>;
v0x1a55c80_0 .net "A", 0 0, L_0x1a8f840;  alias, 1 drivers
v0x1a55d90_0 .net "B", 0 0, L_0x1a8f8e0;  alias, 1 drivers
v0x1a55e50_0 .net "out", 0 0, L_0x1a8f080;  1 drivers
S_0x1a55f60 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8f0f0 .functor NOR 1, L_0x1a8f840, L_0x1a8f8e0, C4<0>, C4<0>;
v0x1a561d0_0 .net "A", 0 0, L_0x1a8f840;  alias, 1 drivers
v0x1a56290_0 .net "B", 0 0, L_0x1a8f8e0;  alias, 1 drivers
v0x1a563a0_0 .net "out", 0 0, L_0x1a8f0f0;  1 drivers
S_0x1a564a0 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8f180 .functor OR 1, L_0x1a8f840, L_0x1a8f8e0, C4<0>, C4<0>;
v0x1a566c0_0 .net "A", 0 0, L_0x1a8f840;  alias, 1 drivers
v0x1a56810_0 .net "B", 0 0, L_0x1a8f8e0;  alias, 1 drivers
v0x1a568d0_0 .net "out", 0 0, L_0x1a8f180;  1 drivers
S_0x1a569d0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8e690 .functor XOR 1, L_0x1a8f8e0, L_0x1a8e950, C4<0>, C4<0>;
v0x1a56ba0_0 .net "A", 0 0, L_0x1a8f8e0;  alias, 1 drivers
v0x1a56cf0_0 .net "B", 0 0, L_0x1a8e950;  1 drivers
v0x1a56db0_0 .net "out", 0 0, L_0x1a8e690;  alias, 1 drivers
S_0x1a56ef0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a54400;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8ef00 .functor XOR 1, L_0x1a8f840, L_0x1a8f8e0, C4<0>, C4<0>;
v0x1a570c0_0 .net "A", 0 0, L_0x1a8f840;  alias, 1 drivers
v0x1a57180_0 .net "B", 0 0, L_0x1a8f8e0;  alias, 1 drivers
v0x1a57240_0 .net "out", 0 0, L_0x1a8ef00;  1 drivers
S_0x1a57dd0 .scope module, "alu9" "ALU_1bit" 8 127, 8 66 0, S_0x19ddef0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1a90620 .functor BUFZ 1, L_0x1a8fda0, C4<0>, C4<0>, C4<0>;
L_0x1a906b0 .functor BUFZ 1, L_0x1a8fda0, C4<0>, C4<0>, C4<0>;
v0x1a5ad40_0 .net "A", 0 0, L_0x1a90af0;  1 drivers
v0x1a5ade0_0 .net "B", 0 0, L_0x1a8f980;  1 drivers
v0x1a5aea0_0 .net "I", 7 0, L_0x1a907d0;  1 drivers
v0x1a5afa0_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a20660_0 .net *"_s15", 0 0, L_0x1a90620;  1 drivers
v0x1a20770_0 .net *"_s19", 0 0, L_0x1a906b0;  1 drivers
L_0x7fb90a0d2450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a20850_0 .net/2s *"_s23", 0 0, L_0x7fb90a0d2450;  1 drivers
v0x1a20930_0 .net "addORsub", 0 0, L_0x1a8fda0;  1 drivers
v0x1a209d0_0 .net "carryin", 0 0, L_0x1a90da0;  1 drivers
v0x1a5b910_0 .net "carryout", 0 0, L_0x1a5a150;  1 drivers
v0x1a5b9e0_0 .net "modB", 0 0, L_0x1a8b130;  1 drivers
v0x1a5ba80_0 .net "out", 0 0, L_0x1a904c0;  1 drivers
L_0x1a8fc00 .part v0x19b4ae0_0, 0, 1;
LS_0x1a907d0_0_0 .concat8 [ 1 1 1 1], L_0x1a90620, L_0x1a906b0, L_0x1a901b0, L_0x7fb90a0d2450;
LS_0x1a907d0_0_4 .concat8 [ 1 1 1 1], L_0x1a5a630, L_0x1a90330, L_0x1a903a0, L_0x1a90430;
L_0x1a907d0 .concat8 [ 4 4 0 0], LS_0x1a907d0_0_0, LS_0x1a907d0_0_4;
S_0x1a58040 .scope module, "addsub" "add_sub" 8 81, 2 8 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1a8fca0 .functor XOR 1, L_0x1a90af0, L_0x1a8b130, C4<0>, C4<0>;
L_0x1a8fda0 .functor XOR 1, L_0x1a8fca0, L_0x1a90da0, C4<0>, C4<0>;
L_0x1a8feb0 .functor AND 1, L_0x1a8fca0, L_0x1a90da0, C4<1>, C4<1>;
L_0x1a8ff40 .functor AND 1, L_0x1a90af0, L_0x1a8b130, C4<1>, C4<1>;
L_0x1a5a150 .functor OR 1, L_0x1a8feb0, L_0x1a8ff40, C4<0>, C4<0>;
v0x1a582e0_0 .net "A", 0 0, L_0x1a90af0;  alias, 1 drivers
v0x1a583c0_0 .net "B", 0 0, L_0x1a8b130;  alias, 1 drivers
v0x1a58480_0 .net "carryin", 0 0, L_0x1a90da0;  alias, 1 drivers
v0x1a58550_0 .net "carryout", 0 0, L_0x1a5a150;  alias, 1 drivers
v0x1a58610_0 .net "out1", 0 0, L_0x1a8fca0;  1 drivers
v0x1a58720_0 .net "out2", 0 0, L_0x1a8feb0;  1 drivers
v0x1a587e0_0 .net "out3", 0 0, L_0x1a8ff40;  1 drivers
v0x1a588a0_0 .net "sum", 0 0, L_0x1a8fda0;  alias, 1 drivers
S_0x1a58a00 .scope module, "andgate" "ALUand" 8 83, 9 8 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a5a630 .functor AND 1, L_0x1a90af0, L_0x1a8f980, C4<1>, C4<1>;
v0x1a58c40_0 .net "A", 0 0, L_0x1a90af0;  alias, 1 drivers
v0x1a58d00_0 .net "B", 0 0, L_0x1a8f980;  alias, 1 drivers
v0x1a58da0_0 .net "out", 0 0, L_0x1a5a630;  1 drivers
S_0x1a58ef0 .scope module, "elonMux" "multiplexer" 8 88, 10 4 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a59140_0 .net "I", 7 0, L_0x1a907d0;  alias, 1 drivers
v0x1a59220_0 .net "S", 2 0, v0x19b4ae0_0;  alias, 1 drivers
v0x1a592e0_0 .net "out", 0 0, L_0x1a904c0;  alias, 1 drivers
L_0x1a904c0 .part/v L_0x1a907d0, v0x19b4ae0_0, 1;
S_0x1a59430 .scope module, "nandgate" "ALUnand" 8 84, 9 26 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a90330 .functor NAND 1, L_0x1a90af0, L_0x1a8f980, C4<1>, C4<1>;
v0x1a59650_0 .net "A", 0 0, L_0x1a90af0;  alias, 1 drivers
v0x1a59760_0 .net "B", 0 0, L_0x1a8f980;  alias, 1 drivers
v0x1a59820_0 .net "out", 0 0, L_0x1a90330;  1 drivers
S_0x1a59930 .scope module, "norgate" "ALUnor" 8 85, 9 35 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a903a0 .functor NOR 1, L_0x1a90af0, L_0x1a8f980, C4<0>, C4<0>;
v0x1a59ba0_0 .net "A", 0 0, L_0x1a90af0;  alias, 1 drivers
v0x1a59c60_0 .net "B", 0 0, L_0x1a8f980;  alias, 1 drivers
v0x1a59d70_0 .net "out", 0 0, L_0x1a903a0;  1 drivers
S_0x1a59e70 .scope module, "orgate" "ALUor" 8 86, 9 17 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a90430 .functor OR 1, L_0x1a90af0, L_0x1a8f980, C4<0>, C4<0>;
v0x1a5a090_0 .net "A", 0 0, L_0x1a90af0;  alias, 1 drivers
v0x1a5a1e0_0 .net "B", 0 0, L_0x1a8f980;  alias, 1 drivers
v0x1a5a2a0_0 .net "out", 0 0, L_0x1a90430;  1 drivers
S_0x1a5a3a0 .scope module, "xorgate" "ALUxor" 8 79, 9 44 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8b130 .functor XOR 1, L_0x1a8f980, L_0x1a8fc00, C4<0>, C4<0>;
v0x1a5a570_0 .net "A", 0 0, L_0x1a8f980;  alias, 1 drivers
v0x1a5a6c0_0 .net "B", 0 0, L_0x1a8fc00;  1 drivers
v0x1a5a780_0 .net "out", 0 0, L_0x1a8b130;  alias, 1 drivers
S_0x1a5a8c0 .scope module, "xorgate1" "ALUxor" 8 82, 9 44 0, S_0x1a57dd0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a901b0 .functor XOR 1, L_0x1a90af0, L_0x1a8f980, C4<0>, C4<0>;
v0x1a5aa90_0 .net "A", 0 0, L_0x1a90af0;  alias, 1 drivers
v0x1a5ab50_0 .net "B", 0 0, L_0x1a8f980;  alias, 1 drivers
v0x1a5ac10_0 .net "out", 0 0, L_0x1a901b0;  1 drivers
S_0x1a5e2f0 .scope module, "mem" "memory" 5 56, 11 1 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "regWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x1a71a20 .functor BUFZ 32, L_0x1a71980, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a71b80 .functor BUFZ 32, L_0x1a71ae0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a5e5a0_0 .net "Addr0", 31 0, L_0x1a71c40;  1 drivers
v0x1a5e6a0_0 .net "DataIn0", 31 0, L_0x1a85de0;  alias, 1 drivers
v0x1a5e780_0 .net "DataOut0", 31 0, L_0x1a71a20;  alias, 1 drivers
v0x1a5e870_0 .net *"_s0", 31 0, L_0x1a71980;  1 drivers
v0x1a5e950_0 .net *"_s4", 31 0, L_0x1a71ae0;  1 drivers
v0x1a5ea80_0 .net "clk", 0 0, o0x7fb90a11bac8;  alias, 0 drivers
v0x1a5eb20_0 .net "instruct_Addr1", 31 0, L_0x1a71ed0;  1 drivers
v0x1a5ebe0_0 .net "instruct_DataOut1", 31 0, L_0x1a71b80;  alias, 1 drivers
v0x1a5ecd0 .array "mem", 0 31, 31 0;
v0x1a5ee20_0 .net "regWE", 0 0, v0x19fd130_0;  alias, 1 drivers
E_0x1a5e520 .event posedge, v0x19ac2a0_0;
L_0x1a71980 .array/port v0x1a5ecd0, L_0x1a71c40;
L_0x1a71ae0 .array/port v0x1a5ecd0, L_0x1a71ed0;
S_0x1a5efc0 .scope module, "op_imm_mux" "mux2" 5 68, 12 1 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x1a5f200_0 .net "input0", 31 0, v0x19a7d70_0;  alias, 1 drivers
v0x1a5f310_0 .net "input1", 31 0, L_0x1a85de0;  alias, 1 drivers
v0x1a5f3e0_0 .net "out", 31 0, L_0x1aae470;  alias, 1 drivers
v0x1a5f4e0_0 .net "select0", 0 0, v0x199d570_0;  alias, 1 drivers
L_0x1aae470 .functor MUXZ 32, L_0x1a85de0, v0x19a7d70_0, v0x199d570_0, C4<>;
S_0x1a5f600 .scope module, "pcmux" "pc_multiplexer" 5 53, 13 7 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x1a5f8d0_0 .net "JumpAddress", 25 0, v0x19b04d0_0;  alias, 1 drivers
v0x1a5f9e0_0 .var "PC", 31 0;
v0x1a5faa0_0 .net "S", 1 0, v0x1998ed0_0;  alias, 1 drivers
v0x1a5fba0_0 .net "clk", 0 0, o0x7fb90a11bac8;  alias, 0 drivers
v0x1a5fc90_0 .net "immediate", 31 0, v0x19a7d70_0;  alias, 1 drivers
v0x1a5fdd0_0 .var "mux_out", 31 0;
v0x1a5feb0_0 .var "nextPC", 31 0;
v0x1a5ff90_0 .net "regRs", 31 0, L_0x1a835f0;  alias, 1 drivers
v0x1a60050_0 .var "tempimmediate", 31 0;
E_0x1a5f870/0 .event edge, v0x1998ed0_0, v0x1a5bba0_0, v0x19a7d70_0, v0x19b04d0_0;
E_0x1a5f870/1 .event edge, v0x1a5feb0_0;
E_0x1a5f870 .event/or E_0x1a5f870/0, E_0x1a5f870/1;
S_0x1a602a0 .scope module, "reg_in_mux" "mux3_32bit" 5 67, 12 21 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x1a604a0_0 .net *"_s1", 0 0, L_0x1aadca0;  1 drivers
v0x1a605a0_0 .net *"_s10", 31 0, L_0x1aae000;  1 drivers
v0x1a60680_0 .net *"_s3", 0 0, L_0x1aadd40;  1 drivers
L_0x7fb90a0d2b10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1a60740_0 .net/2u *"_s4", 31 0, L_0x7fb90a0d2b10;  1 drivers
v0x1a60820_0 .net *"_s6", 31 0, L_0x1aade70;  1 drivers
v0x1a60950_0 .net *"_s9", 0 0, L_0x1aadf60;  1 drivers
v0x1a60a30_0 .net "input0", 31 0, L_0x1aaa880;  alias, 1 drivers
v0x1a60af0_0 .net "input1", 31 0, L_0x1a71a20;  alias, 1 drivers
v0x1a60bc0_0 .net "input2", 31 0, L_0x1aae2c0;  1 drivers
v0x1a60d10_0 .net "out", 31 0, L_0x1aae180;  alias, 1 drivers
v0x1a60df0_0 .net "select0", 1 0, v0x19fd1f0_0;  alias, 1 drivers
L_0x1aadca0 .part v0x19fd1f0_0, 1, 1;
L_0x1aadd40 .part v0x19fd1f0_0, 0, 1;
L_0x1aade70 .functor MUXZ 32, L_0x1aae2c0, L_0x7fb90a0d2b10, L_0x1aadd40, C4<>;
L_0x1aadf60 .part v0x19fd1f0_0, 0, 1;
L_0x1aae000 .functor MUXZ 32, L_0x1aaa880, L_0x1a71a20, L_0x1aadf60, C4<>;
L_0x1aae180 .functor MUXZ 32, L_0x1aae000, L_0x1aade70, L_0x1aadca0, C4<>;
S_0x1a60f90 .scope module, "reg_select_mux" "mux3_5bit" 5 66, 12 11 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x1a61190_0 .net *"_s1", 0 0, L_0x1aacd40;  1 drivers
v0x1a61290_0 .net *"_s10", 4 0, L_0x1aad9d0;  1 drivers
v0x1a61370_0 .net *"_s3", 0 0, L_0x1aad7a0;  1 drivers
L_0x7fb90a0d2a80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x1a61460_0 .net/2u *"_s4", 4 0, L_0x7fb90a0d2a80;  1 drivers
v0x1a61540_0 .net *"_s6", 4 0, L_0x1aad840;  1 drivers
v0x1a61670_0 .net *"_s9", 0 0, L_0x1aad930;  1 drivers
v0x1a61750_0 .net "input0", 4 0, v0x1998f90_0;  alias, 1 drivers
v0x1a61810_0 .net "input1", 4 0, v0x1983020_0;  alias, 1 drivers
L_0x7fb90a0d2ac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x1a618e0_0 .net "input2", 4 0, L_0x7fb90a0d2ac8;  1 drivers
v0x1a61a50_0 .net "out", 4 0, L_0x1aadac0;  alias, 1 drivers
v0x1a61b30_0 .net "select0", 1 0, v0x19abee0_0;  alias, 1 drivers
L_0x1aacd40 .part v0x19abee0_0, 1, 1;
L_0x1aad7a0 .part v0x19abee0_0, 0, 1;
L_0x1aad840 .functor MUXZ 5, L_0x7fb90a0d2ac8, L_0x7fb90a0d2a80, L_0x1aad7a0, C4<>;
L_0x1aad930 .part v0x19abee0_0, 0, 1;
L_0x1aad9d0 .functor MUXZ 5, v0x1998f90_0, v0x1983020_0, L_0x1aad930, C4<>;
L_0x1aadac0 .functor MUXZ 5, L_0x1aad9d0, L_0x1aad840, L_0x1aacd40, C4<>;
S_0x1a61ca0 .scope module, "regi" "regfile" 5 62, 14 12 0, S_0x19f8410;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x1a6b1c0_0 .net "Clk", 0 0, o0x7fb90a11bac8;  alias, 0 drivers
v0x1a6e0b0_0 .net "ReadData1", 31 0, L_0x1a835f0;  alias, 1 drivers
v0x1a6e150_0 .net "ReadData2", 31 0, L_0x1a85de0;  alias, 1 drivers
v0x1a6e1f0_0 .net "ReadRegister1", 4 0, v0x19f98a0_0;  alias, 1 drivers
v0x1a6e2e0_0 .net "ReadRegister2", 4 0, v0x1983020_0;  alias, 1 drivers
v0x1a6e3d0_0 .net "RegWrite", 0 0, v0x19fd130_0;  alias, 1 drivers
v0x1a6e470_0 .net "WriteData", 31 0, L_0x1aae180;  alias, 1 drivers
v0x1a6e530_0 .net "WriteRegister", 4 0, L_0x1aadac0;  alias, 1 drivers
v0x1a6e620_0 .net "decoded", 31 0, L_0x1a820c0;  1 drivers
v0x1a6e770 .array "registers", 0 31, 31 0;
S_0x1a61f80 .scope module, "deco" "decoder1to32" 14 30, 15 4 0, S_0x1a61ca0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x1a621e0_0 .net *"_s0", 31 0, L_0x1a71fc0;  1 drivers
L_0x7fb90a0d2060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1a622e0_0 .net *"_s3", 30 0, L_0x7fb90a0d2060;  1 drivers
v0x1a623c0_0 .net "address", 4 0, L_0x1aadac0;  alias, 1 drivers
v0x1a62490_0 .net "enable", 0 0, v0x19fd130_0;  alias, 1 drivers
v0x1a62580_0 .net "out", 31 0, L_0x1a820c0;  alias, 1 drivers
L_0x1a71fc0 .concat [ 1 31 0 0], v0x19fd130_0, L_0x7fb90a0d2060;
L_0x1a820c0 .shift/l 32, L_0x1a71fc0, L_0x1aadac0;
S_0x1a62710 .scope generate, "genblk1[1]" "genblk1[1]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a62900 .param/l "i" 0 14 33, +C4<01>;
S_0x1a629c0 .scope generate, "genblk1[2]" "genblk1[2]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a62bb0 .param/l "i" 0 14 33, +C4<010>;
S_0x1a62c50 .scope generate, "genblk1[3]" "genblk1[3]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a62e40 .param/l "i" 0 14 33, +C4<011>;
S_0x1a62f00 .scope generate, "genblk1[4]" "genblk1[4]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a63140 .param/l "i" 0 14 33, +C4<0100>;
S_0x1a63200 .scope generate, "genblk1[5]" "genblk1[5]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a633f0 .param/l "i" 0 14 33, +C4<0101>;
S_0x1a634b0 .scope generate, "genblk1[6]" "genblk1[6]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a636a0 .param/l "i" 0 14 33, +C4<0110>;
S_0x1a63760 .scope generate, "genblk1[7]" "genblk1[7]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a63950 .param/l "i" 0 14 33, +C4<0111>;
S_0x1a63a10 .scope generate, "genblk1[8]" "genblk1[8]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a630f0 .param/l "i" 0 14 33, +C4<01000>;
S_0x1a63d00 .scope generate, "genblk1[9]" "genblk1[9]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a63ef0 .param/l "i" 0 14 33, +C4<01001>;
S_0x1a63fb0 .scope generate, "genblk1[10]" "genblk1[10]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a641a0 .param/l "i" 0 14 33, +C4<01010>;
S_0x1a64260 .scope generate, "genblk1[11]" "genblk1[11]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a64450 .param/l "i" 0 14 33, +C4<01011>;
S_0x1a64510 .scope generate, "genblk1[12]" "genblk1[12]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a64700 .param/l "i" 0 14 33, +C4<01100>;
S_0x1a647c0 .scope generate, "genblk1[13]" "genblk1[13]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a649b0 .param/l "i" 0 14 33, +C4<01101>;
S_0x1a64a70 .scope generate, "genblk1[14]" "genblk1[14]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a64c60 .param/l "i" 0 14 33, +C4<01110>;
S_0x1a64d20 .scope generate, "genblk1[15]" "genblk1[15]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a64f10 .param/l "i" 0 14 33, +C4<01111>;
S_0x1a64fd0 .scope generate, "genblk1[16]" "genblk1[16]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a63c00 .param/l "i" 0 14 33, +C4<010000>;
S_0x1a65320 .scope generate, "genblk1[17]" "genblk1[17]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a654f0 .param/l "i" 0 14 33, +C4<010001>;
S_0x1a655b0 .scope generate, "genblk1[18]" "genblk1[18]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a657a0 .param/l "i" 0 14 33, +C4<010010>;
S_0x1a65860 .scope generate, "genblk1[19]" "genblk1[19]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a65a50 .param/l "i" 0 14 33, +C4<010011>;
S_0x1a65b10 .scope generate, "genblk1[20]" "genblk1[20]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a65d00 .param/l "i" 0 14 33, +C4<010100>;
S_0x1a65dc0 .scope generate, "genblk1[21]" "genblk1[21]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a65fb0 .param/l "i" 0 14 33, +C4<010101>;
S_0x1a66070 .scope generate, "genblk1[22]" "genblk1[22]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a66260 .param/l "i" 0 14 33, +C4<010110>;
S_0x1a66320 .scope generate, "genblk1[23]" "genblk1[23]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a66510 .param/l "i" 0 14 33, +C4<010111>;
S_0x1a665d0 .scope generate, "genblk1[24]" "genblk1[24]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a667c0 .param/l "i" 0 14 33, +C4<011000>;
S_0x1a66880 .scope generate, "genblk1[25]" "genblk1[25]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a66a70 .param/l "i" 0 14 33, +C4<011001>;
S_0x1a66b30 .scope generate, "genblk1[26]" "genblk1[26]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a66d20 .param/l "i" 0 14 33, +C4<011010>;
S_0x1a66de0 .scope generate, "genblk1[27]" "genblk1[27]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a66fd0 .param/l "i" 0 14 33, +C4<011011>;
S_0x1a67090 .scope generate, "genblk1[28]" "genblk1[28]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a67280 .param/l "i" 0 14 33, +C4<011100>;
S_0x1a67340 .scope generate, "genblk1[29]" "genblk1[29]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a67530 .param/l "i" 0 14 33, +C4<011101>;
S_0x1a675f0 .scope generate, "genblk1[30]" "genblk1[30]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a677e0 .param/l "i" 0 14 33, +C4<011110>;
S_0x1a678a0 .scope generate, "genblk1[31]" "genblk1[31]" 14 33, 14 33 0, S_0x1a61ca0;
 .timescale 0 0;
P_0x1a67a90 .param/l "i" 0 14 33, +C4<011111>;
S_0x1a67b50 .scope module, "mux1" "mux32to1by32" 14 40, 3 10 0, S_0x1a61ca0;
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
L_0x7fb90a0d20f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1a82290 .functor BUFZ 32, L_0x7fb90a0d20f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_1 .array/port v0x1a6e770, 1;
L_0x1a82300 .functor BUFZ 32, v0x1a6e770_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_2 .array/port v0x1a6e770, 2;
L_0x1a82370 .functor BUFZ 32, v0x1a6e770_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_3 .array/port v0x1a6e770, 3;
L_0x1a823e0 .functor BUFZ 32, v0x1a6e770_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_4 .array/port v0x1a6e770, 4;
L_0x1a82450 .functor BUFZ 32, v0x1a6e770_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_5 .array/port v0x1a6e770, 5;
L_0x1a824c0 .functor BUFZ 32, v0x1a6e770_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_6 .array/port v0x1a6e770, 6;
L_0x1a82530 .functor BUFZ 32, v0x1a6e770_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_7 .array/port v0x1a6e770, 7;
L_0x1a825a0 .functor BUFZ 32, v0x1a6e770_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_8 .array/port v0x1a6e770, 8;
L_0x1a82610 .functor BUFZ 32, v0x1a6e770_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_9 .array/port v0x1a6e770, 9;
L_0x1a82680 .functor BUFZ 32, v0x1a6e770_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_10 .array/port v0x1a6e770, 10;
L_0x1a82750 .functor BUFZ 32, v0x1a6e770_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_11 .array/port v0x1a6e770, 11;
L_0x1a827c0 .functor BUFZ 32, v0x1a6e770_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_12 .array/port v0x1a6e770, 12;
L_0x1a828a0 .functor BUFZ 32, v0x1a6e770_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_13 .array/port v0x1a6e770, 13;
L_0x1a82910 .functor BUFZ 32, v0x1a6e770_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_14 .array/port v0x1a6e770, 14;
L_0x1a82830 .functor BUFZ 32, v0x1a6e770_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_15 .array/port v0x1a6e770, 15;
L_0x1a82a00 .functor BUFZ 32, v0x1a6e770_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_16 .array/port v0x1a6e770, 16;
L_0x1a82b00 .functor BUFZ 32, v0x1a6e770_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_17 .array/port v0x1a6e770, 17;
L_0x1a82b70 .functor BUFZ 32, v0x1a6e770_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_18 .array/port v0x1a6e770, 18;
L_0x1a82a70 .functor BUFZ 32, v0x1a6e770_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_19 .array/port v0x1a6e770, 19;
L_0x1a82c80 .functor BUFZ 32, v0x1a6e770_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_20 .array/port v0x1a6e770, 20;
L_0x1a82be0 .functor BUFZ 32, v0x1a6e770_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_21 .array/port v0x1a6e770, 21;
L_0x1a82da0 .functor BUFZ 32, v0x1a6e770_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_22 .array/port v0x1a6e770, 22;
L_0x1a82cf0 .functor BUFZ 32, v0x1a6e770_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_23 .array/port v0x1a6e770, 23;
L_0x1a82ed0 .functor BUFZ 32, v0x1a6e770_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_24 .array/port v0x1a6e770, 24;
L_0x1a82e10 .functor BUFZ 32, v0x1a6e770_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_25 .array/port v0x1a6e770, 25;
L_0x1a83010 .functor BUFZ 32, v0x1a6e770_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_26 .array/port v0x1a6e770, 26;
L_0x1a82f40 .functor BUFZ 32, v0x1a6e770_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_27 .array/port v0x1a6e770, 27;
L_0x1a83160 .functor BUFZ 32, v0x1a6e770_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_28 .array/port v0x1a6e770, 28;
L_0x1a83080 .functor BUFZ 32, v0x1a6e770_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_29 .array/port v0x1a6e770, 29;
L_0x1a830f0 .functor BUFZ 32, v0x1a6e770_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_30 .array/port v0x1a6e770, 30;
L_0x1a832d0 .functor BUFZ 32, v0x1a6e770_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1a6e770_31 .array/port v0x1a6e770, 31;
L_0x1a83340 .functor BUFZ 32, v0x1a6e770_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a835f0 .functor BUFZ 32, L_0x1a831d0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fb90a0d20a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1a651c0_0 .net *"_s101", 1 0, L_0x7fb90a0d20a8;  1 drivers
v0x1a68390_0 .net *"_s96", 31 0, L_0x1a831d0;  1 drivers
v0x1a68450_0 .net *"_s98", 6 0, L_0x1a834c0;  1 drivers
v0x1a68530_0 .net "address", 4 0, v0x19f98a0_0;  alias, 1 drivers
v0x1a685f0_0 .net "input0", 31 0, L_0x7fb90a0d20f0;  1 drivers
v0x1a68700_0 .net "input1", 31 0, v0x1a6e770_1;  1 drivers
v0x1a687e0_0 .net "input10", 31 0, v0x1a6e770_10;  1 drivers
v0x1a688c0_0 .net "input11", 31 0, v0x1a6e770_11;  1 drivers
v0x1a689a0_0 .net "input12", 31 0, v0x1a6e770_12;  1 drivers
v0x1a68b10_0 .net "input13", 31 0, v0x1a6e770_13;  1 drivers
v0x1a68bf0_0 .net "input14", 31 0, v0x1a6e770_14;  1 drivers
v0x1a68cd0_0 .net "input15", 31 0, v0x1a6e770_15;  1 drivers
v0x1a68db0_0 .net "input16", 31 0, v0x1a6e770_16;  1 drivers
v0x1a68e90_0 .net "input17", 31 0, v0x1a6e770_17;  1 drivers
v0x1a68f70_0 .net "input18", 31 0, v0x1a6e770_18;  1 drivers
v0x1a69050_0 .net "input19", 31 0, v0x1a6e770_19;  1 drivers
v0x1a69130_0 .net "input2", 31 0, v0x1a6e770_2;  1 drivers
v0x1a692e0_0 .net "input20", 31 0, v0x1a6e770_20;  1 drivers
v0x1a69380_0 .net "input21", 31 0, v0x1a6e770_21;  1 drivers
v0x1a69460_0 .net "input22", 31 0, v0x1a6e770_22;  1 drivers
v0x1a69540_0 .net "input23", 31 0, v0x1a6e770_23;  1 drivers
v0x1a69620_0 .net "input24", 31 0, v0x1a6e770_24;  1 drivers
v0x1a69700_0 .net "input25", 31 0, v0x1a6e770_25;  1 drivers
v0x1a697e0_0 .net "input26", 31 0, v0x1a6e770_26;  1 drivers
v0x1a698c0_0 .net "input27", 31 0, v0x1a6e770_27;  1 drivers
v0x1a699a0_0 .net "input28", 31 0, v0x1a6e770_28;  1 drivers
v0x1a69a80_0 .net "input29", 31 0, v0x1a6e770_29;  1 drivers
v0x1a69b60_0 .net "input3", 31 0, v0x1a6e770_3;  1 drivers
v0x1a69c40_0 .net "input30", 31 0, v0x1a6e770_30;  1 drivers
v0x1a69d20_0 .net "input31", 31 0, v0x1a6e770_31;  1 drivers
v0x1a69e00_0 .net "input4", 31 0, v0x1a6e770_4;  1 drivers
v0x1a69ee0_0 .net "input5", 31 0, v0x1a6e770_5;  1 drivers
v0x1a69fc0_0 .net "input6", 31 0, v0x1a6e770_6;  1 drivers
v0x1a69210_0 .net "input7", 31 0, v0x1a6e770_7;  1 drivers
v0x1a6a290_0 .net "input8", 31 0, v0x1a6e770_8;  1 drivers
v0x1a6a370_0 .net "input9", 31 0, v0x1a6e770_9;  1 drivers
v0x1a6a450 .array "mux", 0 31;
v0x1a6a450_0 .net v0x1a6a450 0, 31 0, L_0x1a82290; 1 drivers
v0x1a6a450_1 .net v0x1a6a450 1, 31 0, L_0x1a82300; 1 drivers
v0x1a6a450_2 .net v0x1a6a450 2, 31 0, L_0x1a82370; 1 drivers
v0x1a6a450_3 .net v0x1a6a450 3, 31 0, L_0x1a823e0; 1 drivers
v0x1a6a450_4 .net v0x1a6a450 4, 31 0, L_0x1a82450; 1 drivers
v0x1a6a450_5 .net v0x1a6a450 5, 31 0, L_0x1a824c0; 1 drivers
v0x1a6a450_6 .net v0x1a6a450 6, 31 0, L_0x1a82530; 1 drivers
v0x1a6a450_7 .net v0x1a6a450 7, 31 0, L_0x1a825a0; 1 drivers
v0x1a6a450_8 .net v0x1a6a450 8, 31 0, L_0x1a82610; 1 drivers
v0x1a6a450_9 .net v0x1a6a450 9, 31 0, L_0x1a82680; 1 drivers
v0x1a6a450_10 .net v0x1a6a450 10, 31 0, L_0x1a82750; 1 drivers
v0x1a6a450_11 .net v0x1a6a450 11, 31 0, L_0x1a827c0; 1 drivers
v0x1a6a450_12 .net v0x1a6a450 12, 31 0, L_0x1a828a0; 1 drivers
v0x1a6a450_13 .net v0x1a6a450 13, 31 0, L_0x1a82910; 1 drivers
v0x1a6a450_14 .net v0x1a6a450 14, 31 0, L_0x1a82830; 1 drivers
v0x1a6a450_15 .net v0x1a6a450 15, 31 0, L_0x1a82a00; 1 drivers
v0x1a6a450_16 .net v0x1a6a450 16, 31 0, L_0x1a82b00; 1 drivers
v0x1a6a450_17 .net v0x1a6a450 17, 31 0, L_0x1a82b70; 1 drivers
v0x1a6a450_18 .net v0x1a6a450 18, 31 0, L_0x1a82a70; 1 drivers
v0x1a6a450_19 .net v0x1a6a450 19, 31 0, L_0x1a82c80; 1 drivers
v0x1a6a450_20 .net v0x1a6a450 20, 31 0, L_0x1a82be0; 1 drivers
v0x1a6a450_21 .net v0x1a6a450 21, 31 0, L_0x1a82da0; 1 drivers
v0x1a6a450_22 .net v0x1a6a450 22, 31 0, L_0x1a82cf0; 1 drivers
v0x1a6a450_23 .net v0x1a6a450 23, 31 0, L_0x1a82ed0; 1 drivers
v0x1a6a450_24 .net v0x1a6a450 24, 31 0, L_0x1a82e10; 1 drivers
v0x1a6a450_25 .net v0x1a6a450 25, 31 0, L_0x1a83010; 1 drivers
v0x1a6a450_26 .net v0x1a6a450 26, 31 0, L_0x1a82f40; 1 drivers
v0x1a6a450_27 .net v0x1a6a450 27, 31 0, L_0x1a83160; 1 drivers
v0x1a6a450_28 .net v0x1a6a450 28, 31 0, L_0x1a83080; 1 drivers
v0x1a6a450_29 .net v0x1a6a450 29, 31 0, L_0x1a830f0; 1 drivers
v0x1a6a450_30 .net v0x1a6a450 30, 31 0, L_0x1a832d0; 1 drivers
v0x1a6a450_31 .net v0x1a6a450 31, 31 0, L_0x1a83340; 1 drivers
v0x1a6aa20_0 .net "out", 31 0, L_0x1a835f0;  alias, 1 drivers
L_0x1a831d0 .array/port v0x1a6a450, L_0x1a834c0;
L_0x1a834c0 .concat [ 5 2 0 0], v0x19f98a0_0, L_0x7fb90a0d20a8;
S_0x1a6b040 .scope module, "mux2" "mux32to1by32" 14 41, 3 10 0, S_0x1a61ca0;
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
L_0x7fb90a0d2180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1a83660 .functor BUFZ 32, L_0x7fb90a0d2180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a836d0 .functor BUFZ 32, v0x1a6e770_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a837d0 .functor BUFZ 32, v0x1a6e770_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a838d0 .functor BUFZ 32, v0x1a6e770_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a839d0 .functor BUFZ 32, v0x1a6e770_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a83ad0 .functor BUFZ 32, v0x1a6e770_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a83c00 .functor BUFZ 32, v0x1a6e770_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a83d00 .functor BUFZ 32, v0x1a6e770_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a83e30 .functor BUFZ 32, v0x1a6e770_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a83f60 .functor BUFZ 32, v0x1a6e770_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84090 .functor BUFZ 32, v0x1a6e770_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a841c0 .functor BUFZ 32, v0x1a6e770_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84360 .functor BUFZ 32, v0x1a6e770_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84490 .functor BUFZ 32, v0x1a6e770_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a842f0 .functor BUFZ 32, v0x1a6e770_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84680 .functor BUFZ 32, v0x1a6e770_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84840 .functor BUFZ 32, v0x1a6e770_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84970 .functor BUFZ 32, v0x1a6e770_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a847b0 .functor BUFZ 32, v0x1a6e770_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84c00 .functor BUFZ 32, v0x1a6e770_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84aa0 .functor BUFZ 32, v0x1a6e770_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84e70 .functor BUFZ 32, v0x1a6e770_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84d30 .functor BUFZ 32, v0x1a6e770_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a850f0 .functor BUFZ 32, v0x1a6e770_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a84fa0 .functor BUFZ 32, v0x1a6e770_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a85380 .functor BUFZ 32, v0x1a6e770_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a85220 .functor BUFZ 32, v0x1a6e770_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a85620 .functor BUFZ 32, v0x1a6e770_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a854b0 .functor BUFZ 32, v0x1a6e770_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a858a0 .functor BUFZ 32, v0x1a6e770_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a85720 .functor BUFZ 32, v0x1a6e770_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a85b30 .functor BUFZ 32, v0x1a6e770_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1a85de0 .functor BUFZ 32, L_0x1a859a0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fb90a0d2138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1a67f80_0 .net *"_s101", 1 0, L_0x7fb90a0d2138;  1 drivers
v0x1a6b660_0 .net *"_s96", 31 0, L_0x1a859a0;  1 drivers
v0x1a6b760_0 .net *"_s98", 6 0, L_0x1a85d40;  1 drivers
v0x1a6b820_0 .net "address", 4 0, v0x1983020_0;  alias, 1 drivers
v0x1a6b930_0 .net "input0", 31 0, L_0x7fb90a0d2180;  1 drivers
v0x1a6ba60_0 .net "input1", 31 0, v0x1a6e770_1;  alias, 1 drivers
v0x1a6bb20_0 .net "input10", 31 0, v0x1a6e770_10;  alias, 1 drivers
v0x1a6bbc0_0 .net "input11", 31 0, v0x1a6e770_11;  alias, 1 drivers
v0x1a6bc60_0 .net "input12", 31 0, v0x1a6e770_12;  alias, 1 drivers
v0x1a6bd90_0 .net "input13", 31 0, v0x1a6e770_13;  alias, 1 drivers
v0x1a6be30_0 .net "input14", 31 0, v0x1a6e770_14;  alias, 1 drivers
v0x1a6bf00_0 .net "input15", 31 0, v0x1a6e770_15;  alias, 1 drivers
v0x1a6bfd0_0 .net "input16", 31 0, v0x1a6e770_16;  alias, 1 drivers
v0x1a6c0a0_0 .net "input17", 31 0, v0x1a6e770_17;  alias, 1 drivers
v0x1a6c170_0 .net "input18", 31 0, v0x1a6e770_18;  alias, 1 drivers
v0x1a6c240_0 .net "input19", 31 0, v0x1a6e770_19;  alias, 1 drivers
v0x1a6c310_0 .net "input2", 31 0, v0x1a6e770_2;  alias, 1 drivers
v0x1a6c4c0_0 .net "input20", 31 0, v0x1a6e770_20;  alias, 1 drivers
v0x1a6c560_0 .net "input21", 31 0, v0x1a6e770_21;  alias, 1 drivers
v0x1a6c600_0 .net "input22", 31 0, v0x1a6e770_22;  alias, 1 drivers
v0x1a6c6d0_0 .net "input23", 31 0, v0x1a6e770_23;  alias, 1 drivers
v0x1a6c7a0_0 .net "input24", 31 0, v0x1a6e770_24;  alias, 1 drivers
v0x1a6c870_0 .net "input25", 31 0, v0x1a6e770_25;  alias, 1 drivers
v0x1a6c940_0 .net "input26", 31 0, v0x1a6e770_26;  alias, 1 drivers
v0x1a6ca10_0 .net "input27", 31 0, v0x1a6e770_27;  alias, 1 drivers
v0x1a6cae0_0 .net "input28", 31 0, v0x1a6e770_28;  alias, 1 drivers
v0x1a6cbb0_0 .net "input29", 31 0, v0x1a6e770_29;  alias, 1 drivers
v0x1a6cc80_0 .net "input3", 31 0, v0x1a6e770_3;  alias, 1 drivers
v0x1a6cd50_0 .net "input30", 31 0, v0x1a6e770_30;  alias, 1 drivers
v0x1a6ce20_0 .net "input31", 31 0, v0x1a6e770_31;  alias, 1 drivers
v0x1a6cef0_0 .net "input4", 31 0, v0x1a6e770_4;  alias, 1 drivers
v0x1a6cfc0_0 .net "input5", 31 0, v0x1a6e770_5;  alias, 1 drivers
v0x1a6d090_0 .net "input6", 31 0, v0x1a6e770_6;  alias, 1 drivers
v0x1a6c3e0_0 .net "input7", 31 0, v0x1a6e770_7;  alias, 1 drivers
v0x1a6d340_0 .net "input8", 31 0, v0x1a6e770_8;  alias, 1 drivers
v0x1a6d410_0 .net "input9", 31 0, v0x1a6e770_9;  alias, 1 drivers
v0x1a6d4e0 .array "mux", 0 31;
v0x1a6d4e0_0 .net v0x1a6d4e0 0, 31 0, L_0x1a83660; 1 drivers
v0x1a6d4e0_1 .net v0x1a6d4e0 1, 31 0, L_0x1a836d0; 1 drivers
v0x1a6d4e0_2 .net v0x1a6d4e0 2, 31 0, L_0x1a837d0; 1 drivers
v0x1a6d4e0_3 .net v0x1a6d4e0 3, 31 0, L_0x1a838d0; 1 drivers
v0x1a6d4e0_4 .net v0x1a6d4e0 4, 31 0, L_0x1a839d0; 1 drivers
v0x1a6d4e0_5 .net v0x1a6d4e0 5, 31 0, L_0x1a83ad0; 1 drivers
v0x1a6d4e0_6 .net v0x1a6d4e0 6, 31 0, L_0x1a83c00; 1 drivers
v0x1a6d4e0_7 .net v0x1a6d4e0 7, 31 0, L_0x1a83d00; 1 drivers
v0x1a6d4e0_8 .net v0x1a6d4e0 8, 31 0, L_0x1a83e30; 1 drivers
v0x1a6d4e0_9 .net v0x1a6d4e0 9, 31 0, L_0x1a83f60; 1 drivers
v0x1a6d4e0_10 .net v0x1a6d4e0 10, 31 0, L_0x1a84090; 1 drivers
v0x1a6d4e0_11 .net v0x1a6d4e0 11, 31 0, L_0x1a841c0; 1 drivers
v0x1a6d4e0_12 .net v0x1a6d4e0 12, 31 0, L_0x1a84360; 1 drivers
v0x1a6d4e0_13 .net v0x1a6d4e0 13, 31 0, L_0x1a84490; 1 drivers
v0x1a6d4e0_14 .net v0x1a6d4e0 14, 31 0, L_0x1a842f0; 1 drivers
v0x1a6d4e0_15 .net v0x1a6d4e0 15, 31 0, L_0x1a84680; 1 drivers
v0x1a6d4e0_16 .net v0x1a6d4e0 16, 31 0, L_0x1a84840; 1 drivers
v0x1a6d4e0_17 .net v0x1a6d4e0 17, 31 0, L_0x1a84970; 1 drivers
v0x1a6d4e0_18 .net v0x1a6d4e0 18, 31 0, L_0x1a847b0; 1 drivers
v0x1a6d4e0_19 .net v0x1a6d4e0 19, 31 0, L_0x1a84c00; 1 drivers
v0x1a6d4e0_20 .net v0x1a6d4e0 20, 31 0, L_0x1a84aa0; 1 drivers
v0x1a6d4e0_21 .net v0x1a6d4e0 21, 31 0, L_0x1a84e70; 1 drivers
v0x1a6d4e0_22 .net v0x1a6d4e0 22, 31 0, L_0x1a84d30; 1 drivers
v0x1a6d4e0_23 .net v0x1a6d4e0 23, 31 0, L_0x1a850f0; 1 drivers
v0x1a6d4e0_24 .net v0x1a6d4e0 24, 31 0, L_0x1a84fa0; 1 drivers
v0x1a6d4e0_25 .net v0x1a6d4e0 25, 31 0, L_0x1a85380; 1 drivers
v0x1a6d4e0_26 .net v0x1a6d4e0 26, 31 0, L_0x1a85220; 1 drivers
v0x1a6d4e0_27 .net v0x1a6d4e0 27, 31 0, L_0x1a85620; 1 drivers
v0x1a6d4e0_28 .net v0x1a6d4e0 28, 31 0, L_0x1a854b0; 1 drivers
v0x1a6d4e0_29 .net v0x1a6d4e0 29, 31 0, L_0x1a858a0; 1 drivers
v0x1a6d4e0_30 .net v0x1a6d4e0 30, 31 0, L_0x1a85720; 1 drivers
v0x1a6d4e0_31 .net v0x1a6d4e0 31, 31 0, L_0x1a85b30; 1 drivers
v0x1a6da90_0 .net "out", 31 0, L_0x1a85de0;  alias, 1 drivers
L_0x1a859a0 .array/port v0x1a6d4e0, L_0x1a85d40;
L_0x1a85d40 .concat [ 5 2 0 0], v0x1983020_0, L_0x7fb90a0d2138;
    .scope S_0x19c6760;
T_0 ;
    %wait E_0x196f0d0;
    %load/vec4 v0x19edc80_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x19f2330_0;
    %assign/vec4 v0x19ee040_0, 0;
T_0.0 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x199c0e0;
T_1 ;
    %wait E_0x19ee110;
    %load/vec4 v0x19d3b30_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %load/vec4 v0x19e9690_0;
    %assign/vec4 v0x19d3a70_0, 0;
T_1.0 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x19fc180;
T_2 ;
    %wait E_0x19e97b0;
    %load/vec4 v0x19cf180_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x19cf0c0_0, 0;
T_2.0 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x1a5f600;
T_3 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1a5f9e0_0, 0;
    %end;
    .thread T_3;
    .scope S_0x1a5f600;
T_4 ;
    %wait E_0x1a5f870;
    %load/vec4 v0x1a5faa0_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_4.0, 4;
    %load/vec4 v0x1a5feb0_0;
    %assign/vec4 v0x1a5fdd0_0, 0;
    %jmp T_4.1;
T_4.0 ;
    %load/vec4 v0x1a5faa0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_4.2, 4;
    %load/vec4 v0x1a5f8d0_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1a5fdd0_0, 4, 5;
    %load/vec4 v0x1a5feb0_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1a5fdd0_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1a5fdd0_0, 4, 5;
    %jmp T_4.3;
T_4.2 ;
    %load/vec4 v0x1a5faa0_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_4.4, 4;
    %load/vec4 v0x1a5fc90_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x1a60050_0, 0, 32;
    %load/vec4 v0x1a60050_0;
    %load/vec4 v0x1a5feb0_0;
    %add;
    %store/vec4 v0x1a5fdd0_0, 0, 32;
    %jmp T_4.5;
T_4.4 ;
    %load/vec4 v0x1a5ff90_0;
    %assign/vec4 v0x1a5fdd0_0, 0;
T_4.5 ;
T_4.3 ;
T_4.1 ;
    %load/vec4 v0x1a5f9e0_0;
    %addi 4, 0, 32;
    %assign/vec4 v0x1a5feb0_0, 0;
    %jmp T_4;
    .thread T_4, $push;
    .scope S_0x1a5f600;
T_5 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a5fdd0_0;
    %store/vec4 v0x1a5f9e0_0, 0, 32;
    %jmp T_5;
    .thread T_5;
    .scope S_0x1981b90;
T_6 ;
    %wait E_0x19caf40;
    %load/vec4 v0x19b51e0_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x19c63a0_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x19caad0_0, 0, 2;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0x19b51e0_0;
    %cmpi/e 4, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x19b51e0_0;
    %cmpi/e 5, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_6.2, 4;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x19caad0_0, 0, 2;
    %jmp T_6.3;
T_6.2 ;
    %load/vec4 v0x19b51e0_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x19b51e0_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_6.4, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x19caad0_0, 0, 2;
    %jmp T_6.5;
T_6.4 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19caad0_0, 0, 2;
T_6.5 ;
T_6.3 ;
T_6.1 ;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x1a5e2f0;
T_7 ;
    %wait E_0x1a5e520;
    %vpi_call 11 15 "$display", "thing %b", &A<v0x1a5ecd0, 1> {0 0 0};
    %load/vec4 v0x1a5ee20_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x1a5e6a0_0;
    %ix/getv 3, v0x1a5e5a0_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a5ecd0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x1a5e2f0;
T_8 ;
    %vpi_call 11 20 "$readmemh", "yeet.text", v0x1a5ecd0 {0 0 0};
    %end;
    .thread T_8;
    .scope S_0x19e2580;
T_9 ;
    %wait E_0x19b4f90;
    %load/vec4 v0x19a78f0_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x199d630_0, 0, 6;
    %load/vec4 v0x19a78f0_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x19a7cb0_0, 0, 6;
    %load/vec4 v0x19a78f0_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x19f98a0_0, 0, 5;
    %load/vec4 v0x19a78f0_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x1983020_0, 0, 5;
    %load/vec4 v0x19a78f0_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x1998f90_0, 0, 5;
    %load/vec4 v0x19a78f0_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x19830c0_0, 0, 6;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x19a7d70_0, 4, 16;
    %load/vec4 v0x19a78f0_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x19a7d70_0, 4, 16;
    %load/vec4 v0x19a78f0_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x19b04d0_0, 0, 26;
    %load/vec4 v0x199d630_0;
    %dup/vec4;
    %pushi/vec4 35, 0, 6;
    %cmp/u;
    %jmp/1 T_9.0, 6;
    %dup/vec4;
    %pushi/vec4 43, 0, 6;
    %cmp/u;
    %jmp/1 T_9.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 6;
    %cmp/u;
    %jmp/1 T_9.2, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 6;
    %cmp/u;
    %jmp/1 T_9.3, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 6;
    %cmp/u;
    %jmp/1 T_9.4, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 6;
    %cmp/u;
    %jmp/1 T_9.5, 6;
    %dup/vec4;
    %pushi/vec4 14, 0, 6;
    %cmp/u;
    %jmp/1 T_9.6, 6;
    %dup/vec4;
    %pushi/vec4 8, 0, 6;
    %cmp/u;
    %jmp/1 T_9.7, 6;
    %dup/vec4;
    %pushi/vec4 0, 0, 6;
    %cmp/u;
    %jmp/1 T_9.8, 6;
    %jmp T_9.9;
T_9.0 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.1 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.2 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.3 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.6 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.7 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.9;
T_9.8 ;
    %load/vec4 v0x19a7cb0_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_9.10, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.11;
T_9.10 ;
    %load/vec4 v0x19a7cb0_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_9.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.13;
T_9.12 ;
    %load/vec4 v0x19a7cb0_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_9.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
    %jmp T_9.15;
T_9.14 ;
    %load/vec4 v0x19a7cb0_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_9.16, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19fd130_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x19b4ae0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x199d570_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0890_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19abee0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x19fd1f0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x19b0950_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1998ed0_0, 0, 2;
T_9.16 ;
T_9.15 ;
T_9.13 ;
T_9.11 ;
    %jmp T_9.9;
T_9.9 ;
    %pop/vec4 1;
    %jmp T_9;
    .thread T_9, $push;
    .scope S_0x1a62710;
T_10 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x1a629c0;
T_11 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x1a62c50;
T_12 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x1a62f00;
T_13 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x1a63200;
T_14 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x1a634b0;
T_15 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x1a63760;
T_16 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x1a63a10;
T_17 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x1a63d00;
T_18 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x1a63fb0;
T_19 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x1a64260;
T_20 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x1a64510;
T_21 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x1a647c0;
T_22 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x1a64a70;
T_23 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x1a64d20;
T_24 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x1a64fd0;
T_25 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x1a65320;
T_26 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x1a655b0;
T_27 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x1a65860;
T_28 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x1a65b10;
T_29 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x1a65dc0;
T_30 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x1a66070;
T_31 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x1a66320;
T_32 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x1a665d0;
T_33 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x1a66880;
T_34 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x1a66b30;
T_35 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x1a66de0;
T_36 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x1a67090;
T_37 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x1a67340;
T_38 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_38.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_38.0 ;
    %jmp T_38;
    .thread T_38;
    .scope S_0x1a675f0;
T_39 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_39.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_39.0 ;
    %jmp T_39;
    .thread T_39;
    .scope S_0x1a678a0;
T_40 ;
    %wait E_0x1a5e520;
    %load/vec4 v0x1a6e620_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_40.0, 8;
    %load/vec4 v0x1a6e470_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1a6e770, 0, 4;
T_40.0 ;
    %jmp T_40;
    .thread T_40;
# The file index is used to find the file name in the following table.
:file_names 16;
    "N/A";
    "<interactive>";
    "./ALU/operations/add_sub.v";
    "./mux.v";
    "./register.v";
    "singlecycleCPU.v";
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
