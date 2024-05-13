library verilog;
use verilog.vl_types.all;
entity Project12 is
    port(
        ANSWER          : out    vl_logic_vector(7 downto 0);
        A_INPUT         : in     vl_logic_vector(7 downto 0);
        B_INPUT         : in     vl_logic_vector(7 downto 0);
        SEL_ALU         : in     vl_logic_vector(1 downto 0)
    );
end Project12;
