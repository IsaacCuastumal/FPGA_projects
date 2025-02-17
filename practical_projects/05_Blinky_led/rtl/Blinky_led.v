module Blinky_led 
 // parameter section
 
#(
	parameter clock_freq = 50_000_000, 
	parameter led_freq = 2,
	parameter bus_width = 4
)

//port section
(
	input clk,
	input rst_n,
	output [bus_width-1: 0] o_led
);

	function integer clogb2 (input [31:0] value);
		integer i;
		begin 
			clogb2 = 0;
			for (i=0; 2**i<value; i=i+1) begin 
				clogb2 = i +1;
			end 
		end 	
	endfunction 	
	
	localparam freq_ratio = (clock_freq + led_freq - 1)/ led_freq; 
	localparam cnt_width = clogb2(freq_ratio);
	localparam cnt_max = (freq_ratio >>1) - 1; 

///internal logic 

	reg [cnt_width -1: 0] counter;
	reg [bus_width - 1: 0] LED;
	
	wire counter_max;
	
	assign counter_max = (counter == cnt_max);
	
	always @(posedge clk or negedge rst_n) begin 
		if (!rst_n)
			counter <=0;
		else if (counter_max)
			counter <=0;
		else 
			counter <= counter + 1'b1;
	end 

///register used to toggle the LEDs
	always @(posedge clk or negedge rst_n) begin 
		if (!rst_n)
			LED <= 0;
		else if (counter_max)
			LED <= ~LED;
	end 

	assign o_led = LED;


endmodule 	