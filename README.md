# PIC24 Instruction Set Implementation in VHDL

A university computer architecture project focused on implementing and verifying a simplified PIC24-style processor using VHDL.

The project was developed in a Xilinx-based environment and verified using ModelSim and MPLAB X IDE.  
It includes custom instruction implementations, control logic design, ALU operations, branching behavior, register management, and simulation-based verification.

---

## Project Overview

This project implements the core components of a simplified PIC24 microcontroller architecture, including:

- Program Counter (PC)
- Branch logic and PC update unit
- Control Unit (CU)
- Arithmetic Logic Unit (ALU)
- Register File
- ROM instruction memory
- Data memory
- Multiplexers and datapath routing

The processor supports arithmetic, logical, memory, and branching instructions while maintaining status flag behavior (N, Z, OV, C).

---

## Technologies Used

- VHDL
- ModelSim
- Xilinx
- MPLAB X IDE

---

## Implemented Instructions

### Arithmetic / Logical Instructions
- ADD
- SUB
- SUBB
- AND
- IOR
- XOR #lit10, Wn
- INC2 Ws, Wd
- SL Wb, Wns, Wnd

### Memory Instructions
- MOV f, wnd
- MOV wns, f

### Branch Instructions
- BRA expr
- BRA OV
- BRA C
- BRA N
- BRA Z

---

## Architecture Highlights

### Control Unit
The Control Unit decodes OPCODE and function fields and generates:
- ALU operation signals
- Register write controls
- Memory access controls
- Branch selection signals
- Status flag enable signals

### ALU
The ALU supports:
- arithmetic operations,
- logical operations,
- shifting,
- carry-aware subtraction,
- immediate literal operations.

It also computes:
- Negative Flag (NF)
- Zero Flag (ZF)
- Overflow Flag (OVF)
- Carry Flag (CF)

### Branching System
Conditional and unconditional branch instructions were implemented using:
- status flag evaluation,
- offset-based PC updates,
- branch control vectors.

---

## Verification & Testing

The processor behavior was verified using ModelSim simulations.

Testing included:
- arithmetic correctness,
- flag behavior validation,
- conditional branching verification,
- shifting operations,
- carry/overflow edge cases,
- instruction execution correctness.

Simulation scenarios include:
- BRA Z
- BRA N
- BRA C
- BRA OV
- Zero tests
- Carry tests
- Overflow tests
- XOR immediate tests
- Shift instruction tests

---

## Documentation

A full technical documentation PDF is available in the `/docs` directory.

The documentation includes:
- architecture explanations,
- datapath descriptions,
- ALU behavior,
- instruction encoding tables,
- control unit truth tables,
- simulation screenshots,
- verification results.

---

## Repository Structure

```text
/docs          -> Technical documentation
/src           -> VHDL source files
/tests         -> Test benches and simulations
/screenshots   -> Simulation and architecture screenshots
```

---

## Screenshots

(Add screenshots here)

Examples:
- Block diagram
- ALU simulations
- Branch instruction verification
- Flag behavior tests

---

## Author

Denis-Gabriel Răduică-Boța  
Computer Engineering / Computer Science Student  
Faculty of Automation, Computers and Electronics  
University of Craiova
