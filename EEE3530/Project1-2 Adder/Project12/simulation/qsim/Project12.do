onerror {exit -code 1}
vlib work
vlog -work work Project12.vo
vlog -work work bit_overflow.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Project12_vlg_vec_tst -voptargs="+acc"
vcd file -direction Project12.msim.vcd
vcd add -internal Project12_vlg_vec_tst/*
vcd add -internal Project12_vlg_vec_tst/i1/*
run -all
quit -f
