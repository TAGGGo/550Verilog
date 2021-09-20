module my_csa(in1, in2, cin, sum, overflow);
	input [31:0] in1;
	input [31:0] in2;
	input cin;
	output overflow;
	output [31:0] sum;
	
	wire [31:0] carry0, sum0;
	wire [31:0] carry1, sum1;
	wire [29:0] Cin;
	wire CI,CO;
	
	  // bit 0;
    full_adder fa_0_0(in1[0], in2[0], 0, sum0[0], carry0[0]);
    full_adder fa_0_1(in1[0], in2[0], 1, sum1[0], carry1[0]);
    my_mux mx_0_0(sum0[0], sum1[0], cin, sum[0]);
    my_mux mx_0_1(carry0[0], carry1[0], cin, Cin[0]);

  // bit 1;
    full_adder fa_1_0(in1[1], in2[1], 0, sum0[1], carry0[1]);
    full_adder fa_1_1(in1[1], in2[1], 1, sum1[1], carry1[1]);
    my_mux mx_1_0(sum0[1], sum1[1], Cin[0], sum[1]);
    my_mux mx_1_1(carry0[1], carry1[1], Cin[0], Cin[1]);

  // bit 2;
    full_adder fa_2_0(in1[2], in2[2], 0, sum0[2], carry0[2]);
    full_adder fa_2_1(in1[2], in2[2], 1, sum1[2], carry1[2]);
    my_mux mx_2_0(sum0[2], sum1[2], Cin[1], sum[2]);
    my_mux mx_2_1(carry0[2], carry1[2], Cin[1], Cin[2]);

  // bit 3;
    full_adder fa_3_0(in1[3], in2[3], 0, sum0[3], carry0[3]);
    full_adder fa_3_1(in1[3], in2[3], 1, sum1[3], carry1[3]);
    my_mux mx_3_0(sum0[3], sum1[3], Cin[2], sum[3]);
    my_mux mx_3_1(carry0[3], carry1[3], Cin[2], Cin[3]);

  // bit 4;
    full_adder fa_4_0(in1[4], in2[4], 0, sum0[4], carry0[4]);
    full_adder fa_4_1(in1[4], in2[4], 1, sum1[4], carry1[4]);
    my_mux mx_4_0(sum0[4], sum1[4], Cin[3], sum[4]);
    my_mux mx_4_1(carry0[4], carry1[4], Cin[3], Cin[4]);

  // bit 5;
    full_adder fa_5_0(in1[5], in2[5], 0, sum0[5], carry0[5]);
    full_adder fa_5_1(in1[5], in2[5], 1, sum1[5], carry1[5]);
    my_mux mx_5_0(sum0[5], sum1[5], Cin[4], sum[5]);
    my_mux mx_5_1(carry0[5], carry1[5], Cin[4], Cin[5]);

  // bit 6;
    full_adder fa_6_0(in1[6], in2[6], 0, sum0[6], carry0[6]);
    full_adder fa_6_1(in1[6], in2[6], 1, sum1[6], carry1[6]);
    my_mux mx_6_0(sum0[6], sum1[6], Cin[5], sum[6]);
    my_mux mx_6_1(carry0[6], carry1[6], Cin[5], Cin[6]);

  // bit 7;
    full_adder fa_7_0(in1[7], in2[7], 0, sum0[7], carry0[7]);
    full_adder fa_7_1(in1[7], in2[7], 1, sum1[7], carry1[7]);
    my_mux mx_7_0(sum0[7], sum1[7], Cin[6], sum[7]);
    my_mux mx_7_1(carry0[7], carry1[7], Cin[6], Cin[7]);

  // bit 8;
    full_adder fa_8_0(in1[8], in2[8], 0, sum0[8], carry0[8]);
    full_adder fa_8_1(in1[8], in2[8], 1, sum1[8], carry1[8]);
    my_mux mx_8_0(sum0[8], sum1[8], Cin[7], sum[8]);
    my_mux mx_8_1(carry0[8], carry1[8], Cin[7], Cin[8]);

  // bit 9;
    full_adder fa_9_0(in1[9], in2[9], 0, sum0[9], carry0[9]);
    full_adder fa_9_1(in1[9], in2[9], 1, sum1[9], carry1[9]);
    my_mux mx_9_0(sum0[9], sum1[9], Cin[8], sum[9]);
    my_mux mx_9_1(carry0[9], carry1[9], Cin[8], Cin[9]);

  // bit 10;
    full_adder fa_10_0(in1[10], in2[10], 0, sum0[10], carry0[10]);
    full_adder fa_10_1(in1[10], in2[10], 1, sum1[10], carry1[10]);
    my_mux mx_10_0(sum0[10], sum1[10], Cin[9], sum[10]);
    my_mux mx_10_1(carry0[10], carry1[10], Cin[9], Cin[10]);

  // bit 11;
    full_adder fa_11_0(in1[11], in2[11], 0, sum0[11], carry0[11]);
    full_adder fa_11_1(in1[11], in2[11], 1, sum1[11], carry1[11]);
    my_mux mx_11_0(sum0[11], sum1[11], Cin[10], sum[11]);
    my_mux mx_11_1(carry0[11], carry1[11], Cin[10], Cin[11]);

  // bit 12;
    full_adder fa_12_0(in1[12], in2[12], 0, sum0[12], carry0[12]);
    full_adder fa_12_1(in1[12], in2[12], 1, sum1[12], carry1[12]);
    my_mux mx_12_0(sum0[12], sum1[12], Cin[11], sum[12]);
    my_mux mx_12_1(carry0[12], carry1[12], Cin[11], Cin[12]);

  // bit 13;
    full_adder fa_13_0(in1[13], in2[13], 0, sum0[13], carry0[13]);
    full_adder fa_13_1(in1[13], in2[13], 1, sum1[13], carry1[13]);
    my_mux mx_13_0(sum0[13], sum1[13], Cin[12], sum[13]);
    my_mux mx_13_1(carry0[13], carry1[13], Cin[12], Cin[13]);

  // bit 14;
    full_adder fa_14_0(in1[14], in2[14], 0, sum0[14], carry0[14]);
    full_adder fa_14_1(in1[14], in2[14], 1, sum1[14], carry1[14]);
    my_mux mx_14_0(sum0[14], sum1[14], Cin[13], sum[14]);
    my_mux mx_14_1(carry0[14], carry1[14], Cin[13], Cin[14]);

  // bit 15;
    full_adder fa_15_0(in1[15], in2[15], 0, sum0[15], carry0[15]);
    full_adder fa_15_1(in1[15], in2[15], 1, sum1[15], carry1[15]);
    my_mux mx_15_0(sum0[15], sum1[15], Cin[14], sum[15]);
    my_mux mx_15_1(carry0[15], carry1[15], Cin[14], Cin[15]);

  // bit 16;
    full_adder fa_16_0(in1[16], in2[16], 0, sum0[16], carry0[16]);
    full_adder fa_16_1(in1[16], in2[16], 1, sum1[16], carry1[16]);
    my_mux mx_16_0(sum0[16], sum1[16], Cin[15], sum[16]);
    my_mux mx_16_1(carry0[16], carry1[16], Cin[15], Cin[16]);

  // bit 17;
    full_adder fa_17_0(in1[17], in2[17], 0, sum0[17], carry0[17]);
    full_adder fa_17_1(in1[17], in2[17], 1, sum1[17], carry1[17]);
    my_mux mx_17_0(sum0[17], sum1[17], Cin[16], sum[17]);
    my_mux mx_17_1(carry0[17], carry1[17], Cin[16], Cin[17]);

  // bit 18;
    full_adder fa_18_0(in1[18], in2[18], 0, sum0[18], carry0[18]);
    full_adder fa_18_1(in1[18], in2[18], 1, sum1[18], carry1[18]);
    my_mux mx_18_0(sum0[18], sum1[18], Cin[17], sum[18]);
    my_mux mx_18_1(carry0[18], carry1[18], Cin[17], Cin[18]);

  // bit 19;
    full_adder fa_19_0(in1[19], in2[19], 0, sum0[19], carry0[19]);
    full_adder fa_19_1(in1[19], in2[19], 1, sum1[19], carry1[19]);
    my_mux mx_19_0(sum0[19], sum1[19], Cin[18], sum[19]);
    my_mux mx_19_1(carry0[19], carry1[19], Cin[18], Cin[19]);

  // bit 20;
    full_adder fa_20_0(in1[20], in2[20], 0, sum0[20], carry0[20]);
    full_adder fa_20_1(in1[20], in2[20], 1, sum1[20], carry1[20]);
    my_mux mx_20_0(sum0[20], sum1[20], Cin[19], sum[20]);
    my_mux mx_20_1(carry0[20], carry1[20], Cin[19], Cin[20]);

  // bit 21;
    full_adder fa_21_0(in1[21], in2[21], 0, sum0[21], carry0[21]);
    full_adder fa_21_1(in1[21], in2[21], 1, sum1[21], carry1[21]);
    my_mux mx_21_0(sum0[21], sum1[21], Cin[20], sum[21]);
    my_mux mx_21_1(carry0[21], carry1[21], Cin[20], Cin[21]);

  // bit 22;
    full_adder fa_22_0(in1[22], in2[22], 0, sum0[22], carry0[22]);
    full_adder fa_22_1(in1[22], in2[22], 1, sum1[22], carry1[22]);
    my_mux mx_22_0(sum0[22], sum1[22], Cin[21], sum[22]);
    my_mux mx_22_1(carry0[22], carry1[22], Cin[21], Cin[22]);

  // bit 23;
    full_adder fa_23_0(in1[23], in2[23], 0, sum0[23], carry0[23]);
    full_adder fa_23_1(in1[23], in2[23], 1, sum1[23], carry1[23]);
    my_mux mx_23_0(sum0[23], sum1[23], Cin[22], sum[23]);
    my_mux mx_23_1(carry0[23], carry1[23], Cin[22], Cin[23]);

  // bit 24;
    full_adder fa_24_0(in1[24], in2[24], 0, sum0[24], carry0[24]);
    full_adder fa_24_1(in1[24], in2[24], 1, sum1[24], carry1[24]);
    my_mux mx_24_0(sum0[24], sum1[24], Cin[23], sum[24]);
    my_mux mx_24_1(carry0[24], carry1[24], Cin[23], Cin[24]);

  // bit 25;
    full_adder fa_25_0(in1[25], in2[25], 0, sum0[25], carry0[25]);
    full_adder fa_25_1(in1[25], in2[25], 1, sum1[25], carry1[25]);
    my_mux mx_25_0(sum0[25], sum1[25], Cin[24], sum[25]);
    my_mux mx_25_1(carry0[25], carry1[25], Cin[24], Cin[25]);

  // bit 26;
    full_adder fa_26_0(in1[26], in2[26], 0, sum0[26], carry0[26]);
    full_adder fa_26_1(in1[26], in2[26], 1, sum1[26], carry1[26]);
    my_mux mx_26_0(sum0[26], sum1[26], Cin[25], sum[26]);
    my_mux mx_26_1(carry0[26], carry1[26], Cin[25], Cin[26]);

  // bit 27;
    full_adder fa_27_0(in1[27], in2[27], 0, sum0[27], carry0[27]);
    full_adder fa_27_1(in1[27], in2[27], 1, sum1[27], carry1[27]);
    my_mux mx_27_0(sum0[27], sum1[27], Cin[26], sum[27]);
    my_mux mx_27_1(carry0[27], carry1[27], Cin[26], Cin[27]);

  // bit 28;
    full_adder fa_28_0(in1[28], in2[28], 0, sum0[28], carry0[28]);
    full_adder fa_28_1(in1[28], in2[28], 1, sum1[28], carry1[28]);
    my_mux mx_28_0(sum0[28], sum1[28], Cin[27], sum[28]);
    my_mux mx_28_1(carry0[28], carry1[28], Cin[27], Cin[28]);

  // bit 29;
    full_adder fa_29_0(in1[29], in2[29], 0, sum0[29], carry0[29]);
    full_adder fa_29_1(in1[29], in2[29], 1, sum1[29], carry1[29]);
    my_mux mx_29_0(sum0[29], sum1[29], Cin[28], sum[29]);
    my_mux mx_29_1(carry0[29], carry1[29], Cin[28], Cin[29]);

  // bit 30;
    full_adder fa_30_0(in1[30], in2[30], 0, sum0[30], carry0[30]);
    full_adder fa_30_1(in1[30], in2[30], 1, sum1[30], carry1[30]);
    my_mux mx_30_0(sum0[30], sum1[30], Cin[29], sum[30]);
    my_mux mx_30_1(carry0[30], carry1[30], Cin[29], CI);

  // bit 31;
    full_adder fa_31_0(in1[31], in2[31], 0, sum0[31], carry0[31]);
    full_adder fa_31_1(in1[31], in2[31], 1, sum1[31], carry1[31]);
    my_mux mx_31_0(sum0[31], sum1[31], CI, sum[31]);
    my_mux mx_31_1(carry0[31], carry1[31], CI, CO);
	 
	 xor my_xor(overflow, CI, CO);

endmodule