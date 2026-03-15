# 🧬 African BioGenome Project (AfricaBP, 2025) — Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics at AUC

<div align="center">

This folder contains my **personal study notes, workflow documentation, and practical learning summaries** from the
**African BioGenome Project Hands-on Workshop 2025** at **The American University in Cairo (AUC)**.

These notes reflect both **wet-lab and bioinformatics skills**, with detailed coverage of plant genome sequencing workflows, variant analysis, and reproducible bioinformatics pipelines.

</div>

---

## 🏫 Event Information

* **Workshop:** Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics
* **Organization:** African BioGenome Project (AfricaBP) — Open Institute for Genomics & Bioinformatics
* **Host Institution:** The American University in Cairo (AUC)
* **Location:** Cairo, Egypt (Hands-on participation)
* **Dates:** 19–23 October 2025, 09:00 – 18:00 (GMT +2)
* **Format:** Practical Workshop (Wet Lab + Dry Lab)
* **Coordinators:**
  * Prof. Ahmed Moustafa
  * Dr. Mai Ibrahim Barakat
* **Event Official Link:** [Linkedin Event Link](https://www.linkedin.com/posts/african-biogenome-project_to-register-please-visit-httpslnkdin-activity-7350486207463661568-pWeh?)

---


## 📝 Overview

This folder documents my **hands-on training and applied bioinformatics implementation** from the **African BioGenome Project (AfricaBP) Workshop on Plant Genome Sequencing and Bioinformatics (AUC, 2025)**.

It combines two complementary components:

1. **Structured training notes** documenting the complete experimental and computational workflow practiced during the workshop. The documentation covers **plant genomic DNA extraction and quality control, Illumina sequencing library preparation and indexing, sequencing run setup and QC evaluation, and the downstream bioinformatics analysis workflow**, including FASTQ quality assessment, read trimming, reference genome indexing, read alignment, SNP variant discovery, variant filtering, and functional annotation of genomic variants.

2. **A reproducible bioinformatics pipeline** developed after the workshop to implement the complete **plant whole-genome sequencing (WGS) variant calling workflow**, including:

   * sequencing data retrieval
   * quality control and trimming
   * reference genome indexing and alignment
   * SNP calling and filtering
   * functional variant annotation

The computational workflow is implemented using **Nextflow and Conda environments**, enabling **reproducible genomic analysis** and demonstrating the integration of **wet-lab genomics training with practical bioinformatics pipeline development**.

Overall, this repository serves as both:

* a **technical learning record** of the AfricaBP workshop
* and a **practical implementation of a plant genomics analysis workflow** suitable for research and training purposes.

---
## 📂 Folder Structure

```
02-Plant-Genome-Sequencing-Bioinformatics-AUC/
│
├── README.md
├── Training-Notes/
│   ├── Training-Note-Day-1.md
│   ├── Training-Note-Day-2.md
│   ├── Training-Note-Day-3.md
│   ├── Training-Note-Day-4.md
│   └── Training-Note-Day-5.md
│
└── Bioinformatics-Analysis-Workflow/
    ├── README.md
    ├── scripts/
    │   ├── 01_download_reference.sh
    │   ├── 02_index_reference.sh
    │   ├── 03_download_reads.sh
    │   ├── 04_qc_trimming.sh
    │   ├── 05_alignment.sh
    │   ├── 06_dedup_base_recal.sh
    │   └── 07_variant_calling.sh
    ├── envs/
    │   └── plant_wgs_env.yml
    ├── notebooks/
    │   └── Nextflow_plant_wgs_variant_calling_report.qmd
    ├── reports/
    │   └── Nextflow_plant_wgs_variant_calling_report.pdf
    ├── figures/
    │   └── vep_results.png
    ├── nextflow.config
    └── main.nf
```

---

## 🌱 Overview of Subfolders

| Subfolder                             | Content Description                                                                                                                                                           | Key Files / Links                                               |
| ------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- |
| **Training-Notes/**                   | Daily **hands-on workshop notes**, documenting wet-lab and bioinformatics exercises, practical skills, and conceptual learning.                                               | [Training-notes folder](./Training-Notes/)                              |
| **Bioinformatics-Analysis-Workflow/** | Contains the **Nextflow workflow** for plant whole-genome sequencing (WGS) and SNP variant calling using *Arabidopsis thaliana*. Fully modular, reproducible, and documented. | [Workflow folder](./Bioinformatics-Analysis-Workflow/) |

---

## 📘 Relevance to My Field

As an MSc candidate in **Biochemistry & Molecular Biology** specializing in **Molecular Cancer Biology and Bioinformatics**, this workshop strengthened my understanding of:

* **Genomics workflows and applications** in plants as model organisms for comparative genomics
* **High-throughput sequencing principles**, library preparation, and Illumina sequencing technologies
* **Bioinformatics pipelines** for WGS, alignment, SNP calling, and functional annotation
* **Reproducible workflow implementation** using Nextflow and Conda environments
* Integration of **wet-lab and dry-lab genomics data** for translational and computational studies
* Insights into **genomic variation**, variant interpretation, and functional genomics that can inform cancer biology and other molecular biology research

---


## 🧠 Skills Acquired — Training Notes (Event)

| Day   | Focus / Activities                                                                  | Skills Acquired (Technical & Conceptual)                                                                                                   | Link                                             |
| ----- | ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------ |
| Day 1 | Plant DNA extraction, QC, AfricaBP mission overview                                 | Column-based DNA extraction, NanoDrop & Qubit measurements, agarose gel electrophoresis, DNA quality interpretation, wet-lab documentation | [Day 1](./Training-Notes/Training-Note-Day-1.md) |
| Day 2 | Library preparation, indexing, clean-up, normalization                              | Tagmentation, adapter ligation, PCR indexing, magnetic bead clean-up, library pooling, understanding sequencing library principles         | [Day 2](./Training-Notes/Training-Note-Day-2.md) |
| Day 3 | Sequencing run (MiSeq), QC checks, practical workflow review                        | Loading sequencing runs, troubleshooting sequencing issues, interpreting QC metrics, connecting wet-lab to downstream bioinformatics       | [Day 3](./Training-Notes/Training-Note-Day-3.md) |
| Day 4 | Bioinformatics — QC, trimming, reference genome indexing, alignment, BAM generation | FASTQ QC with FastQC, trimming with fastp, reference genome indexing with BWA, alignment (BWA-MEM), BAM file processing and sorting        | [Day 4](./Training-Notes/Training-Note-Day-4.md) |
| Day 5 | SNP calling, filtering, VCF analysis, functional annotation                         | Variant calling with bcftools, filtering high-quality SNPs, VCF exploration, functional annotation using VEP, data interpretation          | [Day 5](./Training-Notes/Training-Note-Day-5.md) |

---

## 🧰 Skills Acquired — Bioinformatics Workflow (Post-Event Project)

| Component / Script                   | Skills Acquired                                                                                      | Link                                                                                                                                                                              |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `01_download_reference.sh`           | Fetching genomes and annotation files from NCBI, organizing reference datasets for analysis          | [View](./Bioinformatics-Analysis-Workflow/scripts/01_download_reference.sh)                                                                                                       |
| `02_index_reference.sh`              | Genome indexing with BWA and Samtools, preparing references for read alignment                       | [View](./Bioinformatics-Analysis-Workflow/scripts/02_index_reference.sh)                                                                                                          |
| `03_download_reads.sh`               | Downloading SRA datasets, converting to FASTQ, handling sequencing data                              | [View](./Bioinformatics-Analysis-Workflow/scripts/03_download_reads.sh)                                                                                                           |
| `04_qc_trimming.sh`                  | FASTQ quality control, trimming low-quality reads, preparing high-quality data for alignment         | [View](./Bioinformatics-Analysis-Workflow/scripts/04_qc_trimming.sh)                                                                                                              |
| `05_alignment.sh`                    | Aligning reads to reference genome (BWA-MEM), converting SAM → BAM, sorting BAM files                | [View](./Bioinformatics-Analysis-Workflow/scripts/05_alignment.sh)                                                                                                                |
| `06_dedup_base_recal.sh`             | Marking duplicates, optional base recalibration, improving variant calling accuracy                  | [View](./Bioinformatics-Analysis-Workflow/scripts/06_dedup_base_recal.sh)                                                                                                         |
| `07_variant_calling.sh`              | SNP calling with bcftools, variant filtering, generating high-quality VCFs                           | [View](./Bioinformatics-Analysis-Workflow/scripts/07_variant_calling.sh)                                                                                                          |
| `plant_wgs_env.yml`                  | Reproducible environment setup with Conda, dependency management                                     | [View](./Bioinformatics-Analysis-Workflow/envs/plant_wgs_env.yml)                                                                                                                 |
| `main.nf` & `nextflow.config`        | Designing and executing modular Nextflow pipelines, reproducible workflow implementation             | [View main.nf](./Bioinformatics-Analysis-Workflow/main.nf) / [View config](./Bioinformatics-Analysis-Workflow/nextflow.config)                                                    |
| `notebooks/`, `reports/`, `figures/` | Documenting workflow execution, analyzing results, visualizing VEP annotation and variant statistics | [View notebook](./Bioinformatics-Analysis-Workflow/notebooks/Nextflow_plant_wgs_variant_calling_report.qmd) / [Report](./Bioinformatics-Analysis-Workflow/reports/Nextflow_plant_wgs_variant_calling_report.pdf) / [Figure](./Bioinformatics-Analysis-Workflow/figures/vep_results.png) |



---

## 🎯 Personal Learning Outcomes

* Developed practical expertise in **plant genome sequencing workflows**
* Gained conceptual understanding of **genomic variation and its biological impact**
* Learned principles of **reproducible bioinformatics pipelines** and comparative genomics
* Strengthened understanding of **functional genomics and variant interpretation**
* Appreciated the significance of **African biodiversity genomics** and its integration with research, conservation, and agriculture

---

## ✍️ Author & Contribution

**Mohamed H. Hussein**
M.Sc. Candidate — Biochemistry & Molecular Biology
Ain Shams University, Egypt

* Independently documented all **personal notes and workflow summaries**
* Developed the **modular Nextflow pipeline** for plant WGS and variant calling
* Integrated wet-lab and bioinformatics workflows into a structured, reproducible repository

---

## 📝 Citation & Usage

This folder which contains summary, notes, and project is part of the **Research-Trainings-2025** repository.

**Citation:**
Hussein, Mohamed H. (2026). *Research-Trainings-2026 repository [Summary, Notes, and Project]*. GitHub repository: [https://github.com/Mohamed-H-Hussein/Research-Trainings-2025](https://github.com/Mohamed-H-Hussein/Research-Trainings-2025)

---

## ⚖️ License

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This folder is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.
Full license: [https://creativecommons.org/licenses/by-nc/4.0/legalcode](https://creativecommons.org/licenses/by-nc/4.0/legalcode)

---

© 2026 Mohamed H. Hussein — All workflows, scripts, and notes are provided “as-is” without warranty.




