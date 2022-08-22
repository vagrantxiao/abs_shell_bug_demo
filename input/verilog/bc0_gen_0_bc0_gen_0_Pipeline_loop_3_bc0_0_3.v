// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module bc0_gen_0_bc0_gen_0_Pipeline_loop_3_bc0_0_3 (
address0, ce0, q0, reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 8;
parameter AddressRange = 232;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./bc0_gen_0_bc0_gen_0_Pipeline_loop_3_bc0_0_3.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

