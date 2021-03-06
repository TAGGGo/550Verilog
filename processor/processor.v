/**
 * READ THIS DESCRIPTION!
 *
 * The processor takes in several inputs from a skeleton file.
 *
 * Inputs
 * clock: this is the clock for your processor at 50 MHz
 * reset: we should be able to assert a reset to start your pc from 0 (sync or
 * async is fine)
 *
 * Imem: input data from imem
 * Dmem: input data from dmem
 * Regfile: input data from regfile
 *
 * Outputs
 * Imem: output control signals to interface with imem
 * Dmem: output control signals and data to interface with dmem
 * Regfile: output control signals and data to interface with regfile
 *
 * Notes
 *
 * Ultimately, your processor will be tested by subsituting a master skeleton, imem, dmem, so the
 * testbench can see which controls signal you active when. Therefore, there needs to be a way to
 * "inject" imem, dmem, and regfile interfaces from some external controller module. The skeleton
 * file acts as a small wrapper around your processor for this purpose.
 *
 * You will need to figure out how to instantiate two memory elements, called
 * "syncram," in Quartus: one for imem and one for dmem. Each should take in a
 * 12-bit address and allow for storing a 32-bit value at each address. Each
 * should have a single clock.
 *
 * Each memory element should have a corresponding .mif file that initializes
 * the memory element to certain value on start up. These should be named
 * imem.mif and dmem.mif respectively.
 *
 * Importantly, these .mif files should be placed at the top level, i.e. there
 * should be an imem.mif and a dmem.mif at the same level as process.v. You
 * should figure out how to point your generated imem.v and dmem.v files at
 * these MIF files.
 *
 * imem
 * Inputs:  12-bit address, 1-bit clock enable, and a clock
 * Outputs: 32-bit instruction
 *
 * dmem
 * Inputs:  12-bit address, 1-bit clock, 32-bit data, 1-bit write enable
 * Outputs: 32-bit data at the given address
 *
 */
module processor(
    // Control signals
    clock,                          // I: The master clock
    reset,                          // I: A reset signal

    // Imem
    address_imem,                   // O: The address of the data to get from imem
    q_imem,                         // I: The data from imem

    // Dmem
    address_dmem,                   // O: The address of the data to get or put from/to dmem
    data,                           // O: The data to write to dmem
    wren,                           // O: Write enable for dmem
    q_dmem,                         // I: The data from dmem

    // Regfile
    ctrl_writeEnable,               // O: Write enable for regfile
    ctrl_writeReg,                  // O: Register to write to in regfile
    ctrl_readRegA,                  // O: Register to read from port A of regfile
    ctrl_readRegB,                  // O: Register to read from port B of regfile
    data_writeReg,                  // O: Data to write to for regfile
    data_readRegA,                  // I: Data from port A of regfile
    data_readRegB,                   // I: Data from port B of regfile
	 data_A,
	 data_B
);
    // Control signals
    input clock, reset;

    // Imem & PC
    output reg [11:0] address_imem;
    input [31:0] q_imem;

    // Dmem
    output [11:0] address_dmem;
    output [31:0] data;
    output wren;
    input [31:0] q_dmem;

    // Regfile
    output ctrl_writeEnable;
    output [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
    output [31:0] data_writeReg;
    input [31:0] data_readRegA, data_readRegB;

    /* YOUR CODE STARTS HERE */
    
	 // alu
	 wire [31:0] data_result;
	 output [31:0] data_A;
	 output [31:0] data_B;
	 wire isNotEqual, isLessThan, overflow;
	 wire [4:0] opt_code;
	 wire [31:0] true_overflow_val;
	 assign opt_code = (q_imem[31:27] == 5'b00000) ? q_imem[6:2] : 5'b00000;
	 assign data_A = data_readRegA;
	 assign data_B = (q_imem[31:27] == 5'b00000) ? data_readRegB : ({{15{q_imem[16]}}, q_imem[16:0]});
	 assign true_overflow_val = q_imem[31:27] == 5'b00000 ? ((q_imem[6:2] == 5'b00000) ? 32'd1 : (q_imem[6:2] == 5'b00001 ? 32'd3 : 32'd0))
											: (q_imem[31:27] == 5'b00101 ? 32'd2 : 32'd0);
	 alu core_alu(data_A, data_B, opt_code,
			q_imem[11:7], data_result, isNotEqual, isLessThan, overflow);
	 
	 // Imem & PC
	 always @(posedge clock, posedge reset) begin
		if(reset) begin
			address_imem <= 12'b0;		
		end
		else if(q_imem[31:27] == 5'b00001 | q_imem[31:27] == 5'b00011 | (q_imem[31:27] == 5'b10110 & data_readRegA != 32'd0))
			address_imem <= q_imem[11:0];
		else if((q_imem[31:27] == 5'b00010 & data_readRegA != data_readRegB) | (q_imem[31:27] == 5'b00110 & data_readRegB < data_readRegA))
			address_imem <= address_imem + 12'd1 + q_imem[11:0];
		else if(q_imem[31:27] == 5'b00100)
			address_imem <= data_readRegB[11:0];
		else
			address_imem <= address_imem + 12'd1;
    end
	 
	 // Dmem
	 assign address_dmem = data_result[11:0];
	 assign data = data_readRegB;
	 assign wren = (q_imem[31:27] == 5'b00111) ? 1'b1 : 1'b0;
	 
	 // Regfile
	 wire [31:0] tmp_data_writeReg;
	 assign tmp_data_writeReg = (q_imem[31:27] == 5'b01000) ? q_dmem : (q_imem[31:27] == 5'b10101 ? ({{5{q_imem[26]}}, q_imem[26:0]}) : data_result);
	 assign ctrl_writeEnable = ~clock & ((q_imem[31:27] == 5'b00011 | q_imem[31:27] == 5'b10101 | q_imem[31:27] == 5'b00000 | q_imem[31:27] == 5'b01000 | q_imem[31:27] == 5'b00101) ? 1'b1 : 1'b0);
    assign data_writeReg = (true_overflow_val != 32'd0 & overflow) ? true_overflow_val : (q_imem[31:27] == 5'b00011 ? address_imem + 1 : tmp_data_writeReg);
	 // $rs
	 assign ctrl_readRegA = q_imem[31:27] == 5'b10110 ? 5'd30 : q_imem[21:17];
	 // $rd/$rt
	 assign ctrl_readRegB = (q_imem[31:27] == 5'b00111 | q_imem[31:27] == 5'b00010 | q_imem[31:27] == 5'b00110 | q_imem[31:27] == 5'b00100) ? q_imem[26:22] : q_imem[16:12];
	 assign ctrl_writeReg = ((true_overflow_val != 32'd0 & overflow) | (q_imem[31:27] == 5'b10101)) ? 5'd30 : (q_imem[31:27] == 5'b00011 ? 5'd31 : q_imem[26:22]);
	 
	 
endmodule
