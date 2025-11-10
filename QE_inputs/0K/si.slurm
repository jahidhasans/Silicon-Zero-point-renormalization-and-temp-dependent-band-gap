#!/usr/bin/env bash
#SBATCH --job-name=si_zg
#SBATCH --nodes=3                      # node count
#SBATCH --ntasks-per-node=28         # number of tasks per node
#SBATCH --cpus-per-task=1            # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=5gb                    # Job memory request
#SBATCH --time=120:00:00               # Time limit hrs:min:sec
#SBATCH --output=sdc.txt              # Standard output and error log
#SBATCH --partition=skylake           # MOAB/Torque called these queues







module load quantum-espresso/7.3.1-intel



#srun pw.x < si.scf.in > si.scf.out
srun pw.x < si.nscf.in > si.nscf.out
#srun ph.x < Au.ph.in > Au.ph.out
#srun q2r.x < Au.q2r.in > Au.q2r.out
#srun matdyn.x < Au.matdyn.in > Au.matdyn.out
