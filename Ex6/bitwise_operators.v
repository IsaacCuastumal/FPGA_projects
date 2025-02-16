module bitwise_operators (

);

	reg [5:0] x = 0;  //6bit variable
	reg [5:0] y = 0;	//6bit variable
	reg [5:0] result = 0; //6bit variable
	
	initial begin 
	$monitor("MON x=%b, y=%b, result=%b,", x, y, result);
	end 
	
	initial begin 
	#1; // wait 1 unit time between examples 
	x = 6'b11_0001;
	y = 6'b00_0101;
	result = x & y; //AND
	
	#1;
	result = ~(x&y); 
	
	#1; 
	x= 6'b10_0101;
	y = 6'b01_1011;
	result = x|y; //OR
	
	#1; 
	result = ~(x | y);
	
	#1;
	x= 6'b11_1011;
	y= 6'b01_1000;
	result = x ^ y; //XOR
	
	
	#1; //NXOR is used to check if x = y
	result = x ~^ y; // NXOR
	
	#1
	x=y; 
	result = ~(x ^y);
	end
	
endmodule 
	
	
	