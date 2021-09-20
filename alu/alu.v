module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	

   // YOUR CODE HERE //
	wire tmp_isLessThan;
	wire [31:0] not_operandB;
	my_not my_not_0(data_operandB, not_operandB);
	
	// add answer
	wire [31:0] add_ans;
	wire add_answer_overflow;
	my_csa my_csa_0(data_operandA, data_operandB, 0, add_ans, add_answer_overflow);
	//assign data_result = add_ans;
	
	// subtract answer
	wire [31:0] sub_ans;
	wire sub_answer_overflow;
	my_csa my_csa_1(data_operandA, not_operandB, 1, sub_ans, sub_answer_overflow);
	
	// and answer
	wire [31:0] and_ans;
	my_and my_and_0(data_operandA, data_operandB, and_ans);
	
	// or answer
	wire [31:0] or_ans;
	my_or my_or_0(data_operandA, data_operandB, or_ans);
	
	// SLL
	wire [31:0] left_shift_ans;
	left_shift my_left_shift(data_operandA, ctrl_shiftamt, left_shift_ans);
	
	// SRA
	wire [31:0] right_shift_ans;
	right_shift my_right_shift(data_operandA, ctrl_shiftamt, right_shift_ans);
	
	// choose answer
	assign data_result = ctrl_ALUopcode[2] ? (ctrl_ALUopcode[0] ? right_shift_ans : left_shift_ans) : (ctrl_ALUopcode[1] ? (ctrl_ALUopcode[0] ? or_ans : and_ans) : (ctrl_ALUopcode[0] ? sub_ans : add_ans));
	
	//assign data_result = add_ans;
	// overflow
	assign overflow = ctrl_ALUopcode[0] ? sub_answer_overflow : add_answer_overflow;
	
	// isNotEqual
	equal_zero my_ezero(data_result, isNotEqual);
	
	// isLessThan
	assign tmp_isLessThan = data_result[31] ? 1 : 0;
	xor my_xor(isLessThan, overflow, tmp_isLessThan);
	
	
endmodule
