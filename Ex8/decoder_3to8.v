module decoder_3to8
	(
		input [2:0] a,
		input enable,
		output reg [7:0] y
	);
	
	always @ (*) begin // here i'm using wildcard but it can also be use 'a' or 'enable' inside sensitivity list
		if (enable == 0)
			y = 8'b0;
		else begin 
			case (a) // here it checks all possible combinatios 
				3'b000: y= 8'b00000001;
				3'b001: y= 8'b00000010;
				3'b010: y= 8'b00000100;
				3'b011: y= 8'b00001000;
				3'b100: y= 8'b00010000;
				3'b101: y= 8'b00100000;
				3'b110: y= 8'b01000000;
				3'b111: y= 8'b10000000;
				//Important: it is always usefull to create a default value to prevent latch creation 
				default: y = 8'b00000000;
			endcase 
		end	
	end			
endmodule 				