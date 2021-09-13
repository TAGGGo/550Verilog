module multiplier(a, b, s);
	input [4:0] a;
	input [4:0] b;
	output [9:0] s;
	
	// assign inputs
	wire a0b0, a1b0, a2b0, a3b0, a4b0;
	wire a0b1, a1b1, a2b1, a3b1, a4b1;
	wire a0b2, a1b2, a2b2, a3b2, a4b2;
	wire a0b3, a1b3, a2b3, a3b3, a4b3;
	wire a0b4, a1b4, a2b4, a3b4, a4b4;
	and manda0b0(a0b0, a[0], b[0]);
	and manda1b0(a1b0, a[1], b[0]);
	and manda2b0(a2b0, a[2], b[0]);
	and manda3b0(a3b0, a[3], b[0]);
	and manda4b0(a4b0, a[4], b[0]);
	
	and manda0b1(a0b1, a[0], b[1]);
	and manda1b1(a1b1, a[1], b[1]);
	and manda2b1(a2b1, a[2], b[1]);
	and manda3b1(a3b1, a[3], b[1]);
	and manda4b1(a4b1, a[4], b[1]);
	
	and manda0b2(a0b2, a[0], b[2]);
	and manda1b2(a1b2, a[1], b[2]);
	and manda2b2(a2b2, a[2], b[2]);
	and manda3b2(a3b2, a[3], b[2]);
	and manda4b2(a4b2, a[4], b[2]);
	
	and manda0b3(a0b3, a[0], b[3]);
	and manda1b3(a1b3, a[1], b[3]);
	and manda2b3(a2b3, a[2], b[3]);
	and manda3b3(a3b3, a[3], b[3]);
	and manda4b3(a4b3, a[4], b[3]);
	
	and manda0b4(a0b4, a[0], b[4]);
	and manda1b4(a1b4, a[1], b[4]);
	and manda2b4(a2b4, a[2], b[4]);
	and manda3b4(a3b4, a[3], b[4]);
	and manda4b4(a4b4, a[4], b[4]);
	
	// bit 0
	assign s[0] = a0b0;
	
	// bit 1
	wire carry_to_bit2_0;
	halfadder ha0(a1b0, a0b1, s[1], carry_to_bit2_0);
	
	
	// bit 2
	wire carry_to_bit3_0, carry_to_bit3_1;
	wire bit2_tmp0;
	fulladder fa0(a2b0, a1b1, a0b2, bit2_tmp0, carry_to_bit3_0);
	halfadder ha1(carry_to_bit2_0, bit2_tmp0, s[2], carry_to_bit3_1);
	
	// bit 3
	wire carry_to_bit4_0, carry_to_bit4_1, carry_to_bit4_2;// carry_to_bit4[2:0]
	wire bit3_tmp0, bit3_tmp1;
	fulladder fa1(a3b0, a2b1, a1b2, bit3_tmp0, carry_to_bit4_0);
	fulladder fa2(bit3_tmp0, a0b3, carry_to_bit3_0, bit3_tmp1, carry_to_bit4_1);
	halfadder ha2(bit3_tmp1, carry_to_bit3_1, s[3], carry_to_bit4_2);
	
	// bit 4
	wire carry_to_bit5_0, carry_to_bit5_1, carry_to_bit5_2, carry_to_bit5_3;
	wire bit4_tmp0, bit4_tmp1, bit4_tmp2;
	fulladder fa3(a4b0, a3b1, a2b2, bit4_tmp0, carry_to_bit5_0);
	fulladder fa4(bit4_tmp0, a1b3, a0b4, bit4_tmp1, carry_to_bit5_1);
	fulladder fa5(bit4_tmp1, carry_to_bit4_0, carry_to_bit4_1, bit4_tmp2, carry_to_bit5_2);
	halfadder ha3(bit4_tmp2, carry_to_bit4_2, s[4], carry_to_bit5_3);
	
	// bit 5
	wire carry_to_bit6_0, carry_to_bit6_1, carry_to_bit6_2, carry_to_bit6_3;
	wire bit5_tmp0, bit5_tmp1, bit5_tmp2;
	fulladder fa6(a4b1, a3b2, a2b3, bit5_tmp0, carry_to_bit6_0);
	fulladder fa7(bit5_tmp0, a1b4, carry_to_bit5_0, bit5_tmp1, carry_to_bit6_1);
	fulladder fa8(bit5_tmp1, carry_to_bit5_1, carry_to_bit5_2, bit5_tmp2, carry_to_bit6_2);
	halfadder ha4(bit5_tmp2, carry_to_bit5_3, s[5], carry_to_bit6_3);
	
	// bit 6
	wire carry_to_bit7_0, carry_to_bit7_1, carry_to_bit7_2;
	wire bit6_tmp0, bit6_tmp1;
	fulladder fa9(a4b2, a3b3, a2b4, bit6_tmp0, carry_to_bit7_0);
	fulladder fa10(bit6_tmp0, carry_to_bit6_0, carry_to_bit6_1, bit6_tmp1, carry_to_bit7_1);
	fulladder fa11(bit6_tmp1, carry_to_bit6_2, carry_to_bit6_3, s[6], carry_to_bit7_2);
	
	// bit 7
	wire carry_to_bit8_0, carry_to_bit8_1;
	wire bit7_tmp0;
	fulladder fa12(a4b3, a3b4, carry_to_bit7_0, bit7_tmp0, carry_to_bit8_0);
	fulladder fa13(bit7_tmp0, carry_to_bit7_1, carry_to_bit7_2, s[7], carry_to_bit8_1);
	
	// bit 8 & 9
	fulladder f14(a4b4, carry_to_bit8_0, carry_to_bit8_1, s[8], s[9]);
	
	
endmodule
	