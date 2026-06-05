#!/bin/bash
#SBATCH --job-name ZrOCu
#SBATCH --nodes 1
#SBATCH --mem 512G
#SBATCH --partition gpu
#SBATCH --gres gpu:1
#SBATCH --ntasks=1

module use /opt/nvidia/hpc_sdk/modulefiles
module load vasp/6.4.1

start=$(date +%s)
mpirun --bind-to none  vasp_std
end=$(date +%s)

elapsed=$((end - start))
echo $elapsed
