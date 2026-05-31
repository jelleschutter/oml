git clone https://github.com/KellerJordan/modded-nanogpt.git

cp run.sh modded-nanogpt/run.sh
cp src/setup_slurm.sh modded-nanogpt/setup_slurm.sh
cp src/run_speedrun.sh modded-nanogpt/run_speedrun.sh

cd modded-nanogpt

sbr="$(sbatch setup_slurm.sh)"

if [[ "$sbr" =~ Submitted\ batch\ job\ ([0-9]+) ]]; then
    sbatch --dependency=afterok:${BASH_REMATCH[1]} run_speedrun.sh
    exit 0
else
    echo "Setup failed"
    exit 1
fi
