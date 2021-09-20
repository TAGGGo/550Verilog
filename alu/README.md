# ECE550 ALU CheckPoint 1
> Implelement None-RCA 32-bit 'add/subtract' with overflow ([link](https://docs.google.com/document/d/1kXd8SHjdnGrfRv0YibanIuTGTSrDy7iLgdmm2_ktL8U/edit))
### Members:

* ct265 : Chenglong Tang
* yw473 : Yingxu Wang

### Hierarchy of the Project (.v)
    .
    ├── alu.v
    │   ├── my_csa.v (32-bit Adder)
    │   │   └── my_mux.v (2-to-1 Mux)
    │   │   └── full_adder.v (1-bit Adder with Cin)
    │   └── my_not.v (32-bitwise Not Gate)
    └── alu_tb.v

### Problems or Thinkings

When I first ran the project, data_result is 32'hxxxxxxxx. It implies that one of the inputs was random/ unset.
Then I solved it by identifying where I omitted the input.