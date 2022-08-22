#!/bin/bash -e
source /scratch/unsafe/Xilinx/Vitis/2021.1/settings64.sh
vivado -mode batch -source  impl_bc0_gen_0.tcl
