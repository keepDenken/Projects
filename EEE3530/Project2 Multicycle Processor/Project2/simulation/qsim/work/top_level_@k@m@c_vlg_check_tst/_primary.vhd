library verilog;
use verilog.vl_types.all;
entity top_level_KMC_vlg_check_tst is
    port(
        ADDRESS         : in     vl_logic_vector(63 downto 0);
        CURRENT_PC      : in     vl_logic_vector(63 downto 0);
        LOOK            : in     vl_logic_vector(63 downto 0);
        PROBE           : in     vl_logic_vector(63 downto 0);
        READ_VALUE      : in     vl_logic_vector(63 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_level_KMC_vlg_check_tst;
