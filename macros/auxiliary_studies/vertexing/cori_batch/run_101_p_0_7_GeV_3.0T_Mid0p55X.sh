#!/bin/bash
#SBATCH --image=docker:ddixit/fun4all:eicresearch
#SBATCH --qos=shared
#SBATCH --constraint=haswell
#SBATCH --time=20:00
#SBATCH --array=0-10
shifter ./shifter.sh $SLURM_ARRAY_TASK_ID 100000 1 0 1 0 7 3.0 0.55
