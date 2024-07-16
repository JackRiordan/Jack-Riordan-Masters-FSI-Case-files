#!/bin/bash -l
#SBATCH --job-name=LGTD2
#SBATCH -N 1
#SBATCH --ntasks-per-node 8
#SBATCH -t 112:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jack.riordan@ucdconnect.ie


cd $SLURM_SUBMIT_DIR

module load spack
module load openfoam-2112-gcc-11.2.0-g3rpun6
source /opt/software/spack/opt/spack/linux-rhel7-x86_64_v2/gcc-11.2.0/openfoam-2112-g3rpun66w5mb4pfvp6blq7zq6iuyopuq/etc/bashrc

./Allrun
