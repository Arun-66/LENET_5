set ModuleHierarchy {[{
"Name" : "lenet5","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_CONVOLUTION_LAYER_1_fu_24","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_CONVOLUTION_LAYER_1_Pipeline_copy_input_2_copy_input_3_fu_48","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "copy_input_2_copy_input_3","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_CONVOLUTION_LAYER_1_Pipeline_ROW_K_COL_K_ROW_COL_fu_56","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ROW_K_COL_K_ROW_COL","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_CONVOLUTION_LAYER_1_Pipeline_VITIS_LOOP_101_2_VITIS_LOOP_102_3_fu_67","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_101_2_VITIS_LOOP_102_3","ID" : "7","Type" : "pipeline"},]},]},]
}]}