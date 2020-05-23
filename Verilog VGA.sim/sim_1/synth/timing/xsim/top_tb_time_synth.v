// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon May 11 19:14:15 2020
// Host        : nathan-ThinkPad-P40-Yoga running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {/home/nathan/source/Xilinx/Verilog
//               VGA/Verilog VGA.sim/sim_1/synth/timing/xsim/top_tb_time_synth.v}
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module top
   (clk,
    btnC,
    sw,
    led,
    vgaRed,
    vgaBlue,
    vgaGreen,
    Hsync,
    Vsync,
    px_strobe,
    x,
    y);
  input clk;
  input btnC;
  input [15:0]sw;
  output [15:0]led;
  output [3:0]vgaRed;
  output [3:0]vgaBlue;
  output [3:0]vgaGreen;
  output Hsync;
  output Vsync;
  output px_strobe;
  output x;
  output y;

  wire Hsync;
  wire Vsync;
  wire btnC;
  wire btnC_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:13]cnt;
  wire \cnt[15]_i_2_n_0 ;
  wire \cnt_reg[15]_i_1_n_2 ;
  wire \cnt_reg[15]_i_1_n_3 ;
  wire \cnt_reg[15]_i_1_n_5 ;
  wire \cnt_reg[15]_i_1_n_6 ;
  wire \cnt_reg[15]_i_1_n_7 ;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire p_0_in;
  wire px_strobe;
  wire px_strobe_OBUF;
  wire [15:0]sw;
  wire [15:12]sw_IBUF;
  wire [3:0]vgaBlue;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen;
  wire [3:0]vgaGreen_OBUF;
  wire [3:0]vgaRed;
  wire [3:0]vgaRed_OBUF;
  wire x;
  wire x_OBUF;
  wire y;
  wire y_OBUF;
  wire [2:2]\NLW_cnt_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[15]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("top_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF Hsync_OBUF_inst
       (.I(1'b0),
        .O(Hsync));
  OBUF Vsync_OBUF_inst
       (.I(1'b0),
        .O(Vsync));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[15]_i_2 
       (.I0(cnt[14]),
        .O(\cnt[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[15]_i_1_n_7 ),
        .Q(cnt[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[15]_i_1_n_6 ),
        .Q(cnt[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[15]_i_1_n_5 ),
        .Q(cnt[15]),
        .R(1'b0));
  CARRY4 \cnt_reg[15]_i_1 
       (.CI(1'b0),
        .CO({p_0_in,\NLW_cnt_reg[15]_i_1_CO_UNCONNECTED [2],\cnt_reg[15]_i_1_n_2 ,\cnt_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt[14],1'b0}),
        .O({\NLW_cnt_reg[15]_i_1_O_UNCONNECTED [3],\cnt_reg[15]_i_1_n_5 ,\cnt_reg[15]_i_1_n_6 ,\cnt_reg[15]_i_1_n_7 }),
        .S({1'b1,cnt[15],\cnt[15]_i_2_n_0 ,cnt[13]}));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(px_strobe_OBUF),
        .I1(btnC_IBUF),
        .I2(vgaRed_OBUF[0]),
        .O(led_OBUF[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(vgaGreen_OBUF[2]),
        .I1(btnC_IBUF),
        .O(led_OBUF[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(vgaGreen_OBUF[3]),
        .I1(btnC_IBUF),
        .O(led_OBUF[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[12]_inst_i_1 
       (.I0(sw_IBUF[12]),
        .I1(btnC_IBUF),
        .O(led_OBUF[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[13]_inst_i_1 
       (.I0(sw_IBUF[13]),
        .I1(btnC_IBUF),
        .O(led_OBUF[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[14]_inst_i_1 
       (.I0(sw_IBUF[14]),
        .I1(btnC_IBUF),
        .O(led_OBUF[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(sw_IBUF[15]),
        .I1(btnC_IBUF),
        .O(led_OBUF[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(vgaRed_OBUF[1]),
        .I1(btnC_IBUF),
        .O(led_OBUF[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(vgaRed_OBUF[2]),
        .I1(btnC_IBUF),
        .O(led_OBUF[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(vgaRed_OBUF[3]),
        .I1(btnC_IBUF),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(vgaBlue_OBUF[0]),
        .I1(btnC_IBUF),
        .O(led_OBUF[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(vgaBlue_OBUF[1]),
        .I1(btnC_IBUF),
        .O(led_OBUF[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(vgaBlue_OBUF[2]),
        .I1(btnC_IBUF),
        .O(led_OBUF[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(vgaBlue_OBUF[3]),
        .I1(btnC_IBUF),
        .O(led_OBUF[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(vgaGreen_OBUF[0]),
        .I1(btnC_IBUF),
        .O(led_OBUF[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(vgaGreen_OBUF[1]),
        .I1(btnC_IBUF),
        .O(led_OBUF[9]));
  OBUF px_strobe_OBUF_inst
       (.I(px_strobe_OBUF),
        .O(px_strobe));
  FDRE #(
    .INIT(1'b0)) 
    px_strobe_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(px_strobe_OBUF),
        .R(1'b0));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(vgaRed_OBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(vgaGreen_OBUF[2]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(vgaGreen_OBUF[3]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(vgaRed_OBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(vgaRed_OBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(vgaRed_OBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(vgaBlue_OBUF[0]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(vgaBlue_OBUF[1]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(vgaBlue_OBUF[2]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(vgaBlue_OBUF[3]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(vgaGreen_OBUF[0]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(vgaGreen_OBUF[1]));
  vga640x480 vga
       (.CLK(clk_IBUF_BUFG),
        .btnC_IBUF(btnC_IBUF),
        .px_strobe_OBUF(px_strobe_OBUF),
        .x_OBUF(x_OBUF),
        .y_OBUF(y_OBUF));
  OBUF \vgaBlue_OBUF[0]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaBlue[0]));
  OBUF \vgaBlue_OBUF[1]_inst 
       (.I(vgaBlue_OBUF[1]),
        .O(vgaBlue[1]));
  OBUF \vgaBlue_OBUF[2]_inst 
       (.I(vgaBlue_OBUF[2]),
        .O(vgaBlue[2]));
  OBUF \vgaBlue_OBUF[3]_inst 
       (.I(vgaBlue_OBUF[3]),
        .O(vgaBlue[3]));
  OBUF \vgaGreen_OBUF[0]_inst 
       (.I(vgaGreen_OBUF[0]),
        .O(vgaGreen[0]));
  OBUF \vgaGreen_OBUF[1]_inst 
       (.I(vgaGreen_OBUF[1]),
        .O(vgaGreen[1]));
  OBUF \vgaGreen_OBUF[2]_inst 
       (.I(vgaGreen_OBUF[2]),
        .O(vgaGreen[2]));
  OBUF \vgaGreen_OBUF[3]_inst 
       (.I(vgaGreen_OBUF[3]),
        .O(vgaGreen[3]));
  OBUF \vgaRed_OBUF[0]_inst 
       (.I(vgaRed_OBUF[0]),
        .O(vgaRed[0]));
  OBUF \vgaRed_OBUF[1]_inst 
       (.I(vgaRed_OBUF[1]),
        .O(vgaRed[1]));
  OBUF \vgaRed_OBUF[2]_inst 
       (.I(vgaRed_OBUF[2]),
        .O(vgaRed[2]));
  OBUF \vgaRed_OBUF[3]_inst 
       (.I(vgaRed_OBUF[3]),
        .O(vgaRed[3]));
  OBUF x_OBUF_inst
       (.I(x_OBUF),
        .O(x));
  OBUF y_OBUF_inst
       (.I(y_OBUF),
        .O(y));
endmodule

module vga640x480
   (x_OBUF,
    y_OBUF,
    px_strobe_OBUF,
    btnC_IBUF,
    CLK);
  output x_OBUF;
  output y_OBUF;
  input px_strobe_OBUF;
  input btnC_IBUF;
  input CLK;

  wire CLK;
  wire btnC_IBUF;
  wire [9:0]h_sync;
  wire \h_sync[0]_i_1_n_0 ;
  wire \h_sync[1]_i_1_n_0 ;
  wire \h_sync[2]_i_1_n_0 ;
  wire \h_sync[3]_i_1_n_0 ;
  wire \h_sync[4]_i_1_n_0 ;
  wire \h_sync[4]_i_2_n_0 ;
  wire \h_sync[5]_i_1_n_0 ;
  wire \h_sync[5]_i_2_n_0 ;
  wire \h_sync[6]_i_1_n_0 ;
  wire \h_sync[7]_i_1_n_0 ;
  wire \h_sync[8]_i_1_n_0 ;
  wire \h_sync[8]_i_2_n_0 ;
  wire \h_sync[9]_i_1_n_0 ;
  wire \h_sync[9]_i_2_n_0 ;
  wire \h_sync[9]_i_3_n_0 ;
  wire \h_sync[9]_i_4_n_0 ;
  wire \h_sync[9]_i_5_n_0 ;
  wire \h_sync[9]_i_6_n_0 ;
  wire \h_sync[9]_i_7_n_0 ;
  wire \h_sync[9]_i_8_n_0 ;
  wire px_strobe_OBUF;
  wire \v_sync[0]_i_1_n_0 ;
  wire \v_sync[1]_i_1_n_0 ;
  wire \v_sync[2]_i_1_n_0 ;
  wire \v_sync[3]_i_1_n_0 ;
  wire \v_sync[3]_i_2_n_0 ;
  wire \v_sync[4]_i_1_n_0 ;
  wire \v_sync[4]_i_2_n_0 ;
  wire \v_sync[5]_i_1_n_0 ;
  wire \v_sync[6]_i_1_n_0 ;
  wire \v_sync[7]_i_1_n_0 ;
  wire \v_sync[7]_i_2_n_0 ;
  wire \v_sync[8]_i_1_n_0 ;
  wire \v_sync[8]_i_2_n_0 ;
  wire \v_sync[9]_i_1_n_0 ;
  wire \v_sync[9]_i_2_n_0 ;
  wire \v_sync[9]_i_3_n_0 ;
  wire \v_sync[9]_i_4_n_0 ;
  wire \v_sync_reg_n_0_[0] ;
  wire \v_sync_reg_n_0_[1] ;
  wire \v_sync_reg_n_0_[2] ;
  wire \v_sync_reg_n_0_[3] ;
  wire \v_sync_reg_n_0_[4] ;
  wire \v_sync_reg_n_0_[5] ;
  wire \v_sync_reg_n_0_[6] ;
  wire \v_sync_reg_n_0_[7] ;
  wire \v_sync_reg_n_0_[8] ;
  wire \v_sync_reg_n_0_[9] ;
  wire x_OBUF;
  wire y_OBUF;

  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \h_sync[0]_i_1 
       (.I0(h_sync[2]),
        .I1(h_sync[6]),
        .I2(h_sync[1]),
        .I3(h_sync[3]),
        .I4(\h_sync[9]_i_4_n_0 ),
        .I5(h_sync[0]),
        .O(\h_sync[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_sync[1]_i_1 
       (.I0(h_sync[1]),
        .I1(h_sync[0]),
        .O(\h_sync[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_sync[2]_i_1 
       (.I0(h_sync[2]),
        .I1(h_sync[1]),
        .I2(h_sync[0]),
        .O(\h_sync[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_sync[3]_i_1 
       (.I0(h_sync[2]),
        .I1(h_sync[1]),
        .I2(h_sync[0]),
        .I3(h_sync[3]),
        .O(\h_sync[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777088888880)) 
    \h_sync[4]_i_1 
       (.I0(\h_sync[4]_i_2_n_0 ),
        .I1(h_sync[3]),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(h_sync[4]),
        .O(\h_sync[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \h_sync[4]_i_2 
       (.I0(h_sync[2]),
        .I1(h_sync[1]),
        .I2(h_sync[0]),
        .O(\h_sync[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5554AAA8)) 
    \h_sync[5]_i_1 
       (.I0(\h_sync[5]_i_2_n_0 ),
        .I1(h_sync[0]),
        .I2(\h_sync[9]_i_4_n_0 ),
        .I3(\h_sync[9]_i_3_n_0 ),
        .I4(h_sync[5]),
        .O(\h_sync[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_sync[5]_i_2 
       (.I0(h_sync[4]),
        .I1(h_sync[3]),
        .I2(h_sync[0]),
        .I3(h_sync[1]),
        .I4(h_sync[2]),
        .O(\h_sync[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5554AAA8)) 
    \h_sync[6]_i_1 
       (.I0(\h_sync[9]_i_8_n_0 ),
        .I1(h_sync[0]),
        .I2(\h_sync[9]_i_4_n_0 ),
        .I3(\h_sync[9]_i_3_n_0 ),
        .I4(h_sync[6]),
        .O(\h_sync[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777088888880)) 
    \h_sync[7]_i_1 
       (.I0(\h_sync[9]_i_8_n_0 ),
        .I1(h_sync[6]),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(h_sync[7]),
        .O(\h_sync[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777088888880)) 
    \h_sync[8]_i_1 
       (.I0(\h_sync[8]_i_2_n_0 ),
        .I1(\h_sync[9]_i_8_n_0 ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(h_sync[8]),
        .O(\h_sync[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_sync[8]_i_2 
       (.I0(h_sync[6]),
        .I1(h_sync[7]),
        .O(\h_sync[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF000100)) 
    \h_sync[9]_i_1 
       (.I0(\h_sync[9]_i_3_n_0 ),
        .I1(\h_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(px_strobe_OBUF),
        .I4(\h_sync[9]_i_5_n_0 ),
        .I5(\h_sync[9]_i_6_n_0 ),
        .O(\h_sync[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777088888880)) 
    \h_sync[9]_i_2 
       (.I0(\h_sync[9]_i_7_n_0 ),
        .I1(\h_sync[9]_i_8_n_0 ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(h_sync[9]),
        .O(\h_sync[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \h_sync[9]_i_3 
       (.I0(h_sync[2]),
        .I1(h_sync[6]),
        .I2(h_sync[1]),
        .I3(h_sync[3]),
        .O(\h_sync[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \h_sync[9]_i_4 
       (.I0(h_sync[7]),
        .I1(h_sync[5]),
        .I2(h_sync[8]),
        .I3(h_sync[9]),
        .I4(h_sync[4]),
        .O(\h_sync[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \h_sync[9]_i_5 
       (.I0(\v_sync_reg_n_0_[8] ),
        .I1(\v_sync_reg_n_0_[9] ),
        .I2(\v_sync_reg_n_0_[2] ),
        .I3(\v_sync_reg_n_0_[3] ),
        .I4(\v_sync_reg_n_0_[7] ),
        .I5(\v_sync_reg_n_0_[6] ),
        .O(\h_sync[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \h_sync[9]_i_6 
       (.I0(\v_sync_reg_n_0_[5] ),
        .I1(\v_sync_reg_n_0_[4] ),
        .I2(\v_sync_reg_n_0_[1] ),
        .I3(\v_sync_reg_n_0_[0] ),
        .O(\h_sync[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \h_sync[9]_i_7 
       (.I0(h_sync[8]),
        .I1(h_sync[7]),
        .I2(h_sync[6]),
        .O(\h_sync[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_sync[9]_i_8 
       (.I0(h_sync[2]),
        .I1(h_sync[1]),
        .I2(h_sync[0]),
        .I3(h_sync[3]),
        .I4(h_sync[4]),
        .I5(h_sync[5]),
        .O(\h_sync[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[0] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[0]_i_1_n_0 ),
        .Q(h_sync[0]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[1] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[1]_i_1_n_0 ),
        .Q(h_sync[1]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[2] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[2]_i_1_n_0 ),
        .Q(h_sync[2]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[3] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[3]_i_1_n_0 ),
        .Q(h_sync[3]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[4] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[4]_i_1_n_0 ),
        .Q(h_sync[4]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[5] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[5]_i_1_n_0 ),
        .Q(h_sync[5]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[6] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[6]_i_1_n_0 ),
        .Q(h_sync[6]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[7] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[7]_i_1_n_0 ),
        .Q(h_sync[7]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[8] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[8]_i_1_n_0 ),
        .Q(h_sync[8]),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \h_sync_reg[9] 
       (.C(CLK),
        .CE(\h_sync[9]_i_1_n_0 ),
        .D(\h_sync[9]_i_2_n_0 ),
        .Q(h_sync[9]),
        .R(btnC_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \v_sync[0]_i_1 
       (.I0(h_sync[0]),
        .I1(\h_sync[9]_i_4_n_0 ),
        .I2(\h_sync[9]_i_3_n_0 ),
        .I3(\v_sync_reg_n_0_[0] ),
        .O(\v_sync[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010100)) 
    \v_sync[1]_i_1 
       (.I0(\h_sync[9]_i_3_n_0 ),
        .I1(\h_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(\v_sync_reg_n_0_[0] ),
        .I4(\v_sync_reg_n_0_[1] ),
        .O(\v_sync[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010001000100)) 
    \v_sync[2]_i_1 
       (.I0(\h_sync[9]_i_3_n_0 ),
        .I1(\h_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(\v_sync_reg_n_0_[2] ),
        .I4(\v_sync_reg_n_0_[1] ),
        .I5(\v_sync_reg_n_0_[0] ),
        .O(\v_sync[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000008)) 
    \v_sync[3]_i_1 
       (.I0(\v_sync[3]_i_2_n_0 ),
        .I1(\v_sync_reg_n_0_[2] ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(\v_sync_reg_n_0_[3] ),
        .O(\v_sync[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_sync[3]_i_2 
       (.I0(\v_sync_reg_n_0_[0] ),
        .I1(\v_sync_reg_n_0_[1] ),
        .O(\v_sync[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000006)) 
    \v_sync[4]_i_1 
       (.I0(\v_sync[4]_i_2_n_0 ),
        .I1(\v_sync_reg_n_0_[4] ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .O(\v_sync[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \v_sync[4]_i_2 
       (.I0(\v_sync_reg_n_0_[1] ),
        .I1(\v_sync_reg_n_0_[0] ),
        .I2(\v_sync_reg_n_0_[3] ),
        .I3(\v_sync_reg_n_0_[2] ),
        .O(\v_sync[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000006)) 
    \v_sync[5]_i_1 
       (.I0(\v_sync[9]_i_4_n_0 ),
        .I1(\v_sync_reg_n_0_[5] ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .O(\v_sync[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000008)) 
    \v_sync[6]_i_1 
       (.I0(\v_sync[9]_i_4_n_0 ),
        .I1(\v_sync_reg_n_0_[5] ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(\v_sync_reg_n_0_[6] ),
        .O(\v_sync[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000008)) 
    \v_sync[7]_i_1 
       (.I0(\v_sync[7]_i_2_n_0 ),
        .I1(\v_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(\v_sync_reg_n_0_[7] ),
        .O(\v_sync[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \v_sync[7]_i_2 
       (.I0(\v_sync_reg_n_0_[5] ),
        .I1(\v_sync_reg_n_0_[6] ),
        .O(\v_sync[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000008)) 
    \v_sync[8]_i_1 
       (.I0(\v_sync[8]_i_2_n_0 ),
        .I1(\v_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(\v_sync_reg_n_0_[8] ),
        .O(\v_sync[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \v_sync[8]_i_2 
       (.I0(\v_sync_reg_n_0_[6] ),
        .I1(\v_sync_reg_n_0_[5] ),
        .I2(\v_sync_reg_n_0_[7] ),
        .O(\v_sync[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h010101FF00000000)) 
    \v_sync[9]_i_1 
       (.I0(\h_sync[9]_i_3_n_0 ),
        .I1(\h_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_5_n_0 ),
        .I4(\h_sync[9]_i_6_n_0 ),
        .I5(px_strobe_OBUF),
        .O(\v_sync[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000008)) 
    \v_sync[9]_i_2 
       (.I0(\v_sync[9]_i_3_n_0 ),
        .I1(\v_sync[9]_i_4_n_0 ),
        .I2(h_sync[0]),
        .I3(\h_sync[9]_i_4_n_0 ),
        .I4(\h_sync[9]_i_3_n_0 ),
        .I5(\v_sync_reg_n_0_[9] ),
        .O(\v_sync[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \v_sync[9]_i_3 
       (.I0(\v_sync_reg_n_0_[8] ),
        .I1(\v_sync_reg_n_0_[7] ),
        .I2(\v_sync_reg_n_0_[6] ),
        .I3(\v_sync_reg_n_0_[5] ),
        .O(\v_sync[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_sync[9]_i_4 
       (.I0(\v_sync_reg_n_0_[2] ),
        .I1(\v_sync_reg_n_0_[3] ),
        .I2(\v_sync_reg_n_0_[0] ),
        .I3(\v_sync_reg_n_0_[1] ),
        .I4(\v_sync_reg_n_0_[4] ),
        .O(\v_sync[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[0] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[0]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[0] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[1] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[1]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[1] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[2] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[2]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[2] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[3] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[3]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[3] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[4] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[4]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[4] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[5] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[5]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[5] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[6] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[6]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[6] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[7] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[7]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[7] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[8] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[8]_i_1_n_0 ),
        .Q(\v_sync_reg_n_0_[8] ),
        .R(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \v_sync_reg[9] 
       (.C(CLK),
        .CE(\v_sync[9]_i_1_n_0 ),
        .D(\v_sync[9]_i_2_n_0 ),
        .Q(\v_sync_reg_n_0_[9] ),
        .R(btnC_IBUF));
  LUT6 #(
    .INIT(64'hFFFE0000EEEE0000)) 
    x_OBUF_inst_i_1
       (.I0(h_sync[8]),
        .I1(h_sync[9]),
        .I2(h_sync[6]),
        .I3(h_sync[5]),
        .I4(h_sync[0]),
        .I5(h_sync[7]),
        .O(x_OBUF));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    y_OBUF_inst_i_1
       (.I0(\v_sync_reg_n_0_[9] ),
        .I1(\v_sync_reg_n_0_[0] ),
        .I2(\v_sync_reg_n_0_[5] ),
        .I3(\v_sync_reg_n_0_[6] ),
        .I4(\v_sync_reg_n_0_[7] ),
        .I5(\v_sync_reg_n_0_[8] ),
        .O(y_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
