# 3-Stage Pipeline in Verilog

This repository contains the Verilog implementation of a **simple 3-stage pipeline** along with its testbench.  
The design demonstrates pipelined computation where input operands are processed through sequential pipeline stages, improving throughput.

---

## 📌 Table of Contents
- [Introduction](#introduction)
- [Design Overview](#design-overview)
- [Pipeline Stages](#pipeline-stages)
- [Tools Used](#tools-used)
- [Simulation & Verification](#simulation--verification)
- [Repository Structure](#repository-structure)
- [Future Work](#future-work)
- [Author](#author)

---

## 📝 Introduction
Pipelining is a fundamental technique in digital design to improve performance by dividing computation into multiple stages.  
In this project, a **3-stage pipeline** is designed in Verilog and simulated to verify correct functionality.

The pipeline computes:

---

## ⚙️ Design Overview
- **Inputs**: `a`, `b`, `c`, `d` (10-bit each, configurable via parameter `n`).  
- **Output**: `f` (10-bit).  
- **Clock**: Pipeline progresses on positive clock edges.  
- **Registers**: Used between stages for pipelining.  

---

## ⏩ Pipeline Stages
1. **Stage 1 (Fetch operands)**  
   - Compute `x1 = a + b`  
   - Compute `x2 = c - d`  
   - Store delayed `d`  

2. **Stage 2 (Intermediate calculation)**  
   - Compute `x3 = x1 + x2`  
   - Pass delayed `d` forward  

3. **Stage 3 (Final computation)**  
   - Compute final output `f = x3 * d`  

---

## 🛠️ Tools Used
- **Verilog HDL** – RTL design and testbench  
- **Icarus Verilog / Xilinx Vivado** – Simulation  
- **GTKWave** – Waveform viewing  

---

## ✅ Simulation & Verification
- The design is tested using a custom testbench (`pipetest.v`).  
- Clock toggles every **10 time units**.  
- Multiple input sets are applied to test pipelined operation.  
- Simulation output is dumped to **pipe.vcd** for waveform analysis.  

Sample output (console log):  

---

## 📂 Repository Structure

---

## 🚀 Future Work
- Parameterize stage delays for experimentation.  
- Extend to **N-stage pipeline** for complex operations.  
- Add **hazard detection and forwarding** like in processor pipelines.  
- Implement synthesis and FPGA verification.  

---

## 👤 Author
**Shaik Sardar Basha**  
M.Tech (VLSI), NIT Jamshedpur  
Passionate about **Digital Design, Chip Design, and Pipelined Architectures**.  

---

⭐ If you find this project useful, please give it a **star** and share your feedback!
