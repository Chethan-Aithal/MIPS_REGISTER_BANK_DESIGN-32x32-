# Register Bank using Verilog HDL

## Overview

This project implements a **32 × 32 Register Bank** in Verilog HDL.

The register bank consists of 32 registers, each storing 32-bit data. It supports two simultaneous read operations and one write operation, making it suitable for processor and datapath designs.

---

## Features

- 32 Registers
- 32-bit Data Width
- Dual Read Ports
- Single Write Port
- Synchronous Write Operation
- Synchronous Reset
- Synthesizable Verilog Design

---

## Ports

| Signal | Width | Description |
|----------|----------|-------------|
| clk | 1 | System Clock |
| reset | 1 | Resets all registers |
| write | 1 | Write Enable |
| SR1 | 5 | Source Register 1 Address |
| SR2 | 5 | Source Register 2 Address |
| DR | 5 | Destination Register Address |
| wrData | 32 | Data to be Written |
| rdData1 | 32 | Data Read from SR1 |
| rdData2 | 32 | Data Read from SR2 |

---

## Working

### Reset Operation

When `reset` is asserted, all registers are cleared.

```text
reset = 1
All registers = 0
```

### Write Operation

Data is written into the destination register on the rising edge of the clock when write enable is high.

```text
write = 1
regfile[DR] <= wrData
```

### Read Operation

Two registers can be read simultaneously.

```text
rdData1 = regfile[SR1]
rdData2 = regfile[SR2]
```

---

## Example

### Write Data

```text
DR = 5
wrData = 100
write = 1
```

Result:

```text
Register[5] = 100
```

### Read Data

```text
SR1 = 5
SR2 = 10
```

Output:

```text
rdData1 = Register[5]
rdData2 = Register[10]
```

---

## Applications

- Processor Register Files
- RISC Architectures
- CPU Datapaths
- FPGA-Based Systems
- Embedded Systems
- Digital Design Projects

---

## Simulation

The included testbench demonstrates:

- Register Reset
- Write Operations
- Dual Read Operations
- Waveform Verification

---

## Author

Created by **Chethan Aithal**
