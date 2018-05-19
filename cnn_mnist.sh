#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU
#SBATCH --ntasks-per-node 28
#SBATCH -t 1:00:00
#SBATCH --gres=gpu:p100:2

#echo commands to stdout
set -x

#move to working directory
cd $SCRATCH

#copy the input file from your pylon2 space 
#  to the working directory
cp $PROJECT/input.data .

#run GPU program
./mygpu

#copy output file to persistent storage
cp output.data $PROJECT