`timescale 1us/1ns 
module tb_hex_7seg_decoder ();

	reg [3:0] in;
	wire a,b,c,d,e,f,g;
	integer i;
	
	hex_7seg_decoder  //aquí hacemos la instanciación  
	DEC_7SEG // aquí le damos el nombre y hacemos el mapping
    (
	.in(in),
	.o_a(a),
	.o_b(b),
	.o_c(c),
	.o_d(d),
	.o_e(e),
	.o_f(f),
	.o_g(g)
	);
	
	initial begin 
		$monitor ($time, "in = %b, seven_seg_code = %7b", in, {a,b,c,d,e,f,g});
		
		#1; in=0;
		for (i=0; i<16; i=i+1) begin 
			#1; in = i;
		end 
		#1; $stop;
	end 

endmodule 	