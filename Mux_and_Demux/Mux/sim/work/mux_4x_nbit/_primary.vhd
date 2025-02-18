library verilog;
use verilog.vl_types.all;
entity mux_4x_nbit is
    generic(
        bus_width       : integer := 8
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        c               : in     vl_logic_vector;
        d               : in     vl_logic_vector;
        sel             : in     vl_logic_vector(1 downto 0);
        y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bus_width : constant is 1;
end mux_4x_nbit;
