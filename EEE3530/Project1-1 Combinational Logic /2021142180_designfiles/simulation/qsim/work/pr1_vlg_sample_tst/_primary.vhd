library verilog;
use verilog.vl_types.all;
entity pr1_vlg_sample_tst is
    port(
        INPUT           : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end pr1_vlg_sample_tst;
