library verilog;
use verilog.vl_types.all;
entity adder8bit is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        sum             : out    vl_logic_vector(8 downto 0)
    );
end adder8bit;
