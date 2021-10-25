# ECE550 Processor Project

### Assignments
* [Processor](https://docs.google.com/document/d/1zV90qzHWJHSYq9R-bINMuFR3Ofr0463e-bUarTt1WJ0/edit)
> Design and simulate a Processor using Verilog with function:
>* R-type instructions (add, sub, and, or)
>* I-type instructions (addi, sll, sra, sw, lw)


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
    │   ├── imem.v
    │   ├── dmem.v
    │   └── clock_divider.v
    ├── imem.mif
    └── dmem.mif

### Module Interface

```
module skeleton(clock, reset, imem_clock, dmem_clock, processor_clock, regfile_clock, wren, address_imem, q_imem, address_dmem, q_dmem, data, ctrl_writeEnable, ctrl_writeReg, ctrl_readRegA, ctrl_readRegB, data_writeReg, data_readRegA, data_readRegB, data_A, data_B);
    /** IMEM **/

    /** DMEM **/

    /** REGFILE **/

    /** PROCESSOR **/
endmodule
```

### Bugs or issues encountered

While writing regfile, I found that there was a warning that showed that Design contains combinational loop of 585 nodes after we added the overflow feature. It might because the given file alu.v using behavioural verilog and the design become too complicated.
