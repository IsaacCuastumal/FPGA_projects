library verilog;
use verilog.vl_types.all;
entity tb_switches is
    generic(
        N               : integer := 7
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end tb_switches;
