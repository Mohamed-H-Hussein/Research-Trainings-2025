#!/bin/bash

echo "Running quality control and trimming"

cd workshop

mkdir -p fastqc_output

fastqc -o fastqc_output -t 4 sra_data/ERR11436045_1.fastq sra_data/ERR11436045_2.fastq

fastp \
-i sra_data/ERR11436045_1.fastq \
-I sra_data/ERR11436045_2.fastq \
-o sra_data/ERR11436045_1.trimmed.fastq \
-O sra_data/ERR11436045_2.trimmed.fastq \
-l 100 \
-w 4

fastqc -o fastqc_output -t 4 \
sra_data/ERR11436045_1.trimmed.fastq \
sra_data/ERR11436045_2.trimmed.fastq

echo "QC and trimming completed"
