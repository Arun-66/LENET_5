set moduleName CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict IBRAM { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict OBRAM { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict OBRAM_1 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict OBRAM_2 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict OBRAM_3 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict OBRAM_4 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict OBRAM_5 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ IBRAM float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ OBRAM float 32 regular {array 784 { 0 1 } 1 1 }  }
	{ OBRAM_1 float 32 regular {array 784 { 0 1 } 1 1 }  }
	{ OBRAM_2 float 32 regular {array 784 { 0 1 } 1 1 }  }
	{ OBRAM_3 float 32 regular {array 784 { 0 1 } 1 1 }  }
	{ OBRAM_4 float 32 regular {array 784 { 0 1 } 1 1 }  }
	{ OBRAM_5 float 32 regular {array 784 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "IBRAM", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OBRAM", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "OBRAM_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "OBRAM_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "OBRAM_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "OBRAM_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "OBRAM_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ IBRAM_address0 sc_out sc_lv 10 signal 0 } 
	{ IBRAM_ce0 sc_out sc_logic 1 signal 0 } 
	{ IBRAM_q0 sc_in sc_lv 32 signal 0 } 
	{ OBRAM_address0 sc_out sc_lv 10 signal 1 } 
	{ OBRAM_ce0 sc_out sc_logic 1 signal 1 } 
	{ OBRAM_we0 sc_out sc_logic 1 signal 1 } 
	{ OBRAM_d0 sc_out sc_lv 32 signal 1 } 
	{ OBRAM_address1 sc_out sc_lv 10 signal 1 } 
	{ OBRAM_ce1 sc_out sc_logic 1 signal 1 } 
	{ OBRAM_q1 sc_in sc_lv 32 signal 1 } 
	{ OBRAM_1_address0 sc_out sc_lv 10 signal 2 } 
	{ OBRAM_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ OBRAM_1_we0 sc_out sc_logic 1 signal 2 } 
	{ OBRAM_1_d0 sc_out sc_lv 32 signal 2 } 
	{ OBRAM_1_address1 sc_out sc_lv 10 signal 2 } 
	{ OBRAM_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ OBRAM_1_q1 sc_in sc_lv 32 signal 2 } 
	{ OBRAM_2_address0 sc_out sc_lv 10 signal 3 } 
	{ OBRAM_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ OBRAM_2_we0 sc_out sc_logic 1 signal 3 } 
	{ OBRAM_2_d0 sc_out sc_lv 32 signal 3 } 
	{ OBRAM_2_address1 sc_out sc_lv 10 signal 3 } 
	{ OBRAM_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ OBRAM_2_q1 sc_in sc_lv 32 signal 3 } 
	{ OBRAM_3_address0 sc_out sc_lv 10 signal 4 } 
	{ OBRAM_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ OBRAM_3_we0 sc_out sc_logic 1 signal 4 } 
	{ OBRAM_3_d0 sc_out sc_lv 32 signal 4 } 
	{ OBRAM_3_address1 sc_out sc_lv 10 signal 4 } 
	{ OBRAM_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ OBRAM_3_q1 sc_in sc_lv 32 signal 4 } 
	{ OBRAM_4_address0 sc_out sc_lv 10 signal 5 } 
	{ OBRAM_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ OBRAM_4_we0 sc_out sc_logic 1 signal 5 } 
	{ OBRAM_4_d0 sc_out sc_lv 32 signal 5 } 
	{ OBRAM_4_address1 sc_out sc_lv 10 signal 5 } 
	{ OBRAM_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ OBRAM_4_q1 sc_in sc_lv 32 signal 5 } 
	{ OBRAM_5_address0 sc_out sc_lv 10 signal 6 } 
	{ OBRAM_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ OBRAM_5_we0 sc_out sc_logic 1 signal 6 } 
	{ OBRAM_5_d0 sc_out sc_lv 32 signal 6 } 
	{ OBRAM_5_address1 sc_out sc_lv 10 signal 6 } 
	{ OBRAM_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ OBRAM_5_q1 sc_in sc_lv 32 signal 6 } 
	{ grp_fu_77_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_77_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_77_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_77_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_77_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_81_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_81_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_81_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_81_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_81_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_85_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_85_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_85_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_85_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_85_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_89_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_89_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_89_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_89_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "IBRAM_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "IBRAM", "role": "address0" }} , 
 	{ "name": "IBRAM_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IBRAM", "role": "ce0" }} , 
 	{ "name": "IBRAM_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IBRAM", "role": "q0" }} , 
 	{ "name": "OBRAM_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM", "role": "address0" }} , 
 	{ "name": "OBRAM_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM", "role": "ce0" }} , 
 	{ "name": "OBRAM_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM", "role": "we0" }} , 
 	{ "name": "OBRAM_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM", "role": "d0" }} , 
 	{ "name": "OBRAM_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM", "role": "address1" }} , 
 	{ "name": "OBRAM_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM", "role": "ce1" }} , 
 	{ "name": "OBRAM_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM", "role": "q1" }} , 
 	{ "name": "OBRAM_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "address0" }} , 
 	{ "name": "OBRAM_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "ce0" }} , 
 	{ "name": "OBRAM_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "we0" }} , 
 	{ "name": "OBRAM_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "d0" }} , 
 	{ "name": "OBRAM_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "address1" }} , 
 	{ "name": "OBRAM_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "ce1" }} , 
 	{ "name": "OBRAM_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "q1" }} , 
 	{ "name": "OBRAM_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "address0" }} , 
 	{ "name": "OBRAM_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "ce0" }} , 
 	{ "name": "OBRAM_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "we0" }} , 
 	{ "name": "OBRAM_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "d0" }} , 
 	{ "name": "OBRAM_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "address1" }} , 
 	{ "name": "OBRAM_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "ce1" }} , 
 	{ "name": "OBRAM_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "q1" }} , 
 	{ "name": "OBRAM_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "address0" }} , 
 	{ "name": "OBRAM_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "ce0" }} , 
 	{ "name": "OBRAM_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "we0" }} , 
 	{ "name": "OBRAM_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "d0" }} , 
 	{ "name": "OBRAM_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "address1" }} , 
 	{ "name": "OBRAM_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "ce1" }} , 
 	{ "name": "OBRAM_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "q1" }} , 
 	{ "name": "OBRAM_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "address0" }} , 
 	{ "name": "OBRAM_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "ce0" }} , 
 	{ "name": "OBRAM_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "we0" }} , 
 	{ "name": "OBRAM_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "d0" }} , 
 	{ "name": "OBRAM_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "address1" }} , 
 	{ "name": "OBRAM_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "ce1" }} , 
 	{ "name": "OBRAM_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "q1" }} , 
 	{ "name": "OBRAM_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "address0" }} , 
 	{ "name": "OBRAM_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "ce0" }} , 
 	{ "name": "OBRAM_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "we0" }} , 
 	{ "name": "OBRAM_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "d0" }} , 
 	{ "name": "OBRAM_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "address1" }} , 
 	{ "name": "OBRAM_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "ce1" }} , 
 	{ "name": "OBRAM_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "q1" }} , 
 	{ "name": "grp_fu_77_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_77_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_77_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_77_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_77_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_77_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_77_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_77_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_77_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_77_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_81_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_81_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_81_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_81_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_81_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_81_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_81_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_81_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_81_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_81_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_85_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_85_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_85_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_85_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_85_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_85_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_85_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_85_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_85_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_85_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_89_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_89_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_89_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_89_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_89_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_89_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_89_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_89_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19610", "EstimateLatencyMax" : "19610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "IBRAM", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OBRAM", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "OBRAM_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "OBRAM_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "OBRAM_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "OBRAM_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "OBRAM_5", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "ROW_K_COL_K_ROW_COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WBRAM_5_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WBRAM_4_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WBRAM_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WBRAM_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WBRAM_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WBRAM_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL {
		IBRAM {Type I LastRead 1 FirstWrite -1}
		OBRAM {Type IO LastRead 4 FirstWrite 10}
		OBRAM_1 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_2 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_3 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_4 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_5 {Type IO LastRead 4 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19610", "Max" : "19610"}
	, {"Name" : "Interval", "Min" : "19610", "Max" : "19610"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	IBRAM { ap_memory {  { IBRAM_address0 mem_address 1 10 }  { IBRAM_ce0 mem_ce 1 1 }  { IBRAM_q0 mem_dout 0 32 } } }
	OBRAM { ap_memory {  { OBRAM_address0 mem_address 1 10 }  { OBRAM_ce0 mem_ce 1 1 }  { OBRAM_we0 mem_we 1 1 }  { OBRAM_d0 mem_din 1 32 }  { OBRAM_address1 MemPortADDR2 1 10 }  { OBRAM_ce1 MemPortCE2 1 1 }  { OBRAM_q1 MemPortDOUT2 0 32 } } }
	OBRAM_1 { ap_memory {  { OBRAM_1_address0 mem_address 1 10 }  { OBRAM_1_ce0 mem_ce 1 1 }  { OBRAM_1_we0 mem_we 1 1 }  { OBRAM_1_d0 mem_din 1 32 }  { OBRAM_1_address1 MemPortADDR2 1 10 }  { OBRAM_1_ce1 MemPortCE2 1 1 }  { OBRAM_1_q1 MemPortDOUT2 0 32 } } }
	OBRAM_2 { ap_memory {  { OBRAM_2_address0 mem_address 1 10 }  { OBRAM_2_ce0 mem_ce 1 1 }  { OBRAM_2_we0 mem_we 1 1 }  { OBRAM_2_d0 mem_din 1 32 }  { OBRAM_2_address1 MemPortADDR2 1 10 }  { OBRAM_2_ce1 MemPortCE2 1 1 }  { OBRAM_2_q1 MemPortDOUT2 0 32 } } }
	OBRAM_3 { ap_memory {  { OBRAM_3_address0 mem_address 1 10 }  { OBRAM_3_ce0 mem_ce 1 1 }  { OBRAM_3_we0 mem_we 1 1 }  { OBRAM_3_d0 mem_din 1 32 }  { OBRAM_3_address1 MemPortADDR2 1 10 }  { OBRAM_3_ce1 MemPortCE2 1 1 }  { OBRAM_3_q1 MemPortDOUT2 0 32 } } }
	OBRAM_4 { ap_memory {  { OBRAM_4_address0 mem_address 1 10 }  { OBRAM_4_ce0 mem_ce 1 1 }  { OBRAM_4_we0 mem_we 1 1 }  { OBRAM_4_d0 mem_din 1 32 }  { OBRAM_4_address1 MemPortADDR2 1 10 }  { OBRAM_4_ce1 MemPortCE2 1 1 }  { OBRAM_4_q1 MemPortDOUT2 0 32 } } }
	OBRAM_5 { ap_memory {  { OBRAM_5_address0 mem_address 1 10 }  { OBRAM_5_ce0 mem_ce 1 1 }  { OBRAM_5_we0 mem_we 1 1 }  { OBRAM_5_d0 mem_din 1 32 }  { OBRAM_5_address1 MemPortADDR2 1 10 }  { OBRAM_5_ce1 MemPortCE2 1 1 }  { OBRAM_5_q1 MemPortDOUT2 0 32 } } }
}
