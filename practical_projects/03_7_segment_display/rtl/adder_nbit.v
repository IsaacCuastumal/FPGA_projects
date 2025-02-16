module adder_nbit

	#( parameter N=3)
	
	//ports section 
	(
	input [N-1:0] a, 
	input [N-1:0] b,
	output reg [N:0] sum // se debe definir como REG porque va adder_nbit
							// a estar a la izquierda de un "procedure"
	);
	
	//Wildcard operator is the best option for procedures 
	// sensitivity list (control list)
	
	
	always @(*) begin 
		sum [N:0] = a[N-1:0] + b[N-1:0];
	end 

endmodule 	
	