# ECE550 ALU Project

### Assignments
* [checkpoint 1](https://docs.google.com/document/d/1kXd8SHjdnGrfRv0YibanIuTGTSrDy7iLgdmm2_ktL8U/edit)
> Implelement None-RCA 32-bit 'add/subtract' with overflow

* [checkpoint 2](https://docs.google.com/document/d/1UuaX3OY1PhBNmohwLkAjeX-P-0JZbrEk6nSe53Ot-s0/edit)
> Implelement bitwise AND, OR **without** the built in &, &&, |, and || operators
> 32-bits barrel shifter with SLL (Logical Left Shift) and SRA (Arithmetic Right Shift) **without** the <<, <<<, >>, and >>> operators

### Members:

* ct265 : Chenglong Tang
* yw473 : Yingxu Wang

### Hierarchy of the Project (.v)
    .
    ├── alu.v (top-level)
    │   ├── my_csa.v (32-bit Adder)
    │   │   └── my_mux.v (2-to-1 Mux)
    │   │   └── full_adder.v (1-bit Adder with Cin)
    │   └── my_not.v (32-bitwise Not Gate)
    │   └── my_and.v (32-bitwise And Gate)
    │   └── my_or.v (32-bitwise Or Gate)
    │   └── equal_zero.v (Check if 32 Bits Value Equals Zero)
    │   └── left_shift.v (32-bitwise Left Shift Gate)
    │   └── right_shift.v (32-bitwise Right Shift Gate)
    └── alu_tb.v

### Module Interface

1. interface
```
module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

endmodule
```
2. ALU Opcode

Operation | ALU Opcode | Description
--- | --- | ---
**ADD** | 00000 | data_operandA + data_operandB
**SUBTRACT** | 00001 | data_operandA - data_operandB
**AND** | 00010 | data_operandA & data_operandB
**OR** | 00011 | data_operandA \| data_operandB
**SLL** | 00100 | data_operandA << ctrl_shiftamt
**SRA** | 00101 | data_operandA >> ctrl_shiftamt

3. Signals

Signals | Type | Description
--- | --- | ---
**ctrl_shiftamt** | input | Shift amount for SLL and SRA operations
**isNotEqual** | output | Asserts true **iff** data_operandA and data_operandB are not equal
**isLessThan** | output | Asserts true **iff** data_operandA is **strictly** less than data_operandB
**overflow** | output | Asserts true **iff** there is an overflow in ADD or SUBTRACT

