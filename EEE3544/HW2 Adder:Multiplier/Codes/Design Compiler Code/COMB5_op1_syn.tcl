set DESIGN_NAME Top_5
set REPORTS_DIR ${DESIGN_REF_DATA_PATH}/reports/op1
set RESULTS_DIR ${DESIGN_REF_DATA_PATH}/outputs/op1
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/1_bit_FA.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/1_bit_HA.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/4_bit_RCA.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/4_bit_CSA.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/32_bit_RCA.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/32_bit_CSA.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/ROW_MUL.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/32_bit_MUL.v
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/${DESIGN_NAME}.v
elaborate ${DESIGN_NAME}
current_design ${DESIGN_NAME}
create_clock { "clk" } -name "clk" -period 10 -waveform { 0 5 }
compile
write -f verilog -h -o ${RESULTS_DIR}/${DESIGN_NAME}_mapped.v
report_timing > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.timing.rpt
report_area > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
exit
