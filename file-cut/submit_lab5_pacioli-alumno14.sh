#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno14/lab5
#SBATCH -J lab5
#SBATCH --ntasks-per-node=4  
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

echo "Ejecución en paralelo del programa cut_files en 4 núcleos."
echo

for (( i=1; i <= 4; i++ ))
do
./cut_files.sh 14 Sample${i}.fastq & 
done
time wait

rename .00 .fastq *  # reemplazamos la extensión .00 por .fastq

echo
echo "Los ficheros han sido cortados".
