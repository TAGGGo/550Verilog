module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* YOUR CODE HERE */
	
	// write port
	wire [31:0] write_tmp1;
	wire [31:0] write_tmp2;
	decoder_5_to_32bits decoder(ctrl_writeReg, write_tmp1);
	// disable writing register #0
	and and0(write_tmp2[0], 1'b0, write_tmp1[0]);
	and and1(write_tmp2[1], ctrl_writeEnable, write_tmp1[1]);
	and and2(write_tmp2[2], ctrl_writeEnable, write_tmp1[2]);
	and and3(write_tmp2[3], ctrl_writeEnable, write_tmp1[3]);
	and and4(write_tmp2[4], ctrl_writeEnable, write_tmp1[4]);
	and and5(write_tmp2[5], ctrl_writeEnable, write_tmp1[5]);
	and and6(write_tmp2[6], ctrl_writeEnable, write_tmp1[6]);
	and and7(write_tmp2[7], ctrl_writeEnable, write_tmp1[7]);
	and and8(write_tmp2[8], ctrl_writeEnable, write_tmp1[8]);
	and and9(write_tmp2[9], ctrl_writeEnable, write_tmp1[9]);
	and and10(write_tmp2[10], ctrl_writeEnable, write_tmp1[10]);
	and and11(write_tmp2[11], ctrl_writeEnable, write_tmp1[11]);
	and and12(write_tmp2[12], ctrl_writeEnable, write_tmp1[12]);
	and and13(write_tmp2[13], ctrl_writeEnable, write_tmp1[13]);
	and and14(write_tmp2[14], ctrl_writeEnable, write_tmp1[14]);
	and and15(write_tmp2[15], ctrl_writeEnable, write_tmp1[15]);
	and and16(write_tmp2[16], ctrl_writeEnable, write_tmp1[16]);
	and and17(write_tmp2[17], ctrl_writeEnable, write_tmp1[17]);
	and and18(write_tmp2[18], ctrl_writeEnable, write_tmp1[18]);
	and and19(write_tmp2[19], ctrl_writeEnable, write_tmp1[19]);
	and and20(write_tmp2[20], ctrl_writeEnable, write_tmp1[20]);
	and and21(write_tmp2[21], ctrl_writeEnable, write_tmp1[21]);
	and and22(write_tmp2[22], ctrl_writeEnable, write_tmp1[22]);
	and and23(write_tmp2[23], ctrl_writeEnable, write_tmp1[23]);
	and and24(write_tmp2[24], ctrl_writeEnable, write_tmp1[24]);
	and and25(write_tmp2[25], ctrl_writeEnable, write_tmp1[25]);
	and and26(write_tmp2[26], ctrl_writeEnable, write_tmp1[26]);
	and and27(write_tmp2[27], ctrl_writeEnable, write_tmp1[27]);
	and and28(write_tmp2[28], ctrl_writeEnable, write_tmp1[28]);
	and and29(write_tmp2[29], ctrl_writeEnable, write_tmp1[29]);
	and and30(write_tmp2[30], ctrl_writeEnable, write_tmp1[30]);
	and and31(write_tmp2[31], ctrl_writeEnable, write_tmp1[31]);
	
	wire [31:0] Qtmp [31:0];
	dff32_ref dff0(Qtmp[0], data_writeReg, clock, write_tmp2[0], ctrl_reset);
	dff32_ref dff1(Qtmp[1], data_writeReg, clock, write_tmp2[1], ctrl_reset);
	dff32_ref dff2(Qtmp[2], data_writeReg, clock, write_tmp2[2], ctrl_reset);
	dff32_ref dff3(Qtmp[3], data_writeReg, clock, write_tmp2[3], ctrl_reset);
	dff32_ref dff4(Qtmp[4], data_writeReg, clock, write_tmp2[4], ctrl_reset);
	dff32_ref dff5(Qtmp[5], data_writeReg, clock, write_tmp2[5], ctrl_reset);
	dff32_ref dff6(Qtmp[6], data_writeReg, clock, write_tmp2[6], ctrl_reset);
	dff32_ref dff7(Qtmp[7], data_writeReg, clock, write_tmp2[7], ctrl_reset);
	dff32_ref dff8(Qtmp[8], data_writeReg, clock, write_tmp2[8], ctrl_reset);
	dff32_ref dff9(Qtmp[9], data_writeReg, clock, write_tmp2[9], ctrl_reset);
	dff32_ref dff10(Qtmp[10], data_writeReg, clock, write_tmp2[10], ctrl_reset);
	dff32_ref dff11(Qtmp[11], data_writeReg, clock, write_tmp2[11], ctrl_reset);
	dff32_ref dff12(Qtmp[12], data_writeReg, clock, write_tmp2[12], ctrl_reset);
	dff32_ref dff13(Qtmp[13], data_writeReg, clock, write_tmp2[13], ctrl_reset);
	dff32_ref dff14(Qtmp[14], data_writeReg, clock, write_tmp2[14], ctrl_reset);
	dff32_ref dff15(Qtmp[15], data_writeReg, clock, write_tmp2[15], ctrl_reset);
	dff32_ref dff16(Qtmp[16], data_writeReg, clock, write_tmp2[16], ctrl_reset);
	dff32_ref dff17(Qtmp[17], data_writeReg, clock, write_tmp2[17], ctrl_reset);
	dff32_ref dff18(Qtmp[18], data_writeReg, clock, write_tmp2[18], ctrl_reset);
	dff32_ref dff19(Qtmp[19], data_writeReg, clock, write_tmp2[19], ctrl_reset);
	dff32_ref dff20(Qtmp[20], data_writeReg, clock, write_tmp2[20], ctrl_reset);
	dff32_ref dff21(Qtmp[21], data_writeReg, clock, write_tmp2[21], ctrl_reset);
	dff32_ref dff22(Qtmp[22], data_writeReg, clock, write_tmp2[22], ctrl_reset);
	dff32_ref dff23(Qtmp[23], data_writeReg, clock, write_tmp2[23], ctrl_reset);
	dff32_ref dff24(Qtmp[24], data_writeReg, clock, write_tmp2[24], ctrl_reset);
	dff32_ref dff25(Qtmp[25], data_writeReg, clock, write_tmp2[25], ctrl_reset);
	dff32_ref dff26(Qtmp[26], data_writeReg, clock, write_tmp2[26], ctrl_reset);
	dff32_ref dff27(Qtmp[27], data_writeReg, clock, write_tmp2[27], ctrl_reset);
	dff32_ref dff28(Qtmp[28], data_writeReg, clock, write_tmp2[28], ctrl_reset);
	dff32_ref dff29(Qtmp[29], data_writeReg, clock, write_tmp2[29], ctrl_reset);
	dff32_ref dff30(Qtmp[30], data_writeReg, clock, write_tmp2[30], ctrl_reset);
	dff32_ref dff31(Qtmp[31], data_writeReg, clock, write_tmp2[31], ctrl_reset);
	
	// read port
	wire [31:0] read_tmpA, read_tmpB;
	decoder_5_to_32bits decoder1(ctrl_readRegA, read_tmpA);
	decoder_5_to_32bits decoder2(ctrl_readRegB, read_tmpB);
	assign data_readRegA = read_tmpA[0] ? Qtmp[0] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[1] ? Qtmp[1] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[2] ? Qtmp[2] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[3] ? Qtmp[3] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[4] ? Qtmp[4] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[5] ? Qtmp[5] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[6] ? Qtmp[6] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[7] ? Qtmp[7] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[8] ? Qtmp[8] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[9] ? Qtmp[9] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[10] ? Qtmp[10] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[11] ? Qtmp[11] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[12] ? Qtmp[12] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[13] ? Qtmp[13] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[14] ? Qtmp[14] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[15] ? Qtmp[15] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[16] ? Qtmp[16] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[17] ? Qtmp[17] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[18] ? Qtmp[18] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[19] ? Qtmp[19] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[20] ? Qtmp[20] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[21] ? Qtmp[21] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[22] ? Qtmp[22] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[23] ? Qtmp[23] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[24] ? Qtmp[24] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[25] ? Qtmp[25] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[26] ? Qtmp[26] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[27] ? Qtmp[27] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[28] ? Qtmp[28] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[29] ? Qtmp[29] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[30] ? Qtmp[30] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegA = read_tmpA[31] ? Qtmp[31] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	
	assign data_readRegB = read_tmpB[0] ? Qtmp[0] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[1] ? Qtmp[1] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[2] ? Qtmp[2] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[3] ? Qtmp[3] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[4] ? Qtmp[4] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[5] ? Qtmp[5] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[6] ? Qtmp[6] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[7] ? Qtmp[7] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[8] ? Qtmp[8] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[9] ? Qtmp[9] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[10] ? Qtmp[10] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[11] ? Qtmp[11] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[12] ? Qtmp[12] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[13] ? Qtmp[13] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[14] ? Qtmp[14] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[15] ? Qtmp[15] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[16] ? Qtmp[16] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[17] ? Qtmp[17] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[18] ? Qtmp[18] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[19] ? Qtmp[19] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[20] ? Qtmp[20] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[21] ? Qtmp[21] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[22] ? Qtmp[22] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[23] ? Qtmp[23] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[24] ? Qtmp[24] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[25] ? Qtmp[25] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[26] ? Qtmp[26] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[27] ? Qtmp[27] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[28] ? Qtmp[28] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[29] ? Qtmp[29] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[30] ? Qtmp[30] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
	assign data_readRegB = read_tmpB[31] ? Qtmp[31] : 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
endmodule
