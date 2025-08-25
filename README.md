# Planetary Lander Quadcopter with Terrain-Relative Navigation

## Overview
This repository contains the work for our **2026 Senior Design Project**, which aims to design and implement an **autonomous quadcopter that simulates a planetary lander**.  
The system performs **autonomous descent, hazard avoidance, and precision landing** using **terrain-relative navigation (TRN)** driven by **vision-based navigation (VBN)**.  

Our approach integrates **control theory, estimation algorithms, and vision-based navigation** within a simulation-to-deployment workflow. Control and state-estimation algorithms are developed in **MATLAB/Simulink**, validated in **ROS 2 + Gazebo simulation**, and deployed to the quadcopter’s flight controller via auto-generated embedded code.  

---

## Objectives
- 🚀 **Hazard Avoidance** – detect and avoid unsafe landing zones.  
- 🎯 **Autonomous Precision Landing & Take-off** – guided descent and safe re-launch.  
- 🗺️ **Real-Time Path Planning** – robust navigation using vision-based TRN.  

---

## Sub-Goals

### 1. Autonomous Path Planning
- Develop vision-based path planning algorithm using **SLAM**.  

### 2. Control
- Implement **PID controller** for stable quadcopter flight.  

### 3. Estimation
- Fully model drone dynamics in **Simulink**, then in **Gazebo**.  
- Implement a **1D Kalman Filter** as a baseline.  
- Extend to an **Extended Kalman Filter (EKF)** for nonlinear dynamics.  

### 4. Simulation Environment
- Use **ROS 2 Jazzy** and **Gazebo Harmonic** for simulation and validation.  

### 5. Sensors & Hardware
- Determine and integrate required sensors:  
  - IMU  
  - Barometer  
  - LIDAR  
  - Camera  
  - Microcontroller (flight controller)  

---

## Tools & Frameworks
- **MATLAB / Simulink** – Control & estimation algorithm development  
- **ROS 2 Jazzy** – Robotics middleware for communication & control  
- **Gazebo Harmonic** – Physics-based simulation of drone dynamics  
- **Embedded C Code Generation** – Auto-generated code for microcontroller deployment  

---

## Project Structure
