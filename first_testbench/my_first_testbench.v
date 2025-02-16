module my_first_testbench
(
///no inputs here! 
);

	reg [7:0] a=0;
	reg [7:0] b= 0;
	wire [8:0] sum;

adder8bit ADDER1 
(
.a(a),
.b(b),
.sum(sum)
);

initial begin 
	$monitor ("a=%d, b=%d, sum=%d", a, b, sum);
end 

initial begin 
#1; 
a = 1; 
#1;
b = 10;
#1;
a = 3 ; b= 100;
#1;
a = 105; b= 50;
#1;
a= 255; b= 255;
end 

endmodule 