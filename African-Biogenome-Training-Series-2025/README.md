# 🧬 African BioGenome Training Series 2025

This folder contains my **personal study notes, structured summaries, and hands-on reflections** from participating in the **African BioGenome Project (AfricaBP) 2025 workshops and hackathons**.

It documents my **learning journey, verified understanding, and practical exposure** to **genomics, bioinformatics workflows, and microbial diversity analysis**.

The materials are shared **for educational, academic, and professional documentation purposes only**.

---

 ##  🏫 Training & Workshops Overview

* **Organization:** African BioGenome Project (AfricaBP) — Open Institute for Genomics & Bioinformatics

* **Program Focus:** Biodiversity Genomics, Genome Sequencing, and Bioinformatics Analysis

* **Host Institutions:**
  * Mohammed V University in Rabat
  * The American University in Cairo (AUC)
  * Nile University

* **Locations:**
  * Rabat, Morocco — Online participation
  * Cairo, Egypt — Hands-on participation

* **Program Period:** October 19 – October 31, 2025

* **Training Components:**

  * Scientific lectures on **biodiversity genomics and One Health**
  * Practical training in **plant genome sequencing and bioinformatics workflows**
  * Collaborative **marine bioinformatics hackathon projects**

---

## 📚 Workshops & Events

### Biodiversity Genomics and One Health: Exploring Synergies for Conservation and Food Security Across North Africa

* **Host Institution:** Mohammed V University in Rabat, Faculty of Sciences  
* **Location:** Rabat, Morocco (Live-stream participation)  
* **Dates:** 27–28 October 2025, 09:00 – 18:00 (GMT +1)  
* **Format:** Online Scientific Workshop (Lectures & Discussions)  
* **Coordinator:** Prof. Bouabid Badaoui  
* **Event Link:** [View Event](https://www.linkedin.com/posts/african-biogenome-project_today-applications-begin-for-the-african-activity-7343622735622729728-NsXu)


---

### Exploring Genomic Diversity — Hands-on Workshop in Plant Genome Sequencing and Bioinformatics

* **Host Institution:** The American University in Cairo (AUC)  
* **Location:** Cairo, Egypt (Hands-on participation)  
* **Dates:** 19–23 October 2025, 09:00 – 18:00 (GMT +2)  
* **Format:** Practical Workshop (Wet Lab + Dry Lab)  

* **Coordinators:**
  * Prof. Ahmed Moustafa  
  * Dr. Mai Ibrahim Barakat  

* **Event Link:**  
[View Event](https://www.linkedin.com/posts/african-biogenome-project_to-register-please-visit-httpslnkdin-activity-7350486207463661568-pWeh?)

---

### Marine Bioinformatics Hackathon — Biodiversity, Genomics & Nextflow Pipelines

* **Host Institution:** Nile University  
* **Location:** Cairo, Egypt  
* **Dates:** 29–31 October 2025, 09:00 – 18:00 (GMT +2)  
* **Format:** Practical Workshop (Hands-on + Collaborative Bioinformatics Projects)

* **Coordinators:**
  * Prof. Asmaa Abushady  
  * Dr. Abdoallah Sharaf  

* **Event Link:**  
[View Event](https://www.linkedin.com/posts/african-biogenome-project_to-register-please-visit-httpslnkdin-activity-7361310545007849472-JwQJ?)


---

## 📘 Overview

The **African BioGenome Training Series 2025** provided a **comprehensive learning journey** through **biodiversity genomics, plant genome sequencing, microbial diversity analysis, and reproducible bioinformatics workflows**. The program combined **lectures, hands-on workshops, and collaborative hackathon projects**, offering:

* Strategic understanding of **genomics workflows** and data handling
* Hands-on experience in **DNA extraction, library preparation, and sequencing QC**
* Introduction to **NGS technologies, plant genome assembly, and 16S rRNA microbial analysis**
* Implementation of **Nextflow pipelines** and reproducible bioinformatics workflows
* Collaborative experience in **team-based hackathons and project reporting**
* Exposure to **ethical, governance, and conservation aspects** in genomics research

> Detailed notes, workflow implementations, and project outputs are available in the respective folders.



## 📂 Folder Structure

```

African-Biogenome-Training-Series-2025
│
├── README.md                    # Repository overview, AfricaBP training series context, and learning outcomes
│
├── 01-Biodiversity-Genomics-One-Health-MohammedV-Rabat/
│   ├── README.md                # Workshop description, lecture topics, and conceptual learning summary
│   └── Training-Notes/
│       ├── Training-Note-Day-1.md   # biodiversity genomics, One Health frameworks, AfricaBP mission
│       └── Training-Note-Day-2.md   # genomics technologies, ethics, and governance
│
├── 02-Plant-Genome-Sequencing-Bioinformatics-AUC/
│   ├── README.md                # Hands-on workshop overview covering wet-lab genomics and bioinformatics training
│   ├── Training-Notes/
│   │   ├── Training-Note-Day-1.md   # Wet-lab: plant DNA extraction, QC methods, and AfricaBP program overview
│   │   ├── Training-Note-Day-2.md   # Wet-lab: Illumina library preparation, indexing, and sequencing principles
│   │   ├── Training-Note-Day-3.md   # Wet-lab: Sequencing workflow: MiSeq run setup, QC metrics, troubleshooting
│   │   ├── Training-Note-Day-4.md   # Dry-lab: FASTQ QC, trimming, reference indexing, read alignment
│   │   └── Training-Note-Day-5.md   # Drt-lab: SNP calling, variant filtering, functional annotation
│   │
│   └── Bioinformatics-Analysis-Workflow/
│       ├── README.md                # Documentation of the plant WGS variant-calling workflow implementation
│       ├── scripts/
│       │   ├── 01_download_reference.sh   # Download reference genome and annotation files
│       │   ├── 02_index_reference.sh      # Build reference genome indices for alignment
│       │   ├── 03_download_reads.sh       # Retrieve sequencing reads from SRA
│       │   ├── 04_qc_trimming.sh          # FASTQ quality control and read trimming
│       │   ├── 05_alignment.sh            # Align reads to reference genome using BWA
│       │   ├── 06_dedup_base_recal.sh     # Remove duplicates and perform base quality recalibration
│       │   └── 07_variant_calling.sh      # Detect SNPs and generate filtered VCF variants
│       │
│       ├── envs/
│       │   └── plant_wgs_env.yml          # Conda environment specification for reproducible analysis
│       │
│       ├── notebooks/
│       │   └── Nextflow_plant_wgs_variant_calling_report.qmd   # Quarto notebook documenting the workflow and results
│       │
│       ├── reports/
│       │   └── Nextflow_plant_wgs_variant_calling_report.pdf   # Rendered analysis report summarizing the workflow
│       │
│       ├── figures/
│       │   └── vep_results.png             # Visualization of variant annotation results (VEP output)
│       │
│       ├── nextflow.config                 # Configuration file defining pipeline parameters
│       └── main.nf                         # Main Nextflow workflow script for the variant-calling pipeline
│
└── 03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/
    ├── README.md                # Hands-on workshop overview, training sessions, tutorial workflow, and project outputs 
    │
    ├── Training-Notes/
    │   ├── README.md            # Summary of daily hackathon learning sessions
    │   ├── Training-Note-Day-1.md   # Marine genomics introduction, NGS concepts, Galaxy workflow basics
    │   ├── Training-Note-Day-2.md   # 16S rRNA analysis, OTU clustering, taxonomic classification
    │   └── Training-Note-Day-3.md   # Nextflow pipelines, workflow reproducibility, hackathon collaboration
    │
    ├── Tutorial-Bioinformatics-Workflow/
    │   ├── README.md                # Documentation of the tutorial workflow used during the hackathon
    │   └── 16S-rRNA-Amplicon-Tutorial-Workflow.md   # Step-by-step 16S rRNA amplicon sequencing analysis tutorial
    │
    └── Project/
        ├── README.md                # Hackathon team project description and analysis objectives
        ├── 16S-rRNA-Amplicon-Microbial-Diversity-Analysis-report.md   # Detailed report of Nile River microbial diversity analysis
        ├── 16S-rRNA-Amplicon-Microbial-Diversity-Presentation.pdf     # Final project presentation slides
        └── figures/
            ├── Pie_chart_visualization_for_overall_abundance_Winter.png   # Seasonal microbial abundance (winter samples)
            └── Pie_chart_visualization_for_each_sample_Summer.png         # Sample-level microbial abundance (summer dataset)
```

---

## 📘 Folder & File Descriptions

| Folder / File | Description | Link |
|---|---|---|
| **README.md** | Main repository overview describing the AfricaBP training series, workshop context, learning objectives, and documentation scope. | [Open](./README.md) |
| **01-Biodiversity-Genomics-One-Health-MohammedV-Rabat/** | Lecture-based workshop notes covering biodiversity genomics, One Health frameworks, AfricaBP mission, and discussions on genomics ethics and governance. | [Open](./01-Biodiversity-Genomics-One-Health-MohammedV-Rabat/) |
| **02-Plant-Genome-Sequencing-Bioinformatics-AUC/** | Hands-on workshop documentation including wet-lab training (DNA extraction, Illumina library preparation, sequencing workflows) and dry-lab bioinformatics analysis. | [Open](./02-Plant-Genome-Sequencing-Bioinformatics-AUC/) |
| **Bioinformatics-Analysis-Workflow/** | Implementation of a plant whole-genome sequencing (WGS) bioinformatics pipeline including QC, alignment, variant calling, and annotation using Nextflow. | [Open](./02-Plant-Genome-Sequencing-Bioinformatics-AUC/Bioinformatics-Analysis-Workflow/) |
| **03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/** | Hackathon training sessions, tutorial workflows, and collaborative project outputs focused on microbial diversity analysis using 16S rRNA amplicon sequencing. | [Open](./03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/) |
| **Tutorial-Bioinformatics-Workflow/** | Step-by-step tutorial documentation of a 16S rRNA amplicon sequencing analysis workflow used during the hackathon. | [Open](./03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/Tutorial-Bioinformatics-Workflow/) |
| **Project/** | Team hackathon project analyzing microbial diversity in Nile River freshwater samples, including the full analysis report, presentation slides, and visualization figures. | [Open](./03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/Project/) |

---

## 🎯 Relevance to My Field

As an MSc candidate in **Biochemistry & Molecular Biology**, specializing in **Molecular Cancer Biology and Bioinformatics**, this training series strengthened my skills in:

* Translating experimental genomics into **reproducible bioinformatics workflows**
* Handling **plant and microbial genome data**
* Integrating **wet-lab and dry-lab genomics analyses**
* Implementing **Nextflow pipelines** for large-scale sequencing datasets
* Analyzing **16S rRNA microbial diversity** in environmental samples
* Gaining practical **hands-on skills in bioinformatics tools, sequencing QC, and variant annotation**

---

## 🧠 Skills Acquired Across Workshops

| Workshop / Event                         | Technical Skills                                                                                       | Conceptual Skills                                                                              |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------- |
| Biodiversity Genomics & One Health       | Understanding NGS, biodiversity genomics, One Health data integration, workflow documentation          | Ethical considerations, conservation genomics, regional genomics capacity-building             |
| Plant Genome Sequencing & Bioinformatics | DNA extraction, library prep, QC, sequencing run, Nextflow pipelines, SNP calling, variant annotation  | Genomics workflows, reproducible pipelines, comparative genomics, integration of wet/dry lab   |
| Marine Bioinformatics Hackathon          | 16S rRNA QC, OTU clustering, taxonomic assignment, visualization (Krona/phyloseq), workflow automation | Microbial ecology, metagenomics interpretation, collaborative analysis, reproducible workflows |

---

## ✍️ Author & Contribution

**Mohamed H. Hussein**  
*MSc Candidate, Biochemistry & Molecular Biology, Ain Shams University*

* Independently documented all **personal study notes and workflow summaries**
* Completed hands-on exercises and bioinformatics pipeline implementations
* Structured the GitHub folder for **clarity, reproducibility, and professional documentation**

---


## 📝 Citation & Usage

This folder contains **personal study notes, workflow documentation, and project outputs** from the **African BioGenome Training Series 2025** and is part of the **Research-Trainings-2025** repository

**Citation:**
Hussein, Mohamed H. (2026).*Research-Trainings-2025 repository [Summary, Notes, and Project]*. GitHub repository: [https://github.com/Mohamed-H-Hussein/Research-Trainings-2025](https://github.com/Mohamed-H-Hussein/Research-Trainings-2025)

**Usage:**

* For **personal learning, academic reference, and professional documentation**
* Reviewing genomics concepts and NGS workflows
* Practicing **bioinformatics pipelines** and workflow reproducibility
* Supporting ongoing and future genomics projects

All content authored by me is **educational, non-commercial, and open for academic use**, with proper citation. Original materials from AfricaBP workshops remain the **intellectual property of the respective organizers**.

---
## ⚖️ License

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This folder is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.
Full license: [https://creativecommons.org/licenses/by-nc/4.0/legalcode](https://creativecommons.org/licenses/by-nc/4.0/legalcode)

© 2026 Mohamed H. Hussein — All workflows, scripts, and notes are provided “as-is” without warranty.

