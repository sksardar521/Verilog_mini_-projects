# Overlapping Sequence Detector (1101) - Verilog

This repository contains the design and verification of an **overlapping sequence detector** that detects the bit sequence **1101**.  
The project is implemented in **Verilog HDL**, tested with a **testbench**, and executed using **Xilinx Vivado**.

---

## 📌 Table of Contents
- [Introduction](#introduction)
- [Design Approach](#design-approach)
- [Tools Used](#tools-used)
- [Simulation & Verification](#simulation--verification)
- [Repository Structure](#repository-structure)
- [Future Work](#future-work)
- [Author](#author)

---

## 📝 Introduction
A **sequence detector** is a finite state machine (FSM) that monitors a stream of input bits and asserts its output when a specific sequence is detected.  

In this project, the detector is designed to recognize the sequence:

Since the design is **overlapping**, it can detect a new occurrence of the sequence starting from within the previous detection.  

Example input and output:
Input  : 1 1 0 1 1 0 1 0 1 1 0 1 1 0 1
Output :       1     1         1     1




---

## 🎯 Design Approach
- FSM-based design with states representing progress towards sequence detection.
  <img width="445" height="177" alt="image" src="https://github.com/user-attachments/assets/7cdbb725-5130-42ca-9e68-d8bad1e7ab39" />

- Implemented using **Mealy FSM** (output depends on both state and input).  
- Supports **overlapping detection**.  

---

## 🛠️ Tools Used
- **Verilog HDL** – Design and testbench coding.  
- **Xilinx Vivado** – Simulation and synthesis.  
- **Waveform Viewer** – For observing input/output signals.  

---

## ✅ Simulation & Verification
- The Verilog testbench applies different input sequences.  
- The detector successfully identifies **1101** even in overlapping cases.  
- Simulation waveforms confirm correct detection.  

---

## 📂 Repository Structure



---

## 🚀 Future Work
- Extend design to detect other sequences (parameterized detector).  
- Implement **non-overlapping** version and compare results.  
- Perform synthesis to FPGA board and test on hardware.  

---

## 👤 Author
**Shaik Sardar Basha**  
M.Tech (VLSI), NIT Jamshedpur  
Passionate about **Digital Design, FSMs,, Chip Design, and VLSI Implementation**.  

---

⭐ If you find this project helpful, don’t forget to give it a **star**!

