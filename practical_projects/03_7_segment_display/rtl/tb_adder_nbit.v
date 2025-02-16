`timescale 1us/1ns

module tb_adder_nbit ();

	parameter ADDER_WIDTH = 10;
	reg  [ADDER_WIDTH - 1:0] a;
	reg  [ADDER_WIDTH - 1:0] b;
	wire [ADDER_WIDTH :0] 	 sum;

	//se procede a hacer la instanciación 
	adder_nbit
	#(.N(ADDER_WIDTH))
    ADDER1
	(
		.a(a),
		.b(b),
		.sum(sum)
	);
	
	
	//create stimulus 
	initial begin 
		$monitor ($time, "a=%d, b=%d, sum=%d", a,b,sum);
		#1; a = 10 ; b= 5000;
		#2; a = 300 ; b= 150;
		#1; a = 2250 ; b= 1500;
		#1; a = 500000 ; b= 150500;
		#1; a = 630 ; b= 3000;
		#1; $stop;
	end 

endmodule 	
		