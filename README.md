# Speedrunning NanoGPT on SLURM with Muon

This repository contains the code and report for the project "Speedrunning NanoGPT Training with Muon" for the course "Optimierung für Machine Learning" at FHNW. The project focuses on optimizing the training of NanoGPT using Muon on a SLURM cluster.

## Repository Structure
- `run.sh`: A shell script to set up the environment and run the speedrun.
- `report/`: Contains the LaTeX template and the final report. [Report](report/oml_report.pdf)
- `src/`: Contains SLURM job scripts for running the speedrun.

## Getting Started
To run the speedrun, follow these steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/jelleschutter/modded-nanogpt-slurm.git
    cd modded-nanogpt-slurm
    ```
2. run the script to set up the environment and start the speedrun:
   ```bash
   bash run.sh
   ```
