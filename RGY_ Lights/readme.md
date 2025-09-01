# Traffic Lamp Controller (Verilog Design)

This repository contains the Verilog implementation of a **3-lamp traffic controller** where **Red, Green, and Yellow lamps glow cyclically** at a fixed interval.  

The project explores **two different coding styles** in Verilog, comparing their impact on **synthesis results (flip-flop count)**.

---


## 👤 Author
**Shaik Sardar Basha**  
M.Tech (VLSI), NIT Jamshedpur  
Passionate about **Digital Design, Verilog, and VLSI Circuit Optimization**.  

⭐ If you found this project useful, please give it a **star** and share your feedback!

---
## 📌 Table of Contents
- [Introduction](#introduction)
- [Design Specifications](#design-specifications)
- [Coding Approaches](#coding-approaches)
- [Tools Used](#tools-used)
- [Synthesis Results](#synthesis-results)
- [Repository Structure](#repository-structure)
- [Future Work](#future-work)
- [Author](#author)

---

## 📝 Introduction
Traffic light controllers are widely used as introductory examples in digital design.  
In this project, a **lamp cycling system** is designed in Verilog, ensuring the lamps glow in the following cyclic order with a **fixed time interval**:


---

## 🎯 Design Specifications
- **3 outputs**: Red, Green, Yellow (one active at a time).  
- **Cyclic behavior**: Lamps switch in sequence at regular intervals.  
- **Clock-driven design**: Controlled by flip-flops.  
- **Reset**: System initializes with Red lamp ON.  

---

## 💡 Coding Approaches

### 🔹 Type 1 Code
- Verilog code written in a straightforward style.  
- **Synthesis Result**: Generates **two sets of flip-flops**.  

### 🔹 Type 2 Code
- Optimized Verilog code with modified design style.  
- **Synthesis Result**: Generates **only one set of flip-flops**.  

This demonstrates how **different coding techniques in Verilog can impact hardware resource utilization** after synthesis.  

---

## 🛠️ Tools Used
- **Verilog HDL** for design and simulation.  
- **Xilinx Vivado**for synthesis and waveform viewing.    


---

## 📊 Synthesis Results
| Version       | Flip-Flops Used |
|---------------|-----------------|
| **Type 1**    | 2 sets of FFs   |
| **Type 2**    | 1 set of FFs    |

✅ Optimized design reduces hardware usage without changing functionality.  

---

## 📂 Repository Structure

---

## 🚀 Future Work
- Add **FSM (Finite State Machine) based implementation**.  
- Implement **parameterized interval control**.  
- Extend to **4-lamp traffic controller (Red, Yellow, Green, Walk signal)**.  
- Compare **timing and power results** across versions.  



