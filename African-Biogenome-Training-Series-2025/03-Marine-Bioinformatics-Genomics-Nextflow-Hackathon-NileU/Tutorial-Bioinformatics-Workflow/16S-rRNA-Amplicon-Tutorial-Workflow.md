# 🔬 16S rRNA Amplicon Microbial Diversity Analysis — **Detailed Tutorial Workflow**

**Tutorial Type:** Metagenomics / Bioinformatics     
**Last Updated:** 09-03-2026  
**Authors:** Mohamed H. Hussein

---

## Table of Contents

1. [Overview](#overview)
2. [Galaxy Training History](#galaxy-training-history)
3. [Tutorial Dataset](#tutorial-dataset)
4. [Key Concepts](#key-concepts)
5. [Detailed Step-by-Step Workflow](#detailed-step-by-step-workflow)

   * [1. Data Import & Preparation](#1-data-import--preparation)
   * [2. Optimization & Initial Quality Control](#2-optimization--initial-quality-control)
   * [3. Sequence Quality Control & Filtering](#3-sequence-quality-control--filtering)
   * [4. Sequence Alignment](#4-sequence-alignment)
   * [5. Taxonomic Classification & OTU Clustering](#5-taxonomic-classification--otu-clustering)
   * [6. Visualization](#6-visualization)
6. [Significance & Applications](#significance--applications)
7. [References](#references)

---

## Overview

This tutorial presents a **comprehensive, step-by-step workflow for analyzing microbial diversity** using **16S rRNA amplicon sequencing**, designed for students, researchers, and professionals learning microbial bioinformatics in a structured environment.

The workflow was implemented during the **African BioGenome Workshop 2025** using the **Galaxy platform**, covering every stage from data import to visualization of taxonomic abundance. The workflow emphasizes **reproducibility, open-source tools, and hands-on training**, aligning with global best practices in microbiome research.

### Learning Outcomes

1. Understand the principles of 16S rRNA amplicon sequencing and its role in microbial ecology.
2. Apply standard bioinformatics tools to process raw sequence data, perform quality control, and classify microbial taxa.
3. Construct OTU tables and interpret microbial diversity metrics.
4. Generate interactive visualizations for effective data presentation.
5. Gain practical experience with **Galaxy platform workflows**, suitable for training and research replication.

> **Tip:** This workflow is flexible and can be applied to **any 16S rRNA dataset**, allowing trainees to scale from tutorial data to real-world projects.

---

## Galaxy Training History

The full analysis can be accessed and replicated via the Galaxy history link:
[Galaxy History Link](https://usegalaxy.eu/u/mohamed_h.hussien/h/africanbiogenome-workshop-2025)

**Key points for reproducibility:**

* All datasets, tools, parameters, and outputs are preserved.
* Anyone can **replicate the analysis step-by-step**, ensuring transparency.
* Versions of tools are consistent with the **Galaxy Training Network (GTN)** tutorial: [16S Data Analysis Tutorial](https://training.galaxyproject.org/training-material/topics/microbiome/tutorials/general-tutorial/tutorial.html)

---

## Tutorial Dataset

The workflow utilizes **downsampled 16S rRNA V4 region sequences** obtained from **Argentinian soil samples**, serving as representative datasets for teaching microbial diversity analysis:

| Sample Name | Original Run | File                                                                                    |
| ----------- | ------------ | --------------------------------------------------------------------------------------- |
| Pampa       | SRR531818    | [SRR531818_pampa.fasta](https://zenodo.org/record/815875/files/SRR531818_pampa.fasta)   |
| Anguil      | SRR651839    | [SRR651839_anguil.fasta](https://zenodo.org/record/815875/files/SRR651839_anguil.fasta) |

> These datasets illustrate soil microbial diversity and allow trainees to perform all analysis steps **without requiring large-scale sequencing resources**.

---

## Key Concepts

* **Amplicon Sequencing (16S rRNA):** Targets specific regions of the microbial ribosomal RNA gene to identify microbial taxa (“Who is present?”).
* **Shotgun Sequencing:** Sequences all genomic content, providing both taxonomic and functional information (“Who is present and what are they capable of?”).
* **Operational Taxonomic Unit (OTU):** A cluster of sequences grouped at a specific similarity threshold (commonly 97%), acting as a proxy for species-level classification.
* **Dereplication:** Removing duplicate sequences to reduce computational load and simplify downstream analysis.
* **Pre-clustering:** Merging highly similar sequences to correct minor sequencing errors and reduce noise.

> **Comment:** Using open-source platforms like **Galaxy** and **mothur** promotes reproducibility and ensures that the workflow is **globally accessible** for educational and research purposes.

**Reference:** [Galaxy 16S rRNA tutorial](https://training.galaxyproject.org/training-material/topics/microbiome/tutorials/general-tutorial/tutorial.html)

---

## Detailed Step-by-Step Workflow

### 1. Data Import & Preparation

**1.1 Import Data**

* **Tool:** Upload Manager
* **Objective:** Import FASTA sequence files into Galaxy.
* **Action:** Rename datasets for clarity (e.g., `pampa`, `anguil`).

**1.2 Merge Samples**

* **Tool:** Merge.files
* **Objective:** Combine multiple sample files into a single dataset for multi-sample analysis.

**1.3 Create Group File**

* **Tool:** Make.group
* **Objective:** Map sequences to their corresponding sample origin.
* **Parameters:**

  * Method: Manual specification
  * Assign each FASTA file to its sample group

> **Tip:** For larger numbers of samples, use **Galaxy Collections** to avoid manual group file creation.

---

### 2. Optimization & Initial Quality Control

**2.1 Dereplicate Sequences**

* **Tool:** Unique.seqs
* **Purpose:** Remove duplicate sequences to reduce redundancy.
* **Output:** `.fasta` (unique sequences), `.names` (mapping duplicates)

**2.2 Count Sequences**

* **Tool:** Count.seqs
* **Purpose:** Generate a table of sequence counts per unique sequence per sample.

---

### 3. Sequence Quality Control & Filtering

**3.1 Summarize Data**

* **Tool:** Summary.seqs
* **Purpose:** Obtain sequence length distribution, ambiguous bases, and homopolymers to guide filtering thresholds.

**3.2 Screen Sequences**

* **Tool:** Screen.seqs
* **Parameters Example:**

  * `minlength`: 225
  * `maxlength`: 275
  * `maxambig`: 0
  * `maxhomop`: 8
* **Purpose:** Remove low-quality sequences that could affect downstream analysis.

> **Comment:** Filtering sequences with `maxhomop > 8` helps reduce sequencing errors.

---

### 4. Sequence Alignment

**4.1 Import Reference Database**

* **Reference:** `silva.v4.fasta` ([Download](https://zenodo.org/record/815875/files/silva.v4.fasta))

**4.2 Align Sequences**

* **Tool:** Align.seqs
* **Purpose:** Align sequences to reference for comparative analysis.

**4.3 Screen Aligned Sequences**

* **Tool:** Screen.seqs
* **Purpose:** Remove sequences with poor alignment.

**4.4 Filter Alignment**

* **Tool:** Filter.seqs
* **Purpose:** Remove columns consisting entirely of gaps to normalize sequence regions.

---

### 5. Taxonomic Classification & OTU Clustering

**5.1 Pre-cluster Sequences**

* **Tool:** Pre.cluster
* **Parameter:** `diffs = 2`
* **Purpose:** Merge sequences differing by ≤2 nucleotides to reduce noise.

**5.2 Import Taxonomy Reference**

* **Files:** `trainset16_022016.pds.fasta` & `.tax`

**5.3 Classify Sequences**

* **Tool:** Classify.seqs
* **Purpose:** Assign taxonomic labels to sequences.

**5.4 Cluster into OTUs**

* **Tool:** Cluster.split
* **Cutoff Example:** 0.15
* **Purpose:** Generate OTUs based on taxonomy and sequence similarity.

**5.5 Generate OTU Table**

* **Tool:** Make.shared
* **Output:** Table with samples as rows, OTUs as columns, and counts as values.
* **Threshold:** 97% similarity (0.03 distance)

---

### 6. Visualization

* **Tool:** Krona
* **Input:** Taxonomy summary (`.tax.summary`)
* **Purpose:** Generate interactive pie charts to visualize relative abundance of taxa.

> **Note:** Using **Krona interactive charts**, trainees can explore taxonomic abundance across multiple levels, identifying dominant bacterial phyla, genera, and potential functional insights.

---

## Significance & Applications

* Demonstrates a **complete workflow from raw data to interpretable results**, suitable for educational and research contexts.
* Provides hands-on experience in **microbial diversity analysis**, a key component in **metagenomics, environmental microbiology, and microbiome research**.
* Offers a reproducible Galaxy workflow suitable for **grant applications, training documentation, and research proposals**.
* Workflow design aligns with **international standards** and is grounded in **open-source, tutorial-based learning**.

---

## References

1. Galaxy Project: [16S Data Analysis Tutorial](https://training.galaxyproject.org/training-material/topics/microbiome/tutorials/general-tutorial/tutorial.html)
2. Zenodo datasets: [SRR531818](https://zenodo.org/record/815875/files/SRR531818_pampa.fasta), [SRR651839](https://zenodo.org/record/815875/files/SRR651839_anguil.fasta)
3. SILVA reference: [silva.v4.fasta](https://zenodo.org/record/815875/files/silva.v4.fasta)


