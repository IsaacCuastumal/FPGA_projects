library verilog;
use verilog.vl_types.all;
entity tb_decoder_nbit is
    generic(
        dec_width       : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dec_width : constant is 1;
end tb_decoder_nbit;
