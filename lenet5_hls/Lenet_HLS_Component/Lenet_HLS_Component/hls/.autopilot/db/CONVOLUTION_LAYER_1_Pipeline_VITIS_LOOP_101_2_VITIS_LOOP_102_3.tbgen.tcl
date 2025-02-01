set moduleName CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3
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
set C_modelName {CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict OBRAM { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict OBRAM_1 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict OBRAM_2 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict OBRAM_3 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict OBRAM_4 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict OBRAM_5 { MEM_WIDTH 32 MEM_SIZE 3136 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ OBRAM float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ OBRAM_1 float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ OBRAM_2 float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ OBRAM_3 float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ OBRAM_4 float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ OBRAM_5 float 32 regular {array 784 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "OBRAM", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OBRAM_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OBRAM_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OBRAM_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OBRAM_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OBRAM_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ OBRAM_address0 sc_out sc_lv 10 signal 0 } 
	{ OBRAM_ce0 sc_out sc_logic 1 signal 0 } 
	{ OBRAM_q0 sc_in sc_lv 32 signal 0 } 
	{ OBRAM_1_address0 sc_out sc_lv 10 signal 1 } 
	{ OBRAM_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ OBRAM_1_q0 sc_in sc_lv 32 signal 1 } 
	{ OBRAM_2_address0 sc_out sc_lv 10 signal 2 } 
	{ OBRAM_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ OBRAM_2_q0 sc_in sc_lv 32 signal 2 } 
	{ OBRAM_3_address0 sc_out sc_lv 10 signal 3 } 
	{ OBRAM_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ OBRAM_3_q0 sc_in sc_lv 32 signal 3 } 
	{ OBRAM_4_address0 sc_out sc_lv 10 signal 4 } 
	{ OBRAM_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ OBRAM_4_q0 sc_in sc_lv 32 signal 4 } 
	{ OBRAM_5_address0 sc_out sc_lv 10 signal 5 } 
	{ OBRAM_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ OBRAM_5_q0 sc_in sc_lv 32 signal 5 } 
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
 	{ "name": "OBRAM_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM", "role": "address0" }} , 
 	{ "name": "OBRAM_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM", "role": "ce0" }} , 
 	{ "name": "OBRAM_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM", "role": "q0" }} , 
 	{ "name": "OBRAM_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "address0" }} , 
 	{ "name": "OBRAM_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "ce0" }} , 
 	{ "name": "OBRAM_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_1", "role": "q0" }} , 
 	{ "name": "OBRAM_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "address0" }} , 
 	{ "name": "OBRAM_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "ce0" }} , 
 	{ "name": "OBRAM_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_2", "role": "q0" }} , 
 	{ "name": "OBRAM_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "address0" }} , 
 	{ "name": "OBRAM_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "ce0" }} , 
 	{ "name": "OBRAM_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_3", "role": "q0" }} , 
 	{ "name": "OBRAM_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "address0" }} , 
 	{ "name": "OBRAM_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "ce0" }} , 
 	{ "name": "OBRAM_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_4", "role": "q0" }} , 
 	{ "name": "OBRAM_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "address0" }} , 
 	{ "name": "OBRAM_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "ce0" }} , 
 	{ "name": "OBRAM_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OBRAM_5", "role": "q0" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4739", "EstimateLatencyMax" : "4739",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OBRAM", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OBRAM_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OBRAM_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OBRAM_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OBRAM_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OBRAM_5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_2_VITIS_LOOP_102_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter34", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter34", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hconv1_local_local_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hconv1_1_local_local_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hconv1_2_local_local_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hconv1_3_local_local_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hconv1_4_local_local_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fexp_32ns_32ns_32_8_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U31", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_10ns_4ns_3_14_1_U32", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_13ns_15ns_27_1_1_U33", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_3ns_10ns_13_4_1_U34", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3 {
		OBRAM {Type I LastRead 0 FirstWrite -1}
		OBRAM_1 {Type I LastRead 0 FirstWrite -1}
		OBRAM_2 {Type I LastRead 0 FirstWrite -1}
		OBRAM_3 {Type I LastRead 0 FirstWrite -1}
		OBRAM_4 {Type I LastRead 0 FirstWrite -1}
		OBRAM_5 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4739", "Max" : "4739"}
	, {"Name" : "Interval", "Min" : "4739", "Max" : "4739"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	OBRAM { ap_memory {  { OBRAM_address0 mem_address 1 10 }  { OBRAM_ce0 mem_ce 1 1 }  { OBRAM_q0 mem_dout 0 32 } } }
	OBRAM_1 { ap_memory {  { OBRAM_1_address0 mem_address 1 10 }  { OBRAM_1_ce0 mem_ce 1 1 }  { OBRAM_1_q0 mem_dout 0 32 } } }
	OBRAM_2 { ap_memory {  { OBRAM_2_address0 mem_address 1 10 }  { OBRAM_2_ce0 mem_ce 1 1 }  { OBRAM_2_q0 mem_dout 0 32 } } }
	OBRAM_3 { ap_memory {  { OBRAM_3_address0 mem_address 1 10 }  { OBRAM_3_ce0 mem_ce 1 1 }  { OBRAM_3_q0 mem_dout 0 32 } } }
	OBRAM_4 { ap_memory {  { OBRAM_4_address0 mem_address 1 10 }  { OBRAM_4_ce0 mem_ce 1 1 }  { OBRAM_4_q0 mem_dout 0 32 } } }
	OBRAM_5 { ap_memory {  { OBRAM_5_address0 mem_address 1 10 }  { OBRAM_5_ce0 mem_ce 1 1 }  { OBRAM_5_q0 mem_dout 0 32 } } }
}
