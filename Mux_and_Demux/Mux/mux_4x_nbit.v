module mux_4x_nbit 

#(parameter bus_width = 8)

(
	input [bus_width -1:0] a,
	input [bus_width -1:0] b,
	input [bus_width -1:0] c,
	input [bus_width -1:0] d,
	input [1:0] sel,
	output reg [bus_width -1:0] y
);

	always @(*) begin 
		case (sel) 
			2'd0: begin y=a; end
			2'd1: begin y=b; end
			2'd2: begin y=c; end
			2'd3: begin y=d; end
			default: begin y=a; end
		endcase 
	end 

endmodule 	