
# 🧬 African BioGenome Project (AfricaBP, 2025) — Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics

## Overview

This folder contains **personal study notes and skill tracking** from the **African BioGenome Project Hands-on Workshop (2025)** at **The American University in Cairo (AUC)**.
The training covered plant DNA extraction, library preparation, Illumina sequencing, bioinformatics processing, SNP discovery, and functional annotation.

These notes reflect personal understanding and practical experience in:

* Wet-lab genomics workflows (DNA extraction, QC, library prep)
* Short- read sequencing principles (Illumina)
* Bioinformatics pipelines for genome assembly, alignment, and variant analysis
* Comparative genomics and functional interpretation of SNPs

---

## Training Notes Files

| Day   | File                   | Key Focus                                                                                        | Link                              |
| ----- | ---------------------- | ------------------------------------------------------------------------------------------------ | --------------------------------- |
| Day 1 | Training-Note-Day-1.md | Plant DNA extraction, QC, and understanding AfricaBP mission                                     | [Day 1](./Training-Note-Day-1.md) |
| Day 2 | Training-Note-Day-2.md | Library preparation, indexing, clean-up, normalization, Illumina sequencing setup                | [Day 2](./Training-Note-Day-2.md) |
| Day 3 | Training-Note-Day-3.md | Sequencing run (MiSeq), QC checks, practical review of workflow                                  | [Day 3](./Training-Note-Day-3.md) |
| Day 4 | Training-Note-Day-4.md | Bioinformatics — QC, read trimming, reference genome indexing, alignment, BAM file generation    | [Day 4](./Training-Note-Day-4.md) |
| Day 5 | Training-Note-Day-5.md | SNP calling, filtering, VCF analysis, functional annotation, interpretation of genetic diversity | [Day 5](./Training-Note-Day-5.md) |

---


## Skills Developed

**Day 1 – Plant DNA Extraction & Quality Control**

* Planning plant genome sequencing experiments
* Understanding biochemical challenges of plant DNA extraction
* Column-based DNA extraction from plant tissue
* Assessing DNA concentration and purity (NanoDrop, Qubit)
* Evaluating DNA integrity via agarose gel electrophoresis
* Interpreting DNA quality metrics for sequencing readiness
* Awareness of sequencing requirements for high-quality DNA

**Day 2 – Library Preparation & Sequencing Setup**

* DNA tagmentation and adapter addition (Nextera XT workflow)
* Indexing PCR for sample multiplexing
* Magnetic bead-based library clean-up
* Library quality assessment using Bioanalyzer or gel electrophoresis
* Library normalization and pooling for sequencing
* Calculating library molarity and dilution for sequencing
* Understanding Illumina library prep chemistry and sequencing readiness

**Day 3 – Sequencing Run & Recap**

* Preparing and loading normalized libraries on MiSeq i100
* Understanding MiSeq instrument workflow and read configurations
* Monitoring sequencing run quality and cluster generation
* Troubleshooting library and instrument issues
* Integrating wet lab workflow with sequencing data generation
* Familiarity with sequencing reagent kits and outputs

**Day 4 – Preparing Genomic Data for SNP Comparison**

* Downloading reference genomes and NGS datasets
* FASTQ quality assessment and trimming (FastQC, fastp)
* Indexing reference genome for alignment (BWA index)
* Read alignment to reference genome (BWA-MEM)
* SAM/BAM file handling: conversion, sorting, indexing
* Understanding alignment metrics and mapping quality
* Preparing high-quality data for variant discovery

**Day 5 – SNP Discovery & Functional Annotation**

* Variant calling (bcftools mpileup & call)
* Filtering high-confidence SNPs (QUAL > 30)
* Extracting SNPs for downstream analysis
* VCF file exploration (vcftools, bcftools stats)
* Interpreting population structure and genomic diversity
* Functional annotation of SNPs and biological interpretation
* Integrating bioinformatics pipelines for comparative genomics
---
## Personal Learning Outcome

* Developed practical expertise in **plant genome sequencing workflows**
* Gained conceptual understanding of **genomic variation and its biological impact**
* Learned principles of **reproducible bioinformatics pipelines** and comparative genomics
* Strengthened understanding of **functional genomics and evolutionary analysis**
* Appreciated the significance of **African biodiversity genomics** and its integration with research, conservation, and agriculture
