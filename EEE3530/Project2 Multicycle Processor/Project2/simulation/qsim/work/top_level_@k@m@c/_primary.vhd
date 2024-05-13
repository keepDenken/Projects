library verilog;
use verilog.vl_types.all;
entity top_level_KMC is
    port(
        ADDRESS         : out    vl_logic_vector(63 downto 0);
        INSTRUCTION     : in     vl_logic_vector(31 downto 0);
        clock           : in     vl_logic;
        INIT_Enable     : in     vl_logic;
        INIT_VALUE      : in     vl_logic_vector(63 downto 0);
        CURRENT_PC      : out    vl_logic_vector(63 downto 0);
        LOOK            : out    vl_logic_vector(63 downto 0);
        PROBE           : out    vl_logic_vector(63 downto 0);
        READ_VALUE      : out    vl_logic_vector(63 downto 0)
    );
end top_level_KMC;
