onerror {exit -code 1}
vlib work
vcom -work work T6.vho
vcom -work work Waveform.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.L6_vhd_vec_tst
vcd file -direction T6.msim.vcd
vcd add -internal L6_vhd_vec_tst/*
vcd add -internal L6_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

