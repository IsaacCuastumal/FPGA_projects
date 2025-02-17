library verilog;
use verilog.vl_types.all;
entity Blinky_led is
    generic(
        clock_freq      : integer := 50000000;
        led_freq        : integer := 2;
        bus_width       : integer := 4
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        o_led           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clock_freq : constant is 1;
    attribute mti_svvh_generic_type of led_freq : constant is 1;
    attribute mti_svvh_generic_type of bus_width : constant is 1;
end Blinky_led;
