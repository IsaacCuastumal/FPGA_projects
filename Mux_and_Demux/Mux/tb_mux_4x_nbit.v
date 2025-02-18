`timescale 1us/1ns 

module tb_mux_4x_nbit();

	parameter bus_width = 8;
	reg [bus_width -1:0] a;
	reg [bus_width -1:0] b;
	reg [bus_width -1:0] c;
	reg [bus_width -1:0] d;
	reg [1:0] sel;
	wire [bus_width-1:0] y;
	
	integer i;
	
	mux_4x_nbit
		#(.bus_width(bus_width))
		MUX0
		(
		.a(a),
		.b(b),
		.c(c),
		.d(d),
		.sel(sel),
		.y(y)
		);
		
	initial begin 
		$monitor ($time, "a=%d, b=%d, c=%d, d=%d, sel=%d, y=%d", a,b,c,d,sel,y);
		#1; sel=0; a=0;b=0;c=0;d=0;
		for (i=0; i<8; i=i+1)begin 
			#1; sel = $urandom()%4; a = $urandom(); b= $urandom();
									c = $urandom(); d= $urandom();
		end 
	end 

endmodule 	