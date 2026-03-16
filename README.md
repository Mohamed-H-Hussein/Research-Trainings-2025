# 💻 Research Trainings 2025 Repository

This repository **contains my personal notes, analysis reports, project materials, and summaries** from multiple research and training events in 2025. It highlights **hands-on experience in genomics, bioinformatics, multi-omics analysis, and computational biology**, developed alongside my M.Sc. in Biochemistry and Molecular Biology.

---

## 🎓 Trainings Included

| Training                                     | Institution / Organizer                               | Dates           | Folder Link                                                   |
| -------------------------------------------------- | ----------------------------------------------------- | --------------- | ------------------------------------------------------------- |
| **Intensive Practical Genome Sequencing**   | University of Konstanz, Germany         | March 2025      | [Folder](./Genome-Sequencing-Course-2025)                     |
| **Summer Research Program (SRP-2025 Online)**             | University of Tsukuba, Japan                          | September 2025  | [Folder](./Summer-Research-Program-SRP-2025)                  |
| **Nextflow Training Week**                         | Seqera, Online                                        | Sept & Nov 2025 | [Folder](./Nextflow-Training-Week-2025)                       |
| **African BioGenome Project Training Series — North Africa**      | Mohammed V University , Nile University, and The American University in Cairo(AUC)| October 2025            | [Folder](./African-Biogenome-Training-Series-2025)            |
| **Winter School — Tech Fusion in Cancer Bioinformatics and Optical Sensors Diagnostics** | German University in Cairo (GUC), Egypt                                   | December 2025            | [Folder](./Winter-School-Cancer-Bioinformatics-OSCAR-Al-2025) |

---

## 🗂️ Repository Structure


```
Research-Trainings-2025/
│
├── Genome-Sequencing-Course-2025/
│   │
│   ├── README.md                          # Overview of course, Summary, and skills
│   │
│   └── Event-Notes/
│        ├── README.md                     # Summary of event notes
│        ├── Event-Notes-Day1.md           # Notes from Day 1
│        ├── Event-Notes-Day2.md           # Notes from Day 2
│        ├── Event-Notes-Day3.md           # Notes from Day 3
│        ├── Event-Notes-Day4.md           # Notes from Day 4
│        └── Event-Notes-Day5.md           # Notes from Day 5
│
│
├── Summer-Research-Program-SRP-2025/
│   │
│   ├── README.md                  # Program overview, training details, and success criteria
│   │
│   └── Training-Notes/
│       ├── README.md             # Summary and scope of the training notes
│       ├── Training-Note-1.md   # PIs 1–4: Molecular, viral, yeast & bacterial research, experimental techniques
│       ├── Training-Note-2.md   # PIs 5–8: Lipid metabolism, medical physics, sleep neuroscience, oncoimmunology
│       └── Training-Note-3.md   # PIs 9–13: Cancer biology, space omics, organ development, computational drug discovery, sleep research
│
│
├── Nextflow-Training-Week-2025/
│   │
│   ├── README.md                    # Training overview & learning outcomes
│   │
│   └── Training-Notes/
│       ├── README.md            # Training Notes summary
│       ├── 2025-09_Hello-Nextflow.md
│       └── 2025-11_Nextflow-for-RNAseq.md
│
│
├── African-Biogenome-Training-Series-2025/
│   │
│   ├── README.md                    # Repository overview, AfricaBP training series context, and learning outcomes
│   │
│   ├── 01-Biodiversity-Genomics-One-Health-MohammedV-Rabat/
│   │   ├── README.md                # Workshop description, lecture topics, and conceptual learning summary
│   │   │
│   │   └── Training-Notes/
│   │       ├── README.md            # Summary of daily learning sessions
│   │       ├── Training-Note-Day-1.md   # biodiversity genomics, One Health frameworks, AfricaBP mission
│   │       └── Training-Note-Day-2.md   # genomics technologies, ethics, and governance
│   │
│   ├── 02-Plant-Genome-Sequencing-Bioinformatics-AUC/
│   │   ├── README.md                # Hands-on workshop overview covering wet-lab genomics and bioinformatics training
│   │   │
│   │   ├── Training-Notes/
│   │   │   ├── README.md            # Summary of daily learning sessions
│   │   │   ├── Training-Note-Day-1.md   # Wet-lab: plant DNA extraction, QC methods, and AfricaBP program overview
│   │   │   ├── Training-Note-Day-2.md   # Wet-lab: Illumina library preparation, indexing, and sequencing principles
│   │   │   ├── Training-Note-Day-3.md   # Wet-lab: Sequencing workflow: MiSeq run setup, QC metrics, troubleshooting
│   │   │   ├── Training-Note-Day-4.md   # Dry-lab: FASTQ QC, trimming, reference indexing, read alignment
│   │   │   └── Training-Note-Day-5.md   # Drt-lab: SNP calling, variant filtering, functional annotation
│   │   │
│   │   └── Bioinformatics-Analysis-Workflow/
│   │       ├── README.md                # Documentation of the plant WGS variant-calling workflow implementation
│   │       │
│   │       ├── scripts/
│   │       │   ├── 01_download_reference.sh   # Download reference genome and annotation files
│   │       │   ├── 02_index_reference.sh      # Build reference genome indices for alignment
│   │       │   ├── 03_download_reads.sh       # Retrieve sequencing reads from SRA
│   │       │   ├── 04_qc_trimming.sh          # FASTQ quality control and read trimming
│   │       │   ├── 05_alignment.sh            # Align reads to reference genome using BWA
│   │       │   ├── 06_dedup_base_recal.sh     # Remove duplicates and perform base quality recalibration
│   │       │   └── 07_variant_calling.sh      # Detect SNPs and generate filtered VCF variants
│   │       │
│   │       ├── envs/
│   │       │   └── plant_wgs_env.yml          # Conda environment specification for reproducible analysis
│   │       │
│   │       ├── notebooks/
│   │       │   └── Nextflow_plant_wgs_variant_calling_report.qmd   # Quarto notebook documenting the workflow and results
│   │       │
│   │       ├── reports/
│   │       │   └── Nextflow_plant_wgs_variant_calling_report.pdf   # Rendered analysis report summarizing the workflow
│   │       │
│   │       ├── figures/
│   │       │   └── vep_results.png             # Visualization of variant annotation results (VEP output)
│   │       │
│   │       ├── nextflow.config                 # Configuration file defining pipeline parameters
│   │       └── main.nf                         # Main Nextflow workflow script for the variant-calling pipeline
│   │
│   └── 03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/
│       ├── README.md                # Hands-on workshop overview, training sessions, tutorial workflow, and project outputs 
│       │
│       ├── Training-Notes/
│       │   ├── README.md            # Summary of daily hackathon learning sessions
│       │   ├── Training-Note-Day-1.md   # Marine genomics introduction, NGS concepts, Galaxy workflow basics
│       │   ├── Training-Note-Day-2.md   # 16S rRNA analysis, OTU clustering, taxonomic classification
│       │   └── Training-Note-Day-3.md   # Nextflow pipelines, workflow reproducibility, hackathon collaboration
│       │
│       ├── Tutorial-Bioinformatics-Workflow/
│       │   ├── README.md                # Documentation of the tutorial workflow used during the hackathon
│       │   └── 16S-rRNA-Amplicon-Tutorial-Workflow.md   # Step-by-step 16S rRNA amplicon sequencing analysis tutorial
│       │
│       └── Project/
│           ├── README.md                # Hackathon team project description and analysis objectives
│           ├── 16S-rRNA-Amplicon-Microbial-Diversity-Analysis-report.md   # Detailed report of Nile River microbial diversity analysis
│           ├── 16S-rRNA-Amplicon-Microbial-Diversity-Presentation.pdf     # Final project presentation slides
│           └── figures/
│               ├── Pie_chart_visualization_for_overall_abundance_Winter.png   # Seasonal microbial abundance (winter samples)
│               └── Pie_chart_visualization_for_each_sample_Summer.png         # Sample-level microbial abundance (summer dataset)
│
│
└── Winter-School-Cancer-Bioinformatics-OSCAR-Al-2025/
    │
    ├── README.md
    │
    └── Training-Notes/
        ├── README.md
        ├── Training-Note-Day-1.md      # Precision oncology, OSCAR-AI initiative, optical biosensors, AI-driven robotics, intro to scRNA-seq
        ├── Training-Note-Day-2.md     # Multi-omics integration, spatial transcriptomics, computational drug discovery, scRNA-seq workshop
        └── Training-Note-Day-3.md     # AI-driven healthcare technologies, metabolomics, robotics in biomedical research, scRNA-seq project



```

---


## 📂 Folder Descriptions

### **Genome-Sequencing-Course-2025**

Contains **personal notes, practical exercises, and computational genomics workflows** from the Intensive Practical Genome Sequencing Course at **University of Konstanz**.

* **README.md** — Overview of the course, key learning objectives, and skills acquired.
* **Event-Notes/** — Detailed daily notes:

  * `Event-Notes-Day1.md` to `Event-Notes-Day5.md` — Notes from each day covering wet-lab and computational genomics sessions.

This folder documents **hands-on genome sequencing training, bioinformatics pipelines, long-read sequencing, and reproducible workflows** with clear relevance to **molecular cancer biology and computational genomics**.

---

### **Summer-Research-Program-SRP-2025**

Contains **personal structured notes and reflections** from the online **Summer Research Program 2025 at the University of Tsukuba, Japan**.

* **README.md** — Program overview, training structure, and success criteria.
* **Training-Notes/** — Detailed notes organized by Principal Investigator (PI) lectures:

  * `Training-Note-1.md` — PIs 1–4: Molecular, viral, yeast, and bacterial research, experimental techniques.
  * `Training-Note-2.md` — PIs 5–8: Lipid metabolism, medical physics, sleep neuroscience, oncoimmunology.
  * `Training-Note-3.md` — PIs 9–13: Cancer biology, space omics, organ development, computational drug discovery, sleep research.

This folder provides **insight into molecular biology, single-cell RNA-seq, multi-omics integration, and translational research skills**.

---

### **Nextflow-Training-Week-2025**

Contains **personal study notes, structured summaries, and workflow exercises** from **Nextflow Training Week (Seqera)**.

* **README.md** — Training overview, learning outcomes, and official references.
* **Training-Notes/** — Notes and exercises:

  * `2025-09_Hello-Nextflow.md` — Core Nextflow concepts, workflow logic, and execution fundamentals.
  * `2025-11_Nextflow-for-RNAseq.md` — RNA-seq workflow implementation, pipeline reproducibility, and practical exercises.

This folder documents **workflow development, reproducible computational pipelines, and practical Nextflow skills** relevant to **bioinformatics and genomics research**.

---

### **African-Biogenome-Training-Series-2025**

Contains **personal notes and hands-on learning summaries** from AfricaBP workshops:

* **01-Biodiversity-Genomics-One-Health-MohammedV-Rabat/** — Workshop overview, daily training notes on biodiversity genomics, One Health frameworks, and AfricaBP mission.
* **02-Plant-Genome-Sequencing-Bioinformatics-AUC/** — Wet-lab and bioinformatics training notes on plant genome sequencing, library prep, QC, variant calling, and workflow documentation using Nextflow.
* **03-Marine-Bioinformatics-Genomics-Nextflow-Hackathon-NileU/** — Hackathon notes, 16S rRNA tutorial workflow, microbial diversity project outputs, figures, and reproducible analysis workflow.

Each folder includes README.md, daily training notes, bioinformatics scripts, reports, figures, and raw data where applicable.

---

### **Winter-School-Cancer-Bioinformatics-OSCAR-Al-2025**

Contains **personal notes and reflections** from the Winter School focusing on **Cancer Bioinformatics**.

* **README.md** — Overview and key objectives.
* **Training-Notes/** — Detailed day-wise notes:

  * `Training-Note-Day-1.md` — Precision oncology, OSCAR-AI initiative, optical biosensors, AI-driven robotics, intro to scRNA-seq.
  * `Training-Note-Day-2.md` — Multi-omics integration, spatial transcriptomics, computational drug discovery, scRNA-seq workshop.
  * `Training-Note-Day-3.md` — AI-driven healthcare technologies, metabolomics, robotics in biomedical research, scRNA-seq project

This folder documents hands-on experience in cancer bioinformatics, scRNA-seq analysis.

---

## 🧠 Why These Trainings?

These trainings were selected to:

* Gain **hands-on experience** in genomics, bioinformatics, multi-omics, and workflow management.
* Apply **computational and wet-lab techniques** to real biological and biomedical datasets.
* Develop **data analysis, visualization, and reproducibility skills**.
* Build a strong foundation for **future research projects in molecular cancer biology and bioinformatics**.



---

## 🎯 Relevance to My Field

As an MSc candidate in **Biochemistry & Molecular Biology**, specializing in **Molecular Cancer Biology and Bioinformatics**, these trainings provided:

* Hands-on experience in **genome sequencing, Single-Cell Transcriptomics analysis, and bioinformatics pipelines**
* Integration of **wet-lab experimental work with computational workflows**
* Exposure to **Nextflow-based reproducible pipelines**, workflow management, and version control
* Experience in **biodiversity genomics, cancer research, and computational drug discovery**
* Development of **scientific documentation, reproducible reporting, and data visualization skills**
* Strengthened competence for **future molecular cancer biology and bioinformatics projects**

---

## 🛠️ Key Skills Developed

* **Genome Sequencing & Bioinformatics:** DNA extraction, library prep, long-read sequencing, genome assembly & annotation
* **Computational Biology:** Nextflow, nf-core, Conda, Docker, CLI, reproducible pipelines
* **Single-Cell Transcriptomics:** scRNA-seq analysis, cell-type identification, differential expression
* **Marine & Plant Genomics:** OTU analysis, variant calling, taxonomic classification
* **Scientific Reporting:** Project reports, workflow documentation, visualizations, presentations
* **Collaboration & Mentorship:** Working in teams, applying feedback, communicating scientific findings
* **Translational & Experimental Competence:** Experimental design, single-cell experimental workflows, translational applications



---

## ✍️ Author & Contribution


**Mohamed H. Hussein — MSc Candidate, Biochemistry & Molecular Biology, Ain Shams University**

* Actively participated in multiple research trainings, including lectures, workshops, and hands-on sessions.
* Independently compiled **detailed study notes, structured summaries, tutorials, and project reports** in professional academic format.
* Conducted **hands-on genome sequencing, bioinformatics analyses, Nextflow pipelines, and single-cell transcriptomics (scRNA-seq)** workflows.
* Organized all materials into **well-structured GitHub repositories** to ensure clarity, reproducibility, and accessibility.


---

## 📝 Citation & Usage

This repository contains **personal summaries, notes, and projects** from **Research Trainings 2025**.

**Citation:**
Hussein, Mohamed H. (2026). *Research Training 2025* [Summary, Notes, and Projects]. GitHub repository: [https://github.com/Mohamed-H-Hussein/Research-Trainings-2025](https://github.com/Mohamed-H-Hussein/Research-Trainings-2025)

**Usage:**
Materials are for **educational and non-commercial use**, with proper citation. Training-provided materials remain under the copyright of original organizers.

---

## 📜 License

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This repository is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.
Full license: [https://creativecommons.org/licenses/by-nc/4.0/legalcode](https://creativecommons.org/licenses/by-nc/4.0/legalcode)

---

© 2026 Mohamed H. Hussein

