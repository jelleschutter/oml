#!/bin/bash
#SBATCH --job-name=speedrun_nanogpt
#SBATCH --gres=gpu:2
#SBATCH --partition=h200
#SBATCH --cpus-per-task=6
#SBATCH --mem=32G
#SBATCH --time=0:15:00
#SBATCH --output=./out/modded_nanogpt_%j.out
#SBATCH --error=./out/modded_nanogpt_%j.err

echo "Running modded-nanogpt training"
./venv/bin/torchrun --standalone --nproc_per_node=2 train_gpt.py
