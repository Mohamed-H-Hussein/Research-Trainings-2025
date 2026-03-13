#!/bin/bash

echo "Indexing reference genome"

cd workshop

mkdir -p index

mv ncbi_dataset/data/GCF_000001735.4/GCF_000001735.4_TAIR10.1_genomic.fna index/

bwa index index/GCF_000001735.4_TAIR10.1_genomic.fna

samtools faidx index/GCF_000001735.4_TAIR10.1_genomic.fna

echo "Reference indexing completed"
