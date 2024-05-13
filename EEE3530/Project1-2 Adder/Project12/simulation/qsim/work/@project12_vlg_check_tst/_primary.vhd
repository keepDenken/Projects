library verilog;
use verilog.vl_types.all;
entity Project12_vlg_check_tst is
    port(
        ANSWER          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Project12_vlg_check_tst;
