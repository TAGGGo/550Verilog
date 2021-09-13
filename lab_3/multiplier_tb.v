// set the timescale
`timescale 1 ns / 100 ps

module multiplier_tb(); // testbenches take no arguments
 	// set up inputs of NAND gate as registers so they can be manipulated at will
 	reg [4:0] in1;
 	reg [4:0] in2;
 	
 	// clocks are useful for testbenches because they allow you to check your
 	// circuit at regular intervals large enough for signals to propogate
 	reg clock;
 	
 	// set up output of NAND gate as wire
 	wire [9:0] s;
	
 	// prepare any other variables you want - nothing is off-limits in a TB
 	integer num_errors;
 	
 	// instantiate the NAND gate
 	multiplier my_multiplier (in1, in2, s);
 	
 	// begin simulation
 	initial begin
       	$display($time, " simulation start");
       	
       	clock = 1'b0;
       	num_errors = 0;
			
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00000;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b0 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
	 
	 @(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00000;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00001;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00010;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00011;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00100;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00101;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00000;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0000000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00001;
    
    @(negedge clock);
    if (s != 10'b0000000001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00010;
    
    @(negedge clock);
    if (s != 10'b0000000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00011;
    
    @(negedge clock);
    if (s != 10'b0000000011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00100;
    
    @(negedge clock);
    if (s != 10'b0000000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00101;
    
    @(negedge clock);
    if (s != 10'b0000000101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000000111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000001001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0000001011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0000001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0000001101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0000001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0000001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0000010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0000010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0000010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0000010011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0000010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0000010101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0000010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0000010111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0000011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0000011001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0000011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0000011011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0000011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0000011101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0000011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00001;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0000011111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b00010;
    
    @(negedge clock);
    if (s != 10'b0000000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b00011;
    
    @(negedge clock);
    if (s != 10'b0000000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b00100;
    
    @(negedge clock);
    if (s != 10'b0000001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b00101;
    
    @(negedge clock);
    if (s != 10'b0000001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0000010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0000011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0000011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0000011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0000011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0000100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0000100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0000100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0000100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0000101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0000101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0000101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0000101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0000110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0000110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0000110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0000110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0000111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0000111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0000111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00010;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0000111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b00011;
    
    @(negedge clock);
    if (s != 10'b0000001001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b00100;
    
    @(negedge clock);
    if (s != 10'b0000001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b00101;
    
    @(negedge clock);
    if (s != 10'b0000001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000010101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000011011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0000100001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0000100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0000100111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0000101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0000101101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0000110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0000110011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0000110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0000111001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0000111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0000111111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0001000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0001000101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0001001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0001001011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0001001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0001010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0001010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0001010111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0001011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00011;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0001011101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b00100;
    
    @(negedge clock);
    if (s != 10'b0000010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b00101;
    
    @(negedge clock);
    if (s != 10'b0000010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0000101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0000110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0000110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0000111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0000111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0001000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0001000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0001001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0001001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0001010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0001010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0001011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0001011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0001100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0001100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0001101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0001101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0001110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0001110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0001111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00100;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0001111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b00101;
    
    @(negedge clock);
    if (s != 10'b0000011001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000100011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000101101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0000110111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0000111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0001000001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0001000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0001001011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0001010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0001010101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0001011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0001011111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0001100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0001101001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0001101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0001110011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0001111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0001111101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0010000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0010000111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0010001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0010010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0010010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00101;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0010011011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b00110;
    
    @(negedge clock);
    if (s != 10'b0000100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0000111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0001000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0001001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0001001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0001010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0001011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0001100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0001100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0001101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0001110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0001111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0001111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0010000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0010001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0010010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0010010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0010011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0010100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0010101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0010101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0010110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00110;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0010111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b00111;
    
    @(negedge clock);
    if (s != 10'b0000110001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000110001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0000111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0000111111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0000111111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0001000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0001001101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0001010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0001011011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0001100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0001101001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0001110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0001110111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0001111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0010000101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0010001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0010010011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0010011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0010100001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010100001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0010101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0010101111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0010110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0010111101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010111101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0011000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0011001011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011001011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0011010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b00111;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0011011001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01000;
    
    @(negedge clock);
    if (s != 10'b0001000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0001001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0001010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0001011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0001100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0001101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0001110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0001111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0010000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0010001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0010010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0010011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0010100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0010101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0010110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0010111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0011000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0011001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0011010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0011011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0011100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0011101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0011110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01000;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0011111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01001;
    
    @(negedge clock);
    if (s != 10'b0001010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0001011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0001100011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0001101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0001110101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001110101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0001111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0010000111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0010010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0010011001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0010100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0010101011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0010110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0010111101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010111101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0011000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0011001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0011011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0011100001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0011101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0011110011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0011111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0100000101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100000101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0100001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01001;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0100010111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100010111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b01010;
    
    @(negedge clock);
    if (s != 10'b0001100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0001101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0001111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0010000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0010001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0010010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0010100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0010101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0010110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0010111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0011001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0011010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0011011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0011100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0011110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0011111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0100000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0100001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0100011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0100100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0100101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01010;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0100110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b01011;
    
    @(negedge clock);
    if (s != 10'b0001111001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0001111001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0010000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0010001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0010011010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0010100101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010100101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0010110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0010111011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010111011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0011000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0011010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0011011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0011100111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0011110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0011111101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0100001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0100010011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100010011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0100011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0100101001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100101001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0100110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0100111111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100111111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0101001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01011;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0101010101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b01100;
    
    @(negedge clock);
    if (s != 10'b0010010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0010011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0010101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0010110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0011000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0011001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0011011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0011100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0011110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0011111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0100001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0100010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0100100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0100101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0100111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0101000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0101010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0101011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0101101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01100;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0101110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b01101;
    
    @(negedge clock);
    if (s != 10'b0010101001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010101001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0010110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0010110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0011000011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0011010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0011011101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011011101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0011101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0011110111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0100000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0100010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0100011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0100101011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100101011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0100111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0101000101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101000101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0101010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0101011111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101011111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0101101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0101111001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101111001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0110000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01101;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0110010011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110010011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b01110;
    
    @(negedge clock);
    if (s != 10'b0011000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0011010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0011100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0011101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0011111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0100001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0100011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0100100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0100110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0101000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0101010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0101011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0101101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0101111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0110001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0110010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0110100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01110;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0110110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b01111;
    
    @(negedge clock);
    if (s != 10'b0011100001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011100001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0011110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0011111111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0011111111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0100001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0100011101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100011101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0100101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0100111011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100111011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0101001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0101011001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101011001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0101101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0101110111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101110111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0110000110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110000110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0110010101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110010101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0110100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0110110011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110110011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0111000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b01111;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0111010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10000;
    
    @(negedge clock);
    if (s != 10'b0100000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0100010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0100100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0100110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0101000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0101010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0101100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0101110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0110000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0110010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0110100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0110110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0111000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0111010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0111100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10000;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b0111110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10001;
    
    @(negedge clock);
    if (s != 10'b0100100001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100100001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0100110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0100110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0101000011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101000011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0101010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0101100101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101100101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0101110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0110000111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110000111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0110011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0110101001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110101001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0110111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0111001011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111001011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0111011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b0111101101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111101101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b0111111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10001;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1000001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b10010;
    
    @(negedge clock);
    if (s != 10'b0101000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0101010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0101101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0101111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0110001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0110011110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110011110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0110110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0111000010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111000010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0111010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b0111100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b0111111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1000001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1000011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10010;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1000101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b10011;
    
    @(negedge clock);
    if (s != 10'b0101101001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101101001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0101111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0101111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0110001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0110100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0110110101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110110101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0111001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0111011011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111011011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b0111101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1000000001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000000001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1000010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1000100111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000100111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1000111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10011;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1001001101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001001101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b10100;
    
    @(negedge clock);
    if (s != 10'b0110010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0110100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0110111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0111001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0111100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b0111110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1000001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1000011100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000011100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1000110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1001000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1001011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10100;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1001101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b10101;
    
    @(negedge clock);
    if (s != 10'b0110111001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0110111001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0111001110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111001110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0111100011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111100011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b0111111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b1000001101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000001101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1000100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1000110111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000110111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1001001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1001100001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001100001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1001110110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001110110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10101;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1010001011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010001011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b10110;
    
    @(negedge clock);
    if (s != 10'b0111100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b0111111010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b0111111010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b1000010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b1000100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1000111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1001010010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001010010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1001101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1001111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1010010100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010010100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10110;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1010101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b10111;
    
    @(negedge clock);
    if (s != 10'b1000010001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000010001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b1000101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b1000111111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1000111111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1001010110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001010110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1001101101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001101101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1010000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1010011011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010011011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1010110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b10111;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1011001001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011001001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11000;
    
    @(negedge clock);
    if (s != 10'b1001000000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001000000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b1001011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1001110000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001110000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1010001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1010100000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010100000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1010111000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010111000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1011010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11000;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1011101000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011101000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11001;
    
    @(negedge clock);
    if (s != 10'b1001110001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1001110001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1010001010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010001010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1010100011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010100011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1010111100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010111100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1011010101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011010101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1011101110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011101110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11001;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1100000111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100000111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11010;
    in2 = 5'b11010;
    
    @(negedge clock);
    if (s != 10'b1010100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11010;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1010111110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1010111110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11010;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1011011000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011011000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11010;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1011110010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011110010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11010;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1100001100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100001100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11010;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1100100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11011;
    in2 = 5'b11011;
    
    @(negedge clock);
    if (s != 10'b1011011001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011011001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11011;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1011110100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1011110100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11011;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1100001111) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100001111 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11011;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1100101010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100101010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11011;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1101000101) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1101000101 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11100;
    in2 = 5'b11100;
    
    @(negedge clock);
    if (s != 10'b1100010000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100010000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11100;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1100101100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1100101100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11100;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1101001000) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1101001000 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11100;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1101100100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1101100100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11101;
    in2 = 5'b11101;
    
    @(negedge clock);
    if (s != 10'b1101001001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1101001001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11101;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1101100110) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1101100110 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11101;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1110000011) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1110000011 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11110;
    in2 = 5'b11110;
    
    @(negedge clock);
    if (s != 10'b1110000100) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1110000100 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11110;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1110100010) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1110100010 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 5'b11111;
    in2 = 5'b11111;
    
    @(negedge clock);
    if (s != 10'b1111000001) begin
            $display("in1 %b in2 %b Error: expected sum 10'b1111000001 but got %b", in1, in2, s);
            num_errors = num_errors + 1;
    end



       	
       	if (num_errors == 0) begin
            	$display("Simulation succeeded with no errors.");
       	end else begin
            	$display("Simulation failed with %d error(s).", num_errors);
       	end
 	end
 	
 	always
       	#10 clock = ~clock; // toggle clock every 10 timescale units
 	
endmodule

