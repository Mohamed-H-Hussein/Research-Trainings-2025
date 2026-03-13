
# 🧬 Nextflow Workflow for Plant Whole-Genome Sequencing and Variant Calling

🔍 **Dataset: [PRJEB62038](https://www.ebi.ac.uk/ena/browser/view/PRJEB62038)**  
👨‍🔬 **Conducted during and after  the AfricaBP 2025 Workshop at AUC**  
📅 **Analysis completed on: March 8, 2026**  
📁 **Full details in [`Nextflow_plant_wgs_variant_calling_report.pdf`](reports/Nextflow_plant_wgs_variant_calling_report.pdf)**  

---
## 🌱 Introduction 

Whole-genome sequencing (WGS) and variant calling provide a comprehensive view of the genetic makeup of organisms. *Arabidopsis thaliana* is a well-established model plant with a fully annotated reference genome, ideal for benchmarking bioinformatics workflows and studying genomic variation. Detecting SNPs and other variants enables functional genomics research, improves understanding of plant adaptation, and supports studies in genome evolution and environmental interactions.


---

## 📚 Overview

This project implements a **reproducible Nextflow workflow** for **plant whole-genome sequencing (WGS)** and **variant calling**. Using **Arabidopsis thaliana TAIR10.1** as a reference and paired-end WGS reads (ERR11436045), the pipeline performs:

* Genome reference download & indexing
* Read quality control and trimming
* Alignment to the reference genome
* Deduplication & base recalibration
* Variant calling and filtering


The workflow is **modular and fully reproducible**, designed to run on a laptop using Nextflow and a conda bioinformatics environment. While focused on plant genomics applications—such as analyzing genetic diversity, adaptation mechanisms, or environmental responses—the workflow can be adapted to other organisms, making it a versatile tool for broader bioinformatics studies.

---

## 📑 Table of Contents

* [Introduction](#-Introduction)
* [Overview](#-overview)
* [Objectives](#-objectives)
* [Dataset Summary](#-dataset-summary)
* [Key Workflow Steps](#-key-workflow-steps)
* [Project Structure](#-project-structure)
* [Highlighted Outputs](#-highlighted-outputs)
* [Running the Workflow](#-running-the-workflow)
* [Acknowledgment](#-Acknowledgment)
* [Author Contribution](#-author-contribution)
* [Citation & Usage](#-citation--usage)
* [License](#-license)

---

## 🎯 Objectives

* Download and index **Arabidopsis thaliana TAIR10.1** genome.
* Retrieve WGS sequencing data (paired-end reads) from ENA.
* Perform **QC, trimming, alignment, and deduplication**.
* Call and filter **SNP variants** using `bcftools`.
* Generate reproducible reports and figures summarizing the workflow.

---

## 🧪 Dataset Summary

| Feature             | Description                                                                                 |
| ------------------- | ------------------------------------------------------------------------------------------- |
| Organism            | *Arabidopsis thaliana*                                                                      |
| Sample              | Toufl-1                                                                                     |
| Run accession       | [ERR11436045](https://www.ebi.ac.uk/ena/browser/view/ERR11436045)                           |
| Sequencing Platform | Illumina NextSeq 2000                                                                       |
| Strategy            | Whole Genome Sequencing (WGS)                                                               |
| Layout              | Paired-end                                                                                  |
| Reads               | ~17.6 million                                                                               |
| Reference Assembly  | TAIR10.1 ([GCF_000001735.4](https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001735.4/)) |
| Genome Size         | ~119 Mb                                                                                     |

---

## 🧠 Key Workflow Steps

> All implemented in modular **Nextflow processes**, using a conda environment (`plant_wgs_env.yml`).

| Step | Process              | Description                                                      |
| ---- | -------------------- | ---------------------------------------------------------------- |
| `01` | `download_reference` | Download genome & GFF files via `ncbi-datasets-cli`              |
| `02` | `index_reference`    | Index genome using `BWA` & `samtools faidx`                      |
| `03` | `download_reads`     | Fetch SRA reads & convert to FASTQ (`prefetch` + `fasterq-dump`) |
| `04` | `qc_trimming`        | Quality check (FastQC) & trimming (fastp)                        |
| `05` | `alignment`          | Map reads to reference (BWA MEM → BAM → sorted BAM)              |
| `06` | `deduplication`      | Mark duplicates using `Picard` & index BAM                       |
| `07` | `variant_calling`    | Call SNPs (bcftools mpileup + call), filter (QUAL>30)            |

---

## 📂 Project Structure

```


Bioinformatics-Analysis-Workflow/
│
├── scripts/
│   ├── 01_download_reference.sh        # Download genome and GFF files
│   ├── 02_index_reference.sh           # Index the genome using BWA and Samtools
│   ├── 03_download_reads.sh            # Download SRA data and convert to FASTQ
│   ├── 04_qc_trimming.sh               # Quality check and trimming of reads (FastQC + fastp)
│   ├── 05_alignment.sh                 # Align reads to reference (BWA MEM + SAM → BAM → sorted BAM)
│   ├── 06_dedup_base_recal.sh          # Deduplication and optional base recalibration
│   └── 07_variant_calling.sh           # Variant calling (mpileup + bcftools call + variant filtering)
│
├── envs/
│   └── plant_wgs_env.yml
│
├── notebooks/
│   └── Nextflow_plant_wgs_variant_calling_report.qmd
│
├── reports/
│   └── Nextflow_plant_wgs_variant_calling_report.pdf
│
├── figures/
│   └── vep_results.png
│
├── nextflow.config
└── main.nf

```

---

## 📌 Highlighted Outputs

| Output Type      | File                                                                              |
| ---------------- | --------------------------------------------------------------------------------- |
| Reference Genome | `ncbi_dataset/data/GCF_000001735.4/GCF_000001735.4_TAIR10.1_genomic.fna` |
| QC Reports       | `fastqc_output/*`                                                        |
| Trimmed FASTQ    | `sra_data/ERR11436045_*.trimmed.fastq`                                   |
| Aligned BAM      | `ERR11436045_sorted_trimmed_ref_aligned.bam`                             |
| Deduplicated BAM | `ERR11436045_dedup.bam`                                                  |
| Raw Variants     | `variants.vcf.gz`                                                        |
| Filtered SNPs    | `snps.vcf.gz`                                                            |

---

## ▶️ Running the Workflow

Run the full pipeline with:

```bash
nextflow run main.nf -c nextflow.config -resume
```

* Ensure **conda** is installed and the environment (`plant_wgs_env.yml`) is available.
* The workflow automatically performs all QC, alignment, and variant calling steps.
* Logs for each process are saved under `logs/`.

---

## 🌟 Acknowledgment
This project was developed during and after the **African BioGenome Project (AfricaBP) — Exploring Genomic Diversity Hands-on Workshop 2025**

We gratefully acknowledge the guidance, instruction, and foundational resources provided by:

* **Prof. Dr. Ahmed Moustafa**   
  Professor of Bioinformatics and Genomic Data Science, Department of Biology, Systems Genomics Lab, American University in Cairo (AUC)   

* **Rana Salah**     
  M.Sc. Student & Research Assistant, Systems Genomics Lab, American University in Cairo (AUC)    

* **Roba Hamed**   
  M.Sc. Holder, German University in Cairo (GUC); Research Assistant, American University in Cairo (AUC)


Their lectures, materials, and original pipeline script laid the foundation for this project. The original script was **modularized, extended, and executed independently by the author**, producing a fully reproducible workflow integrated with Nextflow.


---

## 🧑‍🔬 Author Contribution
All workflow development, execution, and reporting were independently performed by:

**Mohamed H. Hussein**    
M.Sc. Candidate in Biochemistry and Molecular Biology — Molecular Cancer Biology & Bioinformatics    
Ain Shams University, Faculty of Science    

The original pipeline was modularized into separate scripts and fully integrated into a **Nextflow workflow**, producing a complete and reproducible bioinformatics pipeline.

The workflow includes:

1. **Reference genome download and indexing**
2. **Sequencing read download and conversion to FASTQ**
3. **Quality control and read trimming** (FastQC + fastp)
4. **Read alignment** (BWA MEM → SAM → BAM → sorted BAM)
5. **Duplicate removal** (Picard MarkDuplicates)
6. **Variant calling** (bcftools mpileup + call + filtering)
7. **SNP extraction**
8. **Reproducible report generation** using **Quarto** [`Nextflow_plant_wgs_variant_calling_report.pdf`](reports/Nextflow_plant_wgs_variant_calling_report.pdf)

The **Nextflow workflow structure** includes:

* `main.nf` defining all processes sequentially (download, indexing, preprocessing, alignment, variant calling)
* `nextflow.config` specifying execution parameters, computing resources, and environment configuration
* `envs/` folder containing the Conda environment (`plant_wgs_env.yml`) for reproducible software installation
* Modular scripts in `scripts/` for each analytical step
* `notebooks/` and `reports/` containing Quarto source and final PDF report

The **reproducible report** documents:

* Environment setup and tool installation
* Step-by-step workflow execution with commands
* Results and summary statistics for each step
* Objective and interpretation of each analysis step

All outputs were generated, interpreted, and organized by the author in a **fully reproducible structure**, supporting transparency, learning, and **future reuse**. The complete workflow and report are publicly accessible on GitHub for open access and adaptation.

---

## 📝 Citation & Usage

This folder which contains this project is part of the **Research-Trainings-2025** repository.

**Citation:**
Hussein, Mohamed H. (2026). *Research-Trainings-2026 repository [Summary, Notes, and Project]*. GitHub repository: [https://github.com/Mohamed-H-Hussein/Research-Trainings-2025](https://github.com/Mohamed-H-Hussein/Research-Trainings-2025)

---

## ⚖️ License

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This folder is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.
Full license: [https://creativecommons.org/licenses/by-nc/4.0/legalcode](https://creativecommons.org/licenses/by-nc/4.0/legalcode)

---

© 2026 Mohamed H. Hussein. The workflow and scripts are provided "as is" without warranty.

