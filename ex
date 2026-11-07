#! /home/javalos/oss-cad-suite/bin/vvp
:ivl_version "14.0 (devel)" "(s20260301-403-g5ab23063f-dirty)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/system.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/vhdl_sys.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/vhdl_textio.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/v2005_math.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/va_math.vpi";
S_0x55556aaa83c0 .scope module, "executeTB" "executeTB" 2 15;
 .timescale -9 -12;
v0x55556aaef670_0 .net "EX_MEM_NPC", 31 0, v0x55556aaec9b0_0;  1 drivers
v0x55556aaef7a0_0 .net "alu_result", 31 0, v0x55556aaecb10_0;  1 drivers
v0x55556aaef8b0_0 .var "aluop", 1 0;
v0x55556aaef9a0_0 .var "alusrc", 0 0;
v0x55556aaefa90_0 .net "branch", 0 0, L_0x55556ab011a0;  1 drivers
v0x55556aaefba0_0 .var "clk", 0 0;
v0x55556aaefc90_0 .net "five_bit_muxout", 4 0, v0x55556aaed1b0_0;  1 drivers
v0x55556aaefda0_0 .var "funct", 5 0;
v0x55556aaefeb0_0 .var "instrout_1511", 4 0;
v0x55556aaeff70_0 .var "instrout_2016", 4 0;
v0x55556aaf0080_0 .var "m_ctl", 2 0;
v0x55556aaf0190_0 .net "memread", 0 0, L_0x55556ab01290;  1 drivers
v0x55556aaf0250_0 .net "memwrite", 0 0, L_0x55556ab01330;  1 drivers
v0x55556aaf0310_0 .var "npcout", 31 0;
v0x55556aaf0420_0 .var "rdata1", 31 0;
v0x55556aaf0530_0 .var "rdata2", 31 0;
v0x55556aaf05f0_0 .net "rdata2out", 31 0, v0x55556aaed350_0;  1 drivers
v0x55556aaf0700_0 .var "regdst", 0 0;
v0x55556aaf07f0_0 .var "s_extendout", 31 0;
v0x55556aaf08b0_0 .var "wb_ctl", 1 0;
v0x55556aaf09c0_0 .net "wb_ctlout", 1 0, v0x55556aaecf80_0;  1 drivers
v0x55556aaf0ad0_0 .net "zero", 0 0, v0x55556aaed500_0;  1 drivers
L_0x55556ab011a0 .part v0x55556aaecdc0_0, 2, 1;
L_0x55556ab01290 .part v0x55556aaecdc0_0, 1, 1;
L_0x55556ab01330 .part v0x55556aaecdc0_0, 0, 1;
S_0x55556aaa8550 .scope module, "uut" "execute" 2 31, 3 6 0, S_0x55556aaa83c0;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 2 "ctlwb_in";
    .port_info 2 /INPUT 3 "ctlm_in";
    .port_info 3 /INPUT 32 "npc";
    .port_info 4 /INPUT 32 "rdata1";
    .port_info 5 /INPUT 32 "rdata2";
    .port_info 6 /INPUT 32 "s_extend";
    .port_info 7 /INPUT 5 "instr_2016";
    .port_info 8 /INPUT 5 "instr_1511";
    .port_info 9 /INPUT 2 "alu_op";
    .port_info 10 /INPUT 6 "funct";
    .port_info 11 /INPUT 1 "alusrc";
    .port_info 12 /INPUT 1 "regdst";
    .port_info 13 /OUTPUT 2 "ctlwb_out";
    .port_info 14 /OUTPUT 3 "ctlm_out";
    .port_info 15 /OUTPUT 32 "adder_out";
    .port_info 16 /OUTPUT 1 "zero_out";
    .port_info 17 /OUTPUT 32 "alu_result_out";
    .port_info 18 /OUTPUT 32 "rdata2_out";
    .port_info 19 /OUTPUT 5 "muxout_out";
v0x55556aaedde0_0 .net "add_result", 31 0, L_0x55556aaf0bc0;  1 drivers
v0x55556aaedf10_0 .net "adder_out", 31 0, v0x55556aaec9b0_0;  alias, 1 drivers
v0x55556aaedfd0_0 .net "alu_op", 1 0, v0x55556aaef8b0_0;  1 drivers
v0x55556aaee0a0_0 .net "alu_result_out", 31 0, v0x55556aaecb10_0;  alias, 1 drivers
v0x55556aaee170_0 .net "aluout", 31 0, v0x55556aaead70_0;  1 drivers
v0x55556aaee2b0_0 .net "alusrc", 0 0, v0x55556aaef9a0_0;  1 drivers
v0x55556aaee350_0 .net "aluzero", 0 0, L_0x55556ab01100;  1 drivers
v0x55556aaee440_0 .net "b", 31 0, L_0x55556aaf0db0;  1 drivers
v0x55556aaee530_0 .net "clk", 0 0, v0x55556aaefba0_0;  1 drivers
v0x55556aaee660_0 .net "control", 2 0, v0x55556aaebdd0_0;  1 drivers
v0x55556aaee700_0 .net "ctlm_in", 2 0, v0x55556aaf0080_0;  1 drivers
v0x55556aaee7a0_0 .net "ctlm_out", 2 0, v0x55556aaecdc0_0;  1 drivers
v0x55556aaee840_0 .net "ctlwb_in", 1 0, v0x55556aaf08b0_0;  1 drivers
v0x55556aaee8e0_0 .net "ctlwb_out", 1 0, v0x55556aaecf80_0;  alias, 1 drivers
v0x55556aaee9b0_0 .net "funct", 5 0, v0x55556aaefda0_0;  1 drivers
v0x55556aaeea80_0 .net "instr_1511", 4 0, v0x55556aaefeb0_0;  1 drivers
v0x55556aaeeb50_0 .net "instr_2016", 4 0, v0x55556aaeff70_0;  1 drivers
v0x55556aaeec20_0 .net "muxout", 4 0, L_0x55556aaf0cd0;  1 drivers
v0x55556aaeed10_0 .net "muxout_out", 4 0, v0x55556aaed1b0_0;  alias, 1 drivers
v0x55556aaeedd0_0 .net "npc", 31 0, v0x55556aaf0310_0;  1 drivers
v0x55556aaeeea0_0 .net "rdata1", 31 0, v0x55556aaf0420_0;  1 drivers
v0x55556aaeef70_0 .net "rdata2", 31 0, v0x55556aaf0530_0;  1 drivers
v0x55556aaef060_0 .net "rdata2_out", 31 0, v0x55556aaed350_0;  alias, 1 drivers
v0x55556aaef120_0 .net "regdst", 0 0, v0x55556aaf0700_0;  1 drivers
v0x55556aaef1f0_0 .net "s_extend", 31 0, v0x55556aaf07f0_0;  1 drivers
v0x55556aaef2e0_0 .net "zero_out", 0 0, v0x55556aaed500_0;  alias, 1 drivers
S_0x55556aaad440 .scope module, "adder3" "adder" 3 34, 4 5 0, S_0x55556aaa8550;
 .timescale -9 -12;
    .port_info 0 /INPUT 32 "add_in1";
    .port_info 1 /INPUT 32 "add_in2";
    .port_info 2 /OUTPUT 32 "add_out";
v0x55556aaaf4b0_0 .net "add_in1", 31 0, v0x55556aaf0310_0;  alias, 1 drivers
v0x55556aaaeaa0_0 .net "add_in2", 31 0, v0x55556aaf07f0_0;  alias, 1 drivers
v0x55556aaaed80_0 .net "add_out", 31 0, L_0x55556aaf0bc0;  alias, 1 drivers
L_0x55556aaf0bc0 .arith/sum 32, v0x55556aaf0310_0, v0x55556aaf07f0_0;
S_0x55556aaea5a0 .scope module, "alu3" "alu" 3 60, 5 1 0, S_0x55556aaa8550;
 .timescale -9 -12;
    .port_info 0 /INPUT 32 "a";
    .port_info 1 /INPUT 32 "b";
    .port_info 2 /INPUT 3 "control";
    .port_info 3 /OUTPUT 32 "result";
    .port_info 4 /OUTPUT 1 "zero";
P_0x55556aaea780 .param/l "ALUadd" 0 5 8, C4<010>;
P_0x55556aaea7c0 .param/l "ALUand" 0 5 10, C4<000>;
P_0x55556aaea800 .param/l "ALUor" 0 5 11, C4<001>;
P_0x55556aaea840 .param/l "ALUslt" 0 5 12, C4<111>;
P_0x55556aaea880 .param/l "ALUsub" 0 5 9, C4<110>;
L_0x55556aaf0c60 .functor XOR 1, L_0x55556aaf0f20, L_0x55556aaf0fc0, C4<0>, C4<0>;
v0x55556aaaeef0_0 .net *"_ivl_1", 0 0, L_0x55556aaf0f20;  1 drivers
v0x55556aaaec10_0 .net *"_ivl_3", 0 0, L_0x55556aaf0fc0;  1 drivers
L_0x7f6ddfb21018 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55556aaaf1d0_0 .net/2u *"_ivl_6", 31 0, L_0x7f6ddfb21018;  1 drivers
v0x55556aaaf340_0 .net "a", 31 0, v0x55556aaf0420_0;  alias, 1 drivers
v0x55556aaaf620_0 .net "b", 31 0, L_0x55556aaf0db0;  alias, 1 drivers
v0x55556aaeac90_0 .net "control", 2 0, v0x55556aaebdd0_0;  alias, 1 drivers
v0x55556aaead70_0 .var "result", 31 0;
v0x55556aaeae50_0 .net "sign_mismatch", 0 0, L_0x55556aaf0c60;  1 drivers
v0x55556aaeaf10_0 .net "zero", 0 0, L_0x55556ab01100;  alias, 1 drivers
E_0x55556aaaa400 .event anyedge, v0x55556aaeac90_0, v0x55556aaaf340_0, v0x55556aaaf620_0, v0x55556aaeae50_0;
L_0x55556aaf0f20 .part v0x55556aaf0420_0, 31, 1;
L_0x55556aaf0fc0 .part L_0x55556aaf0db0, 31, 1;
L_0x55556ab01100 .cmp/eq 32, v0x55556aaead70_0, L_0x7f6ddfb21018;
S_0x55556aaeb070 .scope module, "alu_control3" "alu_control" 3 54, 6 5 0, S_0x55556aaa8550;
 .timescale -9 -12;
    .port_info 0 /INPUT 6 "funct";
    .port_info 1 /INPUT 2 "aluop";
    .port_info 2 /OUTPUT 3 "select";
P_0x55556aaeb200 .param/l "ALUadd" 0 6 12, C4<010>;
P_0x55556aaeb240 .param/l "ALUand" 0 6 12, C4<000>;
P_0x55556aaeb280 .param/l "ALUor" 0 6 13, C4<001>;
P_0x55556aaeb2c0 .param/l "ALUslt" 0 6 13, C4<111>;
P_0x55556aaeb300 .param/l "ALUsub" 0 6 12, C4<110>;
P_0x55556aaeb340 .param/l "ALUx" 0 6 13, C4<011>;
P_0x55556aaeb380 .param/l "FUNCTadd" 0 6 15, C4<100000>;
P_0x55556aaeb3c0 .param/l "FUNCTand" 0 6 16, C4<100100>;
P_0x55556aaeb400 .param/l "FUNCTor" 0 6 16, C4<100101>;
P_0x55556aaeb440 .param/l "FUNCTslt" 0 6 17, C4<101010>;
P_0x55556aaeb480 .param/l "FUNCTsub" 0 6 15, C4<100010>;
P_0x55556aaeb4c0 .param/l "Itype" 0 6 10, C4<01>;
P_0x55556aaeb500 .param/l "Rtype" 0 6 10, C4<10>;
P_0x55556aaeb540 .param/l "lwsw" 0 6 10, C4<00>;
v0x55556aaebbf0_0 .net "aluop", 1 0, v0x55556aaef8b0_0;  alias, 1 drivers
v0x55556aaebcf0_0 .net "funct", 5 0, v0x55556aaefda0_0;  alias, 1 drivers
v0x55556aaebdd0_0 .var "select", 2 0;
E_0x55556aaa9560 .event anyedge, v0x55556aaebbf0_0, v0x55556aaebcf0_0;
S_0x55556aaebed0 .scope module, "bottom_mux3" "bottom_mux" 3 40, 7 5 0, S_0x55556aaa8550;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 5 "y";
    .port_info 1 /INPUT 5 "a";
    .port_info 2 /INPUT 5 "b";
    .port_info 3 /INPUT 1 "sel";
v0x55556aaec0b0_0 .net "a", 4 0, v0x55556aaefeb0_0;  alias, 1 drivers
v0x55556aaec190_0 .net "b", 4 0, v0x55556aaeff70_0;  alias, 1 drivers
v0x55556aaec270_0 .net "sel", 0 0, v0x55556aaf0700_0;  alias, 1 drivers
v0x55556aaec310_0 .net "y", 4 0, L_0x55556aaf0cd0;  alias, 1 drivers
L_0x55556aaf0cd0 .functor MUXZ 5, v0x55556aaeff70_0, v0x55556aaefeb0_0, v0x55556aaf0700_0, C4<>;
S_0x55556aaec470 .scope module, "ex_mem3" "ex_mem" 3 68, 8 5 0, S_0x55556aaa8550;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 2 "ctlwb_in";
    .port_info 2 /INPUT 3 "ctlm_in";
    .port_info 3 /INPUT 32 "adder_in";
    .port_info 4 /INPUT 1 "zero_in";
    .port_info 5 /INPUT 32 "alu_result_in";
    .port_info 6 /INPUT 32 "rdata2_in";
    .port_info 7 /INPUT 5 "muxout_in";
    .port_info 8 /OUTPUT 2 "ctlwb_out";
    .port_info 9 /OUTPUT 3 "ctlm_out";
    .port_info 10 /OUTPUT 32 "adder_out";
    .port_info 11 /OUTPUT 1 "zero_out";
    .port_info 12 /OUTPUT 32 "alu_result_out";
    .port_info 13 /OUTPUT 32 "rdata2_out";
    .port_info 14 /OUTPUT 5 "muxout_out";
v0x55556aaec8d0_0 .net "adder_in", 31 0, L_0x55556aaf0bc0;  alias, 1 drivers
v0x55556aaec9b0_0 .var "adder_out", 31 0;
v0x55556aaeca70_0 .net "alu_result_in", 31 0, v0x55556aaead70_0;  alias, 1 drivers
v0x55556aaecb10_0 .var "alu_result_out", 31 0;
v0x55556aaecbd0_0 .net "clk", 0 0, v0x55556aaefba0_0;  alias, 1 drivers
v0x55556aaecce0_0 .net "ctlm_in", 2 0, v0x55556aaf0080_0;  alias, 1 drivers
v0x55556aaecdc0_0 .var "ctlm_out", 2 0;
v0x55556aaecea0_0 .net "ctlwb_in", 1 0, v0x55556aaf08b0_0;  alias, 1 drivers
v0x55556aaecf80_0 .var "ctlwb_out", 1 0;
v0x55556aaed0f0_0 .net "muxout_in", 4 0, L_0x55556aaf0cd0;  alias, 1 drivers
v0x55556aaed1b0_0 .var "muxout_out", 4 0;
v0x55556aaed270_0 .net "rdata2_in", 31 0, v0x55556aaf0530_0;  alias, 1 drivers
v0x55556aaed350_0 .var "rdata2_out", 31 0;
v0x55556aaed430_0 .net "zero_in", 0 0, L_0x55556ab01100;  alias, 1 drivers
v0x55556aaed500_0 .var "zero_out", 0 0;
E_0x55556aaa9a30 .event posedge, v0x55556aaecbd0_0;
S_0x55556aaed780 .scope module, "top_mux3" "top_mux" 3 47, 9 5 0, S_0x55556aaa8550;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 32 "y";
    .port_info 1 /INPUT 32 "a";
    .port_info 2 /INPUT 32 "b";
    .port_info 3 /INPUT 1 "alusrc";
v0x55556aaed9d0_0 .net "a", 31 0, v0x55556aaf07f0_0;  alias, 1 drivers
v0x55556aaedae0_0 .net "alusrc", 0 0, v0x55556aaef9a0_0;  alias, 1 drivers
v0x55556aaedb80_0 .net "b", 31 0, v0x55556aaf0530_0;  alias, 1 drivers
v0x55556aaedc80_0 .net "y", 31 0, L_0x55556aaf0db0;  alias, 1 drivers
L_0x55556aaf0db0 .functor MUXZ 32, v0x55556aaf0530_0, v0x55556aaf07f0_0, v0x55556aaef9a0_0, C4<>;
    .scope S_0x55556aaeb070;
T_0 ;
    %wait E_0x55556aaa9560;
    %load/vec4 v0x55556aaebbf0_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 2;
    %cmp/e;
    %jmp/1 T_0.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 2;
    %cmp/e;
    %jmp/1 T_0.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 2;
    %cmp/e;
    %jmp/1 T_0.2, 6;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.4;
T_0.0 ;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.4;
T_0.1 ;
    %pushi/vec4 6, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.4;
T_0.2 ;
    %load/vec4 v0x55556aaebcf0_0;
    %dup/vec4;
    %pushi/vec4 32, 0, 6;
    %cmp/e;
    %jmp/1 T_0.5, 6;
    %dup/vec4;
    %pushi/vec4 34, 0, 6;
    %cmp/e;
    %jmp/1 T_0.6, 6;
    %dup/vec4;
    %pushi/vec4 36, 0, 6;
    %cmp/e;
    %jmp/1 T_0.7, 6;
    %dup/vec4;
    %pushi/vec4 37, 0, 6;
    %cmp/e;
    %jmp/1 T_0.8, 6;
    %dup/vec4;
    %pushi/vec4 42, 0, 6;
    %cmp/e;
    %jmp/1 T_0.9, 6;
    %pushi/vec4 3, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.11;
T_0.5 ;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.11;
T_0.6 ;
    %pushi/vec4 6, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.11;
T_0.7 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.11;
T_0.8 ;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.11;
T_0.9 ;
    %pushi/vec4 7, 0, 3;
    %store/vec4 v0x55556aaebdd0_0, 0, 3;
    %jmp T_0.11;
T_0.11 ;
    %pop/vec4 1;
    %jmp T_0.4;
T_0.4 ;
    %pop/vec4 1;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0x55556aaea5a0;
T_1 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x55556aaead70_0, 0;
    %end;
    .thread T_1;
    .scope S_0x55556aaea5a0;
T_2 ;
    %wait E_0x55556aaaa400;
    %load/vec4 v0x55556aaeac90_0;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/e;
    %jmp/1 T_2.0, 6;
    %dup/vec4;
    %pushi/vec4 6, 0, 3;
    %cmp/e;
    %jmp/1 T_2.1, 6;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/e;
    %jmp/1 T_2.2, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/e;
    %jmp/1 T_2.3, 6;
    %dup/vec4;
    %pushi/vec4 7, 0, 3;
    %cmp/e;
    %jmp/1 T_2.4, 6;
    %pushi/vec4 4294967295, 4294967295, 32;
    %store/vec4 v0x55556aaead70_0, 0, 32;
    %jmp T_2.6;
T_2.0 ;
    %load/vec4 v0x55556aaaf340_0;
    %load/vec4 v0x55556aaaf620_0;
    %add;
    %store/vec4 v0x55556aaead70_0, 0, 32;
    %jmp T_2.6;
T_2.1 ;
    %load/vec4 v0x55556aaaf340_0;
    %load/vec4 v0x55556aaaf620_0;
    %sub;
    %store/vec4 v0x55556aaead70_0, 0, 32;
    %jmp T_2.6;
T_2.2 ;
    %load/vec4 v0x55556aaaf340_0;
    %load/vec4 v0x55556aaaf620_0;
    %and;
    %store/vec4 v0x55556aaead70_0, 0, 32;
    %jmp T_2.6;
T_2.3 ;
    %load/vec4 v0x55556aaaf340_0;
    %load/vec4 v0x55556aaaf620_0;
    %or;
    %store/vec4 v0x55556aaead70_0, 0, 32;
    %jmp T_2.6;
T_2.4 ;
    %load/vec4 v0x55556aaaf340_0;
    %load/vec4 v0x55556aaaf620_0;
    %cmp/u;
    %flag_mov 8, 5;
    %jmp/0 T_2.7, 8;
    %pushi/vec4 1, 0, 32;
    %load/vec4 v0x55556aaeae50_0;
    %pad/u 32;
    %sub;
    %jmp/1 T_2.8, 8;
T_2.7 ; End of true expr.
    %pushi/vec4 0, 0, 32;
    %load/vec4 v0x55556aaeae50_0;
    %pad/u 32;
    %add;
    %jmp/0 T_2.8, 8;
 ; End of false expr.
    %blend;
T_2.8;
    %store/vec4 v0x55556aaead70_0, 0, 32;
    %jmp T_2.6;
T_2.6 ;
    %pop/vec4 1;
    %jmp T_2;
    .thread T_2, $push;
    .scope S_0x55556aaec470;
T_3 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x55556aaecf80_0, 0, 2;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x55556aaecdc0_0, 0, 3;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55556aaec9b0_0, 0, 32;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55556aaed500_0, 0, 1;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55556aaecb10_0, 0, 32;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55556aaed350_0, 0, 32;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x55556aaed1b0_0, 0, 5;
    %end;
    .thread T_3;
    .scope S_0x55556aaec470;
T_4 ;
    %wait E_0x55556aaa9a30;
    %load/vec4 v0x55556aaecea0_0;
    %assign/vec4 v0x55556aaecf80_0, 0;
    %load/vec4 v0x55556aaecce0_0;
    %assign/vec4 v0x55556aaecdc0_0, 0;
    %load/vec4 v0x55556aaec8d0_0;
    %assign/vec4 v0x55556aaec9b0_0, 0;
    %load/vec4 v0x55556aaed430_0;
    %assign/vec4 v0x55556aaed500_0, 0;
    %load/vec4 v0x55556aaeca70_0;
    %assign/vec4 v0x55556aaecb10_0, 0;
    %load/vec4 v0x55556aaed270_0;
    %assign/vec4 v0x55556aaed350_0, 0;
    %load/vec4 v0x55556aaed0f0_0;
    %assign/vec4 v0x55556aaed1b0_0, 0;
    %jmp T_4;
    .thread T_4;
    .scope S_0x55556aaa83c0;
T_5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55556aaefba0_0, 0, 1;
T_5.0 ;
    %delay 5000, 0;
    %load/vec4 v0x55556aaefba0_0;
    %inv;
    %store/vec4 v0x55556aaefba0_0, 0, 1;
    %jmp T_5.0;
T_5.1 ;
    %end;
    .thread T_5;
    .scope S_0x55556aaa83c0;
T_6 ;
    %vpi_call 2 60 "$dumpfile", "execute_tb.vcd" {0 0 0};
    %vpi_call 2 61 "$dumpvars", 32'sb00000000000000000000000000000000, S_0x55556aaa83c0 {0 0 0};
    %vpi_call 2 62 "$monitor", "t=%0t ALUOp=%b funct=%b alusrc=%b regdst=%b | adder=%0d alu=%h zero=%b mux=%0d rdata2=%h", $time, v0x55556aaef8b0_0, v0x55556aaefda0_0, v0x55556aaef9a0_0, v0x55556aaf0700_0, v0x55556aaef670_0, v0x55556aaef7a0_0, v0x55556aaf0ad0_0, v0x55556aaefc90_0, v0x55556aaf05f0_0 {0 0 0};
    %delay 10000, 0;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x55556aaf08b0_0, 0, 2;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x55556aaf0080_0, 0, 3;
    %pushi/vec4 100, 0, 32;
    %store/vec4 v0x55556aaf0310_0, 0, 32;
    %pushi/vec4 10, 0, 32;
    %store/vec4 v0x55556aaf0420_0, 0, 32;
    %pushi/vec4 20, 0, 32;
    %store/vec4 v0x55556aaf0530_0, 0, 32;
    %pushi/vec4 4, 0, 32;
    %store/vec4 v0x55556aaf07f0_0, 0, 32;
    %pushi/vec4 5, 0, 5;
    %store/vec4 v0x55556aaeff70_0, 0, 5;
    %pushi/vec4 10, 0, 5;
    %store/vec4 v0x55556aaefeb0_0, 0, 5;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x55556aaef8b0_0, 0, 2;
    %pushi/vec4 32, 0, 6;
    %store/vec4 v0x55556aaefda0_0, 0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55556aaef9a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55556aaf0700_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 20, 0, 32;
    %store/vec4 v0x55556aaf0420_0, 0, 32;
    %pushi/vec4 34, 0, 6;
    %store/vec4 v0x55556aaefda0_0, 0, 6;
    %delay 10000, 0;
    %pushi/vec4 5, 0, 32;
    %store/vec4 v0x55556aaf0420_0, 0, 32;
    %pushi/vec4 10, 0, 32;
    %store/vec4 v0x55556aaf0530_0, 0, 32;
    %pushi/vec4 42, 0, 6;
    %store/vec4 v0x55556aaefda0_0, 0, 6;
    %delay 10000, 0;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x55556aaf08b0_0, 0, 2;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x55556aaf0080_0, 0, 3;
    %pushi/vec4 1000, 0, 32;
    %store/vec4 v0x55556aaf0420_0, 0, 32;
    %pushi/vec4 4294967288, 0, 32;
    %store/vec4 v0x55556aaf07f0_0, 0, 32;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x55556aaef8b0_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55556aaef9a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55556aaf0700_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x55556aaf08b0_0, 0, 2;
    %pushi/vec4 4, 0, 3;
    %store/vec4 v0x55556aaf0080_0, 0, 3;
    %pushi/vec4 42, 0, 32;
    %store/vec4 v0x55556aaf0420_0, 0, 32;
    %pushi/vec4 42, 0, 32;
    %store/vec4 v0x55556aaf0530_0, 0, 32;
    %pushi/vec4 4, 0, 32;
    %store/vec4 v0x55556aaf07f0_0, 0, 32;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x55556aaef8b0_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55556aaef9a0_0, 0, 1;
    %delay 10000, 0;
    %vpi_call 2 114 "$finish" {0 0 0};
    %end;
    .thread T_6;
# The file index is used to find the file name in the following table.
:file_names 10;
    "N/A";
    "<interactive>";
    "Execute_Testbench.v";
    "./src/execute.v";
    "./src/adder.v";
    "./src/alu.v";
    "./src/alu_control.v";
    "./src/bottom_mux.v";
    "./src/Ex_Mem_latch.v";
    "./src/top_mux.v";
