#!/bin/bash


# set the partition where the job will run

#SBATCH --partition=normal


# set the number of nodes

#SBATCH --nodes=6


# set the name of the job

#SBATCH --job-name=oscar_conjfdr


# set max wallclock time

#SBATCH --time=2:00:00


# set the requested memory

#SBATCH --mem=40000


# mail alert at start, end and abortion of execution

#SBATCH --mail-type=ALL


# send mail to this address

#SBATCH --mail-user=oscar.baeza@uvic.cat


# run the application

DIR=/homes/users/obaeza/scratch/pleiofdr/

module load MATLAB/2016a

matlab -nosplash -nodesktop -nodisplay -r "run('/homes/users/obaeza/scratch/pleiofdr/runme.m')"

