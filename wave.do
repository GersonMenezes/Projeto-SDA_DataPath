onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Gray40 /datapath_n_tb/UUT/reset
add wave -noupdate /datapath_n_tb/UUT/clock
add wave -noupdate -color Green -radix unsigned /datapath_n_tb/UUT/data_in
add wave -noupdate -color Gray80 /datapath_n_tb/UUT/control
add wave -noupdate -color Salmon -radix unsigned /datapath_n_tb/UUT/data_out
add wave -noupdate /datapath_n_tb/UUT/saida_ula1
add wave -noupdate /datapath_n_tb/UUT/saida_ula2
add wave -noupdate -color Goldenrod /datapath_n_tb/UUT/saida_mux_oito_1
add wave -noupdate -color Goldenrod /datapath_n_tb/UUT/saida_mux_oito_2
add wave -noupdate -color Goldenrod /datapath_n_tb/UUT/saida_mux_oito_3
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis1
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis2
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis3
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis4
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis5
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis6
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis7
add wave -noupdate -color Cyan -radix unsigned /datapath_n_tb/UUT/saida_regis8
add wave -noupdate /datapath_n_tb/UUT/ov
add wave -noupdate /datapath_n_tb/UUT/N
add wave -noupdate /datapath_n_tb/UUT/Z
add wave -noupdate /datapath_n_tb/UUT/a_regis
add wave -noupdate -color Gray60 /datapath_n_tb/UUT/c_regis
add wave -noupdate /datapath_n_tb/UUT/control_aux_3bits
add wave -noupdate /datapath_n_tb/UUT/control_aux_2bits
add wave -noupdate /datapath_n_tb/UUT/cout
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux1
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux2
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux3
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux4
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux5
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux6
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux7
add wave -noupdate -color Gray30 -itemcolor Gray30 /datapath_n_tb/UUT/saida_mux8
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {114240 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 242
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {96182 ps} {111254 ps}
