transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/HA.sv}
vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/And_1.sv}
vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/Xor_1.sv}
vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/Or_1.sv}
vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/FA_1.sv}
vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/FA_4.sv}
vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/FA_32.sv}

vlog -sv -work work +incdir+/home/alphadelta1803/Desktop/project {/home/alphadelta1803/Desktop/project/FA_32_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  FA_32_tb

add wave *
view structure
view signals
run -all
