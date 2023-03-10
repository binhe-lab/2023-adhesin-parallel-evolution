#!/bin/bash
############################
# author: Bin He
# date: 2022-05-16
# title: RAxML-ng tree search
# use: qsub raxmlng.sh
#----------------------
# scheduler parameters
#$ -q BH,BIO-INSTR
#$ -M bhe2@uiowa.edu
#$ -m ea
#$ -pe smp 56
#$ -N raxml-ng-clustalo
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

# set input and intermediate file names
#base=expanded-blast-PF11765-noMbic_hmmalign_clipkit
#base=expanded-blast-PF11765-noMbic_clustalo_clipkit
base=expanded-blast-PF11765-noMbic_clustalo
align=../output/align/${base}.faa
out=../output/raxml-ng/${base}

# estimate the tree
/Users/bhe2/bin/raxml-ng-mpi --all --msa $align --model LG+G --seed 123 --threads auto --workers auto --bs-trees autoMRE --prefix $out
