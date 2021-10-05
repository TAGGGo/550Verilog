module decoder_5_to_32bits(in, out);
	input [4:0] in;
	output [31:0] out;
	wire [4:0] not_in;
	not not4(not_in[4], in[4]);
	not not0(not_in[3], in[3]);
	not not1(not_in[2], in[2]);
	not not2(not_in[1], in[1]);
	not not3(not_in[0], in[0]);
	
	and and0(out[0], not_in[0], not_in[1], not_in[2], not_in[3], not_in[4]);
	and and1(out[1], in[0], not_in[1], not_in[2], not_in[3], not_in[4]);
	and and2(out[2], not_in[0], in[1], not_in[2], not_in[3], not_in[4]);
	and and3(out[3], in[0], in[1], not_in[2], not_in[3], not_in[4]);
	and and4(out[4], not_in[0], not_in[1], in[2], not_in[3], not_in[4]);
	and and5(out[5], in[0], not_in[1], in[2], not_in[3], not_in[4]);
	and and6(out[6], not_in[0], in[1], in[2], not_in[3], not_in[4]);
	and and7(out[7], in[0], in[1], in[2], not_in[3], not_in[4]);
	and and8(out[8], not_in[0], not_in[1], not_in[2], in[3], not_in[4]);
	and and9(out[9], in[0], not_in[1], not_in[2], in[3], not_in[4]);
	and and10(out[10], not_in[0], in[1], not_in[2], in[3], not_in[4]);
	and and11(out[11], in[0], in[1], not_in[2], in[3], not_in[4]);
	and and12(out[12], not_in[0], not_in[1], in[2], in[3], not_in[4]);
	and and13(out[13], in[0], not_in[1], in[2], in[3], not_in[4]);
	and and14(out[14], not_in[0], in[1], in[2], in[3], not_in[4]);
	and and15(out[15], in[0], in[1], in[2], in[3], not_in[4]);
	and and16(out[16], not_in[0], not_in[1], not_in[2], not_in[3], in[4]);
	and and17(out[17], in[0], not_in[1], not_in[2], not_in[3], in[4]);
	and and18(out[18], not_in[0], in[1], not_in[2], not_in[3], in[4]);
	and and19(out[19], in[0], in[1], not_in[2], not_in[3], in[4]);
	and and20(out[20], not_in[0], not_in[1], in[2], not_in[3], in[4]);
	and and21(out[21], in[0], not_in[1], in[2], not_in[3], in[4]);
	and and22(out[22], not_in[0], in[1], in[2], not_in[3], in[4]);
	and and23(out[23], in[0], in[1], in[2], not_in[3], in[4]);
	and and24(out[24], not_in[0], not_in[1], not_in[2], in[3], in[4]);
	and and25(out[25], in[0], not_in[1], not_in[2], in[3], in[4]);
	and and26(out[26], not_in[0], in[1], not_in[2], in[3], in[4]);
	and and27(out[27], in[0], in[1], not_in[2], in[3], in[4]);
	and and28(out[28], not_in[0], not_in[1], in[2], in[3], in[4]);
	and and29(out[29], in[0], not_in[1], in[2], in[3], in[4]);
	and and30(out[30], not_in[0], in[1], in[2], in[3], in[4]);
	and and31(out[31], in[0], in[1], in[2], in[3], in[4]);
endmodule