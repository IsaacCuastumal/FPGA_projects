library verilog;
use verilog.vl_types.all;
entity ripple_adder_4bit_structural is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        carry_in        : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        carry_out       : out    vl_logic
    );
end ripple_adder_4bit_structural;
