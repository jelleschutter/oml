#!/bin/bash
#SBATCH --job-name=setup_nanogpt
#SBATCH --partition=h200
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=2
#SBATCH --mem=16G
#SBATCH --time=60:00
#SBATCH --output=./out/modded_nanogpt_%j.out
#SBATCH --error=./out/modded_nanogpt_%j.err

rm -rf venv

python3.12 -m venv venv
source venv/bin/activate

pip install --upgrade pip

# override kernels to 0.12, since hugging face auth is broken
pip install kernels==0.12

pip install -r requirements.txt

python data/cached_fineweb10B.py 9
