# ECE550 Register File Project

### Assignments
* [Register File](https://docs.google.com/document/d/13pMWzsmZfrICd5y8h_IV-i10vbHDuiZZa8V3Kn0VrvU/edit)
> Design and simulate a register file using Verilog with:
>* 2 read ports
>* 1 write port
>* 32 registers (32-bits wide)


### Members:

* ct265 : Chenglong Tang
* yw473 : Yingxu Wang
* gw79: Guohao Wu

### Hierarchy of the Project (.v)
    .
    ├── regfile.v (top-level)
    │   ├── decoder_5_to_32bits.v (5-to-32-bit Decoder)
    │   └── dffe_ref.v (32-bit D Flip-Flops)
    └── regfile_tb.v (Testcase for regfile.v)

### Module Interface

```
module regfile(
clock, ctrl_writeEnable, ctrl_reset, ctrl_writeReg, ctrl_readRegA, ctrl_readRegB, data_writeReg, data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;
endmodule
```
### How fast my register file can be locked?

>We are doing the experiment under the clock with different clock-flip intervals(10/1/0.1/0.5/0.04/0.01) under the same timescale of 1ns(time unit) and 100ps(time precision). For each case we recorded number of errors happening while running RTL simulation.
```
`timescale 1 ns / 100 ps
// Clock generator
always
  #10/1/0.1/0.05/0.04/0.01     clock = ~clock;    // toggle
```
<table >
  <tr>
    <th align="center">Clock(ns)</th>
    <td align="center">10</td>
    <td align="center">1</td>
    <td align="center">0.1</td>
    <td align="center">0.05</td>
    <td align="center">0.04</td>
    <td align="center">0.01</td>
  </tr>
  <tr>
    <th align="center">Errors #</th>
    <td align="center">0</td>
    <td align="center">0</td>
    <td align="center">0</td>
    <td align="center">0</td>
    <td align="center">62</td>
    <td align="center">62</td>
  </tr>
</table>

>We can see that the limitation is 0.05ns, which means the register file would not make an error if the clock changes every 0.5ns. The frequency is 20 billion Hz(1/0.05ns).

### Bugs or issues encountered

While writing regfile, I found that there was a warning that showed that I assigned 32 bit value into 1 bit variable. It turned out that I forgot to define array for reg q in dffe_ref.v.
```
   reg q;
   //Intialize q to 0
   initial
   begin
       q = 32'b0; // generate the warning!
   end
```
Definition of q should be changed to:
```
   reg [31:0] q;
```
Then the bug got solved.
