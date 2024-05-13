onerror {exit -code 1}
vlib work
vlog -work work top_level_KMC.vo
vlog -work work result1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_level_KMC_vlg_vec_tst -voptargs="+acc"
vcd file -direction top_level_KMC.msim.vcd
vcd add -internal top_level_KMC_vlg_vec_tst/*
vcd add -internal top_level_KMC_vlg_vec_tst/i1/*
run -all
quit -f
