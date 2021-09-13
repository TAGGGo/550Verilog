module halfadder(a, b, sum, cout);
	input a, b;
	output sum, cout;
	xor mxor(sum, a, b);
	and mand(cout, a, b);
endmodule
	