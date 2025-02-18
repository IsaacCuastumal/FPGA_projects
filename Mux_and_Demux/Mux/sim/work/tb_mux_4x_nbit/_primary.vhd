library verilog;
use verilog.vl_types.all;
entity tb_mux_4x_nbit is
    generic(
        bus_width       : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bus_width : constant is 1;
end tb_mux_4x_nbit;
