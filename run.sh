#!/bin/bash

#SBATCH --job-name=ad_nerf_MM_batch1
#SBATCH --gres=gpu:1
#SBATCH -o slurm.out
#SBATCH -p batch
#SBATCH --time=14-0
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=30G

. /data/shinahyung/anaconda3/etc/profile.d/conda.sh
conda activate adnerf


python -u NeRFs/HeadNeRF/run_nerf.py --config /local_datasets/Obama/HeadNeRF_config.txt --basedir /data/shinahyung/code/4LipSync/AD_NeRF_MM
