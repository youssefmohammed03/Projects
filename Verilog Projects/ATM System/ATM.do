vlib work
vlog ATM.v Tb.v +cover 
vsim -voptargs=+acc work.Tb -cover
add wave *
coverage save ATM_Tb_db.ucdb -onexit -du atm
run -all