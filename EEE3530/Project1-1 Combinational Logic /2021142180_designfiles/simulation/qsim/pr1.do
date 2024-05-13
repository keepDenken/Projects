onerror {exit -code 1}
vlib work
vlog -work work pr1.vo
vlog -work work results.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pr1_vlg_vec_tst -voptargs="+acc"
vcd file -direction pr1.msim.vcd
vcd add -internal pr1_vlg_vec_tst/*
vcd add -internal pr1_vlg_vec_tst/i1/*
run -all
quit -f
