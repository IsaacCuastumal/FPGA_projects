library verilog;
use verilog.vl_types.all;
entity tb_adder_nbit is
    generic(
        ADDER_WIDTH     : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDER_WIDTH : constant is 1;
end tb_adder_nbit;
