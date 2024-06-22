// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu May 30 15:01:07 2024
// Host        : r434-25-122 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -mode funcsim -nolib -force -file {/home/ecslogon/Desktop/Lab
//               3/lab3/lab3.sim/sim_1/synth/func/xsim/tb_booth_func_synth.v}
// Design      : top_module
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ascii_rom
   (DOADO,
    D,
    clk_IBUF_BUFG,
    Q,
    \temp_sdata_reg[5] ,
    temp_page);
  output [3:0]DOADO;
  output [3:0]D;
  input clk_IBUF_BUFG;
  input [9:0]Q;
  input [3:0]\temp_sdata_reg[5] ;
  input [1:0]temp_page;

  wire [3:0]D;
  wire [3:0]DOADO;
  wire [9:0]Q;
  wire clk_IBUF_BUFG;
  wire [5:0]dout_reg__0;
  wire [1:0]temp_page;
  wire [3:0]\temp_sdata_reg[5] ;
  wire [15:8]NLW_dout_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dout_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "Comp_th/Example/char_lib_comp/dout_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000005F00000000000000000000000000000000000000000000),
    .INIT_11(256'h000000240026003C00640026003C006400000000000000030000000300000000),
    .INIT_12(256'h000000210052002400080012002500420000003200490049007F004900490026),
    .INIT_13(256'h0000000000000000000300000000000000000028005800220055004E00500020),
    .INIT_14(256'h00000000001C0022004100000000000000000000000000410022001C00000000),
    .INIT_15(256'h0000000000080008003E000800080000000000150015000E000E001500150000),
    .INIT_16(256'h0000000000080008000800080008000000000000000000300050000000000000),
    .INIT_17(256'h0000000100020004000800100020004000000000000000000040000000000000),
    .INIT_18(256'h0000000000000040007F00410000000000000000003E004100410041003E0000),
    .INIT_19(256'h0000000000360049004900410022000000000000006E00490051006100420000),
    .INIT_1A(256'h00000000007100490049004900270000000000000010007F0012001400180000),
    .INIT_1B(256'h000000000003000D001100210043000000000000007000480049004A003C0000),
    .INIT_1C(256'h00000000001E0029004900090006000000000000003600490049004900360000),
    .INIT_1D(256'h0000000000000030005200000000000000000000000000000012000000000000),
    .INIT_1E(256'h0000001400140014001400140014000000000000002200140014000800000000),
    .INIT_1F(256'h0000000000020005005900010002000000000000000800140014002200000000),
    .INIT_20(256'h00000040007C004A0009004A007C00400000002E0051004D0055005D0041003E),
    .INIT_21(256'h0000002200410041004100410022001C000000360049004900490049007F0041),
    .INIT_22(256'h000000630041005D00490049007F00410000001C0022004100410041007F0041),
    .INIT_23(256'h00000008003A0049004900410022001C000000030001001D00090049007F0041),
    .INIT_24(256'h0000000000410041007F00410041000000000041007F000800080008007F0041),
    .INIT_25(256'h0000004100610012000C0008007F0041000000010001003F0041004100400030),
    .INIT_26(256'h00000041007F0042000C0042007F0041000000600040004000400041007F0041),
    .INIT_27(256'h0000001C00220041004100410022001C00000001007F0011000C0042007F0041),
    .INIT_28(256'h0000004C00520061002100210012000C000000060009000900090049007F0041),
    .INIT_29(256'h00000033004900490049004900490066000000460069001900090009007F0041),
    .INIT_2A(256'h00000001003F004100400041003F00010000000300010041007F004100010003),
    .INIT_2B(256'h00000001001F006100140061001F000100000001000F003100400031000F0001),
    .INIT_2C(256'h0000000100030044007800440003000100000041004100360008003600410041),
    .INIT_2D(256'h00000000000000410041007F0000000000000061004300450049005100610043),
    .INIT_2E(256'h000000000000007F004100410000000000000040002000100008000400020001),
    .INIT_2F(256'h0000004000400040004000400040000000000004000200010001000200040000),
    .INIT_30(256'h00000040003C004A004A004A0034000000000000000000000000000200010000),
    .INIT_31(256'h000000000024004200420042003C000000000030004800480048003F00410000),
    .INIT_32(256'h00000000002C004A004A004A003C000000000040003F00490048004800300000),
    .INIT_33(256'h00000001003F004900490049002600000000000000090049007E004800000000),
    .INIT_34(256'h0000000000000040007D004400000000000000400078004400040048007F0041),
    .INIT_35(256'h000000420042002400180010007F0041000000000000003D0044004000000000),
    .INIT_36(256'h00000040007E0002007C0002007E00420000000000400040007F004100400000),
    .INIT_37(256'h00000000003C004200420042003C000000000040007C004200020044007E0042),
    .INIT_38(256'h00000041007F0049000900090006000000000006000900090049007F00410000),
    .INIT_39(256'h000000000036004A004A004A0064000000000004000200020044007E00420000),
    .INIT_3A(256'h0040007E002200400040003E0002000000000000002000440044003F00040000),
    .INIT_3B(256'h00000002001E006200180062001E000200000002000E003200400032000E0002),
    .INIT_3C(256'h0000000100030005003800450043000100000042006200140008001400620042),
    .INIT_3D(256'h00000000000000410036000800000000000000620046004A0052006200460000),
    .INIT_3E(256'h000000000008003600410000000000000000000000000000007F000000000000),
    .INIT_3F(256'h005500AA005500AA005500AA005500AA00000018001000100008000800180000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dout_reg
       (.ADDRARDADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dout_reg_DOADO_UNCONNECTED[15:8],DOADO[3:2],dout_reg__0[5:4],DOADO[1:0],dout_reg__0[1:0]}),
        .DOBDO(NLW_dout_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dout_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dout_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hCC800080)) 
    \temp_sdata[0]_i_1 
       (.I0(\temp_sdata_reg[5] [0]),
        .I1(\temp_sdata_reg[5] [1]),
        .I2(temp_page[0]),
        .I3(\temp_sdata_reg[5] [2]),
        .I4(dout_reg__0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h8A008A8A)) 
    \temp_sdata[1]_i_1 
       (.I0(\temp_sdata_reg[5] [1]),
        .I1(dout_reg__0[1]),
        .I2(\temp_sdata_reg[5] [2]),
        .I3(temp_page[1]),
        .I4(\temp_sdata_reg[5] [0]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h88F0)) 
    \temp_sdata[4]_i_1 
       (.I0(\temp_sdata_reg[5] [2]),
        .I1(dout_reg__0[4]),
        .I2(\temp_sdata_reg[5] [0]),
        .I3(\temp_sdata_reg[5] [1]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h4055)) 
    \temp_sdata[5]_i_2 
       (.I0(\temp_sdata_reg[5] [0]),
        .I1(\temp_sdata_reg[5] [3]),
        .I2(dout_reg__0[5]),
        .I3(\temp_sdata_reg[5] [2]),
        .O(D[3]));
endmodule

module booth
   (D,
    plusOp_carry__1,
    plusOp_carry__0,
    \dataAs_reg[7] ,
    Q,
    \lRval_reg[2] );
  output [2:0]D;
  output [5:0]plusOp_carry__1;
  output [5:0]plusOp_carry__0;
  output [5:0]\dataAs_reg[7] ;
  input [6:0]Q;
  input [7:0]\lRval_reg[2] ;

  wire [13:12]A;
  wire [2:0]D;
  wire [6:0]Q;
  wire [5:0]\dataAs_reg[7] ;
  wire [7:0]\lRval_reg[2] ;
  wire [5:0]plusOp_carry__0;
  wire [5:0]plusOp_carry__1;
  wire stg2_n_0;
  wire stg2_n_1;
  wire stg2_n_10;
  wire stg2_n_11;
  wire stg2_n_12;
  wire stg2_n_13;
  wire stg2_n_14;
  wire stg2_n_15;
  wire stg2_n_16;
  wire stg2_n_17;
  wire stg2_n_18;
  wire stg2_n_19;
  wire stg2_n_2;
  wire stg2_n_20;
  wire stg2_n_21;
  wire stg2_n_22;
  wire stg2_n_23;
  wire stg2_n_24;
  wire stg2_n_25;
  wire stg2_n_26;
  wire stg2_n_27;
  wire stg2_n_28;
  wire stg2_n_29;
  wire stg2_n_3;
  wire stg2_n_30;
  wire stg2_n_31;
  wire stg2_n_32;
  wire stg2_n_4;
  wire stg2_n_5;
  wire stg2_n_6;
  wire stg2_n_7;
  wire stg2_n_8;
  wire stg2_n_9;
  wire stg3_n_0;
  wire stg3_n_1;
  wire stg3_n_10;
  wire stg3_n_11;
  wire stg3_n_12;
  wire stg3_n_13;
  wire stg3_n_14;
  wire stg3_n_15;
  wire stg3_n_16;
  wire stg3_n_17;
  wire stg3_n_18;
  wire stg3_n_19;
  wire stg3_n_2;
  wire stg3_n_20;
  wire stg3_n_21;
  wire stg3_n_22;
  wire stg3_n_23;
  wire stg3_n_24;
  wire stg3_n_25;
  wire stg3_n_26;
  wire stg3_n_3;
  wire stg3_n_4;
  wire stg3_n_5;
  wire stg3_n_6;
  wire stg3_n_7;
  wire stg3_n_8;
  wire stg3_n_9;
  wire stg4_n_23;
  wire stg4_n_24;
  wire stg4_n_25;

  stage stg2
       (.CO(stg2_n_14),
        .O({stg2_n_0,stg2_n_1,stg2_n_2,stg2_n_3}),
        .Q(Q),
        .S({stg4_n_23,stg4_n_24,stg4_n_25}),
        .\dataAs_reg[3] ({stg2_n_4,stg2_n_5,stg2_n_6,stg2_n_7}),
        .\dataAs_reg[3]_0 ({stg2_n_8,stg2_n_9,stg2_n_10,stg2_n_11}),
        .\dataAs_reg[3]_1 ({stg2_n_12,stg2_n_13}),
        .\dataAs_reg[5] ({stg2_n_15,stg2_n_16,stg2_n_17,stg2_n_18}),
        .\dataAs_reg[5]_0 ({stg2_n_27,stg2_n_28,stg2_n_29}),
        .\dataAs_reg[5]_1 ({stg2_n_30,stg2_n_31,stg2_n_32}),
        .\dataBs_reg[2] ({stg2_n_19,stg2_n_20,stg2_n_21,stg2_n_22}),
        .\dataBs_reg[6] ({stg2_n_23,stg2_n_24,stg2_n_25,stg2_n_26}),
        .\lRval_reg[2] (\lRval_reg[2] ),
        .\lRval_reg[2]_0 ({stg3_n_12,stg3_n_13,stg3_n_14}),
        .plusOp_carry__2_0(A));
  stage_0 stg3
       (.O({stg3_n_0,stg3_n_1,stg3_n_2,stg3_n_3}),
        .Q(Q[6:5]),
        .S({stg3_n_15,stg3_n_16,stg3_n_17,stg3_n_18}),
        .\dataAs_reg[5] ({stg3_n_4,stg3_n_5,stg3_n_6,stg3_n_7}),
        .\dataAs_reg[5]_0 ({stg3_n_12,stg3_n_13,stg3_n_14}),
        .\dataBs_reg[0] ({stg3_n_19,stg3_n_20,stg3_n_21,stg3_n_22}),
        .\dataBs_reg[4] ({stg3_n_23,stg3_n_24,stg3_n_25,stg3_n_26}),
        .\dataBs_reg[6] ({stg3_n_8,stg3_n_9,stg3_n_10,stg3_n_11}),
        .\lRval_reg[2] ({stg2_n_12,stg2_n_13}),
        .\lRval_reg[2]_0 ({stg2_n_27,stg2_n_28,stg2_n_29}),
        .plusOp_carry_0({stg2_n_0,stg2_n_1,stg2_n_2,stg2_n_3}),
        .plusOp_carry_1({stg2_n_15,stg2_n_16,stg2_n_17,stg2_n_18}),
        .plusOp_carry__0_0({stg2_n_4,stg2_n_5,stg2_n_6,stg2_n_7}),
        .plusOp_carry__0_1({stg2_n_19,stg2_n_20,stg2_n_21,stg2_n_22}),
        .plusOp_carry__1_0({stg2_n_8,stg2_n_9,stg2_n_10,stg2_n_11}),
        .plusOp_carry__1_1({stg2_n_23,stg2_n_24,stg2_n_25,stg2_n_26}),
        .plusOp_carry__1_2(\lRval_reg[2] [4:0]));
  stage_1 stg4
       (.CO(stg2_n_14),
        .D(D),
        .O({stg3_n_0,stg3_n_1,stg3_n_2,stg3_n_3}),
        .Q({Q[6],Q[3:0]}),
        .S({stg3_n_15,stg3_n_16,stg3_n_17,stg3_n_18}),
        .\dataAs_reg[3] ({stg4_n_23,stg4_n_24,stg4_n_25}),
        .\dataAs_reg[7] (\dataAs_reg[7] ),
        .\dataBs_reg[7] (A),
        .\lRval_reg[2] ({stg3_n_8,stg3_n_9,stg3_n_10,stg3_n_11}),
        .\lRval_reg[2]_0 ({stg3_n_23,stg3_n_24,stg3_n_25,stg3_n_26}),
        .\lRval_reg[2]_1 ({stg3_n_13,stg3_n_14}),
        .\lRval_reg[2]_2 ({stg2_n_30,stg2_n_31,stg2_n_32}),
        .\opR_reg[1][3] ({stg3_n_4,stg3_n_5,stg3_n_6,stg3_n_7}),
        .\opR_reg[1][3]_0 ({stg3_n_19,stg3_n_20,stg3_n_21,stg3_n_22}),
        .plusOp_carry__0_0(plusOp_carry__0),
        .plusOp_carry__1_0(plusOp_carry__1),
        .plusOp_carry__2_0(\lRval_reg[2] [7]));
endmodule

module delay
   (E,
    clk_IBUF_BUFG,
    Q,
    \current_state_reg[0] ,
    delay_en,
    temp_spi_fin,
    i__carry_i_4_0,
    SR);
  output [0:0]E;
  input clk_IBUF_BUFG;
  input [4:0]Q;
  input [0:0]\current_state_reg[0] ;
  input delay_en;
  input temp_spi_fin;
  input [4:0]i__carry_i_4_0;
  input [0:0]SR;

  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire \clk_counter[0]_i_1_n_0 ;
  wire \clk_counter[0]_i_3_n_0 ;
  wire \clk_counter[0]_i_4_n_0 ;
  wire \clk_counter[0]_i_5_n_0 ;
  wire \clk_counter[0]_i_6_n_0 ;
  wire \clk_counter[0]_i_7_n_0 ;
  wire [16:0]clk_counter_reg;
  wire \clk_counter_reg[0]_i_2_n_0 ;
  wire \clk_counter_reg[0]_i_2_n_1 ;
  wire \clk_counter_reg[0]_i_2_n_2 ;
  wire \clk_counter_reg[0]_i_2_n_3 ;
  wire \clk_counter_reg[0]_i_2_n_4 ;
  wire \clk_counter_reg[0]_i_2_n_5 ;
  wire \clk_counter_reg[0]_i_2_n_6 ;
  wire \clk_counter_reg[0]_i_2_n_7 ;
  wire \clk_counter_reg[12]_i_1_n_0 ;
  wire \clk_counter_reg[12]_i_1_n_1 ;
  wire \clk_counter_reg[12]_i_1_n_2 ;
  wire \clk_counter_reg[12]_i_1_n_3 ;
  wire \clk_counter_reg[12]_i_1_n_4 ;
  wire \clk_counter_reg[12]_i_1_n_5 ;
  wire \clk_counter_reg[12]_i_1_n_6 ;
  wire \clk_counter_reg[12]_i_1_n_7 ;
  wire \clk_counter_reg[16]_i_1_n_7 ;
  wire \clk_counter_reg[4]_i_1_n_0 ;
  wire \clk_counter_reg[4]_i_1_n_1 ;
  wire \clk_counter_reg[4]_i_1_n_2 ;
  wire \clk_counter_reg[4]_i_1_n_3 ;
  wire \clk_counter_reg[4]_i_1_n_4 ;
  wire \clk_counter_reg[4]_i_1_n_5 ;
  wire \clk_counter_reg[4]_i_1_n_6 ;
  wire \clk_counter_reg[4]_i_1_n_7 ;
  wire \clk_counter_reg[8]_i_1_n_0 ;
  wire \clk_counter_reg[8]_i_1_n_1 ;
  wire \clk_counter_reg[8]_i_1_n_2 ;
  wire \clk_counter_reg[8]_i_1_n_3 ;
  wire \clk_counter_reg[8]_i_1_n_4 ;
  wire \clk_counter_reg[8]_i_1_n_5 ;
  wire \clk_counter_reg[8]_i_1_n_6 ;
  wire \clk_counter_reg[8]_i_1_n_7 ;
  wire \current_state[4]_i_3_n_0 ;
  wire [0:0]\current_state_reg[0] ;
  wire delay_en;
  wire eqOp;
  wire \eqOp_inferred__0/i__carry_n_1 ;
  wire \eqOp_inferred__0/i__carry_n_2 ;
  wire \eqOp_inferred__0/i__carry_n_3 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire [4:0]i__carry_i_4_0;
  wire i__carry_i_4_n_0;
  wire ms_counter;
  wire \ms_counter[0]_i_2_n_0 ;
  wire \ms_counter[0]_i_4_n_0 ;
  wire \ms_counter[0]_i_5_n_0 ;
  wire [11:0]ms_counter_reg;
  wire \ms_counter_reg[0]_i_3_n_0 ;
  wire \ms_counter_reg[0]_i_3_n_1 ;
  wire \ms_counter_reg[0]_i_3_n_2 ;
  wire \ms_counter_reg[0]_i_3_n_3 ;
  wire \ms_counter_reg[0]_i_3_n_4 ;
  wire \ms_counter_reg[0]_i_3_n_5 ;
  wire \ms_counter_reg[0]_i_3_n_6 ;
  wire \ms_counter_reg[0]_i_3_n_7 ;
  wire \ms_counter_reg[4]_i_1_n_0 ;
  wire \ms_counter_reg[4]_i_1_n_1 ;
  wire \ms_counter_reg[4]_i_1_n_2 ;
  wire \ms_counter_reg[4]_i_1_n_3 ;
  wire \ms_counter_reg[4]_i_1_n_4 ;
  wire \ms_counter_reg[4]_i_1_n_5 ;
  wire \ms_counter_reg[4]_i_1_n_6 ;
  wire \ms_counter_reg[4]_i_1_n_7 ;
  wire \ms_counter_reg[8]_i_1_n_1 ;
  wire \ms_counter_reg[8]_i_1_n_2 ;
  wire \ms_counter_reg[8]_i_1_n_3 ;
  wire \ms_counter_reg[8]_i_1_n_4 ;
  wire \ms_counter_reg[8]_i_1_n_5 ;
  wire \ms_counter_reg[8]_i_1_n_6 ;
  wire \ms_counter_reg[8]_i_1_n_7 ;
  wire [2:2]temp_delay_ms;
  wire temp_spi_fin;
  wire [3:0]\NLW_clk_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_clk_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_ms_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h44575457)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(delay_en),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hF0E0FBE0)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(delay_en),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFF08EC08)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(delay_en),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "hold:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "hold:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "hold:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \clk_counter[0]_i_1 
       (.I0(\clk_counter[0]_i_3_n_0 ),
        .I1(\clk_counter[0]_i_4_n_0 ),
        .I2(\clk_counter[0]_i_5_n_0 ),
        .I3(\clk_counter[0]_i_6_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\clk_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \clk_counter[0]_i_3 
       (.I0(clk_counter_reg[5]),
        .I1(clk_counter_reg[7]),
        .I2(clk_counter_reg[9]),
        .I3(clk_counter_reg[16]),
        .I4(clk_counter_reg[10]),
        .O(\clk_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \clk_counter[0]_i_4 
       (.I0(clk_counter_reg[2]),
        .I1(clk_counter_reg[1]),
        .I2(clk_counter_reg[15]),
        .I3(clk_counter_reg[0]),
        .O(\clk_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_counter[0]_i_5 
       (.I0(clk_counter_reg[14]),
        .I1(clk_counter_reg[13]),
        .I2(clk_counter_reg[12]),
        .I3(clk_counter_reg[11]),
        .O(\clk_counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_counter[0]_i_6 
       (.I0(clk_counter_reg[4]),
        .I1(clk_counter_reg[3]),
        .I2(clk_counter_reg[8]),
        .I3(clk_counter_reg[6]),
        .O(\clk_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_7 
       (.I0(clk_counter_reg[0]),
        .O(\clk_counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_7 ),
        .Q(clk_counter_reg[0]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_counter_reg[0]_i_2_n_0 ,\clk_counter_reg[0]_i_2_n_1 ,\clk_counter_reg[0]_i_2_n_2 ,\clk_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_counter_reg[0]_i_2_n_4 ,\clk_counter_reg[0]_i_2_n_5 ,\clk_counter_reg[0]_i_2_n_6 ,\clk_counter_reg[0]_i_2_n_7 }),
        .S({clk_counter_reg[3:1],\clk_counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_5 ),
        .Q(clk_counter_reg[10]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_4 ),
        .Q(clk_counter_reg[11]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_7 ),
        .Q(clk_counter_reg[12]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[12]_i_1 
       (.CI(\clk_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_counter_reg[12]_i_1_n_0 ,\clk_counter_reg[12]_i_1_n_1 ,\clk_counter_reg[12]_i_1_n_2 ,\clk_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[12]_i_1_n_4 ,\clk_counter_reg[12]_i_1_n_5 ,\clk_counter_reg[12]_i_1_n_6 ,\clk_counter_reg[12]_i_1_n_7 }),
        .S(clk_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_6 ),
        .Q(clk_counter_reg[13]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_5 ),
        .Q(clk_counter_reg[14]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_4 ),
        .Q(clk_counter_reg[15]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_7 ),
        .Q(clk_counter_reg[16]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[16]_i_1 
       (.CI(\clk_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_clk_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\clk_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,clk_counter_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_6 ),
        .Q(clk_counter_reg[1]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_5 ),
        .Q(clk_counter_reg[2]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_4 ),
        .Q(clk_counter_reg[3]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_7 ),
        .Q(clk_counter_reg[4]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[4]_i_1 
       (.CI(\clk_counter_reg[0]_i_2_n_0 ),
        .CO({\clk_counter_reg[4]_i_1_n_0 ,\clk_counter_reg[4]_i_1_n_1 ,\clk_counter_reg[4]_i_1_n_2 ,\clk_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[4]_i_1_n_4 ,\clk_counter_reg[4]_i_1_n_5 ,\clk_counter_reg[4]_i_1_n_6 ,\clk_counter_reg[4]_i_1_n_7 }),
        .S(clk_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_6 ),
        .Q(clk_counter_reg[5]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_5 ),
        .Q(clk_counter_reg[6]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_4 ),
        .Q(clk_counter_reg[7]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_7 ),
        .Q(clk_counter_reg[8]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[8]_i_1 
       (.CI(\clk_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_counter_reg[8]_i_1_n_0 ,\clk_counter_reg[8]_i_1_n_1 ,\clk_counter_reg[8]_i_1_n_2 ,\clk_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[8]_i_1_n_4 ,\clk_counter_reg[8]_i_1_n_5 ,\clk_counter_reg[8]_i_1_n_6 ,\clk_counter_reg[8]_i_1_n_7 }),
        .S(clk_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_6 ),
        .Q(clk_counter_reg[9]),
        .R(\clk_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFE7EF)) 
    \current_state[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\current_state_reg[0] ),
        .I4(Q[2]),
        .I5(\current_state[4]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hF00FF00F8F0F800F)) 
    \current_state[4]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(delay_en),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(temp_spi_fin),
        .I5(Q[2]),
        .O(\current_state[4]_i_3_n_0 ));
  CARRY4 \eqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({eqOp,\eqOp_inferred__0/i__carry_n_1 ,\eqOp_inferred__0/i__carry_n_2 ,\eqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1__0
       (.I0(ms_counter_reg[11]),
        .I1(ms_counter_reg[10]),
        .I2(ms_counter_reg[9]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    i__carry_i_2
       (.I0(ms_counter_reg[6]),
        .I1(temp_delay_ms),
        .I2(ms_counter_reg[8]),
        .I3(ms_counter_reg[7]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0041)) 
    i__carry_i_3__0
       (.I0(ms_counter_reg[4]),
        .I1(temp_delay_ms),
        .I2(ms_counter_reg[5]),
        .I3(ms_counter_reg[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h1002)) 
    i__carry_i_4
       (.I0(ms_counter_reg[0]),
        .I1(ms_counter_reg[1]),
        .I2(temp_delay_ms),
        .I3(ms_counter_reg[2]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    i__carry_i_5
       (.I0(i__carry_i_4_0[3]),
        .I1(i__carry_i_4_0[2]),
        .I2(i__carry_i_4_0[0]),
        .I3(i__carry_i_4_0[1]),
        .I4(i__carry_i_4_0[4]),
        .O(temp_delay_ms));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_counter[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(ms_counter));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ms_counter[0]_i_2 
       (.I0(\clk_counter[0]_i_6_n_0 ),
        .I1(clk_counter_reg[14]),
        .I2(clk_counter_reg[13]),
        .I3(clk_counter_reg[12]),
        .I4(clk_counter_reg[11]),
        .I5(\ms_counter[0]_i_4_n_0 ),
        .O(\ms_counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \ms_counter[0]_i_4 
       (.I0(\clk_counter[0]_i_3_n_0 ),
        .I1(clk_counter_reg[0]),
        .I2(clk_counter_reg[15]),
        .I3(clk_counter_reg[1]),
        .I4(clk_counter_reg[2]),
        .O(\ms_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_counter[0]_i_5 
       (.I0(ms_counter_reg[0]),
        .O(\ms_counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[0]_i_3_n_7 ),
        .Q(ms_counter_reg[0]),
        .R(ms_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ms_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\ms_counter_reg[0]_i_3_n_0 ,\ms_counter_reg[0]_i_3_n_1 ,\ms_counter_reg[0]_i_3_n_2 ,\ms_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ms_counter_reg[0]_i_3_n_4 ,\ms_counter_reg[0]_i_3_n_5 ,\ms_counter_reg[0]_i_3_n_6 ,\ms_counter_reg[0]_i_3_n_7 }),
        .S({ms_counter_reg[3:1],\ms_counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[8]_i_1_n_5 ),
        .Q(ms_counter_reg[10]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[8]_i_1_n_4 ),
        .Q(ms_counter_reg[11]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[0]_i_3_n_6 ),
        .Q(ms_counter_reg[1]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[0]_i_3_n_5 ),
        .Q(ms_counter_reg[2]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[0]_i_3_n_4 ),
        .Q(ms_counter_reg[3]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[4]_i_1_n_7 ),
        .Q(ms_counter_reg[4]),
        .R(ms_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ms_counter_reg[4]_i_1 
       (.CI(\ms_counter_reg[0]_i_3_n_0 ),
        .CO({\ms_counter_reg[4]_i_1_n_0 ,\ms_counter_reg[4]_i_1_n_1 ,\ms_counter_reg[4]_i_1_n_2 ,\ms_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ms_counter_reg[4]_i_1_n_4 ,\ms_counter_reg[4]_i_1_n_5 ,\ms_counter_reg[4]_i_1_n_6 ,\ms_counter_reg[4]_i_1_n_7 }),
        .S(ms_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[4]_i_1_n_6 ),
        .Q(ms_counter_reg[5]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[4]_i_1_n_5 ),
        .Q(ms_counter_reg[6]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[4]_i_1_n_4 ),
        .Q(ms_counter_reg[7]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[8]_i_1_n_7 ),
        .Q(ms_counter_reg[8]),
        .R(ms_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ms_counter_reg[8]_i_1 
       (.CI(\ms_counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_ms_counter_reg[8]_i_1_CO_UNCONNECTED [3],\ms_counter_reg[8]_i_1_n_1 ,\ms_counter_reg[8]_i_1_n_2 ,\ms_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ms_counter_reg[8]_i_1_n_4 ,\ms_counter_reg[8]_i_1_n_5 ,\ms_counter_reg[8]_i_1_n_6 ,\ms_counter_reg[8]_i_1_n_7 }),
        .S(ms_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2_n_0 ),
        .D(\ms_counter_reg[8]_i_1_n_6 ),
        .Q(ms_counter_reg[9]),
        .R(ms_counter));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module delay_2
   (\FSM_onehot_current_state_reg[2]_0 ,
    clk_IBUF_BUFG,
    delay_ms,
    delay_en,
    SR);
  output \FSM_onehot_current_state_reg[2]_0 ;
  input clk_IBUF_BUFG;
  input [1:0]delay_ms;
  input delay_en;
  input [0:0]SR;

  wire \FSM_onehot_current_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state_reg[2]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire \clk_counter[0]_i_1__0_n_0 ;
  wire \clk_counter[0]_i_3__0_n_0 ;
  wire \clk_counter[0]_i_4__0_n_0 ;
  wire \clk_counter[0]_i_5__0_n_0 ;
  wire \clk_counter[0]_i_6__0_n_0 ;
  wire \clk_counter[0]_i_7__0_n_0 ;
  wire [16:0]clk_counter_reg;
  wire \clk_counter_reg[0]_i_2__0_n_0 ;
  wire \clk_counter_reg[0]_i_2__0_n_1 ;
  wire \clk_counter_reg[0]_i_2__0_n_2 ;
  wire \clk_counter_reg[0]_i_2__0_n_3 ;
  wire \clk_counter_reg[0]_i_2__0_n_4 ;
  wire \clk_counter_reg[0]_i_2__0_n_5 ;
  wire \clk_counter_reg[0]_i_2__0_n_6 ;
  wire \clk_counter_reg[0]_i_2__0_n_7 ;
  wire \clk_counter_reg[12]_i_1__0_n_0 ;
  wire \clk_counter_reg[12]_i_1__0_n_1 ;
  wire \clk_counter_reg[12]_i_1__0_n_2 ;
  wire \clk_counter_reg[12]_i_1__0_n_3 ;
  wire \clk_counter_reg[12]_i_1__0_n_4 ;
  wire \clk_counter_reg[12]_i_1__0_n_5 ;
  wire \clk_counter_reg[12]_i_1__0_n_6 ;
  wire \clk_counter_reg[12]_i_1__0_n_7 ;
  wire \clk_counter_reg[16]_i_1__0_n_7 ;
  wire \clk_counter_reg[4]_i_1__0_n_0 ;
  wire \clk_counter_reg[4]_i_1__0_n_1 ;
  wire \clk_counter_reg[4]_i_1__0_n_2 ;
  wire \clk_counter_reg[4]_i_1__0_n_3 ;
  wire \clk_counter_reg[4]_i_1__0_n_4 ;
  wire \clk_counter_reg[4]_i_1__0_n_5 ;
  wire \clk_counter_reg[4]_i_1__0_n_6 ;
  wire \clk_counter_reg[4]_i_1__0_n_7 ;
  wire \clk_counter_reg[8]_i_1__0_n_0 ;
  wire \clk_counter_reg[8]_i_1__0_n_1 ;
  wire \clk_counter_reg[8]_i_1__0_n_2 ;
  wire \clk_counter_reg[8]_i_1__0_n_3 ;
  wire \clk_counter_reg[8]_i_1__0_n_4 ;
  wire \clk_counter_reg[8]_i_1__0_n_5 ;
  wire \clk_counter_reg[8]_i_1__0_n_6 ;
  wire \clk_counter_reg[8]_i_1__0_n_7 ;
  wire delay_en;
  wire [1:0]delay_ms;
  wire eqOp;
  wire \eqOp_inferred__0/i__carry_n_1 ;
  wire \eqOp_inferred__0/i__carry_n_2 ;
  wire \eqOp_inferred__0/i__carry_n_3 ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire ms_counter;
  wire \ms_counter[0]_i_2__0_n_0 ;
  wire \ms_counter[0]_i_4__0_n_0 ;
  wire \ms_counter[0]_i_5__0_n_0 ;
  wire [11:0]ms_counter_reg;
  wire \ms_counter_reg[0]_i_3__0_n_0 ;
  wire \ms_counter_reg[0]_i_3__0_n_1 ;
  wire \ms_counter_reg[0]_i_3__0_n_2 ;
  wire \ms_counter_reg[0]_i_3__0_n_3 ;
  wire \ms_counter_reg[0]_i_3__0_n_4 ;
  wire \ms_counter_reg[0]_i_3__0_n_5 ;
  wire \ms_counter_reg[0]_i_3__0_n_6 ;
  wire \ms_counter_reg[0]_i_3__0_n_7 ;
  wire \ms_counter_reg[4]_i_1__0_n_0 ;
  wire \ms_counter_reg[4]_i_1__0_n_1 ;
  wire \ms_counter_reg[4]_i_1__0_n_2 ;
  wire \ms_counter_reg[4]_i_1__0_n_3 ;
  wire \ms_counter_reg[4]_i_1__0_n_4 ;
  wire \ms_counter_reg[4]_i_1__0_n_5 ;
  wire \ms_counter_reg[4]_i_1__0_n_6 ;
  wire \ms_counter_reg[4]_i_1__0_n_7 ;
  wire \ms_counter_reg[8]_i_1__0_n_1 ;
  wire \ms_counter_reg[8]_i_1__0_n_2 ;
  wire \ms_counter_reg[8]_i_1__0_n_3 ;
  wire \ms_counter_reg[8]_i_1__0_n_4 ;
  wire \ms_counter_reg[8]_i_1__0_n_5 ;
  wire \ms_counter_reg[8]_i_1__0_n_6 ;
  wire \ms_counter_reg[8]_i_1__0_n_7 ;
  wire [3:0]\NLW_clk_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_clk_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_ms_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h44575457)) 
    \FSM_onehot_current_state[0]_i_1__0 
       (.I0(delay_en),
        .I1(\FSM_onehot_current_state_reg[2]_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp),
        .O(\FSM_onehot_current_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0E0FBE0)) 
    \FSM_onehot_current_state[1]_i_1__0 
       (.I0(delay_en),
        .I1(\FSM_onehot_current_state_reg[2]_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp),
        .O(\FSM_onehot_current_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF08EC08)) 
    \FSM_onehot_current_state[2]_i_1__0 
       (.I0(delay_en),
        .I1(\FSM_onehot_current_state_reg[2]_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp),
        .O(\FSM_onehot_current_state[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "hold:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "hold:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "hold:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg[2]_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \clk_counter[0]_i_1__0 
       (.I0(\clk_counter[0]_i_3__0_n_0 ),
        .I1(\clk_counter[0]_i_4__0_n_0 ),
        .I2(\clk_counter[0]_i_5__0_n_0 ),
        .I3(\clk_counter[0]_i_6__0_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\clk_counter[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \clk_counter[0]_i_3__0 
       (.I0(clk_counter_reg[5]),
        .I1(clk_counter_reg[7]),
        .I2(clk_counter_reg[9]),
        .I3(clk_counter_reg[16]),
        .I4(clk_counter_reg[10]),
        .O(\clk_counter[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \clk_counter[0]_i_4__0 
       (.I0(clk_counter_reg[2]),
        .I1(clk_counter_reg[1]),
        .I2(clk_counter_reg[15]),
        .I3(clk_counter_reg[0]),
        .O(\clk_counter[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_counter[0]_i_5__0 
       (.I0(clk_counter_reg[14]),
        .I1(clk_counter_reg[13]),
        .I2(clk_counter_reg[12]),
        .I3(clk_counter_reg[11]),
        .O(\clk_counter[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_counter[0]_i_6__0 
       (.I0(clk_counter_reg[4]),
        .I1(clk_counter_reg[3]),
        .I2(clk_counter_reg[8]),
        .I3(clk_counter_reg[6]),
        .O(\clk_counter[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_7__0 
       (.I0(clk_counter_reg[0]),
        .O(\clk_counter[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2__0_n_7 ),
        .Q(clk_counter_reg[0]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\clk_counter_reg[0]_i_2__0_n_0 ,\clk_counter_reg[0]_i_2__0_n_1 ,\clk_counter_reg[0]_i_2__0_n_2 ,\clk_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_counter_reg[0]_i_2__0_n_4 ,\clk_counter_reg[0]_i_2__0_n_5 ,\clk_counter_reg[0]_i_2__0_n_6 ,\clk_counter_reg[0]_i_2__0_n_7 }),
        .S({clk_counter_reg[3:1],\clk_counter[0]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_5 ),
        .Q(clk_counter_reg[10]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_4 ),
        .Q(clk_counter_reg[11]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_7 ),
        .Q(clk_counter_reg[12]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[12]_i_1__0 
       (.CI(\clk_counter_reg[8]_i_1__0_n_0 ),
        .CO({\clk_counter_reg[12]_i_1__0_n_0 ,\clk_counter_reg[12]_i_1__0_n_1 ,\clk_counter_reg[12]_i_1__0_n_2 ,\clk_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[12]_i_1__0_n_4 ,\clk_counter_reg[12]_i_1__0_n_5 ,\clk_counter_reg[12]_i_1__0_n_6 ,\clk_counter_reg[12]_i_1__0_n_7 }),
        .S(clk_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_6 ),
        .Q(clk_counter_reg[13]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_5 ),
        .Q(clk_counter_reg[14]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_4 ),
        .Q(clk_counter_reg[15]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1__0_n_7 ),
        .Q(clk_counter_reg[16]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[16]_i_1__0 
       (.CI(\clk_counter_reg[12]_i_1__0_n_0 ),
        .CO(\NLW_clk_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_counter_reg[16]_i_1__0_O_UNCONNECTED [3:1],\clk_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,clk_counter_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2__0_n_6 ),
        .Q(clk_counter_reg[1]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2__0_n_5 ),
        .Q(clk_counter_reg[2]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2__0_n_4 ),
        .Q(clk_counter_reg[3]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_7 ),
        .Q(clk_counter_reg[4]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[4]_i_1__0 
       (.CI(\clk_counter_reg[0]_i_2__0_n_0 ),
        .CO({\clk_counter_reg[4]_i_1__0_n_0 ,\clk_counter_reg[4]_i_1__0_n_1 ,\clk_counter_reg[4]_i_1__0_n_2 ,\clk_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[4]_i_1__0_n_4 ,\clk_counter_reg[4]_i_1__0_n_5 ,\clk_counter_reg[4]_i_1__0_n_6 ,\clk_counter_reg[4]_i_1__0_n_7 }),
        .S(clk_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_6 ),
        .Q(clk_counter_reg[5]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_5 ),
        .Q(clk_counter_reg[6]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_4 ),
        .Q(clk_counter_reg[7]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_7 ),
        .Q(clk_counter_reg[8]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[8]_i_1__0 
       (.CI(\clk_counter_reg[4]_i_1__0_n_0 ),
        .CO({\clk_counter_reg[8]_i_1__0_n_0 ,\clk_counter_reg[8]_i_1__0_n_1 ,\clk_counter_reg[8]_i_1__0_n_2 ,\clk_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[8]_i_1__0_n_4 ,\clk_counter_reg[8]_i_1__0_n_5 ,\clk_counter_reg[8]_i_1__0_n_6 ,\clk_counter_reg[8]_i_1__0_n_7 }),
        .S(clk_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_6 ),
        .Q(clk_counter_reg[9]),
        .R(\clk_counter[0]_i_1__0_n_0 ));
  CARRY4 \eqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({eqOp,\eqOp_inferred__0/i__carry_n_1 ,\eqOp_inferred__0/i__carry_n_2 ,\eqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,i__carry_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h8002)) 
    i__carry_i_1
       (.I0(ms_counter_reg[9]),
        .I1(delay_ms[1]),
        .I2(ms_counter_reg[11]),
        .I3(ms_counter_reg[10]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9000)) 
    i__carry_i_2__0
       (.I0(ms_counter_reg[6]),
        .I1(delay_ms[0]),
        .I2(ms_counter_reg[8]),
        .I3(ms_counter_reg[7]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h0900)) 
    i__carry_i_3
       (.I0(ms_counter_reg[3]),
        .I1(delay_ms[0]),
        .I2(ms_counter_reg[4]),
        .I3(ms_counter_reg[5]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4__0
       (.I0(ms_counter_reg[2]),
        .I1(ms_counter_reg[1]),
        .I2(ms_counter_reg[0]),
        .O(i__carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_counter[0]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(ms_counter));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ms_counter[0]_i_2__0 
       (.I0(\clk_counter[0]_i_6__0_n_0 ),
        .I1(clk_counter_reg[14]),
        .I2(clk_counter_reg[13]),
        .I3(clk_counter_reg[12]),
        .I4(clk_counter_reg[11]),
        .I5(\ms_counter[0]_i_4__0_n_0 ),
        .O(\ms_counter[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \ms_counter[0]_i_4__0 
       (.I0(\clk_counter[0]_i_3__0_n_0 ),
        .I1(clk_counter_reg[0]),
        .I2(clk_counter_reg[15]),
        .I3(clk_counter_reg[1]),
        .I4(clk_counter_reg[2]),
        .O(\ms_counter[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_counter[0]_i_5__0 
       (.I0(ms_counter_reg[0]),
        .O(\ms_counter[0]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[0]_i_3__0_n_7 ),
        .Q(ms_counter_reg[0]),
        .R(ms_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ms_counter_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\ms_counter_reg[0]_i_3__0_n_0 ,\ms_counter_reg[0]_i_3__0_n_1 ,\ms_counter_reg[0]_i_3__0_n_2 ,\ms_counter_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ms_counter_reg[0]_i_3__0_n_4 ,\ms_counter_reg[0]_i_3__0_n_5 ,\ms_counter_reg[0]_i_3__0_n_6 ,\ms_counter_reg[0]_i_3__0_n_7 }),
        .S({ms_counter_reg[3:1],\ms_counter[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[8]_i_1__0_n_5 ),
        .Q(ms_counter_reg[10]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[8]_i_1__0_n_4 ),
        .Q(ms_counter_reg[11]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[0]_i_3__0_n_6 ),
        .Q(ms_counter_reg[1]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[0]_i_3__0_n_5 ),
        .Q(ms_counter_reg[2]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[0]_i_3__0_n_4 ),
        .Q(ms_counter_reg[3]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[4]_i_1__0_n_7 ),
        .Q(ms_counter_reg[4]),
        .R(ms_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ms_counter_reg[4]_i_1__0 
       (.CI(\ms_counter_reg[0]_i_3__0_n_0 ),
        .CO({\ms_counter_reg[4]_i_1__0_n_0 ,\ms_counter_reg[4]_i_1__0_n_1 ,\ms_counter_reg[4]_i_1__0_n_2 ,\ms_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ms_counter_reg[4]_i_1__0_n_4 ,\ms_counter_reg[4]_i_1__0_n_5 ,\ms_counter_reg[4]_i_1__0_n_6 ,\ms_counter_reg[4]_i_1__0_n_7 }),
        .S(ms_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[4]_i_1__0_n_6 ),
        .Q(ms_counter_reg[5]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[4]_i_1__0_n_5 ),
        .Q(ms_counter_reg[6]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[4]_i_1__0_n_4 ),
        .Q(ms_counter_reg[7]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[8]_i_1__0_n_7 ),
        .Q(ms_counter_reg[8]),
        .R(ms_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ms_counter_reg[8]_i_1__0 
       (.CI(\ms_counter_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_ms_counter_reg[8]_i_1__0_CO_UNCONNECTED [3],\ms_counter_reg[8]_i_1__0_n_1 ,\ms_counter_reg[8]_i_1__0_n_2 ,\ms_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ms_counter_reg[8]_i_1__0_n_4 ,\ms_counter_reg[8]_i_1__0_n_5 ,\ms_counter_reg[8]_i_1__0_n_6 ,\ms_counter_reg[8]_i_1__0_n_7 }),
        .S(ms_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\ms_counter[0]_i_2__0_n_0 ),
        .D(\ms_counter_reg[8]_i_1__0_n_6 ),
        .Q(ms_counter_reg[9]),
        .R(ms_counter));
endmodule

module oled_ctrl
   (oled_res_OBUF,
    oled_vbat_OBUF,
    oled_vdd_OBUF,
    oled_dc_OBUF,
    oled_sclk_OBUF,
    oled_sdin_OBUF,
    clk_IBUF_BUFG,
    SR,
    \current_screen_reg[3,2][6] ,
    \current_screen_reg[3,2][5] ,
    Q,
    \current_screen_reg[3,3][6] ,
    \current_screen_reg[3,3][5] ,
    \current_screen_reg[3,3][3] ,
    \current_screen_reg[3,6][5] ,
    \current_screen_reg[3,6][3] ,
    \current_screen_reg[3,7][5] ,
    \current_screen_reg[3,7][3] ,
    \current_screen_reg[3,9][2] ,
    \current_screen_reg[3,10][2] ,
    \current_screen_reg[3,11][6] ,
    \current_screen_reg[3,12][6] ,
    \current_screen_reg[3,13][6] ,
    \current_screen_reg[3,5][3] ,
    \current_screen_reg[3,1][2] ,
    \current_screen_reg[3,1][1] ,
    \current_screen_reg[3,5][2] ,
    \current_screen_reg[3,5][1] ,
    \current_screen_reg[3,6][6] ,
    \current_screen_reg[3,7][6] ,
    \current_screen_reg[3,9][1] );
  output oled_res_OBUF;
  output oled_vbat_OBUF;
  output oled_vdd_OBUF;
  output oled_dc_OBUF;
  output oled_sclk_OBUF;
  output oled_sdin_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]SR;
  input \current_screen_reg[3,2][6] ;
  input \current_screen_reg[3,2][5] ;
  input [3:0]Q;
  input \current_screen_reg[3,3][6] ;
  input \current_screen_reg[3,3][5] ;
  input [3:0]\current_screen_reg[3,3][3] ;
  input \current_screen_reg[3,6][5] ;
  input [3:0]\current_screen_reg[3,6][3] ;
  input \current_screen_reg[3,7][5] ;
  input [3:0]\current_screen_reg[3,7][3] ;
  input \current_screen_reg[3,9][2] ;
  input [2:0]\current_screen_reg[3,10][2] ;
  input [5:0]\current_screen_reg[3,11][6] ;
  input [5:0]\current_screen_reg[3,12][6] ;
  input [5:0]\current_screen_reg[3,13][6] ;
  input \current_screen_reg[3,5][3] ;
  input \current_screen_reg[3,1][2] ;
  input \current_screen_reg[3,1][1] ;
  input \current_screen_reg[3,5][2] ;
  input \current_screen_reg[3,5][1] ;
  input \current_screen_reg[3,6][6] ;
  input \current_screen_reg[3,7][6] ;
  input \current_screen_reg[3,9][1] ;

  wire Example_n_3;
  wire Example_n_4;
  wire Example_n_5;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire Initialize_n_3;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [2:0]\current_screen_reg[3,10][2] ;
  wire [5:0]\current_screen_reg[3,11][6] ;
  wire [5:0]\current_screen_reg[3,12][6] ;
  wire [5:0]\current_screen_reg[3,13][6] ;
  wire \current_screen_reg[3,1][1] ;
  wire \current_screen_reg[3,1][2] ;
  wire \current_screen_reg[3,2][5] ;
  wire \current_screen_reg[3,2][6] ;
  wire [3:0]\current_screen_reg[3,3][3] ;
  wire \current_screen_reg[3,3][5] ;
  wire \current_screen_reg[3,3][6] ;
  wire \current_screen_reg[3,5][1] ;
  wire \current_screen_reg[3,5][2] ;
  wire \current_screen_reg[3,5][3] ;
  wire [3:0]\current_screen_reg[3,6][3] ;
  wire \current_screen_reg[3,6][5] ;
  wire \current_screen_reg[3,6][6] ;
  wire [3:0]\current_screen_reg[3,7][3] ;
  wire \current_screen_reg[3,7][5] ;
  wire \current_screen_reg[3,7][6] ;
  wire \current_screen_reg[3,9][1] ;
  wire \current_screen_reg[3,9][2] ;
  wire example_en;
  wire example_sdata;
  wire init_en;
  wire oled_dc_OBUF;
  wire oled_res_OBUF;
  wire oled_sclk_OBUF;
  wire oled_sdin_OBUF;
  wire oled_vbat_OBUF;
  wire oled_vdd_OBUF;
  wire [4:4]\spi_comp/counter_reg ;

  oled_ex Example
       (.D({Example_n_3,Example_n_4}),
        .\FSM_onehot_current_state_reg[2] (Example_n_5),
        .\FSM_onehot_current_state_reg[3] ({\FSM_onehot_current_state_reg_n_0_[3] ,example_en,init_en}),
        .Q(\spi_comp/counter_reg ),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_screen_reg[3,10][2]_0 (\current_screen_reg[3,10][2] ),
        .\current_screen_reg[3,11][6]_0 (\current_screen_reg[3,11][6] ),
        .\current_screen_reg[3,12][6]_0 (\current_screen_reg[3,12][6] ),
        .\current_screen_reg[3,13][6]_0 (\current_screen_reg[3,13][6] ),
        .\current_screen_reg[3,1][1]_0 (\current_screen_reg[3,1][1] ),
        .\current_screen_reg[3,1][2]_0 (\current_screen_reg[3,1][2] ),
        .\current_screen_reg[3,2][3]_0 (Q),
        .\current_screen_reg[3,2][5]_0 (\current_screen_reg[3,2][5] ),
        .\current_screen_reg[3,2][6]_0 (\current_screen_reg[3,2][6] ),
        .\current_screen_reg[3,3][3]_0 (\current_screen_reg[3,3][3] ),
        .\current_screen_reg[3,3][5]_0 (\current_screen_reg[3,3][5] ),
        .\current_screen_reg[3,3][6]_0 (\current_screen_reg[3,3][6] ),
        .\current_screen_reg[3,5][1]_0 (\current_screen_reg[3,5][1] ),
        .\current_screen_reg[3,5][2]_0 (\current_screen_reg[3,5][2] ),
        .\current_screen_reg[3,5][3]_0 (\current_screen_reg[3,5][3] ),
        .\current_screen_reg[3,6][3]_0 (\current_screen_reg[3,6][3] ),
        .\current_screen_reg[3,6][5]_0 (\current_screen_reg[3,6][5] ),
        .\current_screen_reg[3,6][6]_0 (\current_screen_reg[3,6][6] ),
        .\current_screen_reg[3,7][3]_0 (\current_screen_reg[3,7][3] ),
        .\current_screen_reg[3,7][5]_0 (\current_screen_reg[3,7][5] ),
        .\current_screen_reg[3,7][6]_0 (\current_screen_reg[3,7][6] ),
        .\current_screen_reg[3,9][1]_0 (\current_screen_reg[3,9][1] ),
        .\current_screen_reg[3,9][2]_0 (\current_screen_reg[3,9][2] ),
        .example_sdata(example_sdata),
        .oled_dc_OBUF(oled_dc_OBUF));
  (* FSM_ENCODED_STATES = "oledinitialize:0010,oledexample:0100,idle:0001,done:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Initialize_n_3),
        .D(Example_n_4),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "oledinitialize:0010,oledexample:0100,idle:0001,done:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Initialize_n_3),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(init_en),
        .R(SR));
  (* FSM_ENCODED_STATES = "oledinitialize:0010,oledexample:0100,idle:0001,done:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Initialize_n_3),
        .D(init_en),
        .Q(example_en),
        .R(SR));
  (* FSM_ENCODED_STATES = "oledinitialize:0010,oledexample:0100,idle:0001,done:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Initialize_n_3),
        .D(Example_n_3),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(SR));
  oled_init Initialize
       (.E(Initialize_n_3),
        .\FSM_onehot_current_state_reg[0] (Example_n_5),
        .Q({\FSM_onehot_current_state_reg_n_0_[3] ,init_en,\FSM_onehot_current_state_reg_n_0_[0] }),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .example_sdata(example_sdata),
        .oled_res_OBUF(oled_res_OBUF),
        .oled_sclk(\spi_comp/counter_reg ),
        .oled_sclk_OBUF(oled_sclk_OBUF),
        .oled_sdin_OBUF(oled_sdin_OBUF),
        .oled_vbat_OBUF(oled_vbat_OBUF),
        .oled_vdd_OBUF(oled_vdd_OBUF));
endmodule

module oled_ex
   (example_sdata,
    Q,
    oled_dc_OBUF,
    D,
    \FSM_onehot_current_state_reg[2] ,
    clk_IBUF_BUFG,
    \FSM_onehot_current_state_reg[3] ,
    \current_screen_reg[3,2][6]_0 ,
    \current_screen_reg[3,2][5]_0 ,
    \current_screen_reg[3,2][3]_0 ,
    \current_screen_reg[3,3][6]_0 ,
    \current_screen_reg[3,3][5]_0 ,
    \current_screen_reg[3,3][3]_0 ,
    \current_screen_reg[3,6][5]_0 ,
    \current_screen_reg[3,6][3]_0 ,
    \current_screen_reg[3,7][5]_0 ,
    \current_screen_reg[3,7][3]_0 ,
    \current_screen_reg[3,9][2]_0 ,
    \current_screen_reg[3,10][2]_0 ,
    \current_screen_reg[3,11][6]_0 ,
    \current_screen_reg[3,12][6]_0 ,
    \current_screen_reg[3,13][6]_0 ,
    \current_screen_reg[3,5][3]_0 ,
    \current_screen_reg[3,1][2]_0 ,
    \current_screen_reg[3,1][1]_0 ,
    \current_screen_reg[3,5][2]_0 ,
    \current_screen_reg[3,5][1]_0 ,
    \current_screen_reg[3,6][6]_0 ,
    \current_screen_reg[3,7][6]_0 ,
    \current_screen_reg[3,9][1]_0 ,
    SR);
  output example_sdata;
  output [0:0]Q;
  output oled_dc_OBUF;
  output [1:0]D;
  output \FSM_onehot_current_state_reg[2] ;
  input clk_IBUF_BUFG;
  input [2:0]\FSM_onehot_current_state_reg[3] ;
  input \current_screen_reg[3,2][6]_0 ;
  input \current_screen_reg[3,2][5]_0 ;
  input [3:0]\current_screen_reg[3,2][3]_0 ;
  input \current_screen_reg[3,3][6]_0 ;
  input \current_screen_reg[3,3][5]_0 ;
  input [3:0]\current_screen_reg[3,3][3]_0 ;
  input \current_screen_reg[3,6][5]_0 ;
  input [3:0]\current_screen_reg[3,6][3]_0 ;
  input \current_screen_reg[3,7][5]_0 ;
  input [3:0]\current_screen_reg[3,7][3]_0 ;
  input \current_screen_reg[3,9][2]_0 ;
  input [2:0]\current_screen_reg[3,10][2]_0 ;
  input [5:0]\current_screen_reg[3,11][6]_0 ;
  input [5:0]\current_screen_reg[3,12][6]_0 ;
  input [5:0]\current_screen_reg[3,13][6]_0 ;
  input \current_screen_reg[3,5][3]_0 ;
  input \current_screen_reg[3,1][2]_0 ;
  input \current_screen_reg[3,1][1]_0 ;
  input \current_screen_reg[3,5][2]_0 ;
  input \current_screen_reg[3,5][1]_0 ;
  input \current_screen_reg[3,6][6]_0 ;
  input \current_screen_reg[3,7][6]_0 ;
  input \current_screen_reg[3,9][1]_0 ;
  input [0:0]SR;

  wire [1:0]D;
  wire \FSM_onehot_current_state_reg[2] ;
  wire [2:0]\FSM_onehot_current_state_reg[3] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [9:0]addr;
  wire after_char_state;
  wire \after_char_state[0]_i_1_n_0 ;
  wire \after_char_state[2]_i_1_n_0 ;
  wire \after_char_state_reg_n_0_[0] ;
  wire \after_char_state_reg_n_0_[2] ;
  wire after_page_state;
  wire \after_page_state[0]_i_1_n_0 ;
  wire \after_page_state[1]_i_1_n_0 ;
  wire \after_page_state[2]_i_1_n_0 ;
  wire \after_page_state[3]_i_1_n_0 ;
  wire \after_page_state[4]_i_2_n_0 ;
  wire \after_page_state[4]_i_3_n_0 ;
  wire \after_page_state_reg_n_0_[0] ;
  wire \after_page_state_reg_n_0_[1] ;
  wire \after_page_state_reg_n_0_[2] ;
  wire \after_page_state_reg_n_0_[3] ;
  wire \after_page_state_reg_n_0_[4] ;
  wire [4:0]after_state;
  wire \after_state_reg_n_0_[0] ;
  wire \after_state_reg_n_0_[1] ;
  wire \after_state_reg_n_0_[2] ;
  wire \after_state_reg_n_0_[3] ;
  wire \after_state_reg_n_0_[4] ;
  wire after_update_state;
  wire \after_update_state[0]_i_1_n_0 ;
  wire \after_update_state[3]_i_2_n_0 ;
  wire \after_update_state_reg_n_0_[0] ;
  wire \after_update_state_reg_n_0_[1] ;
  wire \after_update_state_reg_n_0_[3] ;
  wire char_lib_comp_n_5;
  wire clk_IBUF_BUFG;
  wire [6:0]\current_screen[0,0] ;
  wire \current_screen[0,0][5]_i_1_n_0 ;
  wire \current_screen[1,0][5]_i_1_n_0 ;
  wire \current_screen[1,10][5]_i_1_n_0 ;
  wire \current_screen[3,10][0]_i_1_n_0 ;
  wire \current_screen[3,10][1]_i_1_n_0 ;
  wire \current_screen[3,10][2]_i_1_n_0 ;
  wire \current_screen[3,11][0]_i_1_n_0 ;
  wire \current_screen[3,11][1]_i_1_n_0 ;
  wire \current_screen[3,11][2]_i_1_n_0 ;
  wire \current_screen[3,11][3]_i_1_n_0 ;
  wire \current_screen[3,11][4]_i_1_n_0 ;
  wire \current_screen[3,11][5]_i_1_n_0 ;
  wire \current_screen[3,11][6]_i_1_n_0 ;
  wire \current_screen[3,12][0]_i_1_n_0 ;
  wire \current_screen[3,12][1]_i_1_n_0 ;
  wire \current_screen[3,12][2]_i_1_n_0 ;
  wire \current_screen[3,12][3]_i_1_n_0 ;
  wire \current_screen[3,12][4]_i_1_n_0 ;
  wire \current_screen[3,12][5]_i_1_n_0 ;
  wire \current_screen[3,12][6]_i_1_n_0 ;
  wire \current_screen[3,13][0]_i_1_n_0 ;
  wire \current_screen[3,13][1]_i_1_n_0 ;
  wire \current_screen[3,13][2]_i_1_n_0 ;
  wire \current_screen[3,13][3]_i_1_n_0 ;
  wire \current_screen[3,13][4]_i_1_n_0 ;
  wire \current_screen[3,13][5]_i_1_n_0 ;
  wire \current_screen[3,13][6]_i_1_n_0 ;
  wire \current_screen[3,1][1]_i_1_n_0 ;
  wire \current_screen[3,1][2]_i_1_n_0 ;
  wire \current_screen[3,1][2]_i_2_n_0 ;
  wire \current_screen[3,1][3]_i_1_n_0 ;
  wire \current_screen[3,2][0]_i_1_n_0 ;
  wire \current_screen[3,2][1]_i_1_n_0 ;
  wire \current_screen[3,2][2]_i_1_n_0 ;
  wire \current_screen[3,2][3]_i_1_n_0 ;
  wire \current_screen[3,2][4]_i_1_n_0 ;
  wire \current_screen[3,2][5]_i_1_n_0 ;
  wire \current_screen[3,2][5]_i_2_n_0 ;
  wire \current_screen[3,2][6]_i_1_n_0 ;
  wire \current_screen[3,3][0]_i_1_n_0 ;
  wire \current_screen[3,3][1]_i_1_n_0 ;
  wire \current_screen[3,3][2]_i_1_n_0 ;
  wire \current_screen[3,3][3]_i_1_n_0 ;
  wire \current_screen[3,3][4]_i_1_n_0 ;
  wire \current_screen[3,3][5]_i_1_n_0 ;
  wire \current_screen[3,3][6]_i_1_n_0 ;
  wire \current_screen[3,5][1]_i_1_n_0 ;
  wire \current_screen[3,5][2]_i_1_n_0 ;
  wire \current_screen[3,5][3]_i_1_n_0 ;
  wire \current_screen[3,6][0]_i_1_n_0 ;
  wire \current_screen[3,6][1]_i_1_n_0 ;
  wire \current_screen[3,6][2]_i_1_n_0 ;
  wire \current_screen[3,6][3]_i_1_n_0 ;
  wire \current_screen[3,6][4]_i_1_n_0 ;
  wire \current_screen[3,6][5]_i_1_n_0 ;
  wire \current_screen[3,6][6]_i_1_n_0 ;
  wire \current_screen[3,7][0]_i_1_n_0 ;
  wire \current_screen[3,7][1]_i_1_n_0 ;
  wire \current_screen[3,7][2]_i_1_n_0 ;
  wire \current_screen[3,7][3]_i_1_n_0 ;
  wire \current_screen[3,7][4]_i_1_n_0 ;
  wire \current_screen[3,7][5]_i_1_n_0 ;
  wire \current_screen[3,7][6]_i_1_n_0 ;
  wire \current_screen[3,9][1]_i_1_n_0 ;
  wire \current_screen[3,9][2]_i_1_n_0 ;
  wire [5:5]\current_screen_reg[0,0] ;
  wire [4:4]\current_screen_reg[0,4] ;
  wire [6:5]\current_screen_reg[1,0] ;
  wire [5:5]\current_screen_reg[1,10] ;
  wire [6:6]\current_screen_reg[3,0] ;
  wire [2:0]\current_screen_reg[3,10] ;
  wire [2:0]\current_screen_reg[3,10][2]_0 ;
  wire [6:0]\current_screen_reg[3,11] ;
  wire [5:0]\current_screen_reg[3,11][6]_0 ;
  wire [6:0]\current_screen_reg[3,12] ;
  wire [5:0]\current_screen_reg[3,12][6]_0 ;
  wire [6:0]\current_screen_reg[3,13] ;
  wire [5:0]\current_screen_reg[3,13][6]_0 ;
  wire [3:1]\current_screen_reg[3,1] ;
  wire \current_screen_reg[3,1][1]_0 ;
  wire \current_screen_reg[3,1][2]_0 ;
  wire [6:0]\current_screen_reg[3,2] ;
  wire [3:0]\current_screen_reg[3,2][3]_0 ;
  wire \current_screen_reg[3,2][5]_0 ;
  wire \current_screen_reg[3,2][6]_0 ;
  wire [6:0]\current_screen_reg[3,3] ;
  wire [3:0]\current_screen_reg[3,3][3]_0 ;
  wire \current_screen_reg[3,3][5]_0 ;
  wire \current_screen_reg[3,3][6]_0 ;
  wire [3:1]\current_screen_reg[3,5] ;
  wire \current_screen_reg[3,5][1]_0 ;
  wire \current_screen_reg[3,5][2]_0 ;
  wire \current_screen_reg[3,5][3]_0 ;
  wire [6:0]\current_screen_reg[3,6] ;
  wire [3:0]\current_screen_reg[3,6][3]_0 ;
  wire \current_screen_reg[3,6][5]_0 ;
  wire \current_screen_reg[3,6][6]_0 ;
  wire [6:0]\current_screen_reg[3,7] ;
  wire [3:0]\current_screen_reg[3,7][3]_0 ;
  wire \current_screen_reg[3,7][5]_0 ;
  wire \current_screen_reg[3,7][6]_0 ;
  wire [2:1]\current_screen_reg[3,9] ;
  wire \current_screen_reg[3,9][1]_0 ;
  wire \current_screen_reg[3,9][2]_0 ;
  wire current_state;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[2]_i_1__0_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[3]_i_1_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state[4]_i_2__0_n_0 ;
  wire \current_state[4]_i_3__0_n_0 ;
  wire \current_state[4]_i_5_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire \current_state_reg_n_0_[4] ;
  wire [6:1]data0;
  wire [5:0]data10;
  wire [4:1]data11;
  wire [6:0]data12;
  wire [6:0]data13;
  wire [6:0]data2;
  wire [6:1]data3;
  wire [6:0]data6;
  wire [6:0]data7;
  wire [2:2]data8;
  wire [3:2]data9;
  wire delay_comp_n_0;
  wire delay_en;
  wire [11:3]delay_ms;
  wire [7:2]dout_reg__0;
  wire example_dc;
  wire example_sdata;
  wire g0_b0__0_n_0;
  wire g0_b0_n_0;
  wire oled_dc_OBUF;
  wire p_1_in0;
  wire [7:0]sdata;
  wire [2:0]temp_addr;
  wire [6:0]temp_char;
  wire \temp_char[0]_i_10_n_0 ;
  wire \temp_char[0]_i_13_n_0 ;
  wire \temp_char[0]_i_15_n_0 ;
  wire \temp_char[0]_i_4_n_0 ;
  wire \temp_char[0]_i_5_n_0 ;
  wire \temp_char[0]_i_6_n_0 ;
  wire \temp_char[0]_i_7_n_0 ;
  wire \temp_char[0]_i_8_n_0 ;
  wire \temp_char[1]_i_11_n_0 ;
  wire \temp_char[1]_i_15_n_0 ;
  wire \temp_char[1]_i_2_n_0 ;
  wire \temp_char[1]_i_3_n_0 ;
  wire \temp_char[1]_i_4_n_0 ;
  wire \temp_char[1]_i_5_n_0 ;
  wire \temp_char[1]_i_8_n_0 ;
  wire \temp_char[1]_i_9_n_0 ;
  wire \temp_char[2]_i_10_n_0 ;
  wire \temp_char[2]_i_2_n_0 ;
  wire \temp_char[2]_i_3_n_0 ;
  wire \temp_char[2]_i_5_n_0 ;
  wire \temp_char[2]_i_7_n_0 ;
  wire \temp_char[2]_i_8_n_0 ;
  wire \temp_char[3]_i_10_n_0 ;
  wire \temp_char[3]_i_12_n_0 ;
  wire \temp_char[3]_i_13_n_0 ;
  wire \temp_char[3]_i_16_n_0 ;
  wire \temp_char[3]_i_19_n_0 ;
  wire \temp_char[3]_i_2_n_0 ;
  wire \temp_char[3]_i_3_n_0 ;
  wire \temp_char[3]_i_4_n_0 ;
  wire \temp_char[3]_i_5_n_0 ;
  wire \temp_char[3]_i_6_n_0 ;
  wire \temp_char[3]_i_7_n_0 ;
  wire \temp_char[4]_i_11_n_0 ;
  wire \temp_char[4]_i_2_n_0 ;
  wire \temp_char[4]_i_3_n_0 ;
  wire \temp_char[4]_i_5_n_0 ;
  wire \temp_char[4]_i_8_n_0 ;
  wire \temp_char[4]_i_9_n_0 ;
  wire \temp_char[5]_i_10_n_0 ;
  wire \temp_char[5]_i_11_n_0 ;
  wire \temp_char[5]_i_2_n_0 ;
  wire \temp_char[5]_i_3_n_0 ;
  wire \temp_char[5]_i_4_n_0 ;
  wire \temp_char[5]_i_5_n_0 ;
  wire \temp_char[6]_i_10_n_0 ;
  wire \temp_char[6]_i_2_n_0 ;
  wire \temp_char[6]_i_3_n_0 ;
  wire \temp_char[6]_i_5_n_0 ;
  wire \temp_char[6]_i_9_n_0 ;
  wire \temp_char_reg[0]_i_2_n_0 ;
  wire \temp_char_reg[0]_i_3_n_0 ;
  wire \temp_char_reg[1]_i_10_n_0 ;
  wire \temp_char_reg[1]_i_6_n_0 ;
  wire \temp_char_reg[1]_i_7_n_0 ;
  wire \temp_char_reg[2]_i_11_n_0 ;
  wire \temp_char_reg[2]_i_4_n_0 ;
  wire \temp_char_reg[2]_i_6_n_0 ;
  wire \temp_char_reg[2]_i_9_n_0 ;
  wire \temp_char_reg[4]_i_10_n_0 ;
  wire \temp_char_reg[4]_i_4_n_0 ;
  wire \temp_char_reg[4]_i_6_n_0 ;
  wire \temp_char_reg[5]_i_6_n_0 ;
  wire \temp_char_reg[5]_i_9_n_0 ;
  wire \temp_char_reg[6]_i_4_n_0 ;
  wire \temp_char_reg[6]_i_6_n_0 ;
  wire \temp_char_reg[6]_i_8_n_0 ;
  wire temp_dc_i_1_n_0;
  wire temp_delay_en_i_1_n_0;
  wire \temp_delay_ms[11]_i_1_n_0 ;
  wire \temp_delay_ms[3]_i_1_n_0 ;
  wire [3:0]temp_index;
  wire \temp_index[0]_i_1_n_0 ;
  wire \temp_index[1]_i_1_n_0 ;
  wire \temp_index[2]_i_1_n_0 ;
  wire \temp_index[3]_i_2_n_0 ;
  wire [1:0]temp_page;
  wire \temp_page[0]_i_1_n_0 ;
  wire \temp_page[1]_i_1_n_0 ;
  wire [5:0]temp_sdata;
  wire \temp_sdata[5]_i_1_n_0 ;
  wire \temp_sdata[7]_i_1_n_0 ;
  wire temp_spi_en_i_1_n_0;
  wire temp_spi_en_reg_n_0;

  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \FSM_onehot_current_state[0]_i_1__1 
       (.I0(\FSM_onehot_current_state_reg[3] [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(p_1_in0),
        .I5(\current_state_reg_n_0_[3] ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(\FSM_onehot_current_state_reg[3] [2]),
        .I1(\FSM_onehot_current_state_reg[2] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_onehot_current_state[3]_i_3 
       (.I0(\FSM_onehot_current_state_reg[3] [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(p_1_in0),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \after_char_state[0]_i_1 
       (.I0(temp_index[1]),
        .I1(temp_index[0]),
        .I2(temp_index[2]),
        .I3(temp_index[3]),
        .O(\after_char_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \after_char_state[2]_i_1 
       (.I0(temp_index[3]),
        .I1(temp_index[2]),
        .I2(temp_index[0]),
        .I3(temp_index[1]),
        .O(\after_char_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_char_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\after_char_state[0]_i_1_n_0 ),
        .Q(\after_char_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_char_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\after_char_state[2]_i_1_n_0 ),
        .Q(\after_char_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC000FFFFAAAAAAAA)) 
    \after_page_state[0]_i_1 
       (.I0(\after_page_state_reg_n_0_[0] ),
        .I1(\after_update_state_reg_n_0_[0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(after_page_state),
        .O(\after_page_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000FFFFAAAAAAAA)) 
    \after_page_state[1]_i_1 
       (.I0(\after_page_state_reg_n_0_[1] ),
        .I1(\after_update_state_reg_n_0_[1] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(after_page_state),
        .O(\after_page_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFFFFAAAAAAAA)) 
    \after_page_state[2]_i_1 
       (.I0(\after_page_state_reg_n_0_[2] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\after_update_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(after_page_state),
        .O(\after_page_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \after_page_state[3]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\after_update_state_reg_n_0_[3] ),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .O(\after_page_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020020000000200)) 
    \after_page_state[4]_i_1 
       (.I0(\after_page_state[4]_i_3_n_0 ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg[3] [1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\after_char_state[0]_i_1_n_0 ),
        .O(after_page_state));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \after_page_state[4]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(temp_page[1]),
        .I2(temp_page[0]),
        .I3(\after_update_state_reg_n_0_[0] ),
        .O(\after_page_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \after_page_state[4]_i_3 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[0] ),
        .O(\after_page_state[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\after_page_state[0]_i_1_n_0 ),
        .Q(\after_page_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\after_page_state[1]_i_1_n_0 ),
        .Q(\after_page_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\after_page_state[2]_i_1_n_0 ),
        .Q(\after_page_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_page_state),
        .D(\after_page_state[3]_i_1_n_0 ),
        .Q(\after_page_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_page_state),
        .D(\after_page_state[4]_i_2_n_0 ),
        .Q(\after_page_state_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h54555555)) 
    \after_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\after_char_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(after_state[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \after_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(p_1_in0),
        .O(after_state[1]));
  LUT6 #(
    .INIT(64'h0F000FFFAA88AA8F)) 
    \after_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\after_char_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(p_1_in0),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(after_state[2]));
  LUT6 #(
    .INIT(64'h7777777770000000)) 
    \after_state[3]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\after_char_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(after_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hCCDDC000)) 
    \after_state[4]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(p_1_in0),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(after_state[4]));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(after_state[0]),
        .Q(\after_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(after_state[1]),
        .Q(\after_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(after_state[2]),
        .Q(\after_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(after_state[3]),
        .Q(\after_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(after_state[4]),
        .Q(\after_state_reg_n_0_[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000040)) 
    \after_update_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(p_1_in0),
        .O(\after_update_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04400040)) 
    \after_update_state[3]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(p_1_in0),
        .O(after_update_state));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \after_update_state[3]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(p_1_in0),
        .O(\after_update_state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_update_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_state_reg_n_0_[3] ),
        .Q(\after_update_state_reg_n_0_[0] ),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_update_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_state_reg_n_0_[3] ),
        .Q(\after_update_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_update_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\after_update_state[3]_i_2_n_0 ),
        .Q(\after_update_state_reg_n_0_[3] ),
        .R(1'b0));
  ascii_rom char_lib_comp
       (.D({temp_sdata[5],char_lib_comp_n_5,temp_sdata[1:0]}),
        .DOADO({dout_reg__0[7:6],dout_reg__0[3:2]}),
        .Q(addr),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .temp_page(temp_page),
        .\temp_sdata_reg[5] ({\current_state_reg_n_0_[4] ,\current_state_reg_n_0_[2] ,p_1_in0,\current_state_reg_n_0_[0] }));
  LUT1 #(
    .INIT(2'h1)) 
    \current_screen[0,0][5]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .O(\current_screen[0,0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_screen[1,0][5]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[1,0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_screen[1,10][5]_i_1 
       (.I0(p_1_in0),
        .O(\current_screen[1,10][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,10][0]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,10][2]_0 [0]),
        .O(\current_screen[3,10][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,10][1]_i_1 
       (.I0(\current_screen_reg[3,10][2]_0 [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,10][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,10][2]_i_1 
       (.I0(\current_screen_reg[3,10][2]_0 [2]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,10][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,11][0]_i_1 
       (.I0(\current_screen_reg[3,11][6]_0 [0]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,11][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,11][1]_i_1 
       (.I0(\current_screen_reg[3,11][6]_0 [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,11][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,11][2]_i_1 
       (.I0(\current_screen_reg[3,11][6]_0 [2]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,11][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,11][3]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,11][6]_0 [3]),
        .O(\current_screen[3,11][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,11][4]_i_1 
       (.I0(\current_screen_reg[3,11][6]_0 [4]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,11][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,11][5]_i_1 
       (.I0(\current_screen_reg[3,11][6]_0 [4]),
        .I1(p_1_in0),
        .O(\current_screen[3,11][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,11][6]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,11][6]_0 [5]),
        .O(\current_screen[3,11][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,12][0]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,12][6]_0 [0]),
        .O(\current_screen[3,12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,12][1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,12][6]_0 [1]),
        .O(\current_screen[3,12][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,12][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,12][6]_0 [2]),
        .O(\current_screen[3,12][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,12][3]_i_1 
       (.I0(\current_screen_reg[3,12][6]_0 [3]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,12][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,12][4]_i_1 
       (.I0(\current_screen_reg[3,12][6]_0 [4]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,12][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,12][5]_i_1 
       (.I0(\current_screen_reg[3,12][6]_0 [4]),
        .I1(p_1_in0),
        .O(\current_screen[3,12][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,12][6]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,12][6]_0 [5]),
        .O(\current_screen[3,12][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,13][0]_i_1 
       (.I0(\current_screen_reg[3,13][6]_0 [0]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,13][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,13][1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,13][6]_0 [1]),
        .O(\current_screen[3,13][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,13][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,13][6]_0 [2]),
        .O(\current_screen[3,13][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,13][3]_i_1 
       (.I0(\current_screen_reg[3,13][6]_0 [3]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,13][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,13][4]_i_1 
       (.I0(\current_screen_reg[3,13][6]_0 [4]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,13][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,13][5]_i_1 
       (.I0(\current_screen_reg[3,13][6]_0 [4]),
        .I1(p_1_in0),
        .O(\current_screen[3,13][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,13][6]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,13][6]_0 [5]),
        .O(\current_screen[3,13][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,1][1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,1][1]_0 ),
        .O(\current_screen[3,1][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \current_screen[3,1][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[3] ),
        .O(\current_screen[3,1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,1][2]_i_2 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,1][2]_0 ),
        .O(\current_screen[3,1][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,1][3]_i_1 
       (.I0(\current_screen_reg[3,5][3]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,2][0]_i_1 
       (.I0(\current_screen_reg[3,2][3]_0 [0]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,2][1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,2][3]_0 [1]),
        .O(\current_screen[3,2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,2][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,2][3]_0 [2]),
        .O(\current_screen[3,2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,2][3]_i_1 
       (.I0(\current_screen_reg[3,2][3]_0 [3]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,2][4]_i_1 
       (.I0(\current_screen_reg[3,2][5]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,2][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \current_screen[3,2][5]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(\current_screen[3,2][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,2][5]_i_2 
       (.I0(\current_screen_reg[3,2][5]_0 ),
        .I1(p_1_in0),
        .O(\current_screen[3,2][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,2][6]_i_1 
       (.I0(\current_screen_reg[3,2][6]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,2][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,3][0]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,3][3]_0 [0]),
        .O(\current_screen[3,3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,3][1]_i_1 
       (.I0(\current_screen_reg[3,3][3]_0 [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,3][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,3][3]_0 [2]),
        .O(\current_screen[3,3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,3][3]_i_1 
       (.I0(\current_screen_reg[3,3][3]_0 [3]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,3][4]_i_1 
       (.I0(\current_screen_reg[3,3][5]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,3][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,3][5]_i_1 
       (.I0(\current_screen_reg[3,3][5]_0 ),
        .I1(p_1_in0),
        .O(\current_screen[3,3][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,3][6]_i_1 
       (.I0(\current_screen_reg[3,3][6]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,5][1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,5][1]_0 ),
        .O(\current_screen[3,5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,5][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,5][2]_0 ),
        .O(\current_screen[3,5][2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,5][3]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,5][3]_0 ),
        .O(\current_screen[3,5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,6][0]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,6][3]_0 [0]),
        .O(\current_screen[3,6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,6][1]_i_1 
       (.I0(\current_screen_reg[3,6][3]_0 [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,6][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,6][3]_0 [2]),
        .O(\current_screen[3,6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,6][3]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,6][3]_0 [3]),
        .O(\current_screen[3,6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,6][4]_i_1 
       (.I0(\current_screen_reg[3,6][5]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,6][5]_i_1 
       (.I0(\current_screen_reg[3,6][5]_0 ),
        .I1(p_1_in0),
        .O(\current_screen[3,6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,6][6]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,6][6]_0 ),
        .O(\current_screen[3,6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,7][0]_i_1 
       (.I0(\current_screen_reg[3,7][3]_0 [0]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,7][1]_i_1 
       (.I0(\current_screen_reg[3,7][3]_0 [1]),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,7][2]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,7][3]_0 [2]),
        .O(\current_screen[3,7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,7][3]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,7][3]_0 [3]),
        .O(\current_screen[3,7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,7][4]_i_1 
       (.I0(\current_screen_reg[3,7][5]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_screen[3,7][5]_i_1 
       (.I0(\current_screen_reg[3,7][5]_0 ),
        .I1(p_1_in0),
        .O(\current_screen[3,7][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,7][6]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,7][6]_0 ),
        .O(\current_screen[3,7][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_screen[3,9][1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_screen_reg[3,9][1]_0 ),
        .O(\current_screen[3,9][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[3,9][2]_i_1 
       (.I0(\current_screen_reg[3,9][2]_0 ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_screen[3,9][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[0,0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[0,0][5]_i_1_n_0 ),
        .Q(\current_screen_reg[0,0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[0,4][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(p_1_in0),
        .Q(\current_screen_reg[0,4] ),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[1,0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[1,0][5]_i_1_n_0 ),
        .Q(\current_screen_reg[1,0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[1,0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(p_1_in0),
        .Q(\current_screen_reg[1,0] [6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[1,10][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[1,10][5]_i_1_n_0 ),
        .Q(\current_screen_reg[1,10] ),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_state_reg_n_0_[2] ),
        .Q(\current_screen_reg[3,0] ),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,10][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,10][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,10] [0]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,10][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,10][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,10] [1]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,10][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,10][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,10] [2]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,11][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [0]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,11][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [1]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,11][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [2]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,11][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [3]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,11][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,11][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][5]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,11][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,11][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,11] [6]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,12][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [0]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,12][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [1]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,12][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,12][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [3]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,12][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,12][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][5]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,12][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,12][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,12] [6]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,13][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [0]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,13][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [1]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,13][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,13][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [3]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,13][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,13][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][5]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,13][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,13][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,13] [6]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,1][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,1] [1]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,1][2]_i_2_n_0 ),
        .Q(\current_screen_reg[3,1] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,1][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,1] [3]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,2] [0]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,2] [1]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,2] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,2] [3]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,2] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][5]_i_2_n_0 ),
        .Q(\current_screen_reg[3,2] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,2][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,2] [6]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [0]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [1]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [3]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,3][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,3][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][5]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,3][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,3] [6]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,5][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,5] [1]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,5][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,5] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,5][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,5] [3]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [0]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [1]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [3]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,6][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,6][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][5]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,6][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,6][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,6] [6]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][0]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [0]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [1]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [2]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][3]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [3]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,7][4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][4]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [4]),
        .R(\after_update_state[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_screen_reg[3,7][5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][5]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [5]),
        .S(\current_screen[3,2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,7][6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,7][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3,7] [6]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,9][1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,9][1]_i_1_n_0 ),
        .Q(\current_screen_reg[3,9] [1]),
        .R(\current_screen[3,1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_screen_reg[3,9][2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_update_state),
        .D(\current_screen[3,9][2]_i_1_n_0 ),
        .Q(\current_screen_reg[3,9] [2]),
        .R(\after_update_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h242464FF)) 
    \current_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state[0]_i_2_n_0 ),
        .I4(\current_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCCCC77FF77CC)) 
    \current_state[0]_i_2 
       (.I0(\after_page_state_reg_n_0_[0] ),
        .I1(p_1_in0),
        .I2(\after_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A1FFFF00A10000)) 
    \current_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(\current_state[1]_i_2_n_0 ),
        .O(\current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FA0C0000F00)) 
    \current_state[1]_i_2 
       (.I0(\after_page_state_reg_n_0_[1] ),
        .I1(\after_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(p_1_in0),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFC0C0404FC0C)) 
    \current_state[2]_i_1__0 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state[2]_i_2_n_0 ),
        .O(\current_state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00080008FFAAFAAA)) 
    \current_state[2]_i_2 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\after_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(p_1_in0),
        .I4(\after_page_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[4] ),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD5D0C0CFCFCFCFC)) 
    \current_state[3]_i_1 
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state[3]_i_2_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\after_state_reg_n_0_[3] ),
        .I4(\after_page_state[4]_i_3_n_0 ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hF0EE00F0)) 
    \current_state[3]_i_2 
       (.I0(\after_page_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(p_1_in0),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(\current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0357ABF7FFFF5703)) 
    \current_state[4]_i_2__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state[4]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(p_1_in0),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_state[4]_i_3__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg[3] [1]),
        .O(\current_state[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFDF0000000FDFDF)) 
    \current_state[4]_i_5 
       (.I0(\after_state_reg_n_0_[4] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\after_page_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\current_state[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(p_1_in0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[2]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[3]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[4]_i_2__0_n_0 ),
        .Q(\current_state_reg_n_0_[4] ),
        .R(1'b0));
  delay_2 delay_comp
       (.\FSM_onehot_current_state_reg[2]_0 (delay_comp_n_0),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .delay_en(delay_en),
        .delay_ms({delay_ms[11],delay_ms[3]}));
  LUT5 #(
    .INIT(32'h001FE53C)) 
    g0_b0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b0_n_0));
  LUT5 #(
    .INIT(32'h001FE000)) 
    g0_b0__0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b0__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    oled_dc_OBUF_inst_i_1
       (.I0(example_dc),
        .I1(\FSM_onehot_current_state_reg[3] [0]),
        .O(oled_dc_OBUF));
  spi_ctrl_3 spi_comp
       (.E(current_state),
        .\FSM_onehot_current_state_reg[0]_0 (temp_spi_en_reg_n_0),
        .Q(Q),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state[4]_i_4_0 (delay_comp_n_0),
        .\current_state_reg[0] ({\current_state_reg_n_0_[4] ,\current_state_reg_n_0_[3] ,\current_state_reg_n_0_[2] ,p_1_in0,\current_state_reg_n_0_[0] }),
        .\current_state_reg[0]_0 (\current_state[4]_i_3__0_n_0 ),
        .\current_state_reg[0]_1 (\FSM_onehot_current_state_reg[3] [1]),
        .delay_en(delay_en),
        .example_sdata(example_sdata),
        .sdata(sdata));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \temp_addr[0]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .O(temp_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \temp_addr[1]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[0] ),
        .O(temp_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \temp_addr[2]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[2] ),
        .O(temp_addr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_addr[0]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_addr[1]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_addr[2]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[0]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[1]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[2]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[3]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[4]),
        .Q(addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[5]),
        .Q(addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_addr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(temp_char[6]),
        .Q(addr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFC0AFA00F000F00)) 
    \temp_char[0]_i_10 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,5] [3]),
        .I2(temp_index[0]),
        .I3(\current_screen_reg[3,0] ),
        .I4(temp_page[1]),
        .I5(temp_page[0]),
        .O(\temp_char[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \temp_char[0]_i_11 
       (.I0(\current_screen_reg[0,4] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,7] [0]),
        .O(data7[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[0]_i_12 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,6] [0]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data6[0]));
  LUT6 #(
    .INIT(64'hC00F0FAFC00000A0)) 
    \temp_char[0]_i_13 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,1] [3]),
        .I2(temp_index[0]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[0]_i_14 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,10] [0]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data10[0]));
  LUT6 #(
    .INIT(64'hB83333F3B80000C0)) 
    \temp_char[0]_i_15 
       (.I0(\current_screen_reg[3,1] [3]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[0,4] ),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \temp_char[0]_i_16 
       (.I0(\current_screen_reg[0,4] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,13] [0]),
        .O(data13[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \temp_char[0]_i_17 
       (.I0(\current_screen_reg[3,12] [0]),
        .I1(temp_page[1]),
        .I2(temp_page[0]),
        .I3(\current_screen_reg[3,0] ),
        .O(data12[0]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \temp_char[0]_i_4 
       (.I0(\current_screen_reg[3,3] [0]),
        .I1(\temp_char[0]_i_8_n_0 ),
        .I2(temp_index[0]),
        .I3(data2[0]),
        .I4(temp_index[1]),
        .I5(\temp_char[0]_i_10_n_0 ),
        .O(\temp_char[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_char[0]_i_5 
       (.I0(data7[0]),
        .I1(temp_index[0]),
        .I2(data6[0]),
        .I3(temp_index[1]),
        .I4(\temp_char[0]_i_13_n_0 ),
        .O(\temp_char[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \temp_char[0]_i_6 
       (.I0(\current_screen_reg[3,11] [0]),
        .I1(\temp_char[0]_i_8_n_0 ),
        .I2(temp_index[0]),
        .I3(data10[0]),
        .I4(temp_index[1]),
        .I5(\temp_char[0]_i_15_n_0 ),
        .O(\temp_char[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[0]_i_7 
       (.I0(\temp_char[3]_i_7_n_0 ),
        .I1(data0[6]),
        .I2(temp_index[1]),
        .I3(data13[0]),
        .I4(temp_index[0]),
        .I5(data12[0]),
        .O(\temp_char[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_char[0]_i_8 
       (.I0(temp_page[0]),
        .I1(temp_page[1]),
        .O(\temp_char[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[0]_i_9 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,2] [0]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data2[0]));
  LUT5 #(
    .INIT(32'h8830C0C0)) 
    \temp_char[1]_i_11 
       (.I0(\current_screen_reg[3,9] [1]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[3,0] ),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .O(\temp_char[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[1]_i_12 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,2] [1]),
        .O(data2[1]));
  LUT4 #(
    .INIT(16'hE020)) 
    \temp_char[1]_i_13 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,3] [1]),
        .O(data3[1]));
  LUT4 #(
    .INIT(16'hCAC0)) 
    \temp_char[1]_i_14 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .O(data0[1]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[1]_i_15 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,1] [1]),
        .O(\temp_char[1]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hC202)) 
    \temp_char[1]_i_16 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,10] [1]),
        .O(data10[1]));
  LUT4 #(
    .INIT(16'hBC80)) 
    \temp_char[1]_i_17 
       (.I0(\current_screen_reg[3,11] [1]),
        .I1(temp_page[1]),
        .I2(temp_page[0]),
        .I3(\current_screen_reg[3,0] ),
        .O(data11[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[1]_i_2 
       (.I0(\temp_char[1]_i_4_n_0 ),
        .I1(\temp_char[1]_i_5_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[1]_i_6_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char_reg[1]_i_7_n_0 ),
        .O(\temp_char[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[1]_i_3 
       (.I0(\temp_char[1]_i_8_n_0 ),
        .I1(\temp_char[1]_i_9_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[1]_i_10_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char[1]_i_11_n_0 ),
        .O(\temp_char[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBC0303088C03030)) 
    \temp_char[1]_i_4 
       (.I0(\current_screen_reg[3,7] [1]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[3,0] ),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .I5(\current_screen_reg[3,6] [1]),
        .O(\temp_char[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8CC33FCB8000030)) 
    \temp_char[1]_i_5 
       (.I0(\current_screen_reg[3,5] [1]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[0,4] ),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFC830080)) 
    \temp_char[1]_i_8 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(temp_index[0]),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,0] ),
        .O(\temp_char[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB83333CCB8000000)) 
    \temp_char[1]_i_9 
       (.I0(\current_screen_reg[3,13] [1]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[3,12] [1]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC000000000A0A0)) 
    \temp_char[2]_i_10 
       (.I0(\current_screen_reg[3,0] ),
        .I1(\current_screen_reg[3,11] [2]),
        .I2(temp_index[0]),
        .I3(\current_screen_reg[3,10] [2]),
        .I4(temp_page[1]),
        .I5(temp_page[0]),
        .O(\temp_char[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \temp_char[2]_i_12 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,6] [2]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data6[2]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \temp_char[2]_i_13 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,7] [2]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data7[2]));
  LUT4 #(
    .INIT(16'hC808)) 
    \temp_char[2]_i_14 
       (.I0(\current_screen_reg[0,4] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,2] [2]),
        .O(data2[2]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[2]_i_15 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,3] [2]),
        .O(data3[2]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[2]_i_16 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,12] [2]),
        .O(data12[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \temp_char[2]_i_17 
       (.I0(\current_screen_reg[3,13] [2]),
        .I1(temp_page[1]),
        .I2(temp_page[0]),
        .I3(\current_screen_reg[3,0] ),
        .O(data13[2]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \temp_char[2]_i_18 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[1,0] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data8));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \temp_char[2]_i_19 
       (.I0(\current_screen_reg[0,4] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,9] [2]),
        .O(data9[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[2]_i_2 
       (.I0(\temp_char_reg[2]_i_4_n_0 ),
        .I1(\temp_char[2]_i_5_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[2]_i_6_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char[2]_i_7_n_0 ),
        .O(\temp_char[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[2]_i_3 
       (.I0(\temp_char[2]_i_8_n_0 ),
        .I1(\temp_char_reg[2]_i_9_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char[2]_i_10_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char_reg[2]_i_11_n_0 ),
        .O(\temp_char[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8CFF8000)) 
    \temp_char[2]_i_5 
       (.I0(\current_screen_reg[3,5] [2]),
        .I1(temp_index[0]),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,0] ),
        .O(\temp_char[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCF0FA000C000A000)) 
    \temp_char[2]_i_7 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,1] [2]),
        .I2(temp_index[0]),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hF0E4F050)) 
    \temp_char[2]_i_8 
       (.I0(temp_index[0]),
        .I1(\current_screen_reg[1,0] [6]),
        .I2(\current_screen_reg[3,0] ),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .O(\temp_char[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[3]_i_1 
       (.I0(\temp_char[3]_i_2_n_0 ),
        .I1(\temp_char[3]_i_3_n_0 ),
        .I2(temp_index[3]),
        .I3(\temp_char[3]_i_4_n_0 ),
        .I4(temp_index[2]),
        .I5(\temp_char[3]_i_5_n_0 ),
        .O(\current_screen[0,0] [3]));
  LUT6 #(
    .INIT(64'h880033F0880000F0)) 
    \temp_char[3]_i_10 
       (.I0(\current_screen_reg[3,11] [3]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[3,0] ),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .I5(\current_screen_reg[0,4] ),
        .O(\temp_char[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[3]_i_11 
       (.I0(\current_screen_reg[3,0] ),
        .I1(\current_screen_reg[1,0] [6]),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,5] [3]),
        .O(data9[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \temp_char[3]_i_12 
       (.I0(temp_page[1]),
        .I1(\current_screen_reg[1,0] [6]),
        .O(\temp_char[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    \temp_char[3]_i_13 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[0,4] ),
        .O(\temp_char[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hCFFAC00A)) 
    \temp_char[3]_i_14 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,7] [3]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data7[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \temp_char[3]_i_15 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,6] [3]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data6[3]));
  LUT6 #(
    .INIT(64'hB830FF00B8300000)) 
    \temp_char[3]_i_16 
       (.I0(\current_screen_reg[3,5] [3]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[0,4] ),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    \temp_char[3]_i_17 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,3] [3]),
        .O(data3[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \temp_char[3]_i_18 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,2] [3]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data2[3]));
  LUT6 #(
    .INIT(64'hA8A008A0A8000800)) 
    \temp_char[3]_i_19 
       (.I0(temp_index[0]),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,1] [3]),
        .I5(\current_screen_reg[0,4] ),
        .O(\temp_char[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \temp_char[3]_i_2 
       (.I0(\temp_char[3]_i_6_n_0 ),
        .I1(\temp_char[3]_i_7_n_0 ),
        .I2(temp_index[1]),
        .I3(data13[3]),
        .I4(temp_index[0]),
        .I5(data12[3]),
        .O(\temp_char[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \temp_char[3]_i_3 
       (.I0(\temp_char[3]_i_10_n_0 ),
        .I1(temp_index[1]),
        .I2(data9[3]),
        .I3(temp_index[0]),
        .I4(\temp_char[3]_i_12_n_0 ),
        .I5(\temp_char[3]_i_13_n_0 ),
        .O(\temp_char[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_char[3]_i_4 
       (.I0(data7[3]),
        .I1(temp_index[0]),
        .I2(data6[3]),
        .I3(temp_index[1]),
        .I4(\temp_char[3]_i_16_n_0 ),
        .O(\temp_char[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \temp_char[3]_i_5 
       (.I0(data3[3]),
        .I1(temp_index[0]),
        .I2(data2[3]),
        .I3(temp_index[1]),
        .I4(\temp_char[3]_i_19_n_0 ),
        .O(\temp_char[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_char[3]_i_6 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[1]),
        .I2(temp_page[0]),
        .O(\temp_char[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \temp_char[3]_i_7 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[1]),
        .I2(temp_page[0]),
        .O(\temp_char[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[3]_i_8 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,13] [3]),
        .O(data13[3]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \temp_char[3]_i_9 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,12] [3]),
        .O(data12[3]));
  LUT6 #(
    .INIT(64'hDD88EE5088884450)) 
    \temp_char[4]_i_11 
       (.I0(temp_index[0]),
        .I1(\current_screen_reg[3,0] ),
        .I2(\current_screen_reg[0,4] ),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .I5(\current_screen_reg[1,0] [6]),
        .O(\temp_char[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \temp_char[4]_i_12 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,6] [4]),
        .O(data6[4]));
  LUT4 #(
    .INIT(16'hC808)) 
    \temp_char[4]_i_13 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,7] [4]),
        .O(data7[4]));
  LUT4 #(
    .INIT(16'hC808)) 
    \temp_char[4]_i_14 
       (.I0(\current_screen_reg[3,0] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,2] [4]),
        .O(data2[4]));
  LUT4 #(
    .INIT(16'hC808)) 
    \temp_char[4]_i_15 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .I3(\current_screen_reg[3,3] [4]),
        .O(data3[4]));
  LUT5 #(
    .INIT(32'hC0FAC00A)) 
    \temp_char[4]_i_16 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[1,0] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data10[4]));
  LUT5 #(
    .INIT(32'hCAF0CA00)) 
    \temp_char[4]_i_17 
       (.I0(\current_screen_reg[0,4] ),
        .I1(\current_screen_reg[3,11] [4]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data11[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[4]_i_2 
       (.I0(\temp_char_reg[4]_i_4_n_0 ),
        .I1(\temp_char[4]_i_5_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[4]_i_6_n_0 ),
        .I4(temp_index[1]),
        .I5(data0[4]),
        .O(\temp_char[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[4]_i_3 
       (.I0(\temp_char[4]_i_8_n_0 ),
        .I1(\temp_char[4]_i_9_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[4]_i_10_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char[4]_i_11_n_0 ),
        .O(\temp_char[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF0F40004)) 
    \temp_char[4]_i_5 
       (.I0(temp_index[0]),
        .I1(\current_screen_reg[0,4] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,0] ),
        .O(\temp_char[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_char[4]_i_7 
       (.I0(temp_page[0]),
        .I1(\current_screen_reg[3,0] ),
        .O(data0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF8C0080)) 
    \temp_char[4]_i_8 
       (.I0(\current_screen_reg[0,4] ),
        .I1(temp_index[0]),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .I4(\current_screen_reg[3,0] ),
        .O(\temp_char[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBF0000088F00000)) 
    \temp_char[4]_i_9 
       (.I0(\current_screen_reg[3,13] [4]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[3,0] ),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .I5(\current_screen_reg[3,12] [4]),
        .O(\temp_char[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFFF0F0FF00)) 
    \temp_char[5]_i_10 
       (.I0(\current_screen_reg[3,11] [5]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[1,10] ),
        .I3(\current_screen_reg[0,0] ),
        .I4(temp_page[0]),
        .I5(temp_page[1]),
        .O(\temp_char[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFF0B8)) 
    \temp_char[5]_i_11 
       (.I0(\current_screen_reg[0,0] ),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[1,0] [5]),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .O(\temp_char[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0AAFFCC)) 
    \temp_char[5]_i_12 
       (.I0(\current_screen_reg[1,0] [5]),
        .I1(\current_screen_reg[0,0] ),
        .I2(\current_screen_reg[3,2] [5]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .O(data2[5]));
  LUT5 #(
    .INIT(32'hF0AAFFCC)) 
    \temp_char[5]_i_13 
       (.I0(\current_screen_reg[1,0] [5]),
        .I1(\current_screen_reg[0,0] ),
        .I2(\current_screen_reg[3,3] [5]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .O(data3[5]));
  LUT5 #(
    .INIT(32'hF0AAFFCC)) 
    \temp_char[5]_i_14 
       (.I0(\current_screen_reg[1,10] ),
        .I1(\current_screen_reg[0,0] ),
        .I2(\current_screen_reg[3,12] [5]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .O(data12[5]));
  LUT5 #(
    .INIT(32'hF0AAFFCC)) 
    \temp_char[5]_i_15 
       (.I0(\current_screen_reg[1,10] ),
        .I1(\current_screen_reg[0,0] ),
        .I2(\current_screen_reg[3,13] [5]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .O(data13[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[5]_i_2 
       (.I0(\temp_char[5]_i_4_n_0 ),
        .I1(\temp_char[5]_i_5_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[5]_i_6_n_0 ),
        .I4(temp_index[1]),
        .I5(data0[5]),
        .O(\temp_char[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[5]_i_3 
       (.I0(data10[5]),
        .I1(\temp_char_reg[5]_i_9_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char[5]_i_10_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char[5]_i_11_n_0 ),
        .O(\temp_char[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB88F0F0FFFFF0F0)) 
    \temp_char[5]_i_4 
       (.I0(\current_screen_reg[3,7] [5]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[1,0] [5]),
        .I3(\current_screen_reg[3,6] [5]),
        .I4(temp_page[1]),
        .I5(temp_page[0]),
        .O(\temp_char[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFB8F0)) 
    \temp_char[5]_i_5 
       (.I0(\current_screen_reg[0,0] ),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[1,0] [5]),
        .I3(temp_page[0]),
        .I4(temp_page[1]),
        .O(\temp_char[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    \temp_char[5]_i_7 
       (.I0(\current_screen_reg[1,0] [5]),
        .I1(\current_screen_reg[0,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .O(data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    \temp_char[5]_i_8 
       (.I0(\current_screen_reg[1,10] ),
        .I1(\current_screen_reg[0,0] ),
        .I2(temp_page[0]),
        .I3(temp_page[1]),
        .O(data10[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0CFE0C04)) 
    \temp_char[6]_i_10 
       (.I0(temp_index[0]),
        .I1(\current_screen_reg[1,0] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(\temp_char[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \temp_char[6]_i_11 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,6] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data6[6]));
  LUT5 #(
    .INIT(32'hCAFACA0A)) 
    \temp_char[6]_i_12 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,7] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data7[6]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[6]_i_13 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,2] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data2[6]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[6]_i_14 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,3] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data3[6]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[6]_i_15 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,12] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data12[6]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \temp_char[6]_i_16 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,13] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(data13[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[6]_i_2 
       (.I0(\temp_char_reg[6]_i_4_n_0 ),
        .I1(\temp_char[6]_i_5_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char_reg[6]_i_6_n_0 ),
        .I4(temp_index[1]),
        .I5(data0[6]),
        .O(\temp_char[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \temp_char[6]_i_3 
       (.I0(data0[6]),
        .I1(\temp_char_reg[6]_i_8_n_0 ),
        .I2(temp_index[2]),
        .I3(\temp_char[6]_i_9_n_0 ),
        .I4(temp_index[1]),
        .I5(\temp_char[6]_i_10_n_0 ),
        .O(\temp_char[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0EFC040C)) 
    \temp_char[6]_i_5 
       (.I0(temp_index[0]),
        .I1(\current_screen_reg[1,0] [6]),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .I4(\current_screen_reg[3,0] ),
        .O(\temp_char[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCACC)) 
    \temp_char[6]_i_7 
       (.I0(\current_screen_reg[1,0] [6]),
        .I1(\current_screen_reg[3,0] ),
        .I2(temp_page[1]),
        .I3(temp_page[0]),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'h88F0FFFF88F00000)) 
    \temp_char[6]_i_9 
       (.I0(\current_screen_reg[3,11] [6]),
        .I1(temp_index[0]),
        .I2(\current_screen_reg[1,0] [6]),
        .I3(temp_page[1]),
        .I4(temp_page[0]),
        .I5(\current_screen_reg[3,0] ),
        .O(\temp_char[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [0]),
        .Q(temp_char[0]),
        .R(1'b0));
  MUXF8 \temp_char_reg[0]_i_1 
       (.I0(\temp_char_reg[0]_i_2_n_0 ),
        .I1(\temp_char_reg[0]_i_3_n_0 ),
        .O(\current_screen[0,0] [0]),
        .S(temp_index[3]));
  MUXF7 \temp_char_reg[0]_i_2 
       (.I0(\temp_char[0]_i_4_n_0 ),
        .I1(\temp_char[0]_i_5_n_0 ),
        .O(\temp_char_reg[0]_i_2_n_0 ),
        .S(temp_index[2]));
  MUXF7 \temp_char_reg[0]_i_3 
       (.I0(\temp_char[0]_i_6_n_0 ),
        .I1(\temp_char[0]_i_7_n_0 ),
        .O(\temp_char_reg[0]_i_3_n_0 ),
        .S(temp_index[2]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [1]),
        .Q(temp_char[1]),
        .R(1'b0));
  MUXF7 \temp_char_reg[1]_i_1 
       (.I0(\temp_char[1]_i_2_n_0 ),
        .I1(\temp_char[1]_i_3_n_0 ),
        .O(\current_screen[0,0] [1]),
        .S(temp_index[3]));
  MUXF7 \temp_char_reg[1]_i_10 
       (.I0(data10[1]),
        .I1(data11[1]),
        .O(\temp_char_reg[1]_i_10_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[1]_i_6 
       (.I0(data2[1]),
        .I1(data3[1]),
        .O(\temp_char_reg[1]_i_6_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[1]_i_7 
       (.I0(data0[1]),
        .I1(\temp_char[1]_i_15_n_0 ),
        .O(\temp_char_reg[1]_i_7_n_0 ),
        .S(temp_index[0]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [2]),
        .Q(temp_char[2]),
        .R(1'b0));
  MUXF7 \temp_char_reg[2]_i_1 
       (.I0(\temp_char[2]_i_2_n_0 ),
        .I1(\temp_char[2]_i_3_n_0 ),
        .O(\current_screen[0,0] [2]),
        .S(temp_index[3]));
  MUXF7 \temp_char_reg[2]_i_11 
       (.I0(data8),
        .I1(data9[2]),
        .O(\temp_char_reg[2]_i_11_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[2]_i_4 
       (.I0(data6[2]),
        .I1(data7[2]),
        .O(\temp_char_reg[2]_i_4_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[2]_i_6 
       (.I0(data2[2]),
        .I1(data3[2]),
        .O(\temp_char_reg[2]_i_6_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[2]_i_9 
       (.I0(data12[2]),
        .I1(data13[2]),
        .O(\temp_char_reg[2]_i_9_n_0 ),
        .S(temp_index[0]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [3]),
        .Q(temp_char[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [4]),
        .Q(temp_char[4]),
        .R(1'b0));
  MUXF7 \temp_char_reg[4]_i_1 
       (.I0(\temp_char[4]_i_2_n_0 ),
        .I1(\temp_char[4]_i_3_n_0 ),
        .O(\current_screen[0,0] [4]),
        .S(temp_index[3]));
  MUXF7 \temp_char_reg[4]_i_10 
       (.I0(data10[4]),
        .I1(data11[4]),
        .O(\temp_char_reg[4]_i_10_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[4]_i_4 
       (.I0(data6[4]),
        .I1(data7[4]),
        .O(\temp_char_reg[4]_i_4_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[4]_i_6 
       (.I0(data2[4]),
        .I1(data3[4]),
        .O(\temp_char_reg[4]_i_6_n_0 ),
        .S(temp_index[0]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [5]),
        .Q(temp_char[5]),
        .R(1'b0));
  MUXF7 \temp_char_reg[5]_i_1 
       (.I0(\temp_char[5]_i_2_n_0 ),
        .I1(\temp_char[5]_i_3_n_0 ),
        .O(\current_screen[0,0] [5]),
        .S(temp_index[3]));
  MUXF7 \temp_char_reg[5]_i_6 
       (.I0(data2[5]),
        .I1(data3[5]),
        .O(\temp_char_reg[5]_i_6_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[5]_i_9 
       (.I0(data12[5]),
        .I1(data13[5]),
        .O(\temp_char_reg[5]_i_9_n_0 ),
        .S(temp_index[0]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_char_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\current_screen[0,0] [6]),
        .Q(temp_char[6]),
        .R(1'b0));
  MUXF7 \temp_char_reg[6]_i_1 
       (.I0(\temp_char[6]_i_2_n_0 ),
        .I1(\temp_char[6]_i_3_n_0 ),
        .O(\current_screen[0,0] [6]),
        .S(temp_index[3]));
  MUXF7 \temp_char_reg[6]_i_4 
       (.I0(data6[6]),
        .I1(data7[6]),
        .O(\temp_char_reg[6]_i_4_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[6]_i_6 
       (.I0(data2[6]),
        .I1(data3[6]),
        .O(\temp_char_reg[6]_i_6_n_0 ),
        .S(temp_index[0]));
  MUXF7 \temp_char_reg[6]_i_8 
       (.I0(data12[6]),
        .I1(data13[6]),
        .O(\temp_char_reg[6]_i_8_n_0 ),
        .S(temp_index[0]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00001000)) 
    temp_dc_i_1
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(p_1_in0),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(example_dc),
        .O(temp_dc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_dc_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_dc_i_1_n_0),
        .Q(example_dc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF00200000)) 
    temp_delay_en_i_1
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(p_1_in0),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(delay_en),
        .O(temp_delay_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_delay_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_delay_en_i_1_n_0),
        .Q(delay_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    \temp_delay_ms[11]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(delay_ms[11]),
        .O(\temp_delay_ms[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \temp_delay_ms[3]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(delay_ms[3]),
        .O(\temp_delay_ms[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_delay_ms[11]_i_1_n_0 ),
        .Q(delay_ms[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_delay_ms[3]_i_1_n_0 ),
        .Q(delay_ms[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \temp_index[0]_i_1 
       (.I0(temp_index[0]),
        .O(\temp_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \temp_index[1]_i_1 
       (.I0(temp_index[1]),
        .I1(temp_index[0]),
        .O(\temp_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \temp_index[2]_i_1 
       (.I0(temp_index[1]),
        .I1(temp_index[0]),
        .I2(temp_index[2]),
        .O(\temp_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \temp_index[3]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(p_1_in0),
        .I4(\current_state_reg_n_0_[4] ),
        .O(after_char_state));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \temp_index[3]_i_2 
       (.I0(temp_index[1]),
        .I1(temp_index[0]),
        .I2(temp_index[2]),
        .I3(temp_index[3]),
        .O(\temp_index[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\temp_index[0]_i_1_n_0 ),
        .Q(temp_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\temp_index[1]_i_1_n_0 ),
        .Q(temp_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\temp_index[2]_i_1_n_0 ),
        .Q(temp_index[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(after_char_state),
        .D(\temp_index[3]_i_2_n_0 ),
        .Q(temp_index[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_page[0]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(temp_page[0]),
        .O(\temp_page[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \temp_page[1]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(temp_page[0]),
        .I2(temp_page[1]),
        .O(\temp_page[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_page_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(after_page_state),
        .D(\temp_page[0]_i_1_n_0 ),
        .Q(temp_page[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_page_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(after_page_state),
        .D(\temp_page[1]_i_1_n_0 ),
        .Q(temp_page[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01044104)) 
    \temp_sdata[5]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(p_1_in0),
        .I4(\current_state_reg_n_0_[0] ),
        .O(\temp_sdata[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \temp_sdata[7]_i_1 
       (.I0(p_1_in0),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .O(\temp_sdata[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(temp_sdata[0]),
        .Q(sdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(temp_sdata[1]),
        .Q(sdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(dout_reg__0[2]),
        .Q(sdata[2]),
        .R(\temp_sdata[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(dout_reg__0[3]),
        .Q(sdata[3]),
        .R(\temp_sdata[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(char_lib_comp_n_5),
        .Q(sdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(temp_sdata[5]),
        .Q(sdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(dout_reg__0[6]),
        .Q(sdata[6]),
        .R(\temp_sdata[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_sdata[5]_i_1_n_0 ),
        .D(dout_reg__0[7]),
        .Q(sdata[7]),
        .R(\temp_sdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFF01000000)) 
    temp_spi_en_i_1
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(p_1_in0),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(temp_spi_en_reg_n_0),
        .O(temp_spi_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_spi_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_spi_en_i_1_n_0),
        .Q(temp_spi_en_reg_n_0),
        .R(1'b0));
endmodule

module oled_init
   (oled_res_OBUF,
    oled_vbat_OBUF,
    oled_vdd_OBUF,
    E,
    oled_sclk_OBUF,
    oled_sdin_OBUF,
    SR,
    clk_IBUF_BUFG,
    Q,
    \FSM_onehot_current_state_reg[0] ,
    oled_sclk,
    example_sdata);
  output oled_res_OBUF;
  output oled_vbat_OBUF;
  output oled_vdd_OBUF;
  output [0:0]E;
  output oled_sclk_OBUF;
  output oled_sdin_OBUF;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input [2:0]Q;
  input \FSM_onehot_current_state_reg[0] ;
  input [0:0]oled_sclk;
  input example_sdata;

  wire [0:0]E;
  wire \FSM_onehot_current_state_reg[0] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [4:0]after_state;
  wire clk_IBUF_BUFG;
  wire current_state;
  wire \current_state[0]_i_1__0_n_0 ;
  wire \current_state[1]_i_1__0_n_0 ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[3]_i_1__0_n_0 ;
  wire \current_state[4]_i_2_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire \current_state_reg_n_0_[4] ;
  wire delay_en;
  wire example_sdata;
  wire fin;
  wire g0_b0__1_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__3_n_0;
  wire g0_b0__4_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire oled_res_OBUF;
  wire [0:0]oled_sclk;
  wire oled_sclk_OBUF;
  wire oled_sdin_OBUF;
  wire oled_vbat_OBUF;
  wire oled_vdd_OBUF;
  wire [7:0]sdata;
  wire temp_delay_en_i_1__0_n_0;
  wire temp_fin_i_1_n_0;
  wire temp_fin_i_2_n_0;
  wire temp_res_i_1_n_0;
  wire temp_spi_en_i_1__0_n_0;
  wire temp_spi_en_i_2_n_0;
  wire temp_spi_en_reg_n_0;
  wire temp_spi_fin;
  wire temp_vbat_i_1_n_0;
  wire temp_vdd_i_1_n_0;

  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(fin),
        .I4(\FSM_onehot_current_state_reg[0] ),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \after_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(g0_b0__1_n_0),
        .Q(after_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(g0_b1_n_0),
        .Q(after_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \after_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(g0_b2_n_0),
        .Q(after_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(g0_b3_n_0),
        .Q(after_state[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(g0_b4_n_0),
        .Q(after_state[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA1A1A1A0A1A11111)) 
    \current_state[0]_i_1__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(after_state[0]),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0067106400671060)) 
    \current_state[1]_i_1__0 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(after_state[1]),
        .O(\current_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8899991199988800)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(after_state[2]),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000110000100000)) 
    \current_state[3]_i_1__0 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[4] ),
        .I2(after_state[3]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001010000000100)) 
    \current_state[4]_i_2 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(after_state[4]),
        .O(\current_state[4]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[0]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[1]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[1] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[2]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[2] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[3]_i_1__0_n_0 ),
        .Q(\current_state_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(current_state),
        .D(\current_state[4]_i_2_n_0 ),
        .Q(\current_state_reg_n_0_[4] ),
        .R(SR));
  delay delay_comp
       (.E(current_state),
        .Q({\current_state_reg_n_0_[4] ,\current_state_reg_n_0_[3] ,\current_state_reg_n_0_[2] ,\current_state_reg_n_0_[1] ,\current_state_reg_n_0_[0] }),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0] (Q[1]),
        .delay_en(delay_en),
        .i__carry_i_4_0(after_state),
        .temp_spi_fin(temp_spi_fin));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00545500)) 
    g0_b0__1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b0__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h030CD000)) 
    g0_b0__2
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b0__2_n_0));
  LUT6 #(
    .INIT(64'h0000000003FEFD80)) 
    g0_b0__3
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(SR),
        .O(g0_b0__3_n_0));
  LUT6 #(
    .INIT(64'h0000000003FCF100)) 
    g0_b0__4
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(SR),
        .O(g0_b0__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h03666400)) 
    g0_b1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h01480100)) 
    g0_b1__0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00787800)) 
    g0_b2
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h03083100)) 
    g0_b2__0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h03807D80)) 
    g0_b3
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h01485100)) 
    g0_b3__0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b3__0_n_0));
  LUT5 #(
    .INIT(32'h03FE8000)) 
    g0_b4
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h0040E000)) 
    g0_b4__0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h03108100)) 
    g0_b5
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h0060C000)) 
    g0_b6
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h0374D100)) 
    g0_b7
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[4] ),
        .O(g0_b7_n_0));
  spi_ctrl spi_comp
       (.\FSM_onehot_current_state_reg[0]_0 (temp_spi_en_reg_n_0),
        .Q(Q[1]),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .example_sdata(example_sdata),
        .oled_sclk(oled_sclk),
        .oled_sclk_OBUF(oled_sclk_OBUF),
        .oled_sdin_OBUF(oled_sdin_OBUF),
        .\shift_register_reg[7]_0 (sdata),
        .temp_spi_fin(temp_spi_fin));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000010)) 
    temp_delay_en_i_1__0
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(temp_spi_en_i_2_n_0),
        .I4(SR),
        .I5(delay_en),
        .O(temp_delay_en_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_delay_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_delay_en_i_1__0_n_0),
        .Q(delay_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    temp_fin_i_1
       (.I0(Q[1]),
        .I1(temp_fin_i_2_n_0),
        .I2(fin),
        .O(temp_fin_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    temp_fin_i_2
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[4] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(SR),
        .O(temp_fin_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_fin_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_fin_i_1_n_0),
        .Q(fin),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    temp_res_i_1
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[4] ),
        .I4(\current_state_reg_n_0_[0] ),
        .O(temp_res_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    temp_res_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_res_i_1_n_0),
        .Q(oled_res_OBUF),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b0__2_n_0),
        .Q(sdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b1__0_n_0),
        .Q(sdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b2__0_n_0),
        .Q(sdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b3__0_n_0),
        .Q(sdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b4__0_n_0),
        .Q(sdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b5_n_0),
        .Q(sdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b6_n_0),
        .Q(sdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_sdata_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(g0_b7_n_0),
        .Q(sdata[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    temp_spi_en_i_1__0
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(temp_spi_en_i_2_n_0),
        .I4(SR),
        .I5(temp_spi_en_reg_n_0),
        .O(temp_spi_en_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    temp_spi_en_i_2
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[4] ),
        .O(temp_spi_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_spi_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_spi_en_i_1__0_n_0),
        .Q(temp_spi_en_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    temp_vbat_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg_n_0_[4] ),
        .I5(SR),
        .O(temp_vbat_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    temp_vbat_reg
       (.C(clk_IBUF_BUFG),
        .CE(temp_vbat_i_1_n_0),
        .D(1'b0),
        .Q(oled_vbat_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    temp_vdd_i_1
       (.I0(\current_state_reg_n_0_[4] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(SR),
        .O(temp_vdd_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    temp_vdd_reg
       (.C(clk_IBUF_BUFG),
        .CE(temp_vdd_i_1_n_0),
        .D(1'b0),
        .Q(oled_vdd_OBUF),
        .R(1'b0));
endmodule

module spi_ctrl
   (oled_sclk_OBUF,
    oled_sdin_OBUF,
    temp_spi_fin,
    clk_IBUF_BUFG,
    Q,
    oled_sclk,
    example_sdata,
    \shift_register_reg[7]_0 ,
    \FSM_onehot_current_state_reg[0]_0 ,
    SR);
  output oled_sclk_OBUF;
  output oled_sdin_OBUF;
  output temp_spi_fin;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input [0:0]oled_sclk;
  input example_sdata;
  input [7:0]\shift_register_reg[7]_0 ;
  input \FSM_onehot_current_state_reg[0]_0 ;
  input [0:0]SR;

  wire \FSM_onehot_current_state[0]_i_1__2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1__1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire counter;
  wire [4:4]counter_reg;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire example_sdata;
  wire falling;
  wire falling_i_1_n_0;
  wire [7:1]in8;
  wire [0:0]oled_sclk;
  wire oled_sclk_OBUF;
  wire oled_sdin_OBUF;
  wire p_0_in__0;
  wire [4:0]plusOp__1;
  wire [3:0]plusOp__2;
  wire sdout;
  wire [3:0]shift_counter_reg;
  wire shift_register;
  wire \shift_register[0]_i_1_n_0 ;
  wire \shift_register[1]_i_1__0_n_0 ;
  wire \shift_register[2]_i_1__0_n_0 ;
  wire \shift_register[3]_i_1__0_n_0 ;
  wire \shift_register[4]_i_1__0_n_0 ;
  wire \shift_register[5]_i_1__0_n_0 ;
  wire \shift_register[6]_i_1__0_n_0 ;
  wire \shift_register[7]_i_2__0_n_0 ;
  wire [7:0]\shift_register_reg[7]_0 ;
  wire temp_sdata;
  wire temp_spi_fin;

  LUT5 #(
    .INIT(32'h44575457)) 
    \FSM_onehot_current_state[0]_i_1__2 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(temp_spi_fin),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hF0E0FBE0)) 
    \FSM_onehot_current_state[1]_i_1__1 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(temp_spi_fin),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFF08EC08)) 
    \FSM_onehot_current_state[2]_i_1__1 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(temp_spi_fin),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(shift_counter_reg[1]),
        .I1(shift_counter_reg[3]),
        .I2(shift_counter_reg[2]),
        .I3(shift_counter_reg[0]),
        .I4(falling),
        .O(\FSM_onehot_current_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "send:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1__2_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "send:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1__1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "send:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1__1_n_0 ),
        .Q(temp_spi_fin),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(plusOp__1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2__0 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(counter_reg),
        .O(plusOp__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__1[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__1[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__1[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__1[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp__1[4]),
        .Q(counter_reg),
        .R(counter));
  LUT4 #(
    .INIT(16'hF430)) 
    falling_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(falling),
        .I3(counter_reg),
        .O(falling_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    falling_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(falling_i_1_n_0),
        .Q(falling),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h47)) 
    oled_sclk_OBUF_inst_i_1
       (.I0(counter_reg),
        .I1(Q),
        .I2(oled_sclk),
        .O(oled_sclk_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    oled_sdin_OBUF_inst_i_1
       (.I0(sdout),
        .I1(Q),
        .I2(example_sdata),
        .O(oled_sdin_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \shift_counter[0]_i_1__0 
       (.I0(shift_counter_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shift_counter[1]_i_1__0 
       (.I0(shift_counter_reg[0]),
        .I1(shift_counter_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \shift_counter[2]_i_1__0 
       (.I0(shift_counter_reg[0]),
        .I1(shift_counter_reg[1]),
        .I2(shift_counter_reg[2]),
        .O(plusOp__2[2]));
  LUT3 #(
    .INIT(8'h20)) 
    \shift_counter[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(falling),
        .I2(counter_reg),
        .O(temp_sdata));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \shift_counter[3]_i_2__0 
       (.I0(shift_counter_reg[1]),
        .I1(shift_counter_reg[0]),
        .I2(shift_counter_reg[2]),
        .I3(shift_counter_reg[3]),
        .O(plusOp__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__2[0]),
        .Q(shift_counter_reg[0]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__2[1]),
        .Q(shift_counter_reg[1]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__2[2]),
        .Q(shift_counter_reg[2]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__2[3]),
        .Q(shift_counter_reg[3]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hCACAC0CACACACACA)) 
    \shift_register[0]_i_1 
       (.I0(in8[1]),
        .I1(\shift_register_reg[7]_0 [0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(counter_reg),
        .I4(falling),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\shift_register[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[1]_i_1__0 
       (.I0(\shift_register_reg[7]_0 [1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[1]),
        .O(\shift_register[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[2]_i_1__0 
       (.I0(\shift_register_reg[7]_0 [2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[2]),
        .O(\shift_register[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[3]_i_1__0 
       (.I0(\shift_register_reg[7]_0 [3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[3]),
        .O(\shift_register[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[4]_i_1__0 
       (.I0(\shift_register_reg[7]_0 [4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[4]),
        .O(\shift_register[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[5]_i_1__0 
       (.I0(\shift_register_reg[7]_0 [5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[5]),
        .O(\shift_register[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[6]_i_1__0 
       (.I0(\shift_register_reg[7]_0 [6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[6]),
        .O(\shift_register[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \shift_register[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(counter_reg),
        .I2(falling),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(shift_register));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[7]_i_2__0 
       (.I0(\shift_register_reg[7]_0 [7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[7]),
        .O(\shift_register[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_register[0]_i_1_n_0 ),
        .Q(in8[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[1]_i_1__0_n_0 ),
        .Q(in8[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[2]_i_1__0_n_0 ),
        .Q(in8[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[3]_i_1__0_n_0 ),
        .Q(in8[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[4]_i_1__0_n_0 ),
        .Q(in8[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[5]_i_1__0_n_0 ),
        .Q(in8[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[6]_i_1__0_n_0 ),
        .Q(in8[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[7]_i_2__0_n_0 ),
        .Q(p_0_in__0),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    temp_sdata_reg
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(p_0_in__0),
        .Q(sdout),
        .S(\FSM_onehot_current_state_reg_n_0_[0] ));
endmodule

(* ORIG_REF_NAME = "spi_ctrl" *) 
module spi_ctrl_3
   (example_sdata,
    Q,
    E,
    clk_IBUF_BUFG,
    \current_state_reg[0] ,
    \current_state_reg[0]_0 ,
    \current_state_reg[0]_1 ,
    \current_state[4]_i_4_0 ,
    delay_en,
    sdata,
    \FSM_onehot_current_state_reg[0]_0 ,
    SR);
  output example_sdata;
  output [0:0]Q;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input [4:0]\current_state_reg[0] ;
  input \current_state_reg[0]_0 ;
  input [0:0]\current_state_reg[0]_1 ;
  input \current_state[4]_i_4_0 ;
  input delay_en;
  input [7:0]sdata;
  input \FSM_onehot_current_state_reg[0]_0 ;
  input [0:0]SR;

  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_1__3_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1__2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1__2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2__0_n_0 ;
  wire \FSM_onehot_current_state_reg[0]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire counter;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \current_state[4]_i_4_0 ;
  wire \current_state[4]_i_4_n_0 ;
  wire \current_state[4]_i_6_n_0 ;
  wire [4:0]\current_state_reg[0] ;
  wire \current_state_reg[0]_0 ;
  wire [0:0]\current_state_reg[0]_1 ;
  wire delay_en;
  wire example_sdata;
  wire falling_i_1__0_n_0;
  wire falling_reg_n_0;
  wire [7:1]in8;
  wire p_0_in;
  wire [4:0]plusOp;
  wire [3:0]plusOp__0;
  wire [7:0]sdata;
  wire [3:0]shift_counter_reg;
  wire shift_register;
  wire \shift_register[0]_i_1_n_0 ;
  wire \shift_register[1]_i_1_n_0 ;
  wire \shift_register[2]_i_1_n_0 ;
  wire \shift_register[3]_i_1_n_0 ;
  wire \shift_register[4]_i_1_n_0 ;
  wire \shift_register[5]_i_1_n_0 ;
  wire \shift_register[6]_i_1_n_0 ;
  wire \shift_register[7]_i_2_n_0 ;
  wire temp_sdata;
  wire temp_spi_fin;

  LUT5 #(
    .INIT(32'h44575457)) 
    \FSM_onehot_current_state[0]_i_1__3 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(temp_spi_fin),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[2]_i_2__0_n_0 ),
        .O(\FSM_onehot_current_state[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0E0FBE0)) 
    \FSM_onehot_current_state[1]_i_1__2 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(temp_spi_fin),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[2]_i_2__0_n_0 ),
        .O(\FSM_onehot_current_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF08EC08)) 
    \FSM_onehot_current_state[2]_i_1__2 
       (.I0(\FSM_onehot_current_state_reg[0]_0 ),
        .I1(temp_spi_fin),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[2]_i_2__0_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_current_state[2]_i_2__0 
       (.I0(shift_counter_reg[1]),
        .I1(shift_counter_reg[3]),
        .I2(shift_counter_reg[2]),
        .I3(shift_counter_reg[0]),
        .I4(falling_reg_n_0),
        .O(\FSM_onehot_current_state[2]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "send:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1__3_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "send:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1__2_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "send:0010,done:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1__2_n_0 ),
        .Q(temp_spi_fin),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(plusOp[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(Q),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(counter));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(Q),
        .R(counter));
  LUT6 #(
    .INIT(64'h8BBBBBBBBBBBBBBB)) 
    \current_state[4]_i_4 
       (.I0(\current_state[4]_i_6_n_0 ),
        .I1(\current_state_reg[0] [3]),
        .I2(\current_state_reg[0]_1 ),
        .I3(\current_state_reg[0] [0]),
        .I4(\current_state_reg[0] [2]),
        .I5(\current_state_reg[0] [1]),
        .O(\current_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBFBBBFBBBFB)) 
    \current_state[4]_i_6 
       (.I0(\current_state_reg[0] [2]),
        .I1(\current_state_reg[0] [0]),
        .I2(temp_spi_fin),
        .I3(\current_state_reg[0] [1]),
        .I4(\current_state[4]_i_4_0 ),
        .I5(delay_en),
        .O(\current_state[4]_i_6_n_0 ));
  MUXF7 \current_state_reg[4]_i_1 
       (.I0(\current_state_reg[0]_0 ),
        .I1(\current_state[4]_i_4_n_0 ),
        .O(E),
        .S(\current_state_reg[0] [4]));
  LUT4 #(
    .INIT(16'hF430)) 
    falling_i_1__0
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(falling_reg_n_0),
        .I3(Q),
        .O(falling_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    falling_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(falling_i_1__0_n_0),
        .Q(falling_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \shift_counter[0]_i_1 
       (.I0(shift_counter_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shift_counter[1]_i_1 
       (.I0(shift_counter_reg[0]),
        .I1(shift_counter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \shift_counter[2]_i_1 
       (.I0(shift_counter_reg[0]),
        .I1(shift_counter_reg[1]),
        .I2(shift_counter_reg[2]),
        .O(plusOp__0[2]));
  LUT3 #(
    .INIT(8'h20)) 
    \shift_counter[3]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(falling_reg_n_0),
        .I2(Q),
        .O(temp_sdata));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \shift_counter[3]_i_2 
       (.I0(shift_counter_reg[1]),
        .I1(shift_counter_reg[0]),
        .I2(shift_counter_reg[2]),
        .I3(shift_counter_reg[3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__0[0]),
        .Q(shift_counter_reg[0]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__0[1]),
        .Q(shift_counter_reg[1]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__0[2]),
        .Q(shift_counter_reg[2]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(plusOp__0[3]),
        .Q(shift_counter_reg[3]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hCACAC0CACACACACA)) 
    \shift_register[0]_i_1 
       (.I0(in8[1]),
        .I1(sdata[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(Q),
        .I4(falling_reg_n_0),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\shift_register[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[1]_i_1 
       (.I0(sdata[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[1]),
        .O(\shift_register[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[2]_i_1 
       (.I0(sdata[2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[2]),
        .O(\shift_register[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[3]_i_1 
       (.I0(sdata[3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[3]),
        .O(\shift_register[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[4]_i_1 
       (.I0(sdata[4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[4]),
        .O(\shift_register[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[5]_i_1 
       (.I0(sdata[5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[5]),
        .O(\shift_register[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[6]_i_1 
       (.I0(sdata[6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[6]),
        .O(\shift_register[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \shift_register[7]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(Q),
        .I2(falling_reg_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(shift_register));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[7]_i_2 
       (.I0(sdata[7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(in8[7]),
        .O(\shift_register[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_register[0]_i_1_n_0 ),
        .Q(in8[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[1]_i_1_n_0 ),
        .Q(in8[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[2]_i_1_n_0 ),
        .Q(in8[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[3]_i_1_n_0 ),
        .Q(in8[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[4]_i_1_n_0 ),
        .Q(in8[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[5]_i_1_n_0 ),
        .Q(in8[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[6]_i_1_n_0 ),
        .Q(in8[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_register),
        .D(\shift_register[7]_i_2_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    temp_sdata_reg
       (.C(clk_IBUF_BUFG),
        .CE(temp_sdata),
        .D(p_0_in),
        .Q(example_sdata),
        .S(\FSM_onehot_current_state_reg_n_0_[0] ));
endmodule

module stage
   (O,
    \dataAs_reg[3] ,
    \dataAs_reg[3]_0 ,
    \dataAs_reg[3]_1 ,
    CO,
    \dataAs_reg[5] ,
    \dataBs_reg[2] ,
    \dataBs_reg[6] ,
    \dataAs_reg[5]_0 ,
    \dataAs_reg[5]_1 ,
    Q,
    plusOp_carry__2_0,
    S,
    \lRval_reg[2] ,
    \lRval_reg[2]_0 );
  output [3:0]O;
  output [3:0]\dataAs_reg[3] ;
  output [3:0]\dataAs_reg[3]_0 ;
  output [1:0]\dataAs_reg[3]_1 ;
  output [0:0]CO;
  output [3:0]\dataAs_reg[5] ;
  output [3:0]\dataBs_reg[2] ;
  output [3:0]\dataBs_reg[6] ;
  output [2:0]\dataAs_reg[5]_0 ;
  output [2:0]\dataAs_reg[5]_1 ;
  input [6:0]Q;
  input [1:0]plusOp_carry__2_0;
  input [2:0]S;
  input [7:0]\lRval_reg[2] ;
  input [2:0]\lRval_reg[2]_0 ;

  wire [11:0]A;
  wire [0:0]CO;
  wire [3:0]O;
  wire [6:0]Q;
  wire [2:0]S;
  wire [3:0]\dataAs_reg[3] ;
  wire [3:0]\dataAs_reg[3]_0 ;
  wire [1:0]\dataAs_reg[3]_1 ;
  wire [3:0]\dataAs_reg[5] ;
  wire [2:0]\dataAs_reg[5]_0 ;
  wire [2:0]\dataAs_reg[5]_1 ;
  wire [3:0]\dataBs_reg[2] ;
  wire [3:0]\dataBs_reg[6] ;
  wire [7:0]\lRval_reg[2] ;
  wire [2:0]\lRval_reg[2]_0 ;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_1_n_1;
  wire plusOp_carry__0_i_1_n_2;
  wire plusOp_carry__0_i_1_n_3;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_i_5_n_0;
  wire plusOp_carry__0_i_6_n_0;
  wire plusOp_carry__0_i_7_n_0;
  wire plusOp_carry__0_i_8_n_0;
  wire plusOp_carry__0_i_9_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_i_1_n_1;
  wire plusOp_carry__1_i_1_n_2;
  wire plusOp_carry__1_i_1_n_3;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_i_5_n_0;
  wire plusOp_carry__1_i_6_n_0;
  wire plusOp_carry__1_i_7_n_0;
  wire plusOp_carry__1_i_8_n_0;
  wire plusOp_carry__1_i_9_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire [1:0]plusOp_carry__2_0;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_1_n_1;
  wire plusOp_carry_i_1_n_2;
  wire plusOp_carry_i_1_n_3;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_i_5_n_0;
  wire plusOp_carry_i_6_n_0;
  wire plusOp_carry_i_7_n_0;
  wire plusOp_carry_i_8_n_0;
  wire plusOp_carry_i_9_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(Q[3]),
        .DI(A[3:0]),
        .O(O),
        .S({plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0,plusOp_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(\dataAs_reg[3] ),
        .S({plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0,plusOp_carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0_i_1
       (.CI(plusOp_carry_i_1_n_0),
        .CO({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_1_n_1,plusOp_carry__0_i_1_n_2,plusOp_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[7:4]),
        .S({plusOp_carry__0_i_6_n_0,plusOp_carry__0_i_7_n_0,plusOp_carry__0_i_8_n_0,plusOp_carry__0_i_9_n_0}));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_1__0
       (.I0(\dataAs_reg[3] [3]),
        .I1(\lRval_reg[2] [2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [3]),
        .O(\dataBs_reg[2] [3]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_2
       (.I0(A[7]),
        .I1(\lRval_reg[2] [4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [5]),
        .O(plusOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_2__0
       (.I0(\dataAs_reg[3] [2]),
        .I1(\lRval_reg[2] [1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [2]),
        .O(\dataBs_reg[2] [2]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_3
       (.I0(A[6]),
        .I1(\lRval_reg[2] [3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [4]),
        .O(plusOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_3__0
       (.I0(\dataAs_reg[3] [1]),
        .I1(\lRval_reg[2] [0]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [1]),
        .O(\dataBs_reg[2] [1]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_4
       (.I0(A[5]),
        .I1(\lRval_reg[2] [2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [3]),
        .O(plusOp_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h5A96965A)) 
    plusOp_carry__0_i_4__0
       (.I0(\dataAs_reg[3] [0]),
        .I1(\lRval_reg[2] [0]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\dataBs_reg[2] [0]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__0_i_5
       (.I0(A[4]),
        .I1(\lRval_reg[2] [1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [2]),
        .O(plusOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry__0_i_6
       (.I0(\lRval_reg[2] [7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [6]),
        .O(plusOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry__0_i_7
       (.I0(\lRval_reg[2] [6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [5]),
        .O(plusOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry__0_i_8
       (.I0(\lRval_reg[2] [5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [4]),
        .O(plusOp_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry__0_i_9
       (.I0(\lRval_reg[2] [4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [3]),
        .O(plusOp_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(\dataAs_reg[3]_0 ),
        .S({plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0,plusOp_carry__1_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1_i_1
       (.CI(plusOp_carry__0_i_1_n_0),
        .CO({CO,plusOp_carry__1_i_1_n_1,plusOp_carry__1_i_1_n_2,plusOp_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[11:8]),
        .S({plusOp_carry__1_i_6_n_0,plusOp_carry__1_i_7_n_0,plusOp_carry__1_i_8_n_0,plusOp_carry__1_i_9_n_0}));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__1_i_1__0
       (.I0(\dataAs_reg[3]_0 [3]),
        .I1(\lRval_reg[2] [6]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [7]),
        .O(\dataBs_reg[6] [3]));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__1_i_2
       (.I0(A[11]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\lRval_reg[2] [7]),
        .O(plusOp_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__1_i_2__0
       (.I0(\dataAs_reg[3]_0 [2]),
        .I1(\lRval_reg[2] [5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [6]),
        .O(\dataBs_reg[6] [2]));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__1_i_3
       (.I0(A[10]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\lRval_reg[2] [7]),
        .O(plusOp_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__1_i_3__0
       (.I0(\dataAs_reg[3]_0 [1]),
        .I1(\lRval_reg[2] [4]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [5]),
        .O(\dataBs_reg[6] [1]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__1_i_4
       (.I0(A[9]),
        .I1(\lRval_reg[2] [6]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [7]),
        .O(plusOp_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__1_i_4__0
       (.I0(\dataAs_reg[3]_0 [0]),
        .I1(\lRval_reg[2] [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\lRval_reg[2] [4]),
        .O(\dataBs_reg[6] [0]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry__1_i_5
       (.I0(A[8]),
        .I1(\lRval_reg[2] [5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [6]),
        .O(plusOp_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__1_i_6
       (.I0(\lRval_reg[2] [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__1_i_7
       (.I0(\lRval_reg[2] [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__1_i_8
       (.I0(\lRval_reg[2] [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__1_i_9
       (.I0(\lRval_reg[2] [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,plusOp_carry__2_0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],plusOp_carry__2_n_5,\dataAs_reg[3]_1 }),
        .S({1'b0,S}));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__2_i_1__0
       (.I0(plusOp_carry__2_n_5),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\lRval_reg[2] [7]),
        .O(\dataAs_reg[5]_0 [2]));
  LUT4 #(
    .INIT(16'h665A)) 
    plusOp_carry__2_i_1__1
       (.I0(\lRval_reg[2]_0 [2]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\lRval_reg[2] [7]),
        .O(\dataAs_reg[5]_1 [2]));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__2_i_2
       (.I0(\dataAs_reg[3]_1 [1]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\lRval_reg[2] [7]),
        .O(\dataAs_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__2_i_2__1
       (.I0(\lRval_reg[2]_0 [1]),
        .I1(\lRval_reg[2] [6]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\dataAs_reg[5]_1 [1]));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__2_i_3__0
       (.I0(\dataAs_reg[3]_1 [0]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\lRval_reg[2] [7]),
        .O(\dataAs_reg[5]_0 [0]));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__2_i_3__1
       (.I0(\lRval_reg[2]_0 [0]),
        .I1(\lRval_reg[2] [5]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\dataAs_reg[5]_1 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry_i_1
       (.CI(1'b0),
        .CO({plusOp_carry_i_1_n_0,plusOp_carry_i_1_n_1,plusOp_carry_i_1_n_2,plusOp_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[1]}),
        .O(A[3:0]),
        .S({plusOp_carry_i_6_n_0,plusOp_carry_i_7_n_0,plusOp_carry_i_8_n_0,plusOp_carry_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_1__0
       (.I0(O[3]),
        .I1(Q[5]),
        .O(\dataAs_reg[5] [3]));
  LUT6 #(
    .INIT(64'h5AA9655A55596AAA)) 
    plusOp_carry_i_2
       (.I0(A[3]),
        .I1(\lRval_reg[2] [0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\lRval_reg[2] [1]),
        .O(plusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_2__0
       (.I0(O[2]),
        .I1(Q[5]),
        .O(\dataAs_reg[5] [2]));
  LUT5 #(
    .INIT(32'h5A96965A)) 
    plusOp_carry_i_3
       (.I0(A[2]),
        .I1(\lRval_reg[2] [0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(plusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_3__0
       (.I0(O[1]),
        .I1(Q[5]),
        .O(\dataAs_reg[5] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4
       (.I0(A[1]),
        .I1(Q[3]),
        .O(plusOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4__0
       (.I0(O[0]),
        .I1(Q[5]),
        .O(\dataAs_reg[5] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_5
       (.I0(A[0]),
        .I1(Q[3]),
        .O(plusOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry_i_6
       (.I0(\lRval_reg[2] [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [2]),
        .O(plusOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry_i_7
       (.I0(\lRval_reg[2] [2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [1]),
        .O(plusOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h606C)) 
    plusOp_carry_i_8
       (.I0(\lRval_reg[2] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\lRval_reg[2] [0]),
        .O(plusOp_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    plusOp_carry_i_9
       (.I0(\lRval_reg[2] [0]),
        .I1(Q[0]),
        .O(plusOp_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "stage" *) 
module stage_0
   (O,
    \dataAs_reg[5] ,
    \dataBs_reg[6] ,
    \dataAs_reg[5]_0 ,
    S,
    \dataBs_reg[0] ,
    \dataBs_reg[4] ,
    Q,
    plusOp_carry_0,
    plusOp_carry_1,
    plusOp_carry__0_0,
    plusOp_carry__0_1,
    plusOp_carry__1_0,
    plusOp_carry__1_1,
    \lRval_reg[2] ,
    \lRval_reg[2]_0 ,
    plusOp_carry__1_2);
  output [3:0]O;
  output [3:0]\dataAs_reg[5] ;
  output [3:0]\dataBs_reg[6] ;
  output [2:0]\dataAs_reg[5]_0 ;
  output [3:0]S;
  output [3:0]\dataBs_reg[0] ;
  output [3:0]\dataBs_reg[4] ;
  input [1:0]Q;
  input [3:0]plusOp_carry_0;
  input [3:0]plusOp_carry_1;
  input [3:0]plusOp_carry__0_0;
  input [3:0]plusOp_carry__0_1;
  input [3:0]plusOp_carry__1_0;
  input [3:0]plusOp_carry__1_1;
  input [1:0]\lRval_reg[2] ;
  input [2:0]\lRval_reg[2]_0 ;
  input [4:0]plusOp_carry__1_2;

  wire [3:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire [3:0]\dataAs_reg[5] ;
  wire [2:0]\dataAs_reg[5]_0 ;
  wire [3:0]\dataBs_reg[0] ;
  wire [3:0]\dataBs_reg[4] ;
  wire [3:0]\dataBs_reg[6] ;
  wire [1:0]\lRval_reg[2] ;
  wire [2:0]\lRval_reg[2]_0 ;
  wire [3:0]plusOp_carry_0;
  wire [3:0]plusOp_carry_1;
  wire [3:0]plusOp_carry__0_0;
  wire [3:0]plusOp_carry__0_1;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire [3:0]plusOp_carry__1_0;
  wire [3:0]plusOp_carry__1_1;
  wire [4:0]plusOp_carry__1_2;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(plusOp_carry_0),
        .O(O),
        .S(plusOp_carry_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp_carry__0_0),
        .O(\dataAs_reg[5] ),
        .S(plusOp_carry__0_1));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__0_i_1__1
       (.I0(\dataAs_reg[5] [3]),
        .I1(plusOp_carry__1_2[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\dataBs_reg[0] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_2__1
       (.I0(\dataAs_reg[5] [2]),
        .I1(Q[1]),
        .O(\dataBs_reg[0] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_3__1
       (.I0(\dataAs_reg[5] [1]),
        .I1(Q[1]),
        .O(\dataBs_reg[0] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_4__1
       (.I0(\dataAs_reg[5] [0]),
        .I1(Q[1]),
        .O(\dataBs_reg[0] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp_carry__1_0),
        .O(\dataBs_reg[6] ),
        .S(plusOp_carry__1_1));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__1_i_1__1
       (.I0(\dataBs_reg[6] [3]),
        .I1(plusOp_carry__1_2[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\dataBs_reg[4] [3]));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__1_i_2__1
       (.I0(\dataBs_reg[6] [2]),
        .I1(plusOp_carry__1_2[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\dataBs_reg[4] [2]));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__1_i_3__1
       (.I0(\dataBs_reg[6] [1]),
        .I1(plusOp_carry__1_2[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\dataBs_reg[4] [1]));
  LUT4 #(
    .INIT(16'h569A)) 
    plusOp_carry__1_i_4__1
       (.I0(\dataBs_reg[6] [0]),
        .I1(plusOp_carry__1_2[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\dataBs_reg[4] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\lRval_reg[2] }),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],\dataAs_reg[5]_0 }),
        .S({1'b0,\lRval_reg[2]_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_1__1
       (.I0(O[3]),
        .I1(Q[1]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_2__1
       (.I0(O[2]),
        .I1(Q[1]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_3__1
       (.I0(O[1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4__1
       (.I0(O[0]),
        .I1(Q[1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "stage" *) 
module stage_1
   (D,
    \dataBs_reg[7] ,
    plusOp_carry__1_0,
    plusOp_carry__0_0,
    \dataAs_reg[7] ,
    \dataAs_reg[3] ,
    Q,
    O,
    S,
    \opR_reg[1][3] ,
    \opR_reg[1][3]_0 ,
    \lRval_reg[2] ,
    \lRval_reg[2]_0 ,
    \lRval_reg[2]_1 ,
    \lRval_reg[2]_2 ,
    CO,
    plusOp_carry__2_0);
  output [2:0]D;
  output [1:0]\dataBs_reg[7] ;
  output [5:0]plusOp_carry__1_0;
  output [5:0]plusOp_carry__0_0;
  output [5:0]\dataAs_reg[7] ;
  output [2:0]\dataAs_reg[3] ;
  input [4:0]Q;
  input [3:0]O;
  input [3:0]S;
  input [3:0]\opR_reg[1][3] ;
  input [3:0]\opR_reg[1][3]_0 ;
  input [3:0]\lRval_reg[2] ;
  input [3:0]\lRval_reg[2]_0 ;
  input [1:0]\lRval_reg[2]_1 ;
  input [2:0]\lRval_reg[2]_2 ;
  input [0:0]CO;
  input [0:0]plusOp_carry__2_0;

  wire [14:14]A;
  wire [0:0]CO;
  wire [2:0]D;
  wire [3:0]O;
  wire [4:0]Q;
  wire [3:0]S;
  wire [2:0]\dataAs_reg[3] ;
  wire [5:0]\dataAs_reg[7] ;
  wire [1:0]\dataBs_reg[7] ;
  wire [3:0]\lRval_reg[2] ;
  wire [3:0]\lRval_reg[2]_0 ;
  wire [1:0]\lRval_reg[2]_1 ;
  wire [2:0]\lRval_reg[2]_2 ;
  wire [3:0]\opR_reg[1][3] ;
  wire [3:0]\opR_reg[1][3]_0 ;
  wire [5:0]plusOp_carry__0_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire [5:0]plusOp_carry__1_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire [0:0]plusOp_carry__2_0;
  wire plusOp_carry__2_i_1_n_2;
  wire plusOp_carry__2_i_1_n_3;
  wire plusOp_carry__2_i_5_n_0;
  wire plusOp_carry__2_i_6_n_0;
  wire plusOp_carry__2_i_7_n_0;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__2_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_i_1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \opR[0][0]_i_1 
       (.I0(plusOp_carry_n_6),
        .I1(plusOp_carry_n_5),
        .I2(plusOp_carry_n_4),
        .I3(plusOp_carry_n_7),
        .O(\dataAs_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \opR[0][1]_i_1 
       (.I0(plusOp_carry_n_7),
        .I1(plusOp_carry_n_4),
        .I2(plusOp_carry_n_5),
        .I3(plusOp_carry_n_6),
        .O(\dataAs_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF0B0)) 
    \opR[0][2]_i_1 
       (.I0(plusOp_carry_n_7),
        .I1(plusOp_carry_n_4),
        .I2(plusOp_carry_n_5),
        .I3(plusOp_carry_n_6),
        .O(\dataAs_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opR[0][3]_i_1 
       (.I0(plusOp_carry_n_4),
        .I1(plusOp_carry_n_5),
        .I2(plusOp_carry_n_6),
        .O(\dataAs_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opR[0][5]_i_1 
       (.I0(plusOp_carry_n_6),
        .I1(plusOp_carry_n_5),
        .I2(plusOp_carry_n_4),
        .O(\dataAs_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opR[0][6]_i_1 
       (.I0(plusOp_carry_n_4),
        .I1(plusOp_carry_n_5),
        .I2(plusOp_carry_n_6),
        .O(\dataAs_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \opR[1][0]_i_1 
       (.I0(plusOp_carry__0_n_6),
        .I1(plusOp_carry__0_n_5),
        .I2(plusOp_carry__0_n_4),
        .I3(plusOp_carry__0_n_7),
        .O(plusOp_carry__0_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \opR[1][1]_i_1 
       (.I0(plusOp_carry__0_n_7),
        .I1(plusOp_carry__0_n_4),
        .I2(plusOp_carry__0_n_5),
        .I3(plusOp_carry__0_n_6),
        .O(plusOp_carry__0_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hF0B0)) 
    \opR[1][2]_i_1 
       (.I0(plusOp_carry__0_n_7),
        .I1(plusOp_carry__0_n_4),
        .I2(plusOp_carry__0_n_5),
        .I3(plusOp_carry__0_n_6),
        .O(plusOp_carry__0_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opR[1][3]_i_1 
       (.I0(plusOp_carry__0_n_4),
        .I1(plusOp_carry__0_n_5),
        .I2(plusOp_carry__0_n_6),
        .O(plusOp_carry__0_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opR[1][5]_i_1 
       (.I0(plusOp_carry__0_n_6),
        .I1(plusOp_carry__0_n_5),
        .I2(plusOp_carry__0_n_4),
        .O(plusOp_carry__0_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opR[1][6]_i_1 
       (.I0(plusOp_carry__0_n_4),
        .I1(plusOp_carry__0_n_5),
        .I2(plusOp_carry__0_n_6),
        .O(plusOp_carry__0_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \opR[2][0]_i_1 
       (.I0(plusOp_carry__1_n_6),
        .I1(plusOp_carry__1_n_5),
        .I2(plusOp_carry__1_n_4),
        .I3(plusOp_carry__1_n_7),
        .O(plusOp_carry__1_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \opR[2][1]_i_1 
       (.I0(plusOp_carry__1_n_7),
        .I1(plusOp_carry__1_n_4),
        .I2(plusOp_carry__1_n_5),
        .I3(plusOp_carry__1_n_6),
        .O(plusOp_carry__1_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hF0B0)) 
    \opR[2][2]_i_1 
       (.I0(plusOp_carry__1_n_7),
        .I1(plusOp_carry__1_n_4),
        .I2(plusOp_carry__1_n_5),
        .I3(plusOp_carry__1_n_6),
        .O(plusOp_carry__1_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opR[2][3]_i_1 
       (.I0(plusOp_carry__1_n_4),
        .I1(plusOp_carry__1_n_5),
        .I2(plusOp_carry__1_n_6),
        .O(plusOp_carry__1_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opR[2][5]_i_1 
       (.I0(plusOp_carry__1_n_6),
        .I1(plusOp_carry__1_n_5),
        .I2(plusOp_carry__1_n_4),
        .O(plusOp_carry__1_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opR[2][6]_i_1 
       (.I0(plusOp_carry__1_n_4),
        .I1(plusOp_carry__1_n_5),
        .I2(plusOp_carry__1_n_6),
        .O(plusOp_carry__1_0[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(Q[4]),
        .DI(O),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\opR_reg[1][3] ),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(\opR_reg[1][3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\lRval_reg[2] ),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(\lRval_reg[2]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\lRval_reg[2]_1 }),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],D}),
        .S({1'b0,\lRval_reg[2]_2 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2_i_1
       (.CI(CO),
        .CO({NLW_plusOp_carry__2_i_1_CO_UNCONNECTED[3:2],plusOp_carry__2_i_1_n_2,plusOp_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_i_1_O_UNCONNECTED[3],A,\dataBs_reg[7] }),
        .S({1'b0,plusOp_carry__2_i_5_n_0,plusOp_carry__2_i_6_n_0,plusOp_carry__2_i_7_n_0}));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__2_i_2__0
       (.I0(A),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(plusOp_carry__2_0),
        .O(\dataAs_reg[3] [2]));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__2_i_3
       (.I0(\dataBs_reg[7] [1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(plusOp_carry__2_0),
        .O(\dataAs_reg[3] [1]));
  LUT5 #(
    .INIT(32'h599A6666)) 
    plusOp_carry__2_i_4
       (.I0(\dataBs_reg[7] [0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(plusOp_carry__2_0),
        .O(\dataAs_reg[3] [0]));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__2_i_5
       (.I0(plusOp_carry__2_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__2_i_6
       (.I0(plusOp_carry__2_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h58)) 
    plusOp_carry__2_i_7
       (.I0(plusOp_carry__2_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp_carry__2_i_7_n_0));
endmodule

(* NotValidForBitStream *)
module top_module
   (clk,
    rst,
    oled_sdin,
    oled_sclk,
    oled_dc,
    oled_res,
    oled_vbat,
    oled_vdd,
    SW,
    N,
    S,
    W,
    LED);
  input clk;
  input rst;
  output oled_sdin;
  output oled_sclk;
  output oled_dc;
  output oled_res;
  output oled_vbat;
  output oled_vdd;
  input [7:0]SW;
  input N;
  input S;
  input W;
  output [7:0]LED;

  wire \Aval_reg_n_0_[0] ;
  wire \Aval_reg_n_0_[1] ;
  wire \Aval_reg_n_0_[2] ;
  wire \Aval_reg_n_0_[3] ;
  wire \Aval_reg_n_0_[4] ;
  wire \Aval_reg_n_0_[5] ;
  wire \Aval_reg_n_0_[6] ;
  wire \Aval_reg_n_0_[7] ;
  wire \Bval_reg_n_0_[0] ;
  wire \Bval_reg_n_0_[1] ;
  wire \Bval_reg_n_0_[2] ;
  wire \Bval_reg_n_0_[3] ;
  wire \Bval_reg_n_0_[4] ;
  wire \Bval_reg_n_0_[5] ;
  wire \Bval_reg_n_0_[6] ;
  wire \Bval_reg_n_0_[7] ;
  wire [7:0]LED;
  wire [7:0]LED_OBUF;
  wire \Ldata[7]_i_1_n_0 ;
  wire N;
  wire N_IBUF;
  wire S;
  wire [7:0]SW;
  wire [7:0]SW_IBUF;
  wire S_IBUF;
  wire W;
  wire W_IBUF;
  wire booth_Th_n_0;
  wire booth_Th_n_1;
  wire booth_Th_n_10;
  wire booth_Th_n_11;
  wire booth_Th_n_12;
  wire booth_Th_n_13;
  wire booth_Th_n_14;
  wire booth_Th_n_15;
  wire booth_Th_n_16;
  wire booth_Th_n_17;
  wire booth_Th_n_18;
  wire booth_Th_n_19;
  wire booth_Th_n_2;
  wire booth_Th_n_20;
  wire booth_Th_n_4;
  wire booth_Th_n_5;
  wire booth_Th_n_6;
  wire booth_Th_n_7;
  wire booth_Th_n_8;
  wire booth_Th_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \dataAs_reg_n_0_[0] ;
  wire \dataAs_reg_n_0_[1] ;
  wire \dataAs_reg_n_0_[2] ;
  wire \dataAs_reg_n_0_[3] ;
  wire \dataAs_reg_n_0_[4] ;
  wire \dataAs_reg_n_0_[5] ;
  wire \dataAs_reg_n_0_[6] ;
  wire \dataBs_reg_n_0_[0] ;
  wire \dataBs_reg_n_0_[1] ;
  wire \dataBs_reg_n_0_[2] ;
  wire \dataBs_reg_n_0_[3] ;
  wire \dataBs_reg_n_0_[4] ;
  wire \dataBs_reg_n_0_[5] ;
  wire \dataBs_reg_n_0_[6] ;
  wire [3:0]finalA;
  wire [3:0]finalB;
  wire gtOp;
  wire gtOp__0;
  wire in;
  wire [2:0]lRval;
  wire oled_dc;
  wire oled_dc_OBUF;
  wire oled_res;
  wire oled_res_OBUF;
  wire oled_sclk;
  wire oled_sclk_OBUF;
  wire oled_sdin;
  wire oled_sdin_OBUF;
  wire oled_vbat;
  wire oled_vbat_OBUF;
  wire oled_vdd;
  wire oled_vdd_OBUF;
  wire \opA[0][0]_i_1_n_0 ;
  wire \opA[0][1]_i_1_n_0 ;
  wire \opA[0][2]_i_1_n_0 ;
  wire \opA[0][3]_i_1_n_0 ;
  wire \opA[0][5]_i_1_n_0 ;
  wire \opA[1][0]_i_1_n_0 ;
  wire \opA[1][1]_i_1_n_0 ;
  wire \opA[1][2]_i_1_n_0 ;
  wire \opA[1][3]_i_1_n_0 ;
  wire \opA[1][5]_i_1_n_0 ;
  wire \opA[1][6]_i_1_n_0 ;
  wire \opA[2][3]_i_1_n_0 ;
  wire \opA_reg_n_0_[0][0] ;
  wire \opA_reg_n_0_[0][1] ;
  wire \opA_reg_n_0_[0][2] ;
  wire \opA_reg_n_0_[0][3] ;
  wire \opA_reg_n_0_[0][5] ;
  wire \opA_reg_n_0_[0][6] ;
  wire \opA_reg_n_0_[1][0] ;
  wire \opA_reg_n_0_[1][1] ;
  wire \opA_reg_n_0_[1][2] ;
  wire \opA_reg_n_0_[1][3] ;
  wire \opA_reg_n_0_[1][5] ;
  wire \opA_reg_n_0_[1][6] ;
  wire \opA_reg_n_0_[2][1] ;
  wire \opA_reg_n_0_[2][2] ;
  wire \opA_reg_n_0_[2][3] ;
  wire \opB[0][0]_i_1_n_0 ;
  wire \opB[0][1]_i_1_n_0 ;
  wire \opB[0][2]_i_1_n_0 ;
  wire \opB[0][3]_i_1_n_0 ;
  wire \opB[0][5]_i_1_n_0 ;
  wire \opB[0][6]_i_1_n_0 ;
  wire \opB[1][0]_i_1_n_0 ;
  wire \opB[1][1]_i_1_n_0 ;
  wire \opB[1][2]_i_1_n_0 ;
  wire \opB[1][3]_i_1_n_0 ;
  wire \opB[1][5]_i_1_n_0 ;
  wire \opB[1][6]_i_1_n_0 ;
  wire \opB[2][1]_i_1_n_0 ;
  wire \opB[2][2]_i_1_n_0 ;
  wire \opB_reg_n_0_[0][0] ;
  wire \opB_reg_n_0_[0][1] ;
  wire \opB_reg_n_0_[0][2] ;
  wire \opB_reg_n_0_[0][3] ;
  wire \opB_reg_n_0_[0][5] ;
  wire \opB_reg_n_0_[0][6] ;
  wire \opB_reg_n_0_[1][0] ;
  wire \opB_reg_n_0_[1][1] ;
  wire \opB_reg_n_0_[1][2] ;
  wire \opB_reg_n_0_[1][3] ;
  wire \opB_reg_n_0_[1][5] ;
  wire \opB_reg_n_0_[1][6] ;
  wire \opB_reg_n_0_[2][1] ;
  wire \opB_reg_n_0_[2][2] ;
  wire \opR[4][1]_i_1_n_0 ;
  wire \opR[4][2]_i_1_n_0 ;
  wire \opR_reg_n_0_[0][0] ;
  wire \opR_reg_n_0_[0][1] ;
  wire \opR_reg_n_0_[0][2] ;
  wire \opR_reg_n_0_[0][3] ;
  wire \opR_reg_n_0_[0][5] ;
  wire \opR_reg_n_0_[0][6] ;
  wire \opR_reg_n_0_[1][0] ;
  wire \opR_reg_n_0_[1][1] ;
  wire \opR_reg_n_0_[1][2] ;
  wire \opR_reg_n_0_[1][3] ;
  wire \opR_reg_n_0_[1][5] ;
  wire \opR_reg_n_0_[1][6] ;
  wire \opR_reg_n_0_[2][0] ;
  wire \opR_reg_n_0_[2][1] ;
  wire \opR_reg_n_0_[2][2] ;
  wire \opR_reg_n_0_[2][3] ;
  wire \opR_reg_n_0_[2][5] ;
  wire \opR_reg_n_0_[2][6] ;
  wire \opR_reg_n_0_[3][0] ;
  wire \opR_reg_n_0_[3][1] ;
  wire \opR_reg_n_0_[3][2] ;
  wire \opR_reg_n_0_[4][1] ;
  wire \opR_reg_n_0_[4][2] ;
  wire p_0_in;
  wire p_1_in;
  wire rst;
  wire rst_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[0] ),
        .Q(\Aval_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[1] ),
        .Q(\Aval_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[2] ),
        .Q(\Aval_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[3] ),
        .Q(\Aval_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[4] ),
        .Q(\Aval_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[5] ),
        .Q(\Aval_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataAs_reg_n_0_[6] ),
        .Q(\Aval_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Aval_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(p_0_in),
        .Q(\Aval_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[0] ),
        .Q(\Bval_reg_n_0_[0] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[1] ),
        .Q(\Bval_reg_n_0_[1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[2] ),
        .Q(\Bval_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[3] ),
        .Q(\Bval_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[4] ),
        .Q(\Bval_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[5] ),
        .Q(\Bval_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\dataBs_reg_n_0_[6] ),
        .Q(\Bval_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Bval_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(p_1_in),
        .Q(\Bval_reg_n_0_[7] ),
        .R(rst_IBUF));
  oled_ctrl Comp_th
       (.Q({\opA_reg_n_0_[1][3] ,\opA_reg_n_0_[1][2] ,\opA_reg_n_0_[1][1] ,\opA_reg_n_0_[1][0] }),
        .SR(rst_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_screen_reg[3,10][2] ({\opR_reg_n_0_[3][2] ,\opR_reg_n_0_[3][1] ,\opR_reg_n_0_[3][0] }),
        .\current_screen_reg[3,11][6] ({\opR_reg_n_0_[2][6] ,\opR_reg_n_0_[2][5] ,\opR_reg_n_0_[2][3] ,\opR_reg_n_0_[2][2] ,\opR_reg_n_0_[2][1] ,\opR_reg_n_0_[2][0] }),
        .\current_screen_reg[3,12][6] ({\opR_reg_n_0_[1][6] ,\opR_reg_n_0_[1][5] ,\opR_reg_n_0_[1][3] ,\opR_reg_n_0_[1][2] ,\opR_reg_n_0_[1][1] ,\opR_reg_n_0_[1][0] }),
        .\current_screen_reg[3,13][6] ({\opR_reg_n_0_[0][6] ,\opR_reg_n_0_[0][5] ,\opR_reg_n_0_[0][3] ,\opR_reg_n_0_[0][2] ,\opR_reg_n_0_[0][1] ,\opR_reg_n_0_[0][0] }),
        .\current_screen_reg[3,1][1] (\opA_reg_n_0_[2][1] ),
        .\current_screen_reg[3,1][2] (\opA_reg_n_0_[2][2] ),
        .\current_screen_reg[3,2][5] (\opA_reg_n_0_[1][5] ),
        .\current_screen_reg[3,2][6] (\opA_reg_n_0_[1][6] ),
        .\current_screen_reg[3,3][3] ({\opA_reg_n_0_[0][3] ,\opA_reg_n_0_[0][2] ,\opA_reg_n_0_[0][1] ,\opA_reg_n_0_[0][0] }),
        .\current_screen_reg[3,3][5] (\opA_reg_n_0_[0][5] ),
        .\current_screen_reg[3,3][6] (\opA_reg_n_0_[0][6] ),
        .\current_screen_reg[3,5][1] (\opB_reg_n_0_[2][1] ),
        .\current_screen_reg[3,5][2] (\opB_reg_n_0_[2][2] ),
        .\current_screen_reg[3,5][3] (\opA_reg_n_0_[2][3] ),
        .\current_screen_reg[3,6][3] ({\opB_reg_n_0_[1][3] ,\opB_reg_n_0_[1][2] ,\opB_reg_n_0_[1][1] ,\opB_reg_n_0_[1][0] }),
        .\current_screen_reg[3,6][5] (\opB_reg_n_0_[1][5] ),
        .\current_screen_reg[3,6][6] (\opB_reg_n_0_[1][6] ),
        .\current_screen_reg[3,7][3] ({\opB_reg_n_0_[0][3] ,\opB_reg_n_0_[0][2] ,\opB_reg_n_0_[0][1] ,\opB_reg_n_0_[0][0] }),
        .\current_screen_reg[3,7][5] (\opB_reg_n_0_[0][5] ),
        .\current_screen_reg[3,7][6] (\opB_reg_n_0_[0][6] ),
        .\current_screen_reg[3,9][1] (\opR_reg_n_0_[4][1] ),
        .\current_screen_reg[3,9][2] (\opR_reg_n_0_[4][2] ),
        .oled_dc_OBUF(oled_dc_OBUF),
        .oled_res_OBUF(oled_res_OBUF),
        .oled_sclk_OBUF(oled_sclk_OBUF),
        .oled_sdin_OBUF(oled_sdin_OBUF),
        .oled_vbat_OBUF(oled_vbat_OBUF),
        .oled_vdd_OBUF(oled_vdd_OBUF));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \Ldata[7]_i_1 
       (.I0(N_IBUF),
        .I1(S_IBUF),
        .O(\Ldata[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[0]),
        .Q(LED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[1]),
        .Q(LED_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[2]),
        .Q(LED_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[3]),
        .Q(LED_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[4]),
        .Q(LED_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[5]),
        .Q(LED_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[6]),
        .Q(LED_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ldata_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\Ldata[7]_i_1_n_0 ),
        .D(SW_IBUF[7]),
        .Q(LED_OBUF[7]),
        .R(1'b0));
  IBUF N_IBUF_inst
       (.I(N),
        .O(N_IBUF));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  IBUF S_IBUF_inst
       (.I(S),
        .O(S_IBUF));
  IBUF W_IBUF_inst
       (.I(W),
        .O(W_IBUF));
  booth booth_Th
       (.D({booth_Th_n_0,booth_Th_n_1,booth_Th_n_2}),
        .Q({p_0_in,\dataAs_reg_n_0_[5] ,\dataAs_reg_n_0_[4] ,\dataAs_reg_n_0_[3] ,\dataAs_reg_n_0_[2] ,\dataAs_reg_n_0_[1] ,\dataAs_reg_n_0_[0] }),
        .\dataAs_reg[7] ({booth_Th_n_15,booth_Th_n_16,booth_Th_n_17,booth_Th_n_18,booth_Th_n_19,booth_Th_n_20}),
        .\lRval_reg[2] ({p_1_in,\dataBs_reg_n_0_[6] ,\dataBs_reg_n_0_[5] ,\dataBs_reg_n_0_[4] ,\dataBs_reg_n_0_[3] ,\dataBs_reg_n_0_[2] ,\dataBs_reg_n_0_[1] ,\dataBs_reg_n_0_[0] }),
        .plusOp_carry__0({booth_Th_n_9,booth_Th_n_10,booth_Th_n_11,booth_Th_n_12,booth_Th_n_13,booth_Th_n_14}),
        .plusOp_carry__1({gtOp__0,booth_Th_n_4,booth_Th_n_5,booth_Th_n_6,booth_Th_n_7,booth_Th_n_8}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[0]),
        .Q(\dataAs_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[1]),
        .Q(\dataAs_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[2]),
        .Q(\dataAs_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[3]),
        .Q(\dataAs_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[4]),
        .Q(\dataAs_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[5]),
        .Q(\dataAs_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[6]),
        .Q(\dataAs_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataAs_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(N_IBUF),
        .D(SW_IBUF[7]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[0]),
        .Q(\dataBs_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[1]),
        .Q(\dataBs_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[2]),
        .Q(\dataBs_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[3]),
        .Q(\dataBs_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[4]),
        .Q(\dataBs_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[5]),
        .Q(\dataBs_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[6]),
        .Q(\dataBs_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBs_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(S_IBUF),
        .D(SW_IBUF[7]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Aval_reg_n_0_[4] ),
        .Q(finalA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Aval_reg_n_0_[5] ),
        .Q(finalA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Aval_reg_n_0_[6] ),
        .Q(finalA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Aval_reg_n_0_[7] ),
        .Q(finalA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalB_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Bval_reg_n_0_[4] ),
        .Q(finalB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalB_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Bval_reg_n_0_[5] ),
        .Q(finalB[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalB_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Bval_reg_n_0_[6] ),
        .Q(finalB[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \finalB_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Bval_reg_n_0_[7] ),
        .Q(finalB[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lRval_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_2),
        .Q(lRval[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lRval_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_1),
        .Q(lRval[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lRval_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_0),
        .Q(lRval[2]),
        .R(1'b0));
  OBUF oled_dc_OBUF_inst
       (.I(oled_dc_OBUF),
        .O(oled_dc));
  OBUF oled_res_OBUF_inst
       (.I(oled_res_OBUF),
        .O(oled_res));
  OBUF oled_sclk_OBUF_inst
       (.I(oled_sclk_OBUF),
        .O(oled_sclk));
  OBUF oled_sdin_OBUF_inst
       (.I(oled_sdin_OBUF),
        .O(oled_sdin));
  OBUF oled_vbat_OBUF_inst
       (.I(oled_vbat_OBUF),
        .O(oled_vbat));
  OBUF oled_vdd_OBUF_inst
       (.I(oled_vdd_OBUF),
        .O(oled_vdd));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h666A)) 
    \opA[0][0]_i_1 
       (.I0(\Aval_reg_n_0_[0] ),
        .I1(\Aval_reg_n_0_[3] ),
        .I2(\Aval_reg_n_0_[2] ),
        .I3(\Aval_reg_n_0_[1] ),
        .O(\opA[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h9C8C)) 
    \opA[0][1]_i_1 
       (.I0(\Aval_reg_n_0_[0] ),
        .I1(\Aval_reg_n_0_[1] ),
        .I2(\Aval_reg_n_0_[3] ),
        .I3(\Aval_reg_n_0_[2] ),
        .O(\opA[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \opA[0][2]_i_1 
       (.I0(\Aval_reg_n_0_[0] ),
        .I1(\Aval_reg_n_0_[2] ),
        .I2(\Aval_reg_n_0_[3] ),
        .I3(\Aval_reg_n_0_[1] ),
        .O(\opA[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opA[0][3]_i_1 
       (.I0(\Aval_reg_n_0_[3] ),
        .I1(\Aval_reg_n_0_[2] ),
        .I2(\Aval_reg_n_0_[1] ),
        .O(\opA[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opA[0][5]_i_1 
       (.I0(\Aval_reg_n_0_[1] ),
        .I1(\Aval_reg_n_0_[2] ),
        .I2(\Aval_reg_n_0_[3] ),
        .O(\opA[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opA[0][6]_i_1 
       (.I0(\Aval_reg_n_0_[3] ),
        .I1(\Aval_reg_n_0_[2] ),
        .I2(\Aval_reg_n_0_[1] ),
        .O(gtOp));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h666A)) 
    \opA[1][0]_i_1 
       (.I0(finalA[0]),
        .I1(finalA[3]),
        .I2(finalA[2]),
        .I3(finalA[1]),
        .O(\opA[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h9C8C)) 
    \opA[1][1]_i_1 
       (.I0(finalA[0]),
        .I1(finalA[1]),
        .I2(finalA[3]),
        .I3(finalA[2]),
        .O(\opA[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \opA[1][2]_i_1 
       (.I0(finalA[0]),
        .I1(finalA[2]),
        .I2(finalA[3]),
        .I3(finalA[1]),
        .O(\opA[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opA[1][3]_i_1 
       (.I0(finalA[3]),
        .I1(finalA[2]),
        .I2(finalA[1]),
        .O(\opA[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opA[1][5]_i_1 
       (.I0(finalA[1]),
        .I1(finalA[2]),
        .I2(finalA[3]),
        .O(\opA[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opA[1][6]_i_1 
       (.I0(finalA[3]),
        .I1(finalA[2]),
        .I2(finalA[1]),
        .O(\opA[1][6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \opA[2][1]_i_1 
       (.I0(p_0_in),
        .O(in));
  LUT3 #(
    .INIT(8'h32)) 
    \opA[2][3]_i_1 
       (.I0(W_IBUF),
        .I1(rst_IBUF),
        .I2(\opA_reg_n_0_[2][3] ),
        .O(\opA[2][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[0][0]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[0][1]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[0][2]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[0][3]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[0][5]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(gtOp),
        .Q(\opA_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[1][0]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[1][1]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[1][2]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[1][3]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[1][5]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[1][6]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(in),
        .Q(\opA_reg_n_0_[2][1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(p_0_in),
        .Q(\opA_reg_n_0_[2][2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \opA_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opA[2][3]_i_1_n_0 ),
        .Q(\opA_reg_n_0_[2][3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h666A)) 
    \opB[0][0]_i_1 
       (.I0(\Bval_reg_n_0_[0] ),
        .I1(\Bval_reg_n_0_[3] ),
        .I2(\Bval_reg_n_0_[2] ),
        .I3(\Bval_reg_n_0_[1] ),
        .O(\opB[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h9C8C)) 
    \opB[0][1]_i_1 
       (.I0(\Bval_reg_n_0_[0] ),
        .I1(\Bval_reg_n_0_[1] ),
        .I2(\Bval_reg_n_0_[3] ),
        .I3(\Bval_reg_n_0_[2] ),
        .O(\opB[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \opB[0][2]_i_1 
       (.I0(\Bval_reg_n_0_[0] ),
        .I1(\Bval_reg_n_0_[2] ),
        .I2(\Bval_reg_n_0_[3] ),
        .I3(\Bval_reg_n_0_[1] ),
        .O(\opB[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opB[0][3]_i_1 
       (.I0(\Bval_reg_n_0_[3] ),
        .I1(\Bval_reg_n_0_[2] ),
        .I2(\Bval_reg_n_0_[1] ),
        .O(\opB[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opB[0][5]_i_1 
       (.I0(\Bval_reg_n_0_[1] ),
        .I1(\Bval_reg_n_0_[2] ),
        .I2(\Bval_reg_n_0_[3] ),
        .O(\opB[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opB[0][6]_i_1 
       (.I0(\Bval_reg_n_0_[3] ),
        .I1(\Bval_reg_n_0_[2] ),
        .I2(\Bval_reg_n_0_[1] ),
        .O(\opB[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h666A)) 
    \opB[1][0]_i_1 
       (.I0(finalB[0]),
        .I1(finalB[3]),
        .I2(finalB[2]),
        .I3(finalB[1]),
        .O(\opB[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h9C8C)) 
    \opB[1][1]_i_1 
       (.I0(finalB[0]),
        .I1(finalB[1]),
        .I2(finalB[3]),
        .I3(finalB[2]),
        .O(\opB[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \opB[1][2]_i_1 
       (.I0(finalB[0]),
        .I1(finalB[2]),
        .I2(finalB[3]),
        .I3(finalB[1]),
        .O(\opB[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \opB[1][3]_i_1 
       (.I0(finalB[3]),
        .I1(finalB[2]),
        .I2(finalB[1]),
        .O(\opB[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \opB[1][5]_i_1 
       (.I0(finalB[1]),
        .I1(finalB[2]),
        .I2(finalB[3]),
        .O(\opB[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \opB[1][6]_i_1 
       (.I0(finalB[3]),
        .I1(finalB[2]),
        .I2(finalB[1]),
        .O(\opB[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \opB[2][1]_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\opB[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \opB[2][2]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .O(\opB[2][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[0][0]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[0][1]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[0][2]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[0][3]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[0][5]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[0][6]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[1][0]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[1][1]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[1][2]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[1][3]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[1][5]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\opB[1][6]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\opB[2][1]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[2][1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \opB_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\opB[2][2]_i_1_n_0 ),
        .Q(\opB_reg_n_0_[2][2] ),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \opR[4][1]_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\opR[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \opR[4][2]_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\opR[4][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_20),
        .Q(\opR_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_19),
        .Q(\opR_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_18),
        .Q(\opR_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_17),
        .Q(\opR_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_16),
        .Q(\opR_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_15),
        .Q(\opR_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_14),
        .Q(\opR_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_13),
        .Q(\opR_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_12),
        .Q(\opR_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_11),
        .Q(\opR_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_10),
        .Q(\opR_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_9),
        .Q(\opR_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_8),
        .Q(\opR_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_7),
        .Q(\opR_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_6),
        .Q(\opR_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_5),
        .Q(\opR_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(booth_Th_n_4),
        .Q(\opR_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(gtOp__0),
        .Q(\opR_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lRval[0]),
        .Q(\opR_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lRval[1]),
        .Q(\opR_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(lRval[2]),
        .Q(\opR_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\opR[4][1]_i_1_n_0 ),
        .Q(\opR_reg_n_0_[4][1] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \opR_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(W_IBUF),
        .D(\opR[4][2]_i_1_n_0 ),
        .Q(\opR_reg_n_0_[4][2] ),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
