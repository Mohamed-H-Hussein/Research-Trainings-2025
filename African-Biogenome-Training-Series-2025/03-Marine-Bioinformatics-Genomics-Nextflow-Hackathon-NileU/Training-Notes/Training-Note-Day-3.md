# 🧬 African BioGenome Project (AfricaBP) — Marine Bioinformatics Hackathon: Biodiversity, Genomics & Nextflow Pipelines
**Nile University, 29–31 October 2025**

This document summarizes my **personal study notes and key learning outcomes** from the Marine Bioinformatics Hackathon, including **lectures, hands-on practical sessions, and collaborative hackathon projects** on biodiversity genomics, metagenomics, and workflow management using Nextflow.

---

## Day 3 — Training Notes and Scientific Learning Outcomes
📅 **Friday, 31 October 2025**

The final day of the workshop focused on **workflow management, reproducible pipeline development, and collaborative project discussions**. Participants were introduced to **Nextflow**, a modern workflow manager widely used in bioinformatics for building scalable and reproducible pipelines.  

The sessions also covered the **nf-core ecosystem**, which provides community-curated Nextflow pipelines for large-scale biological data analysis. The day concluded with **project presentations, discussions, and the closing ceremony** of the hackathon.

---

## Session: Workflow Management with Nextflow
**Lecturer:** Dr. Abdoallah Sharaf — Senior Bioinformatician, SequAna & Seqera Ambassador  
**Type:** Lecture & Practical

### Part 1: Lecture — Introduction to Workflow Managers

#### 1. Why Workflow Managers Are Essential
Modern bioinformatics analyses involve **multi-step pipelines composed of numerous software tools**. Manual management with scripts can become complex and hard to reproduce. Workflow managers help by:

* Automating pipeline execution
* Supporting parallel processing
* Efficiently managing computational resources
* Ensuring reproducibility and transparency

**Key principle:** automation allows scientists to focus on analysis rather than repetitive tasks.

#### 2. Advantages of Workflow Management Systems
* **Portability** — run workflows on local computers, HPC clusters, or cloud systems.
* **Efficiency** — automatic parallelization improves performance.
* **Reproducibility** — all steps and parameters are traceable.
* **Fault tolerance** — resume workflows from failed steps without restarting.

#### 3. Introduction to Nextflow
Nextflow is a **reactive workflow framework and DSL** designed for scalable scientific pipelines. Core concepts include:

* **Processes** — individual computational tasks  
* **Channels** — mechanisms to transfer data between processes  
* **Workflows** — structures connecting multiple processes  

Nextflow supports integration with:

* Conda environments  
* Docker containers  
* Singularity / Apptainer containers  

#### 4. Best Practices for Reproducible Pipelines
* Avoid installing software in the **base environment**.  
* Use **isolated environments or containers** for each tool.  
* Maintain workflows under **version control** (e.g., Git).  
* Design pipelines to be **modular, reusable, and scalable**.

---

### Part 2: Practical — Nextflow Hands-on Training
Based on the **official Seqera Nextflow training material**: [Nextflow Training](https://training.nextflow.io/2.1/hello_nextflow/)

#### 1. Hello World — Basic Workflow Execution
* Learn the structure of a Nextflow workflow  
* Define a **process** and execute workflows  
* Explore **work directory**, intermediate files, and logs  

**Takeaways:**
* Execute and monitor simple pipelines  
* Inspect outputs and logs

#### 2. Hello Channels — Handling Multiple Inputs
* Understand **channels** as data streams connecting workflow components  
* Enable automatic parallel processing of multiple inputs  
* Use **channel operators** for data transformations  

**Takeaways:**
* Design workflows that scale to multiple samples  
* Manage structured data in pipelines

#### 3. Hello Workflow — Multi-Step Pipelines
* Extend workflows to **multi-step pipelines**  
* Pass outputs between processes  
* Aggregate results across executions  
* Customize execution using workflow parameters  

**Takeaways:**
* Build multi-step pipelines  
* Understand process dependencies and execution order

#### 4. Hello Modules — Modular Workflow Design
* Separate processes into **reusable modules**  
* Improve code readability and maintainability  

**Takeaways:**
* Refactor workflows into modular components

#### 5. Hello Containers — Reproducible Software Environments
* Execute steps inside **containerized environments**  
* Use **Docker** or **Singularity** for reproducibility  

**Takeaways:**
* Associate processes with specific containers  
* Ensure reproducible computing environments

#### 6. Hello Config — Workflow Configuration
* Control workflow behavior using **configuration files**  
* Adapt pipelines to HPC, cloud, or local environments  
* Switch between Conda and containers  

**Takeaways:**
* Adapt workflows without modifying code  
* Configure computational resources

---

## Session: Introduction to nf-core
**Lecturer:** Dr. Abdoallah Sharaf — Senior Bioinformatician, SequAna  
**Type:** Lecture & Practical

### Part 1: Lecture — nf-core Ecosystem

#### 1. What is nf-core
nf-core is a **community-driven initiative** providing standardized Nextflow pipelines. Pipelines are:

* Reproducible  
* Well-documented  
* Portable  
* Developed following best practices

#### 2. nf-core Components
* **Pipelines** — ready-to-use workflows for genomics, transcriptomics, metagenomics, metabolomics  
* **Modules** — reusable components shared between pipelines  
* **Subworkflows** — higher-level building blocks  
* **Templates & schemas** — ensure standardization  

#### 3. Available Pipelines
* Over **95 pipelines** in 2025 covering multiple areas of biological data analysis

---

### Part 2: Practical — Exploring nf-core Pipelines
* Review **nf-core documentation and pipeline structure**  
* Focus on **nf-core/taxprofiler** for metagenomic taxonomic profiling  
* Explore:
  - Required input files  
  - Execution parameters  
  - Expected outputs and reports  

**Takeaways:**
* Explore community-developed pipelines  
* Understand standardized practices in pipeline development

---

## Session: Hackathon — Prima Project Activities
**Supervisor:** Prof. Asmaa Abushady – Nile University 
**Type:** Collaborative Project Work

Activities:

* Worked on our group project, **Prima Project**, analyzing microbial communities from **freshwater samples of the Nile River (Downtown area)**  
* **Aim:** Study the effect of seasonal changes on microbial abundance and diversity  
* **Methods:**  
  - Retrieved 16S rRNA datasets   
  - Performed QC, OTU clustering, and taxonomy assignment using **Galaxy**  
  - Visualized results using **Korona tool**  
* **Analysis Workflow:**  
  - Data import and merging samples  
  - Quality control and filtering sequences  
  - Sequence alignment and OTU clustering  
  - Taxonomic classification and abundance visualization  
* **Results Highlights:**  
  - Winter samples: Dominance of Actinomycetale, Comamonadaceae, Burkholderiales  
  - Summer samples: Similar patterns with slight seasonal shifts in relative abundance  
  - Total high-quality reads after QC: ~54,763  
* Developed **reproducible workflows** and collaborated on integrating computational and biological insights

---

## Session: Project Discussions and Best Group Selection

* Presented **Prima Project** progress and analytical approaches  
* Discussed data interpretation strategies and workflow design  
* Mentors evaluated projects based on:
  - Scientific reasoning  
  - Workflow design  
  - Data interpretation  
  - Team collaboration  
* Outstanding projects, including **Prima Project**, were recognized during the closing ceremony

---

## Session: Closing Ceremony
* Recap of the three-day program  
* Recognition of outstanding hackathon teams  
* Final remarks from instructors and organizers  
* Participants gained practical experience in:
  - Microbial metagenomics analysis  
  - Bioinformatics workflow design  
  - Reproducible computational research  
---

## Day 3 Summary & Skills Acquired

**Summary:**

* Gained practical experience in **workflow automation** and **Nextflow pipelines**  
* Explored **nf-core standardized pipelines** for scalable analyses  
* Learned principles of **reproducible computational research**  
* Applied skills collaboratively in the **Prima Project** (microbial metagenomic analysis)  
* Enhanced ability to design, execute, and interpret bioinformatics workflows

**Skills Acquired:**

* Workflow management in bioinformatics  
* Practical Nextflow pipeline development  
* Containerized workflow execution  
* Familiarity with nf-core standardized pipelines  
* Collaborative bioinformatics project experience


