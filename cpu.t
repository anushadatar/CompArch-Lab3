#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1a6fcd0 .scope module, "add_sub_last" "add_sub_last" 2 31;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "overflow"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
o0x7f3247f64018 .functor BUFZ 1, C4<z>; HiZ drive
o0x7f3247f64048 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1bafc90 .functor XOR 1, o0x7f3247f64018, o0x7f3247f64048, C4<0>, C4<0>;
o0x7f3247f64078 .functor BUFZ 1, C4<z>; HiZ drive
L_0x1bafd20 .functor XOR 1, L_0x1bafc90, o0x7f3247f64078, C4<0>, C4<0>;
L_0x1bafde0 .functor AND 1, L_0x1bafc90, o0x7f3247f64078, C4<1>, C4<1>;
L_0x1bafea0 .functor AND 1, o0x7f3247f64018, o0x7f3247f64048, C4<1>, C4<1>;
L_0x1baffb0 .functor OR 1, L_0x1bafde0, L_0x1bafea0, C4<0>, C4<0>;
L_0x1bb00c0 .functor XOR 1, L_0x1baffb0, o0x7f3247f64078, C4<0>, C4<0>;
v0x1a7a9f0_0 .net "A", 0 0, o0x7f3247f64018;  0 drivers
v0x1a93a30_0 .net "B", 0 0, o0x7f3247f64048;  0 drivers
v0x1a93af0_0 .net "carryin", 0 0, o0x7f3247f64078;  0 drivers
v0x1a86400_0 .net "carryout", 0 0, L_0x1baffb0;  1 drivers
v0x1a864c0_0 .net "out1", 0 0, L_0x1bafc90;  1 drivers
v0x1ad52d0_0 .net "out2", 0 0, L_0x1bafde0;  1 drivers
v0x1ac3d00_0 .net "out3", 0 0, L_0x1bafea0;  1 drivers
v0x1ac3dc0_0 .net "overflow", 0 0, L_0x1bb00c0;  1 drivers
v0x1ac3940_0 .net "sum", 0 0, L_0x1bafd20;  1 drivers
S_0x1ad5620 .scope module, "cpu_test" "cpu_test" 3 3;
 .timescale 0 0;
v0x1baebf0_0 .var "clk", 0 0;
v0x1baec90_0 .net "dataMem", 31 0, L_0x1bb0410;  1 drivers
v0x1baed30_0 .net "regRT", 31 0, L_0x1bc47b0;  1 drivers
S_0x1b2ec50 .scope module, "cpu" "singlecycleCPU" 3 9, 4 16 0, S_0x1ad5620;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /OUTPUT 32 "dataMem"
    .port_info 2 /OUTPUT 32 "regRT"
v0x1bacb30_0 .net "ALU_op", 2 0, v0x1ab6bf0_0;  1 drivers
v0x1bacc10_0 .net "DM_WE", 0 0, v0x1b20150_0;  1 drivers
v0x1baccd0_0 .net "DM_add", 0 0, v0x1b201f0_0;  1 drivers
v0x1bacd70_0 .net "JumpAddress", 25 0, v0x1b1fd90_0;  1 drivers
v0x1bace60_0 .net "PC", 31 0, v0x1b9d110_0;  1 drivers
v0x1bacf50_0 .net "S", 1 0, v0x1abb120_0;  1 drivers
L_0x7f3247f1bb58 .functor BUFT 1, C4<00000000000000000000000000000100>, C4<0>, C4<0>, C4<0>;
v0x1bad040_0 .net/2u *"_s10", 31 0, L_0x7f3247f1bb58;  1 drivers
v0x1bad100_0 .net *"_s4", 29 0, L_0x1bb0810;  1 drivers
L_0x7f3247f1b018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1bad1e0_0 .net *"_s6", 1 0, L_0x7f3247f1b018;  1 drivers
v0x1bad350_0 .net "alu2", 31 0, L_0x1becb60;  1 drivers
v0x1bad410_0 .net "alu_out", 31 0, L_0x1be9050;  1 drivers
v0x1bad520_0 .net "clk", 0 0, v0x1baebf0_0;  1 drivers
v0x1bad650_0 .net "co_flag", 0 0, L_0x1b81180;  1 drivers
v0x1bad780_0 .net "dataMem", 31 0, L_0x1bb0410;  alias, 1 drivers
v0x1bad840_0 .net "dest_add", 1 0, v0x1b1bbd0_0;  1 drivers
v0x1bad900_0 .net "funct", 5 0, v0x1b1b7a0_0;  1 drivers
v0x1bada10_0 .net "immediate", 31 0, v0x1b1b860_0;  1 drivers
v0x1badbc0_0 .net "instruction", 31 0, L_0x1bb05b0;  1 drivers
v0x1badc60_0 .net "op_imm", 0 0, v0x1b175b0_0;  1 drivers
v0x1badd50_0 .net "opcode", 5 0, v0x1b171b0_0;  1 drivers
v0x1bade60_0 .net "ov_flag", 0 0, L_0x1be8c00;  1 drivers
v0x1badf90_0 .net "pc", 1 0, v0x1b014e0_0;  1 drivers
v0x1bae050_0 .net "rd", 4 0, v0x1b015a0_0;  1 drivers
v0x1bae0f0_0 .net "regRS", 31 0, L_0x1bc2050;  1 drivers
v0x1bae240_0 .net "regRT", 31 0, L_0x1bc47b0;  alias, 1 drivers
v0x1bae390_0 .net "reg_WE", 0 0, v0x1b01120_0;  1 drivers
v0x1bae430_0 .net "reg_in", 1 0, v0x1b011c0_0;  1 drivers
v0x1bae4f0_0 .net "reg_in_mux_out", 31 0, L_0x1bec820;  1 drivers
v0x1bae5b0_0 .net "reg_select_mux_out", 4 0, L_0x1bec1f0;  1 drivers
v0x1bae670_0 .net "rs", 4 0, v0x1afcef0_0;  1 drivers
v0x1bae730_0 .net "rt", 4 0, v0x1afcb30_0;  1 drivers
v0x1bae880_0 .net "shamt", 5 0, v0x1ab6830_0;  1 drivers
v0x1bae940_0 .net "zero_flag", 0 0, L_0x1be8050;  1 drivers
L_0x1bb0670 .arith/sum 32, v0x1b1b860_0, L_0x1bc2050;
L_0x1bb0810 .part v0x1b9d110_0, 2, 30;
L_0x1bb08b0 .concat [ 30 2 0 0], L_0x1bb0810, L_0x7f3247f1b018;
L_0x1bec9b0 .arith/sum 32, v0x1b9d110_0, L_0x7f3247f1bb58;
S_0x1b2a5b0 .scope module, "controlPC" "pcController" 4 49, 5 8 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 6 "opcode"
    .port_info 2 /INPUT 6 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x1abb120_0 .var "controlSig", 1 0;
v0x1abad60_0 .net "function1", 5 0, v0x1b1b7a0_0;  alias, 1 drivers
v0x1b24740_0 .net "opcode", 5 0, v0x1b171b0_0;  alias, 1 drivers
v0x1b24380_0 .net "zeroFlag", 0 0, L_0x1be8050;  alias, 1 drivers
E_0x1aa5a60 .event edge, v0x1abad60_0, v0x1b24380_0, v0x1b24740_0;
S_0x1b146f0 .scope module, "decode" "instructionDecoder" 4 53, 6 20 0, S_0x1b2ec50;
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
v0x1ab6bf0_0 .var "ALU_op", 2 0;
v0x1b20150_0 .var "DM_WE", 0 0;
v0x1b201f0_0 .var "DM_add", 0 0;
v0x1b1fd90_0 .var "address", 25 0;
v0x1b1fe50_0 .net "clk", 0 0, v0x1baebf0_0;  alias, 1 drivers
v0x1b1bbd0_0 .var "dest_add", 1 0;
v0x1b1b7a0_0 .var "funct", 5 0;
v0x1b1b860_0 .var "immediate", 31 0;
v0x1ab6790_0 .net "instruction", 31 0, L_0x1bb05b0;  alias, 1 drivers
v0x1b175b0_0 .var "op_imm", 0 0;
v0x1b171b0_0 .var "opcode", 5 0;
v0x1b014e0_0 .var "pc", 1 0;
v0x1b015a0_0 .var "rd", 4 0;
v0x1b01120_0 .var "reg_WE", 0 0;
v0x1b011c0_0 .var "reg_in", 1 0;
v0x1afcef0_0 .var "rs", 4 0;
v0x1afcb30_0 .var "rt", 4 0;
v0x1ab6830_0 .var "shamt", 5 0;
E_0x1abb240 .event edge, v0x1ab6790_0;
S_0x1b10060 .scope module, "lulu" "ALU" 4 59, 7 105 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "result"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /OUTPUT 1 "zero"
    .port_info 3 /OUTPUT 1 "overflow"
    .port_info 4 /INPUT 32 "A"
    .port_info 5 /INPUT 32 "B"
    .port_info 6 /INPUT 3 "command"
L_0x1be8050/0/0 .functor OR 1, L_0x1bd77c0, L_0x1be92a0, L_0x1be9340, L_0x1be9430;
L_0x1be8050/0/4 .functor OR 1, L_0x1be9d00, L_0x1bd78b0, L_0x1be99c0, L_0x1be9ab0;
L_0x1be8050/0/8 .functor OR 1, L_0x1be9ba0, L_0x1bea210, L_0x1be9eb0, L_0x1be9fa0;
L_0x1be8050/0/12 .functor OR 1, L_0x1bea090, L_0x1be9da0, L_0x1bea2b0, L_0x1bea3a0;
L_0x1be8050/0/16 .functor OR 1, L_0x1bea490, L_0x1bea580, L_0x1beabf0, L_0x1beac90;
L_0x1be8050/0/20 .functor OR 1, L_0x1bea840, L_0x1bea930, L_0x1beaa20, L_0x1beab10;
L_0x1be8050/0/24 .functor OR 1, L_0x1bead80, L_0x1beae70, L_0x1beaf60, L_0x1beb050;
L_0x1be8050/0/28 .functor OR 1, L_0x1beb5a0, L_0x1bea630, L_0x1bea720, L_0x1beb1a0;
L_0x1be8050/0/32 .functor OR 1, L_0x1beb290, L_0x1beb380, C4<0>, C4<0>;
L_0x1be8050/1/0 .functor OR 1, L_0x1be8050/0/0, L_0x1be8050/0/4, L_0x1be8050/0/8, L_0x1be8050/0/12;
L_0x1be8050/1/4 .functor OR 1, L_0x1be8050/0/16, L_0x1be8050/0/20, L_0x1be8050/0/24, L_0x1be8050/0/28;
L_0x1be8050/1/8 .functor OR 1, L_0x1be8050/0/32, C4<0>, C4<0>, C4<0>;
L_0x1be8050 .functor NOR 1, L_0x1be8050/1/0, L_0x1be8050/1/4, L_0x1be8050/1/8, C4<0>;
v0x1b99100_0 .net "A", 31 0, L_0x1bc2050;  alias, 1 drivers
v0x1b99200_0 .net "B", 31 0, L_0x1becb60;  alias, 1 drivers
v0x1b992e0_0 .net *"_s322", 0 0, L_0x1bd77c0;  1 drivers
v0x1b993d0_0 .net *"_s324", 0 0, L_0x1be92a0;  1 drivers
v0x1b994b0_0 .net *"_s326", 0 0, L_0x1be9340;  1 drivers
v0x1b995e0_0 .net *"_s328", 0 0, L_0x1be9430;  1 drivers
v0x1b996c0_0 .net *"_s330", 0 0, L_0x1be9d00;  1 drivers
v0x1b997a0_0 .net *"_s332", 0 0, L_0x1bd78b0;  1 drivers
v0x1b99880_0 .net *"_s334", 0 0, L_0x1be99c0;  1 drivers
v0x1b999f0_0 .net *"_s336", 0 0, L_0x1be9ab0;  1 drivers
v0x1b99ad0_0 .net *"_s338", 0 0, L_0x1be9ba0;  1 drivers
v0x1b99bb0_0 .net *"_s340", 0 0, L_0x1bea210;  1 drivers
v0x1b99c90_0 .net *"_s342", 0 0, L_0x1be9eb0;  1 drivers
v0x1b99d70_0 .net *"_s344", 0 0, L_0x1be9fa0;  1 drivers
v0x1b99e50_0 .net *"_s346", 0 0, L_0x1bea090;  1 drivers
v0x1b99f30_0 .net *"_s348", 0 0, L_0x1be9da0;  1 drivers
v0x1b9a010_0 .net *"_s350", 0 0, L_0x1bea2b0;  1 drivers
v0x1b9a1c0_0 .net *"_s352", 0 0, L_0x1bea3a0;  1 drivers
v0x1b9a260_0 .net *"_s354", 0 0, L_0x1bea490;  1 drivers
v0x1b9a340_0 .net *"_s356", 0 0, L_0x1bea580;  1 drivers
v0x1b9a420_0 .net *"_s358", 0 0, L_0x1beabf0;  1 drivers
v0x1b9a500_0 .net *"_s360", 0 0, L_0x1beac90;  1 drivers
v0x1b9a5e0_0 .net *"_s362", 0 0, L_0x1bea840;  1 drivers
v0x1b9a6c0_0 .net *"_s364", 0 0, L_0x1bea930;  1 drivers
v0x1b9a7a0_0 .net *"_s366", 0 0, L_0x1beaa20;  1 drivers
v0x1b9a880_0 .net *"_s368", 0 0, L_0x1beab10;  1 drivers
v0x1b9a960_0 .net *"_s370", 0 0, L_0x1bead80;  1 drivers
v0x1b9aa40_0 .net *"_s372", 0 0, L_0x1beae70;  1 drivers
v0x1b9ab20_0 .net *"_s374", 0 0, L_0x1beaf60;  1 drivers
v0x1b9ac00_0 .net *"_s376", 0 0, L_0x1beb050;  1 drivers
v0x1b9ace0_0 .net *"_s378", 0 0, L_0x1beb5a0;  1 drivers
v0x1b9adc0_0 .net *"_s380", 0 0, L_0x1bea630;  1 drivers
v0x1b9aea0_0 .net *"_s382", 0 0, L_0x1bea720;  1 drivers
v0x1b9a0f0_0 .net *"_s384", 0 0, L_0x1beb1a0;  1 drivers
v0x1b9b170_0 .net *"_s386", 0 0, L_0x1beb290;  1 drivers
v0x1b9b250_0 .net *"_s388", 0 0, L_0x1beb380;  1 drivers
v0x1b9b330_0 .net "carryout", 0 0, L_0x1b81180;  alias, 1 drivers
v0x1b9b3d0_0 .net "command", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b9b490_0 .net "cout", 30 0, L_0x1be7cc0;  1 drivers
v0x1b9b570_0 .net "overflow", 0 0, L_0x1be8c00;  alias, 1 drivers
v0x1b9b610_0 .net "result", 31 0, L_0x1be9050;  alias, 1 drivers
v0x1b9b6f0_0 .net "zero", 0 0, L_0x1be8050;  alias, 1 drivers
L_0x1bc5270 .part L_0x1bc2050, 0, 1;
L_0x1bc5310 .part L_0x1becb60, 0, 1;
L_0x1bc53b0 .part v0x1ab6bf0_0, 0, 1;
L_0x1bc61a0 .part L_0x1bc2050, 1, 1;
L_0x1bc6350 .part L_0x1becb60, 1, 1;
L_0x1bc63f0 .part L_0x1be7cc0, 0, 1;
L_0x1bc74c0 .part L_0x1bc2050, 2, 1;
L_0x1bc7560 .part L_0x1becb60, 2, 1;
L_0x1bc7600 .part L_0x1be7cc0, 1, 1;
L_0x1bc8720 .part L_0x1bc2050, 3, 1;
L_0x1bc87c0 .part L_0x1becb60, 3, 1;
L_0x1bc8860 .part L_0x1be7cc0, 2, 1;
L_0x1bc97a0 .part L_0x1bc2050, 4, 1;
L_0x1bc9840 .part L_0x1becb60, 4, 1;
L_0x1bc9960 .part L_0x1be7cc0, 3, 1;
L_0x1bca900 .part L_0x1bc2050, 5, 1;
L_0x1bcaa30 .part L_0x1becb60, 5, 1;
L_0x1bcabe0 .part L_0x1be7cc0, 4, 1;
L_0x1bcbb50 .part L_0x1bc2050, 6, 1;
L_0x1bcbbf0 .part L_0x1becb60, 6, 1;
L_0x1bcac80 .part L_0x1be7cc0, 5, 1;
L_0x1bccd70 .part L_0x1bc2050, 7, 1;
L_0x1bcbc90 .part L_0x1becb60, 7, 1;
L_0x1bcced0 .part L_0x1be7cc0, 6, 1;
L_0x1bcdfc0 .part L_0x1bc2050, 8, 1;
L_0x1bce060 .part L_0x1becb60, 8, 1;
L_0x1bcd000 .part L_0x1be7cc0, 7, 1;
L_0x1bcf270 .part L_0x1bc2050, 9, 1;
L_0x1bce100 .part L_0x1becb60, 9, 1;
L_0x1bcf520 .part L_0x1be7cc0, 8, 1;
L_0x1bd06c0 .part L_0x1bc2050, 10, 1;
L_0x1bd0760 .part L_0x1becb60, 10, 1;
L_0x1bd0800 .part L_0x1be7cc0, 9, 1;
L_0x1bd1840 .part L_0x1bc2050, 11, 1;
L_0x1bc6240 .part L_0x1becb60, 11, 1;
L_0x1bd1a00 .part L_0x1be7cc0, 10, 1;
L_0x1bd2ab0 .part L_0x1bc2050, 12, 1;
L_0x1bd2b50 .part L_0x1becb60, 12, 1;
L_0x1bd1b30 .part L_0x1be7cc0, 11, 1;
L_0x1bd3cf0 .part L_0x1bc2050, 13, 1;
L_0x1bd2bf0 .part L_0x1becb60, 13, 1;
L_0x1bd2c90 .part L_0x1be7cc0, 12, 1;
L_0x1bd5050 .part L_0x1bc2050, 14, 1;
L_0x1bd50f0 .part L_0x1becb60, 14, 1;
L_0x1bd40f0 .part L_0x1be7cc0, 13, 1;
L_0x1bd62a0 .part L_0x1bc2050, 15, 1;
L_0x1bd5190 .part L_0x1becb60, 15, 1;
L_0x1bd5230 .part L_0x1be7cc0, 14, 1;
L_0x1bd74e0 .part L_0x1bc2050, 16, 1;
L_0x1bd7580 .part L_0x1becb60, 16, 1;
L_0x1bd6550 .part L_0x1be7cc0, 15, 1;
L_0x1bd8800 .part L_0x1bc2050, 17, 1;
L_0x1bd7620 .part L_0x1becb60, 17, 1;
L_0x1bd76c0 .part L_0x1be7cc0, 16, 1;
L_0x1bd9a60 .part L_0x1bc2050, 18, 1;
L_0x1bd9b00 .part L_0x1becb60, 18, 1;
L_0x1bd8ae0 .part L_0x1be7cc0, 17, 1;
L_0x1bdac80 .part L_0x1bc2050, 19, 1;
L_0x1bd9ba0 .part L_0x1becb60, 19, 1;
L_0x1bd9c40 .part L_0x1be7cc0, 18, 1;
L_0x1bdbeb0 .part L_0x1bc2050, 20, 1;
L_0x1bdbf50 .part L_0x1becb60, 20, 1;
L_0x1bdad20 .part L_0x1be7cc0, 19, 1;
L_0x1bdd0e0 .part L_0x1bc2050, 21, 1;
L_0x1bdbff0 .part L_0x1becb60, 21, 1;
L_0x1bdc090 .part L_0x1be7cc0, 20, 1;
L_0x1bde320 .part L_0x1bc2050, 22, 1;
L_0x1bde3c0 .part L_0x1becb60, 22, 1;
L_0x1bdd180 .part L_0x1be7cc0, 21, 1;
L_0x1bdf550 .part L_0x1bc2050, 23, 1;
L_0x1bde460 .part L_0x1becb60, 23, 1;
L_0x1bde500 .part L_0x1be7cc0, 22, 1;
L_0x1be0780 .part L_0x1bc2050, 24, 1;
L_0x1be0820 .part L_0x1becb60, 24, 1;
L_0x1bdf5f0 .part L_0x1be7cc0, 23, 1;
L_0x1be19b0 .part L_0x1bc2050, 25, 1;
L_0x1bcf310 .part L_0x1becb60, 25, 1;
L_0x1bcf3b0 .part L_0x1be7cc0, 24, 1;
L_0x1bd05b0 .part L_0x1bc2050, 26, 1;
L_0x1be2e00 .part L_0x1becb60, 26, 1;
L_0x1be1e60 .part L_0x1be7cc0, 25, 1;
L_0x1be3e70 .part L_0x1bc2050, 27, 1;
L_0x1be2ea0 .part L_0x1becb60, 27, 1;
L_0x1be2f40 .part L_0x1be7cc0, 26, 1;
L_0x1be4fa0 .part L_0x1bc2050, 28, 1;
L_0x1be5040 .part L_0x1becb60, 28, 1;
L_0x1be3f10 .part L_0x1be7cc0, 27, 1;
L_0x1be60c0 .part L_0x1bc2050, 29, 1;
L_0x1be50e0 .part L_0x1becb60, 29, 1;
L_0x1bd3ee0 .part L_0x1be7cc0, 28, 1;
LS_0x1be7cc0_0_0 .concat8 [ 1 1 1 1], L_0x1ae9bc0, L_0x1a9a8a0, L_0x1b52000, L_0x1b79dd0;
LS_0x1be7cc0_0_4 .concat8 [ 1 1 1 1], L_0x1b855a0, L_0x1b88f70, L_0x1b8c940, L_0x1b90310;
LS_0x1be7cc0_0_8 .concat8 [ 1 1 1 1], L_0x1b93ce0, L_0x1b976b0, L_0x1aa7550, L_0x1afd7a0;
LS_0x1be7cc0_0_12 .concat8 [ 1 1 1 1], L_0x1ad2d70, L_0x1a8e680, L_0x1accd80, L_0x1aef6d0;
LS_0x1be7cc0_0_16 .concat8 [ 1 1 1 1], L_0x1965620, L_0x19681e0, L_0x1b4aca0, L_0x1b4e630;
LS_0x1be7cc0_0_20 .concat8 [ 1 1 1 1], L_0x1b559d0, L_0x1b593a0, L_0x1b5cd70, L_0x1b60920;
LS_0x1be7cc0_0_24 .concat8 [ 1 1 1 1], L_0x1b642f0, L_0x1b67cc0, L_0x1b6b690, L_0x1b6f060;
LS_0x1be7cc0_0_28 .concat8 [ 1 1 1 0], L_0x1b72a30, L_0x1b76400, L_0x1b7d7a0;
LS_0x1be7cc0_1_0 .concat8 [ 4 4 4 4], LS_0x1be7cc0_0_0, LS_0x1be7cc0_0_4, LS_0x1be7cc0_0_8, LS_0x1be7cc0_0_12;
LS_0x1be7cc0_1_4 .concat8 [ 4 4 4 3], LS_0x1be7cc0_0_16, LS_0x1be7cc0_0_20, LS_0x1be7cc0_0_24, LS_0x1be7cc0_0_28;
L_0x1be7cc0 .concat8 [ 16 15 0 0], LS_0x1be7cc0_1_0, LS_0x1be7cc0_1_4;
L_0x1be7e70 .part L_0x1bc2050, 30, 1;
L_0x1be6840 .part L_0x1becb60, 30, 1;
L_0x1be68e0 .part L_0x1be7cc0, 29, 1;
LS_0x1be9050_0_0 .concat8 [ 1 1 1 1], L_0x1bc4f60, L_0x1bc5d00, L_0x1bc6e00, L_0x1bc80f0;
LS_0x1be9050_0_4 .concat8 [ 1 1 1 1], L_0x1bc9220, L_0x1bca330, L_0x1bcb580, L_0x1bcc740;
LS_0x1be9050_0_8 .concat8 [ 1 1 1 1], L_0x1bcd990, L_0x1bcec40, L_0x1bcff80, L_0x1bd1210;
LS_0x1be9050_0_12 .concat8 [ 1 1 1 1], L_0x1bd2480, L_0x1bd36c0, L_0x1bd4a20, L_0x1bd5c70;
LS_0x1be9050_0_16 .concat8 [ 1 1 1 1], L_0x1bd6eb0, L_0x1bd81d0, L_0x1bd9430, L_0x1bda650;
LS_0x1be9050_0_20 .concat8 [ 1 1 1 1], L_0x1bdb880, L_0x1bdcab0, L_0x1bddcf0, L_0x1bdef20;
LS_0x1be9050_0_24 .concat8 [ 1 1 1 1], L_0x1be0150, L_0x1be1380, L_0x1be2620, L_0x1be38a0;
LS_0x1be9050_0_28 .concat8 [ 1 1 1 1], L_0x1be49d0, L_0x1be5af0, L_0x1b988e0, L_0x1be8ac0;
LS_0x1be9050_1_0 .concat8 [ 4 4 4 4], LS_0x1be9050_0_0, LS_0x1be9050_0_4, LS_0x1be9050_0_8, LS_0x1be9050_0_12;
LS_0x1be9050_1_4 .concat8 [ 4 4 4 4], LS_0x1be9050_0_16, LS_0x1be9050_0_20, LS_0x1be9050_0_24, LS_0x1be9050_0_28;
L_0x1be9050 .concat8 [ 16 16 0 0], LS_0x1be9050_1_0, LS_0x1be9050_1_4;
L_0x1be9200 .part L_0x1bc2050, 31, 1;
L_0x1be7f10 .part L_0x1becb60, 31, 1;
L_0x1be7fb0 .part L_0x1be7cc0, 30, 1;
L_0x1bd77c0 .part L_0x1be9050, 0, 1;
L_0x1be92a0 .part L_0x1be9050, 1, 1;
L_0x1be9340 .part L_0x1be9050, 2, 1;
L_0x1be9430 .part L_0x1be9050, 3, 1;
L_0x1be9d00 .part L_0x1be9050, 4, 1;
L_0x1bd78b0 .part L_0x1be9050, 5, 1;
L_0x1be99c0 .part L_0x1be9050, 6, 1;
L_0x1be9ab0 .part L_0x1be9050, 7, 1;
L_0x1be9ba0 .part L_0x1be9050, 8, 1;
L_0x1bea210 .part L_0x1be9050, 9, 1;
L_0x1be9eb0 .part L_0x1be9050, 10, 1;
L_0x1be9fa0 .part L_0x1be9050, 11, 1;
L_0x1bea090 .part L_0x1be9050, 12, 1;
L_0x1be9da0 .part L_0x1be9050, 13, 1;
L_0x1bea2b0 .part L_0x1be9050, 14, 1;
L_0x1bea3a0 .part L_0x1be9050, 15, 1;
L_0x1bea490 .part L_0x1be9050, 16, 1;
L_0x1bea580 .part L_0x1be9050, 17, 1;
L_0x1beabf0 .part L_0x1be9050, 18, 1;
L_0x1beac90 .part L_0x1be9050, 19, 1;
L_0x1bea840 .part L_0x1be9050, 20, 1;
L_0x1bea930 .part L_0x1be9050, 21, 1;
L_0x1beaa20 .part L_0x1be9050, 22, 1;
L_0x1beab10 .part L_0x1be9050, 23, 1;
L_0x1bead80 .part L_0x1be9050, 24, 1;
L_0x1beae70 .part L_0x1be9050, 25, 1;
L_0x1beaf60 .part L_0x1be9050, 26, 1;
L_0x1beb050 .part L_0x1be9050, 27, 1;
L_0x1beb5a0 .part L_0x1be9050, 28, 1;
L_0x1bea630 .part L_0x1be9050, 29, 1;
L_0x1bea720 .part L_0x1be9050, 28, 1;
L_0x1beb1a0 .part L_0x1be9050, 29, 1;
L_0x1beb290 .part L_0x1be9050, 30, 1;
L_0x1beb380 .part L_0x1be9050, 31, 1;
S_0x1b0b9c0 .scope module, "alu0" "ALU_1bit" 7 118, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bc5000 .functor BUFZ 1, L_0x1bc4a30, C4<0>, C4<0>, C4<0>;
L_0x1bc50b0 .functor BUFZ 1, L_0x1bc4a30, C4<0>, C4<0>, C4<0>;
v0x1aa1750_0 .net "A", 0 0, L_0x1bc5270;  1 drivers
v0x1aa17f0_0 .net "B", 0 0, L_0x1bc5310;  1 drivers
v0x1aa1280_0 .net "I", 7 0, L_0x1bc51d0;  1 drivers
v0x1aa1320_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1aa0e00_0 .net *"_s15", 0 0, L_0x1bc5000;  1 drivers
v0x1aa08e0_0 .net *"_s19", 0 0, L_0x1bc50b0;  1 drivers
L_0x7f3247f1b1c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a99560_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b1c8;  1 drivers
v0x1aa0410_0 .net "addORsub", 0 0, L_0x1bc4a30;  1 drivers
v0x1aa04b0_0 .net "carryin", 0 0, L_0x1bc53b0;  1 drivers
v0x1a9ff40_0 .net "carryout", 0 0, L_0x1ae9bc0;  1 drivers
v0x1a9ffe0_0 .net "modB", 0 0, L_0x1bc4820;  1 drivers
v0x1a9fa70_0 .net "out", 0 0, L_0x1bc4f60;  1 drivers
L_0x1bc4890 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bc51d0_0_0 .concat8 [ 1 1 1 1], L_0x1bc5000, L_0x1bc50b0, L_0x1bc4c90, L_0x7f3247f1b1c8;
LS_0x1bc51d0_0_4 .concat8 [ 1 1 1 1], L_0x1aac330, L_0x1bc4e10, L_0x1bc4e80, L_0x1bc4ef0;
L_0x1bc51d0 .concat8 [ 4 4 0 0], LS_0x1bc51d0_0_0, LS_0x1bc51d0_0_4;
S_0x1ab3cc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bc4930 .functor XOR 1, L_0x1bc5270, L_0x1bc4820, C4<0>, C4<0>;
L_0x1bc4a30 .functor XOR 1, L_0x1bc4930, L_0x1bc53b0, C4<0>, C4<0>;
L_0x1bc4aa0 .functor AND 1, L_0x1bc4930, L_0x1bc53b0, C4<1>, C4<1>;
L_0x1bc4b10 .functor AND 1, L_0x1bc5270, L_0x1bc4820, C4<1>, C4<1>;
L_0x1ae9bc0 .functor OR 1, L_0x1bc4aa0, L_0x1bc4b10, C4<0>, C4<0>;
v0x1ade3c0_0 .net "A", 0 0, L_0x1bc5270;  alias, 1 drivers
v0x1addf80_0 .net "B", 0 0, L_0x1bc4820;  alias, 1 drivers
v0x1ade040_0 .net "carryin", 0 0, L_0x1bc53b0;  alias, 1 drivers
v0x1ad9d50_0 .net "carryout", 0 0, L_0x1ae9bc0;  alias, 1 drivers
v0x1ad9e10_0 .net "out1", 0 0, L_0x1bc4930;  1 drivers
v0x1ad9a00_0 .net "out2", 0 0, L_0x1bc4aa0;  1 drivers
v0x1ad3d20_0 .net "out3", 0 0, L_0x1bc4b10;  1 drivers
v0x1ad3de0_0 .net "sum", 0 0, L_0x1bc4a30;  alias, 1 drivers
S_0x1af1430 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aac330 .functor AND 1, L_0x1bc5270, L_0x1bc5310, C4<1>, C4<1>;
v0x1acb000_0 .net "A", 0 0, L_0x1bc5270;  alias, 1 drivers
v0x1acb0c0_0 .net "B", 0 0, L_0x1bc5310;  alias, 1 drivers
v0x1ac6960_0 .net "out", 0 0, L_0x1aac330;  1 drivers
S_0x1aecda0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b300e0_0 .net "I", 7 0, L_0x1bc51d0;  alias, 1 drivers
v0x1b2ba40_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b273a0_0 .net "out", 0 0, L_0x1bc4f60;  alias, 1 drivers
L_0x1bc4f60 .part/v L_0x1bc51d0, v0x1ab6bf0_0, 1;
S_0x1ae8710 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc4e10 .functor NAND 1, L_0x1bc5270, L_0x1bc5310, C4<1>, C4<1>;
v0x1b114f0_0 .net "A", 0 0, L_0x1bc5270;  alias, 1 drivers
v0x1b0ce50_0 .net "B", 0 0, L_0x1bc5310;  alias, 1 drivers
v0x1b0cf10_0 .net "out", 0 0, L_0x1bc4e10;  1 drivers
S_0x1ae4f30 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc4e80 .functor NOR 1, L_0x1bc5270, L_0x1bc5310, C4<0>, C4<0>;
v0x1b08800_0 .net "A", 0 0, L_0x1bc5270;  alias, 1 drivers
v0x1af28c0_0 .net "B", 0 0, L_0x1bc5310;  alias, 1 drivers
v0x1af2980_0 .net "out", 0 0, L_0x1bc4e80;  1 drivers
S_0x1ad6030 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc4ef0 .functor OR 1, L_0x1bc5270, L_0x1bc5310, C4<0>, C4<0>;
v0x1aee2f0_0 .net "A", 0 0, L_0x1bc5270;  alias, 1 drivers
v0x1ae9c50_0 .net "B", 0 0, L_0x1bc5310;  alias, 1 drivers
v0x1ab0ad0_0 .net "out", 0 0, L_0x1bc4ef0;  1 drivers
S_0x1aaf620 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc4820 .functor XOR 1, L_0x1bc5310, L_0x1bc4890, C4<0>, C4<0>;
v0x1aaa040_0 .net "A", 0 0, L_0x1bc5310;  alias, 1 drivers
v0x1aac3c0_0 .net "B", 0 0, L_0x1bc4890;  1 drivers
v0x192a180_0 .net "out", 0 0, L_0x1bc4820;  alias, 1 drivers
S_0x1ac59b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b0b9c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc4c90 .functor XOR 1, L_0x1bc5270, L_0x1bc5310, C4<0>, C4<0>;
v0x1aa20f0_0 .net "A", 0 0, L_0x1bc5270;  alias, 1 drivers
v0x1aa21b0_0 .net "B", 0 0, L_0x1bc5310;  alias, 1 drivers
v0x1aa1c20_0 .net "out", 0 0, L_0x1bc4c90;  1 drivers
S_0x1b32e60 .scope module, "alu1" "ALU_1bit" 7 119, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bc5dc0 .functor BUFZ 1, L_0x1bc5750, C4<0>, C4<0>, C4<0>;
L_0x1bc5e50 .functor BUFZ 1, L_0x1bc5750, C4<0>, C4<0>, C4<0>;
v0x1abef00_0 .net "A", 0 0, L_0x1bc61a0;  1 drivers
v0x1aba8d0_0 .net "B", 0 0, L_0x1bc6350;  1 drivers
v0x1aba990_0 .net "I", 7 0, L_0x1bc5f70;  1 drivers
v0x1b23ef0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b1f900_0 .net *"_s15", 0 0, L_0x1bc5dc0;  1 drivers
v0x1b1f9c0_0 .net *"_s19", 0 0, L_0x1bc5e50;  1 drivers
L_0x7f3247f1b210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b1b310_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b210;  1 drivers
v0x1b1b3d0_0 .net "addORsub", 0 0, L_0x1bc5750;  1 drivers
v0x1b16d20_0 .net "carryin", 0 0, L_0x1bc63f0;  1 drivers
v0x1ab62e0_0 .net "carryout", 0 0, L_0x1a9a8a0;  1 drivers
v0x1ab63b0_0 .net "modB", 0 0, L_0x1bc54e0;  1 drivers
v0x1b00c90_0 .net "out", 0 0, L_0x1bc5d00;  1 drivers
L_0x1bc5550 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bc5f70_0_0 .concat8 [ 1 1 1 1], L_0x1bc5dc0, L_0x1bc5e50, L_0x1bc59f0, L_0x7f3247f1b210;
LS_0x1bc5f70_0_4 .concat8 [ 1 1 1 1], L_0x1a98ca0, L_0x1bc5b70, L_0x1bc5be0, L_0x1bc5c70;
L_0x1bc5f70 .concat8 [ 4 4 0 0], LS_0x1bc5f70_0_0, LS_0x1bc5f70_0_4;
S_0x1ac1390 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bc5610 .functor XOR 1, L_0x1bc61a0, L_0x1bc54e0, C4<0>, C4<0>;
L_0x1bc5750 .functor XOR 1, L_0x1bc5610, L_0x1bc63f0, C4<0>, C4<0>;
L_0x1bc57e0 .functor AND 1, L_0x1bc5610, L_0x1bc63f0, C4<1>, C4<1>;
L_0x1bc5870 .functor AND 1, L_0x1bc61a0, L_0x1bc54e0, C4<1>, C4<1>;
L_0x1a9a8a0 .functor OR 1, L_0x1bc57e0, L_0x1bc5870, C4<0>, C4<0>;
v0x1a9f0d0_0 .net "A", 0 0, L_0x1bc61a0;  alias, 1 drivers
v0x1a9ec00_0 .net "B", 0 0, L_0x1bc54e0;  alias, 1 drivers
v0x1a9ecc0_0 .net "carryin", 0 0, L_0x1bc63f0;  alias, 1 drivers
v0x1a9e730_0 .net "carryout", 0 0, L_0x1a9a8a0;  alias, 1 drivers
v0x1a9e7f0_0 .net "out1", 0 0, L_0x1bc5610;  1 drivers
v0x1a9e260_0 .net "out2", 0 0, L_0x1bc57e0;  1 drivers
v0x1a9e320_0 .net "out3", 0 0, L_0x1bc5870;  1 drivers
v0x1a9dd90_0 .net "sum", 0 0, L_0x1bc5750;  alias, 1 drivers
S_0x1abcda0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a98ca0 .functor AND 1, L_0x1bc61a0, L_0x1bc6350, C4<1>, C4<1>;
v0x1a9d910_0 .net "A", 0 0, L_0x1bc61a0;  alias, 1 drivers
v0x1a99090_0 .net "B", 0 0, L_0x1bc6350;  alias, 1 drivers
v0x1a99130_0 .net "out", 0 0, L_0x1a98ca0;  1 drivers
S_0x1ab87b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a9d4c0_0 .net "I", 7 0, L_0x1bc5f70;  alias, 1 drivers
v0x1a9cf60_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1a9ca50_0 .net "out", 0 0, L_0x1bc5d00;  alias, 1 drivers
L_0x1bc5d00 .part/v L_0x1bc5f70, v0x1ab6bf0_0, 1;
S_0x1b21dd0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc5b70 .functor NAND 1, L_0x1bc61a0, L_0x1bc6350, C4<1>, C4<1>;
v0x1a9c580_0 .net "A", 0 0, L_0x1bc61a0;  alias, 1 drivers
v0x1a9c0b0_0 .net "B", 0 0, L_0x1bc6350;  alias, 1 drivers
v0x1a9c170_0 .net "out", 0 0, L_0x1bc5b70;  1 drivers
S_0x1b1d7e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc5be0 .functor NOR 1, L_0x1bc61a0, L_0x1bc6350, C4<0>, C4<0>;
v0x1a9b710_0 .net "A", 0 0, L_0x1bc61a0;  alias, 1 drivers
v0x1a9b7d0_0 .net "B", 0 0, L_0x1bc6350;  alias, 1 drivers
v0x1a9b240_0 .net "out", 0 0, L_0x1bc5be0;  1 drivers
S_0x1b191f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc5c70 .functor OR 1, L_0x1bc61a0, L_0x1bc6350, C4<0>, C4<0>;
v0x1a9adc0_0 .net "A", 0 0, L_0x1bc61a0;  alias, 1 drivers
v0x1a9a930_0 .net "B", 0 0, L_0x1bc6350;  alias, 1 drivers
v0x1a98bc0_0 .net "out", 0 0, L_0x1bc5c70;  1 drivers
S_0x1b03160 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc54e0 .functor XOR 1, L_0x1bc6350, L_0x1bc5550, C4<0>, C4<0>;
v0x1a9a3d0_0 .net "A", 0 0, L_0x1bc6350;  alias, 1 drivers
v0x1a9a490_0 .net "B", 0 0, L_0x1bc5550;  1 drivers
v0x1a99f00_0 .net "out", 0 0, L_0x1bc54e0;  alias, 1 drivers
S_0x1ab46a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b32e60;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc59f0 .functor XOR 1, L_0x1bc61a0, L_0x1bc6350, C4<0>, C4<0>;
v0x1a99ad0_0 .net "A", 0 0, L_0x1bc61a0;  alias, 1 drivers
v0x1ac34b0_0 .net "B", 0 0, L_0x1bc6350;  alias, 1 drivers
v0x1ac3570_0 .net "out", 0 0, L_0x1bc59f0;  1 drivers
S_0x1afeb70 .scope module, "alu10" "ALU_1bit" 7 128, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd00e0 .functor BUFZ 1, L_0x1bcf860, C4<0>, C4<0>, C4<0>;
L_0x1bd0170 .functor BUFZ 1, L_0x1bcf860, C4<0>, C4<0>, C4<0>;
v0x1aa5b50_0 .net "A", 0 0, L_0x1bd06c0;  1 drivers
v0x1aa5bf0_0 .net "B", 0 0, L_0x1bd0760;  1 drivers
v0x1aa5820_0 .net "I", 7 0, L_0x1bd0290;  1 drivers
v0x1aa58f0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1aa54f0_0 .net *"_s15", 0 0, L_0x1bd00e0;  1 drivers
v0x1aa55e0_0 .net *"_s19", 0 0, L_0x1bd0170;  1 drivers
L_0x7f3247f1b498 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1aa51c0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b498;  1 drivers
v0x1aa52a0_0 .net "addORsub", 0 0, L_0x1bcf860;  1 drivers
v0x1aa4e90_0 .net "carryin", 0 0, L_0x1bd0800;  1 drivers
v0x1aa4b60_0 .net "carryout", 0 0, L_0x1aa7550;  1 drivers
v0x1aa4c30_0 .net "modB", 0 0, L_0x1bcf650;  1 drivers
v0x1aa4830_0 .net "out", 0 0, L_0x1bcff80;  1 drivers
L_0x1bcf6c0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd0290_0_0 .concat8 [ 1 1 1 1], L_0x1bd00e0, L_0x1bd0170, L_0x1bcfc70, L_0x7f3247f1b498;
LS_0x1bd0290_0_4 .concat8 [ 1 1 1 1], L_0x1aa6c80, L_0x1bcfdf0, L_0x1bcfe60, L_0x1bcfef0;
L_0x1bd0290 .concat8 [ 4 4 0 0], LS_0x1bd0290_0_0, LS_0x1bd0290_0_4;
S_0x1afa580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bcf760 .functor XOR 1, L_0x1bd06c0, L_0x1bcf650, C4<0>, C4<0>;
L_0x1bcf860 .functor XOR 1, L_0x1bcf760, L_0x1bd0800, C4<0>, C4<0>;
L_0x1bcf970 .functor AND 1, L_0x1bcf760, L_0x1bd0800, C4<1>, C4<1>;
L_0x1bcfa00 .functor AND 1, L_0x1bd06c0, L_0x1bcf650, C4<1>, C4<1>;
L_0x1aa7550 .functor OR 1, L_0x1bcf970, L_0x1bcfa00, C4<0>, C4<0>;
v0x1af8130_0 .net "A", 0 0, L_0x1bd06c0;  alias, 1 drivers
v0x1ae20e0_0 .net "B", 0 0, L_0x1bcf650;  alias, 1 drivers
v0x1ae21a0_0 .net "carryin", 0 0, L_0x1bd0800;  alias, 1 drivers
v0x1addaf0_0 .net "carryout", 0 0, L_0x1aa7550;  alias, 1 drivers
v0x1addbb0_0 .net "out1", 0 0, L_0x1bcf760;  1 drivers
v0x1ad9570_0 .net "out2", 0 0, L_0x1bcf970;  1 drivers
v0x1af5fa0_0 .net "out3", 0 0, L_0x1bcfa00;  1 drivers
v0x1af6060_0 .net "sum", 0 0, L_0x1bcf860;  alias, 1 drivers
S_0x1adffc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aa6c80 .functor AND 1, L_0x1bd06c0, L_0x1bd0760, C4<1>, C4<1>;
v0x1adb9d0_0 .net "A", 0 0, L_0x1bd06c0;  alias, 1 drivers
v0x1adba90_0 .net "B", 0 0, L_0x1bd0760;  alias, 1 drivers
v0x1ad73e0_0 .net "out", 0 0, L_0x1aa6c80;  1 drivers
S_0x1a92f90 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1aa99b0_0 .net "I", 7 0, L_0x1bd0290;  alias, 1 drivers
v0x1aa9630_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1aa96f0_0 .net "out", 0 0, L_0x1bcff80;  alias, 1 drivers
L_0x1bcff80 .part/v L_0x1bd0290, v0x1ab6bf0_0, 1;
S_0x1aa9200 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcfdf0 .functor NAND 1, L_0x1bd06c0, L_0x1bd0760, C4<1>, C4<1>;
v0x1aa8f70_0 .net "A", 0 0, L_0x1bd06c0;  alias, 1 drivers
v0x1aa8bf0_0 .net "B", 0 0, L_0x1bd0760;  alias, 1 drivers
v0x1aa8870_0 .net "out", 0 0, L_0x1bcfdf0;  1 drivers
S_0x1aa8540 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcfe60 .functor NOR 1, L_0x1bd06c0, L_0x1bd0760, C4<0>, C4<0>;
v0x1aa8210_0 .net "A", 0 0, L_0x1bd06c0;  alias, 1 drivers
v0x1aa82d0_0 .net "B", 0 0, L_0x1bd0760;  alias, 1 drivers
v0x1aa7f30_0 .net "out", 0 0, L_0x1bcfe60;  1 drivers
S_0x1aa7bb0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcfef0 .functor OR 1, L_0x1bd06c0, L_0x1bd0760, C4<0>, C4<0>;
v0x1aa7920_0 .net "A", 0 0, L_0x1bd06c0;  alias, 1 drivers
v0x1aa75e0_0 .net "B", 0 0, L_0x1bd0760;  alias, 1 drivers
v0x1aa7220_0 .net "out", 0 0, L_0x1bcfef0;  1 drivers
S_0x1aa6ef0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcf650 .functor XOR 1, L_0x1bd0760, L_0x1bcf6c0, C4<0>, C4<0>;
v0x1aa6bc0_0 .net "A", 0 0, L_0x1bd0760;  alias, 1 drivers
v0x1aa6890_0 .net "B", 0 0, L_0x1bcf6c0;  1 drivers
v0x1aa6950_0 .net "out", 0 0, L_0x1bcf650;  alias, 1 drivers
S_0x1a92890 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1afeb70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcfc70 .functor XOR 1, L_0x1bd06c0, L_0x1bd0760, C4<0>, C4<0>;
v0x1aa65b0_0 .net "A", 0 0, L_0x1bd06c0;  alias, 1 drivers
v0x1aa6650_0 .net "B", 0 0, L_0x1bd0760;  alias, 1 drivers
v0x1aa6230_0 .net "out", 0 0, L_0x1bcfc70;  1 drivers
S_0x1a92530 .scope module, "alu11" "ALU_1bit" 7 129, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd1370 .functor BUFZ 1, L_0x1bd0ad0, C4<0>, C4<0>, C4<0>;
L_0x1bd1400 .functor BUFZ 1, L_0x1bd0ad0, C4<0>, C4<0>, C4<0>;
v0x1ac9870_0 .net "A", 0 0, L_0x1bd1840;  1 drivers
v0x1ac54d0_0 .net "B", 0 0, L_0x1bc6240;  1 drivers
v0x1ac5590_0 .net "I", 7 0, L_0x1bd1520;  1 drivers
v0x1b2e850_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b2a1b0_0 .net *"_s15", 0 0, L_0x1bd1370;  1 drivers
v0x1b2a270_0 .net *"_s19", 0 0, L_0x1bd1400;  1 drivers
L_0x7f3247f1b4e0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b0fc60_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b4e0;  1 drivers
v0x1b0fd40_0 .net "addORsub", 0 0, L_0x1bd0ad0;  1 drivers
v0x1b0b5c0_0 .net "carryin", 0 0, L_0x1bd1a00;  1 drivers
v0x1b0b660_0 .net "carryout", 0 0, L_0x1afd7a0;  1 drivers
v0x1af1030_0 .net "modB", 0 0, L_0x1bd08a0;  1 drivers
v0x1af10d0_0 .net "out", 0 0, L_0x1bd1210;  1 drivers
L_0x1bd0910 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd1520_0_0 .concat8 [ 1 1 1 1], L_0x1bd1370, L_0x1bd1400, L_0x1bd0f00, L_0x7f3247f1b4e0;
LS_0x1bd1520_0_4 .concat8 [ 1 1 1 1], L_0x1adebf0, L_0x1bd1080, L_0x1bd10f0, L_0x1bd1180;
L_0x1bd1520 .concat8 [ 4 4 0 0], LS_0x1bd1520_0_0, LS_0x1bd1520_0_4;
S_0x1aa44b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd09b0 .functor XOR 1, L_0x1bd1840, L_0x1bd08a0, C4<0>, C4<0>;
L_0x1bd0ad0 .functor XOR 1, L_0x1bd09b0, L_0x1bd1a00, C4<0>, C4<0>;
L_0x1bd0c00 .functor AND 1, L_0x1bd09b0, L_0x1bd1a00, C4<1>, C4<1>;
L_0x1bd0c90 .functor AND 1, L_0x1bd1840, L_0x1bd08a0, C4<1>, C4<1>;
L_0x1afd7a0 .functor OR 1, L_0x1bd0c00, L_0x1bd0c90, C4<0>, C4<0>;
v0x1aa4200_0 .net "A", 0 0, L_0x1bd1840;  alias, 1 drivers
v0x1aa3e50_0 .net "B", 0 0, L_0x1bd08a0;  alias, 1 drivers
v0x1aa3f10_0 .net "carryin", 0 0, L_0x1bd1a00;  alias, 1 drivers
v0x1aa37e0_0 .net "carryout", 0 0, L_0x1afd7a0;  alias, 1 drivers
v0x1aa38a0_0 .net "out1", 0 0, L_0x1bd09b0;  1 drivers
v0x1a92220_0 .net "out2", 0 0, L_0x1bd0c00;  1 drivers
v0x1ae5520_0 .net "out3", 0 0, L_0x1bd0c90;  1 drivers
v0x1ae55e0_0 .net "sum", 0 0, L_0x1bd0ad0;  alias, 1 drivers
S_0x1b40bd0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1adebf0 .functor AND 1, L_0x1bd1840, L_0x1bc6240, C4<1>, C4<1>;
v0x1aa3410_0 .net "A", 0 0, L_0x1bd1840;  alias, 1 drivers
v0x1a915b0_0 .net "B", 0 0, L_0x1bc6240;  alias, 1 drivers
v0x1a91650_0 .net "out", 0 0, L_0x1adebf0;  1 drivers
S_0x1b402b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b24aa0_0 .net "I", 7 0, L_0x1bd1520;  alias, 1 drivers
v0x1b24b60_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1abffc0_0 .net "out", 0 0, L_0x1bd1210;  alias, 1 drivers
L_0x1bd1210 .part/v L_0x1bd1520, v0x1ab6bf0_0, 1;
S_0x1abb9d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd1080 .functor NAND 1, L_0x1bd1840, L_0x1bc6240, C4<1>, C4<1>;
v0x1b32430_0 .net "A", 0 0, L_0x1bd1840;  alias, 1 drivers
v0x1b32520_0 .net "B", 0 0, L_0x1bc6240;  alias, 1 drivers
v0x1ab73e0_0 .net "out", 0 0, L_0x1bd1080;  1 drivers
S_0x1b24ff0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd10f0 .functor NOR 1, L_0x1bd1840, L_0x1bc6240, C4<0>, C4<0>;
v0x1b20aa0_0 .net "A", 0 0, L_0x1bd1840;  alias, 1 drivers
v0x1b1c410_0 .net "B", 0 0, L_0x1bc6240;  alias, 1 drivers
v0x1b17e20_0 .net "out", 0 0, L_0x1bd10f0;  1 drivers
S_0x1b01d90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd1180 .functor OR 1, L_0x1bd1840, L_0x1bc6240, C4<0>, C4<0>;
v0x1b17f20_0 .net "A", 0 0, L_0x1bd1840;  alias, 1 drivers
v0x1afd830_0 .net "B", 0 0, L_0x1bc6240;  alias, 1 drivers
v0x1af91b0_0 .net "out", 0 0, L_0x1bd1180;  1 drivers
S_0x1ae31e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd08a0 .functor XOR 1, L_0x1bc6240, L_0x1bd0910, C4<0>, C4<0>;
v0x1af92b0_0 .net "A", 0 0, L_0x1bc6240;  alias, 1 drivers
v0x1adec80_0 .net "B", 0 0, L_0x1bd0910;  1 drivers
v0x1ada600_0 .net "out", 0 0, L_0x1bd08a0;  alias, 1 drivers
S_0x1ad2490 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1a92530;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd0f00 .functor XOR 1, L_0x1bd1840, L_0x1bc6240, C4<0>, C4<0>;
v0x1acde00_0 .net "A", 0 0, L_0x1bd1840;  alias, 1 drivers
v0x1acdec0_0 .net "B", 0 0, L_0x1bc6240;  alias, 1 drivers
v0x1ac9770_0 .net "out", 0 0, L_0x1bd0f00;  1 drivers
S_0x1aec9a0 .scope module, "alu12" "ALU_1bit" 7 130, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd25e0 .functor BUFZ 1, L_0x1bd1d60, C4<0>, C4<0>, C4<0>;
L_0x1bd2670 .functor BUFZ 1, L_0x1bd1d60, C4<0>, C4<0>, C4<0>;
v0x1b0bea0_0 .net "A", 0 0, L_0x1bd2ab0;  1 drivers
v0x1b0bf40_0 .net "B", 0 0, L_0x1bd2b50;  1 drivers
v0x1af1910_0 .net "I", 7 0, L_0x1bd2790;  1 drivers
v0x1af1a10_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1aed280_0 .net *"_s15", 0 0, L_0x1bd25e0;  1 drivers
v0x1aed390_0 .net *"_s19", 0 0, L_0x1bd2670;  1 drivers
L_0x7f3247f1b528 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1ae8bf0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b528;  1 drivers
v0x1ae8cd0_0 .net "addORsub", 0 0, L_0x1bd1d60;  1 drivers
v0x1aafb00_0 .net "carryin", 0 0, L_0x1bd1b30;  1 drivers
v0x1abfa70_0 .net "carryout", 0 0, L_0x1ad2d70;  1 drivers
v0x1abfb10_0 .net "modB", 0 0, L_0x1bc62e0;  1 drivers
v0x1abb480_0 .net "out", 0 0, L_0x1bd2480;  1 drivers
L_0x1bd18e0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd2790_0_0 .concat8 [ 1 1 1 1], L_0x1bd25e0, L_0x1bd2670, L_0x1bd2170, L_0x7f3247f1b528;
LS_0x1bd2790_0_4 .concat8 [ 1 1 1 1], L_0x1b2f130, L_0x1bd22f0, L_0x1bd2360, L_0x1bd23f0;
L_0x1bd2790 .concat8 [ 4 4 0 0], LS_0x1bd2790_0_0, LS_0x1bd2790_0_4;
S_0x1aaf220 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd1c60 .functor XOR 1, L_0x1bd2ab0, L_0x1bc62e0, C4<0>, C4<0>;
L_0x1bd1d60 .functor XOR 1, L_0x1bd1c60, L_0x1bd1b30, C4<0>, C4<0>;
L_0x1bd1e70 .functor AND 1, L_0x1bd1c60, L_0x1bd1b30, C4<1>, C4<1>;
L_0x1bd1ee0 .functor AND 1, L_0x1bd2ab0, L_0x1bc62e0, C4<1>, C4<1>;
L_0x1ad2d70 .functor OR 1, L_0x1bd1e70, L_0x1bd1ee0, C4<0>, C4<0>;
v0x1ac1d30_0 .net "A", 0 0, L_0x1bd2ab0;  alias, 1 drivers
v0x1ac1e10_0 .net "B", 0 0, L_0x1bc62e0;  alias, 1 drivers
v0x1abd740_0 .net "carryin", 0 0, L_0x1bd1b30;  alias, 1 drivers
v0x1abd800_0 .net "carryout", 0 0, L_0x1ad2d70;  alias, 1 drivers
v0x1ab9150_0 .net "out1", 0 0, L_0x1bd1c60;  1 drivers
v0x1ab9260_0 .net "out2", 0 0, L_0x1bd1e70;  1 drivers
v0x1b22770_0 .net "out3", 0 0, L_0x1bd1ee0;  1 drivers
v0x1b22830_0 .net "sum", 0 0, L_0x1bd1d60;  alias, 1 drivers
S_0x1b1e180 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b2f130 .functor AND 1, L_0x1bd2ab0, L_0x1bd2b50, C4<1>, C4<1>;
v0x1b19c30_0 .net "A", 0 0, L_0x1bd2ab0;  alias, 1 drivers
v0x1b155b0_0 .net "B", 0 0, L_0x1bd2b50;  alias, 1 drivers
v0x1b15650_0 .net "out", 0 0, L_0x1b2f130;  1 drivers
S_0x1b03b00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1aff560_0 .net "I", 7 0, L_0x1bd2790;  alias, 1 drivers
v0x1afaf20_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1afafe0_0 .net "out", 0 0, L_0x1bd2480;  alias, 1 drivers
L_0x1bd2480 .part/v L_0x1bd2790, v0x1ab6bf0_0, 1;
S_0x1af6940 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd22f0 .functor NAND 1, L_0x1bd2ab0, L_0x1bd2b50, C4<1>, C4<1>;
v0x1ae0a00_0 .net "A", 0 0, L_0x1bd2ab0;  alias, 1 drivers
v0x1adc370_0 .net "B", 0 0, L_0x1bd2b50;  alias, 1 drivers
v0x1adc430_0 .net "out", 0 0, L_0x1bd22f0;  1 drivers
S_0x1ad7d80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd2360 .functor NOR 1, L_0x1bd2ab0, L_0x1bd2b50, C4<0>, C4<0>;
v0x1a92ce0_0 .net "A", 0 0, L_0x1bd2ab0;  alias, 1 drivers
v0x1a87260_0 .net "B", 0 0, L_0x1bd2b50;  alias, 1 drivers
v0x1a87370_0 .net "out", 0 0, L_0x1bd2360;  1 drivers
S_0x1a86d70 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd23f0 .functor OR 1, L_0x1bd2ab0, L_0x1bd2b50, C4<0>, C4<0>;
v0x1aaaf40_0 .net "A", 0 0, L_0x1bd2ab0;  alias, 1 drivers
v0x1ad2e00_0 .net "B", 0 0, L_0x1bd2b50;  alias, 1 drivers
v0x1ace6e0_0 .net "out", 0 0, L_0x1bd23f0;  1 drivers
S_0x1aca050 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc62e0 .functor XOR 1, L_0x1bd2b50, L_0x1bd18e0, C4<0>, C4<0>;
v0x1ace7e0_0 .net "A", 0 0, L_0x1bd2b50;  alias, 1 drivers
v0x1b2f1c0_0 .net "B", 0 0, L_0x1bd18e0;  1 drivers
v0x1b2aa90_0 .net "out", 0 0, L_0x1bc62e0;  alias, 1 drivers
S_0x1b14bd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1aec9a0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd2170 .functor XOR 1, L_0x1bd2ab0, L_0x1bd2b50, C4<0>, C4<0>;
v0x1b2ab70_0 .net "A", 0 0, L_0x1bd2ab0;  alias, 1 drivers
v0x1b10540_0 .net "B", 0 0, L_0x1bd2b50;  alias, 1 drivers
v0x1b10600_0 .net "out", 0 0, L_0x1bd2170;  1 drivers
S_0x1ab6e90 .scope module, "alu13" "ALU_1bit" 7 131, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd3820 .functor BUFZ 1, L_0x1bd2f80, C4<0>, C4<0>, C4<0>;
L_0x1bd38b0 .functor BUFZ 1, L_0x1bd2f80, C4<0>, C4<0>, C4<0>;
v0x1a8c560_0 .net "A", 0 0, L_0x1bd3cf0;  1 drivers
v0x1a8bf60_0 .net "B", 0 0, L_0x1bd2bf0;  1 drivers
v0x1a8c020_0 .net "I", 7 0, L_0x1bd39d0;  1 drivers
v0x1a8ba90_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1a8bb30_0 .net *"_s15", 0 0, L_0x1bd3820;  1 drivers
v0x1a8b5c0_0 .net *"_s19", 0 0, L_0x1bd38b0;  1 drivers
L_0x7f3247f1b570 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1a8b6a0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b570;  1 drivers
v0x1a8b0f0_0 .net "addORsub", 0 0, L_0x1bd2f80;  1 drivers
v0x1a8b190_0 .net "carryin", 0 0, L_0x1bd2c90;  1 drivers
v0x1a8ac20_0 .net "carryout", 0 0, L_0x1a8e680;  1 drivers
v0x1a8acf0_0 .net "modB", 0 0, L_0x1bd2d30;  1 drivers
v0x1a8a750_0 .net "out", 0 0, L_0x1bd36c0;  1 drivers
L_0x1bd2da0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd39d0_0_0 .concat8 [ 1 1 1 1], L_0x1bd3820, L_0x1bd38b0, L_0x1bd33b0, L_0x7f3247f1b570;
LS_0x1bd39d0_0_4 .concat8 [ 1 1 1 1], L_0x1a8d830, L_0x1bd3530, L_0x1bd35a0, L_0x1bd3630;
L_0x1bd39d0 .concat8 [ 4 4 0 0], LS_0x1bd39d0_0_0, LS_0x1bd39d0_0_4;
S_0x1b204b0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd2e40 .functor XOR 1, L_0x1bd3cf0, L_0x1bd2d30, C4<0>, C4<0>;
L_0x1bd2f80 .functor XOR 1, L_0x1bd2e40, L_0x1bd2c90, C4<0>, C4<0>;
L_0x1bd30b0 .functor AND 1, L_0x1bd2e40, L_0x1bd2c90, C4<1>, C4<1>;
L_0x1bd3140 .functor AND 1, L_0x1bd3cf0, L_0x1bd2d30, C4<1>, C4<1>;
L_0x1a8e680 .functor OR 1, L_0x1bd30b0, L_0x1bd3140, C4<0>, C4<0>;
v0x1b1bf40_0 .net "A", 0 0, L_0x1bd3cf0;  alias, 1 drivers
v0x1b178d0_0 .net "B", 0 0, L_0x1bd2d30;  alias, 1 drivers
v0x1b17990_0 .net "carryin", 0 0, L_0x1bd2c90;  alias, 1 drivers
v0x1b01840_0 .net "carryout", 0 0, L_0x1a8e680;  alias, 1 drivers
v0x1b01900_0 .net "out1", 0 0, L_0x1bd2e40;  1 drivers
v0x1afd250_0 .net "out2", 0 0, L_0x1bd30b0;  1 drivers
v0x1afd310_0 .net "out3", 0 0, L_0x1bd3140;  1 drivers
v0x1af8c60_0 .net "sum", 0 0, L_0x1bd2f80;  alias, 1 drivers
S_0x1ae2c90 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8d830 .functor AND 1, L_0x1bd3cf0, L_0x1bd2bf0, C4<1>, C4<1>;
v0x1ade6a0_0 .net "A", 0 0, L_0x1bd3cf0;  alias, 1 drivers
v0x1ade760_0 .net "B", 0 0, L_0x1bd2bf0;  alias, 1 drivers
v0x1ada0b0_0 .net "out", 0 0, L_0x1a8d830;  1 drivers
S_0x1ad5a20 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1aa2c70_0 .net "I", 7 0, L_0x1bd39d0;  alias, 1 drivers
v0x1aa2d50_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1a902c0_0 .net "out", 0 0, L_0x1bd36c0;  alias, 1 drivers
L_0x1bd36c0 .part/v L_0x1bd39d0, v0x1ab6bf0_0, 1;
S_0x1a8fdf0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd3530 .functor NAND 1, L_0x1bd3cf0, L_0x1bd2bf0, C4<1>, C4<1>;
v0x1a903e0_0 .net "A", 0 0, L_0x1bd3cf0;  alias, 1 drivers
v0x1a8f970_0 .net "B", 0 0, L_0x1bd2bf0;  alias, 1 drivers
v0x1a8fa10_0 .net "out", 0 0, L_0x1bd3530;  1 drivers
S_0x1a8f450 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd35a0 .functor NOR 1, L_0x1bd3cf0, L_0x1bd2bf0, C4<0>, C4<0>;
v0x1a8f020_0 .net "A", 0 0, L_0x1bd3cf0;  alias, 1 drivers
v0x1a8eab0_0 .net "B", 0 0, L_0x1bd2bf0;  alias, 1 drivers
v0x1a8ebc0_0 .net "out", 0 0, L_0x1bd35a0;  1 drivers
S_0x1a87720 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd3630 .functor OR 1, L_0x1bd3cf0, L_0x1bd2bf0, C4<0>, C4<0>;
v0x1a8e5e0_0 .net "A", 0 0, L_0x1bd3cf0;  alias, 1 drivers
v0x1a8e710_0 .net "B", 0 0, L_0x1bd2bf0;  alias, 1 drivers
v0x1a8e130_0 .net "out", 0 0, L_0x1bd3630;  1 drivers
S_0x1a8dc40 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd2d30 .functor XOR 1, L_0x1bd2bf0, L_0x1bd2da0, C4<0>, C4<0>;
v0x1a8d770_0 .net "A", 0 0, L_0x1bd2bf0;  alias, 1 drivers
v0x1a8d2a0_0 .net "B", 0 0, L_0x1bd2da0;  1 drivers
v0x1a8d360_0 .net "out", 0 0, L_0x1bd2d30;  alias, 1 drivers
S_0x1a8cdd0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1ab6e90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd33b0 .functor XOR 1, L_0x1bd3cf0, L_0x1bd2bf0, C4<0>, C4<0>;
v0x1a8c900_0 .net "A", 0 0, L_0x1bd3cf0;  alias, 1 drivers
v0x1a8c9c0_0 .net "B", 0 0, L_0x1bd2bf0;  alias, 1 drivers
v0x1a8c430_0 .net "out", 0 0, L_0x1bd33b0;  1 drivers
S_0x1a8a280 .scope module, "alu14" "ALU_1bit" 7 132, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd4b80 .functor BUFZ 1, L_0x1bd42e0, C4<0>, C4<0>, C4<0>;
L_0x1bd4c10 .functor BUFZ 1, L_0x1bd42e0, C4<0>, C4<0>, C4<0>;
v0x1aad9a0_0 .net "A", 0 0, L_0x1bd5050;  1 drivers
v0x1b2d6e0_0 .net "B", 0 0, L_0x1bd50f0;  1 drivers
v0x1b2d7a0_0 .net "I", 7 0, L_0x1bd4d30;  1 drivers
v0x1b2d2e0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b2d380_0 .net *"_s15", 0 0, L_0x1bd4b80;  1 drivers
v0x1b2cef0_0 .net *"_s19", 0 0, L_0x1bd4c10;  1 drivers
L_0x7f3247f1b5b8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b2cfd0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b5b8;  1 drivers
v0x1b29040_0 .net "addORsub", 0 0, L_0x1bd42e0;  1 drivers
v0x1b290e0_0 .net "carryin", 0 0, L_0x1bd40f0;  1 drivers
v0x1b28c40_0 .net "carryout", 0 0, L_0x1accd80;  1 drivers
v0x1b28d10_0 .net "modB", 0 0, L_0x1bcab60;  1 drivers
v0x1b28850_0 .net "out", 0 0, L_0x1bd4a20;  1 drivers
L_0x1bd3d90 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd4d30_0_0 .concat8 [ 1 1 1 1], L_0x1bd4b80, L_0x1bd4c10, L_0x1bd4710, L_0x7f3247f1b5b8;
LS_0x1bd4d30_0_4 .concat8 [ 1 1 1 1], L_0x1aadd50, L_0x1bd4890, L_0x1bd4900, L_0x1bd4990;
L_0x1bd4d30 .concat8 [ 4 4 0 0], LS_0x1bd4d30_0_0, LS_0x1bd4d30_0_4;
S_0x1a89db0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd3e50 .functor XOR 1, L_0x1bd5050, L_0x1bcab60, C4<0>, C4<0>;
L_0x1bd42e0 .functor XOR 1, L_0x1bd3e50, L_0x1bd40f0, C4<0>, C4<0>;
L_0x1bd4410 .functor AND 1, L_0x1bd3e50, L_0x1bd40f0, C4<1>, C4<1>;
L_0x1bd44a0 .functor AND 1, L_0x1bd5050, L_0x1bcab60, C4<1>, C4<1>;
L_0x1accd80 .functor OR 1, L_0x1bd4410, L_0x1bd44a0, C4<0>, C4<0>;
v0x1a898e0_0 .net "A", 0 0, L_0x1bd5050;  alias, 1 drivers
v0x1a899c0_0 .net "B", 0 0, L_0x1bcab60;  alias, 1 drivers
v0x1a89410_0 .net "carryin", 0 0, L_0x1bd40f0;  alias, 1 drivers
v0x1a894b0_0 .net "carryout", 0 0, L_0x1accd80;  alias, 1 drivers
v0x1a88f40_0 .net "out1", 0 0, L_0x1bd3e50;  1 drivers
v0x1a89050_0 .net "out2", 0 0, L_0x1bd4410;  1 drivers
v0x1a88a70_0 .net "out3", 0 0, L_0x1bd44a0;  1 drivers
v0x1a88b30_0 .net "sum", 0 0, L_0x1bd42e0;  alias, 1 drivers
S_0x1a88590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aadd50 .functor AND 1, L_0x1bd5050, L_0x1bd50f0, C4<1>, C4<1>;
v0x1a880c0_0 .net "A", 0 0, L_0x1bd5050;  alias, 1 drivers
v0x1a88160_0 .net "B", 0 0, L_0x1bd50f0;  alias, 1 drivers
v0x1a87be0_0 .net "out", 0 0, L_0x1aadd50;  1 drivers
S_0x1a90ed0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1a6e950_0 .net "I", 7 0, L_0x1bd4d30;  alias, 1 drivers
v0x1a6ea50_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1a6e240_0 .net "out", 0 0, L_0x1bd4a20;  alias, 1 drivers
L_0x1bd4a20 .part/v L_0x1bd4d30, v0x1ab6bf0_0, 1;
S_0x1a6f090 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd4890 .functor NAND 1, L_0x1bd5050, L_0x1bd50f0, C4<1>, C4<1>;
v0x19d2990_0 .net "A", 0 0, L_0x1bd5050;  alias, 1 drivers
v0x19d2aa0_0 .net "B", 0 0, L_0x1bd50f0;  alias, 1 drivers
v0x1aae0b0_0 .net "out", 0 0, L_0x1bd4890;  1 drivers
S_0x1ad1320 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd4900 .functor NOR 1, L_0x1bd5050, L_0x1bd50f0, C4<0>, C4<0>;
v0x1aae1e0_0 .net "A", 0 0, L_0x1bd5050;  alias, 1 drivers
v0x1ad0f20_0 .net "B", 0 0, L_0x1bd50f0;  alias, 1 drivers
v0x1ad1010_0 .net "out", 0 0, L_0x1bd4900;  1 drivers
S_0x1ad0b30 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd4990 .functor OR 1, L_0x1bd5050, L_0x1bd50f0, C4<0>, C4<0>;
v0x1accce0_0 .net "A", 0 0, L_0x1bd5050;  alias, 1 drivers
v0x1acc890_0 .net "B", 0 0, L_0x1bd50f0;  alias, 1 drivers
v0x1acc950_0 .net "out", 0 0, L_0x1bd4990;  1 drivers
S_0x1acc4a0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcab60 .functor XOR 1, L_0x1bd50f0, L_0x1bd3d90, C4<0>, C4<0>;
v0x1aadc90_0 .net "A", 0 0, L_0x1bd50f0;  alias, 1 drivers
v0x1ac8600_0 .net "B", 0 0, L_0x1bd3d90;  1 drivers
v0x1ac86c0_0 .net "out", 0 0, L_0x1bcab60;  alias, 1 drivers
S_0x1ac8200 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1a8a280;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd4710 .functor XOR 1, L_0x1bd5050, L_0x1bd50f0, C4<0>, C4<0>;
v0x1ac7e10_0 .net "A", 0 0, L_0x1bd5050;  alias, 1 drivers
v0x1ac7ed0_0 .net "B", 0 0, L_0x1bd50f0;  alias, 1 drivers
v0x1aad870_0 .net "out", 0 0, L_0x1bd4710;  1 drivers
S_0x1b13180 .scope module, "alu15" "ALU_1bit" 7 133, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd5dd0 .functor BUFZ 1, L_0x1bd5530, C4<0>, C4<0>, C4<0>;
L_0x1bd5e60 .functor BUFZ 1, L_0x1bd5530, C4<0>, C4<0>, C4<0>;
v0x1ae6ae0_0 .net "A", 0 0, L_0x1bd62a0;  1 drivers
v0x1ad1970_0 .net "B", 0 0, L_0x1bd5190;  1 drivers
v0x1ad1a30_0 .net "I", 7 0, L_0x1bd5f80;  1 drivers
v0x1acd2e0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b2e8f0_0 .net *"_s15", 0 0, L_0x1bd5dd0;  1 drivers
v0x1acd380_0 .net *"_s19", 0 0, L_0x1bd5e60;  1 drivers
L_0x7f3247f1b600 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b31a60_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b600;  1 drivers
v0x1ac8c50_0 .net "addORsub", 0 0, L_0x1bd5530;  1 drivers
v0x1ac8cf0_0 .net "carryin", 0 0, L_0x1bd5230;  1 drivers
v0x1ac45b0_0 .net "carryout", 0 0, L_0x1aef6d0;  1 drivers
v0x1ac4680_0 .net "modB", 0 0, L_0x1bd5300;  1 drivers
v0x1b2dd30_0 .net "out", 0 0, L_0x1bd5c70;  1 drivers
L_0x1bd5370 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd5f80_0_0 .concat8 [ 1 1 1 1], L_0x1bd5dd0, L_0x1bd5e60, L_0x1bd5960, L_0x7f3247f1b600;
LS_0x1bd5f80_0_4 .concat8 [ 1 1 1 1], L_0x1aeb430, L_0x1bd5ae0, L_0x1bd5b50, L_0x1bd5be0;
L_0x1bd5f80 .concat8 [ 4 4 0 0], LS_0x1bd5f80_0_0, LS_0x1bd5f80_0_4;
S_0x1b12d80 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd5410 .functor XOR 1, L_0x1bd62a0, L_0x1bd5300, C4<0>, C4<0>;
L_0x1bd5530 .functor XOR 1, L_0x1bd5410, L_0x1bd5230, C4<0>, C4<0>;
L_0x1bd5660 .functor AND 1, L_0x1bd5410, L_0x1bd5230, C4<1>, C4<1>;
L_0x1bd56f0 .functor AND 1, L_0x1bd62a0, L_0x1bd5300, C4<1>, C4<1>;
L_0x1aef6d0 .functor OR 1, L_0x1bd5660, L_0x1bd56f0, C4<0>, C4<0>;
v0x1b12990_0 .net "A", 0 0, L_0x1bd62a0;  alias, 1 drivers
v0x1b12a70_0 .net "B", 0 0, L_0x1bd5300;  alias, 1 drivers
v0x1b0eaf0_0 .net "carryin", 0 0, L_0x1bd5230;  alias, 1 drivers
v0x1b0eb90_0 .net "carryout", 0 0, L_0x1aef6d0;  alias, 1 drivers
v0x1b0e6f0_0 .net "out1", 0 0, L_0x1bd5410;  1 drivers
v0x1b0e800_0 .net "out2", 0 0, L_0x1bd5660;  1 drivers
v0x1b0e300_0 .net "out3", 0 0, L_0x1bd56f0;  1 drivers
v0x1b0e3c0_0 .net "sum", 0 0, L_0x1bd5530;  alias, 1 drivers
S_0x1b0a450 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1aeb430 .functor AND 1, L_0x1bd62a0, L_0x1bd5190, C4<1>, C4<1>;
v0x1b0a050_0 .net "A", 0 0, L_0x1bd62a0;  alias, 1 drivers
v0x1b0a140_0 .net "B", 0 0, L_0x1bd5190;  alias, 1 drivers
v0x1b09c60_0 .net "out", 0 0, L_0x1aeb430;  1 drivers
S_0x1b05d80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b05970_0 .net "I", 7 0, L_0x1bd5f80;  alias, 1 drivers
v0x1b05a50_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b05580_0 .net "out", 0 0, L_0x1bd5c70;  alias, 1 drivers
L_0x1bd5c70 .part/v L_0x1bd5f80, v0x1ab6bf0_0, 1;
S_0x1ab2750 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd5ae0 .functor NAND 1, L_0x1bd62a0, L_0x1bd5190, C4<1>, C4<1>;
v0x1ab2350_0 .net "A", 0 0, L_0x1bd62a0;  alias, 1 drivers
v0x1ab2460_0 .net "B", 0 0, L_0x1bd5190;  alias, 1 drivers
v0x1af4550_0 .net "out", 0 0, L_0x1bd5ae0;  1 drivers
S_0x1af4150 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd5b50 .functor NOR 1, L_0x1bd62a0, L_0x1bd5190, C4<0>, C4<0>;
v0x1af4680_0 .net "A", 0 0, L_0x1bd62a0;  alias, 1 drivers
v0x1af3d80_0 .net "B", 0 0, L_0x1bd5190;  alias, 1 drivers
v0x1af3e90_0 .net "out", 0 0, L_0x1bd5b50;  1 drivers
S_0x1aefac0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd5be0 .functor OR 1, L_0x1bd62a0, L_0x1bd5190, C4<0>, C4<0>;
v0x1aeff70_0 .net "A", 0 0, L_0x1bd62a0;  alias, 1 drivers
v0x1aef760_0 .net "B", 0 0, L_0x1bd5190;  alias, 1 drivers
v0x1ab1f60_0 .net "out", 0 0, L_0x1bd5be0;  1 drivers
S_0x1aeb830 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd5300 .functor XOR 1, L_0x1bd5190, L_0x1bd5370, C4<0>, C4<0>;
v0x1ab2090_0 .net "A", 0 0, L_0x1bd5190;  alias, 1 drivers
v0x1aeb4c0_0 .net "B", 0 0, L_0x1bd5370;  1 drivers
v0x1aeb040_0 .net "out", 0 0, L_0x1bd5300;  alias, 1 drivers
S_0x1ae71a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b13180;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd5960 .functor XOR 1, L_0x1bd62a0, L_0x1bd5190, C4<0>, C4<0>;
v0x1ae6da0_0 .net "A", 0 0, L_0x1bd62a0;  alias, 1 drivers
v0x1ae6e60_0 .net "B", 0 0, L_0x1bd5190;  alias, 1 drivers
v0x1ae69b0_0 .net "out", 0 0, L_0x1bd5960;  1 drivers
S_0x1b29690 .scope module, "alu16" "ALU_1bit" 7 134, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd7010 .functor BUFZ 1, L_0x1bd6770, C4<0>, C4<0>, C4<0>;
L_0x1bd70a0 .functor BUFZ 1, L_0x1bd6770, C4<0>, C4<0>, C4<0>;
v0x19670c0_0 .net "A", 0 0, L_0x1bd74e0;  1 drivers
v0x1967160_0 .net "B", 0 0, L_0x1bd7580;  1 drivers
v0x1967200_0 .net "I", 7 0, L_0x1bd71c0;  1 drivers
v0x1967300_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x19673a0_0 .net *"_s15", 0 0, L_0x1bd7010;  1 drivers
v0x1967e50_0 .net *"_s19", 0 0, L_0x1bd70a0;  1 drivers
L_0x7f3247f1b648 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1967f30_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b648;  1 drivers
v0x1968010_0 .net "addORsub", 0 0, L_0x1bd6770;  1 drivers
v0x19680b0_0 .net "carryin", 0 0, L_0x1bd6550;  1 drivers
v0x1969ea0_0 .net "carryout", 0 0, L_0x1965620;  1 drivers
v0x1969f70_0 .net "modB", 0 0, L_0x1bd6340;  1 drivers
v0x196a010_0 .net "out", 0 0, L_0x1bd6eb0;  1 drivers
L_0x1bd63b0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd71c0_0_0 .concat8 [ 1 1 1 1], L_0x1bd7010, L_0x1bd70a0, L_0x1bd6ba0, L_0x7f3247f1b648;
LS_0x1bd71c0_0_4 .concat8 [ 1 1 1 1], L_0x1966430, L_0x1bd6d20, L_0x1bd6d90, L_0x1bd6e20;
L_0x1bd71c0 .concat8 [ 4 4 0 0], LS_0x1bd71c0_0_0, LS_0x1bd71c0_0_4;
S_0x1b0f140 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd6450 .functor XOR 1, L_0x1bd74e0, L_0x1bd6340, C4<0>, C4<0>;
L_0x1bd6770 .functor XOR 1, L_0x1bd6450, L_0x1bd6550, C4<0>, C4<0>;
L_0x1bd68a0 .functor AND 1, L_0x1bd6450, L_0x1bd6550, C4<1>, C4<1>;
L_0x1bd6930 .functor AND 1, L_0x1bd74e0, L_0x1bd6340, C4<1>, C4<1>;
L_0x1965620 .functor OR 1, L_0x1bd68a0, L_0x1bd6930, C4<0>, C4<0>;
v0x1b13870_0 .net "A", 0 0, L_0x1bd74e0;  alias, 1 drivers
v0x1b0aaa0_0 .net "B", 0 0, L_0x1bd6340;  alias, 1 drivers
v0x1b0ab60_0 .net "carryin", 0 0, L_0x1bd6550;  alias, 1 drivers
v0x1b063d0_0 .net "carryout", 0 0, L_0x1965620;  alias, 1 drivers
v0x1b06490_0 .net "out1", 0 0, L_0x1bd6450;  1 drivers
v0x1ab2da0_0 .net "out2", 0 0, L_0x1bd68a0;  1 drivers
v0x1ab2e60_0 .net "out3", 0 0, L_0x1bd6930;  1 drivers
v0x1af4ba0_0 .net "sum", 0 0, L_0x1bd6770;  alias, 1 drivers
S_0x1af0510 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1966430 .functor AND 1, L_0x1bd74e0, L_0x1bd7580, C4<1>, C4<1>;
v0x1aebe80_0 .net "A", 0 0, L_0x1bd74e0;  alias, 1 drivers
v0x1aebf40_0 .net "B", 0 0, L_0x1bd7580;  alias, 1 drivers
v0x1ae77f0_0 .net "out", 0 0, L_0x1966430;  1 drivers
S_0x1aae700 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1ae7910_0 .net "I", 7 0, L_0x1bd71c0;  alias, 1 drivers
v0x1b34b70_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b34c30_0 .net "out", 0 0, L_0x1bd6eb0;  alias, 1 drivers
L_0x1bd6eb0 .part/v L_0x1bd71c0, v0x1ab6bf0_0, 1;
S_0x1948a40 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd6d20 .functor NAND 1, L_0x1bd74e0, L_0x1bd7580, C4<1>, C4<1>;
v0x1948c10_0 .net "A", 0 0, L_0x1bd74e0;  alias, 1 drivers
v0x1948d20_0 .net "B", 0 0, L_0x1bd7580;  alias, 1 drivers
v0x1b34d80_0 .net "out", 0 0, L_0x1bd6d20;  1 drivers
S_0x1944480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd6d90 .functor NOR 1, L_0x1bd74e0, L_0x1bd7580, C4<0>, C4<0>;
v0x19446f0_0 .net "A", 0 0, L_0x1bd74e0;  alias, 1 drivers
v0x19447b0_0 .net "B", 0 0, L_0x1bd7580;  alias, 1 drivers
v0x1963b40_0 .net "out", 0 0, L_0x1bd6d90;  1 drivers
S_0x1963c40 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd6e20 .functor OR 1, L_0x1bd74e0, L_0x1bd7580, C4<0>, C4<0>;
v0x1963e60_0 .net "A", 0 0, L_0x1bd74e0;  alias, 1 drivers
v0x19656b0_0 .net "B", 0 0, L_0x1bd7580;  alias, 1 drivers
v0x1965770_0 .net "out", 0 0, L_0x1bd6e20;  1 drivers
S_0x1965870 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd6340 .functor XOR 1, L_0x1bd7580, L_0x1bd63b0, C4<0>, C4<0>;
v0x1966370_0 .net "A", 0 0, L_0x1bd7580;  alias, 1 drivers
v0x19664c0_0 .net "B", 0 0, L_0x1bd63b0;  1 drivers
v0x1966580_0 .net "out", 0 0, L_0x1bd6340;  alias, 1 drivers
S_0x19648d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b29690;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd6ba0 .functor XOR 1, L_0x1bd74e0, L_0x1bd7580, C4<0>, C4<0>;
v0x1964af0_0 .net "A", 0 0, L_0x1bd74e0;  alias, 1 drivers
v0x1964bb0_0 .net "B", 0 0, L_0x1bd7580;  alias, 1 drivers
v0x19666c0_0 .net "out", 0 0, L_0x1bd6ba0;  1 drivers
S_0x196a0f0 .scope module, "alu17" "ALU_1bit" 7 135, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd8330 .functor BUFZ 1, L_0x1bd7ad0, C4<0>, C4<0>, C4<0>;
L_0x1bd83c0 .functor BUFZ 1, L_0x1bd7ad0, C4<0>, C4<0>, C4<0>;
v0x1940330_0 .net "A", 0 0, L_0x1bd8800;  1 drivers
v0x19403d0_0 .net "B", 0 0, L_0x1bd7620;  1 drivers
v0x18d0cf0_0 .net "I", 7 0, L_0x1bd84e0;  1 drivers
v0x18d0df0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x18d0e90_0 .net *"_s15", 0 0, L_0x1bd8330;  1 drivers
v0x18d0f50_0 .net *"_s19", 0 0, L_0x1bd83c0;  1 drivers
L_0x7f3247f1b690 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x18d1030_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b690;  1 drivers
v0x1930710_0 .net "addORsub", 0 0, L_0x1bd7ad0;  1 drivers
v0x19307b0_0 .net "carryin", 0 0, L_0x1bd76c0;  1 drivers
v0x1930910_0 .net "carryout", 0 0, L_0x19681e0;  1 drivers
v0x19309e0_0 .net "modB", 0 0, L_0x1bce270;  1 drivers
v0x1930a80_0 .net "out", 0 0, L_0x1bd81d0;  1 drivers
L_0x1bce2e0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd84e0_0_0 .concat8 [ 1 1 1 1], L_0x1bd8330, L_0x1bd83c0, L_0x1bd7ec0, L_0x7f3247f1b690;
LS_0x1bd84e0_0_4 .concat8 [ 1 1 1 1], L_0x1940100, L_0x1bd8040, L_0x1bd80b0, L_0x1bd8140;
L_0x1bd84e0 .concat8 [ 4 4 0 0], LS_0x1bd84e0_0_0, LS_0x1bd84e0_0_4;
S_0x197a160 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd79d0 .functor XOR 1, L_0x1bd8800, L_0x1bce270, C4<0>, C4<0>;
L_0x1bd7ad0 .functor XOR 1, L_0x1bd79d0, L_0x1bd76c0, C4<0>, C4<0>;
L_0x1bd7be0 .functor AND 1, L_0x1bd79d0, L_0x1bd76c0, C4<1>, C4<1>;
L_0x1bd7c50 .functor AND 1, L_0x1bd8800, L_0x1bce270, C4<1>, C4<1>;
L_0x19681e0 .functor OR 1, L_0x1bd7be0, L_0x1bd7c50, C4<0>, C4<0>;
v0x197a380_0 .net "A", 0 0, L_0x1bd8800;  alias, 1 drivers
v0x19225a0_0 .net "B", 0 0, L_0x1bce270;  alias, 1 drivers
v0x1922660_0 .net "carryin", 0 0, L_0x1bd76c0;  alias, 1 drivers
v0x1922730_0 .net "carryout", 0 0, L_0x19681e0;  alias, 1 drivers
v0x19227f0_0 .net "out1", 0 0, L_0x1bd79d0;  1 drivers
v0x1922900_0 .net "out2", 0 0, L_0x1bd7be0;  1 drivers
v0x190aeb0_0 .net "out3", 0 0, L_0x1bd7c50;  1 drivers
v0x190af70_0 .net "sum", 0 0, L_0x1bd7ad0;  alias, 1 drivers
S_0x190b0d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1940100 .functor AND 1, L_0x1bd8800, L_0x1bd7620, C4<1>, C4<1>;
v0x191ebe0_0 .net "A", 0 0, L_0x1bd8800;  alias, 1 drivers
v0x191eca0_0 .net "B", 0 0, L_0x1bd7620;  alias, 1 drivers
v0x191ed40_0 .net "out", 0 0, L_0x1940100;  1 drivers
S_0x19629d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1962c20_0 .net "I", 7 0, L_0x1bd84e0;  alias, 1 drivers
v0x1962d20_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x191ee90_0 .net "out", 0 0, L_0x1bd81d0;  alias, 1 drivers
L_0x1bd81d0 .part/v L_0x1bd84e0, v0x1ab6bf0_0, 1;
S_0x193e860 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd8040 .functor NAND 1, L_0x1bd8800, L_0x1bd7620, C4<1>, C4<1>;
v0x193ea80_0 .net "A", 0 0, L_0x1bd8800;  alias, 1 drivers
v0x193eb90_0 .net "B", 0 0, L_0x1bd7620;  alias, 1 drivers
v0x1923740_0 .net "out", 0 0, L_0x1bd8040;  1 drivers
S_0x1923820 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd80b0 .functor NOR 1, L_0x1bd8800, L_0x1bd7620, C4<0>, C4<0>;
v0x1923a90_0 .net "A", 0 0, L_0x1bd8800;  alias, 1 drivers
v0x1924890_0 .net "B", 0 0, L_0x1bd7620;  alias, 1 drivers
v0x19249a0_0 .net "out", 0 0, L_0x1bd80b0;  1 drivers
S_0x1924ac0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd8140 .functor OR 1, L_0x1bd8800, L_0x1bd7620, C4<0>, C4<0>;
v0x1942190_0 .net "A", 0 0, L_0x1bd8800;  alias, 1 drivers
v0x1942230_0 .net "B", 0 0, L_0x1bd7620;  alias, 1 drivers
v0x19422f0_0 .net "out", 0 0, L_0x1bd8140;  1 drivers
S_0x19423f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bce270 .functor XOR 1, L_0x1bd7620, L_0x1bce2e0, C4<0>, C4<0>;
v0x1940060_0 .net "A", 0 0, L_0x1bd7620;  alias, 1 drivers
v0x1940190_0 .net "B", 0 0, L_0x1bce2e0;  1 drivers
v0x1940250_0 .net "out", 0 0, L_0x1bce270;  alias, 1 drivers
S_0x196c3f0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x196a0f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd7ec0 .functor XOR 1, L_0x1bd8800, L_0x1bd7620, C4<0>, C4<0>;
v0x196c5c0_0 .net "A", 0 0, L_0x1bd8800;  alias, 1 drivers
v0x196c680_0 .net "B", 0 0, L_0x1bd7620;  alias, 1 drivers
v0x196c740_0 .net "out", 0 0, L_0x1bd7ec0;  1 drivers
S_0x193a1f0 .scope module, "alu18" "ALU_1bit" 7 136, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bd9590 .functor BUFZ 1, L_0x1bd8d30, C4<0>, C4<0>, C4<0>;
L_0x1bd9620 .functor BUFZ 1, L_0x1bd8d30, C4<0>, C4<0>, C4<0>;
v0x1b4b890_0 .net "A", 0 0, L_0x1bd9a60;  1 drivers
v0x1b4b930_0 .net "B", 0 0, L_0x1bd9b00;  1 drivers
v0x1b4b9f0_0 .net "I", 7 0, L_0x1bd9740;  1 drivers
v0x1b4baf0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b4bb90_0 .net *"_s15", 0 0, L_0x1bd9590;  1 drivers
v0x1b4bca0_0 .net *"_s19", 0 0, L_0x1bd9620;  1 drivers
L_0x7f3247f1b6d8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b4bd80_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b6d8;  1 drivers
v0x1b4be60_0 .net "addORsub", 0 0, L_0x1bd8d30;  1 drivers
v0x1b4bf00_0 .net "carryin", 0 0, L_0x1bd8ae0;  1 drivers
v0x1b4c060_0 .net "carryout", 0 0, L_0x1b4aca0;  1 drivers
v0x1b4c130_0 .net "modB", 0 0, L_0x1bd88a0;  1 drivers
v0x1b4c1d0_0 .net "out", 0 0, L_0x1bd9430;  1 drivers
L_0x1bd8910 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bd9740_0_0 .concat8 [ 1 1 1 1], L_0x1bd9590, L_0x1bd9620, L_0x1bd9120, L_0x7f3247f1b6d8;
LS_0x1bd9740_0_4 .concat8 [ 1 1 1 1], L_0x1b4b180, L_0x1bd92a0, L_0x1bd9310, L_0x1bd93a0;
L_0x1bd9740 .concat8 [ 4 4 0 0], LS_0x1bd9740_0_0, LS_0x1bd9740_0_4;
S_0x193a460 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd89b0 .functor XOR 1, L_0x1bd9a60, L_0x1bd88a0, C4<0>, C4<0>;
L_0x1bd8d30 .functor XOR 1, L_0x1bd89b0, L_0x1bd8ae0, C4<0>, C4<0>;
L_0x1bd8e40 .functor AND 1, L_0x1bd89b0, L_0x1bd8ae0, C4<1>, C4<1>;
L_0x1bd8eb0 .functor AND 1, L_0x1bd9a60, L_0x1bd88a0, C4<1>, C4<1>;
L_0x1b4aca0 .functor OR 1, L_0x1bd8e40, L_0x1bd8eb0, C4<0>, C4<0>;
v0x193b6c0_0 .net "A", 0 0, L_0x1bd9a60;  alias, 1 drivers
v0x193b7a0_0 .net "B", 0 0, L_0x1bd88a0;  alias, 1 drivers
v0x193b860_0 .net "carryin", 0 0, L_0x1bd8ae0;  alias, 1 drivers
v0x193b900_0 .net "carryout", 0 0, L_0x1b4aca0;  alias, 1 drivers
v0x193b9c0_0 .net "out1", 0 0, L_0x1bd89b0;  1 drivers
v0x193cee0_0 .net "out2", 0 0, L_0x1bd8e40;  1 drivers
v0x193cfa0_0 .net "out3", 0 0, L_0x1bd8eb0;  1 drivers
v0x193d060_0 .net "sum", 0 0, L_0x1bd8d30;  alias, 1 drivers
S_0x1970690 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b4b180 .functor AND 1, L_0x1bd9a60, L_0x1bd9b00, C4<1>, C4<1>;
v0x19708f0_0 .net "A", 0 0, L_0x1bd9a60;  alias, 1 drivers
v0x19709b0_0 .net "B", 0 0, L_0x1bd9b00;  alias, 1 drivers
v0x193d1c0_0 .net "out", 0 0, L_0x1b4b180;  1 drivers
S_0x194c7a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x194c9f0_0 .net "I", 7 0, L_0x1bd9740;  alias, 1 drivers
v0x194cab0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b49f60_0 .net "out", 0 0, L_0x1bd9430;  alias, 1 drivers
L_0x1bd9430 .part/v L_0x1bd9740, v0x1ab6bf0_0, 1;
S_0x1b4a000 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd92a0 .functor NAND 1, L_0x1bd9a60, L_0x1bd9b00, C4<1>, C4<1>;
v0x1b4a1d0_0 .net "A", 0 0, L_0x1bd9a60;  alias, 1 drivers
v0x1b4a2c0_0 .net "B", 0 0, L_0x1bd9b00;  alias, 1 drivers
v0x1b4a380_0 .net "out", 0 0, L_0x1bd92a0;  1 drivers
S_0x1b4a480 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd9310 .functor NOR 1, L_0x1bd9a60, L_0x1bd9b00, C4<0>, C4<0>;
v0x1b4a6f0_0 .net "A", 0 0, L_0x1bd9a60;  alias, 1 drivers
v0x1b4a7b0_0 .net "B", 0 0, L_0x1bd9b00;  alias, 1 drivers
v0x1b4a8c0_0 .net "out", 0 0, L_0x1bd9310;  1 drivers
S_0x1b4a9c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd93a0 .functor OR 1, L_0x1bd9a60, L_0x1bd9b00, C4<0>, C4<0>;
v0x1b4abe0_0 .net "A", 0 0, L_0x1bd9a60;  alias, 1 drivers
v0x1b4ad30_0 .net "B", 0 0, L_0x1bd9b00;  alias, 1 drivers
v0x1b4adf0_0 .net "out", 0 0, L_0x1bd93a0;  1 drivers
S_0x1b4aef0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd88a0 .functor XOR 1, L_0x1bd9b00, L_0x1bd8910, C4<0>, C4<0>;
v0x1b4b0c0_0 .net "A", 0 0, L_0x1bd9b00;  alias, 1 drivers
v0x1b4b210_0 .net "B", 0 0, L_0x1bd8910;  1 drivers
v0x1b4b2d0_0 .net "out", 0 0, L_0x1bd88a0;  alias, 1 drivers
S_0x1b4b410 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x193a1f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd9120 .functor XOR 1, L_0x1bd9a60, L_0x1bd9b00, C4<0>, C4<0>;
v0x1b4b5e0_0 .net "A", 0 0, L_0x1bd9a60;  alias, 1 drivers
v0x1b4b6a0_0 .net "B", 0 0, L_0x1bd9b00;  alias, 1 drivers
v0x1b4b760_0 .net "out", 0 0, L_0x1bd9120;  1 drivers
S_0x1b4c2b0 .scope module, "alu19" "ALU_1bit" 7 137, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bda7b0 .functor BUFZ 1, L_0x1bd9f10, C4<0>, C4<0>, C4<0>;
L_0x1bda840 .functor BUFZ 1, L_0x1bd9f10, C4<0>, C4<0>, C4<0>;
v0x1b4f220_0 .net "A", 0 0, L_0x1bdac80;  1 drivers
v0x1b4f2c0_0 .net "B", 0 0, L_0x1bd9ba0;  1 drivers
v0x1b4f380_0 .net "I", 7 0, L_0x1bda960;  1 drivers
v0x1b4f480_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b4f520_0 .net *"_s15", 0 0, L_0x1bda7b0;  1 drivers
v0x1b4f630_0 .net *"_s19", 0 0, L_0x1bda840;  1 drivers
L_0x7f3247f1b720 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b4f710_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b720;  1 drivers
v0x1b4f7f0_0 .net "addORsub", 0 0, L_0x1bd9f10;  1 drivers
v0x1b4f890_0 .net "carryin", 0 0, L_0x1bd9c40;  1 drivers
v0x1b4f9f0_0 .net "carryout", 0 0, L_0x1b4e630;  1 drivers
v0x1b4fac0_0 .net "modB", 0 0, L_0x1bd8c10;  1 drivers
v0x1b4fb60_0 .net "out", 0 0, L_0x1bda650;  1 drivers
L_0x1bd9d70 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bda960_0_0 .concat8 [ 1 1 1 1], L_0x1bda7b0, L_0x1bda840, L_0x1bda340, L_0x7f3247f1b720;
LS_0x1bda960_0_4 .concat8 [ 1 1 1 1], L_0x1b4eb10, L_0x1bda4c0, L_0x1bda530, L_0x1bda5c0;
L_0x1bda960 .concat8 [ 4 4 0 0], LS_0x1bda960_0_0, LS_0x1bda960_0_4;
S_0x1b4c520 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd9e10 .functor XOR 1, L_0x1bdac80, L_0x1bd8c10, C4<0>, C4<0>;
L_0x1bd9f10 .functor XOR 1, L_0x1bd9e10, L_0x1bd9c40, C4<0>, C4<0>;
L_0x1bda040 .functor AND 1, L_0x1bd9e10, L_0x1bd9c40, C4<1>, C4<1>;
L_0x1bda0d0 .functor AND 1, L_0x1bdac80, L_0x1bd8c10, C4<1>, C4<1>;
L_0x1b4e630 .functor OR 1, L_0x1bda040, L_0x1bda0d0, C4<0>, C4<0>;
v0x1b4c7c0_0 .net "A", 0 0, L_0x1bdac80;  alias, 1 drivers
v0x1b4c8a0_0 .net "B", 0 0, L_0x1bd8c10;  alias, 1 drivers
v0x1b4c960_0 .net "carryin", 0 0, L_0x1bd9c40;  alias, 1 drivers
v0x1b4ca30_0 .net "carryout", 0 0, L_0x1b4e630;  alias, 1 drivers
v0x1b4caf0_0 .net "out1", 0 0, L_0x1bd9e10;  1 drivers
v0x1b4cc00_0 .net "out2", 0 0, L_0x1bda040;  1 drivers
v0x1b4ccc0_0 .net "out3", 0 0, L_0x1bda0d0;  1 drivers
v0x1b4cd80_0 .net "sum", 0 0, L_0x1bd9f10;  alias, 1 drivers
S_0x1b4cee0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b4eb10 .functor AND 1, L_0x1bdac80, L_0x1bd9ba0, C4<1>, C4<1>;
v0x1b4d120_0 .net "A", 0 0, L_0x1bdac80;  alias, 1 drivers
v0x1b4d1e0_0 .net "B", 0 0, L_0x1bd9ba0;  alias, 1 drivers
v0x1b4d280_0 .net "out", 0 0, L_0x1b4eb10;  1 drivers
S_0x1b4d3d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b4d620_0 .net "I", 7 0, L_0x1bda960;  alias, 1 drivers
v0x1b4d700_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b4d7c0_0 .net "out", 0 0, L_0x1bda650;  alias, 1 drivers
L_0x1bda650 .part/v L_0x1bda960, v0x1ab6bf0_0, 1;
S_0x1b4d910 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bda4c0 .functor NAND 1, L_0x1bdac80, L_0x1bd9ba0, C4<1>, C4<1>;
v0x1b4db30_0 .net "A", 0 0, L_0x1bdac80;  alias, 1 drivers
v0x1b4dc40_0 .net "B", 0 0, L_0x1bd9ba0;  alias, 1 drivers
v0x1b4dd00_0 .net "out", 0 0, L_0x1bda4c0;  1 drivers
S_0x1b4de10 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bda530 .functor NOR 1, L_0x1bdac80, L_0x1bd9ba0, C4<0>, C4<0>;
v0x1b4e080_0 .net "A", 0 0, L_0x1bdac80;  alias, 1 drivers
v0x1b4e140_0 .net "B", 0 0, L_0x1bd9ba0;  alias, 1 drivers
v0x1b4e250_0 .net "out", 0 0, L_0x1bda530;  1 drivers
S_0x1b4e350 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bda5c0 .functor OR 1, L_0x1bdac80, L_0x1bd9ba0, C4<0>, C4<0>;
v0x1b4e570_0 .net "A", 0 0, L_0x1bdac80;  alias, 1 drivers
v0x1b4e6c0_0 .net "B", 0 0, L_0x1bd9ba0;  alias, 1 drivers
v0x1b4e780_0 .net "out", 0 0, L_0x1bda5c0;  1 drivers
S_0x1b4e880 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd8c10 .functor XOR 1, L_0x1bd9ba0, L_0x1bd9d70, C4<0>, C4<0>;
v0x1b4ea50_0 .net "A", 0 0, L_0x1bd9ba0;  alias, 1 drivers
v0x1b4eba0_0 .net "B", 0 0, L_0x1bd9d70;  1 drivers
v0x1b4ec60_0 .net "out", 0 0, L_0x1bd8c10;  alias, 1 drivers
S_0x1b4eda0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b4c2b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bda340 .functor XOR 1, L_0x1bdac80, L_0x1bd9ba0, C4<0>, C4<0>;
v0x1b4ef70_0 .net "A", 0 0, L_0x1bdac80;  alias, 1 drivers
v0x1b4f030_0 .net "B", 0 0, L_0x1bd9ba0;  alias, 1 drivers
v0x1b4f0f0_0 .net "out", 0 0, L_0x1bda340;  1 drivers
S_0x1b4fc80 .scope module, "alu2" "ALU_1bit" 7 120, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bc6f60 .functor BUFZ 1, L_0x1bc6730, C4<0>, C4<0>, C4<0>;
L_0x1bc6ff0 .functor BUFZ 1, L_0x1bc6730, C4<0>, C4<0>, C4<0>;
v0x1b52bf0_0 .net "A", 0 0, L_0x1bc74c0;  1 drivers
v0x1b52c90_0 .net "B", 0 0, L_0x1bc7560;  1 drivers
v0x1b52d50_0 .net "I", 7 0, L_0x1bc7110;  1 drivers
v0x1b52e50_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b52ef0_0 .net *"_s15", 0 0, L_0x1bc6f60;  1 drivers
v0x1b53000_0 .net *"_s19", 0 0, L_0x1bc6ff0;  1 drivers
L_0x7f3247f1b258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b530e0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b258;  1 drivers
v0x1b531c0_0 .net "addORsub", 0 0, L_0x1bc6730;  1 drivers
v0x1b53260_0 .net "carryin", 0 0, L_0x1bc7600;  1 drivers
v0x1b533c0_0 .net "carryout", 0 0, L_0x1b52000;  1 drivers
v0x1b53490_0 .net "modB", 0 0, L_0x1bc6520;  1 drivers
v0x1b53530_0 .net "out", 0 0, L_0x1bc6e00;  1 drivers
L_0x1bc6590 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bc7110_0_0 .concat8 [ 1 1 1 1], L_0x1bc6f60, L_0x1bc6ff0, L_0x1bc6af0, L_0x7f3247f1b258;
LS_0x1bc7110_0_4 .concat8 [ 1 1 1 1], L_0x1b524e0, L_0x1bc6c70, L_0x1bc6ce0, L_0x1bc6d70;
L_0x1bc7110 .concat8 [ 4 4 0 0], LS_0x1bc7110_0_0, LS_0x1bc7110_0_4;
S_0x1b4fef0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bc6630 .functor XOR 1, L_0x1bc74c0, L_0x1bc6520, C4<0>, C4<0>;
L_0x1bc6730 .functor XOR 1, L_0x1bc6630, L_0x1bc7600, C4<0>, C4<0>;
L_0x1bc67f0 .functor AND 1, L_0x1bc6630, L_0x1bc7600, C4<1>, C4<1>;
L_0x1bc6880 .functor AND 1, L_0x1bc74c0, L_0x1bc6520, C4<1>, C4<1>;
L_0x1b52000 .functor OR 1, L_0x1bc67f0, L_0x1bc6880, C4<0>, C4<0>;
v0x1b50190_0 .net "A", 0 0, L_0x1bc74c0;  alias, 1 drivers
v0x1b50270_0 .net "B", 0 0, L_0x1bc6520;  alias, 1 drivers
v0x1b50330_0 .net "carryin", 0 0, L_0x1bc7600;  alias, 1 drivers
v0x1b50400_0 .net "carryout", 0 0, L_0x1b52000;  alias, 1 drivers
v0x1b504c0_0 .net "out1", 0 0, L_0x1bc6630;  1 drivers
v0x1b505d0_0 .net "out2", 0 0, L_0x1bc67f0;  1 drivers
v0x1b50690_0 .net "out3", 0 0, L_0x1bc6880;  1 drivers
v0x1b50750_0 .net "sum", 0 0, L_0x1bc6730;  alias, 1 drivers
S_0x1b508b0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b524e0 .functor AND 1, L_0x1bc74c0, L_0x1bc7560, C4<1>, C4<1>;
v0x1b50af0_0 .net "A", 0 0, L_0x1bc74c0;  alias, 1 drivers
v0x1b50bb0_0 .net "B", 0 0, L_0x1bc7560;  alias, 1 drivers
v0x1b50c50_0 .net "out", 0 0, L_0x1b524e0;  1 drivers
S_0x1b50da0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b50ff0_0 .net "I", 7 0, L_0x1bc7110;  alias, 1 drivers
v0x1b510d0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b51190_0 .net "out", 0 0, L_0x1bc6e00;  alias, 1 drivers
L_0x1bc6e00 .part/v L_0x1bc7110, v0x1ab6bf0_0, 1;
S_0x1b512e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc6c70 .functor NAND 1, L_0x1bc74c0, L_0x1bc7560, C4<1>, C4<1>;
v0x1b51500_0 .net "A", 0 0, L_0x1bc74c0;  alias, 1 drivers
v0x1b51610_0 .net "B", 0 0, L_0x1bc7560;  alias, 1 drivers
v0x1b516d0_0 .net "out", 0 0, L_0x1bc6c70;  1 drivers
S_0x1b517e0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc6ce0 .functor NOR 1, L_0x1bc74c0, L_0x1bc7560, C4<0>, C4<0>;
v0x1b51a50_0 .net "A", 0 0, L_0x1bc74c0;  alias, 1 drivers
v0x1b51b10_0 .net "B", 0 0, L_0x1bc7560;  alias, 1 drivers
v0x1b51c20_0 .net "out", 0 0, L_0x1bc6ce0;  1 drivers
S_0x1b51d20 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc6d70 .functor OR 1, L_0x1bc74c0, L_0x1bc7560, C4<0>, C4<0>;
v0x1b51f40_0 .net "A", 0 0, L_0x1bc74c0;  alias, 1 drivers
v0x1b52090_0 .net "B", 0 0, L_0x1bc7560;  alias, 1 drivers
v0x1b52150_0 .net "out", 0 0, L_0x1bc6d70;  1 drivers
S_0x1b52250 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc6520 .functor XOR 1, L_0x1bc7560, L_0x1bc6590, C4<0>, C4<0>;
v0x1b52420_0 .net "A", 0 0, L_0x1bc7560;  alias, 1 drivers
v0x1b52570_0 .net "B", 0 0, L_0x1bc6590;  1 drivers
v0x1b52630_0 .net "out", 0 0, L_0x1bc6520;  alias, 1 drivers
S_0x1b52770 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b4fc80;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc6af0 .functor XOR 1, L_0x1bc74c0, L_0x1bc7560, C4<0>, C4<0>;
v0x1b52940_0 .net "A", 0 0, L_0x1bc74c0;  alias, 1 drivers
v0x1b52a00_0 .net "B", 0 0, L_0x1bc7560;  alias, 1 drivers
v0x1b52ac0_0 .net "out", 0 0, L_0x1bc6af0;  1 drivers
S_0x1b53650 .scope module, "alu20" "ALU_1bit" 7 138, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bdb9e0 .functor BUFZ 1, L_0x1bdb140, C4<0>, C4<0>, C4<0>;
L_0x1bdba70 .functor BUFZ 1, L_0x1bdb140, C4<0>, C4<0>, C4<0>;
v0x1b565c0_0 .net "A", 0 0, L_0x1bdbeb0;  1 drivers
v0x1b56660_0 .net "B", 0 0, L_0x1bdbf50;  1 drivers
v0x1b56720_0 .net "I", 7 0, L_0x1bdbb90;  1 drivers
v0x1b56820_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b568c0_0 .net *"_s15", 0 0, L_0x1bdb9e0;  1 drivers
v0x1b569d0_0 .net *"_s19", 0 0, L_0x1bdba70;  1 drivers
L_0x7f3247f1b768 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b56ab0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b768;  1 drivers
v0x1b56b90_0 .net "addORsub", 0 0, L_0x1bdb140;  1 drivers
v0x1b56c30_0 .net "carryin", 0 0, L_0x1bdad20;  1 drivers
v0x1b56d90_0 .net "carryout", 0 0, L_0x1b559d0;  1 drivers
v0x1b56e60_0 .net "modB", 0 0, L_0x1bdaf10;  1 drivers
v0x1b56f00_0 .net "out", 0 0, L_0x1bdb880;  1 drivers
L_0x1bdaf80 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bdbb90_0_0 .concat8 [ 1 1 1 1], L_0x1bdb9e0, L_0x1bdba70, L_0x1bdb570, L_0x7f3247f1b768;
LS_0x1bdbb90_0_4 .concat8 [ 1 1 1 1], L_0x1b55eb0, L_0x1bdb6f0, L_0x1bdb760, L_0x1bdb7f0;
L_0x1bdbb90 .concat8 [ 4 4 0 0], LS_0x1bdbb90_0_0, LS_0x1bdbb90_0_4;
S_0x1b538c0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bdb020 .functor XOR 1, L_0x1bdbeb0, L_0x1bdaf10, C4<0>, C4<0>;
L_0x1bdb140 .functor XOR 1, L_0x1bdb020, L_0x1bdad20, C4<0>, C4<0>;
L_0x1bdb270 .functor AND 1, L_0x1bdb020, L_0x1bdad20, C4<1>, C4<1>;
L_0x1bdb300 .functor AND 1, L_0x1bdbeb0, L_0x1bdaf10, C4<1>, C4<1>;
L_0x1b559d0 .functor OR 1, L_0x1bdb270, L_0x1bdb300, C4<0>, C4<0>;
v0x1b53b60_0 .net "A", 0 0, L_0x1bdbeb0;  alias, 1 drivers
v0x1b53c40_0 .net "B", 0 0, L_0x1bdaf10;  alias, 1 drivers
v0x1b53d00_0 .net "carryin", 0 0, L_0x1bdad20;  alias, 1 drivers
v0x1b53dd0_0 .net "carryout", 0 0, L_0x1b559d0;  alias, 1 drivers
v0x1b53e90_0 .net "out1", 0 0, L_0x1bdb020;  1 drivers
v0x1b53fa0_0 .net "out2", 0 0, L_0x1bdb270;  1 drivers
v0x1b54060_0 .net "out3", 0 0, L_0x1bdb300;  1 drivers
v0x1b54120_0 .net "sum", 0 0, L_0x1bdb140;  alias, 1 drivers
S_0x1b54280 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b55eb0 .functor AND 1, L_0x1bdbeb0, L_0x1bdbf50, C4<1>, C4<1>;
v0x1b544c0_0 .net "A", 0 0, L_0x1bdbeb0;  alias, 1 drivers
v0x1b54580_0 .net "B", 0 0, L_0x1bdbf50;  alias, 1 drivers
v0x1b54620_0 .net "out", 0 0, L_0x1b55eb0;  1 drivers
S_0x1b54770 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b549c0_0 .net "I", 7 0, L_0x1bdbb90;  alias, 1 drivers
v0x1b54aa0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b54b60_0 .net "out", 0 0, L_0x1bdb880;  alias, 1 drivers
L_0x1bdb880 .part/v L_0x1bdbb90, v0x1ab6bf0_0, 1;
S_0x1b54cb0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdb6f0 .functor NAND 1, L_0x1bdbeb0, L_0x1bdbf50, C4<1>, C4<1>;
v0x1b54ed0_0 .net "A", 0 0, L_0x1bdbeb0;  alias, 1 drivers
v0x1b54fe0_0 .net "B", 0 0, L_0x1bdbf50;  alias, 1 drivers
v0x1b550a0_0 .net "out", 0 0, L_0x1bdb6f0;  1 drivers
S_0x1b551b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdb760 .functor NOR 1, L_0x1bdbeb0, L_0x1bdbf50, C4<0>, C4<0>;
v0x1b55420_0 .net "A", 0 0, L_0x1bdbeb0;  alias, 1 drivers
v0x1b554e0_0 .net "B", 0 0, L_0x1bdbf50;  alias, 1 drivers
v0x1b555f0_0 .net "out", 0 0, L_0x1bdb760;  1 drivers
S_0x1b556f0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdb7f0 .functor OR 1, L_0x1bdbeb0, L_0x1bdbf50, C4<0>, C4<0>;
v0x1b55910_0 .net "A", 0 0, L_0x1bdbeb0;  alias, 1 drivers
v0x1b55a60_0 .net "B", 0 0, L_0x1bdbf50;  alias, 1 drivers
v0x1b55b20_0 .net "out", 0 0, L_0x1bdb7f0;  1 drivers
S_0x1b55c20 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdaf10 .functor XOR 1, L_0x1bdbf50, L_0x1bdaf80, C4<0>, C4<0>;
v0x1b55df0_0 .net "A", 0 0, L_0x1bdbf50;  alias, 1 drivers
v0x1b55f40_0 .net "B", 0 0, L_0x1bdaf80;  1 drivers
v0x1b56000_0 .net "out", 0 0, L_0x1bdaf10;  alias, 1 drivers
S_0x1b56140 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b53650;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdb570 .functor XOR 1, L_0x1bdbeb0, L_0x1bdbf50, C4<0>, C4<0>;
v0x1b56310_0 .net "A", 0 0, L_0x1bdbeb0;  alias, 1 drivers
v0x1b563d0_0 .net "B", 0 0, L_0x1bdbf50;  alias, 1 drivers
v0x1b56490_0 .net "out", 0 0, L_0x1bdb570;  1 drivers
S_0x1b57020 .scope module, "alu21" "ALU_1bit" 7 139, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bdcc10 .functor BUFZ 1, L_0x1bdc390, C4<0>, C4<0>, C4<0>;
L_0x1bdcca0 .functor BUFZ 1, L_0x1bdc390, C4<0>, C4<0>, C4<0>;
v0x1b59f90_0 .net "A", 0 0, L_0x1bdd0e0;  1 drivers
v0x1b5a030_0 .net "B", 0 0, L_0x1bdbff0;  1 drivers
v0x1b5a0f0_0 .net "I", 7 0, L_0x1bdcdc0;  1 drivers
v0x1b5a1f0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b5a290_0 .net *"_s15", 0 0, L_0x1bdcc10;  1 drivers
v0x1b5a3a0_0 .net *"_s19", 0 0, L_0x1bdcca0;  1 drivers
L_0x7f3247f1b7b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b5a480_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b7b0;  1 drivers
v0x1b5a560_0 .net "addORsub", 0 0, L_0x1bdc390;  1 drivers
v0x1b5a600_0 .net "carryin", 0 0, L_0x1bdc090;  1 drivers
v0x1b5a760_0 .net "carryout", 0 0, L_0x1b593a0;  1 drivers
v0x1b5a830_0 .net "modB", 0 0, L_0x1bdae50;  1 drivers
v0x1b5a8d0_0 .net "out", 0 0, L_0x1bdcab0;  1 drivers
L_0x1bdc1f0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bdcdc0_0_0 .concat8 [ 1 1 1 1], L_0x1bdcc10, L_0x1bdcca0, L_0x1bdc7a0, L_0x7f3247f1b7b0;
LS_0x1bdcdc0_0_4 .concat8 [ 1 1 1 1], L_0x1b59880, L_0x1bdc920, L_0x1bdc990, L_0x1bdca20;
L_0x1bdcdc0 .concat8 [ 4 4 0 0], LS_0x1bdcdc0_0_0, LS_0x1bdcdc0_0_4;
S_0x1b57290 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bdc290 .functor XOR 1, L_0x1bdd0e0, L_0x1bdae50, C4<0>, C4<0>;
L_0x1bdc390 .functor XOR 1, L_0x1bdc290, L_0x1bdc090, C4<0>, C4<0>;
L_0x1bdc4a0 .functor AND 1, L_0x1bdc290, L_0x1bdc090, C4<1>, C4<1>;
L_0x1bdc530 .functor AND 1, L_0x1bdd0e0, L_0x1bdae50, C4<1>, C4<1>;
L_0x1b593a0 .functor OR 1, L_0x1bdc4a0, L_0x1bdc530, C4<0>, C4<0>;
v0x1b57530_0 .net "A", 0 0, L_0x1bdd0e0;  alias, 1 drivers
v0x1b57610_0 .net "B", 0 0, L_0x1bdae50;  alias, 1 drivers
v0x1b576d0_0 .net "carryin", 0 0, L_0x1bdc090;  alias, 1 drivers
v0x1b577a0_0 .net "carryout", 0 0, L_0x1b593a0;  alias, 1 drivers
v0x1b57860_0 .net "out1", 0 0, L_0x1bdc290;  1 drivers
v0x1b57970_0 .net "out2", 0 0, L_0x1bdc4a0;  1 drivers
v0x1b57a30_0 .net "out3", 0 0, L_0x1bdc530;  1 drivers
v0x1b57af0_0 .net "sum", 0 0, L_0x1bdc390;  alias, 1 drivers
S_0x1b57c50 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b59880 .functor AND 1, L_0x1bdd0e0, L_0x1bdbff0, C4<1>, C4<1>;
v0x1b57e90_0 .net "A", 0 0, L_0x1bdd0e0;  alias, 1 drivers
v0x1b57f50_0 .net "B", 0 0, L_0x1bdbff0;  alias, 1 drivers
v0x1b57ff0_0 .net "out", 0 0, L_0x1b59880;  1 drivers
S_0x1b58140 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b58390_0 .net "I", 7 0, L_0x1bdcdc0;  alias, 1 drivers
v0x1b58470_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b58530_0 .net "out", 0 0, L_0x1bdcab0;  alias, 1 drivers
L_0x1bdcab0 .part/v L_0x1bdcdc0, v0x1ab6bf0_0, 1;
S_0x1b58680 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdc920 .functor NAND 1, L_0x1bdd0e0, L_0x1bdbff0, C4<1>, C4<1>;
v0x1b588a0_0 .net "A", 0 0, L_0x1bdd0e0;  alias, 1 drivers
v0x1b589b0_0 .net "B", 0 0, L_0x1bdbff0;  alias, 1 drivers
v0x1b58a70_0 .net "out", 0 0, L_0x1bdc920;  1 drivers
S_0x1b58b80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdc990 .functor NOR 1, L_0x1bdd0e0, L_0x1bdbff0, C4<0>, C4<0>;
v0x1b58df0_0 .net "A", 0 0, L_0x1bdd0e0;  alias, 1 drivers
v0x1b58eb0_0 .net "B", 0 0, L_0x1bdbff0;  alias, 1 drivers
v0x1b58fc0_0 .net "out", 0 0, L_0x1bdc990;  1 drivers
S_0x1b590c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdca20 .functor OR 1, L_0x1bdd0e0, L_0x1bdbff0, C4<0>, C4<0>;
v0x1b592e0_0 .net "A", 0 0, L_0x1bdd0e0;  alias, 1 drivers
v0x1b59430_0 .net "B", 0 0, L_0x1bdbff0;  alias, 1 drivers
v0x1b594f0_0 .net "out", 0 0, L_0x1bdca20;  1 drivers
S_0x1b595f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdae50 .functor XOR 1, L_0x1bdbff0, L_0x1bdc1f0, C4<0>, C4<0>;
v0x1b597c0_0 .net "A", 0 0, L_0x1bdbff0;  alias, 1 drivers
v0x1b59910_0 .net "B", 0 0, L_0x1bdc1f0;  1 drivers
v0x1b599d0_0 .net "out", 0 0, L_0x1bdae50;  alias, 1 drivers
S_0x1b59b10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b57020;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdc7a0 .functor XOR 1, L_0x1bdd0e0, L_0x1bdbff0, C4<0>, C4<0>;
v0x1b59ce0_0 .net "A", 0 0, L_0x1bdd0e0;  alias, 1 drivers
v0x1b59da0_0 .net "B", 0 0, L_0x1bdbff0;  alias, 1 drivers
v0x1b59e60_0 .net "out", 0 0, L_0x1bdc7a0;  1 drivers
S_0x1b5a9f0 .scope module, "alu22" "ALU_1bit" 7 140, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bdde50 .functor BUFZ 1, L_0x1bdd5b0, C4<0>, C4<0>, C4<0>;
L_0x1bddee0 .functor BUFZ 1, L_0x1bdd5b0, C4<0>, C4<0>, C4<0>;
v0x1b5d960_0 .net "A", 0 0, L_0x1bde320;  1 drivers
v0x1b5da00_0 .net "B", 0 0, L_0x1bde3c0;  1 drivers
v0x1b5dac0_0 .net "I", 7 0, L_0x1bde000;  1 drivers
v0x1b5dbc0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b31850_0 .net *"_s15", 0 0, L_0x1bdde50;  1 drivers
v0x1b31960_0 .net *"_s19", 0 0, L_0x1bddee0;  1 drivers
L_0x7f3247f1b7f8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b5e070_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b7f8;  1 drivers
v0x1b5e110_0 .net "addORsub", 0 0, L_0x1bdd5b0;  1 drivers
v0x1b5e1b0_0 .net "carryin", 0 0, L_0x1bdd180;  1 drivers
v0x1b5e2e0_0 .net "carryout", 0 0, L_0x1b5cd70;  1 drivers
v0x1b5e380_0 .net "modB", 0 0, L_0x1bdd3a0;  1 drivers
v0x1b5e420_0 .net "out", 0 0, L_0x1bddcf0;  1 drivers
L_0x1bdd410 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bde000_0_0 .concat8 [ 1 1 1 1], L_0x1bdde50, L_0x1bddee0, L_0x1bdd9e0, L_0x7f3247f1b7f8;
LS_0x1bde000_0_4 .concat8 [ 1 1 1 1], L_0x1b5d250, L_0x1bddb60, L_0x1bddbd0, L_0x1bddc60;
L_0x1bde000 .concat8 [ 4 4 0 0], LS_0x1bde000_0_0, LS_0x1bde000_0_4;
S_0x1b5ac60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bdd4b0 .functor XOR 1, L_0x1bde320, L_0x1bdd3a0, C4<0>, C4<0>;
L_0x1bdd5b0 .functor XOR 1, L_0x1bdd4b0, L_0x1bdd180, C4<0>, C4<0>;
L_0x1bdd6e0 .functor AND 1, L_0x1bdd4b0, L_0x1bdd180, C4<1>, C4<1>;
L_0x1bdd770 .functor AND 1, L_0x1bde320, L_0x1bdd3a0, C4<1>, C4<1>;
L_0x1b5cd70 .functor OR 1, L_0x1bdd6e0, L_0x1bdd770, C4<0>, C4<0>;
v0x1b5af00_0 .net "A", 0 0, L_0x1bde320;  alias, 1 drivers
v0x1b5afe0_0 .net "B", 0 0, L_0x1bdd3a0;  alias, 1 drivers
v0x1b5b0a0_0 .net "carryin", 0 0, L_0x1bdd180;  alias, 1 drivers
v0x1b5b170_0 .net "carryout", 0 0, L_0x1b5cd70;  alias, 1 drivers
v0x1b5b230_0 .net "out1", 0 0, L_0x1bdd4b0;  1 drivers
v0x1b5b340_0 .net "out2", 0 0, L_0x1bdd6e0;  1 drivers
v0x1b5b400_0 .net "out3", 0 0, L_0x1bdd770;  1 drivers
v0x1b5b4c0_0 .net "sum", 0 0, L_0x1bdd5b0;  alias, 1 drivers
S_0x1b5b620 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b5d250 .functor AND 1, L_0x1bde320, L_0x1bde3c0, C4<1>, C4<1>;
v0x1b5b860_0 .net "A", 0 0, L_0x1bde320;  alias, 1 drivers
v0x1b5b920_0 .net "B", 0 0, L_0x1bde3c0;  alias, 1 drivers
v0x1b5b9c0_0 .net "out", 0 0, L_0x1b5d250;  1 drivers
S_0x1b5bb10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b5bd60_0 .net "I", 7 0, L_0x1bde000;  alias, 1 drivers
v0x1b5be40_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b5bf00_0 .net "out", 0 0, L_0x1bddcf0;  alias, 1 drivers
L_0x1bddcf0 .part/v L_0x1bde000, v0x1ab6bf0_0, 1;
S_0x1b5c050 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bddb60 .functor NAND 1, L_0x1bde320, L_0x1bde3c0, C4<1>, C4<1>;
v0x1b5c270_0 .net "A", 0 0, L_0x1bde320;  alias, 1 drivers
v0x1b5c380_0 .net "B", 0 0, L_0x1bde3c0;  alias, 1 drivers
v0x1b5c440_0 .net "out", 0 0, L_0x1bddb60;  1 drivers
S_0x1b5c550 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bddbd0 .functor NOR 1, L_0x1bde320, L_0x1bde3c0, C4<0>, C4<0>;
v0x1b5c7c0_0 .net "A", 0 0, L_0x1bde320;  alias, 1 drivers
v0x1b5c880_0 .net "B", 0 0, L_0x1bde3c0;  alias, 1 drivers
v0x1b5c990_0 .net "out", 0 0, L_0x1bddbd0;  1 drivers
S_0x1b5ca90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bddc60 .functor OR 1, L_0x1bde320, L_0x1bde3c0, C4<0>, C4<0>;
v0x1b5ccb0_0 .net "A", 0 0, L_0x1bde320;  alias, 1 drivers
v0x1b5ce00_0 .net "B", 0 0, L_0x1bde3c0;  alias, 1 drivers
v0x1b5cec0_0 .net "out", 0 0, L_0x1bddc60;  1 drivers
S_0x1b5cfc0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdd3a0 .functor XOR 1, L_0x1bde3c0, L_0x1bdd410, C4<0>, C4<0>;
v0x1b5d190_0 .net "A", 0 0, L_0x1bde3c0;  alias, 1 drivers
v0x1b5d2e0_0 .net "B", 0 0, L_0x1bdd410;  1 drivers
v0x1b5d3a0_0 .net "out", 0 0, L_0x1bdd3a0;  alias, 1 drivers
S_0x1b5d4e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b5a9f0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdd9e0 .functor XOR 1, L_0x1bde320, L_0x1bde3c0, C4<0>, C4<0>;
v0x1b5d6b0_0 .net "A", 0 0, L_0x1bde320;  alias, 1 drivers
v0x1b5d770_0 .net "B", 0 0, L_0x1bde3c0;  alias, 1 drivers
v0x1b5d830_0 .net "out", 0 0, L_0x1bdd9e0;  1 drivers
S_0x1b5e520 .scope module, "alu23" "ALU_1bit" 7 141, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bdf080 .functor BUFZ 1, L_0x1bde7e0, C4<0>, C4<0>, C4<0>;
L_0x1bdf110 .functor BUFZ 1, L_0x1bde7e0, C4<0>, C4<0>, C4<0>;
v0x1b61510_0 .net "A", 0 0, L_0x1bdf550;  1 drivers
v0x1b615b0_0 .net "B", 0 0, L_0x1bde460;  1 drivers
v0x1b61670_0 .net "I", 7 0, L_0x1bdf230;  1 drivers
v0x1b61770_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b61810_0 .net *"_s15", 0 0, L_0x1bdf080;  1 drivers
v0x1b61920_0 .net *"_s19", 0 0, L_0x1bdf110;  1 drivers
L_0x7f3247f1b840 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b61a00_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b840;  1 drivers
v0x1b61ae0_0 .net "addORsub", 0 0, L_0x1bde7e0;  1 drivers
v0x1b61b80_0 .net "carryin", 0 0, L_0x1bde500;  1 drivers
v0x1b61ce0_0 .net "carryout", 0 0, L_0x1b60920;  1 drivers
v0x1b61db0_0 .net "modB", 0 0, L_0x1bdd2b0;  1 drivers
v0x1b61e50_0 .net "out", 0 0, L_0x1bdef20;  1 drivers
L_0x1bde690 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bdf230_0_0 .concat8 [ 1 1 1 1], L_0x1bdf080, L_0x1bdf110, L_0x1bdec10, L_0x7f3247f1b840;
LS_0x1bdf230_0_4 .concat8 [ 1 1 1 1], L_0x1b60e00, L_0x1bded90, L_0x1bdee00, L_0x1bdee90;
L_0x1bdf230 .concat8 [ 4 4 0 0], LS_0x1bdf230_0_0, LS_0x1bdf230_0_4;
S_0x1b5e8a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bdd320 .functor XOR 1, L_0x1bdf550, L_0x1bdd2b0, C4<0>, C4<0>;
L_0x1bde7e0 .functor XOR 1, L_0x1bdd320, L_0x1bde500, C4<0>, C4<0>;
L_0x1bde910 .functor AND 1, L_0x1bdd320, L_0x1bde500, C4<1>, C4<1>;
L_0x1bde9a0 .functor AND 1, L_0x1bdf550, L_0x1bdd2b0, C4<1>, C4<1>;
L_0x1b60920 .functor OR 1, L_0x1bde910, L_0x1bde9a0, C4<0>, C4<0>;
v0x1b5ead0_0 .net "A", 0 0, L_0x1bdf550;  alias, 1 drivers
v0x1b5eb90_0 .net "B", 0 0, L_0x1bdd2b0;  alias, 1 drivers
v0x1b5ec50_0 .net "carryin", 0 0, L_0x1bde500;  alias, 1 drivers
v0x1b5ed20_0 .net "carryout", 0 0, L_0x1b60920;  alias, 1 drivers
v0x1b5ede0_0 .net "out1", 0 0, L_0x1bdd320;  1 drivers
v0x1b5eef0_0 .net "out2", 0 0, L_0x1bde910;  1 drivers
v0x1b5efb0_0 .net "out3", 0 0, L_0x1bde9a0;  1 drivers
v0x1b5f070_0 .net "sum", 0 0, L_0x1bde7e0;  alias, 1 drivers
S_0x1b5f1d0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b60e00 .functor AND 1, L_0x1bdf550, L_0x1bde460, C4<1>, C4<1>;
v0x1b5f410_0 .net "A", 0 0, L_0x1bdf550;  alias, 1 drivers
v0x1b5f4d0_0 .net "B", 0 0, L_0x1bde460;  alias, 1 drivers
v0x1b5f570_0 .net "out", 0 0, L_0x1b60e00;  1 drivers
S_0x1b5f6c0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b5f910_0 .net "I", 7 0, L_0x1bdf230;  alias, 1 drivers
v0x1b5f9f0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b5fab0_0 .net "out", 0 0, L_0x1bdef20;  alias, 1 drivers
L_0x1bdef20 .part/v L_0x1bdf230, v0x1ab6bf0_0, 1;
S_0x1b5fc00 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bded90 .functor NAND 1, L_0x1bdf550, L_0x1bde460, C4<1>, C4<1>;
v0x1b5fe20_0 .net "A", 0 0, L_0x1bdf550;  alias, 1 drivers
v0x1b5ff30_0 .net "B", 0 0, L_0x1bde460;  alias, 1 drivers
v0x1b5fff0_0 .net "out", 0 0, L_0x1bded90;  1 drivers
S_0x1b60100 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdee00 .functor NOR 1, L_0x1bdf550, L_0x1bde460, C4<0>, C4<0>;
v0x1b60370_0 .net "A", 0 0, L_0x1bdf550;  alias, 1 drivers
v0x1b60430_0 .net "B", 0 0, L_0x1bde460;  alias, 1 drivers
v0x1b60540_0 .net "out", 0 0, L_0x1bdee00;  1 drivers
S_0x1b60640 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdee90 .functor OR 1, L_0x1bdf550, L_0x1bde460, C4<0>, C4<0>;
v0x1b60860_0 .net "A", 0 0, L_0x1bdf550;  alias, 1 drivers
v0x1b609b0_0 .net "B", 0 0, L_0x1bde460;  alias, 1 drivers
v0x1b60a70_0 .net "out", 0 0, L_0x1bdee90;  1 drivers
S_0x1b60b70 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdd2b0 .functor XOR 1, L_0x1bde460, L_0x1bde690, C4<0>, C4<0>;
v0x1b60d40_0 .net "A", 0 0, L_0x1bde460;  alias, 1 drivers
v0x1b60e90_0 .net "B", 0 0, L_0x1bde690;  1 drivers
v0x1b60f50_0 .net "out", 0 0, L_0x1bdd2b0;  alias, 1 drivers
S_0x1b61090 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b5e520;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdec10 .functor XOR 1, L_0x1bdf550, L_0x1bde460, C4<0>, C4<0>;
v0x1b61260_0 .net "A", 0 0, L_0x1bdf550;  alias, 1 drivers
v0x1b61320_0 .net "B", 0 0, L_0x1bde460;  alias, 1 drivers
v0x1b613e0_0 .net "out", 0 0, L_0x1bdec10;  1 drivers
S_0x1b61f70 .scope module, "alu24" "ALU_1bit" 7 142, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1be02b0 .functor BUFZ 1, L_0x1bdfa50, C4<0>, C4<0>, C4<0>;
L_0x1be0340 .functor BUFZ 1, L_0x1bdfa50, C4<0>, C4<0>, C4<0>;
v0x1b64ee0_0 .net "A", 0 0, L_0x1be0780;  1 drivers
v0x1b64f80_0 .net "B", 0 0, L_0x1be0820;  1 drivers
v0x1b65040_0 .net "I", 7 0, L_0x1be0460;  1 drivers
v0x1b65140_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b651e0_0 .net *"_s15", 0 0, L_0x1be02b0;  1 drivers
v0x1b652f0_0 .net *"_s19", 0 0, L_0x1be0340;  1 drivers
L_0x7f3247f1b888 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b653d0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b888;  1 drivers
v0x1b654b0_0 .net "addORsub", 0 0, L_0x1bdfa50;  1 drivers
v0x1b65550_0 .net "carryin", 0 0, L_0x1bdf5f0;  1 drivers
v0x1b656b0_0 .net "carryout", 0 0, L_0x1b642f0;  1 drivers
v0x1b65780_0 .net "modB", 0 0, L_0x1bdf840;  1 drivers
v0x1b65820_0 .net "out", 0 0, L_0x1be0150;  1 drivers
L_0x1bdf8b0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be0460_0_0 .concat8 [ 1 1 1 1], L_0x1be02b0, L_0x1be0340, L_0x1bdfe40, L_0x7f3247f1b888;
LS_0x1be0460_0_4 .concat8 [ 1 1 1 1], L_0x1b647d0, L_0x1bdffc0, L_0x1be0030, L_0x1be00c0;
L_0x1be0460 .concat8 [ 4 4 0 0], LS_0x1be0460_0_0, LS_0x1be0460_0_4;
S_0x1b621e0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bdf950 .functor XOR 1, L_0x1be0780, L_0x1bdf840, C4<0>, C4<0>;
L_0x1bdfa50 .functor XOR 1, L_0x1bdf950, L_0x1bdf5f0, C4<0>, C4<0>;
L_0x1bdfb60 .functor AND 1, L_0x1bdf950, L_0x1bdf5f0, C4<1>, C4<1>;
L_0x1bdfbd0 .functor AND 1, L_0x1be0780, L_0x1bdf840, C4<1>, C4<1>;
L_0x1b642f0 .functor OR 1, L_0x1bdfb60, L_0x1bdfbd0, C4<0>, C4<0>;
v0x1b62480_0 .net "A", 0 0, L_0x1be0780;  alias, 1 drivers
v0x1b62560_0 .net "B", 0 0, L_0x1bdf840;  alias, 1 drivers
v0x1b62620_0 .net "carryin", 0 0, L_0x1bdf5f0;  alias, 1 drivers
v0x1b626f0_0 .net "carryout", 0 0, L_0x1b642f0;  alias, 1 drivers
v0x1b627b0_0 .net "out1", 0 0, L_0x1bdf950;  1 drivers
v0x1b628c0_0 .net "out2", 0 0, L_0x1bdfb60;  1 drivers
v0x1b62980_0 .net "out3", 0 0, L_0x1bdfbd0;  1 drivers
v0x1b62a40_0 .net "sum", 0 0, L_0x1bdfa50;  alias, 1 drivers
S_0x1b62ba0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b647d0 .functor AND 1, L_0x1be0780, L_0x1be0820, C4<1>, C4<1>;
v0x1b62de0_0 .net "A", 0 0, L_0x1be0780;  alias, 1 drivers
v0x1b62ea0_0 .net "B", 0 0, L_0x1be0820;  alias, 1 drivers
v0x1b62f40_0 .net "out", 0 0, L_0x1b647d0;  1 drivers
S_0x1b63090 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b632e0_0 .net "I", 7 0, L_0x1be0460;  alias, 1 drivers
v0x1b633c0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b63480_0 .net "out", 0 0, L_0x1be0150;  alias, 1 drivers
L_0x1be0150 .part/v L_0x1be0460, v0x1ab6bf0_0, 1;
S_0x1b635d0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdffc0 .functor NAND 1, L_0x1be0780, L_0x1be0820, C4<1>, C4<1>;
v0x1b637f0_0 .net "A", 0 0, L_0x1be0780;  alias, 1 drivers
v0x1b63900_0 .net "B", 0 0, L_0x1be0820;  alias, 1 drivers
v0x1b639c0_0 .net "out", 0 0, L_0x1bdffc0;  1 drivers
S_0x1b63ad0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be0030 .functor NOR 1, L_0x1be0780, L_0x1be0820, C4<0>, C4<0>;
v0x1b63d40_0 .net "A", 0 0, L_0x1be0780;  alias, 1 drivers
v0x1b63e00_0 .net "B", 0 0, L_0x1be0820;  alias, 1 drivers
v0x1b63f10_0 .net "out", 0 0, L_0x1be0030;  1 drivers
S_0x1b64010 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be00c0 .functor OR 1, L_0x1be0780, L_0x1be0820, C4<0>, C4<0>;
v0x1b64230_0 .net "A", 0 0, L_0x1be0780;  alias, 1 drivers
v0x1b64380_0 .net "B", 0 0, L_0x1be0820;  alias, 1 drivers
v0x1b64440_0 .net "out", 0 0, L_0x1be00c0;  1 drivers
S_0x1b64540 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdf840 .functor XOR 1, L_0x1be0820, L_0x1bdf8b0, C4<0>, C4<0>;
v0x1b64710_0 .net "A", 0 0, L_0x1be0820;  alias, 1 drivers
v0x1b64860_0 .net "B", 0 0, L_0x1bdf8b0;  1 drivers
v0x1b64920_0 .net "out", 0 0, L_0x1bdf840;  alias, 1 drivers
S_0x1b64a60 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b61f70;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdfe40 .functor XOR 1, L_0x1be0780, L_0x1be0820, C4<0>, C4<0>;
v0x1b64c30_0 .net "A", 0 0, L_0x1be0780;  alias, 1 drivers
v0x1b64cf0_0 .net "B", 0 0, L_0x1be0820;  alias, 1 drivers
v0x1b64db0_0 .net "out", 0 0, L_0x1bdfe40;  1 drivers
S_0x1b65940 .scope module, "alu25" "ALU_1bit" 7 143, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1be14e0 .functor BUFZ 1, L_0x1be0c40, C4<0>, C4<0>, C4<0>;
L_0x1be1570 .functor BUFZ 1, L_0x1be0c40, C4<0>, C4<0>, C4<0>;
v0x1b688b0_0 .net "A", 0 0, L_0x1be19b0;  1 drivers
v0x1b68950_0 .net "B", 0 0, L_0x1bcf310;  1 drivers
v0x1b68a10_0 .net "I", 7 0, L_0x1be1690;  1 drivers
v0x1b68b10_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b68bb0_0 .net *"_s15", 0 0, L_0x1be14e0;  1 drivers
v0x1b68cc0_0 .net *"_s19", 0 0, L_0x1be1570;  1 drivers
L_0x7f3247f1b8d0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b68da0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b8d0;  1 drivers
v0x1b68e80_0 .net "addORsub", 0 0, L_0x1be0c40;  1 drivers
v0x1b68f20_0 .net "carryin", 0 0, L_0x1bcf3b0;  1 drivers
v0x1b69080_0 .net "carryout", 0 0, L_0x1b67cc0;  1 drivers
v0x1b69150_0 .net "modB", 0 0, L_0x1bdf720;  1 drivers
v0x1b691f0_0 .net "out", 0 0, L_0x1be1380;  1 drivers
L_0x1bdf790 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be1690_0_0 .concat8 [ 1 1 1 1], L_0x1be14e0, L_0x1be1570, L_0x1be1070, L_0x7f3247f1b8d0;
LS_0x1be1690_0_4 .concat8 [ 1 1 1 1], L_0x1b681a0, L_0x1be11f0, L_0x1be1260, L_0x1be12f0;
L_0x1be1690 .concat8 [ 4 4 0 0], LS_0x1be1690_0_0, LS_0x1be1690_0_4;
S_0x1b65bb0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1be0b20 .functor XOR 1, L_0x1be19b0, L_0x1bdf720, C4<0>, C4<0>;
L_0x1be0c40 .functor XOR 1, L_0x1be0b20, L_0x1bcf3b0, C4<0>, C4<0>;
L_0x1be0d70 .functor AND 1, L_0x1be0b20, L_0x1bcf3b0, C4<1>, C4<1>;
L_0x1be0e00 .functor AND 1, L_0x1be19b0, L_0x1bdf720, C4<1>, C4<1>;
L_0x1b67cc0 .functor OR 1, L_0x1be0d70, L_0x1be0e00, C4<0>, C4<0>;
v0x1b65e50_0 .net "A", 0 0, L_0x1be19b0;  alias, 1 drivers
v0x1b65f30_0 .net "B", 0 0, L_0x1bdf720;  alias, 1 drivers
v0x1b65ff0_0 .net "carryin", 0 0, L_0x1bcf3b0;  alias, 1 drivers
v0x1b660c0_0 .net "carryout", 0 0, L_0x1b67cc0;  alias, 1 drivers
v0x1b66180_0 .net "out1", 0 0, L_0x1be0b20;  1 drivers
v0x1b66290_0 .net "out2", 0 0, L_0x1be0d70;  1 drivers
v0x1b66350_0 .net "out3", 0 0, L_0x1be0e00;  1 drivers
v0x1b66410_0 .net "sum", 0 0, L_0x1be0c40;  alias, 1 drivers
S_0x1b66570 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b681a0 .functor AND 1, L_0x1be19b0, L_0x1bcf310, C4<1>, C4<1>;
v0x1b667b0_0 .net "A", 0 0, L_0x1be19b0;  alias, 1 drivers
v0x1b66870_0 .net "B", 0 0, L_0x1bcf310;  alias, 1 drivers
v0x1b66910_0 .net "out", 0 0, L_0x1b681a0;  1 drivers
S_0x1b66a60 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b66cb0_0 .net "I", 7 0, L_0x1be1690;  alias, 1 drivers
v0x1b66d90_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b66e50_0 .net "out", 0 0, L_0x1be1380;  alias, 1 drivers
L_0x1be1380 .part/v L_0x1be1690, v0x1ab6bf0_0, 1;
S_0x1b66fa0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be11f0 .functor NAND 1, L_0x1be19b0, L_0x1bcf310, C4<1>, C4<1>;
v0x1b671c0_0 .net "A", 0 0, L_0x1be19b0;  alias, 1 drivers
v0x1b672d0_0 .net "B", 0 0, L_0x1bcf310;  alias, 1 drivers
v0x1b67390_0 .net "out", 0 0, L_0x1be11f0;  1 drivers
S_0x1b674a0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be1260 .functor NOR 1, L_0x1be19b0, L_0x1bcf310, C4<0>, C4<0>;
v0x1b67710_0 .net "A", 0 0, L_0x1be19b0;  alias, 1 drivers
v0x1b677d0_0 .net "B", 0 0, L_0x1bcf310;  alias, 1 drivers
v0x1b678e0_0 .net "out", 0 0, L_0x1be1260;  1 drivers
S_0x1b679e0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be12f0 .functor OR 1, L_0x1be19b0, L_0x1bcf310, C4<0>, C4<0>;
v0x1b67c00_0 .net "A", 0 0, L_0x1be19b0;  alias, 1 drivers
v0x1b67d50_0 .net "B", 0 0, L_0x1bcf310;  alias, 1 drivers
v0x1b67e10_0 .net "out", 0 0, L_0x1be12f0;  1 drivers
S_0x1b67f10 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bdf720 .functor XOR 1, L_0x1bcf310, L_0x1bdf790, C4<0>, C4<0>;
v0x1b680e0_0 .net "A", 0 0, L_0x1bcf310;  alias, 1 drivers
v0x1b68230_0 .net "B", 0 0, L_0x1bdf790;  1 drivers
v0x1b682f0_0 .net "out", 0 0, L_0x1bdf720;  alias, 1 drivers
S_0x1b68430 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b65940;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be1070 .functor XOR 1, L_0x1be19b0, L_0x1bcf310, C4<0>, C4<0>;
v0x1b68600_0 .net "A", 0 0, L_0x1be19b0;  alias, 1 drivers
v0x1b686c0_0 .net "B", 0 0, L_0x1bcf310;  alias, 1 drivers
v0x1b68780_0 .net "out", 0 0, L_0x1be1070;  1 drivers
S_0x1b69310 .scope module, "alu26" "ALU_1bit" 7 144, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1be2760 .functor BUFZ 1, L_0x1be0a80, C4<0>, C4<0>, C4<0>;
L_0x1be27d0 .functor BUFZ 1, L_0x1be0a80, C4<0>, C4<0>, C4<0>;
v0x1b6c280_0 .net "A", 0 0, L_0x1bd05b0;  1 drivers
v0x1b6c320_0 .net "B", 0 0, L_0x1be2e00;  1 drivers
v0x1b6c3e0_0 .net "I", 7 0, L_0x1be28d0;  1 drivers
v0x1b6c4e0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b6c580_0 .net *"_s15", 0 0, L_0x1be2760;  1 drivers
v0x1b6c690_0 .net *"_s19", 0 0, L_0x1be27d0;  1 drivers
L_0x7f3247f1b918 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b6c770_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b918;  1 drivers
v0x1b6c850_0 .net "addORsub", 0 0, L_0x1be0a80;  1 drivers
v0x1b6c8f0_0 .net "carryin", 0 0, L_0x1be1e60;  1 drivers
v0x1b6ca50_0 .net "carryout", 0 0, L_0x1b6b690;  1 drivers
v0x1b6cb20_0 .net "modB", 0 0, L_0x1a8c0c0;  1 drivers
v0x1b6cbc0_0 .net "out", 0 0, L_0x1be2620;  1 drivers
L_0x1be08c0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be28d0_0_0 .concat8 [ 1 1 1 1], L_0x1be2760, L_0x1be27d0, L_0x1be2350, L_0x7f3247f1b918;
LS_0x1be28d0_0_4 .concat8 [ 1 1 1 1], L_0x1b6bb70, L_0x1be24d0, L_0x1be2540, L_0x1be25b0;
L_0x1be28d0 .concat8 [ 4 4 0 0], LS_0x1be28d0_0_0, LS_0x1be28d0_0_4;
S_0x1b69580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1be0960 .functor XOR 1, L_0x1bd05b0, L_0x1a8c0c0, C4<0>, C4<0>;
L_0x1be0a80 .functor XOR 1, L_0x1be0960, L_0x1be1e60, C4<0>, C4<0>;
L_0x1bc98e0 .functor AND 1, L_0x1be0960, L_0x1be1e60, C4<1>, C4<1>;
L_0x1be20e0 .functor AND 1, L_0x1bd05b0, L_0x1a8c0c0, C4<1>, C4<1>;
L_0x1b6b690 .functor OR 1, L_0x1bc98e0, L_0x1be20e0, C4<0>, C4<0>;
v0x1b69820_0 .net "A", 0 0, L_0x1bd05b0;  alias, 1 drivers
v0x1b69900_0 .net "B", 0 0, L_0x1a8c0c0;  alias, 1 drivers
v0x1b699c0_0 .net "carryin", 0 0, L_0x1be1e60;  alias, 1 drivers
v0x1b69a90_0 .net "carryout", 0 0, L_0x1b6b690;  alias, 1 drivers
v0x1b69b50_0 .net "out1", 0 0, L_0x1be0960;  1 drivers
v0x1b69c60_0 .net "out2", 0 0, L_0x1bc98e0;  1 drivers
v0x1b69d20_0 .net "out3", 0 0, L_0x1be20e0;  1 drivers
v0x1b69de0_0 .net "sum", 0 0, L_0x1be0a80;  alias, 1 drivers
S_0x1b69f40 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b6bb70 .functor AND 1, L_0x1bd05b0, L_0x1be2e00, C4<1>, C4<1>;
v0x1b6a180_0 .net "A", 0 0, L_0x1bd05b0;  alias, 1 drivers
v0x1b6a240_0 .net "B", 0 0, L_0x1be2e00;  alias, 1 drivers
v0x1b6a2e0_0 .net "out", 0 0, L_0x1b6bb70;  1 drivers
S_0x1b6a430 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b6a680_0 .net "I", 7 0, L_0x1be28d0;  alias, 1 drivers
v0x1b6a760_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b6a820_0 .net "out", 0 0, L_0x1be2620;  alias, 1 drivers
L_0x1be2620 .part/v L_0x1be28d0, v0x1ab6bf0_0, 1;
S_0x1b6a970 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be24d0 .functor NAND 1, L_0x1bd05b0, L_0x1be2e00, C4<1>, C4<1>;
v0x1b6ab90_0 .net "A", 0 0, L_0x1bd05b0;  alias, 1 drivers
v0x1b6aca0_0 .net "B", 0 0, L_0x1be2e00;  alias, 1 drivers
v0x1b6ad60_0 .net "out", 0 0, L_0x1be24d0;  1 drivers
S_0x1b6ae70 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be2540 .functor NOR 1, L_0x1bd05b0, L_0x1be2e00, C4<0>, C4<0>;
v0x1b6b0e0_0 .net "A", 0 0, L_0x1bd05b0;  alias, 1 drivers
v0x1b6b1a0_0 .net "B", 0 0, L_0x1be2e00;  alias, 1 drivers
v0x1b6b2b0_0 .net "out", 0 0, L_0x1be2540;  1 drivers
S_0x1b6b3b0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be25b0 .functor OR 1, L_0x1bd05b0, L_0x1be2e00, C4<0>, C4<0>;
v0x1b6b5d0_0 .net "A", 0 0, L_0x1bd05b0;  alias, 1 drivers
v0x1b6b720_0 .net "B", 0 0, L_0x1be2e00;  alias, 1 drivers
v0x1b6b7e0_0 .net "out", 0 0, L_0x1be25b0;  1 drivers
S_0x1b6b8e0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1a8c0c0 .functor XOR 1, L_0x1be2e00, L_0x1be08c0, C4<0>, C4<0>;
v0x1b6bab0_0 .net "A", 0 0, L_0x1be2e00;  alias, 1 drivers
v0x1b6bc00_0 .net "B", 0 0, L_0x1be08c0;  1 drivers
v0x1b6bcc0_0 .net "out", 0 0, L_0x1a8c0c0;  alias, 1 drivers
S_0x1b6be00 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b69310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be2350 .functor XOR 1, L_0x1bd05b0, L_0x1be2e00, C4<0>, C4<0>;
v0x1b6bfd0_0 .net "A", 0 0, L_0x1bd05b0;  alias, 1 drivers
v0x1b6c090_0 .net "B", 0 0, L_0x1be2e00;  alias, 1 drivers
v0x1b6c150_0 .net "out", 0 0, L_0x1be2350;  1 drivers
S_0x1b6cce0 .scope module, "alu27" "ALU_1bit" 7 145, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1be39e0 .functor BUFZ 1, L_0x1be3230, C4<0>, C4<0>, C4<0>;
L_0x1be3a50 .functor BUFZ 1, L_0x1be3230, C4<0>, C4<0>, C4<0>;
v0x1b6fc50_0 .net "A", 0 0, L_0x1be3e70;  1 drivers
v0x1b6fcf0_0 .net "B", 0 0, L_0x1be2ea0;  1 drivers
v0x1b6fdb0_0 .net "I", 7 0, L_0x1be3b50;  1 drivers
v0x1b6feb0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b6ff50_0 .net *"_s15", 0 0, L_0x1be39e0;  1 drivers
v0x1b70060_0 .net *"_s19", 0 0, L_0x1be3a50;  1 drivers
L_0x7f3247f1b960 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b70140_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b960;  1 drivers
v0x1b70220_0 .net "addORsub", 0 0, L_0x1be3230;  1 drivers
v0x1b702c0_0 .net "carryin", 0 0, L_0x1be2f40;  1 drivers
v0x1b70420_0 .net "carryout", 0 0, L_0x1b6f060;  1 drivers
v0x1b704f0_0 .net "modB", 0 0, L_0x1bd0650;  1 drivers
v0x1b70590_0 .net "out", 0 0, L_0x1be38a0;  1 drivers
L_0x1be1f90 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be3b50_0_0 .concat8 [ 1 1 1 1], L_0x1be39e0, L_0x1be3a50, L_0x1be35d0, L_0x7f3247f1b960;
LS_0x1be3b50_0_4 .concat8 [ 1 1 1 1], L_0x1b6f540, L_0x1be3750, L_0x1be37c0, L_0x1be3830;
L_0x1be3b50 .concat8 [ 4 4 0 0], LS_0x1be3b50_0_0, LS_0x1be3b50_0_4;
S_0x1b6cf50 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1be3130 .functor XOR 1, L_0x1be3e70, L_0x1bd0650, C4<0>, C4<0>;
L_0x1be3230 .functor XOR 1, L_0x1be3130, L_0x1be2f40, C4<0>, C4<0>;
L_0x1be32f0 .functor AND 1, L_0x1be3130, L_0x1be2f40, C4<1>, C4<1>;
L_0x1be3360 .functor AND 1, L_0x1be3e70, L_0x1bd0650, C4<1>, C4<1>;
L_0x1b6f060 .functor OR 1, L_0x1be32f0, L_0x1be3360, C4<0>, C4<0>;
v0x1b6d1f0_0 .net "A", 0 0, L_0x1be3e70;  alias, 1 drivers
v0x1b6d2d0_0 .net "B", 0 0, L_0x1bd0650;  alias, 1 drivers
v0x1b6d390_0 .net "carryin", 0 0, L_0x1be2f40;  alias, 1 drivers
v0x1b6d460_0 .net "carryout", 0 0, L_0x1b6f060;  alias, 1 drivers
v0x1b6d520_0 .net "out1", 0 0, L_0x1be3130;  1 drivers
v0x1b6d630_0 .net "out2", 0 0, L_0x1be32f0;  1 drivers
v0x1b6d6f0_0 .net "out3", 0 0, L_0x1be3360;  1 drivers
v0x1b6d7b0_0 .net "sum", 0 0, L_0x1be3230;  alias, 1 drivers
S_0x1b6d910 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b6f540 .functor AND 1, L_0x1be3e70, L_0x1be2ea0, C4<1>, C4<1>;
v0x1b6db50_0 .net "A", 0 0, L_0x1be3e70;  alias, 1 drivers
v0x1b6dc10_0 .net "B", 0 0, L_0x1be2ea0;  alias, 1 drivers
v0x1b6dcb0_0 .net "out", 0 0, L_0x1b6f540;  1 drivers
S_0x1b6de00 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b6e050_0 .net "I", 7 0, L_0x1be3b50;  alias, 1 drivers
v0x1b6e130_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b6e1f0_0 .net "out", 0 0, L_0x1be38a0;  alias, 1 drivers
L_0x1be38a0 .part/v L_0x1be3b50, v0x1ab6bf0_0, 1;
S_0x1b6e340 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be3750 .functor NAND 1, L_0x1be3e70, L_0x1be2ea0, C4<1>, C4<1>;
v0x1b6e560_0 .net "A", 0 0, L_0x1be3e70;  alias, 1 drivers
v0x1b6e670_0 .net "B", 0 0, L_0x1be2ea0;  alias, 1 drivers
v0x1b6e730_0 .net "out", 0 0, L_0x1be3750;  1 drivers
S_0x1b6e840 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be37c0 .functor NOR 1, L_0x1be3e70, L_0x1be2ea0, C4<0>, C4<0>;
v0x1b6eab0_0 .net "A", 0 0, L_0x1be3e70;  alias, 1 drivers
v0x1b6eb70_0 .net "B", 0 0, L_0x1be2ea0;  alias, 1 drivers
v0x1b6ec80_0 .net "out", 0 0, L_0x1be37c0;  1 drivers
S_0x1b6ed80 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be3830 .functor OR 1, L_0x1be3e70, L_0x1be2ea0, C4<0>, C4<0>;
v0x1b6efa0_0 .net "A", 0 0, L_0x1be3e70;  alias, 1 drivers
v0x1b6f0f0_0 .net "B", 0 0, L_0x1be2ea0;  alias, 1 drivers
v0x1b6f1b0_0 .net "out", 0 0, L_0x1be3830;  1 drivers
S_0x1b6f2b0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd0650 .functor XOR 1, L_0x1be2ea0, L_0x1be1f90, C4<0>, C4<0>;
v0x1b6f480_0 .net "A", 0 0, L_0x1be2ea0;  alias, 1 drivers
v0x1b6f5d0_0 .net "B", 0 0, L_0x1be1f90;  1 drivers
v0x1b6f690_0 .net "out", 0 0, L_0x1bd0650;  alias, 1 drivers
S_0x1b6f7d0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b6cce0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be35d0 .functor XOR 1, L_0x1be3e70, L_0x1be2ea0, C4<0>, C4<0>;
v0x1b6f9a0_0 .net "A", 0 0, L_0x1be3e70;  alias, 1 drivers
v0x1b6fa60_0 .net "B", 0 0, L_0x1be2ea0;  alias, 1 drivers
v0x1b6fb20_0 .net "out", 0 0, L_0x1be35d0;  1 drivers
S_0x1b706b0 .scope module, "alu28" "ALU_1bit" 7 146, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1be4b10 .functor BUFZ 1, L_0x1be4360, C4<0>, C4<0>, C4<0>;
L_0x1be4b80 .functor BUFZ 1, L_0x1be4360, C4<0>, C4<0>, C4<0>;
v0x1b73620_0 .net "A", 0 0, L_0x1be4fa0;  1 drivers
v0x1b736c0_0 .net "B", 0 0, L_0x1be5040;  1 drivers
v0x1b73780_0 .net "I", 7 0, L_0x1be4c80;  1 drivers
v0x1b73880_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b73920_0 .net *"_s15", 0 0, L_0x1be4b10;  1 drivers
v0x1b73a30_0 .net *"_s19", 0 0, L_0x1be4b80;  1 drivers
L_0x7f3247f1b9a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b73b10_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b9a8;  1 drivers
v0x1b73bf0_0 .net "addORsub", 0 0, L_0x1be4360;  1 drivers
v0x1b73c90_0 .net "carryin", 0 0, L_0x1be3f10;  1 drivers
v0x1b73df0_0 .net "carryout", 0 0, L_0x1b72a30;  1 drivers
v0x1b73ec0_0 .net "modB", 0 0, L_0x1be3070;  1 drivers
v0x1b73f60_0 .net "out", 0 0, L_0x1be49d0;  1 drivers
L_0x1be41c0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be4c80_0_0 .concat8 [ 1 1 1 1], L_0x1be4b10, L_0x1be4b80, L_0x1be4700, L_0x7f3247f1b9a8;
LS_0x1be4c80_0_4 .concat8 [ 1 1 1 1], L_0x1b72f10, L_0x1be4880, L_0x1be48f0, L_0x1be4960;
L_0x1be4c80 .concat8 [ 4 4 0 0], LS_0x1be4c80_0_0, LS_0x1be4c80_0_4;
S_0x1b70920 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1be4260 .functor XOR 1, L_0x1be4fa0, L_0x1be3070, C4<0>, C4<0>;
L_0x1be4360 .functor XOR 1, L_0x1be4260, L_0x1be3f10, C4<0>, C4<0>;
L_0x1be4420 .functor AND 1, L_0x1be4260, L_0x1be3f10, C4<1>, C4<1>;
L_0x1be4490 .functor AND 1, L_0x1be4fa0, L_0x1be3070, C4<1>, C4<1>;
L_0x1b72a30 .functor OR 1, L_0x1be4420, L_0x1be4490, C4<0>, C4<0>;
v0x1b70bc0_0 .net "A", 0 0, L_0x1be4fa0;  alias, 1 drivers
v0x1b70ca0_0 .net "B", 0 0, L_0x1be3070;  alias, 1 drivers
v0x1b70d60_0 .net "carryin", 0 0, L_0x1be3f10;  alias, 1 drivers
v0x1b70e30_0 .net "carryout", 0 0, L_0x1b72a30;  alias, 1 drivers
v0x1b70ef0_0 .net "out1", 0 0, L_0x1be4260;  1 drivers
v0x1b71000_0 .net "out2", 0 0, L_0x1be4420;  1 drivers
v0x1b710c0_0 .net "out3", 0 0, L_0x1be4490;  1 drivers
v0x1b71180_0 .net "sum", 0 0, L_0x1be4360;  alias, 1 drivers
S_0x1b712e0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b72f10 .functor AND 1, L_0x1be4fa0, L_0x1be5040, C4<1>, C4<1>;
v0x1b71520_0 .net "A", 0 0, L_0x1be4fa0;  alias, 1 drivers
v0x1b715e0_0 .net "B", 0 0, L_0x1be5040;  alias, 1 drivers
v0x1b71680_0 .net "out", 0 0, L_0x1b72f10;  1 drivers
S_0x1b717d0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b71a20_0 .net "I", 7 0, L_0x1be4c80;  alias, 1 drivers
v0x1b71b00_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b71bc0_0 .net "out", 0 0, L_0x1be49d0;  alias, 1 drivers
L_0x1be49d0 .part/v L_0x1be4c80, v0x1ab6bf0_0, 1;
S_0x1b71d10 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be4880 .functor NAND 1, L_0x1be4fa0, L_0x1be5040, C4<1>, C4<1>;
v0x1b71f30_0 .net "A", 0 0, L_0x1be4fa0;  alias, 1 drivers
v0x1b72040_0 .net "B", 0 0, L_0x1be5040;  alias, 1 drivers
v0x1b72100_0 .net "out", 0 0, L_0x1be4880;  1 drivers
S_0x1b72210 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be48f0 .functor NOR 1, L_0x1be4fa0, L_0x1be5040, C4<0>, C4<0>;
v0x1b72480_0 .net "A", 0 0, L_0x1be4fa0;  alias, 1 drivers
v0x1b72540_0 .net "B", 0 0, L_0x1be5040;  alias, 1 drivers
v0x1b72650_0 .net "out", 0 0, L_0x1be48f0;  1 drivers
S_0x1b72750 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be4960 .functor OR 1, L_0x1be4fa0, L_0x1be5040, C4<0>, C4<0>;
v0x1b72970_0 .net "A", 0 0, L_0x1be4fa0;  alias, 1 drivers
v0x1b72ac0_0 .net "B", 0 0, L_0x1be5040;  alias, 1 drivers
v0x1b72b80_0 .net "out", 0 0, L_0x1be4960;  1 drivers
S_0x1b72c80 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be3070 .functor XOR 1, L_0x1be5040, L_0x1be41c0, C4<0>, C4<0>;
v0x1b72e50_0 .net "A", 0 0, L_0x1be5040;  alias, 1 drivers
v0x1b72fa0_0 .net "B", 0 0, L_0x1be41c0;  1 drivers
v0x1b73060_0 .net "out", 0 0, L_0x1be3070;  alias, 1 drivers
S_0x1b731a0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b706b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be4700 .functor XOR 1, L_0x1be4fa0, L_0x1be5040, C4<0>, C4<0>;
v0x1b73370_0 .net "A", 0 0, L_0x1be4fa0;  alias, 1 drivers
v0x1b73430_0 .net "B", 0 0, L_0x1be5040;  alias, 1 drivers
v0x1b734f0_0 .net "out", 0 0, L_0x1be4700;  1 drivers
S_0x1b74080 .scope module, "alu29" "ALU_1bit" 7 147, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1be5c30 .functor BUFZ 1, L_0x1be5430, C4<0>, C4<0>, C4<0>;
L_0x1be5ca0 .functor BUFZ 1, L_0x1be5430, C4<0>, C4<0>, C4<0>;
v0x1b76ff0_0 .net "A", 0 0, L_0x1be60c0;  1 drivers
v0x1b77090_0 .net "B", 0 0, L_0x1be50e0;  1 drivers
v0x1b77150_0 .net "I", 7 0, L_0x1be5da0;  1 drivers
v0x1b77250_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b772f0_0 .net *"_s15", 0 0, L_0x1be5c30;  1 drivers
v0x1b77400_0 .net *"_s19", 0 0, L_0x1be5ca0;  1 drivers
L_0x7f3247f1b9f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b774e0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b9f0;  1 drivers
v0x1b775c0_0 .net "addORsub", 0 0, L_0x1be5430;  1 drivers
v0x1b77660_0 .net "carryin", 0 0, L_0x1bd3ee0;  1 drivers
v0x1b777c0_0 .net "carryout", 0 0, L_0x1b76400;  1 drivers
v0x1b77890_0 .net "modB", 0 0, L_0x1be4040;  1 drivers
v0x1b77930_0 .net "out", 0 0, L_0x1be5af0;  1 drivers
L_0x1be40b0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be5da0_0_0 .concat8 [ 1 1 1 1], L_0x1be5c30, L_0x1be5ca0, L_0x1be5820, L_0x7f3247f1b9f0;
LS_0x1be5da0_0_4 .concat8 [ 1 1 1 1], L_0x1b768e0, L_0x1be59a0, L_0x1be5a10, L_0x1be5a80;
L_0x1be5da0 .concat8 [ 4 4 0 0], LS_0x1be5da0_0_0, LS_0x1be5da0_0_4;
S_0x1b742f0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1be4150 .functor XOR 1, L_0x1be60c0, L_0x1be4040, C4<0>, C4<0>;
L_0x1be5430 .functor XOR 1, L_0x1be4150, L_0x1bd3ee0, C4<0>, C4<0>;
L_0x1be5540 .functor AND 1, L_0x1be4150, L_0x1bd3ee0, C4<1>, C4<1>;
L_0x1be55b0 .functor AND 1, L_0x1be60c0, L_0x1be4040, C4<1>, C4<1>;
L_0x1b76400 .functor OR 1, L_0x1be5540, L_0x1be55b0, C4<0>, C4<0>;
v0x1b74590_0 .net "A", 0 0, L_0x1be60c0;  alias, 1 drivers
v0x1b74670_0 .net "B", 0 0, L_0x1be4040;  alias, 1 drivers
v0x1b74730_0 .net "carryin", 0 0, L_0x1bd3ee0;  alias, 1 drivers
v0x1b74800_0 .net "carryout", 0 0, L_0x1b76400;  alias, 1 drivers
v0x1b748c0_0 .net "out1", 0 0, L_0x1be4150;  1 drivers
v0x1b749d0_0 .net "out2", 0 0, L_0x1be5540;  1 drivers
v0x1b74a90_0 .net "out3", 0 0, L_0x1be55b0;  1 drivers
v0x1b74b50_0 .net "sum", 0 0, L_0x1be5430;  alias, 1 drivers
S_0x1b74cb0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b768e0 .functor AND 1, L_0x1be60c0, L_0x1be50e0, C4<1>, C4<1>;
v0x1b74ef0_0 .net "A", 0 0, L_0x1be60c0;  alias, 1 drivers
v0x1b74fb0_0 .net "B", 0 0, L_0x1be50e0;  alias, 1 drivers
v0x1b75050_0 .net "out", 0 0, L_0x1b768e0;  1 drivers
S_0x1b751a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b753f0_0 .net "I", 7 0, L_0x1be5da0;  alias, 1 drivers
v0x1b754d0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b75590_0 .net "out", 0 0, L_0x1be5af0;  alias, 1 drivers
L_0x1be5af0 .part/v L_0x1be5da0, v0x1ab6bf0_0, 1;
S_0x1b756e0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be59a0 .functor NAND 1, L_0x1be60c0, L_0x1be50e0, C4<1>, C4<1>;
v0x1b75900_0 .net "A", 0 0, L_0x1be60c0;  alias, 1 drivers
v0x1b75a10_0 .net "B", 0 0, L_0x1be50e0;  alias, 1 drivers
v0x1b75ad0_0 .net "out", 0 0, L_0x1be59a0;  1 drivers
S_0x1b75be0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be5a10 .functor NOR 1, L_0x1be60c0, L_0x1be50e0, C4<0>, C4<0>;
v0x1b75e50_0 .net "A", 0 0, L_0x1be60c0;  alias, 1 drivers
v0x1b75f10_0 .net "B", 0 0, L_0x1be50e0;  alias, 1 drivers
v0x1b76020_0 .net "out", 0 0, L_0x1be5a10;  1 drivers
S_0x1b76120 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be5a80 .functor OR 1, L_0x1be60c0, L_0x1be50e0, C4<0>, C4<0>;
v0x1b76340_0 .net "A", 0 0, L_0x1be60c0;  alias, 1 drivers
v0x1b76490_0 .net "B", 0 0, L_0x1be50e0;  alias, 1 drivers
v0x1b76550_0 .net "out", 0 0, L_0x1be5a80;  1 drivers
S_0x1b76650 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be4040 .functor XOR 1, L_0x1be50e0, L_0x1be40b0, C4<0>, C4<0>;
v0x1b76820_0 .net "A", 0 0, L_0x1be50e0;  alias, 1 drivers
v0x1b76970_0 .net "B", 0 0, L_0x1be40b0;  1 drivers
v0x1b76a30_0 .net "out", 0 0, L_0x1be4040;  alias, 1 drivers
S_0x1b76b70 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b74080;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be5820 .functor XOR 1, L_0x1be60c0, L_0x1be50e0, C4<0>, C4<0>;
v0x1b76d40_0 .net "A", 0 0, L_0x1be60c0;  alias, 1 drivers
v0x1b76e00_0 .net "B", 0 0, L_0x1be50e0;  alias, 1 drivers
v0x1b76ec0_0 .net "out", 0 0, L_0x1be5820;  1 drivers
S_0x1b77a50 .scope module, "alu3" "ALU_1bit" 7 121, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bc8250 .functor BUFZ 1, L_0x1bc79b0, C4<0>, C4<0>, C4<0>;
L_0x1bc82e0 .functor BUFZ 1, L_0x1bc79b0, C4<0>, C4<0>, C4<0>;
v0x1b7a9c0_0 .net "A", 0 0, L_0x1bc8720;  1 drivers
v0x1b7aa60_0 .net "B", 0 0, L_0x1bc87c0;  1 drivers
v0x1b7ab20_0 .net "I", 7 0, L_0x1bc8400;  1 drivers
v0x1b7ac20_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b7acc0_0 .net *"_s15", 0 0, L_0x1bc8250;  1 drivers
v0x1b7add0_0 .net *"_s19", 0 0, L_0x1bc82e0;  1 drivers
L_0x7f3247f1b2a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b7aeb0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b2a0;  1 drivers
v0x1b7af90_0 .net "addORsub", 0 0, L_0x1bc79b0;  1 drivers
v0x1b7b030_0 .net "carryin", 0 0, L_0x1bc8860;  1 drivers
v0x1b7b190_0 .net "carryout", 0 0, L_0x1b79dd0;  1 drivers
v0x1b7b260_0 .net "modB", 0 0, L_0x1bc7730;  1 drivers
v0x1b7b300_0 .net "out", 0 0, L_0x1bc80f0;  1 drivers
L_0x1bc77a0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bc8400_0_0 .concat8 [ 1 1 1 1], L_0x1bc8250, L_0x1bc82e0, L_0x1bc7de0, L_0x7f3247f1b2a0;
LS_0x1bc8400_0_4 .concat8 [ 1 1 1 1], L_0x1b7a2b0, L_0x1bc7f60, L_0x1bc7fd0, L_0x1bc8060;
L_0x1bc8400 .concat8 [ 4 4 0 0], LS_0x1bc8400_0_0, LS_0x1bc8400_0_4;
S_0x1b77cc0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bc7890 .functor XOR 1, L_0x1bc8720, L_0x1bc7730, C4<0>, C4<0>;
L_0x1bc79b0 .functor XOR 1, L_0x1bc7890, L_0x1bc8860, C4<0>, C4<0>;
L_0x1bc7ae0 .functor AND 1, L_0x1bc7890, L_0x1bc8860, C4<1>, C4<1>;
L_0x1bc7b70 .functor AND 1, L_0x1bc8720, L_0x1bc7730, C4<1>, C4<1>;
L_0x1b79dd0 .functor OR 1, L_0x1bc7ae0, L_0x1bc7b70, C4<0>, C4<0>;
v0x1b77f60_0 .net "A", 0 0, L_0x1bc8720;  alias, 1 drivers
v0x1b78040_0 .net "B", 0 0, L_0x1bc7730;  alias, 1 drivers
v0x1b78100_0 .net "carryin", 0 0, L_0x1bc8860;  alias, 1 drivers
v0x1b781d0_0 .net "carryout", 0 0, L_0x1b79dd0;  alias, 1 drivers
v0x1b78290_0 .net "out1", 0 0, L_0x1bc7890;  1 drivers
v0x1b783a0_0 .net "out2", 0 0, L_0x1bc7ae0;  1 drivers
v0x1b78460_0 .net "out3", 0 0, L_0x1bc7b70;  1 drivers
v0x1b78520_0 .net "sum", 0 0, L_0x1bc79b0;  alias, 1 drivers
S_0x1b78680 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b7a2b0 .functor AND 1, L_0x1bc8720, L_0x1bc87c0, C4<1>, C4<1>;
v0x1b788c0_0 .net "A", 0 0, L_0x1bc8720;  alias, 1 drivers
v0x1b78980_0 .net "B", 0 0, L_0x1bc87c0;  alias, 1 drivers
v0x1b78a20_0 .net "out", 0 0, L_0x1b7a2b0;  1 drivers
S_0x1b78b70 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b78dc0_0 .net "I", 7 0, L_0x1bc8400;  alias, 1 drivers
v0x1b78ea0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b78f60_0 .net "out", 0 0, L_0x1bc80f0;  alias, 1 drivers
L_0x1bc80f0 .part/v L_0x1bc8400, v0x1ab6bf0_0, 1;
S_0x1b790b0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc7f60 .functor NAND 1, L_0x1bc8720, L_0x1bc87c0, C4<1>, C4<1>;
v0x1b792d0_0 .net "A", 0 0, L_0x1bc8720;  alias, 1 drivers
v0x1b793e0_0 .net "B", 0 0, L_0x1bc87c0;  alias, 1 drivers
v0x1b794a0_0 .net "out", 0 0, L_0x1bc7f60;  1 drivers
S_0x1b795b0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc7fd0 .functor NOR 1, L_0x1bc8720, L_0x1bc87c0, C4<0>, C4<0>;
v0x1b79820_0 .net "A", 0 0, L_0x1bc8720;  alias, 1 drivers
v0x1b798e0_0 .net "B", 0 0, L_0x1bc87c0;  alias, 1 drivers
v0x1b799f0_0 .net "out", 0 0, L_0x1bc7fd0;  1 drivers
S_0x1b79af0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc8060 .functor OR 1, L_0x1bc8720, L_0x1bc87c0, C4<0>, C4<0>;
v0x1b79d10_0 .net "A", 0 0, L_0x1bc8720;  alias, 1 drivers
v0x1b79e60_0 .net "B", 0 0, L_0x1bc87c0;  alias, 1 drivers
v0x1b79f20_0 .net "out", 0 0, L_0x1bc8060;  1 drivers
S_0x1b7a020 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc7730 .functor XOR 1, L_0x1bc87c0, L_0x1bc77a0, C4<0>, C4<0>;
v0x1b7a1f0_0 .net "A", 0 0, L_0x1bc87c0;  alias, 1 drivers
v0x1b7a340_0 .net "B", 0 0, L_0x1bc77a0;  1 drivers
v0x1b7a400_0 .net "out", 0 0, L_0x1bc7730;  alias, 1 drivers
S_0x1b7a540 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b77a50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc7de0 .functor XOR 1, L_0x1bc8720, L_0x1bc87c0, C4<0>, C4<0>;
v0x1b7a710_0 .net "A", 0 0, L_0x1bc8720;  alias, 1 drivers
v0x1b7a7d0_0 .net "B", 0 0, L_0x1bc87c0;  alias, 1 drivers
v0x1b7a890_0 .net "out", 0 0, L_0x1bc7de0;  1 drivers
S_0x1b7b420 .scope module, "alu30" "ALU_1bit" 7 148, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1b98a40 .functor BUFZ 1, L_0x1be52b0, C4<0>, C4<0>, C4<0>;
L_0x1b98ad0 .functor BUFZ 1, L_0x1be52b0, C4<0>, C4<0>, C4<0>;
v0x1b7e390_0 .net "A", 0 0, L_0x1be7e70;  1 drivers
v0x1b7e430_0 .net "B", 0 0, L_0x1be6840;  1 drivers
v0x1b7e4f0_0 .net "I", 7 0, L_0x1b98bf0;  1 drivers
v0x1b7e5f0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b7e690_0 .net *"_s15", 0 0, L_0x1b98a40;  1 drivers
v0x1b7e7a0_0 .net *"_s19", 0 0, L_0x1b98ad0;  1 drivers
L_0x7f3247f1ba38 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b7e880_0 .net/2s *"_s23", 0 0, L_0x7f3247f1ba38;  1 drivers
v0x1b7e960_0 .net "addORsub", 0 0, L_0x1be52b0;  1 drivers
v0x1b7ea00_0 .net "carryin", 0 0, L_0x1be68e0;  1 drivers
v0x1b7eb60_0 .net "carryout", 0 0, L_0x1b7d7a0;  1 drivers
v0x1b7ec30_0 .net "modB", 0 0, L_0x1bd4010;  1 drivers
v0x1b7ecd0_0 .net "out", 0 0, L_0x1b988e0;  1 drivers
L_0x1be5180 .part v0x1ab6bf0_0, 0, 1;
LS_0x1b98bf0_0_0 .concat8 [ 1 1 1 1], L_0x1b98a40, L_0x1b98ad0, L_0x1b985f0, L_0x7f3247f1ba38;
LS_0x1b98bf0_0_4 .concat8 [ 1 1 1 1], L_0x1b7dc80, L_0x1b98770, L_0x1b987e0, L_0x1b98850;
L_0x1b98bf0 .concat8 [ 4 4 0 0], LS_0x1b98bf0_0_0, LS_0x1b98bf0_0_4;
S_0x1b7b690 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bd4080 .functor XOR 1, L_0x1be7e70, L_0x1bd4010, C4<0>, C4<0>;
L_0x1be52b0 .functor XOR 1, L_0x1bd4080, L_0x1be68e0, C4<0>, C4<0>;
L_0x1be6160 .functor AND 1, L_0x1bd4080, L_0x1be68e0, C4<1>, C4<1>;
L_0x1be61f0 .functor AND 1, L_0x1be7e70, L_0x1bd4010, C4<1>, C4<1>;
L_0x1b7d7a0 .functor OR 1, L_0x1be6160, L_0x1be61f0, C4<0>, C4<0>;
v0x1b7b930_0 .net "A", 0 0, L_0x1be7e70;  alias, 1 drivers
v0x1b7ba10_0 .net "B", 0 0, L_0x1bd4010;  alias, 1 drivers
v0x1b7bad0_0 .net "carryin", 0 0, L_0x1be68e0;  alias, 1 drivers
v0x1b7bba0_0 .net "carryout", 0 0, L_0x1b7d7a0;  alias, 1 drivers
v0x1b7bc60_0 .net "out1", 0 0, L_0x1bd4080;  1 drivers
v0x1b7bd70_0 .net "out2", 0 0, L_0x1be6160;  1 drivers
v0x1b7be30_0 .net "out3", 0 0, L_0x1be61f0;  1 drivers
v0x1b7bef0_0 .net "sum", 0 0, L_0x1be52b0;  alias, 1 drivers
S_0x1b7c050 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b7dc80 .functor AND 1, L_0x1be7e70, L_0x1be6840, C4<1>, C4<1>;
v0x1b7c290_0 .net "A", 0 0, L_0x1be7e70;  alias, 1 drivers
v0x1b7c350_0 .net "B", 0 0, L_0x1be6840;  alias, 1 drivers
v0x1b7c3f0_0 .net "out", 0 0, L_0x1b7dc80;  1 drivers
S_0x1b7c540 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b7c790_0 .net "I", 7 0, L_0x1b98bf0;  alias, 1 drivers
v0x1b7c870_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b7c930_0 .net "out", 0 0, L_0x1b988e0;  alias, 1 drivers
L_0x1b988e0 .part/v L_0x1b98bf0, v0x1ab6bf0_0, 1;
S_0x1b7ca80 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b98770 .functor NAND 1, L_0x1be7e70, L_0x1be6840, C4<1>, C4<1>;
v0x1b7cca0_0 .net "A", 0 0, L_0x1be7e70;  alias, 1 drivers
v0x1b7cdb0_0 .net "B", 0 0, L_0x1be6840;  alias, 1 drivers
v0x1b7ce70_0 .net "out", 0 0, L_0x1b98770;  1 drivers
S_0x1b7cf80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b987e0 .functor NOR 1, L_0x1be7e70, L_0x1be6840, C4<0>, C4<0>;
v0x1b7d1f0_0 .net "A", 0 0, L_0x1be7e70;  alias, 1 drivers
v0x1b7d2b0_0 .net "B", 0 0, L_0x1be6840;  alias, 1 drivers
v0x1b7d3c0_0 .net "out", 0 0, L_0x1b987e0;  1 drivers
S_0x1b7d4c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b98850 .functor OR 1, L_0x1be7e70, L_0x1be6840, C4<0>, C4<0>;
v0x1b7d6e0_0 .net "A", 0 0, L_0x1be7e70;  alias, 1 drivers
v0x1b7d830_0 .net "B", 0 0, L_0x1be6840;  alias, 1 drivers
v0x1b7d8f0_0 .net "out", 0 0, L_0x1b98850;  1 drivers
S_0x1b7d9f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bd4010 .functor XOR 1, L_0x1be6840, L_0x1be5180, C4<0>, C4<0>;
v0x1b7dbc0_0 .net "A", 0 0, L_0x1be6840;  alias, 1 drivers
v0x1b7dd10_0 .net "B", 0 0, L_0x1be5180;  1 drivers
v0x1b7ddd0_0 .net "out", 0 0, L_0x1bd4010;  alias, 1 drivers
S_0x1b7df10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b7b420;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b985f0 .functor XOR 1, L_0x1be7e70, L_0x1be6840, C4<0>, C4<0>;
v0x1b7e0e0_0 .net "A", 0 0, L_0x1be7e70;  alias, 1 drivers
v0x1b7e1a0_0 .net "B", 0 0, L_0x1be6840;  alias, 1 drivers
v0x1b7e260_0 .net "out", 0 0, L_0x1b985f0;  1 drivers
S_0x1b7edf0 .scope module, "alu31" "ALU_last" 7 149, 7 22 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "overflow"
    .port_info 2 /OUTPUT 1 "carryout"
    .port_info 3 /INPUT 1 "A"
    .port_info 4 /INPUT 1 "B"
    .port_info 5 /INPUT 1 "carryin"
    .port_info 6 /INPUT 3 "S"
L_0x1be6a10 .functor BUFZ 1, L_0x1be84b0, C4<0>, C4<0>, C4<0>;
L_0x1be6a80 .functor BUFZ 1, L_0x1be84b0, C4<0>, C4<0>, C4<0>;
v0x1b82790_0 .net "A", 0 0, L_0x1be9200;  1 drivers
v0x1b82830_0 .net "B", 0 0, L_0x1be7f10;  1 drivers
v0x1b828f0_0 .net "I", 7 0, L_0x1be8ce0;  1 drivers
v0x1b829f0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b82a90_0 .net *"_s3", 0 0, L_0x1be6a10;  1 drivers
v0x1b82ba0_0 .net *"_s7", 0 0, L_0x1be6a80;  1 drivers
v0x1b82c80_0 .net "as", 0 0, L_0x1be84b0;  1 drivers
v0x1b82d70_0 .net "carryin", 0 0, L_0x1be7fb0;  1 drivers
v0x1b82e60_0 .net "carryout", 0 0, L_0x1b81180;  alias, 1 drivers
v0x1b82f90_0 .net "modB", 0 0, L_0x1be82a0;  1 drivers
v0x1b83080_0 .net "out", 0 0, L_0x1be8ac0;  1 drivers
v0x1b83120_0 .net "overflow", 0 0, L_0x1be8c00;  alias, 1 drivers
L_0x1be8310 .part v0x1ab6bf0_0, 0, 1;
LS_0x1be8ce0_0_0 .concat8 [ 1 1 1 1], L_0x1be6a10, L_0x1be6a80, L_0x1be87f0, L_0x1be8c70;
LS_0x1be8ce0_0_4 .concat8 [ 1 1 1 1], L_0x1b81660, L_0x1be8970, L_0x1be89e0, L_0x1be8a50;
L_0x1be8ce0 .concat8 [ 4 4 0 0], LS_0x1be8ce0_0_0, LS_0x1be8ce0_0_4;
S_0x1b7f070 .scope module, "addsub" "add_sub" 7 42, 2 8 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1be83b0 .functor XOR 1, L_0x1be9200, L_0x1be82a0, C4<0>, C4<0>;
L_0x1be84b0 .functor XOR 1, L_0x1be83b0, L_0x1be7fb0, C4<0>, C4<0>;
L_0x1be8520 .functor AND 1, L_0x1be83b0, L_0x1be7fb0, C4<1>, C4<1>;
L_0x1be8620 .functor AND 1, L_0x1be9200, L_0x1be82a0, C4<1>, C4<1>;
L_0x1b81180 .functor OR 1, L_0x1be8520, L_0x1be8620, C4<0>, C4<0>;
v0x1b7f310_0 .net "A", 0 0, L_0x1be9200;  alias, 1 drivers
v0x1b7f3f0_0 .net "B", 0 0, L_0x1be82a0;  alias, 1 drivers
v0x1b7f4b0_0 .net "carryin", 0 0, L_0x1be7fb0;  alias, 1 drivers
v0x1b7f580_0 .net "carryout", 0 0, L_0x1b81180;  alias, 1 drivers
v0x1b7f640_0 .net "out1", 0 0, L_0x1be83b0;  1 drivers
v0x1b7f750_0 .net "out2", 0 0, L_0x1be8520;  1 drivers
v0x1b7f810_0 .net "out3", 0 0, L_0x1be8620;  1 drivers
v0x1b7f8d0_0 .net "sum", 0 0, L_0x1be84b0;  alias, 1 drivers
S_0x1b7fa30 .scope module, "andgate" "ALUand" 7 44, 8 8 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b81660 .functor AND 1, L_0x1be9200, L_0x1be7f10, C4<1>, C4<1>;
v0x1b7fc70_0 .net "A", 0 0, L_0x1be9200;  alias, 1 drivers
v0x1b7fd30_0 .net "B", 0 0, L_0x1be7f10;  alias, 1 drivers
v0x1b7fdd0_0 .net "out", 0 0, L_0x1b81660;  1 drivers
S_0x1b7ff20 .scope module, "elonMux" "multiplexer" 7 49, 9 4 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b80170_0 .net "I", 7 0, L_0x1be8ce0;  alias, 1 drivers
v0x1b80250_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b80310_0 .net "out", 0 0, L_0x1be8ac0;  alias, 1 drivers
L_0x1be8ac0 .part/v L_0x1be8ce0, v0x1ab6bf0_0, 1;
S_0x1b80460 .scope module, "nandgate" "ALUnand" 7 45, 8 26 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be8970 .functor NAND 1, L_0x1be9200, L_0x1be7f10, C4<1>, C4<1>;
v0x1b80680_0 .net "A", 0 0, L_0x1be9200;  alias, 1 drivers
v0x1b80790_0 .net "B", 0 0, L_0x1be7f10;  alias, 1 drivers
v0x1b80850_0 .net "out", 0 0, L_0x1be8970;  1 drivers
S_0x1b80960 .scope module, "norgate" "ALUnor" 7 46, 8 35 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be89e0 .functor NOR 1, L_0x1be9200, L_0x1be7f10, C4<0>, C4<0>;
v0x1b80bd0_0 .net "A", 0 0, L_0x1be9200;  alias, 1 drivers
v0x1b80c90_0 .net "B", 0 0, L_0x1be7f10;  alias, 1 drivers
v0x1b80da0_0 .net "out", 0 0, L_0x1be89e0;  1 drivers
S_0x1b80ea0 .scope module, "orgate" "ALUor" 7 47, 8 17 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be8a50 .functor OR 1, L_0x1be9200, L_0x1be7f10, C4<0>, C4<0>;
v0x1b810c0_0 .net "A", 0 0, L_0x1be9200;  alias, 1 drivers
v0x1b81210_0 .net "B", 0 0, L_0x1be7f10;  alias, 1 drivers
v0x1b812d0_0 .net "out", 0 0, L_0x1be8a50;  1 drivers
S_0x1b813d0 .scope module, "xorgate" "ALUxor" 7 40, 8 44 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be82a0 .functor XOR 1, L_0x1be7f10, L_0x1be8310, C4<0>, C4<0>;
v0x1b815a0_0 .net "A", 0 0, L_0x1be7f10;  alias, 1 drivers
v0x1b816f0_0 .net "B", 0 0, L_0x1be8310;  1 drivers
v0x1b817b0_0 .net "out", 0 0, L_0x1be82a0;  alias, 1 drivers
S_0x1b818f0 .scope module, "xorgate1" "ALUxor" 7 43, 8 44 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be87f0 .functor XOR 1, L_0x1be9200, L_0x1be7f10, C4<0>, C4<0>;
v0x1b81ac0_0 .net "A", 0 0, L_0x1be9200;  alias, 1 drivers
v0x1b81b80_0 .net "B", 0 0, L_0x1be7f10;  alias, 1 drivers
v0x1b81c40_0 .net "out", 0 0, L_0x1be87f0;  1 drivers
S_0x1b81d70 .scope module, "xorgate2" "ALUxor" 7 51, 8 44 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be8c00 .functor XOR 1, L_0x1be7fb0, L_0x1b81180, C4<0>, C4<0>;
v0x1b81fd0_0 .net "A", 0 0, L_0x1be7fb0;  alias, 1 drivers
v0x1b820c0_0 .net "B", 0 0, L_0x1b81180;  alias, 1 drivers
v0x1b82190_0 .net "out", 0 0, L_0x1be8c00;  alias, 1 drivers
S_0x1b822a0 .scope module, "xorgate3" "ALUxor" 7 53, 8 44 0, S_0x1b7edf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1be8c70 .functor XOR 1, L_0x1be8c00, L_0x1be84b0, C4<0>, C4<0>;
v0x1b824c0_0 .net "A", 0 0, L_0x1be8c00;  alias, 1 drivers
v0x1b825b0_0 .net "B", 0 0, L_0x1be84b0;  alias, 1 drivers
v0x1b82680_0 .net "out", 0 0, L_0x1be8c70;  1 drivers
S_0x1b83310 .scope module, "alu4" "ALU_1bit" 7 122, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bc9310 .functor BUFZ 1, L_0x1bc8c30, C4<0>, C4<0>, C4<0>;
L_0x1bc9380 .functor BUFZ 1, L_0x1bc8c30, C4<0>, C4<0>, C4<0>;
v0x1b86190_0 .net "A", 0 0, L_0x1bc97a0;  1 drivers
v0x1b86230_0 .net "B", 0 0, L_0x1bc9840;  1 drivers
v0x1b862f0_0 .net "I", 7 0, L_0x1bc9480;  1 drivers
v0x1b863f0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b86490_0 .net *"_s15", 0 0, L_0x1bc9310;  1 drivers
v0x1b865a0_0 .net *"_s19", 0 0, L_0x1bc9380;  1 drivers
L_0x7f3247f1b2e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b86680_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b2e8;  1 drivers
v0x1b86760_0 .net "addORsub", 0 0, L_0x1bc8c30;  1 drivers
v0x1b86800_0 .net "carryin", 0 0, L_0x1bc9960;  1 drivers
v0x1b86960_0 .net "carryout", 0 0, L_0x1b855a0;  1 drivers
v0x1b86a30_0 .net "modB", 0 0, L_0x1bc8a00;  1 drivers
v0x1b86ad0_0 .net "out", 0 0, L_0x1bc9220;  1 drivers
L_0x1bc8a70 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bc9480_0_0 .concat8 [ 1 1 1 1], L_0x1bc9310, L_0x1bc9380, L_0x1bc13e0, L_0x7f3247f1b2e8;
LS_0x1bc9480_0_4 .concat8 [ 1 1 1 1], L_0x1b85a80, L_0x1bc90d0, L_0x1bc9140, L_0x1bc91b0;
L_0x1bc9480 .concat8 [ 4 4 0 0], LS_0x1bc9480_0_0, LS_0x1bc9480_0_4;
S_0x1b83580 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bc8b10 .functor XOR 1, L_0x1bc97a0, L_0x1bc8a00, C4<0>, C4<0>;
L_0x1bc8c30 .functor XOR 1, L_0x1bc8b10, L_0x1bc9960, C4<0>, C4<0>;
L_0x1bc8d10 .functor AND 1, L_0x1bc8b10, L_0x1bc9960, C4<1>, C4<1>;
L_0x1bc8da0 .functor AND 1, L_0x1bc97a0, L_0x1bc8a00, C4<1>, C4<1>;
L_0x1b855a0 .functor OR 1, L_0x1bc8d10, L_0x1bc8da0, C4<0>, C4<0>;
v0x1b837f0_0 .net "A", 0 0, L_0x1bc97a0;  alias, 1 drivers
v0x1b838d0_0 .net "B", 0 0, L_0x1bc8a00;  alias, 1 drivers
v0x1b83990_0 .net "carryin", 0 0, L_0x1bc9960;  alias, 1 drivers
v0x1b83a30_0 .net "carryout", 0 0, L_0x1b855a0;  alias, 1 drivers
v0x1b83af0_0 .net "out1", 0 0, L_0x1bc8b10;  1 drivers
v0x1b83c00_0 .net "out2", 0 0, L_0x1bc8d10;  1 drivers
v0x1b83cc0_0 .net "out3", 0 0, L_0x1bc8da0;  1 drivers
v0x1b83d80_0 .net "sum", 0 0, L_0x1bc8c30;  alias, 1 drivers
S_0x1b83ee0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b85a80 .functor AND 1, L_0x1bc97a0, L_0x1bc9840, C4<1>, C4<1>;
v0x1b84120_0 .net "A", 0 0, L_0x1bc97a0;  alias, 1 drivers
v0x1b841e0_0 .net "B", 0 0, L_0x1bc9840;  alias, 1 drivers
v0x1b84280_0 .net "out", 0 0, L_0x1b85a80;  1 drivers
S_0x1b843a0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b845c0_0 .net "I", 7 0, L_0x1bc9480;  alias, 1 drivers
v0x1b846a0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b84760_0 .net "out", 0 0, L_0x1bc9220;  alias, 1 drivers
L_0x1bc9220 .part/v L_0x1bc9480, v0x1ab6bf0_0, 1;
S_0x1b84880 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc90d0 .functor NAND 1, L_0x1bc97a0, L_0x1bc9840, C4<1>, C4<1>;
v0x1b84aa0_0 .net "A", 0 0, L_0x1bc97a0;  alias, 1 drivers
v0x1b84bb0_0 .net "B", 0 0, L_0x1bc9840;  alias, 1 drivers
v0x1b84c70_0 .net "out", 0 0, L_0x1bc90d0;  1 drivers
S_0x1b84d80 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc9140 .functor NOR 1, L_0x1bc97a0, L_0x1bc9840, C4<0>, C4<0>;
v0x1b84ff0_0 .net "A", 0 0, L_0x1bc97a0;  alias, 1 drivers
v0x1b850b0_0 .net "B", 0 0, L_0x1bc9840;  alias, 1 drivers
v0x1b851c0_0 .net "out", 0 0, L_0x1bc9140;  1 drivers
S_0x1b852c0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc91b0 .functor OR 1, L_0x1bc97a0, L_0x1bc9840, C4<0>, C4<0>;
v0x1b854e0_0 .net "A", 0 0, L_0x1bc97a0;  alias, 1 drivers
v0x1b85630_0 .net "B", 0 0, L_0x1bc9840;  alias, 1 drivers
v0x1b856f0_0 .net "out", 0 0, L_0x1bc91b0;  1 drivers
S_0x1b857f0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc8a00 .functor XOR 1, L_0x1bc9840, L_0x1bc8a70, C4<0>, C4<0>;
v0x1b859c0_0 .net "A", 0 0, L_0x1bc9840;  alias, 1 drivers
v0x1b85b10_0 .net "B", 0 0, L_0x1bc8a70;  1 drivers
v0x1b85bd0_0 .net "out", 0 0, L_0x1bc8a00;  alias, 1 drivers
S_0x1b85d10 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b83310;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc13e0 .functor XOR 1, L_0x1bc97a0, L_0x1bc9840, C4<0>, C4<0>;
v0x1b85ee0_0 .net "A", 0 0, L_0x1bc97a0;  alias, 1 drivers
v0x1b85fa0_0 .net "B", 0 0, L_0x1bc9840;  alias, 1 drivers
v0x1b86060_0 .net "out", 0 0, L_0x1bc13e0;  1 drivers
S_0x1b86bf0 .scope module, "alu5" "ALU_1bit" 7 123, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bca470 .functor BUFZ 1, L_0x1bc9cc0, C4<0>, C4<0>, C4<0>;
L_0x1bca4e0 .functor BUFZ 1, L_0x1bc9cc0, C4<0>, C4<0>, C4<0>;
v0x1b89b60_0 .net "A", 0 0, L_0x1bca900;  1 drivers
v0x1b89c00_0 .net "B", 0 0, L_0x1bcaa30;  1 drivers
v0x1b89cc0_0 .net "I", 7 0, L_0x1bca5e0;  1 drivers
v0x1b89dc0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b89e60_0 .net *"_s15", 0 0, L_0x1bca470;  1 drivers
v0x1b89f70_0 .net *"_s19", 0 0, L_0x1bca4e0;  1 drivers
L_0x7f3247f1b330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b8a050_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b330;  1 drivers
v0x1b8a130_0 .net "addORsub", 0 0, L_0x1bc9cc0;  1 drivers
v0x1b8a1d0_0 .net "carryin", 0 0, L_0x1bcabe0;  1 drivers
v0x1b8a330_0 .net "carryout", 0 0, L_0x1b88f70;  1 drivers
v0x1b8a400_0 .net "modB", 0 0, L_0x1bc8990;  1 drivers
v0x1b8a4a0_0 .net "out", 0 0, L_0x1bca330;  1 drivers
L_0x1bc9b20 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bca5e0_0_0 .concat8 [ 1 1 1 1], L_0x1bca470, L_0x1bca4e0, L_0x1bca060, L_0x7f3247f1b330;
LS_0x1bca5e0_0_4 .concat8 [ 1 1 1 1], L_0x1b89450, L_0x1bca1e0, L_0x1bca250, L_0x1bca2c0;
L_0x1bca5e0 .concat8 [ 4 4 0 0], LS_0x1bca5e0_0_0, LS_0x1bca5e0_0_4;
S_0x1b86e60 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bc9bc0 .functor XOR 1, L_0x1bca900, L_0x1bc8990, C4<0>, C4<0>;
L_0x1bc9cc0 .functor XOR 1, L_0x1bc9bc0, L_0x1bcabe0, C4<0>, C4<0>;
L_0x1bc9d80 .functor AND 1, L_0x1bc9bc0, L_0x1bcabe0, C4<1>, C4<1>;
L_0x1bc9df0 .functor AND 1, L_0x1bca900, L_0x1bc8990, C4<1>, C4<1>;
L_0x1b88f70 .functor OR 1, L_0x1bc9d80, L_0x1bc9df0, C4<0>, C4<0>;
v0x1b87100_0 .net "A", 0 0, L_0x1bca900;  alias, 1 drivers
v0x1b871e0_0 .net "B", 0 0, L_0x1bc8990;  alias, 1 drivers
v0x1b872a0_0 .net "carryin", 0 0, L_0x1bcabe0;  alias, 1 drivers
v0x1b87370_0 .net "carryout", 0 0, L_0x1b88f70;  alias, 1 drivers
v0x1b87430_0 .net "out1", 0 0, L_0x1bc9bc0;  1 drivers
v0x1b87540_0 .net "out2", 0 0, L_0x1bc9d80;  1 drivers
v0x1b87600_0 .net "out3", 0 0, L_0x1bc9df0;  1 drivers
v0x1b876c0_0 .net "sum", 0 0, L_0x1bc9cc0;  alias, 1 drivers
S_0x1b87820 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b89450 .functor AND 1, L_0x1bca900, L_0x1bcaa30, C4<1>, C4<1>;
v0x1b87a60_0 .net "A", 0 0, L_0x1bca900;  alias, 1 drivers
v0x1b87b20_0 .net "B", 0 0, L_0x1bcaa30;  alias, 1 drivers
v0x1b87bc0_0 .net "out", 0 0, L_0x1b89450;  1 drivers
S_0x1b87d10 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b87f60_0 .net "I", 7 0, L_0x1bca5e0;  alias, 1 drivers
v0x1b88040_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b88100_0 .net "out", 0 0, L_0x1bca330;  alias, 1 drivers
L_0x1bca330 .part/v L_0x1bca5e0, v0x1ab6bf0_0, 1;
S_0x1b88250 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bca1e0 .functor NAND 1, L_0x1bca900, L_0x1bcaa30, C4<1>, C4<1>;
v0x1b88470_0 .net "A", 0 0, L_0x1bca900;  alias, 1 drivers
v0x1b88580_0 .net "B", 0 0, L_0x1bcaa30;  alias, 1 drivers
v0x1b88640_0 .net "out", 0 0, L_0x1bca1e0;  1 drivers
S_0x1b88750 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bca250 .functor NOR 1, L_0x1bca900, L_0x1bcaa30, C4<0>, C4<0>;
v0x1b889c0_0 .net "A", 0 0, L_0x1bca900;  alias, 1 drivers
v0x1b88a80_0 .net "B", 0 0, L_0x1bcaa30;  alias, 1 drivers
v0x1b88b90_0 .net "out", 0 0, L_0x1bca250;  1 drivers
S_0x1b88c90 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bca2c0 .functor OR 1, L_0x1bca900, L_0x1bcaa30, C4<0>, C4<0>;
v0x1b88eb0_0 .net "A", 0 0, L_0x1bca900;  alias, 1 drivers
v0x1b89000_0 .net "B", 0 0, L_0x1bcaa30;  alias, 1 drivers
v0x1b890c0_0 .net "out", 0 0, L_0x1bca2c0;  1 drivers
S_0x1b891c0 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc8990 .functor XOR 1, L_0x1bcaa30, L_0x1bc9b20, C4<0>, C4<0>;
v0x1b89390_0 .net "A", 0 0, L_0x1bcaa30;  alias, 1 drivers
v0x1b894e0_0 .net "B", 0 0, L_0x1bc9b20;  1 drivers
v0x1b895a0_0 .net "out", 0 0, L_0x1bc8990;  alias, 1 drivers
S_0x1b896e0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b86bf0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bca060 .functor XOR 1, L_0x1bca900, L_0x1bcaa30, C4<0>, C4<0>;
v0x1b898b0_0 .net "A", 0 0, L_0x1bca900;  alias, 1 drivers
v0x1b89970_0 .net "B", 0 0, L_0x1bcaa30;  alias, 1 drivers
v0x1b89a30_0 .net "out", 0 0, L_0x1bca060;  1 drivers
S_0x1b8a5c0 .scope module, "alu6" "ALU_1bit" 7 124, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bcb6c0 .functor BUFZ 1, L_0x1bcaec0, C4<0>, C4<0>, C4<0>;
L_0x1bcb730 .functor BUFZ 1, L_0x1bcaec0, C4<0>, C4<0>, C4<0>;
v0x1b8d530_0 .net "A", 0 0, L_0x1bcbb50;  1 drivers
v0x1b8d5d0_0 .net "B", 0 0, L_0x1bcbbf0;  1 drivers
v0x1b8d690_0 .net "I", 7 0, L_0x1bcb830;  1 drivers
v0x1b8d790_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b8d830_0 .net *"_s15", 0 0, L_0x1bcb6c0;  1 drivers
v0x1b8d940_0 .net *"_s19", 0 0, L_0x1bcb730;  1 drivers
L_0x7f3247f1b378 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b8da20_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b378;  1 drivers
v0x1b8db00_0 .net "addORsub", 0 0, L_0x1bcaec0;  1 drivers
v0x1b8dba0_0 .net "carryin", 0 0, L_0x1bcac80;  1 drivers
v0x1b8dd00_0 .net "carryout", 0 0, L_0x1b8c940;  1 drivers
v0x1b8ddd0_0 .net "modB", 0 0, L_0x1bca9a0;  1 drivers
v0x1b8de70_0 .net "out", 0 0, L_0x1bcb580;  1 drivers
L_0x1bcad20 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bcb830_0_0 .concat8 [ 1 1 1 1], L_0x1bcb6c0, L_0x1bcb730, L_0x1bcb2b0, L_0x7f3247f1b378;
LS_0x1bcb830_0_4 .concat8 [ 1 1 1 1], L_0x1b8ce20, L_0x1bcb430, L_0x1bcb4a0, L_0x1bcb510;
L_0x1bcb830 .concat8 [ 4 4 0 0], LS_0x1bcb830_0_0, LS_0x1bcb830_0_4;
S_0x1b8a830 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bcadc0 .functor XOR 1, L_0x1bcbb50, L_0x1bca9a0, C4<0>, C4<0>;
L_0x1bcaec0 .functor XOR 1, L_0x1bcadc0, L_0x1bcac80, C4<0>, C4<0>;
L_0x1bcafd0 .functor AND 1, L_0x1bcadc0, L_0x1bcac80, C4<1>, C4<1>;
L_0x1bcb040 .functor AND 1, L_0x1bcbb50, L_0x1bca9a0, C4<1>, C4<1>;
L_0x1b8c940 .functor OR 1, L_0x1bcafd0, L_0x1bcb040, C4<0>, C4<0>;
v0x1b8aad0_0 .net "A", 0 0, L_0x1bcbb50;  alias, 1 drivers
v0x1b8abb0_0 .net "B", 0 0, L_0x1bca9a0;  alias, 1 drivers
v0x1b8ac70_0 .net "carryin", 0 0, L_0x1bcac80;  alias, 1 drivers
v0x1b8ad40_0 .net "carryout", 0 0, L_0x1b8c940;  alias, 1 drivers
v0x1b8ae00_0 .net "out1", 0 0, L_0x1bcadc0;  1 drivers
v0x1b8af10_0 .net "out2", 0 0, L_0x1bcafd0;  1 drivers
v0x1b8afd0_0 .net "out3", 0 0, L_0x1bcb040;  1 drivers
v0x1b8b090_0 .net "sum", 0 0, L_0x1bcaec0;  alias, 1 drivers
S_0x1b8b1f0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b8ce20 .functor AND 1, L_0x1bcbb50, L_0x1bcbbf0, C4<1>, C4<1>;
v0x1b8b430_0 .net "A", 0 0, L_0x1bcbb50;  alias, 1 drivers
v0x1b8b4f0_0 .net "B", 0 0, L_0x1bcbbf0;  alias, 1 drivers
v0x1b8b590_0 .net "out", 0 0, L_0x1b8ce20;  1 drivers
S_0x1b8b6e0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b8b930_0 .net "I", 7 0, L_0x1bcb830;  alias, 1 drivers
v0x1b8ba10_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b8bad0_0 .net "out", 0 0, L_0x1bcb580;  alias, 1 drivers
L_0x1bcb580 .part/v L_0x1bcb830, v0x1ab6bf0_0, 1;
S_0x1b8bc20 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcb430 .functor NAND 1, L_0x1bcbb50, L_0x1bcbbf0, C4<1>, C4<1>;
v0x1b8be40_0 .net "A", 0 0, L_0x1bcbb50;  alias, 1 drivers
v0x1b8bf50_0 .net "B", 0 0, L_0x1bcbbf0;  alias, 1 drivers
v0x1b8c010_0 .net "out", 0 0, L_0x1bcb430;  1 drivers
S_0x1b8c120 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcb4a0 .functor NOR 1, L_0x1bcbb50, L_0x1bcbbf0, C4<0>, C4<0>;
v0x1b8c390_0 .net "A", 0 0, L_0x1bcbb50;  alias, 1 drivers
v0x1b8c450_0 .net "B", 0 0, L_0x1bcbbf0;  alias, 1 drivers
v0x1b8c560_0 .net "out", 0 0, L_0x1bcb4a0;  1 drivers
S_0x1b8c660 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcb510 .functor OR 1, L_0x1bcbb50, L_0x1bcbbf0, C4<0>, C4<0>;
v0x1b8c880_0 .net "A", 0 0, L_0x1bcbb50;  alias, 1 drivers
v0x1b8c9d0_0 .net "B", 0 0, L_0x1bcbbf0;  alias, 1 drivers
v0x1b8ca90_0 .net "out", 0 0, L_0x1bcb510;  1 drivers
S_0x1b8cb90 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bca9a0 .functor XOR 1, L_0x1bcbbf0, L_0x1bcad20, C4<0>, C4<0>;
v0x1b8cd60_0 .net "A", 0 0, L_0x1bcbbf0;  alias, 1 drivers
v0x1b8ceb0_0 .net "B", 0 0, L_0x1bcad20;  1 drivers
v0x1b8cf70_0 .net "out", 0 0, L_0x1bca9a0;  alias, 1 drivers
S_0x1b8d0b0 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b8a5c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcb2b0 .functor XOR 1, L_0x1bcbb50, L_0x1bcbbf0, C4<0>, C4<0>;
v0x1b8d280_0 .net "A", 0 0, L_0x1bcbb50;  alias, 1 drivers
v0x1b8d340_0 .net "B", 0 0, L_0x1bcbbf0;  alias, 1 drivers
v0x1b8d400_0 .net "out", 0 0, L_0x1bcb2b0;  1 drivers
S_0x1b8df90 .scope module, "alu7" "ALU_1bit" 7 125, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bcc8a0 .functor BUFZ 1, L_0x1bcc000, C4<0>, C4<0>, C4<0>;
L_0x1bcc930 .functor BUFZ 1, L_0x1bcc000, C4<0>, C4<0>, C4<0>;
v0x1b90f00_0 .net "A", 0 0, L_0x1bccd70;  1 drivers
v0x1b90fa0_0 .net "B", 0 0, L_0x1bcbc90;  1 drivers
v0x1b91060_0 .net "I", 7 0, L_0x1bcca50;  1 drivers
v0x1b91160_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b91200_0 .net *"_s15", 0 0, L_0x1bcc8a0;  1 drivers
v0x1b91310_0 .net *"_s19", 0 0, L_0x1bcc930;  1 drivers
L_0x7f3247f1b3c0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b913f0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b3c0;  1 drivers
v0x1b914d0_0 .net "addORsub", 0 0, L_0x1bcc000;  1 drivers
v0x1b91570_0 .net "carryin", 0 0, L_0x1bcced0;  1 drivers
v0x1b916d0_0 .net "carryout", 0 0, L_0x1b90310;  1 drivers
v0x1b917a0_0 .net "modB", 0 0, L_0x1bcbdd0;  1 drivers
v0x1b91840_0 .net "out", 0 0, L_0x1bcc740;  1 drivers
L_0x1bcbe40 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bcca50_0_0 .concat8 [ 1 1 1 1], L_0x1bcc8a0, L_0x1bcc930, L_0x1bcc430, L_0x7f3247f1b3c0;
LS_0x1bcca50_0_4 .concat8 [ 1 1 1 1], L_0x1b907f0, L_0x1bcc5b0, L_0x1bcc620, L_0x1bcc6b0;
L_0x1bcca50 .concat8 [ 4 4 0 0], LS_0x1bcca50_0_0, LS_0x1bcca50_0_4;
S_0x1b8e200 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bcbee0 .functor XOR 1, L_0x1bccd70, L_0x1bcbdd0, C4<0>, C4<0>;
L_0x1bcc000 .functor XOR 1, L_0x1bcbee0, L_0x1bcced0, C4<0>, C4<0>;
L_0x1bcc130 .functor AND 1, L_0x1bcbee0, L_0x1bcced0, C4<1>, C4<1>;
L_0x1bcc1c0 .functor AND 1, L_0x1bccd70, L_0x1bcbdd0, C4<1>, C4<1>;
L_0x1b90310 .functor OR 1, L_0x1bcc130, L_0x1bcc1c0, C4<0>, C4<0>;
v0x1b8e4a0_0 .net "A", 0 0, L_0x1bccd70;  alias, 1 drivers
v0x1b8e580_0 .net "B", 0 0, L_0x1bcbdd0;  alias, 1 drivers
v0x1b8e640_0 .net "carryin", 0 0, L_0x1bcced0;  alias, 1 drivers
v0x1b8e710_0 .net "carryout", 0 0, L_0x1b90310;  alias, 1 drivers
v0x1b8e7d0_0 .net "out1", 0 0, L_0x1bcbee0;  1 drivers
v0x1b8e8e0_0 .net "out2", 0 0, L_0x1bcc130;  1 drivers
v0x1b8e9a0_0 .net "out3", 0 0, L_0x1bcc1c0;  1 drivers
v0x1b8ea60_0 .net "sum", 0 0, L_0x1bcc000;  alias, 1 drivers
S_0x1b8ebc0 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b907f0 .functor AND 1, L_0x1bccd70, L_0x1bcbc90, C4<1>, C4<1>;
v0x1b8ee00_0 .net "A", 0 0, L_0x1bccd70;  alias, 1 drivers
v0x1b8eec0_0 .net "B", 0 0, L_0x1bcbc90;  alias, 1 drivers
v0x1b8ef60_0 .net "out", 0 0, L_0x1b907f0;  1 drivers
S_0x1b8f0b0 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b8f300_0 .net "I", 7 0, L_0x1bcca50;  alias, 1 drivers
v0x1b8f3e0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b8f4a0_0 .net "out", 0 0, L_0x1bcc740;  alias, 1 drivers
L_0x1bcc740 .part/v L_0x1bcca50, v0x1ab6bf0_0, 1;
S_0x1b8f5f0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcc5b0 .functor NAND 1, L_0x1bccd70, L_0x1bcbc90, C4<1>, C4<1>;
v0x1b8f810_0 .net "A", 0 0, L_0x1bccd70;  alias, 1 drivers
v0x1b8f920_0 .net "B", 0 0, L_0x1bcbc90;  alias, 1 drivers
v0x1b8f9e0_0 .net "out", 0 0, L_0x1bcc5b0;  1 drivers
S_0x1b8faf0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcc620 .functor NOR 1, L_0x1bccd70, L_0x1bcbc90, C4<0>, C4<0>;
v0x1b8fd60_0 .net "A", 0 0, L_0x1bccd70;  alias, 1 drivers
v0x1b8fe20_0 .net "B", 0 0, L_0x1bcbc90;  alias, 1 drivers
v0x1b8ff30_0 .net "out", 0 0, L_0x1bcc620;  1 drivers
S_0x1b90030 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcc6b0 .functor OR 1, L_0x1bccd70, L_0x1bcbc90, C4<0>, C4<0>;
v0x1b90250_0 .net "A", 0 0, L_0x1bccd70;  alias, 1 drivers
v0x1b903a0_0 .net "B", 0 0, L_0x1bcbc90;  alias, 1 drivers
v0x1b90460_0 .net "out", 0 0, L_0x1bcc6b0;  1 drivers
S_0x1b90560 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcbdd0 .functor XOR 1, L_0x1bcbc90, L_0x1bcbe40, C4<0>, C4<0>;
v0x1b90730_0 .net "A", 0 0, L_0x1bcbc90;  alias, 1 drivers
v0x1b90880_0 .net "B", 0 0, L_0x1bcbe40;  1 drivers
v0x1b90940_0 .net "out", 0 0, L_0x1bcbdd0;  alias, 1 drivers
S_0x1b90a80 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b8df90;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcc430 .functor XOR 1, L_0x1bccd70, L_0x1bcbc90, C4<0>, C4<0>;
v0x1b90c50_0 .net "A", 0 0, L_0x1bccd70;  alias, 1 drivers
v0x1b90d10_0 .net "B", 0 0, L_0x1bcbc90;  alias, 1 drivers
v0x1b90dd0_0 .net "out", 0 0, L_0x1bcc430;  1 drivers
S_0x1b91960 .scope module, "alu8" "ALU_1bit" 7 126, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bcdaf0 .functor BUFZ 1, L_0x1bcd270, C4<0>, C4<0>, C4<0>;
L_0x1bcdb80 .functor BUFZ 1, L_0x1bcd270, C4<0>, C4<0>, C4<0>;
v0x1b948d0_0 .net "A", 0 0, L_0x1bcdfc0;  1 drivers
v0x1b94970_0 .net "B", 0 0, L_0x1bce060;  1 drivers
v0x1b94a30_0 .net "I", 7 0, L_0x1bcdca0;  1 drivers
v0x1b94b30_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b94bd0_0 .net *"_s15", 0 0, L_0x1bcdaf0;  1 drivers
v0x1b94ce0_0 .net *"_s19", 0 0, L_0x1bcdb80;  1 drivers
L_0x7f3247f1b408 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b94dc0_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b408;  1 drivers
v0x1b94ea0_0 .net "addORsub", 0 0, L_0x1bcd270;  1 drivers
v0x1b94f40_0 .net "carryin", 0 0, L_0x1bcd000;  1 drivers
v0x1b950a0_0 .net "carryout", 0 0, L_0x1b93ce0;  1 drivers
v0x1b95170_0 .net "modB", 0 0, L_0x1bcce10;  1 drivers
v0x1b95210_0 .net "out", 0 0, L_0x1bcd990;  1 drivers
L_0x1bcd0d0 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bcdca0_0_0 .concat8 [ 1 1 1 1], L_0x1bcdaf0, L_0x1bcdb80, L_0x1bcd680, L_0x7f3247f1b408;
LS_0x1bcdca0_0_4 .concat8 [ 1 1 1 1], L_0x1b941c0, L_0x1bcd800, L_0x1bcd870, L_0x1bcd900;
L_0x1bcdca0 .concat8 [ 4 4 0 0], LS_0x1bcdca0_0_0, LS_0x1bcdca0_0_4;
S_0x1b91bd0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bcd170 .functor XOR 1, L_0x1bcdfc0, L_0x1bcce10, C4<0>, C4<0>;
L_0x1bcd270 .functor XOR 1, L_0x1bcd170, L_0x1bcd000, C4<0>, C4<0>;
L_0x1bcd380 .functor AND 1, L_0x1bcd170, L_0x1bcd000, C4<1>, C4<1>;
L_0x1bcd410 .functor AND 1, L_0x1bcdfc0, L_0x1bcce10, C4<1>, C4<1>;
L_0x1b93ce0 .functor OR 1, L_0x1bcd380, L_0x1bcd410, C4<0>, C4<0>;
v0x1b91e70_0 .net "A", 0 0, L_0x1bcdfc0;  alias, 1 drivers
v0x1b91f50_0 .net "B", 0 0, L_0x1bcce10;  alias, 1 drivers
v0x1b92010_0 .net "carryin", 0 0, L_0x1bcd000;  alias, 1 drivers
v0x1b920e0_0 .net "carryout", 0 0, L_0x1b93ce0;  alias, 1 drivers
v0x1b921a0_0 .net "out1", 0 0, L_0x1bcd170;  1 drivers
v0x1b922b0_0 .net "out2", 0 0, L_0x1bcd380;  1 drivers
v0x1b92370_0 .net "out3", 0 0, L_0x1bcd410;  1 drivers
v0x1b92430_0 .net "sum", 0 0, L_0x1bcd270;  alias, 1 drivers
S_0x1b92590 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b941c0 .functor AND 1, L_0x1bcdfc0, L_0x1bce060, C4<1>, C4<1>;
v0x1b927d0_0 .net "A", 0 0, L_0x1bcdfc0;  alias, 1 drivers
v0x1b92890_0 .net "B", 0 0, L_0x1bce060;  alias, 1 drivers
v0x1b92930_0 .net "out", 0 0, L_0x1b941c0;  1 drivers
S_0x1b92a80 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b92cd0_0 .net "I", 7 0, L_0x1bcdca0;  alias, 1 drivers
v0x1b92db0_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b92e70_0 .net "out", 0 0, L_0x1bcd990;  alias, 1 drivers
L_0x1bcd990 .part/v L_0x1bcdca0, v0x1ab6bf0_0, 1;
S_0x1b92fc0 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcd800 .functor NAND 1, L_0x1bcdfc0, L_0x1bce060, C4<1>, C4<1>;
v0x1b931e0_0 .net "A", 0 0, L_0x1bcdfc0;  alias, 1 drivers
v0x1b932f0_0 .net "B", 0 0, L_0x1bce060;  alias, 1 drivers
v0x1b933b0_0 .net "out", 0 0, L_0x1bcd800;  1 drivers
S_0x1b934c0 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcd870 .functor NOR 1, L_0x1bcdfc0, L_0x1bce060, C4<0>, C4<0>;
v0x1b93730_0 .net "A", 0 0, L_0x1bcdfc0;  alias, 1 drivers
v0x1b937f0_0 .net "B", 0 0, L_0x1bce060;  alias, 1 drivers
v0x1b93900_0 .net "out", 0 0, L_0x1bcd870;  1 drivers
S_0x1b93a00 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcd900 .functor OR 1, L_0x1bcdfc0, L_0x1bce060, C4<0>, C4<0>;
v0x1b93c20_0 .net "A", 0 0, L_0x1bcdfc0;  alias, 1 drivers
v0x1b93d70_0 .net "B", 0 0, L_0x1bce060;  alias, 1 drivers
v0x1b93e30_0 .net "out", 0 0, L_0x1bcd900;  1 drivers
S_0x1b93f30 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcce10 .functor XOR 1, L_0x1bce060, L_0x1bcd0d0, C4<0>, C4<0>;
v0x1b94100_0 .net "A", 0 0, L_0x1bce060;  alias, 1 drivers
v0x1b94250_0 .net "B", 0 0, L_0x1bcd0d0;  1 drivers
v0x1b94310_0 .net "out", 0 0, L_0x1bcce10;  alias, 1 drivers
S_0x1b94450 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b91960;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcd680 .functor XOR 1, L_0x1bcdfc0, L_0x1bce060, C4<0>, C4<0>;
v0x1b94620_0 .net "A", 0 0, L_0x1bcdfc0;  alias, 1 drivers
v0x1b946e0_0 .net "B", 0 0, L_0x1bce060;  alias, 1 drivers
v0x1b947a0_0 .net "out", 0 0, L_0x1bcd680;  1 drivers
S_0x1b95330 .scope module, "alu9" "ALU_1bit" 7 127, 7 66 0, S_0x1b10060;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
    .port_info 5 /INPUT 3 "S"
L_0x1bceda0 .functor BUFZ 1, L_0x1bce520, C4<0>, C4<0>, C4<0>;
L_0x1bcee30 .functor BUFZ 1, L_0x1bce520, C4<0>, C4<0>, C4<0>;
v0x1b982a0_0 .net "A", 0 0, L_0x1bcf270;  1 drivers
v0x1b98340_0 .net "B", 0 0, L_0x1bce100;  1 drivers
v0x1b98400_0 .net "I", 7 0, L_0x1bcef50;  1 drivers
v0x1b98500_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b5dc60_0 .net *"_s15", 0 0, L_0x1bceda0;  1 drivers
v0x1b5dd70_0 .net *"_s19", 0 0, L_0x1bcee30;  1 drivers
L_0x7f3247f1b450 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x1b5de50_0 .net/2s *"_s23", 0 0, L_0x7f3247f1b450;  1 drivers
v0x1b5df30_0 .net "addORsub", 0 0, L_0x1bce520;  1 drivers
v0x1b5dfd0_0 .net "carryin", 0 0, L_0x1bcf520;  1 drivers
v0x1b98e70_0 .net "carryout", 0 0, L_0x1b976b0;  1 drivers
v0x1b98f40_0 .net "modB", 0 0, L_0x1bc9a90;  1 drivers
v0x1b98fe0_0 .net "out", 0 0, L_0x1bcec40;  1 drivers
L_0x1bce380 .part v0x1ab6bf0_0, 0, 1;
LS_0x1bcef50_0_0 .concat8 [ 1 1 1 1], L_0x1bceda0, L_0x1bcee30, L_0x1bce930, L_0x7f3247f1b450;
LS_0x1bcef50_0_4 .concat8 [ 1 1 1 1], L_0x1b97b90, L_0x1bceab0, L_0x1bceb20, L_0x1bcebb0;
L_0x1bcef50 .concat8 [ 4 4 0 0], LS_0x1bcef50_0_0, LS_0x1bcef50_0_4;
S_0x1b955a0 .scope module, "addsub" "add_sub" 7 81, 2 8 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "A"
    .port_info 3 /INPUT 1 "B"
    .port_info 4 /INPUT 1 "carryin"
L_0x1bce420 .functor XOR 1, L_0x1bcf270, L_0x1bc9a90, C4<0>, C4<0>;
L_0x1bce520 .functor XOR 1, L_0x1bce420, L_0x1bcf520, C4<0>, C4<0>;
L_0x1bce630 .functor AND 1, L_0x1bce420, L_0x1bcf520, C4<1>, C4<1>;
L_0x1bce6c0 .functor AND 1, L_0x1bcf270, L_0x1bc9a90, C4<1>, C4<1>;
L_0x1b976b0 .functor OR 1, L_0x1bce630, L_0x1bce6c0, C4<0>, C4<0>;
v0x1b95840_0 .net "A", 0 0, L_0x1bcf270;  alias, 1 drivers
v0x1b95920_0 .net "B", 0 0, L_0x1bc9a90;  alias, 1 drivers
v0x1b959e0_0 .net "carryin", 0 0, L_0x1bcf520;  alias, 1 drivers
v0x1b95ab0_0 .net "carryout", 0 0, L_0x1b976b0;  alias, 1 drivers
v0x1b95b70_0 .net "out1", 0 0, L_0x1bce420;  1 drivers
v0x1b95c80_0 .net "out2", 0 0, L_0x1bce630;  1 drivers
v0x1b95d40_0 .net "out3", 0 0, L_0x1bce6c0;  1 drivers
v0x1b95e00_0 .net "sum", 0 0, L_0x1bce520;  alias, 1 drivers
S_0x1b95f60 .scope module, "andgate" "ALUand" 7 83, 8 8 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1b97b90 .functor AND 1, L_0x1bcf270, L_0x1bce100, C4<1>, C4<1>;
v0x1b961a0_0 .net "A", 0 0, L_0x1bcf270;  alias, 1 drivers
v0x1b96260_0 .net "B", 0 0, L_0x1bce100;  alias, 1 drivers
v0x1b96300_0 .net "out", 0 0, L_0x1b97b90;  1 drivers
S_0x1b96450 .scope module, "elonMux" "multiplexer" 7 88, 9 4 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 8 "I"
    .port_info 2 /INPUT 3 "S"
v0x1b966a0_0 .net "I", 7 0, L_0x1bcef50;  alias, 1 drivers
v0x1b96780_0 .net "S", 2 0, v0x1ab6bf0_0;  alias, 1 drivers
v0x1b96840_0 .net "out", 0 0, L_0x1bcec40;  alias, 1 drivers
L_0x1bcec40 .part/v L_0x1bcef50, v0x1ab6bf0_0, 1;
S_0x1b96990 .scope module, "nandgate" "ALUnand" 7 84, 8 26 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bceab0 .functor NAND 1, L_0x1bcf270, L_0x1bce100, C4<1>, C4<1>;
v0x1b96bb0_0 .net "A", 0 0, L_0x1bcf270;  alias, 1 drivers
v0x1b96cc0_0 .net "B", 0 0, L_0x1bce100;  alias, 1 drivers
v0x1b96d80_0 .net "out", 0 0, L_0x1bceab0;  1 drivers
S_0x1b96e90 .scope module, "norgate" "ALUnor" 7 85, 8 35 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bceb20 .functor NOR 1, L_0x1bcf270, L_0x1bce100, C4<0>, C4<0>;
v0x1b97100_0 .net "A", 0 0, L_0x1bcf270;  alias, 1 drivers
v0x1b971c0_0 .net "B", 0 0, L_0x1bce100;  alias, 1 drivers
v0x1b972d0_0 .net "out", 0 0, L_0x1bceb20;  1 drivers
S_0x1b973d0 .scope module, "orgate" "ALUor" 7 86, 8 17 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bcebb0 .functor OR 1, L_0x1bcf270, L_0x1bce100, C4<0>, C4<0>;
v0x1b975f0_0 .net "A", 0 0, L_0x1bcf270;  alias, 1 drivers
v0x1b97740_0 .net "B", 0 0, L_0x1bce100;  alias, 1 drivers
v0x1b97800_0 .net "out", 0 0, L_0x1bcebb0;  1 drivers
S_0x1b97900 .scope module, "xorgate" "ALUxor" 7 79, 8 44 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bc9a90 .functor XOR 1, L_0x1bce100, L_0x1bce380, C4<0>, C4<0>;
v0x1b97ad0_0 .net "A", 0 0, L_0x1bce100;  alias, 1 drivers
v0x1b97c20_0 .net "B", 0 0, L_0x1bce380;  1 drivers
v0x1b97ce0_0 .net "out", 0 0, L_0x1bc9a90;  alias, 1 drivers
S_0x1b97e20 .scope module, "xorgate1" "ALUxor" 7 82, 8 44 0, S_0x1b95330;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "A"
    .port_info 2 /INPUT 1 "B"
L_0x1bce930 .functor XOR 1, L_0x1bcf270, L_0x1bce100, C4<0>, C4<0>;
v0x1b97ff0_0 .net "A", 0 0, L_0x1bcf270;  alias, 1 drivers
v0x1b980b0_0 .net "B", 0 0, L_0x1bce100;  alias, 1 drivers
v0x1b98170_0 .net "out", 0 0, L_0x1bce930;  1 drivers
S_0x1b9b850 .scope module, "mem" "memory" 4 51, 10 1 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "clk"
    .port_info 1 /INPUT 1 "dmWE"
    .port_info 2 /INPUT 32 "Addr0"
    .port_info 3 /INPUT 32 "instruct_Addr1"
    .port_info 4 /INPUT 32 "DataIn0"
    .port_info 5 /OUTPUT 32 "DataOut0"
    .port_info 6 /OUTPUT 32 "instruct_DataOut1"
L_0x1bb0260 .functor BUFZ 32, L_0x1bb01c0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bb0410 .functor BUFZ 32, L_0x1bb0320, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bb05b0 .functor BUFZ 32, L_0x1bb0510, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1b9bb00_0 .net "Addr0", 31 0, L_0x1bb0670;  1 drivers
v0x1b9bc00_0 .net "DataIn0", 31 0, L_0x1bc47b0;  alias, 1 drivers
v0x1b9bce0_0 .net "DataOut0", 31 0, L_0x1bb0410;  alias, 1 drivers
v0x1b9bdd0_0 .net *"_s0", 31 0, L_0x1bb01c0;  1 drivers
v0x1b9beb0_0 .net *"_s4", 31 0, L_0x1bb0320;  1 drivers
v0x1b9bfe0_0 .net *"_s8", 31 0, L_0x1bb0510;  1 drivers
v0x1b9c0c0_0 .net "clk", 0 0, v0x1baebf0_0;  alias, 1 drivers
v0x1b9c160_0 .net "dmWE", 0 0, v0x1b20150_0;  alias, 1 drivers
v0x1b9c230_0 .net "instruct_Addr1", 31 0, L_0x1bb08b0;  1 drivers
v0x1b9c360_0 .net "instruct_DataOut1", 31 0, L_0x1bb05b0;  alias, 1 drivers
v0x1b9c450 .array "mem", 0 32767, 31 0;
v0x1b9c4f0_0 .net "memAtAdd", 31 0, L_0x1bb0260;  1 drivers
E_0x1b9ba80 .event posedge, v0x1b1fe50_0;
L_0x1bb01c0 .array/port v0x1b9c450, L_0x1bb0670;
L_0x1bb0320 .array/port v0x1b9c450, L_0x1bb0670;
L_0x1bb0510 .array/port v0x1b9c450, L_0x1bb08b0;
S_0x1b9c6f0 .scope module, "op_imm_mux" "mux2" 4 64, 11 1 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 1 "select0"
    .port_info 3 /OUTPUT 32 "out"
v0x1b9c930_0 .net "input0", 31 0, v0x1b1b860_0;  alias, 1 drivers
v0x1b9ca40_0 .net "input1", 31 0, L_0x1bc47b0;  alias, 1 drivers
v0x1b9cb10_0 .net "out", 31 0, L_0x1becb60;  alias, 1 drivers
v0x1b9cc10_0 .net "select0", 0 0, v0x1b175b0_0;  alias, 1 drivers
L_0x1becb60 .functor MUXZ 32, L_0x1bc47b0, v0x1b1b860_0, v0x1b175b0_0, C4<>;
S_0x1b9cd30 .scope module, "pcmux" "pc_multiplexer" 4 48, 12 7 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "PC"
    .port_info 1 /INPUT 32 "immediate"
    .port_info 2 /INPUT 26 "JumpAddress"
    .port_info 3 /INPUT 32 "regRs"
    .port_info 4 /INPUT 1 "clk"
    .port_info 5 /INPUT 2 "S"
v0x1b9d000_0 .net "JumpAddress", 25 0, v0x1b1fd90_0;  alias, 1 drivers
v0x1b9d110_0 .var "PC", 31 0;
v0x1b9d1d0_0 .net "S", 1 0, v0x1abb120_0;  alias, 1 drivers
v0x1b9d2d0_0 .net "clk", 0 0, v0x1baebf0_0;  alias, 1 drivers
v0x1b9d3c0_0 .net "immediate", 31 0, v0x1b1b860_0;  alias, 1 drivers
v0x1b9d500_0 .var "mux_out", 31 0;
v0x1b9d5e0_0 .var "nextPC", 31 0;
v0x1b9d6c0_0 .net "regRs", 31 0, L_0x1bc2050;  alias, 1 drivers
v0x1b9d780_0 .var "tempimmediate", 31 0;
E_0x1b9cfa0/0 .event edge, v0x1abb120_0, v0x1b99100_0, v0x1b1b860_0, v0x1b1fd90_0;
E_0x1b9cfa0/1 .event edge, v0x1b9d5e0_0;
E_0x1b9cfa0 .event/or E_0x1b9cfa0/0, E_0x1b9cfa0/1;
S_0x1b9d9d0 .scope module, "reg_in_mux" "mux3_32bit" 4 63, 11 21 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "input0"
    .port_info 1 /INPUT 32 "input1"
    .port_info 2 /INPUT 32 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 32 "out"
v0x1b9dbd0_0 .net *"_s1", 0 0, L_0x1bec3d0;  1 drivers
v0x1b9dcd0_0 .net *"_s10", 31 0, L_0x1bec730;  1 drivers
v0x1b9ddb0_0 .net *"_s3", 0 0, L_0x1bec470;  1 drivers
L_0x7f3247f1bb10 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1b9de70_0 .net/2u *"_s4", 31 0, L_0x7f3247f1bb10;  1 drivers
v0x1b9df50_0 .net *"_s6", 31 0, L_0x1bec5a0;  1 drivers
v0x1b9e080_0 .net *"_s9", 0 0, L_0x1bec690;  1 drivers
v0x1b9e160_0 .net "input0", 31 0, L_0x1be9050;  alias, 1 drivers
v0x1b9e220_0 .net "input1", 31 0, L_0x1bb0410;  alias, 1 drivers
v0x1b9e2f0_0 .net "input2", 31 0, L_0x1bec9b0;  1 drivers
v0x1b9e440_0 .net "out", 31 0, L_0x1bec820;  alias, 1 drivers
v0x1b9e520_0 .net "select0", 1 0, v0x1b011c0_0;  alias, 1 drivers
L_0x1bec3d0 .part v0x1b011c0_0, 1, 1;
L_0x1bec470 .part v0x1b011c0_0, 0, 1;
L_0x1bec5a0 .functor MUXZ 32, L_0x1bec9b0, L_0x7f3247f1bb10, L_0x1bec470, C4<>;
L_0x1bec690 .part v0x1b011c0_0, 0, 1;
L_0x1bec730 .functor MUXZ 32, L_0x1be9050, L_0x1bb0410, L_0x1bec690, C4<>;
L_0x1bec820 .functor MUXZ 32, L_0x1bec730, L_0x1bec5a0, L_0x1bec3d0, C4<>;
S_0x1b9e6c0 .scope module, "reg_select_mux" "mux3_5bit" 4 62, 11 11 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /INPUT 5 "input0"
    .port_info 1 /INPUT 5 "input1"
    .port_info 2 /INPUT 5 "input2"
    .port_info 3 /INPUT 2 "select0"
    .port_info 4 /OUTPUT 5 "out"
v0x1b9e8c0_0 .net *"_s1", 0 0, L_0x1beb470;  1 drivers
v0x1b9e9c0_0 .net *"_s10", 4 0, L_0x1bec100;  1 drivers
v0x1b9eaa0_0 .net *"_s3", 0 0, L_0x1bebed0;  1 drivers
L_0x7f3247f1ba80 .functor BUFT 1, C4<00000>, C4<0>, C4<0>, C4<0>;
v0x1b9eb90_0 .net/2u *"_s4", 4 0, L_0x7f3247f1ba80;  1 drivers
v0x1b9ec70_0 .net *"_s6", 4 0, L_0x1bebf70;  1 drivers
v0x1b9eda0_0 .net *"_s9", 0 0, L_0x1bec060;  1 drivers
v0x1b9ee80_0 .net "input0", 4 0, v0x1b015a0_0;  alias, 1 drivers
v0x1b9ef40_0 .net "input1", 4 0, v0x1afcb30_0;  alias, 1 drivers
L_0x7f3247f1bac8 .functor BUFT 1, C4<11111>, C4<0>, C4<0>, C4<0>;
v0x1b9f010_0 .net "input2", 4 0, L_0x7f3247f1bac8;  1 drivers
v0x1b9f180_0 .net "out", 4 0, L_0x1bec1f0;  alias, 1 drivers
v0x1b9f260_0 .net "select0", 1 0, v0x1b1bbd0_0;  alias, 1 drivers
L_0x1beb470 .part v0x1b1bbd0_0, 1, 1;
L_0x1bebed0 .part v0x1b1bbd0_0, 0, 1;
L_0x1bebf70 .functor MUXZ 5, L_0x7f3247f1bac8, L_0x7f3247f1ba80, L_0x1bebed0, C4<>;
L_0x1bec060 .part v0x1b1bbd0_0, 0, 1;
L_0x1bec100 .functor MUXZ 5, v0x1b015a0_0, v0x1afcb30_0, L_0x1bec060, C4<>;
L_0x1bec1f0 .functor MUXZ 5, L_0x1bec100, L_0x1bebf70, L_0x1beb470, C4<>;
S_0x1b9f3c0 .scope module, "regi" "regfile" 4 57, 13 12 0, S_0x1b2ec50;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x1ba8850_0 .net "Clk", 0 0, v0x1baebf0_0;  alias, 1 drivers
v0x1bab7a0_0 .net "ReadData1", 31 0, L_0x1bc2050;  alias, 1 drivers
v0x1bab840_0 .net "ReadData2", 31 0, L_0x1bc47b0;  alias, 1 drivers
v0x1bab8e0_0 .net "ReadRegister1", 4 0, v0x1afcef0_0;  alias, 1 drivers
v0x1bab9d0_0 .net "ReadRegister2", 4 0, v0x1afcb30_0;  alias, 1 drivers
v0x1babac0_0 .net "RegWrite", 0 0, v0x1b01120_0;  alias, 1 drivers
v0x1babbb0_0 .net "WriteData", 31 0, L_0x1bec820;  alias, 1 drivers
v0x1babc70_0 .net "WriteRegister", 4 0, L_0x1bec1f0;  alias, 1 drivers
v0x1babd60_0 .net "decoded", 31 0, L_0x1bc0ae0;  1 drivers
v0x1babeb0 .array "registers", 0 31, 31 0;
S_0x1b9f6a0 .scope module, "deco" "decoder1to32" 13 30, 14 4 0, S_0x1b9f3c0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x1b9f900_0 .net *"_s0", 31 0, L_0x1bb09a0;  1 drivers
L_0x7f3247f1b060 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x1b9fa00_0 .net *"_s3", 30 0, L_0x7f3247f1b060;  1 drivers
v0x1b9fae0_0 .net "address", 4 0, L_0x1bec1f0;  alias, 1 drivers
v0x1b9fbb0_0 .net "enable", 0 0, v0x1b01120_0;  alias, 1 drivers
v0x1b9fc80_0 .net "out", 31 0, L_0x1bc0ae0;  alias, 1 drivers
L_0x1bb09a0 .concat [ 1 31 0 0], v0x1b01120_0, L_0x7f3247f1b060;
L_0x1bc0ae0 .shift/l 32, L_0x1bb09a0, L_0x1bec1f0;
S_0x1b9fdf0 .scope generate, "genblk1[1]" "genblk1[1]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1b9ffe0 .param/l "i" 0 13 33, +C4<01>;
S_0x1ba00a0 .scope generate, "genblk1[2]" "genblk1[2]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba0290 .param/l "i" 0 13 33, +C4<010>;
S_0x1ba0330 .scope generate, "genblk1[3]" "genblk1[3]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba0520 .param/l "i" 0 13 33, +C4<011>;
S_0x1ba05e0 .scope generate, "genblk1[4]" "genblk1[4]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba0820 .param/l "i" 0 13 33, +C4<0100>;
S_0x1ba08e0 .scope generate, "genblk1[5]" "genblk1[5]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba0ad0 .param/l "i" 0 13 33, +C4<0101>;
S_0x1ba0b90 .scope generate, "genblk1[6]" "genblk1[6]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba0d80 .param/l "i" 0 13 33, +C4<0110>;
S_0x1ba0e40 .scope generate, "genblk1[7]" "genblk1[7]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba1030 .param/l "i" 0 13 33, +C4<0111>;
S_0x1ba10f0 .scope generate, "genblk1[8]" "genblk1[8]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba07d0 .param/l "i" 0 13 33, +C4<01000>;
S_0x1ba13e0 .scope generate, "genblk1[9]" "genblk1[9]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba15d0 .param/l "i" 0 13 33, +C4<01001>;
S_0x1ba1690 .scope generate, "genblk1[10]" "genblk1[10]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba1880 .param/l "i" 0 13 33, +C4<01010>;
S_0x1ba1940 .scope generate, "genblk1[11]" "genblk1[11]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba1b30 .param/l "i" 0 13 33, +C4<01011>;
S_0x1ba1bf0 .scope generate, "genblk1[12]" "genblk1[12]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba1de0 .param/l "i" 0 13 33, +C4<01100>;
S_0x1ba1ea0 .scope generate, "genblk1[13]" "genblk1[13]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba2090 .param/l "i" 0 13 33, +C4<01101>;
S_0x1ba2150 .scope generate, "genblk1[14]" "genblk1[14]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba2340 .param/l "i" 0 13 33, +C4<01110>;
S_0x1ba2400 .scope generate, "genblk1[15]" "genblk1[15]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba25f0 .param/l "i" 0 13 33, +C4<01111>;
S_0x1ba26b0 .scope generate, "genblk1[16]" "genblk1[16]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba12e0 .param/l "i" 0 13 33, +C4<010000>;
S_0x1ba2a00 .scope generate, "genblk1[17]" "genblk1[17]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba2bd0 .param/l "i" 0 13 33, +C4<010001>;
S_0x1ba2c90 .scope generate, "genblk1[18]" "genblk1[18]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba2e80 .param/l "i" 0 13 33, +C4<010010>;
S_0x1ba2f40 .scope generate, "genblk1[19]" "genblk1[19]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba3130 .param/l "i" 0 13 33, +C4<010011>;
S_0x1ba31f0 .scope generate, "genblk1[20]" "genblk1[20]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba33e0 .param/l "i" 0 13 33, +C4<010100>;
S_0x1ba34a0 .scope generate, "genblk1[21]" "genblk1[21]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba3690 .param/l "i" 0 13 33, +C4<010101>;
S_0x1ba3750 .scope generate, "genblk1[22]" "genblk1[22]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba3940 .param/l "i" 0 13 33, +C4<010110>;
S_0x1ba3a00 .scope generate, "genblk1[23]" "genblk1[23]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba3bf0 .param/l "i" 0 13 33, +C4<010111>;
S_0x1ba3cb0 .scope generate, "genblk1[24]" "genblk1[24]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba3ea0 .param/l "i" 0 13 33, +C4<011000>;
S_0x1ba3f60 .scope generate, "genblk1[25]" "genblk1[25]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba4150 .param/l "i" 0 13 33, +C4<011001>;
S_0x1ba4210 .scope generate, "genblk1[26]" "genblk1[26]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba4400 .param/l "i" 0 13 33, +C4<011010>;
S_0x1ba44c0 .scope generate, "genblk1[27]" "genblk1[27]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba46b0 .param/l "i" 0 13 33, +C4<011011>;
S_0x1ba4770 .scope generate, "genblk1[28]" "genblk1[28]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba4960 .param/l "i" 0 13 33, +C4<011100>;
S_0x1ba4a20 .scope generate, "genblk1[29]" "genblk1[29]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba4c10 .param/l "i" 0 13 33, +C4<011101>;
S_0x1ba4cd0 .scope generate, "genblk1[30]" "genblk1[30]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba4ec0 .param/l "i" 0 13 33, +C4<011110>;
S_0x1ba4f80 .scope generate, "genblk1[31]" "genblk1[31]" 13 33, 13 33 0, S_0x1b9f3c0;
 .timescale 0 0;
P_0x1ba5170 .param/l "i" 0 13 33, +C4<011111>;
S_0x1ba5230 .scope module, "mux1" "mux32to1by32" 13 40, 15 10 0, S_0x1b9f3c0;
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
L_0x7f3247f1b0f0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1bc0cb0 .functor BUFZ 32, L_0x7f3247f1b0f0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_1 .array/port v0x1babeb0, 1;
L_0x1bc0d20 .functor BUFZ 32, v0x1babeb0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_2 .array/port v0x1babeb0, 2;
L_0x1bc0d90 .functor BUFZ 32, v0x1babeb0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_3 .array/port v0x1babeb0, 3;
L_0x1bc0e00 .functor BUFZ 32, v0x1babeb0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_4 .array/port v0x1babeb0, 4;
L_0x1bc0e70 .functor BUFZ 32, v0x1babeb0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_5 .array/port v0x1babeb0, 5;
L_0x1bc0ee0 .functor BUFZ 32, v0x1babeb0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_6 .array/port v0x1babeb0, 6;
L_0x1bc0f90 .functor BUFZ 32, v0x1babeb0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_7 .array/port v0x1babeb0, 7;
L_0x1bc1000 .functor BUFZ 32, v0x1babeb0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_8 .array/port v0x1babeb0, 8;
L_0x1bc1070 .functor BUFZ 32, v0x1babeb0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_9 .array/port v0x1babeb0, 9;
L_0x1bc10e0 .functor BUFZ 32, v0x1babeb0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_10 .array/port v0x1babeb0, 10;
L_0x1bc11b0 .functor BUFZ 32, v0x1babeb0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_11 .array/port v0x1babeb0, 11;
L_0x1bc1220 .functor BUFZ 32, v0x1babeb0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_12 .array/port v0x1babeb0, 12;
L_0x1bc1300 .functor BUFZ 32, v0x1babeb0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_13 .array/port v0x1babeb0, 13;
L_0x1bc1370 .functor BUFZ 32, v0x1babeb0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_14 .array/port v0x1babeb0, 14;
L_0x1bc1290 .functor BUFZ 32, v0x1babeb0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_15 .array/port v0x1babeb0, 15;
L_0x1bc1460 .functor BUFZ 32, v0x1babeb0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_16 .array/port v0x1babeb0, 16;
L_0x1bc1560 .functor BUFZ 32, v0x1babeb0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_17 .array/port v0x1babeb0, 17;
L_0x1bc15d0 .functor BUFZ 32, v0x1babeb0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_18 .array/port v0x1babeb0, 18;
L_0x1bc14d0 .functor BUFZ 32, v0x1babeb0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_19 .array/port v0x1babeb0, 19;
L_0x1bc16e0 .functor BUFZ 32, v0x1babeb0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_20 .array/port v0x1babeb0, 20;
L_0x1bc1640 .functor BUFZ 32, v0x1babeb0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_21 .array/port v0x1babeb0, 21;
L_0x1bc1800 .functor BUFZ 32, v0x1babeb0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_22 .array/port v0x1babeb0, 22;
L_0x1bc1750 .functor BUFZ 32, v0x1babeb0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_23 .array/port v0x1babeb0, 23;
L_0x1bc1930 .functor BUFZ 32, v0x1babeb0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_24 .array/port v0x1babeb0, 24;
L_0x1bc1870 .functor BUFZ 32, v0x1babeb0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_25 .array/port v0x1babeb0, 25;
L_0x1bc1a70 .functor BUFZ 32, v0x1babeb0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_26 .array/port v0x1babeb0, 26;
L_0x1bc19a0 .functor BUFZ 32, v0x1babeb0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_27 .array/port v0x1babeb0, 27;
L_0x1bc1bc0 .functor BUFZ 32, v0x1babeb0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_28 .array/port v0x1babeb0, 28;
L_0x1bc1ae0 .functor BUFZ 32, v0x1babeb0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_29 .array/port v0x1babeb0, 29;
L_0x1bc1b50 .functor BUFZ 32, v0x1babeb0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_30 .array/port v0x1babeb0, 30;
L_0x1bc1d30 .functor BUFZ 32, v0x1babeb0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x1babeb0_31 .array/port v0x1babeb0, 31;
L_0x1bc1da0 .functor BUFZ 32, v0x1babeb0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2050 .functor BUFZ 32, L_0x1bc1c30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f3247f1b0a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1ba28a0_0 .net *"_s101", 1 0, L_0x7f3247f1b0a8;  1 drivers
v0x1ba5a70_0 .net *"_s96", 31 0, L_0x1bc1c30;  1 drivers
v0x1ba5b30_0 .net *"_s98", 6 0, L_0x1bc1f20;  1 drivers
v0x1ba5c10_0 .net "address", 4 0, v0x1afcef0_0;  alias, 1 drivers
v0x1ba5cd0_0 .net "input0", 31 0, L_0x7f3247f1b0f0;  1 drivers
v0x1ba5de0_0 .net "input1", 31 0, v0x1babeb0_1;  1 drivers
v0x1ba5ec0_0 .net "input10", 31 0, v0x1babeb0_10;  1 drivers
v0x1ba5fa0_0 .net "input11", 31 0, v0x1babeb0_11;  1 drivers
v0x1ba6080_0 .net "input12", 31 0, v0x1babeb0_12;  1 drivers
v0x1ba61f0_0 .net "input13", 31 0, v0x1babeb0_13;  1 drivers
v0x1ba62d0_0 .net "input14", 31 0, v0x1babeb0_14;  1 drivers
v0x1ba63b0_0 .net "input15", 31 0, v0x1babeb0_15;  1 drivers
v0x1ba6490_0 .net "input16", 31 0, v0x1babeb0_16;  1 drivers
v0x1ba6570_0 .net "input17", 31 0, v0x1babeb0_17;  1 drivers
v0x1ba6650_0 .net "input18", 31 0, v0x1babeb0_18;  1 drivers
v0x1ba6730_0 .net "input19", 31 0, v0x1babeb0_19;  1 drivers
v0x1ba6810_0 .net "input2", 31 0, v0x1babeb0_2;  1 drivers
v0x1ba69c0_0 .net "input20", 31 0, v0x1babeb0_20;  1 drivers
v0x1ba6a60_0 .net "input21", 31 0, v0x1babeb0_21;  1 drivers
v0x1ba6b40_0 .net "input22", 31 0, v0x1babeb0_22;  1 drivers
v0x1ba6c20_0 .net "input23", 31 0, v0x1babeb0_23;  1 drivers
v0x1ba6d00_0 .net "input24", 31 0, v0x1babeb0_24;  1 drivers
v0x1ba6de0_0 .net "input25", 31 0, v0x1babeb0_25;  1 drivers
v0x1ba6ec0_0 .net "input26", 31 0, v0x1babeb0_26;  1 drivers
v0x1ba6fa0_0 .net "input27", 31 0, v0x1babeb0_27;  1 drivers
v0x1ba7080_0 .net "input28", 31 0, v0x1babeb0_28;  1 drivers
v0x1ba7160_0 .net "input29", 31 0, v0x1babeb0_29;  1 drivers
v0x1ba7240_0 .net "input3", 31 0, v0x1babeb0_3;  1 drivers
v0x1ba7320_0 .net "input30", 31 0, v0x1babeb0_30;  1 drivers
v0x1ba7400_0 .net "input31", 31 0, v0x1babeb0_31;  1 drivers
v0x1ba74e0_0 .net "input4", 31 0, v0x1babeb0_4;  1 drivers
v0x1ba75c0_0 .net "input5", 31 0, v0x1babeb0_5;  1 drivers
v0x1ba76a0_0 .net "input6", 31 0, v0x1babeb0_6;  1 drivers
v0x1ba68f0_0 .net "input7", 31 0, v0x1babeb0_7;  1 drivers
v0x1ba7970_0 .net "input8", 31 0, v0x1babeb0_8;  1 drivers
v0x1ba7a50_0 .net "input9", 31 0, v0x1babeb0_9;  1 drivers
v0x1ba7b30 .array "mux", 0 31;
v0x1ba7b30_0 .net v0x1ba7b30 0, 31 0, L_0x1bc0cb0; 1 drivers
v0x1ba7b30_1 .net v0x1ba7b30 1, 31 0, L_0x1bc0d20; 1 drivers
v0x1ba7b30_2 .net v0x1ba7b30 2, 31 0, L_0x1bc0d90; 1 drivers
v0x1ba7b30_3 .net v0x1ba7b30 3, 31 0, L_0x1bc0e00; 1 drivers
v0x1ba7b30_4 .net v0x1ba7b30 4, 31 0, L_0x1bc0e70; 1 drivers
v0x1ba7b30_5 .net v0x1ba7b30 5, 31 0, L_0x1bc0ee0; 1 drivers
v0x1ba7b30_6 .net v0x1ba7b30 6, 31 0, L_0x1bc0f90; 1 drivers
v0x1ba7b30_7 .net v0x1ba7b30 7, 31 0, L_0x1bc1000; 1 drivers
v0x1ba7b30_8 .net v0x1ba7b30 8, 31 0, L_0x1bc1070; 1 drivers
v0x1ba7b30_9 .net v0x1ba7b30 9, 31 0, L_0x1bc10e0; 1 drivers
v0x1ba7b30_10 .net v0x1ba7b30 10, 31 0, L_0x1bc11b0; 1 drivers
v0x1ba7b30_11 .net v0x1ba7b30 11, 31 0, L_0x1bc1220; 1 drivers
v0x1ba7b30_12 .net v0x1ba7b30 12, 31 0, L_0x1bc1300; 1 drivers
v0x1ba7b30_13 .net v0x1ba7b30 13, 31 0, L_0x1bc1370; 1 drivers
v0x1ba7b30_14 .net v0x1ba7b30 14, 31 0, L_0x1bc1290; 1 drivers
v0x1ba7b30_15 .net v0x1ba7b30 15, 31 0, L_0x1bc1460; 1 drivers
v0x1ba7b30_16 .net v0x1ba7b30 16, 31 0, L_0x1bc1560; 1 drivers
v0x1ba7b30_17 .net v0x1ba7b30 17, 31 0, L_0x1bc15d0; 1 drivers
v0x1ba7b30_18 .net v0x1ba7b30 18, 31 0, L_0x1bc14d0; 1 drivers
v0x1ba7b30_19 .net v0x1ba7b30 19, 31 0, L_0x1bc16e0; 1 drivers
v0x1ba7b30_20 .net v0x1ba7b30 20, 31 0, L_0x1bc1640; 1 drivers
v0x1ba7b30_21 .net v0x1ba7b30 21, 31 0, L_0x1bc1800; 1 drivers
v0x1ba7b30_22 .net v0x1ba7b30 22, 31 0, L_0x1bc1750; 1 drivers
v0x1ba7b30_23 .net v0x1ba7b30 23, 31 0, L_0x1bc1930; 1 drivers
v0x1ba7b30_24 .net v0x1ba7b30 24, 31 0, L_0x1bc1870; 1 drivers
v0x1ba7b30_25 .net v0x1ba7b30 25, 31 0, L_0x1bc1a70; 1 drivers
v0x1ba7b30_26 .net v0x1ba7b30 26, 31 0, L_0x1bc19a0; 1 drivers
v0x1ba7b30_27 .net v0x1ba7b30 27, 31 0, L_0x1bc1bc0; 1 drivers
v0x1ba7b30_28 .net v0x1ba7b30 28, 31 0, L_0x1bc1ae0; 1 drivers
v0x1ba7b30_29 .net v0x1ba7b30 29, 31 0, L_0x1bc1b50; 1 drivers
v0x1ba7b30_30 .net v0x1ba7b30 30, 31 0, L_0x1bc1d30; 1 drivers
v0x1ba7b30_31 .net v0x1ba7b30 31, 31 0, L_0x1bc1da0; 1 drivers
v0x1ba8060_0 .net "out", 31 0, L_0x1bc2050;  alias, 1 drivers
L_0x1bc1c30 .array/port v0x1ba7b30, L_0x1bc1f20;
L_0x1bc1f20 .concat [ 5 2 0 0], v0x1afcef0_0, L_0x7f3247f1b0a8;
S_0x1ba86d0 .scope module, "mux2" "mux32to1by32" 13 41, 15 10 0, S_0x1b9f3c0;
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
L_0x7f3247f1b180 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x1bc20c0 .functor BUFZ 32, L_0x7f3247f1b180, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2130 .functor BUFZ 32, v0x1babeb0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2230 .functor BUFZ 32, v0x1babeb0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2330 .functor BUFZ 32, v0x1babeb0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2430 .functor BUFZ 32, v0x1babeb0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2530 .functor BUFZ 32, v0x1babeb0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2630 .functor BUFZ 32, v0x1babeb0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2730 .functor BUFZ 32, v0x1babeb0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2830 .functor BUFZ 32, v0x1babeb0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2930 .functor BUFZ 32, v0x1babeb0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2a60 .functor BUFZ 32, v0x1babeb0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2b90 .functor BUFZ 32, v0x1babeb0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2d30 .functor BUFZ 32, v0x1babeb0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2e60 .functor BUFZ 32, v0x1babeb0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc2cc0 .functor BUFZ 32, v0x1babeb0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3050 .functor BUFZ 32, v0x1babeb0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3210 .functor BUFZ 32, v0x1babeb0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3340 .functor BUFZ 32, v0x1babeb0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3180 .functor BUFZ 32, v0x1babeb0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc35d0 .functor BUFZ 32, v0x1babeb0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3470 .functor BUFZ 32, v0x1babeb0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3840 .functor BUFZ 32, v0x1babeb0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3700 .functor BUFZ 32, v0x1babeb0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3ac0 .functor BUFZ 32, v0x1babeb0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3970 .functor BUFZ 32, v0x1babeb0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3d50 .functor BUFZ 32, v0x1babeb0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3bf0 .functor BUFZ 32, v0x1babeb0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3ff0 .functor BUFZ 32, v0x1babeb0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc3e80 .functor BUFZ 32, v0x1babeb0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc4270 .functor BUFZ 32, v0x1babeb0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc40f0 .functor BUFZ 32, v0x1babeb0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc4500 .functor BUFZ 32, v0x1babeb0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1bc47b0 .functor BUFZ 32, L_0x1bc4370, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f3247f1b138 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1ba5660_0 .net *"_s101", 1 0, L_0x7f3247f1b138;  1 drivers
v0x1ba8cf0_0 .net *"_s96", 31 0, L_0x1bc4370;  1 drivers
v0x1ba8df0_0 .net *"_s98", 6 0, L_0x1bc4710;  1 drivers
v0x1ba8eb0_0 .net "address", 4 0, v0x1afcb30_0;  alias, 1 drivers
v0x1ba8fc0_0 .net "input0", 31 0, L_0x7f3247f1b180;  1 drivers
v0x1ba90f0_0 .net "input1", 31 0, v0x1babeb0_1;  alias, 1 drivers
v0x1ba91b0_0 .net "input10", 31 0, v0x1babeb0_10;  alias, 1 drivers
v0x1ba9250_0 .net "input11", 31 0, v0x1babeb0_11;  alias, 1 drivers
v0x1ba92f0_0 .net "input12", 31 0, v0x1babeb0_12;  alias, 1 drivers
v0x1ba9450_0 .net "input13", 31 0, v0x1babeb0_13;  alias, 1 drivers
v0x1ba9520_0 .net "input14", 31 0, v0x1babeb0_14;  alias, 1 drivers
v0x1ba95f0_0 .net "input15", 31 0, v0x1babeb0_15;  alias, 1 drivers
v0x1ba96c0_0 .net "input16", 31 0, v0x1babeb0_16;  alias, 1 drivers
v0x1ba9790_0 .net "input17", 31 0, v0x1babeb0_17;  alias, 1 drivers
v0x1ba9860_0 .net "input18", 31 0, v0x1babeb0_18;  alias, 1 drivers
v0x1ba9930_0 .net "input19", 31 0, v0x1babeb0_19;  alias, 1 drivers
v0x1ba9a00_0 .net "input2", 31 0, v0x1babeb0_2;  alias, 1 drivers
v0x1ba9bb0_0 .net "input20", 31 0, v0x1babeb0_20;  alias, 1 drivers
v0x1ba9c50_0 .net "input21", 31 0, v0x1babeb0_21;  alias, 1 drivers
v0x1ba9cf0_0 .net "input22", 31 0, v0x1babeb0_22;  alias, 1 drivers
v0x1ba9dc0_0 .net "input23", 31 0, v0x1babeb0_23;  alias, 1 drivers
v0x1ba9e90_0 .net "input24", 31 0, v0x1babeb0_24;  alias, 1 drivers
v0x1ba9f60_0 .net "input25", 31 0, v0x1babeb0_25;  alias, 1 drivers
v0x1baa030_0 .net "input26", 31 0, v0x1babeb0_26;  alias, 1 drivers
v0x1baa100_0 .net "input27", 31 0, v0x1babeb0_27;  alias, 1 drivers
v0x1baa1d0_0 .net "input28", 31 0, v0x1babeb0_28;  alias, 1 drivers
v0x1baa2a0_0 .net "input29", 31 0, v0x1babeb0_29;  alias, 1 drivers
v0x1baa370_0 .net "input3", 31 0, v0x1babeb0_3;  alias, 1 drivers
v0x1baa440_0 .net "input30", 31 0, v0x1babeb0_30;  alias, 1 drivers
v0x1baa510_0 .net "input31", 31 0, v0x1babeb0_31;  alias, 1 drivers
v0x1baa5e0_0 .net "input4", 31 0, v0x1babeb0_4;  alias, 1 drivers
v0x1baa6b0_0 .net "input5", 31 0, v0x1babeb0_5;  alias, 1 drivers
v0x1baa780_0 .net "input6", 31 0, v0x1babeb0_6;  alias, 1 drivers
v0x1ba9ad0_0 .net "input7", 31 0, v0x1babeb0_7;  alias, 1 drivers
v0x1baaa30_0 .net "input8", 31 0, v0x1babeb0_8;  alias, 1 drivers
v0x1baab00_0 .net "input9", 31 0, v0x1babeb0_9;  alias, 1 drivers
v0x1baabd0 .array "mux", 0 31;
v0x1baabd0_0 .net v0x1baabd0 0, 31 0, L_0x1bc20c0; 1 drivers
v0x1baabd0_1 .net v0x1baabd0 1, 31 0, L_0x1bc2130; 1 drivers
v0x1baabd0_2 .net v0x1baabd0 2, 31 0, L_0x1bc2230; 1 drivers
v0x1baabd0_3 .net v0x1baabd0 3, 31 0, L_0x1bc2330; 1 drivers
v0x1baabd0_4 .net v0x1baabd0 4, 31 0, L_0x1bc2430; 1 drivers
v0x1baabd0_5 .net v0x1baabd0 5, 31 0, L_0x1bc2530; 1 drivers
v0x1baabd0_6 .net v0x1baabd0 6, 31 0, L_0x1bc2630; 1 drivers
v0x1baabd0_7 .net v0x1baabd0 7, 31 0, L_0x1bc2730; 1 drivers
v0x1baabd0_8 .net v0x1baabd0 8, 31 0, L_0x1bc2830; 1 drivers
v0x1baabd0_9 .net v0x1baabd0 9, 31 0, L_0x1bc2930; 1 drivers
v0x1baabd0_10 .net v0x1baabd0 10, 31 0, L_0x1bc2a60; 1 drivers
v0x1baabd0_11 .net v0x1baabd0 11, 31 0, L_0x1bc2b90; 1 drivers
v0x1baabd0_12 .net v0x1baabd0 12, 31 0, L_0x1bc2d30; 1 drivers
v0x1baabd0_13 .net v0x1baabd0 13, 31 0, L_0x1bc2e60; 1 drivers
v0x1baabd0_14 .net v0x1baabd0 14, 31 0, L_0x1bc2cc0; 1 drivers
v0x1baabd0_15 .net v0x1baabd0 15, 31 0, L_0x1bc3050; 1 drivers
v0x1baabd0_16 .net v0x1baabd0 16, 31 0, L_0x1bc3210; 1 drivers
v0x1baabd0_17 .net v0x1baabd0 17, 31 0, L_0x1bc3340; 1 drivers
v0x1baabd0_18 .net v0x1baabd0 18, 31 0, L_0x1bc3180; 1 drivers
v0x1baabd0_19 .net v0x1baabd0 19, 31 0, L_0x1bc35d0; 1 drivers
v0x1baabd0_20 .net v0x1baabd0 20, 31 0, L_0x1bc3470; 1 drivers
v0x1baabd0_21 .net v0x1baabd0 21, 31 0, L_0x1bc3840; 1 drivers
v0x1baabd0_22 .net v0x1baabd0 22, 31 0, L_0x1bc3700; 1 drivers
v0x1baabd0_23 .net v0x1baabd0 23, 31 0, L_0x1bc3ac0; 1 drivers
v0x1baabd0_24 .net v0x1baabd0 24, 31 0, L_0x1bc3970; 1 drivers
v0x1baabd0_25 .net v0x1baabd0 25, 31 0, L_0x1bc3d50; 1 drivers
v0x1baabd0_26 .net v0x1baabd0 26, 31 0, L_0x1bc3bf0; 1 drivers
v0x1baabd0_27 .net v0x1baabd0 27, 31 0, L_0x1bc3ff0; 1 drivers
v0x1baabd0_28 .net v0x1baabd0 28, 31 0, L_0x1bc3e80; 1 drivers
v0x1baabd0_29 .net v0x1baabd0 29, 31 0, L_0x1bc4270; 1 drivers
v0x1baabd0_30 .net v0x1baabd0 30, 31 0, L_0x1bc40f0; 1 drivers
v0x1baabd0_31 .net v0x1baabd0 31, 31 0, L_0x1bc4500; 1 drivers
v0x1bab180_0 .net "out", 31 0, L_0x1bc47b0;  alias, 1 drivers
L_0x1bc4370 .array/port v0x1baabd0, L_0x1bc4710;
L_0x1bc4710 .concat [ 5 2 0 0], v0x1afcb30_0, L_0x7f3247f1b138;
S_0x1ad2890 .scope module, "mux32to1by1" "mux32to1by1" 15 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f3247f7bb08 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1baedd0_0 .net "address", 4 0, o0x7f3247f7bb08;  0 drivers
o0x7f3247f7bb38 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1baee70_0 .net "inputs", 31 0, o0x7f3247f7bb38;  0 drivers
v0x1baef50_0 .net "out", 0 0, L_0x1becc00;  1 drivers
L_0x1becc00 .part/v o0x7f3247f7bb38, o0x7f3247f7bb08, 1;
S_0x1ace200 .scope module, "register" "register" 16 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f3247f7bc28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1baf090_0 .net "clk", 0 0, o0x7f3247f7bc28;  0 drivers
o0x7f3247f7bc58 .functor BUFZ 1, C4<z>; HiZ drive
v0x1baf170_0 .net "d", 0 0, o0x7f3247f7bc58;  0 drivers
v0x1baf230_0 .var "q", 0 0;
o0x7f3247f7bcb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1baf2d0_0 .net "wrenable", 0 0, o0x7f3247f7bcb8;  0 drivers
E_0x1ba9b70 .event posedge, v0x1baf090_0;
S_0x1ac9b70 .scope module, "register32" "register32" 16 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f3247f7bda8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1baf490_0 .net "clk", 0 0, o0x7f3247f7bda8;  0 drivers
o0x7f3247f7bdd8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1baf570_0 .net "d", 31 0, o0x7f3247f7bdd8;  0 drivers
v0x1baf650_0 .var "q", 31 0;
o0x7f3247f7be38 .functor BUFZ 1, C4<z>; HiZ drive
v0x1baf710_0 .net "wrenable", 0 0, o0x7f3247f7be38;  0 drivers
E_0x1baf410 .event posedge, v0x1baf490_0;
S_0x1b33fb0 .scope module, "register32zero" "register32zero" 16 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f3247f7bf28 .functor BUFZ 1, C4<z>; HiZ drive
v0x1baf8d0_0 .net "clk", 0 0, o0x7f3247f7bf28;  0 drivers
o0x7f3247f7bf58 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1baf9b0_0 .net "d", 31 0, o0x7f3247f7bf58;  0 drivers
v0x1bafa90_0 .var "q", 31 0;
o0x7f3247f7bfb8 .functor BUFZ 1, C4<z>; HiZ drive
v0x1bafb50_0 .net "wrenable", 0 0, o0x7f3247f7bfb8;  0 drivers
E_0x1baf850 .event posedge, v0x1baf8d0_0;
    .scope S_0x1b9cd30;
T_0 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1b9d110_0, 0;
    %end;
    .thread T_0;
    .scope S_0x1b9cd30;
T_1 ;
    %wait E_0x1b9cfa0;
    %load/vec4 v0x1b9d1d0_0;
    %cmpi/e 0, 0, 2;
    %jmp/0xz  T_1.0, 4;
    %load/vec4 v0x1b9d5e0_0;
    %assign/vec4 v0x1b9d500_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x1b9d1d0_0;
    %cmpi/e 1, 0, 2;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x1b9d000_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1b9d500_0, 4, 5;
    %load/vec4 v0x1b9d5e0_0;
    %parti/s 4, 28, 6;
    %ix/load 4, 28, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1b9d500_0, 4, 5;
    %pushi/vec4 0, 0, 2;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x1b9d500_0, 4, 5;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v0x1b9d1d0_0;
    %cmpi/e 2, 0, 2;
    %jmp/0xz  T_1.4, 4;
    %load/vec4 v0x1b9d3c0_0;
    %ix/load 4, 2, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %store/vec4 v0x1b9d780_0, 0, 32;
    %load/vec4 v0x1b9d780_0;
    %load/vec4 v0x1b9d5e0_0;
    %add;
    %store/vec4 v0x1b9d500_0, 0, 32;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v0x1b9d6c0_0;
    %assign/vec4 v0x1b9d500_0, 0;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v0x1b9d110_0;
    %addi 4, 0, 32;
    %assign/vec4 v0x1b9d5e0_0, 0;
    %jmp T_1;
    .thread T_1, $push;
    .scope S_0x1b9cd30;
T_2 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1b9d500_0;
    %store/vec4 v0x1b9d110_0, 0, 32;
    %jmp T_2;
    .thread T_2;
    .scope S_0x1b2a5b0;
T_3 ;
    %wait E_0x1aa5a60;
    %load/vec4 v0x1b24740_0;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1abad60_0;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1abb120_0, 0, 2;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x1b24740_0;
    %pushi/vec4 4, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1b24380_0;
    %pad/u 32;
    %pushi/vec4 1, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.2, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1abb120_0, 0, 2;
    %vpi_call 5 17 "$display", "I AM GOING TO BRANCH ON EQUAL: Flag = %b", v0x1b24380_0 {0 0 0};
    %jmp T_3.3;
T_3.2 ;
    %load/vec4 v0x1b24740_0;
    %pushi/vec4 5, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x1b24380_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.4, 8;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1abb120_0, 0, 2;
    %vpi_call 5 18 "$display", "I AM GOING TO BRANCH ON NOT EQUAL: Flag = %b", v0x1b24380_0 {0 0 0};
    %jmp T_3.5;
T_3.4 ;
    %load/vec4 v0x1b24740_0;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x1b24740_0;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_3.6, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1abb120_0, 0, 2;
    %jmp T_3.7;
T_3.6 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1abb120_0, 0, 2;
T_3.7 ;
T_3.5 ;
T_3.3 ;
T_3.1 ;
    %vpi_call 5 21 "$display", "grrr,opcode: %b, zeroflag: %b, controlSig: %b", v0x1b24740_0, v0x1b24380_0, v0x1abb120_0 {0 0 0};
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0x1b9b850;
T_4 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1b9c160_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x1b9bc00_0;
    %ix/getv 3, v0x1b9bb00_0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1b9c450, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x1b9b850;
T_5 ;
    %vpi_call 10 20 "$readmemh", "array.text", v0x1b9c450 {0 0 0};
    %end;
    .thread T_5;
    .scope S_0x1b146f0;
T_6 ;
    %wait E_0x1abb240;
    %load/vec4 v0x1ab6790_0;
    %parti/s 1, 15, 5;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_6.0, 4;
    %pushi/vec4 0, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1b1b860_0, 4, 16;
    %jmp T_6.1;
T_6.0 ;
    %pushi/vec4 65535, 0, 16;
    %ix/load 4, 16, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1b1b860_0, 4, 16;
T_6.1 ;
    %load/vec4 v0x1ab6790_0;
    %parti/s 6, 26, 6;
    %store/vec4 v0x1b171b0_0, 0, 6;
    %load/vec4 v0x1ab6790_0;
    %parti/s 6, 0, 2;
    %store/vec4 v0x1b1b7a0_0, 0, 6;
    %load/vec4 v0x1ab6790_0;
    %parti/s 5, 21, 6;
    %store/vec4 v0x1afcef0_0, 0, 5;
    %load/vec4 v0x1ab6790_0;
    %parti/s 5, 16, 6;
    %store/vec4 v0x1afcb30_0, 0, 5;
    %load/vec4 v0x1ab6790_0;
    %parti/s 5, 11, 5;
    %store/vec4 v0x1b015a0_0, 0, 5;
    %load/vec4 v0x1ab6790_0;
    %parti/s 5, 6, 4;
    %pad/u 6;
    %store/vec4 v0x1ab6830_0, 0, 6;
    %load/vec4 v0x1ab6790_0;
    %parti/s 16, 0, 2;
    %ix/load 4, 0, 0;
    %flag_set/imm 4, 0;
    %store/vec4 v0x1b1b860_0, 4, 16;
    %load/vec4 v0x1ab6790_0;
    %parti/s 26, 0, 2;
    %store/vec4 v0x1b1fd90_0, 0, 26;
    %load/vec4 v0x1b171b0_0;
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
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.3 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.4 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.5 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.6 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.7 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.8 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.9 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.11;
T_6.10 ;
    %load/vec4 v0x1b1b7a0_0;
    %cmpi/e 32, 0, 6;
    %jmp/0xz  T_6.12, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.13;
T_6.12 ;
    %load/vec4 v0x1b1b7a0_0;
    %cmpi/e 34, 0, 6;
    %jmp/0xz  T_6.14, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.15;
T_6.14 ;
    %load/vec4 v0x1b1b7a0_0;
    %cmpi/e 42, 0, 6;
    %jmp/0xz  T_6.16, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
    %jmp T_6.17;
T_6.16 ;
    %load/vec4 v0x1b1b7a0_0;
    %cmpi/e 8, 0, 6;
    %jmp/0xz  T_6.18, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b01120_0, 0, 1;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x1ab6bf0_0, 0, 3;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b175b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b20150_0, 0, 1;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b1bbd0_0, 0, 2;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x1b011c0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x1b201f0_0, 0, 1;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x1b014e0_0, 0, 2;
T_6.18 ;
T_6.17 ;
T_6.15 ;
T_6.13 ;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6;
    .thread T_6, $push;
    .scope S_0x1b9fdf0;
T_7 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x1ba00a0;
T_8 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x1ba0330;
T_9 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x1ba05e0;
T_10 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x1ba08e0;
T_11 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x1ba0b90;
T_12 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x1ba0e40;
T_13 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x1ba10f0;
T_14 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x1ba13e0;
T_15 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x1ba1690;
T_16 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x1ba1940;
T_17 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x1ba1bf0;
T_18 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x1ba1ea0;
T_19 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x1ba2150;
T_20 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x1ba2400;
T_21 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x1ba26b0;
T_22 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x1ba2a00;
T_23 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x1ba2c90;
T_24 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x1ba2f40;
T_25 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x1ba31f0;
T_26 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x1ba34a0;
T_27 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x1ba3750;
T_28 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x1ba3a00;
T_29 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x1ba3cb0;
T_30 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x1ba3f60;
T_31 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_31.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_31.0 ;
    %jmp T_31;
    .thread T_31;
    .scope S_0x1ba4210;
T_32 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_32.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_32.0 ;
    %jmp T_32;
    .thread T_32;
    .scope S_0x1ba44c0;
T_33 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_33.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_33.0 ;
    %jmp T_33;
    .thread T_33;
    .scope S_0x1ba4770;
T_34 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_34.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_34.0 ;
    %jmp T_34;
    .thread T_34;
    .scope S_0x1ba4a20;
T_35 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x1ba4cd0;
T_36 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x1ba4f80;
T_37 ;
    %wait E_0x1b9ba80;
    %load/vec4 v0x1babd60_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %load/vec4 v0x1babbb0_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x1babeb0, 0, 4;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
    .scope S_0x1ad5620;
T_38 ;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x1baebf0_0, 0, 1;
    %end;
    .thread T_38;
    .scope S_0x1ad5620;
T_39 ;
    %delay 200, 0;
    %load/vec4 v0x1baebf0_0;
    %nor/r;
    %store/vec4 v0x1baebf0_0, 0, 1;
    %jmp T_39;
    .thread T_39;
    .scope S_0x1ad5620;
T_40 ;
    %vpi_call 3 11 "$dumpfile", "cpu.vcd" {0 0 0};
    %vpi_call 3 12 "$dumpvars" {0 0 0};
    %delay 200, 0;
    %vpi_call 3 14 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 15 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 18 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 19 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 22 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 23 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 26 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 27 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 29 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 30 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 33 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 34 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 36 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 37 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 40 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 41 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 43 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 44 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 46 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 47 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 50 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 51 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 53 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 54 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 56 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 57 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 60 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 61 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 63 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 64 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 66 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 67 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 70 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 71 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 73 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 74 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 76 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 77 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200, 0;
    %vpi_call 3 80 "$display", "dataMem: %b", v0x1baec90_0 {0 0 0};
    %vpi_call 3 81 "$display", "reg RT : %b", v0x1baed30_0 {0 0 0};
    %delay 200000, 0;
    %vpi_call 3 82 "$finish" {0 0 0};
    %end;
    .thread T_40;
    .scope S_0x1ace200;
T_41 ;
    %wait E_0x1ba9b70;
    %load/vec4 v0x1baf2d0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_41.0, 8;
    %load/vec4 v0x1baf170_0;
    %assign/vec4 v0x1baf230_0, 0;
T_41.0 ;
    %jmp T_41;
    .thread T_41;
    .scope S_0x1ac9b70;
T_42 ;
    %wait E_0x1baf410;
    %load/vec4 v0x1baf710_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_42.0, 8;
    %load/vec4 v0x1baf570_0;
    %assign/vec4 v0x1baf650_0, 0;
T_42.0 ;
    %jmp T_42;
    .thread T_42;
    .scope S_0x1b33fb0;
T_43 ;
    %wait E_0x1baf850;
    %load/vec4 v0x1bafb50_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_43.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x1bafa90_0, 0;
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
