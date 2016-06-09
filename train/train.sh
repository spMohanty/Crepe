#!/bin/bash

#SBATCH --workdir /home/mohanty/Crepe/train
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 2
#SBATCH --mem 16384
#SBATCH --time 23:59:59
#SBATCH --partition gpu
#SBATCH --gres gpu:1
#SBATCH --qos gpu



module add torch
module add cuda
echo STARTING AT `date`

th main.lua

echo FINISHED at `date`

