#!/bin/sh
#PBS -N A2S2
#PBS -P ail821.aiy247544.course
#PBS -q standard
#PBS -m bea
#PBS -M $USER@iitd.ac.in
#PBS -l select=1:ncpus=1:ngpus=0:centos=icelake
#PBS -l walltime=36:00:00
# $PBS_O_WORKDIR is the directory from where the job is fired.

echo "==============================="
echo $PBS_JOBID
cat $PBS_NODEFILE
echo "==============================="
cd $HOME

./proxy.sh &
export http_proxy="http://proxy21.iitd.ac.in:3128"
export https_proxy="http://proxy21.iitd.ac.in:3128"

# conda init
source /home/scai/msr/aiy247544/anaconda3/bin/activate

conda activate rlhf
cd /home/scai/msr/aiy247544/scratch/AIL821/A2/P2/code
python STAGE2_REWARDMODEL.py