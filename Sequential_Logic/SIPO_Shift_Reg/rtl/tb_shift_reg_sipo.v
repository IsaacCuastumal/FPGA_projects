`timescale 1us/1ns

module tb_shift_reg_sipo ();

	reg sdi;
	reg clk = 0;
	reg reset_n;
	wire [3:0] q; 
	
	shift_reg_sipo SIPO0
	(
		.reset_n(reset_n),
		.clk(clk),
		.sdi(sdi),
		.q(q)
	);
	
	always begin 
	#0.5 clk = ~clk;
	end 
	
	initial begin 
	#1; //first a reset is applied to circuit
	reset_n = 0; sdi = 0; 
	#1.3; // release reset 
	reset_n = 1;
	repeat (2) @(posedge clk);

	//set SDI for 1 clock 
	@(posedge clk); sdi = 1'b1; 
	@(posedge clk); sdi = 1'b0;
	
	//set sdi for 2 clocks 
	repeat (4) @(posedge clk);
	@(posedge clk); sdi = 1'b1;
	repeat (2) @(posedge clk); sdi= 1'b0;
	
	
	//set SDI with '101' during 3 clocks
	repeat(3) @(posedge clk); sdi = 1'b1;
	@(posedge clk); sdi = 1'b1;
	@(posedge clk); sdi = 1'b1;
	@(posedge clk); sdi = 1'b0;
	
	end

	initial begin 
	
	#40 $stop;
	
	end
	
endmodule 	
	

	
	
	