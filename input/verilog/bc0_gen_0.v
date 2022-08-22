// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bc0_gen_0_bc0_gen_0,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu50-fsvh2104-2-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.248000,HLS_SYN_LAT=25851,HLS_SYN_TPT=none,HLS_SYN_MEM=35,HLS_SYN_DSP=0,HLS_SYN_FF=108,HLS_SYN_LUT=508,HLS_VERSION=2021_1}" *)

module bc0_gen_0 (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Input_1_V_TDATA,
        Input_1_V_TVALID,
        Input_1_V_TREADY,
        Output_1_V_TDATA,
        Output_1_V_TVALID,
        Output_1_V_TREADY
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] Input_1_V_TDATA;
input   Input_1_V_TVALID;
output   Input_1_V_TREADY;
output  [31:0] Output_1_V_TDATA;
output   Output_1_V_TVALID;
input   Output_1_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] recv;
reg    Input_1_V_TDATA_blk_n;
wire   [0:0] icmp_ln25845_fu_86_p2;
wire    grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start;
wire    grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_done;
wire    grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_idle;
wire    grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_ready;
wire    grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TREADY;
wire   [31:0] grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TDATA;
wire    grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TVALID;
wire    grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start;
wire    grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_done;
wire    grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_idle;
wire    grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_ready;
wire    grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TREADY;
wire   [31:0] grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TDATA;
wire    grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TVALID;
wire    grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start;
wire    grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_done;
wire    grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_idle;
wire    grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_ready;
wire    grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TREADY;
wire   [31:0] grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TDATA;
wire    grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TVALID;
wire    grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start;
wire    grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_done;
wire    grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_idle;
wire    grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_ready;
wire    grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TREADY;
wire   [31:0] grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TDATA;
wire    grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TVALID;
reg    grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start_reg;
reg    ap_block_state1_ignore_call1;
wire    ap_CS_fsm_state2;
reg    grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [31:0] or_ln25847_fu_92_p2;
reg    ap_block_state1;
wire    ap_CS_fsm_state12;
wire    regslice_both_Output_1_V_U_apdone_blk;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    regslice_both_Input_1_V_U_apdone_blk;
wire   [31:0] Input_1_V_TDATA_int_regslice;
wire    Input_1_V_TVALID_int_regslice;
reg    Input_1_V_TREADY_int_regslice;
wire    regslice_both_Input_1_V_U_ack_in;
reg   [31:0] Output_1_V_TDATA_int_regslice;
reg    Output_1_V_TVALID_int_regslice;
wire    Output_1_V_TREADY_int_regslice;
wire    regslice_both_Output_1_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 recv = 32'd0;
#0 grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start_reg = 1'b0;
#0 grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start_reg = 1'b0;
#0 grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start_reg = 1'b0;
#0 grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start_reg = 1'b0;
end

bc0_gen_0_bc0_gen_0_Pipeline_loop_0 grp_bc0_gen_0_Pipeline_loop_0_fu_50(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start),
    .ap_done(grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_done),
    .ap_idle(grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_idle),
    .ap_ready(grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_ready),
    .Output_1_V_TREADY(grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TREADY),
    .Output_1_V_TDATA(grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TDATA),
    .Output_1_V_TVALID(grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TVALID)
);

bc0_gen_0_bc0_gen_0_Pipeline_loop_1 grp_bc0_gen_0_Pipeline_loop_1_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start),
    .ap_done(grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_done),
    .ap_idle(grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_idle),
    .ap_ready(grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_ready),
    .Output_1_V_TREADY(grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TREADY),
    .Output_1_V_TDATA(grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TDATA),
    .Output_1_V_TVALID(grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TVALID)
);

bc0_gen_0_bc0_gen_0_Pipeline_loop_2 grp_bc0_gen_0_Pipeline_loop_2_fu_66(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start),
    .ap_done(grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_done),
    .ap_idle(grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_idle),
    .ap_ready(grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_ready),
    .Output_1_V_TREADY(grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TREADY),
    .Output_1_V_TDATA(grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TDATA),
    .Output_1_V_TVALID(grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TVALID)
);

bc0_gen_0_bc0_gen_0_Pipeline_loop_3 grp_bc0_gen_0_Pipeline_loop_3_fu_74(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start),
    .ap_done(grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_done),
    .ap_idle(grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_idle),
    .ap_ready(grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_ready),
    .Output_1_V_TREADY(grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TREADY),
    .Output_1_V_TDATA(grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TDATA),
    .Output_1_V_TVALID(grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TVALID)
);

bc0_gen_0_regslice_both #(
    .DataWidth( 32 ))
regslice_both_Input_1_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(Input_1_V_TDATA),
    .vld_in(Input_1_V_TVALID),
    .ack_in(regslice_both_Input_1_V_U_ack_in),
    .data_out(Input_1_V_TDATA_int_regslice),
    .vld_out(Input_1_V_TVALID_int_regslice),
    .ack_out(Input_1_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_Input_1_V_U_apdone_blk)
);

bc0_gen_0_regslice_both #(
    .DataWidth( 32 ))
regslice_both_Output_1_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(Output_1_V_TDATA_int_regslice),
    .vld_in(Output_1_V_TVALID_int_regslice),
    .ack_in(Output_1_V_TREADY_int_regslice),
    .data_out(Output_1_V_TDATA),
    .vld_out(regslice_both_Output_1_V_U_vld_out),
    .ack_out(Output_1_V_TREADY),
    .apdone_blk(regslice_both_Output_1_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice))) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start_reg <= 1'b1;
        end else if ((grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_ready == 1'b1)) begin
            grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_ready == 1'b1)) begin
            grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_ready == 1'b1)) begin
            grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_ready == 1'b1)) begin
            grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice))) & (icmp_ln25845_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        recv <= or_ln25847_fu_92_p2;
    end
end

always @ (*) begin
    if (((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        Input_1_V_TDATA_blk_n = Input_1_V_TVALID_int_regslice;
    end else begin
        Input_1_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice))) & (icmp_ln25845_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        Input_1_V_TREADY_int_regslice = 1'b1;
    end else begin
        Input_1_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        Output_1_V_TDATA_int_regslice = grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TDATA;
    end else if (((grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        Output_1_V_TDATA_int_regslice = grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TDATA;
    end else if (((grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        Output_1_V_TDATA_int_regslice = grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TDATA;
    end else if (((grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Output_1_V_TDATA_int_regslice = grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TDATA;
    end else begin
        Output_1_V_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        Output_1_V_TVALID_int_regslice = grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TVALID;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        Output_1_V_TVALID_int_regslice = grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TVALID;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        Output_1_V_TVALID_int_regslice = grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TVALID;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        Output_1_V_TVALID_int_regslice = grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TVALID;
    end else begin
        Output_1_V_TVALID_int_regslice = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

always @ (*) begin
    if ((grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_Output_1_V_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice)))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (regslice_both_Output_1_V_U_apdone_blk == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (regslice_both_Output_1_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice))) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (regslice_both_Output_1_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Input_1_V_TREADY = regslice_both_Input_1_V_U_ack_in;

assign Output_1_V_TVALID = regslice_both_Output_1_V_U_vld_out;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice)));
end

always @ (*) begin
    ap_block_state1_ignore_call1 = ((ap_start == 1'b0) | ((icmp_ln25845_fu_86_p2 == 1'd1) & (1'b0 == Input_1_V_TVALID_int_regslice)));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_bc0_gen_0_Pipeline_loop_0_fu_50_Output_1_V_TREADY = (ap_CS_fsm_state2 & Output_1_V_TREADY_int_regslice);

assign grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start = grp_bc0_gen_0_Pipeline_loop_0_fu_50_ap_start_reg;

assign grp_bc0_gen_0_Pipeline_loop_1_fu_58_Output_1_V_TREADY = (ap_CS_fsm_state5 & Output_1_V_TREADY_int_regslice);

assign grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start = grp_bc0_gen_0_Pipeline_loop_1_fu_58_ap_start_reg;

assign grp_bc0_gen_0_Pipeline_loop_2_fu_66_Output_1_V_TREADY = (ap_CS_fsm_state8 & Output_1_V_TREADY_int_regslice);

assign grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start = grp_bc0_gen_0_Pipeline_loop_2_fu_66_ap_start_reg;

assign grp_bc0_gen_0_Pipeline_loop_3_fu_74_Output_1_V_TREADY = (ap_CS_fsm_state11 & Output_1_V_TREADY_int_regslice);

assign grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start = grp_bc0_gen_0_Pipeline_loop_3_fu_74_ap_start_reg;

assign icmp_ln25845_fu_86_p2 = ((recv == 32'd0) ? 1'b1 : 1'b0);

assign or_ln25847_fu_92_p2 = (32'd1 | Input_1_V_TDATA_int_regslice);

endmodule //bc0_gen_0
