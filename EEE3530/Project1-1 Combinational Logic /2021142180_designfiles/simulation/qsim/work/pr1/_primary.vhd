library verilog;
use verilog.vl_types.all;
entity pr1 is
    port(
        X               : out    vl_logic;
        INPUT           : in     vl_logic_vector(3 downto 0)
    );
end pr1;
