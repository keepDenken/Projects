library verilog;
use verilog.vl_types.all;
entity top_level_KMC is
    port(
        ALUsrc          : out    vl_logic;
        clock           : in     vl_logic;
        INSTRUCTION     : in     vl_logic_vector(31 downto 0);
        CONSTANT_4      : in     vl_logic_vector(63 downto 0);
        ADDRESS         : out    vl_logic_vector(63 downto 0);
        CURRENT_PC      : out    vl_logic_vector(63 downto 0);
        ForwardA        : out    vl_logic_vector(1 downto 0);
        ForwardB        : out    vl_logic_vector(1 downto 0);
        LOOK            : out    vl_logic_vector(63 downto 0);
        op1             : out    vl_logic_vector(63 downto 0);
        op2             : out    vl_logic_vector(63 downto 0);
        PROBE           : out    vl_logic_vector(63 downto 0);
        READ_VALUE      : out    vl_logic_vector(63 downto 0);
        result          : out    vl_logic_vector(63 downto 0)
    );
end top_level_KMC;
