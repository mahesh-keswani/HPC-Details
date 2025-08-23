#!/bin/sh
#PBS -N {JOB_NAME}
#PBS -P {PROJECT_NAME}
#PBS -q standard
#PBS -m bea
#PBS -M $USER@iitd.ac.in
#PBS -l select=1:ncpus=1:ngpus=1:centos={NODE}
#PBS -l walltime=50:00:00
# $PBS_O_WORKDIR is the directory from where the job is fired.

echo "==============================="
echo $PBS_JOBID
cat $PBS_NODEFILE
echo "==============================="
cd $HOME

# Now you can add all the regular linux command which you would have run in the interactive job 