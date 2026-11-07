#! /home/javalos/oss-cad-suite/bin/vvp
:ivl_version "14.0 (devel)" "(s20260301-403-g5ab23063f-dirty)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/system.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/vhdl_sys.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/vhdl_textio.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/v2005_math.vpi";
:vpi_module "/home/javalos/oss-cad-suite/lib/ivl/va_math.vpi";
S_0x55557acbcb70 .scope module, "executeTB" "executeTB" 2 15;
 .timescale -9 -12;
v0x55557ad04df0_0 .net "EX_MEM_NPC", 31 0, v0x55557ad01fc0_0;  1 drivers
v0x55557ad04f20_0 .net "alu_result", 31 0, v0x55557ad02120_0;  1 drivers
v0x55557ad05030_0 .var "aluop", 1 0;
v0x55557ad05120_0 .var "alusrc", 0 0;
v0x55557ad05210_0 .net "branch", 0 0, L_0x55557ad06280;  1 drivers
v0x55557ad05300_0 .var "clk", 0 0;
v0x55557ad053f0_0 .net "five_bit_muxout", 4 0, v0x55557ad027c0_0;  1 drivers
v0x55557ad054e0_0 .var "funct", 5 0;
v0x55557ad055f0_0 .var "instrout_1511", 4 0;
v0x55557ad056b0_0 .var "instrout_2016", 4 0;
v0x55557ad057c0_0 .var "m_ctl", 2 0;
v0x55557ad058d0_0 .net "memread", 0 0, L_0x55557ad063e0;  1 drivers
v0x55557ad05970_0 .net "memwrite", 0 0, L_0x55557ad064d0;  1 drivers
v0x55557ad05a10_0 .var "npcout", 31 0;
v0x55557ad05b00_0 .var "rdata1", 31 0;
v0x55557ad05bf0_0 .var "rdata2", 31 0;
v0x55557ad05cb0_0 .net "rdata2out", 31 0, v0x55557ad02960_0;  1 drivers
v0x55557ad05dc0_0 .var "regdst", 0 0;
v0x55557ad05eb0_0 .var "s_extendout", 31 0;
v0x55557ad05f70_0 .var "wb_ctl", 1 0;
v0x55557ad06080_0 .net "wb_ctlout", 1 0, v0x55557ad02590_0;  1 drivers
v0x55557ad06190_0 .net "zero", 0 0, v0x55557ad02ae0_0;  1 drivers
S_0x55557acbcd00 .scope module, "uut" "execute" 2 31, 3 6 0, S_0x55557acbcb70;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "clk";
    .port_info 1 /INPUT 2 "wb_ctl";
    .port_info 2 /INPUT 3 "m_ctl";
    .port_info 3 /INPUT 1 "regdst";
    .port_info 4 /INPUT 1 "alusrc";
    .port_info 5 /INPUT 2 "aluop";
    .port_info 6 /INPUT 6 "funct";
    .port_info 7 /INPUT 32 "npcout";
    .port_info 8 /INPUT 32 "rdata1";
    .port_info 9 /INPUT 32 "rdata2";
    .port_info 10 /INPUT 32 "s_extendout";
    .port_info 11 /INPUT 5 "instrout_2016";
    .port_info 12 /INPUT 5 "instrout_1511";
    .port_info 13 /OUTPUT 2 "wb_ctlout";
    .port_info 14 /OUTPUT 1 "branch";
    .port_info 15 /OUTPUT 1 "memread";
    .port_info 16 /OUTPUT 1 "memwrite";
    .port_info 17 /OUTPUT 32 "EX_MEM_NPC";
    .port_info 18 /OUTPUT 1 "zero";
    .port_info 19 /OUTPUT 32 "alu_result";
    .port_info 20 /OUTPUT 32 "rdata2out";
    .port_info 21 /OUTPUT 5 "five_bit_muxout";
v0x55557ad03390_0 .net "EX_MEM_NPC", 31 0, v0x55557ad01fc0_0;  alias, 1 drivers
v0x55557ad03470_0 .net "adder_out", 31 0, L_0x55557ad065c0;  1 drivers
v0x55557ad03560_0 .net "alu_result", 31 0, v0x55557ad02120_0;  alias, 1 drivers
v0x55557ad03630_0 .net "aluop", 1 0, v0x55557ad05030_0;  1 drivers
v0x55557ad03700_0 .net "aluout", 31 0, v0x55557ad00380_0;  1 drivers
v0x55557ad03840_0 .net "alusrc", 0 0, v0x55557ad05120_0;  1 drivers
v0x55557ad038e0_0 .net "aluzero", 0 0, L_0x55557ad16b70;  1 drivers
v0x55557ad039d0_0 .net "b", 31 0, L_0x55557ad06820;  1 drivers
v0x55557ad03ac0_0 .net "branch", 0 0, L_0x55557ad06280;  alias, 1 drivers
v0x55557ad03c10_0 .net "clk", 0 0, v0x55557ad05300_0;  1 drivers
v0x55557ad03cb0_0 .net "control", 2 0, v0x55557ad013e0_0;  1 drivers
v0x55557ad03d50_0 .net "five_bit_muxout", 4 0, v0x55557ad027c0_0;  alias, 1 drivers
v0x55557ad03e10_0 .net "funct", 5 0, v0x55557ad054e0_0;  1 drivers
v0x55557ad03eb0_0 .net "instrout_1511", 4 0, v0x55557ad055f0_0;  1 drivers
v0x55557ad03f50_0 .net "instrout_2016", 4 0, v0x55557ad056b0_0;  1 drivers
v0x55557ad04020_0 .net "m_ctl", 2 0, v0x55557ad057c0_0;  1 drivers
v0x55557ad040f0_0 .net "m_out", 2 0, v0x55557ad023d0_0;  1 drivers
v0x55557ad041c0_0 .net "memread", 0 0, L_0x55557ad063e0;  alias, 1 drivers
v0x55557ad04260_0 .net "memwrite", 0 0, L_0x55557ad064d0;  alias, 1 drivers
v0x55557ad04320_0 .net "muxout", 4 0, L_0x55557ad06760;  1 drivers
v0x55557ad04430_0 .net "npcout", 31 0, v0x55557ad05a10_0;  1 drivers
v0x55557ad044f0_0 .net "rdata1", 31 0, v0x55557ad05b00_0;  1 drivers
v0x55557ad045c0_0 .net "rdata2", 31 0, v0x55557ad05bf0_0;  1 drivers
v0x55557ad046b0_0 .net "rdata2out", 31 0, v0x55557ad02960_0;  alias, 1 drivers
v0x55557ad04770_0 .net "regdst", 0 0, v0x55557ad05dc0_0;  1 drivers
v0x55557ad04840_0 .net "s_extendout", 31 0, v0x55557ad05eb0_0;  1 drivers
v0x55557ad04930_0 .net "wb_ctl", 1 0, v0x55557ad05f70_0;  1 drivers
v0x55557ad049d0_0 .net "wb_ctlout", 1 0, v0x55557ad02590_0;  alias, 1 drivers
v0x55557ad04aa0_0 .net "zero", 0 0, v0x55557ad02ae0_0;  alias, 1 drivers
L_0x55557ad06280 .part v0x55557ad023d0_0, 2, 1;
L_0x55557ad063e0 .part v0x55557ad023d0_0, 1, 1;
L_0x55557ad064d0 .part v0x55557ad023d0_0, 0, 1;
S_0x55557acc1c80 .scope module, "adder3" "adder" 3 42, 4 5 0, S_0x55557acbcd00;
 .timescale -9 -12;
    .port_info 0 /INPUT 32 "add_in1";
    .port_info 1 /INPUT 32 "add_in2";
    .port_info 2 /OUTPUT 32 "add_out";
v0x55557acc3cb0_0 .net "add_in1", 31 0, v0x55557ad05a10_0;  alias, 1 drivers
v0x55557acc32a0_0 .net "add_in2", 31 0, v0x55557ad05eb0_0;  alias, 1 drivers
v0x55557acc3580_0 .net "add_out", 31 0, L_0x55557ad065c0;  alias, 1 drivers
L_0x55557ad065c0 .arith/sum 32, v0x55557ad05a10_0, v0x55557ad05eb0_0;
S_0x55557acffb00 .scope module, "alu3" "alu" 3 68, 5 1 0, S_0x55557acbcd00;
 .timescale -9 -12;
    .port_info 0 /INPUT 32 "a";
    .port_info 1 /INPUT 32 "b";
    .port_info 2 /INPUT 3 "control";
    .port_info 3 /OUTPUT 32 "result";
    .port_info 4 /OUTPUT 1 "zero";
P_0x55557acffce0 .param/l "ALUadd" 0 5 8, C4<010>;
P_0x55557acffd20 .param/l "ALUand" 0 5 10, C4<000>;
P_0x55557acffd60 .param/l "ALUor" 0 5 11, C4<001>;
P_0x55557acffda0 .param/l "ALUslt" 0 5 12, C4<111>;
P_0x55557acffde0 .param/l "ALUsub" 0 5 9, C4<110>;
L_0x55557ad06660 .functor XOR 1, L_0x55557ad06990, L_0x55557ad06a30, C4<0>, C4<0>;
v0x55557acc36f0_0 .net *"_ivl_1", 0 0, L_0x55557ad06990;  1 drivers
v0x55557acc3410_0 .net *"_ivl_3", 0 0, L_0x55557ad06a30;  1 drivers
L_0x7f167f9b7018 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x55557acc39d0_0 .net/2u *"_ivl_6", 31 0, L_0x7f167f9b7018;  1 drivers
v0x55557acc3b40_0 .net "a", 31 0, v0x55557ad05b00_0;  alias, 1 drivers
v0x55557acc3e20_0 .net "b", 31 0, L_0x55557ad06820;  alias, 1 drivers
v0x55557ad002a0_0 .net "control", 2 0, v0x55557ad013e0_0;  alias, 1 drivers
v0x55557ad00380_0 .var "result", 31 0;
v0x55557ad00460_0 .net "sign_mismatch", 0 0, L_0x55557ad06660;  1 drivers
v0x55557ad00520_0 .net "zero", 0 0, L_0x55557ad16b70;  alias, 1 drivers
E_0x55557acbec00 .event anyedge, v0x55557ad002a0_0, v0x55557acc3b40_0, v0x55557acc3e20_0, v0x55557ad00460_0;
L_0x55557ad06990 .part v0x55557ad05b00_0, 31, 1;
L_0x55557ad06a30 .part L_0x55557ad06820, 31, 1;
L_0x55557ad16b70 .cmp/eq 32, v0x55557ad00380_0, L_0x7f167f9b7018;
S_0x55557ad00680 .scope module, "alu_control3" "alu_control" 3 62, 6 5 0, S_0x55557acbcd00;
 .timescale -9 -12;
    .port_info 0 /INPUT 6 "funct";
    .port_info 1 /INPUT 2 "aluop";
    .port_info 2 /OUTPUT 3 "select";
P_0x55557ad00810 .param/l "ALUadd" 0 6 12, C4<010>;
P_0x55557ad00850 .param/l "ALUand" 0 6 12, C4<000>;
P_0x55557ad00890 .param/l "ALUor" 0 6 13, C4<001>;
P_0x55557ad008d0 .param/l "ALUslt" 0 6 13, C4<111>;
P_0x55557ad00910 .param/l "ALUsub" 0 6 12, C4<110>;
P_0x55557ad00950 .param/l "ALUx" 0 6 13, C4<011>;
P_0x55557ad00990 .param/l "FUNCTadd" 0 6 15, C4<100000>;
P_0x55557ad009d0 .param/l "FUNCTand" 0 6 16, C4<100100>;
P_0x55557ad00a10 .param/l "FUNCTor" 0 6 16, C4<100101>;
P_0x55557ad00a50 .param/l "FUNCTslt" 0 6 17, C4<101010>;
P_0x55557ad00a90 .param/l "FUNCTsub" 0 6 15, C4<100010>;
P_0x55557ad00ad0 .param/l "Itype" 0 6 10, C4<01>;
P_0x55557ad00b10 .param/l "Rtype" 0 6 10, C4<10>;
P_0x55557ad00b50 .param/l "lwsw" 0 6 10, C4<00>;
v0x55557ad01200_0 .net "aluop", 1 0, v0x55557ad05030_0;  alias, 1 drivers
v0x55557ad01300_0 .net "funct", 5 0, v0x55557ad054e0_0;  alias, 1 drivers
v0x55557ad013e0_0 .var "select", 2 0;
E_0x55557acbdd10 .event anyedge, v0x55557ad01200_0, v0x55557ad01300_0;
S_0x55557ad014e0 .scope module, "bottom_mux3" "bottom_mux" 3 48, 7 5 0, S_0x55557acbcd00;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 5 "y";
    .port_info 1 /INPUT 5 "a";
    .port_info 2 /INPUT 5 "b";
    .port_info 3 /INPUT 1 "sel";
v0x55557ad016c0_0 .net "a", 4 0, v0x55557ad055f0_0;  alias, 1 drivers
v0x55557ad017a0_0 .net "b", 4 0, v0x55557ad056b0_0;  alias, 1 drivers
v0x55557ad01880_0 .net "sel", 0 0, v0x55557ad05dc0_0;  alias, 1 drivers
v0x55557ad01920_0 .net "y", 4 0, L_0x55557ad06760;  alias, 1 drivers
L_0x55557ad06760 .functor MUXZ 5, v0x55557ad056b0_0, v0x55557ad055f0_0, v0x55557ad05dc0_0, C4<>;
S_0x55557ad01a80 .scope module, "ex_mem3" "ex_mem" 3 76, 8 5 0, S_0x55557acbcd00;
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
v0x55557ad01ee0_0 .net "adder_in", 31 0, L_0x55557ad065c0;  alias, 1 drivers
v0x55557ad01fc0_0 .var "adder_out", 31 0;
v0x55557ad02080_0 .net "alu_result_in", 31 0, v0x55557ad00380_0;  alias, 1 drivers
v0x55557ad02120_0 .var "alu_result_out", 31 0;
v0x55557ad021e0_0 .net "clk", 0 0, v0x55557ad05300_0;  alias, 1 drivers
v0x55557ad022f0_0 .net "ctlm_in", 2 0, v0x55557ad057c0_0;  alias, 1 drivers
v0x55557ad023d0_0 .var "ctlm_out", 2 0;
v0x55557ad024b0_0 .net "ctlwb_in", 1 0, v0x55557ad05f70_0;  alias, 1 drivers
v0x55557ad02590_0 .var "ctlwb_out", 1 0;
v0x55557ad02700_0 .net "muxout_in", 4 0, L_0x55557ad06760;  alias, 1 drivers
v0x55557ad027c0_0 .var "muxout_out", 4 0;
v0x55557ad02880_0 .net "rdata2_in", 31 0, v0x55557ad05bf0_0;  alias, 1 drivers
v0x55557ad02960_0 .var "rdata2_out", 31 0;
v0x55557ad02a40_0 .net "zero_in", 0 0, L_0x55557ad16b70;  alias, 1 drivers
v0x55557ad02ae0_0 .var "zero_out", 0 0;
E_0x55557acbe1e0 .event posedge, v0x55557ad021e0_0;
S_0x55557ad02d60 .scope module, "top_mux3" "top_mux" 3 55, 9 5 0, S_0x55557acbcd00;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 32 "y";
    .port_info 1 /INPUT 32 "a";
    .port_info 2 /INPUT 32 "b";
    .port_info 3 /INPUT 1 "alusrc";
v0x55557ad02f80_0 .net "a", 31 0, v0x55557ad05eb0_0;  alias, 1 drivers
v0x55557ad03090_0 .net "alusrc", 0 0, v0x55557ad05120_0;  alias, 1 drivers
v0x55557ad03130_0 .net "b", 31 0, v0x55557ad05bf0_0;  alias, 1 drivers
v0x55557ad03230_0 .net "y", 31 0, L_0x55557ad06820;  alias, 1 drivers
L_0x55557ad06820 .functor MUXZ 32, v0x55557ad05bf0_0, v0x55557ad05eb0_0, v0x55557ad05120_0, C4<>;
    .scope S_0x55557ad00680;
T_0 ;
    %wait E_0x55557acbdd10;
    %load/vec4 v0x55557ad01200_0;
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
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.4;
T_0.0 ;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.4;
T_0.1 ;
    %pushi/vec4 6, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.4;
T_0.2 ;
    %load/vec4 v0x55557ad01300_0;
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
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.11;
T_0.5 ;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.11;
T_0.6 ;
    %pushi/vec4 6, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.11;
T_0.7 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.11;
T_0.8 ;
    %pushi/vec4 1, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.11;
T_0.9 ;
    %pushi/vec4 7, 0, 3;
    %store/vec4 v0x55557ad013e0_0, 0, 3;
    %jmp T_0.11;
T_0.11 ;
    %pop/vec4 1;
    %jmp T_0.4;
T_0.4 ;
    %pop/vec4 1;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0x55557acffb00;
T_1 ;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x55557ad00380_0, 0;
    %end;
    .thread T_1;
    .scope S_0x55557acffb00;
T_2 ;
    %wait E_0x55557acbec00;
    %load/vec4 v0x55557ad002a0_0;
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
    %store/vec4 v0x55557ad00380_0, 0, 32;
    %jmp T_2.6;
T_2.0 ;
    %load/vec4 v0x55557acc3b40_0;
    %load/vec4 v0x55557acc3e20_0;
    %add;
    %store/vec4 v0x55557ad00380_0, 0, 32;
    %jmp T_2.6;
T_2.1 ;
    %load/vec4 v0x55557acc3b40_0;
    %load/vec4 v0x55557acc3e20_0;
    %sub;
    %store/vec4 v0x55557ad00380_0, 0, 32;
    %jmp T_2.6;
T_2.2 ;
    %load/vec4 v0x55557acc3b40_0;
    %load/vec4 v0x55557acc3e20_0;
    %and;
    %store/vec4 v0x55557ad00380_0, 0, 32;
    %jmp T_2.6;
T_2.3 ;
    %load/vec4 v0x55557acc3b40_0;
    %load/vec4 v0x55557acc3e20_0;
    %or;
    %store/vec4 v0x55557ad00380_0, 0, 32;
    %jmp T_2.6;
T_2.4 ;
    %load/vec4 v0x55557acc3b40_0;
    %load/vec4 v0x55557acc3e20_0;
    %cmp/u;
    %flag_mov 8, 5;
    %jmp/0 T_2.7, 8;
    %pushi/vec4 1, 0, 32;
    %load/vec4 v0x55557ad00460_0;
    %pad/u 32;
    %sub;
    %jmp/1 T_2.8, 8;
T_2.7 ; End of true expr.
    %pushi/vec4 0, 0, 32;
    %load/vec4 v0x55557ad00460_0;
    %pad/u 32;
    %add;
    %jmp/0 T_2.8, 8;
 ; End of false expr.
    %blend;
T_2.8;
    %store/vec4 v0x55557ad00380_0, 0, 32;
    %jmp T_2.6;
T_2.6 ;
    %pop/vec4 1;
    %jmp T_2;
    .thread T_2, $push;
    .scope S_0x55557ad01a80;
T_3 ;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x55557ad02590_0, 0, 2;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x55557ad023d0_0, 0, 3;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55557ad01fc0_0, 0, 32;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55557ad02ae0_0, 0, 1;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55557ad02120_0, 0, 32;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x55557ad02960_0, 0, 32;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x55557ad027c0_0, 0, 5;
    %end;
    .thread T_3;
    .scope S_0x55557ad01a80;
T_4 ;
    %wait E_0x55557acbe1e0;
    %load/vec4 v0x55557ad024b0_0;
    %assign/vec4 v0x55557ad02590_0, 0;
    %load/vec4 v0x55557ad022f0_0;
    %assign/vec4 v0x55557ad023d0_0, 0;
    %load/vec4 v0x55557ad01ee0_0;
    %assign/vec4 v0x55557ad01fc0_0, 0;
    %load/vec4 v0x55557ad02a40_0;
    %assign/vec4 v0x55557ad02ae0_0, 0;
    %load/vec4 v0x55557ad02080_0;
    %assign/vec4 v0x55557ad02120_0, 0;
    %load/vec4 v0x55557ad02880_0;
    %assign/vec4 v0x55557ad02960_0, 0;
    %load/vec4 v0x55557ad02700_0;
    %assign/vec4 v0x55557ad027c0_0, 0;
    %jmp T_4;
    .thread T_4;
    .scope S_0x55557acbcb70;
T_5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55557ad05300_0, 0, 1;
T_5.0 ;
    %delay 5000, 0;
    %load/vec4 v0x55557ad05300_0;
    %inv;
    %store/vec4 v0x55557ad05300_0, 0, 1;
    %jmp T_5.0;
T_5.1 ;
    %end;
    .thread T_5;
    .scope S_0x55557acbcb70;
T_6 ;
    %vpi_call 2 62 "$dumpfile", "execute_tb.vcd" {0 0 0};
    %vpi_call 2 63 "$dumpvars", 32'sb00000000000000000000000000000000, S_0x55557acbcb70 {0 0 0};
    %vpi_call 2 64 "$monitor", "t=%0t ALUOp=%b funct=%b alusrc=%b regdst=%b | adder=%0d alu=%h zero=%b mux=%0d rdata2=%h", $time, v0x55557ad05030_0, v0x55557ad054e0_0, v0x55557ad05120_0, v0x55557ad05dc0_0, v0x55557ad04df0_0, v0x55557ad04f20_0, v0x55557ad06190_0, v0x55557ad053f0_0, v0x55557ad05cb0_0 {0 0 0};
    %delay 10000, 0;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x55557ad05f70_0, 0, 2;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v0x55557ad057c0_0, 0, 3;
    %pushi/vec4 100, 0, 32;
    %store/vec4 v0x55557ad05a10_0, 0, 32;
    %pushi/vec4 10, 0, 32;
    %store/vec4 v0x55557ad05b00_0, 0, 32;
    %pushi/vec4 20, 0, 32;
    %store/vec4 v0x55557ad05bf0_0, 0, 32;
    %pushi/vec4 4, 0, 32;
    %store/vec4 v0x55557ad05eb0_0, 0, 32;
    %pushi/vec4 5, 0, 5;
    %store/vec4 v0x55557ad056b0_0, 0, 5;
    %pushi/vec4 10, 0, 5;
    %store/vec4 v0x55557ad055f0_0, 0, 5;
    %pushi/vec4 2, 0, 2;
    %store/vec4 v0x55557ad05030_0, 0, 2;
    %pushi/vec4 32, 0, 6;
    %store/vec4 v0x55557ad054e0_0, 0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55557ad05120_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55557ad05dc0_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 20, 0, 32;
    %store/vec4 v0x55557ad05b00_0, 0, 32;
    %pushi/vec4 34, 0, 6;
    %store/vec4 v0x55557ad054e0_0, 0, 6;
    %delay 10000, 0;
    %pushi/vec4 5, 0, 32;
    %store/vec4 v0x55557ad05b00_0, 0, 32;
    %pushi/vec4 10, 0, 32;
    %store/vec4 v0x55557ad05bf0_0, 0, 32;
    %pushi/vec4 42, 0, 6;
    %store/vec4 v0x55557ad054e0_0, 0, 6;
    %delay 10000, 0;
    %pushi/vec4 3, 0, 2;
    %store/vec4 v0x55557ad05f70_0, 0, 2;
    %pushi/vec4 2, 0, 3;
    %store/vec4 v0x55557ad057c0_0, 0, 3;
    %pushi/vec4 1000, 0, 32;
    %store/vec4 v0x55557ad05b00_0, 0, 32;
    %pushi/vec4 4294967288, 0, 32;
    %store/vec4 v0x55557ad05eb0_0, 0, 32;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x55557ad05030_0, 0, 2;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55557ad05120_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55557ad05dc0_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 0, 0, 2;
    %store/vec4 v0x55557ad05f70_0, 0, 2;
    %pushi/vec4 4, 0, 3;
    %store/vec4 v0x55557ad057c0_0, 0, 3;
    %pushi/vec4 42, 0, 32;
    %store/vec4 v0x55557ad05b00_0, 0, 32;
    %pushi/vec4 42, 0, 32;
    %store/vec4 v0x55557ad05bf0_0, 0, 32;
    %pushi/vec4 4, 0, 32;
    %store/vec4 v0x55557ad05eb0_0, 0, 32;
    %pushi/vec4 1, 0, 2;
    %store/vec4 v0x55557ad05030_0, 0, 2;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55557ad05120_0, 0, 1;
    %delay 10000, 0;
    %vpi_call 2 116 "$finish" {0 0 0};
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
