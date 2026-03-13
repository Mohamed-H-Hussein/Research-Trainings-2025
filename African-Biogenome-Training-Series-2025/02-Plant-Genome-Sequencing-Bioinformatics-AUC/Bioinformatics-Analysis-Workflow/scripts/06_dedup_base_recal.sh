#!/bin/bash

echo "Running duplicate marking"

cd workshop

picard MarkDuplicates \
I=ERR11436045_sorted_trimmed_ref_aligned.bam \
O=ERR11436045_dedup.bam \
M=dup_metrics.txt

samtools index ERR11436045_dedup.bam

echo "Deduplication completed"
