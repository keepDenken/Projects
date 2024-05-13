library verilog;
use verilog.vl_types.all;
entity Project12_vlg_sample_tst is
    port(
        A_INPUT         : in     vl_logic_vector(7 downto 0);
        B_INPUT         : in     vl_logic_vector(7 downto 0);
        SEL_ALU         : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Project12_vlg_sample_tst;
