library verilog;
use verilog.vl_types.all;
entity decoder_nbit is
    generic(
        N               : integer := 3
    );
    port(
        a               : in     vl_logic_vector;
        enable          : in     vl_logic;
        y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end decoder_nbit;
