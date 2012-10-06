onerror {resume}
quietly WaveActivateNextPane {} 0
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/updatevec[2:0]} update_x
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/updatevec[5:3]} update_y
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/MV1[6:0]} MV1_x
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/MV1[13:7]} MV1_y
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/MV2[6:0]} MV2_x
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/MV2[13:7]} MV2_y
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/MV3[6:0]} MV3_x
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/MV3[13:7]} MV3_y
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/curpos[6:0]} curpos_x
quietly virtual signal -install /test3DRS/DUT { /test3DRS/DUT/curpos[13:7]} curpos_y
quietly virtual signal -install /test3DRS/DUT/swaddrgen { /test3DRS/DUT/swaddrgen/updatein[2:0]} updatein_x
quietly virtual signal -install /test3DRS/DUT/swaddrgen { /test3DRS/DUT/swaddrgen/updatein[5:3]} updatein_y
quietly virtual function -install /test3DRS/DUT/swaddrgen -env /test3DRS { &{/test3DRS/DUT/swaddrgen/UWpos[6], /test3DRS/DUT/swaddrgen/UWpos[5], /test3DRS/DUT/swaddrgen/UWpos[4], /test3DRS/DUT/swaddrgen/UWpos[3], /test3DRS/DUT/swaddrgen/UWpos[2], /test3DRS/DUT/swaddrgen/UWpos[1], /test3DRS/DUT/swaddrgen/UWpos[0] }} UWposx
quietly virtual function -install /test3DRS/DUT/swaddrgen -env /test3DRS { &{/test3DRS/DUT/swaddrgen/UWpos[13], /test3DRS/DUT/swaddrgen/UWpos[12], /test3DRS/DUT/swaddrgen/UWpos[11], /test3DRS/DUT/swaddrgen/UWpos[10], /test3DRS/DUT/swaddrgen/UWpos[9], /test3DRS/DUT/swaddrgen/UWpos[8], /test3DRS/DUT/swaddrgen/UWpos[7] }} UWposy
quietly virtual function -install /test3DRS/DUT/swaddrgen -env /test3DRS { &{/test3DRS/DUT/swaddrgen/out[6], /test3DRS/DUT/swaddrgen/out[5], /test3DRS/DUT/swaddrgen/out[4], /test3DRS/DUT/swaddrgen/out[3], /test3DRS/DUT/swaddrgen/out[2], /test3DRS/DUT/swaddrgen/out[1], /test3DRS/DUT/swaddrgen/out[0] }} out_x
quietly virtual function -install /test3DRS/DUT/swaddrgen -env /test3DRS { &{/test3DRS/DUT/swaddrgen/out[13], /test3DRS/DUT/swaddrgen/out[12], /test3DRS/DUT/swaddrgen/out[11], /test3DRS/DUT/swaddrgen/out[10], /test3DRS/DUT/swaddrgen/out[9], /test3DRS/DUT/swaddrgen/out[8], /test3DRS/DUT/swaddrgen/out[7] }} out_y
quietly virtual signal -install /test3DRS/DUT/mvselect { /test3DRS/DUT/mvselect/MVin[6:0]} MVin_x
quietly virtual signal -install /test3DRS/DUT/mvselect { /test3DRS/DUT/mvselect/MVin[13:7]} MVin_y
quietly virtual function -install /test3DRS/DUT/mvselect -env /test3DRS { &{/test3DRS/DUT/mvselect/MVSelected[6], /test3DRS/DUT/mvselect/MVSelected[5], /test3DRS/DUT/mvselect/MVSelected[4], /test3DRS/DUT/mvselect/MVSelected[3], /test3DRS/DUT/mvselect/MVSelected[2], /test3DRS/DUT/mvselect/MVSelected[1], /test3DRS/DUT/mvselect/MVSelected[0] }} MVselected_x
quietly virtual function -install /test3DRS/DUT/mvselect -env /test3DRS { &{/test3DRS/DUT/mvselect/MVSelected[13], /test3DRS/DUT/mvselect/MVSelected[12], /test3DRS/DUT/mvselect/MVSelected[11], /test3DRS/DUT/mvselect/MVSelected[10], /test3DRS/DUT/mvselect/MVSelected[9], /test3DRS/DUT/mvselect/MVSelected[8], /test3DRS/DUT/mvselect/MVSelected[7] }} MVselected_y
add wave -noupdate -format Logic /test3DRS/outready
add wave -noupdate -format Literal /test3DRS/outSAD
add wave -noupdate -format Logic /test3DRS/clk
add wave -noupdate -format Logic /test3DRS/reset
add wave -noupdate -format Logic /test3DRS/start
add wave -noupdate -format Logic /test3DRS/firstframe
add wave -noupdate -format Logic /test3DRS/refwrite
add wave -noupdate -format Logic /test3DRS/searchwrite
add wave -noupdate -format Literal -radix unsigned /test3DRS/refaddress
add wave -noupdate -format Literal -radix unsigned /test3DRS/searchaddress
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/refdata
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/searchdata
add wave -noupdate -format Logic /test3DRS/curfilled
add wave -noupdate -format Logic /test3DRS/srcfilled
add wave -noupdate -format Literal /test3DRS/rowblock
add wave -noupdate -format Literal /test3DRS/macroblock
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/update_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/update_y
add wave -noupdate -format Literal /test3DRS/DUT/updatevec
add wave -noupdate -format Logic /test3DRS/DUT/update_enable
add wave -noupdate -format Logic /test3DRS/DUT/SW_AddrGen_enable
add wave -noupdate -format Logic /test3DRS/DUT/UWFilled
add wave -noupdate -format Logic /test3DRS/DUT/UW_WE
add wave -noupdate -format Logic /test3DRS/DUT/MV_Process_Done
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/MV1_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/MV1_y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/MV2_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/MV2_y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/MV3_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/MV3_y
add wave -noupdate -format Literal /test3DRS/DUT/MV1
add wave -noupdate -format Literal /test3DRS/DUT/MV2
add wave -noupdate -format Literal /test3DRS/DUT/MV3
add wave -noupdate -format Literal /test3DRS/DUT/curMV
add wave -noupdate -format Literal /test3DRS/DUT/selectedMV
add wave -noupdate -format Literal /test3DRS/DUT/SearchWin
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/CurBlock
add wave -noupdate -format Literal /test3DRS/DUT/curSAD
add wave -noupdate -format Logic /test3DRS/DUT/cur_WE
add wave -noupdate -format Logic /test3DRS/DUT/search_WE
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/cur_data_in
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/search_data_in
add wave -noupdate -format Literal /test3DRS/DUT/search_addr_in
add wave -noupdate -format Logic /test3DRS/DUT/mvselect_WE
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/curpos_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/curpos_y
add wave -noupdate -format Literal /test3DRS/DUT/curpos
add wave -noupdate -format Literal /test3DRS/DUT/UW_Data_IN
add wave -noupdate -format Literal /test3DRS/DUT/UW_address
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/updatein_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/updatein_y
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/updatein
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/vecin1
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/vecin2
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/vecin3
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/UW_Filled
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/MV_ready
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/outMV
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/UWDATA_Out
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/UW_WE
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/InputDATA
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/InputADDR
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/done
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/UWaddress_out
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/order
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/inside
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/UWposx
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/UWposy
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/UWpos
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/out_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/out_y
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/out
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/median
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/underTh
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/State
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SubState
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SubState_d
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/vectors
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/medianMV
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/UWaddress
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/UW_count
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/UWcheck_y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/UWcheck_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/check_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/check_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/limited_out_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/limited_out_y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/UWpos_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/UWpos_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/mod_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/mod_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SWcoord_mod_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SWcoord_mod_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SWcoord_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SWcoord_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/preSWcoord_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/preSWcoord_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/modSWcoord_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/modSWcoord_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/premodSWcoord_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/premodSWcoord_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/SWshift
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/addrcol
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/addrrow
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/valid
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S01
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S02
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S03
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S04
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S05
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S06
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S07
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S08
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S09
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S10
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S11
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S12
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S13
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S14
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S15
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S16
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S17
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S18
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S19
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S20
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S21
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/RADDR_S22
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr1
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr2
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr3
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr4
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr5
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr6
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr7
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr8
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr9
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr10
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr11
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr12
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr13
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr14
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr15
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr16
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr17
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr18
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr19
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr20
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr21
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/raddr22
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/readaddr
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/whichRAM
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/prewhichRAM
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/whichRAM_d
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S01
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S02
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S03
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S04
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S05
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S06
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S07
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S08
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S09
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S10
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S11
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S12
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S13
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S14
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S15
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S16
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S17
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S18
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S19
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S20
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S21
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/swaddrgen/RDATA_S22
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/WADDR_S
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/WE_S
add wave -noupdate -format Literal /test3DRS/DUT/swaddrgen/i
add wave -noupdate -format Logic /test3DRS/DUT/controller/UPen
add wave -noupdate -format Logic /test3DRS/DUT/controller/MVArray_WE
add wave -noupdate -format Literal /test3DRS/DUT/controller/curpos
add wave -noupdate -format Logic /test3DRS/DUT/controller/SWaddren
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/controller/count_x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/controller/count_y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/controller/State
add wave -noupdate -format Logic /test3DRS/DUT/controller/frameend
add wave -noupdate -format Logic /test3DRS/DUT/controller/countenable
add wave -noupdate -format Logic /test3DRS/DUT/updatewin/WE
add wave -noupdate -format Logic /test3DRS/DUT/updatewin/W_SELECT_ROW_OR_COL
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/updatewin/input_data
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/R_ROW
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/R_COL
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/row
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/col
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/updatewin/SearchOut
add wave -noupdate -format Logic /test3DRS/DUT/updatewin/UWFilled
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/write_count
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/updatewin/search_array
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/UW_row
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/UW_col
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/row
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updatewin/col
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/pe_array/search
add wave -noupdate -format Literal -radix hexadecimal /test3DRS/DUT/pe_array/current
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/pe_array/SADOUT
add wave -noupdate -format Logic /test3DRS/DUT/mvselect/WE
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvselect/SADin
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/mvselect/MVin_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/mvselect/MVin_y
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MVin
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvselect/SADSelected
add wave -noupdate -format Logic /test3DRS/DUT/mv_array_WE
add wave -noupdate -format Literal /test3DRS/DUT/MVarray_in
add wave -noupdate -format Logic /test3DRS/DUT/swaddrgen/MVwait
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/mvselect/MVselected_x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/mvselect/MVselected_y
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MVSelected
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvselect/SADmin
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MVmin
add wave -noupdate -format Literal -radix unsigned -expand /test3DRS/DUT/mvselect/SADs
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MVs
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvselect/count
add wave -noupdate -format Logic /test3DRS/DUT/mvselect/WE_delay1
add wave -noupdate -format Logic /test3DRS/DUT/mvselect/WE_delay2
add wave -noupdate -format Logic /test3DRS/DUT/mvselect/WE_delay3
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MV_delay1
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MV_delay2
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/MV_delay3
add wave -noupdate -format Logic /test3DRS/DUT/mvselect/done
add wave -noupdate -format Literal /test3DRS/DUT/mvselect/i
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/updater/lfsr1/out
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/Mdn/L1_12
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/Mdn/L1_13
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/Mdn/L1_23
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/x_diff_12
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/y_diff_12
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/swaddrgen/Mdn/x_diff_13
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/y_diff_13
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/x_diff_23
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/y_diff_23
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/vec1y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/vec1x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/vec2y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/vec2x
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/vec3y
add wave -noupdate -format Literal -radix decimal /test3DRS/DUT/swaddrgen/Mdn/vec3x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvarray/vec1x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvarray/bposy
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvarray/bposx
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvarray/vec2y
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvarray/vec3x
add wave -noupdate -format Literal -radix unsigned /test3DRS/DUT/mvarray/vec3y
add wave -noupdate -format Literal -radix binary /test3DRS/DUT/mvarray/VecMem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5351807704 ps} 0}
configure wave -namecolwidth 237
configure wave -valuecolwidth 103
configure wave -justifyvalue left
configure wave -signalnamewidth 2
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {5351335510 ps} {5352477078 ps}
