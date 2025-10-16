# Full_Adder

This project is a basic implementation of a Half Adder using the Verilog Hardware Description Language (HDL). It demonstrates a complete digital design flow, including RTL coding, verification via simulation, synthesis, and timing analysis using Intel Quartus Prime.

This project aims to understand the basic principles of combinational logic design and the digital design flow using Verilog HDL and Intel Quartus Prime tools.



1. Specification

Objective: To design a half adder circuit with two 1-bit inputs (A, B) and two 1-bit outputs (SUM, CARRY).

Truth Table:


![Truth Table](https://github.com/trungpham141205/Full_Adder/blob/main/images/Truth-table-of-a-Full-Adder.png)

Circuit diagram:


![Circuit Diagram](https://github.com/trungpham141205/Full_Adder/blob/main/images/circuit_diagram.png)



2. Behavioral Description

Behavioral RTL description of Half Adder written in Verilog.


![Behavioral Model](https://github.com/trungpham141205/Full_Adder/blob/main/images/full_adder.png)



3. Verification

The design is verified through a Verilog testbench and simulated using QuestaSim.

![Simulation Result](https://github.com/trungpham141205/Full_Adder/blob/main/images/full_adder_tb.png)

![Simulation Result](https://github.com/trungpham141205/Full_Adder/blob/main/images/stimulate.png)



4. Simulation & Debug

Tool: QuestaSim

Waveform Simulation


![Waveform Simulation](https://github.com/trungpham141205/Full_Adder/blob/main/images/wave.png) 



5. Synthesis

Tool: Intel Quartus Prime

Objective: Synthesize Verilog into a netlist (logic gate circuit).

After successful synthesis, the RTL Viewer shows the gate-level structure of the Half Adder circuit.

The RTL Viewer confirms that the synthesized design consists of one XOR gate and one AND gate, corresponding to the Half Adder logic.

![RTL Viewer](https://github.com/trungpham141205/Full_Adder/blob/main/images/RTL_viewer.png)



6. Static Timing Analysis

Tool: Intel Quartus Prime

Timing and resource utilization are analyzed post-synthesis using Quartus STA tool.

The design meets all timing requirements with positive slack, indicating successful synthesis and implementation.

Check Fmax Summary

![Fmax Report](https://github.com/trungpham141205/Full_Adder/blob/main/images/fmax_report.png)

Datasheet Report

![Datasheet](https://github.com/trungpham141205/Full_Adder/blob/main/images/datasheet_report.png)



7. Conclusion

The Half Adder was successfully designed, simulated, and synthesized.  

The project demonstrates a complete digital design flow from RTL coding to timing analysis.