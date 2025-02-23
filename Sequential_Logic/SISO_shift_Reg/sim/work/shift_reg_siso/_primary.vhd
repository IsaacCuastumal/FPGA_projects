library verilog;
use verilog.vl_types.all;
entity shift_reg_siso is
    port(
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        sdi             : in     vl_logic;
        sdo             : out    vl_logic
    );
end shift_reg_siso;
