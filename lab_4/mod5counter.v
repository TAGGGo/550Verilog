module mod5counter
(
	input wire clk, reset,
	input wire w,
	output reg cout
);

localparam [2:0]
	zero = 3'b000,
	one = 3'b001,
	two = 3'b010,
	three = 3'b011,
	four = 3'b100;

reg[2:0] state, state_n;

// Define Clock and reset
always @(posedge clk, posedge reset)
begin
	if(reset)
		begin
			state <= zero;
		end
	else
		begin
			state <= state_n;
		end
end

// Moore Design
always @(state, w)
begin
	// store current state as next
	state_n = state;
	cout = 1'b0;
	case(state)
		zero: // if state is zero
			if(w)
				state_n = one;
		one:
			if(w)
				state_n = two;
		two:
			if(w)
				state_n = three;
		three:
			if(w)
				state_n = four;
		four:
			begin
				cout = 1'b1;
				if(w)
					state_n = zero;
			end
	endcase
		
end

endmodule