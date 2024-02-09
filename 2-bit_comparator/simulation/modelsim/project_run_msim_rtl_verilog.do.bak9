transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/pesu-ece/Desktop/CADD_project {/home/pesu-ece/Desktop/CADD_project/or_2.sv}
vlog -sv -work work +incdir+/home/pesu-ece/Desktop/CADD_project {/home/pesu-ece/Desktop/CADD_project/comp1.sv}
vlog -sv -work work +incdir+/home/pesu-ece/Desktop/CADD_project {/home/pesu-ece/Desktop/CADD_project/comp2.sv}
vlog -sv -work work +incdir+/home/pesu-ece/Desktop/CADD_project {/home/pesu-ece/Desktop/CADD_project/and_2.sv}

vlog -sv -work work +incdir+/home/pesu-ece/Desktop/CADD_project {/home/pesu-ece/Desktop/CADD_project/comp2_test.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  comp2_test

add wave *
view structure
view signals
run -all
