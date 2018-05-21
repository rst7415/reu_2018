#!/bin/bash 
#SBATCH -N 1
#SBATCH --ntasks-per-node 28
#SBATCH -t 00:10:00


module load python3

python3 toy_tf.py >> toy_tf.out
