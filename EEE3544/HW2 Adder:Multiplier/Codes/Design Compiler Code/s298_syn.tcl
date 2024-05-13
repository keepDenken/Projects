set DESIGN_NAME "s298"
set REPORTS_DIR "${DESIGN_REF_DATA_PATH}/reports"
set RESULTS_DIR "${DESIGN_REF_DATA_PATH}/outputs"
analyze -format verilog ${DESIGN_REF_DATA_PATH}/rtl/s298.v
elaborate ${DESIGN_NAME}
create_clock { "CK" } -name "CK" -period 10 -waveform { 0 5 }
compile
write -f verilog -h -o ${RESULTS_DIR}/${DESIGN_NAME}_mapped.v
report_timing > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.timing.rpt
report_area > ${REPORTS_DIR}/${DESIGN_NAME}.mapped.area.rpt
exit
