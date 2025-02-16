library verilog;
use verilog.vl_types.all;
entity adder_nbit_top is
    generic(
        N               : integer := 3
    );
    port(
        i_a             : in     vl_logic_vector;
        i_b             : in     vl_logic_vector;
        o_sum           : out    vl_logic_vector;
        o_HEX           : out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end adder_nbit_top;
