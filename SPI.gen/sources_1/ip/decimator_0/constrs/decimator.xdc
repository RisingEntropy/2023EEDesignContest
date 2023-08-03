set rateCedecimator40 decimator_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecimator40 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecimator40/Q]] IS_ENABLE]]
set rateCedecimator40000000 decimator_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecimator40000000 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecimator40000000/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsdecimator40 -to $rateCellsdecimator40 -setup 40
set_multicycle_path -from $rateCellsdecimator40 -to $rateCellsdecimator40 -hold 39
set_multicycle_path -from $rateCellsdecimator40 -to $rateCellsdecimator40000000 -setup 40
set_multicycle_path -from $rateCellsdecimator40 -to $rateCellsdecimator40000000 -hold 39
set_multicycle_path -from $rateCellsdecimator40000000 -to $rateCellsdecimator40 -setup 40
set_multicycle_path -from $rateCellsdecimator40000000 -to $rateCellsdecimator40 -hold 39
set_multicycle_path -from $rateCellsdecimator40000000 -to $rateCellsdecimator40000000 -setup 40000000
set_multicycle_path -from $rateCellsdecimator40000000 -to $rateCellsdecimator40000000 -hold 39999999
