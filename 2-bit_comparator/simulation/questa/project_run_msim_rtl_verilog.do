transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/media/alphadelta1803/3763-141A/CADD_project {/media/alphadelta1803/3763-141A/CADD_project/comp2w.sv}

vlog -sv -work work +incdir+/media/alphadelta1803/3763-141A/CADD_project {/media/alphadelta1803/3763-141A/CADD_project/comp2_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  comp2_tb

add wave *
view structure
view signals
run -all
