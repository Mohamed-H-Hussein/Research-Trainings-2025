#!/bin/bash

echo "Downloading reference genome"

mkdir -p workshop
cd workshop

datasets download genome accession GCF_000001735.4 --include genome,gff3

unzip ncbi_dataset.zip

echo "Reference genome downloaded and extracted"
