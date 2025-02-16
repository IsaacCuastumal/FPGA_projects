library verilog;
use verilog.vl_types.all;
entity switches_to_LEDs is
    generic(
        N               : integer := 7
    );
    port(
        i_switch        : in     vl_logic_vector;
        o_led           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end switches_to_LEDs;
