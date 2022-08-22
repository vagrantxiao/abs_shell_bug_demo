set dir "./input/verilog/"

set contents [glob -nocomplain -directory $dir *]
foreach item $contents {
  if { [regexp {.*\.tcl} $item] } {
  } else {
    add_files -norecurse $item
  }
}
foreach item $contents {
  if { [regexp {.*\.tcl} $item] } {
    source $item
  }
}
set_param general.maxThreads  8
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]
set logFileId [open ./runLog_bc0_gen_0.log "w"]
set start_time [clock seconds]
set_param general.maxThreads  8 
synth_design -top bc0_gen_0_top -part xcu50-fsvh2104-2-e -mode out_of_context -max_uram 0
write_checkpoint -force ./output/bc0_gen_0_syn.dcp
set end_time [clock seconds]
set total_seconds [expr $end_time - $start_time]
puts $logFileId "syn: $total_seconds seconds"
report_utilization -hierarchical > utilization.rpt

