`timescale 1us/1ns

module tb_switches ();

	parameter N = 7;
	
	reg [N-1:0] i_switch;
	wire [N-1: 0] o_led;
	
	switches_to_LEDs // se hace la instaciación 
	#(.N(N))		 // se definen los parametros
	DUT				 // se da el nombre a la instaciación	
	(
	.i_switch(i_switch),
	.o_led   (o_led)
	
	);
	
	initial begin 
		$monitor ($time, "i_switch = %b, o_led= %b", i_switch, o_led);
		#1; i_switch = 6'b000000;
		#1; i_switch = 6'b000001;
		#1; i_switch = 6'b000010;
		#1; i_switch = 6'b000100;
		#1; i_switch = 6'b001001;
		#1; i_switch = 6'b010001;
		#1; i_switch = 6'b100010;
		#10; $stop; 
	end 
	
endmodule 	