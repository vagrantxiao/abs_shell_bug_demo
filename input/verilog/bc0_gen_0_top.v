`timescale 1ns / 1ps
module bc0_gen_0_top(
        input  ap_clk,
        input  ap_start,
        output ap_done,
        output ap_idle,
        output ap_ready,
        input [32-1:0] Input_1_V_TDATA,
        input  Input_1_V_TVALID,
        output Input_1_V_TREADY,
        output [32-1:0] Output_1_V_TDATA,
        output  Output_1_V_TVALID,
        input  Output_1_V_TREADY,
        input   ap_rst_n);


  wire [32-1:0] Output_1_V_TDATA_tmp;
  wire Output_1_V_TVALID_tmp;
  wire Output_1_V_TREADY_tmp;



  bc0_gen_0 bc0_gen_0_inst(
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .Input_1_V_TDATA(Input_1_V_TDATA),
        .Input_1_V_TVALID(Input_1_V_TVALID),
        .Input_1_V_TREADY(Input_1_V_TREADY),
        .Output_1_V_TDATA(Output_1_V_TDATA_tmp),
        .Output_1_V_TVALID(Output_1_V_TVALID_tmp),
        .Output_1_V_TREADY(Output_1_V_TREADY_tmp),
        .ap_rst_n(ap_rst_n));



  stream_shell #(
         .PAYLOAD_BITS(32),
         .NUM_BRAM_ADDR_BITS(8)
  )stream_link_Output_1(
         .clk(ap_clk),
         .din(Output_1_V_TDATA_tmp),
         .val_in(Output_1_V_TVALID_tmp),
         .ready_upward(Output_1_V_TREADY_tmp),
         .dout(Output_1_V_TDATA),
         .val_out(Output_1_V_TVALID),
         .ready_downward(Output_1_V_TREADY),
         .reset(~ap_rst_n));


endmodule
