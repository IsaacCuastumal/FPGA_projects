`timescale 1us/1ns

module tb_decoder_nbit ();
	
	parameter dec_width = 4; 
	reg [dec_width-1:0] a;
	reg enable ;
	wire [2**dec_width-1:0] y;
	
	integer i; 
	
	//DUT instantiate 
	
	decoder_nbit
	#(.N(dec_width))
	DEC1
	(
		.a(a),
		.enable(enable),
		.y(y)
	);
	
	initial begin 
		$monitor ($time, "a = %d, enable = %b, y=%b", a, enable, y);
		#1; a=0; enable = 0;
		for (i = 0; i<2**dec_width; i=i+1) begin 
			#1; a=i; enable = 1;
		end 
	end 
endmodule 	