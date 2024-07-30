#!/bin/bash
#SBATCH --job-name=openmm_cuda_job
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4  
#SBATCH --mem=32G
#SBATCH --time=30:00:00
#SBATCH --output=output_%j.log
# Usage: sbatch $0

module purge
module load StdEnv/2020 gcc/9.3.0 cuda/11.4 openmpi/4.0.3 
module load python/3.8.10 openmm/7.7.0 netcdf/4.7.4 hdf5/1.10.6 mpi4py/3.0.3
source $HOME/env-parmed/bin/activate

python Test2.py