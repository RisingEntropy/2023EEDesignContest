set rateCeconfigurablereceiver40 configurablereceiver_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsconfigurablereceiver40 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeconfigurablereceiver40/Q]] IS_ENABLE]]
set rateCeconfigurablereceiver80 configurablereceiver_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsconfigurablereceiver80 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeconfigurablereceiver80/Q]] IS_ENABLE]]
set rateCeconfigurablereceiver160 configurablereceiver_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsconfigurablereceiver160 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeconfigurablereceiver160/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsconfigurablereceiver40 -to $rateCellsconfigurablereceiver40 -setup 40
set_multicycle_path -from $rateCellsconfigurablereceiver40 -to $rateCellsconfigurablereceiver40 -hold 39
set_multicycle_path -from $rateCellsconfigurablereceiver40 -to $rateCellsconfigurablereceiver80 -setup 40
set_multicycle_path -from $rateCellsconfigurablereceiver40 -to $rateCellsconfigurablereceiver80 -hold 39
set_multicycle_path -from $rateCellsconfigurablereceiver40 -to $rateCellsconfigurablereceiver160 -setup 40
set_multicycle_path -from $rateCellsconfigurablereceiver40 -to $rateCellsconfigurablereceiver160 -hold 39
set_multicycle_path -from $rateCellsconfigurablereceiver80 -to $rateCellsconfigurablereceiver40 -setup 40
set_multicycle_path -from $rateCellsconfigurablereceiver80 -to $rateCellsconfigurablereceiver40 -hold 39
set_multicycle_path -from $rateCellsconfigurablereceiver80 -to $rateCellsconfigurablereceiver80 -setup 80
set_multicycle_path -from $rateCellsconfigurablereceiver80 -to $rateCellsconfigurablereceiver80 -hold 79
set_multicycle_path -from $rateCellsconfigurablereceiver80 -to $rateCellsconfigurablereceiver160 -setup 80
set_multicycle_path -from $rateCellsconfigurablereceiver80 -to $rateCellsconfigurablereceiver160 -hold 79
set_multicycle_path -from $rateCellsconfigurablereceiver160 -to $rateCellsconfigurablereceiver40 -setup 40
set_multicycle_path -from $rateCellsconfigurablereceiver160 -to $rateCellsconfigurablereceiver40 -hold 39
set_multicycle_path -from $rateCellsconfigurablereceiver160 -to $rateCellsconfigurablereceiver80 -setup 80
set_multicycle_path -from $rateCellsconfigurablereceiver160 -to $rateCellsconfigurablereceiver80 -hold 79
set_multicycle_path -from $rateCellsconfigurablereceiver160 -to $rateCellsconfigurablereceiver160 -setup 160
set_multicycle_path -from $rateCellsconfigurablereceiver160 -to $rateCellsconfigurablereceiver160 -hold 159
