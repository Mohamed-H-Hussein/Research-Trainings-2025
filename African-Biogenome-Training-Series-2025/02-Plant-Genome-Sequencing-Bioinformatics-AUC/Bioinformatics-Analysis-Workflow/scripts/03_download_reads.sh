#!/bin/bash

echo "Downloading sequencing reads"

cd workshop

mkdir -p sra_data
cd sra_data

prefetch ERR11436045

fasterq-dump ERR11436045 --split-files

echo "Reads downloaded and converted to FASTQ"
