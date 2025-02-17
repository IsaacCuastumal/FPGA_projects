`timescale 1ns/1ps 

module tb_Blinky_led ();

	parameter bus_width = 4; 
	
	reg clk = 0;
	reg rst_n;
	wire [bus_width -1: 0] o_led;
	
	parameter clk_1s = 1 * 10**6; // 1 sec = 10**9 ns
	parameter clk_half_period_ns = 10; // 20ns/2 = 50MHz
	parameter led_freq = 4; 

// here we instantiate the DUT

Blinky_led 
//parameters section 
#(
	.clock_freq (clk_1s/(2*clk_half_period_ns)),
	.led_freq(led_freq),
	.bus_width(bus_width)
)

blinky0
(
	.clk(clk),
	.rst_n(rst_n),
	.o_led(o_led)
);

//create here the clock signal 

always begin 
	#(clk_half_period_ns); clk = ~clk;
end

///test scenario 

initial begin 
	rst_n = 0;
	repeat (5) @(posedge clk );
	rst_n = 1;
	
	repeat (led_freq+1) @(posedge o_led);
	#100;
	$stop;
end 

endmodule 	
