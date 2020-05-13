#!/bin/bash
#PBS -P MST108362
#PBS -N 0015poff4
#PBS -l select=1:ncpus=40:mpiprocs=10:ompthreads=4
#PBS -l walltime=24:00:00
#PBS -q cf40
#PBS -j oe
#PBS -M m10703318@gapps.ntust.edu.tw 
#PBS -m be 








module purge
module load intel/2018_u1
module list
cd $PBS_O_WORKDIR


cat $PBS_NODEFILE
echo $PBS_O_WORKDIR
date

mpirun -PSM2 ./sol0


#qstat -xs
 
