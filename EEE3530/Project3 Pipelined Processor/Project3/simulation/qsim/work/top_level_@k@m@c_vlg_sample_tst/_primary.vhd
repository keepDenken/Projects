library verilog;
use verilog.vl_types.all;
entity top_level_KMC_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        CONSTANT_4      : in     vl_logic_vector(63 downto 0);
        INSTRUCTION     : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_level_KMC_vlg_sample_tst;
