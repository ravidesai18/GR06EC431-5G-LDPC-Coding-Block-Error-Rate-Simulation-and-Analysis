# **5G LDPC Coding Block Error Rate Simulation and Analysis**

## **Project Overview**
This repository contains a simulation and analysis of **5G LDPC (Low-Density Parity-Check) coding** to evaluate **Block Error Rate (BLER)**. LDPC codes are widely used in 5G NR (New Radio) due to their superior error-correcting performance. The analysis is performed using MATLAB simulations, leveraging cloud or cluster resources for computation.

---

## **Key Features**
- **LDPC Code Simulation**: Implements the 5G NR LDPC encoder and decoder.
- **Block Error Rate (BLER) Analysis**: Simulates BLER performance over different signal-to-noise ratio (SNR) conditions.
- **Scalability**: Supports parallel execution on cloud or cluster environments for faster simulations.
- **MATLAB Integration**: Built using MATLAB's 5G Toolbox for LDPC coding.

---

## **Project Structure**
The repository is organized as follows:

```
GR06EC431-5G-LDPC-Coding-Block-Error-Rate-Simulation-and-Analysis/
│
├── SimulationScripts/          # MATLAB scripts for LDPC simulation
│   ├── ldpc_encoder.m          # LDPC encoding implementation
│   ├── ldpc_decoder.m          # LDPC decoding implementation
│   ├── bler_simulation.m       # Main script for BLER simulation
│
├── Results/                    # Simulation results
│   ├── bler_vs_snr.png         # Plot of BLER vs. SNR
│   ├── simulation_data.mat     # Raw MATLAB output data
│
├── Documentation/              # Additional documentation
│   ├── 5G_LDPC_Simulation.pdf  # Project report explaining methodology
│
├── README.md                   # Project overview and setup instructions
└── LICENSE                     # License information
```

---

## **Dependencies**
To run the simulations, the following tools are required:

1. **MATLAB R2021a or later**  
2. **5G Toolbox** (available in MATLAB)  
3. **Parallel Computing Toolbox** (for cluster/cloud simulations)  

---

## **Setup Instructions**
1. **Clone the Repository**
   ```bash
   git clone https://github.com/ravidesai18/GR06EC431-5G-LDPC-Coding-Block-Error-Rate-Simulation-and-Analysis.git
   cd GR06EC431-5G-LDPC-Coding-Block-Error-Rate-Simulation-and-Analysis
   ```

2. **Open MATLAB** and navigate to the repository folder.

3. **Run the Simulation Script**
   - Open `bler_simulation.m` in MATLAB.
   - Modify SNR range and simulation parameters if required.
   - Execute the script to perform the BLER analysis:
     ```matlab
     run('bler_simulation.m');
     ```

4. **View Results**
   - Results (plots and data) will be saved in the `Results/` folder.

---

## **Simulation Methodology**
This project follows the **5G LDPC Simulation Framework** described in [MathWorks 5G LDPC Simulation](https://in.mathworks.com/help/5g/ug/5g-ldpc-block-error-rate-simulation-using-the-cloud-or-a-cluster.html).

### Key Steps:
1. **LDPC Encoding**: Generate LDPC-encoded blocks.
2. **AWGN Channel Simulation**: Transmit encoded blocks over an **Additive White Gaussian Noise (AWGN)** channel.
3. **LDPC Decoding**: Apply LDPC decoding at the receiver.
4. **Error Rate Calculation**: Measure the **Block Error Rate (BLER)** for varying SNR values.

---

## **Sample Results**
![BLER vs SNR](Results/bler_vs_snr.png)  

The simulation demonstrates the BLER performance of 5G LDPC codes over different SNR levels.

---

## **References**
1. MathWorks Documentation: [5G LDPC Simulation](https://in.mathworks.com/help/5g/ug/5g-ldpc-block-error-rate-simulation-using-the-cloud-or-a-cluster.html)
2. 3GPP TS 38.212: Specification for 5G NR LDPC coding.


