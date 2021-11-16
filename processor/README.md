# ECE550 Processor Project

### Assignments
* [Processor Checkpoint 4](https://docs.google.com/document/d/1zV90qzHWJHSYq9R-bINMuFR3Ofr0463e-bUarTt1WJ0/edit)
* [Processor Checkpoint 5](https://docs.google.com/document/d/1GRECE0IlpsEvEKdVMAwLbKDPVsT8RTx7MYurCkVbO4s/edit)
> Design and simulate a Processor using Verilog with function:
>* R-type instructions (add, sub, and, or)
>* I-type instructions (addi, sll, sra, sw, lw)
>* J-type instructions (j, jal, jr, bne, blt, bex, setx)


### Members:

* ct265 : Chenglong Tang
* yw473 : Yingxu Wang
* gw79: Guohao Wu

### Hierarchy of the Project (.v)
    .
    ├── skeleton.v (top-level)
    │   ├── processor.v 
    │   ├── alu.v 
    │   ├── regfile.v
    │   ├── imem.v (removed for grading)
    │   ├── dmem.v (removed for grading)
    │   └── clock_divider.v
    ├── imem.mif (removed for grading)
    └── dmem.mif (removed for grading)

### Module Interface

```
module skeleton(clock, reset, imem_clock, dmem_clock, processor_clock, regfile_clock, wren, address_imem, q_imem, address_dmem, q_dmem, data, ctrl_writeEnable, ctrl_writeReg, ctrl_readRegA, ctrl_readRegB, data_writeReg, data_readRegA, data_readRegB, data_A, data_B);
    /** IMEM **/
    imem my_imem(
        .address    (address_imem),            // address of data
        .clock      (imem_clock),                  // you may need to invert the clock
        .q          (q_imem)                   // the raw instruction
    );
    /** DMEM **/
    dmem my_dmem(
        .address    (address_dmem/* 12-bit wire */),       // address of data
        .clock      (dmem_clock),                  // may need to invert the clock
        .data	    (data/* 32-bit data in */),    // data you want to write
        .wren	    (wren/* 1-bit signal */),      // write enable
        .q          (q_dmem/* 32-bit data out */)    // data from dmem
    );
    /** REGFILE **/
    regfile my_regfile(
        regfile_clock,
        ctrl_writeEnable,
        reset,
        ctrl_writeReg,
        ctrl_readRegA,
        ctrl_readRegB,
        data_writeReg,
        data_readRegA,
        data_readRegB
    );
    /** PROCESSOR **/
    processor my_processor(
        // Control signals
        processor_clock,                          // I: The master clock
        reset,                          // I: A reset signal

        // Imem
        address_imem,                   // O: The address of the data to get from imem
        q_imem,                         // I: The data from imem

        // Dmem
        address_dmem,                   // O: The address Fof the data to get or put from/to dmem
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
endmodule
```

### Bugs or issues encountered

When dubugging we found that ctrl_writeEnable did not function well as expected. It is due to some J types need to write to regfile but I did not accommodate for that.

### Test method
We used waveform time simulation to test it's functionality.