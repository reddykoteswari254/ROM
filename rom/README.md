# 16 x 8 ROM Using Verilog HDL

## 📌 Project Description

This project implements a **16 × 8 Read Only Memory (ROM)** using Verilog HDL.

ROM is a non-volatile memory that stores fixed data. The stored data can be read using an address input.

In this project:

* **16 memory locations** are available.
* Each memory location stores **8 bits**.
* A **4-bit address** is used to select one of the 16 locations.
* An **8-bit data output** provides the stored value.

### ROM Size

```text
16 locations × 8 bits
```

Therefore:

```text
Address width = log₂(16) = 4 bits
Data width    = 8 bits
```

---

## 🔧 Inputs and Outputs

| Signal    | Direction | Width  | Description          |
| --------- | --------- | ------ | -------------------- |
| `address` | Input     | 4 bits | Selects ROM location |
| `data`    | Output    | 8 bits | Stored ROM data      |

---

## 📊 ROM Memory Table

| Address | Data |
| ------- | ---- |
| 0000    | 10H  |
| 0001    | 21H  |
| 0010    | 32H  |
| 0011    | 43H  |
| 0100    | 54H  |
| 0101    | 65H  |
| 0110    | 76H  |
| 0111    | 87H  |
| 1000    | 98H  |
| 1001    | A9H  |
| 1010    | BAH  |
| 1011    | CBH  |
| 1100    | DCH  |
| 1101    | EDH  |
| 1110    | FEH  |
| 1111    | FFH  |

---

## ⚙️ Working Principle

The 4-bit address selects one of the 16 ROM locations.

For example:

```text
Address = 0000 → Data = 10H
Address = 0001 → Data = 21H
Address = 0010 → Data = 32H
Address = 0011 → Data = 43H
```

Similarly:

```text
Address = 1111 → Data = FFH
```

The ROM contents are defined inside a Verilog `case` statement.

---

## 🧩 Block Diagram

```text
             +----------------------+
             |                      |
 Address --->|       16 x 8 ROM     |---> Data [7:0]
  [3:0]      |                      |
             +----------------------+
```

---

## 💻 Project Files

```text
rom-16x8-verilog/
│
├── README.md
├── rom_16x8.v
├── rom_16x8_tb.v
└── simulation/
    └── rom_waveform.vcd
```

### `rom_16x8.v`

Contains the Verilog implementation of the 16 × 8 ROM.

### `rom_16x8_tb.v`

Contains the testbench used to test all 16 memory addresses.

### `rom_waveform.vcd`

Contains the waveform generated during simulation.

---

# 🧪 Simulation

This project can be simulated using:

* Icarus Verilog
* GTKWave
* ModelSim
* Vivado
* EDA Playground

## Using Icarus Verilog

### Step 1: Compile

```bash
iverilog -o rom_sim rom_16x8.v rom_16x8_tb.v
```

### Step 2: Run

```bash
vvp rom_sim
```

### Step 3: View waveform

```bash
gtkwave rom_waveform.vcd
```

---

# 📈 Expected Simulation Output

```text
------------------------------------------
       16 x 8 ROM SIMULATION
------------------------------------------
Time    Address Data
------------------------------------------
10      0       10
20      1       21
30      2       32
40      3       43
50      4       54
60      5       65
70      6       76
80      7       87
90      8       98
100     9       A9
110     A       BA
120     B       CB
130     C       DC
140     D       ED
150     E       FE
160     F       FF
------------------------------------------
Simulation Completed
------------------------------------------
```

---

# 📊 Waveform

After running the simulation, open:

```text
rom_waveform.vcd
```

using GTKWave.

The waveform will show:

```text
Address : 0  1  2  3  4  5 ... E  F

Data    : 10 21 32 43 54 65 ... FE FF
```

The data output changes according to the selected ROM address.

---

# 🎯 Applications of ROM

ROM is commonly used in:

* Microcontroller systems
* Firmware storage
* Boot programs
* Lookup tables
* Embedded systems
* Digital systems
* FPGA designs
* Control systems

---

# 🎓 Learning Outcomes

After completing this project, you will understand:

1. What ROM is.
2. How memory addresses work.
3. How a 16 × 8 ROM is designed.
4. Verilog `case` statements.
5. Verilog testbench development.
6. Simulation using Icarus Verilog.
7. Waveform analysis using GTKWave.
8. How to organize a hardware project on GitHub.

---

# 🚀 How to Upload to GitHub

Create a new repository named:

```text
rom-16x8-verilog
```

Upload the following files:

```text
README.md
rom_16x8.v
rom_16x8_tb.v
simulation/rom_waveform.vcd
```

Your final GitHub repository will contain the complete **ROM design, Verilog code, testbench, simulation waveform, and documentation**.

---

## 👩‍💻 Author

**Koteswari Reddy**

### Project Title

**Design and Simulation of 16 × 8 ROM Using Verilog HDL**
