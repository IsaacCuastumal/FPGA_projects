library verilog;
use verilog.vl_types.all;
entity tb_Blinky_led is
    generic(
        bus_width       : integer := 4;
        clk_1s          : integer := 1000000;
        clk_half_period_ns: integer := 10;
        led_freq        : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bus_width : constant is 1;
    attribute mti_svvh_generic_type of clk_1s : constant is 1;
    attribute mti_svvh_generic_type of clk_half_period_ns : constant is 1;
    attribute mti_svvh_generic_type of led_freq : constant is 1;
end tb_Blinky_led;
