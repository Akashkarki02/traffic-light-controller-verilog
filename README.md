# 🚦 Traffic Light Controller Using Verilog

A simple **Traffic Light Controller** designed and simulated using **Verilog HDL**.
This project demonstrates how a **Finite State Machine (FSM)** can be used to control traffic lights in a sequential digital system.

## 📌 Project Overview

The Traffic Light Controller controls three traffic lights:

* 🔴 **Red**
* 🟡 **Yellow**
* 🟢 **Green**

The controller changes the traffic-light state according to a predefined sequence using a clock signal and reset.

### Traffic Sequence

```text
RED → GREEN → YELLOW → RED → ...
```

The design is implemented using **Verilog HDL** and tested using a **Verilog testbench**.

## 🎯 Objectives

* Understand the basics of **Finite State Machines (FSM)**
* Design a sequential digital circuit using Verilog
* Implement a practical traffic-light control system
* Create and use a Verilog testbench
* Simulate and verify the design using **EDA Playground**
* Gain practical experience useful for **embedded systems and digital design**

## 🛠️ Technologies Used

* **Verilog HDL**
* **EDA Playground**
* **Digital Logic / FSM**
* **Simulation & Waveform Analysis**

## 📁 Project Structure

```text
Traffic-Light-Controller/
│
├── traffic_light_controller.v
├── traffic_light_controller_tb.v
└── README.md
```

### `traffic_light_controller.v`

Contains the main Traffic Light Controller design.

### `traffic_light_controller_tb.v`

Contains the testbench used to generate the clock, reset, and verify the controller outputs.

## 🔌 Inputs and Outputs

| Signal   | Type   | Description           |
| -------- | ------ | --------------------- |
| `clk`    | Input  | Clock signal          |
| `reset`  | Input  | Resets the controller |
| `red`    | Output | Red traffic light     |
| `yellow` | Output | Yellow traffic light  |
| `green`  | Output | Green traffic light   |

## 🔄 FSM Operation

The controller operates using three states:

```text
       ┌─────────┐
       │   RED   │
       └────┬────┘
            ↓
       ┌─────────┐
       │  GREEN  │
       └────┬────┘
            ↓
       ┌─────────┐
       │ YELLOW  │
       └────┬────┘
            │
            └──────────→ RED
```

Each state activates the corresponding traffic light output.

## 🧪 Simulation

The design can be simulated using **EDA Playground**.

### Steps

1. Open EDA Playground.
2. Create the Verilog design file.
3. Create the testbench file.
4. Select a suitable Verilog simulator.
5. Run the simulation.
6. Observe the output and waveform.
7. Verify that the traffic lights change in the correct sequence.

## ✅ Expected Output

The expected sequence is:

```text
RED
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
 ↓
GREEN
 ↓
...
```

Only the appropriate traffic light should be active for each state.

## 📚 Concepts Learned

Through this project, the following concepts are practiced:

* Verilog HDL
* Digital Logic Design
* Finite State Machines
* Sequential Circuits
* Clock and Reset
* Testbench Design
* Simulation
* Waveform Analysis

## 🚀 Future Improvements

This basic controller can be extended by adding:

* 🚗 Two-way traffic control
* ⏱️ Different timing for each light
* 🚶 Pedestrian crossing control
* 🔘 Emergency vehicle priority
* 🚦 Seven-segment countdown display
* 🔧 FPGA implementation

## 👨‍💻 Author

**Akash Karkihalli (Karki)**

Electronics & Communication Engineering Student
Interested in **Digital Electronics, Verilog and Embedded Systems**.

---

⭐ *This project is part of my learning journey toward becoming an Embedded Systems Engineer.*
