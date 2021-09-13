module fulladder(a, b, cin, sum, cout);
	input a, b, cin;
	output sum, cout;
	wire d, h, i;
	xor my_xor0(d, a, b);
	xor my_xor1(sum, d, cin);
	and my_and0(h, d, cin);
	and my_and1(i, a, b);
	or my_or0(cout, h, i);
endmodule