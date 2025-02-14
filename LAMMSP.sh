#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --job-name=LAMMSP
#SBATCH --partition=mediumq

module load intel2021/compiler
module load binutils/2.34-GCCcore-9.3.0
module load intel2021/mpi
module load LAMMPS/29Sep2021


mpirun lmp -in input.file > Output.out
