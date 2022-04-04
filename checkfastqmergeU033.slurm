#!/bin/bash
#SBATCH --job-name=checkmergedfastqcU033
#SBATCH --ntasks=1
#SBATCH --time=02:00:00
#SBATCH --output=checkmergedfastqc_%j.out
#SBATCH --error=checkmergedfastqc%j.err

	read1flow1lane1=$(zcat "HCVW2DSX3_1_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow1lane2=$(zcat "HCVW2DSX3_2_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow1lane3=$(zcat "HCVW2DSX3_3_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow1lane4=$(zcat "HCVW2DSX3_4_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane1=$(zcat "HF3TTDSX3_1_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane2=$(zcat "HF3TTDSX3_2_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane3=$(zcat "HF3TTDSX3_3_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane4=$(zcat "HF3TTDSX3_4_U033_1.fastq.gz" | echo $((`wc -l`/4)))
	
	read1merge=$(zcat "mergedfastqc/U033_1.fastq.gz" | echo $((`wc -l`/4)))
	
	if [[ $((read1flow1lane1 + read1flow1lane2 + read1flow1lane3 + read1flow1lane4 + read1flow2lane1 + read1flow2lane2 + read1flow2lane3 + read1flow2lane4)) = $read1merge ]] ; then echo "Archivo U033_1.fastq.gz correcto"; else echo "Archivo U033_1.fastq.gz incorrecto"; fi

	read1flow1lane1=$(zcat "HCVW2DSX3_1_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow1lane2=$(zcat "HCVW2DSX3_2_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow1lane3=$(zcat "HCVW2DSX3_3_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow1lane4=$(zcat "HCVW2DSX3_4_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane1=$(zcat "HF3TTDSX3_1_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane2=$(zcat "HF3TTDSX3_2_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane3=$(zcat "HF3TTDSX3_3_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	read1flow2lane4=$(zcat "HF3TTDSX3_4_U033_2.fastq.gz" | echo $((`wc -l`/4)))
	
	read1merge=$(zcat "mergedfastqc/U033_2.fastq.gz" | echo $((`wc -l`/4)))
	
	if [[ $((read1flow1lane1 + read1flow1lane2 + read1flow1lane3 + read1flow1lane4 + read1flow2lane1 + read1flow2lane2 + read1flow2lane3 + read1flow2lane4)) = $read1merge ]] ; then echo "Archivo U033_2.fastq.gz correcto"; else echo "Archivo U033_2.fastq.gz incorrecto"; fi