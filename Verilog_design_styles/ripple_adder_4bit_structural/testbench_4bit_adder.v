module testbench_4bit_adder();

	reg[3:0] a;
	reg[3:0] b;
	reg cin;
	wire [3:0] sum;
	wire cout;
	
	integer i,j;
	
	
	ripple_adder_4bit_structural RIPPLE_ADD_4BIT
	
	(
		.a(a),
		.b(b),
		.carry_in(cin),
		.sum(sum),
		.carry_out(cout)
	);
	
	initial begin 
		$monitor ("a=%d, b=%d, carry_in= %0b, sum=%d, carry_out=%b", a,b,cin,sum,cout);
		
	end 
	
	initial begin 
		#1; a= 4'b0100; b=4'b0100; cin = 0;
		#1; a= 4'b1000; b=4'b0100; cin = 1;
		#1; a= 4'b1000; b=4'b0001; cin = 0;
		#1; a= 4'b0001; b=4'b0001; cin = 1;
		#1; a= 4'b0010; b=4'b1000; cin = 0;
		#1; a= 4'b0100; b=4'b0001; cin = 1;
	
	for (i = 0; i<2; i=i+1)begin 
		for(j=0; j<2; j=j+1)begin 
			#1 a = i; b= j; cin = 0;
		end 
	end 
	end 
endmodule 	