#!/bin/bash
#SBATCH --job-name=eval_cola_mod_60    # Job name
#SBATCH --mail-type=ALL      # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=hw8161@cs.princeton.edu     # Where to send mail
#SBATCH --ntasks=1                    # Run on x CPUs
#SBATCH --mem=16gb                     # Job memory request
#SBATCH --time=04:00:00               # Time limit hrs:min:sec
#SBATCH --output=./eval.out   # Standard output
#SBATCH --error=./eval.err   # Error log
#SBATCH --gres=gpu:nvidia_a100:1 --ntasks-per-node=1 -N 1

date
echo 'Your job is running on node(s):'
echo $SLURM_JOB_NODELIST
echo 'Working directory:'
pwd
echo 'nvidia-smi output:'
nvidia-smi
# echo 'Installing requirements:'
# pip install -r /u/hw8161/CoFiPruning/requirements.txt

cd /scratch/network/hw8161/CoFiPruning/
python evaluation.py MNLI /scratch/network/hw8161/CoFiPruning/out/MNLI/CoFi_mod_2/MNLI_sparsity0.6/
