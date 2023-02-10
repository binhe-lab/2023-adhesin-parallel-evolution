#!/bin/bash
############################
# author: Bin He
# date: 2020-10-21
# title: RAxML tree search
# use: qsub raxml-muscle.sh
#----------------------
# scheduler parameters
#$ -q BH,BIO-INSTR
#$ -M bhe2@uiowa.edu
#$ -m ea
#$ -pe orte 28
#$ -N raxml-muscle
#$ -cwd
#$ -o job-log/$JOB_NAME_$JOB_ID.out
#$ -e job-log/$JOB_NAME_$JOB_ID.err
#----------------------
# -m ea will email the 
#    user when the job
#    ends or aborts
########################

# these are useful flags to set to make the code more robust to failure
# copied from Vince Buffalo's Bioinformatic Data Analysis book
set -e
set -u
set -o pipefail

# set input file
align=XP_028889033_muscle_refined_C480.faa

# estimate the tree
module load openmpi/2.1.2_gcc-8.3.0
mpirun /Users/bhe2/bin/raxmlHPC-MPI-AVX -f a -x 12345 -p 12345 -# 500 -m PROTGAMMAAUTO -s $align -n muscle_${JOB_ID}
