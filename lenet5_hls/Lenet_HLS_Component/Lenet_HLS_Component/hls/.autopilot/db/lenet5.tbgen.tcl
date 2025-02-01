set moduleName lenet5
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {lenet5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_layer { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_layer int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ output_r int 32 unused {pointer 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_layer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_layer_address0 sc_out sc_lv 10 signal 0 } 
	{ input_layer_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_layer_q0 sc_in sc_lv 32 signal 0 } 
	{ output_r sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_layer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_layer", "role": "address0" }} , 
 	{ "name": "input_layer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_layer", "role": "ce0" }} , 
 	{ "name": "input_layer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_layer", "role": "q0" }} , 
 	{ "name": "output_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lenet5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25381", "EstimateLatencyMax" : "25381",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_layer", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_CONVOLUTION_LAYER_1_fu_24", "Port" : "input_layer", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "11", "27", "40", "41", "42", "43"],
		"CDFG" : "CONVOLUTION_LAYER_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25380", "EstimateLatencyMax" : "25380",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_layer", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_CONVOLUTION_LAYER_1_Pipeline_copy_input_2_copy_input_3_fu_48", "Port" : "input_layer", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.IBRAM_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.OBRAM_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.OBRAM_1_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.OBRAM_2_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.OBRAM_3_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.OBRAM_4_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.OBRAM_5_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_copy_input_2_copy_input_3_fu_48", "Parent" : "1", "Child" : ["10"],
		"CDFG" : "CONVOLUTION_LAYER_1_Pipeline_copy_input_2_copy_input_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "IBRAM", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_layer", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "copy_input_2_copy_input_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_copy_input_2_copy_input_3_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56", "Parent" : "1", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.WBRAM_5_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.WBRAM_4_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.WBRAM_3_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.WBRAM_2_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.WBRAM_1_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.WBRAM_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fadd_32ns_32ns_32_4_full_dsp_1_U6", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fadd_32ns_32ns_32_4_full_dsp_1_U7", "Parent" : "11"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fadd_32ns_32ns_32_4_full_dsp_1_U8", "Parent" : "11"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fmul_32ns_32ns_32_3_max_dsp_1_U10", "Parent" : "11"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fmul_32ns_32ns_32_3_max_dsp_1_U11", "Parent" : "11"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fmul_32ns_32ns_32_3_max_dsp_1_U12", "Parent" : "11"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fmul_32ns_32ns_32_3_max_dsp_1_U13", "Parent" : "11"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.fmul_32ns_32ns_32_3_max_dsp_1_U14", "Parent" : "11"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67", "Parent" : "1", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.hconv1_local_local_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.hconv1_1_local_local_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.hconv1_2_local_local_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.hconv1_3_local_local_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.hconv1_4_local_local_U", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.fdiv_32ns_32ns_32_9_no_dsp_1_U29", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.fexp_32ns_32ns_32_8_full_dsp_1_U30", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.sparsemux_13_3_32_1_1_U31", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.urem_10ns_4ns_3_14_1_U32", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.mul_13ns_15ns_27_1_1_U33", "Parent" : "27"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.mac_muladd_10ns_3ns_10ns_13_4_1_U34", "Parent" : "27"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.fadd_32ns_32ns_32_4_full_dsp_1_U48", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.fadd_32ns_32ns_32_4_full_dsp_1_U49", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.fadd_32ns_32ns_32_4_full_dsp_1_U50", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CONVOLUTION_LAYER_1_fu_24.fmul_32ns_32ns_32_3_max_dsp_1_U51", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	lenet5 {
		input_layer {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead -1 FirstWrite -1}}
	CONVOLUTION_LAYER_1 {
		input_layer {Type I LastRead 0 FirstWrite -1}}
	CONVOLUTION_LAYER_1_Pipeline_copy_input_2_copy_input_3 {
		IBRAM {Type O LastRead -1 FirstWrite 1}
		input_layer {Type I LastRead 0 FirstWrite -1}}
	CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL {
		IBRAM {Type I LastRead 1 FirstWrite -1}
		OBRAM {Type IO LastRead 4 FirstWrite 10}
		OBRAM_1 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_2 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_3 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_4 {Type IO LastRead 4 FirstWrite 10}
		OBRAM_5 {Type IO LastRead 4 FirstWrite 10}}
	CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3 {
		OBRAM {Type I LastRead 0 FirstWrite -1}
		OBRAM_1 {Type I LastRead 0 FirstWrite -1}
		OBRAM_2 {Type I LastRead 0 FirstWrite -1}
		OBRAM_3 {Type I LastRead 0 FirstWrite -1}
		OBRAM_4 {Type I LastRead 0 FirstWrite -1}
		OBRAM_5 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25381", "Max" : "25381"}
	, {"Name" : "Interval", "Min" : "25382", "Max" : "25382"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_layer { ap_memory {  { input_layer_address0 mem_address 1 10 }  { input_layer_ce0 mem_ce 1 1 }  { input_layer_q0 mem_dout 0 32 } } }
	output_r { ap_none {  { output_r in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
