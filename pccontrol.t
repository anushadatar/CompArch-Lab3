#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x22acde0 .scope module, "instructionDecoder" "instructionDecoder" 2 8;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "zeroFlag"
    .port_info 1 /INPUT 1 "opcode"
    .port_info 2 /INPUT 1 "function1"
    .port_info 3 /OUTPUT 2 "controlSig"
v0x22acff0_0 .var "controlSig", 1 0;
o0x7fd4fe32d048 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f1310_0 .net "function1", 0 0, o0x7fd4fe32d048;  0 drivers
o0x7fd4fe32d078 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f13d0_0 .net "opcode", 0 0, o0x7fd4fe32d078;  0 drivers
o0x7fd4fe32d0a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x22f14a0_0 .net "zeroFlag", 0 0, o0x7fd4fe32d0a8;  0 drivers
E_0x22ad340 .event edge, v0x22f13d0_0;
    .scope S_0x22acde0;
T_0 ;
    %wait E_0x22ad340;
    %load/vec4 v0x22f13d0_0;
    %pad/u 6;
    %cmpi/e 4, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x22f13d0_0;
    %pad/u 6;
    %cmpi/e 5, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_0.0, 4;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x22acff0_0, 0, 2;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x22f13d0_0;
    %pad/u 6;
    %cmpi/e 3, 0, 6;
    %flag_mov 8, 4;
    %load/vec4 v0x22f13d0_0;
    %pad/u 6;
    %cmpi/e 2, 0, 6;
    %flag_or 4, 8;
    %jmp/0xz  T_0.2, 4;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x22acff0_0, 0, 2;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x22f13d0_0;
    %pad/u 6;
    %pushi/vec4 0, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %load/vec4 v0x22f1310_0;
    %pad/u 6;
    %pushi/vec4 8, 0, 6;
    %cmp/e;
    %flag_get/vec4 4;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.4, 8;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x22acff0_0, 0, 2;
    %jmp T_0.5;
T_0.4 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x22acff0_0, 0, 2;
T_0.5 ;
T_0.3 ;
T_0.1 ;
    %jmp T_0;
    .thread T_0, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "pcController.v";
