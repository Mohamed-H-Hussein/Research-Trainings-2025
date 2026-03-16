# 🧬 African BioGenome Project (AfricaBP) — Marine Bioinformatics Hackathon: Biodiversity, Genomics & Nextflow Pipelines

**Nile University, 29–31 October 2025**

This document summarizes my **personal study notes and key learning outcomes** from the Marine Bioinformatics Hackathon, including **lectures, hands-on practical sessions, and collaborative hackathon projects** on biodiversity genomics, metagenomics, and workflow management using Nextflow.

---

## Day 1 — Training Notes and Scientific Learning Outcomes

📍 **Venue:** Nile University
📅 **Wednesday, 29 October 2025**

Day 1 introduced participants to marine biodiversity genomics, metagenomics applications, and bioinformatics workflow tools, setting the stage for hands-on practical exercises and the hackathon group projects.

---

## Welcome Note & AfricaBP Introductory Session

**Speaker:** Prof. Asmaa Abushady — Nile University   
**Type:** Lecture

### Key Concepts

* Introduction to **African BioGenome Project (AfricaBP)** and its mission to explore and conserve African biodiversity through genomic research.
* Overview of **marine genomics initiatives**: sequencing marine organisms to study population structure, adaptation, and ecosystem health.
* Emphasis on **One Health concept in marine environments**: linking biodiversity, human activities, and ecosystem stability.
* Explanation of hackathon objectives: practical application of **Nextflow pipelines**, **Galaxy platform**, and marine metagenomics datasets.

---

## Session: Biodiversity Loss in Marine Biology

**Lecturer:** Prof. Sameh Hassanein — Nile University   
**Type:** Lecture

### Key Concepts

* **Marine biodiversity threats**: overfishing, habitat destruction, pollution, climate change.
* Loss of keystone species affects ecosystem function and resilience.
* Genomics as a tool to **monitor populations, identify endangered species, and guide conservation strategies**.
* Integration of **-omics data** (genomics, transcriptomics, metagenomics) to study adaptation and resilience in marine organisms.
* Use of genomic markers to track **species diversity, migration, and population structure**.
* Case studies: coral reefs, mangroves, and marine microbiomes.

### Key Takeaways:

  * Genomic tools can **quantify biodiversity loss** and inform conservation policies.
  * Understanding marine population genetics is essential for sustainable management.

---

## Session: Next Generation Technologies — Deep Dive in Marine Biology

**Lecturer:** Prof. Sameh Hassanein — Nile University   
**Type:** Lecture

### Key Concepts

* Overview of **Next-Generation Sequencing (NGS) technologies**: Illumina, PacBio, Oxford Nanopore.
* Application of **long-read sequencing** for complex marine genomes and metagenomes.
* Integration with **bioinformatics pipelines** for assembly, annotation, and comparative genomics.
* Importance of **high-quality DNA/RNA extraction** from marine samples (challenging due to salts, polysaccharides).
* Emphasis on **hybrid assemblies** for marine organisms with complex genomes.
* 
### Key Takeaways:

  * Selection of sequencing technology should match **organism complexity and research objectives**.
  * Quality control is critical for reliable downstream bioinformatics.

---

## Session: Applications of Metagenomics in Marine Drug Discovery

**Lecturer:** Prof. Sameh Hassanein — Nile University   
**Type:** Lecture

### Key Concepts

* **Metagenomics** enables identification of bioactive compounds from marine microbial communities.
* Exploration of **novel enzymes, antibiotics, and secondary metabolites** from uncultured microbes.
* Steps: sample collection → DNA extraction → sequencing → functional annotation.
* Use of bioinformatics pipelines to **link genes to potential metabolites**.
* Highlights of tools for **microbiome analysis, taxonomic profiling, and functional prediction**.

### Key Takeaways:

  * Metagenomics accelerates discovery of **marine-derived drugs**.
  * Bioinformatics pipelines facilitate the connection between **genetic data and functional potential**.

---

## Practical Session 1: Quick Tutorial on Galaxy Platform

**Instructors:** Shaimaa R.Reda & Assem Kadry Elsherif — Nile University    
**Type:** Hands-on

### 1. Core Concepts

* Introduction to the **Galaxy platform** as a web-based environment for reproducible bioinformatics analyses.
* Understanding how Galaxy enables researchers to perform complex computational workflows **without requiring command-line programming**.
* Exploration of the **Galaxy interface**, including the tools panel, history panel, and workflow management system.
* Learning how datasets are **uploaded, organized, and processed within Galaxy histories**.
* Emphasis on **reproducibility and transparency** in bioinformatics by documenting analysis steps and parameters.

Galaxy is widely used in genomics and metagenomics because it integrates **many bioinformatics tools within a single platform**, enabling researchers to design and execute complex workflows for sequence analysis.

---

### 2. Tools and Workflow

Participants were introduced to the Galaxy environment and basic operations required to perform bioinformatics analyses.

1. **Accessing the Galaxy Platform**

   * Participants logged into the Galaxy server and explored the main interface.
   * The interface consists of:

     * **Tools panel** (left): contains analysis tools.
     * **Main workspace** (center): displays tool configuration and outputs.
     * **History panel** (right): tracks datasets and analysis steps.

2. **Dataset Upload and Management**

   * The **Upload Manager** was used to import datasets into Galaxy.
   * Participants learned how to:

     * Upload files from local systems or URLs.
     * Rename datasets for clarity.
     * Organize datasets within the **history panel**.

3. **Running Tools and Configuring Parameters**

   * Users selected tools from the Galaxy toolbox and executed them on uploaded datasets.
   * Tool parameters were configured through the graphical interface.
   * Each execution step generated a new dataset recorded in the analysis history.

4. **Tracking and Reproducibility**

   * Galaxy automatically records all analysis steps and parameters.
   * This allows researchers to **reproduce analyses or share workflows** with collaborators.

---

### 3. Key Takeaways

* Familiarity with the **Galaxy platform interface and workflow structure**.
* Ability to **upload, manage, and organize sequencing datasets**.
* Understanding how to **execute bioinformatics tools and configure analysis parameters**.
* Recognition of the importance of **reproducibility and workflow documentation** in computational biology.

---

## Practical Session 2: Data Acquisition, QC, and Sequence Alignment

**Instructors:** Shaimaa R.Reda & Assem Kadry Elsherif — Nile University  
**Type:** Hands-on

### 1. Core Concepts

* Introduction to the **initial stages of 16S rRNA amplicon data analysis**.
* Understanding how raw sequencing data must undergo **quality control and preprocessing** before downstream analysis.
* Learning the importance of **dereplication, filtering, and sequence alignment** for accurate microbial community analysis.
* Exploration of how **reference databases** (e.g., SILVA) are used to align microbial sequences to conserved genomic regions.
* Preparation of sequencing data for **taxonomic classification and OTU clustering**, which are performed in later workflow stages.

These preprocessing steps ensure that only **high-quality, biologically meaningful sequences** are retained for microbial diversity analysis.

---

### 2. Tools and Workflow

Participants implemented the initial stages of the **16S rRNA amplicon analysis pipeline** using the **mothur tool suite in Galaxy**.

#### 1. Data Import and Preparation

* **Upload Manager**

  * Sequence datasets (FASTA files) were imported into Galaxy.
  * Datasets were renamed for easier identification during analysis.

* **Merge.files**

  * Used to combine multiple sample FASTA files into a single dataset.
  * This allows multi-sample analyses within a unified workflow.

* **Make.group**

  * Generated a **group file** mapping each sequence to its corresponding sample.
  * This mapping allows downstream tools to track sequences across samples.

---

#### 2. Optimization and Initial Quality Control

* **Unique.seqs**

  * Identified and collapsed identical sequences (dereplication).
  * This step reduces computational load while preserving biological information.

* **Count.seqs**

  * Generated a **count table** that records how many times each unique sequence occurs within each sample.

* **Summary.seqs**

  * Produced summary statistics describing sequence properties such as:

    * sequence length
    * ambiguous bases
    * homopolymer runs

  * These metrics guide the selection of appropriate filtering thresholds.

---

#### 3. Sequence Quality Filtering

* **Screen.seqs**

  * Removed sequences failing quality criteria such as:

    * abnormal sequence length
    * ambiguous nucleotides
    * excessive homopolymers

  * This filtering step ensures only **high-quality reads** proceed to alignment.

---

#### 4. Sequence Alignment to Reference Database

* **Reference Database Import**

  * A reference alignment dataset (e.g., **SILVA 16S rRNA database**) was uploaded into Galaxy.

* **Align.seqs**

  * Aligned filtered sequences to the reference alignment.
  * This step ensures that sequences correspond to the **same conserved region of the 16S rRNA gene**.

* **Screen.seqs (Alignment Filtering)**

  * Removed sequences that did not align properly to the reference region.

* **Filter.seqs**

  * Removed alignment columns containing only gaps to ensure consistent sequence overlap.

These steps produce a **clean and properly aligned dataset** ready for downstream taxonomic analysis.

---

### 3. Key Takeaways

* Understanding the **early preprocessing stages of 16S amplicon sequencing analysis**.
* Experience using **Galaxy and mothur tools for sequence preprocessing and alignment**.
* Ability to perform **quality control and filtering of sequencing data**.
* Preparation of high-quality aligned sequences for **taxonomic classification and OTU clustering**.

---


## Day 1 Summary & Skills Acquired

### Summary

* Gained understanding of **marine biodiversity threats** and genomic approaches to study them.
* Explored **NGS technologies and metagenomics applications** for marine research and drug discovery.
* Hands-on exposure to **Galaxy platform** for pipeline execution, data QC, and sequence alignment.
* Prepared for hackathon exercises and subsequent taxonomic and visualization analyses.

### Skills Acquired

* Ability to **assess sequencing strategies** for marine organisms.
* Understanding of **marine metagenomics pipelines**.
* Proficiency in **Galaxy-based workflow execution** and QC practices.
* Awareness of **One Health and conservation genomics** principles.
* Preparedness for **taxonomic extraction and visualization** in Day 2 practical sessions.

