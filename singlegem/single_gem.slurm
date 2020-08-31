#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=06:00:00
#SBATCH --job-name=triplegem
#SBATCH --output=singlegem_%A_task_%a.out
#SBATCH --array=1-20
##### Uncomment for debugging 
# #SBATCH --partition=debug
# #SBATCH --constraint=skylake

module purge
module restore gem
cd /home/tarafs1/garfield_gem

./single_gem ${SLURM_ARRAY_TASK_ID}
