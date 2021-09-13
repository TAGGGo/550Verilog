module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire [31:0] tmp_operandB;
	wire [31:0] tmp_notB;
	my_not my_not_0(data_operandB, tmp_notB);
	assign tmp_operandB = (ctrl_ALUopcode[0] ? tmp_notB : data_operandB);
	
	my_csa my_csa_0(data_operandA, tmp_operandB, ctrl_ALUopcode[0], data_result, overflow);
endmodule
