module switches_to_LEDs

# (parameter N= 7)

(
input [N -1:0] i_switch,
output [N-1:0] o_led
);

	assign o_led = i_switch;
	
endmodule 