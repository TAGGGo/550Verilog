// set the timescale
`timescale 1 ns / 100 ps

module RippleCarryadder_tb(); // testbenches take no arguments
 	// set up inputs of NAND gate as registers so they can be manipulated at will
 	reg [3:0] in1;
 	reg [3:0] in2;
	reg cin;
 	
 	// clocks are useful for testbenches because they allow you to check your
 	// circuit at regular intervals large enough for signals to propogate
 	reg clock;
 	
 	// set up output of NAND gate as wire
 	wire cout;
 	wire [3:0] sum;
	
 	// prepare any other variables you want - nothing is off-limits in a TB
 	integer num_errors;
 	
 	// instantiate the NAND gate
 	RippleCarryadder test_ripple_carry_adder (in1, in2, cin, cout, sum);
 	
 	// begin simulation
 	initial begin
       	$display($time, " simulation start");
       	
       	clock = 1'b0;
       	num_errors = 0;
			
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0000;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0001;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b0010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b0011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b0100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b0101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0010;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b0011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b0100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b0101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0011;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b0100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b0101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0100;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b0101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0101;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b0110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0110;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b0111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1111 | cout != 1'b0) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1111 cout 1'b0 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b0111;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1000;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1000;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1001;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1001;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1010;
    in2 = 4'b1010;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1010;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0101 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0101 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1010;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1010;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1010;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1010;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1011;
    in2 = 4'b1011;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0110 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0110 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1011;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b0111 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b0111 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1011;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1011;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1011;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1100;
    in2 = 4'b1100;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1000 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1000 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1100;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1001 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1001 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1100;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1100;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1101;
    in2 = 4'b1101;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1010 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1010 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1101;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1011 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1011 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1101;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1110;
    in2 = 4'b1110;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1100 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1100 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1110;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1101 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1101 cout 1'b1 but got %b %b", in1, in2, sum, cout);
            num_errors = num_errors + 1;
    end
@(negedge clock); // wait for the clock to go negative
    in1 = 4'b1111;
    in2 = 4'b1111;
    cin = 1'b0;
    
    @(negedge clock);
    if (sum != 4'b1110 | cout != 1'b1) begin
            $display("in1 %b in2 %b Error: expected sum 4'b1110 cout 1'b1 but got %b %b", in1, in2, sum, cout);
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

