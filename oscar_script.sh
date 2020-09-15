#!/bin/bash
 
 
# set job name
 
#SBATCH --job-name=script_pleiofdr_oscar


# set the partition where the job will run

#SBATCH --partition=normal
 

# set the number of nodes

#SBATCH --nodes=4
 

# set max wallclock time

#SBATCH --time=1:00:00
 

# mail alert at start, end and abortion of execution

#SBATCH --mail-type=ALL

# ask for more memory

#SBATCH --mem=60000


# send mail to this address

#SBATCH --mail-user=oscar.baeza@uvic.cat
 

# run the application

module load MATLAB/2019b

matlab -nosplash -nodesktop -nodisplay -r "run('/homes/scratch/pleioFDR/runme.m');"
