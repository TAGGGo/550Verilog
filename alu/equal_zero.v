// return 1'b1 if opA != 0
module equal_zero(opA, cout);
	input [31:0] opA;
	output cout;
	wire tmp[29:0];
	or my_or1(tmp[0], opA[0], opA[1]);
	or my_or2(tmp[1], opA[2], tmp[0]);
	or my_or3(tmp[2], opA[3], tmp[1]);
	or my_or4(tmp[3], opA[4], tmp[2]);
	or my_or5(tmp[4], opA[5], tmp[3]);
	or my_or6(tmp[5], opA[6], tmp[4]);
	or my_or7(tmp[6], opA[7], tmp[5]);
	or my_or8(tmp[7], opA[8], tmp[6]);
	or my_or9(tmp[8], opA[9], tmp[7]);
	or my_or10(tmp[9], opA[10], tmp[8]);
	or my_or11(tmp[10], opA[11], tmp[9]);
	or my_or12(tmp[11], opA[12], tmp[10]);
	or my_or13(tmp[12], opA[13], tmp[11]);
	or my_or14(tmp[13], opA[14], tmp[12]);
	or my_or15(tmp[14], opA[15], tmp[13]);
	or my_or16(tmp[15], opA[16], tmp[14]);
	or my_or17(tmp[16], opA[17], tmp[15]);
	or my_or18(tmp[17], opA[18], tmp[16]);
	or my_or19(tmp[18], opA[19], tmp[17]);
	or my_or20(tmp[19], opA[20], tmp[18]);
	or my_or21(tmp[20], opA[21], tmp[19]);
	or my_or22(tmp[21], opA[22], tmp[20]);
	or my_or23(tmp[22], opA[23], tmp[21]);
	or my_or24(tmp[23], opA[24], tmp[22]);
	or my_or25(tmp[24], opA[25], tmp[23]);
	or my_or26(tmp[25], opA[26], tmp[24]);
	or my_or27(tmp[26], opA[27], tmp[25]);
	or my_or28(tmp[27], opA[28], tmp[26]);
	or my_or29(tmp[28], opA[29], tmp[27]);
	or my_or30(tmp[29], opA[30], tmp[28]);
	or my_or31(cout, opA[31], tmp[29]);
endmodule
	
	