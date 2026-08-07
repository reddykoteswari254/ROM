# ROM (Read-Only Memory) using Verilog

## Overview

This project implements a simple **8×8 Read-Only Memory (ROM)** using Verilog HDL.

A Read-Only Memory (ROM) is a type of memory used to permanently store data. Unlike RAM, the contents of ROM cannot be modified during normal operation. ROM is widely used to store firmware, lookup tables, and fixed program instructions in digital systems.

---

## Features

- 8-bit Data Width
- 8 Memory Locations
- Combinational Read Operation
- Verilog HDL Implementation
- Testbench Included
- Simulation Ready

---

## Memory Contents

| Address | Data (Binary) | Data (Hex) |
|---------|---------------|------------|
| 000 | 00000011 | 03 |
| 001 | 00000110 | 06 |
| 010 | 00001001 | 09 |
| 011 | 00001100 | 0C |
| 100 | 00001111 | 0F |
| 101 | 00010010 | 12 |
| 110 | 00010101 | 15 |
| 111 | 00011000 | 18 |

---

## Files

src/
- rom.v

testbench/
- rom_tb.v

simulation/
- simulation_output.txt
- waveform.png

docs/
- report.pdf

---

## Software Required

- Icarus Verilog
- GTKWave
- ModelSim / Vivado (Optional)

---

## Compilation

```bash
iverilog -o rom src/rom.v testbench/rom_tb.v
```

Run Simulation

```bash
vvp rom
```

View Waveform

```bash
gtkwave dump.vcd
```

---

## Applications

- Firmware Storage
- Embedded Systems
- Lookup Tables
- Digital Signal Processing
- FPGA Designs

---

## Author

Your Name