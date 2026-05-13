# Carry Save Adder (RTL Design + Testbench)

A high-speed Carry Save Adder (CSA) designed in Verilog with a simple and effective testbench for functional verification. The design demonstrates parallel addition of multiple binary inputs using carry-save logic, reducing propagation delay compared to conventional ripple-carry addition. Simulation waveforms verify correct sum and carry generation along with final addition results.

## 📁 Files Included

| File | Description |
|------|-------------|
| `csa.v` | RTL design of the Carry Save Adder |
| `tb_csa.v` | Verilog testbench for functional verification |
| `power.png` | Power analysis report of the CSA design |
| `schematic.png` | RTL/netlist schematic representation |
| `implementation.png` | FPGA/block implementation view |
| `waveform.png` | Simulation waveform showing CSA operation |


# RTL Design

A clean and synthesizable Verilog implementation of a Carry Save Adder using multiple full adders for parallel computation of sum and carry bits. The design minimizes carry propagation delay by storing intermediate carries separately before final addition, making it suitable for high-speed arithmetic applications such as multipliers, DSP blocks, and ALUs in FPGA and ASIC systems.

The architecture demonstrates efficient bit-level parallelism, modular design practices, and hardware-accurate combinational logic behavior suitable for digital arithmetic optimization.

View the full file: `csa.v`

# Testbench

A lightweight Verilog testbench developed to verify the functionality of the Carry Save Adder under multiple input combinations. The testbench applies different binary operands, monitors generated sum and carry outputs, and validates the final result through simulation waveforms.

The verification setup focuses on clarity and correctness while ensuring proper operation of the CSA logic without unnecessary complexity.

View the full file: `tb_csa.v`

# Conclusion

This project demonstrates the implementation and verification of a Carry Save Adder using structured RTL design techniques in Verilog. By reducing carry propagation overhead, the CSA achieves faster arithmetic performance compared to traditional adders. Through waveform analysis, schematic inspection, and implementation results, the project highlights efficient arithmetic hardware design suitable for academic projects, FPGA prototyping, and digital VLSI system development.
