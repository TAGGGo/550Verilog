// cin = 0 -> a
// cin = 1 -> b
module my_mux(a, b, cin, cout);
	input a, b, cin;
	output cout;
	
	wire not_cin, or_w[1:0];
	and my_and(or_w[0], b, cin);
	not my_not(not_cin, cin);
	and my_and2(or_w[1], a, not_cin);
	or my_or(cout, or_w[1], or_w[0]);
endmodule
	
	
	