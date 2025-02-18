library verilog;
use verilog.vl_types.all;
entity decoder_4to16 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        d               : out    vl_logic_vector(15 downto 0)
    );
end decoder_4to16;
