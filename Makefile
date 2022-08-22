ifndef XILINX_VIVADO
  $(error Environment variable XILINX_VIVADO is required and should point to Vitis install area)
endif

operators_src=$(wildcard input/verilog/*.v)

all:output/bc0_gen_0.bit
	

output/bc0_gen_0.bit: output/bc0_gen_0_syn.dcp
	vivado -mode batch -source  impl_page.tcl

output/bc0_gen_0_syn.dcp:$(operators_src)
	vivado -mode batch -source  syn_page.tcl

clean:
	rm -rf *.log *.jou *.rpt .Xil hd_visual *.str *.pb .*.rst
	rm -rf ./output/*.dcp ./output/*.bit


