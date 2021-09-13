module RippleCarryadder(input [3:0] a, input[3:0] b, input cin, output cout, output [3:0] sum);
	wire [2:0] carry;
	fulladder u0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(carry[0]));
	fulladder u1 (.a(a[1]), .b(b[1]), .cin(carry[0]), .sum(sum[1]), .cout(carry[1]));
	fulladder u2 (.a(a[2]), .b(b[2]), .cin(carry[1]), .sum(sum[2]), .cout(carry[2]));
	fulladder u3 (.a(a[3]), .b(b[3]), .cin(carry[2]), .sum(sum[3]), .cout(cout));
	
endmodule