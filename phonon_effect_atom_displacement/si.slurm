#!/usr/bin/env bash
#SBATCH --job-name=fc_Au
#SBATCH --nodes=3                      # node count
#SBATCH --ntasks-per-node=24         # number of tasks per node
#SBATCH --cpus-per-task=1            # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=5gb                    # Job memory request
#SBATCH --time=120:00:00               # Time limit hrs:min:sec
#SBATCH --output=sdc.txt              # Standard output and error log
#SBATCH --partition=haswell           # MOAB/Torque called these queues







module load quantum-espresso/7.3.1-intel





srun ZG.x < ZG_444.in > ZG_444.out
