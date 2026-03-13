#!/bin/bash

echo "Running variant calling"

cd workshop

bcftools mpileup \
-f index/GCF_000001735.4_TAIR10.1_genomic.fna \
--threads 4 \
ERR11436045_dedup.bam \
-Ou | bcftools call -mv -Oz -o variants.vcf.gz

bcftools index variants.vcf.gz

bcftools filter -i 'QUAL>30' variants.vcf.gz \
-Oz -o filtered_variants.vcf.gz

bcftools view -v snps filtered_variants.vcf.gz \
-Oz -o snps.vcf.gz

echo "Variant calling finished"
