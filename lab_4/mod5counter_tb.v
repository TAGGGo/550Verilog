`timescale 1 ns / 100 ps

always
	#10	clock = ~clock;
module mod5counter_tb();
	reg clk, reset;
	reg w, cout;
	reg clock;
	wire cout;
	
	counter mod5counter(clk, reset, w, cout);
	
	integer index;
	integer error;
	
	@(negedge clock);
	assign w = 1'b1;
	assign clk = 1'b0;
	assign reset = 1'b1;
	
	@
	
	for(index = 0; index < 1000; index = index + 1) 
	begin
		
		