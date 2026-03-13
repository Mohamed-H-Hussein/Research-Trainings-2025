#!/bin/bash

echo "Running alignment"

cd workshop

bwa mem -t 4 index/GCF_000001735.4_TAIR10.1_genomic.fna \
sra_data/ERR11436045_1.trimmed.fastq \
sra_data/ERR11436045_2.trimmed.fastq \
> ERR11436045_trimmed_ref_aligned.sam

samtools view -bS -@ 4 ERR11436045_trimmed_ref_aligned.sam \
> ERR11436045_trimmed_ref_aligned.bam

samtools sort -@4 ERR11436045_trimmed_ref_aligned.bam \
-o ERR11436045_sorted_trimmed_ref_aligned.bam

samtools index ERR11436045_sorted_trimmed_ref_aligned.bam

echo "Alignment completed"
