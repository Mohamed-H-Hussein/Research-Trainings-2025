
# 🧬 African BioGenome Project (AfricaBP) — Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics

## Day 4 — Preparing Genomic Data for SNP Comparison

📍 Hosted at **The American University in Cairo (AUC)**  
📅 Wednesday, October 22, 2025.  
🧪 Track 2: Dry Lab — Bioinformatics — Decoding Genetic Diversity in African vs. Global Plant Genomes  

**Dry Lab Scientific Team:** Prof. Ahmed Moustafa, Rana Salah, Roba Hamed

---

### Day 4 — Scientific Context & Objectives

**Focus:**  

Prepare high-quality genomic data for SNP comparison between African and non-African plant accessions.

**Objective:**  

Explore genomic variants distinguishing African from global plant genomes using a comparative genomics workflow.

Model organism used:

**Arabidopsis thaliana** (TAIR10.1 assembly)

This session bridges:

* Raw NGS data → Clean reads
* Reference genome → Indexed alignment-ready genome
* Alignment → Variant-ready BAM files

---

### Conceptual Framework

**Variant-Based Comparative Genomics Workflow**

```
Reference Genome
        +
Trimmed NGS Reads
        ↓
Alignment (BWA-MEM)
        ↓
SAM → BAM → Sorted BAM → Indexed BAM
        ↓
mpileup (bcftools)
        ↓
Raw VCF
        ↓
Filtering (QUAL > 30)
        ↓
High-confidence SNPs
        ↓
Functional Annotation
```

Understanding variation at the SNP level enables:

* Detection of population-specific variants
* Study of adaptation and environmental selection
* Comparative diversity analysis
* Functional interpretation of genomic differences

---

### Dataset Information

**Study:** [PRJEB62038 (2024)](https://www.ebi.ac.uk/ena/browser/view/PRJEB62038)  
**Institute:** Max Planck Institute for Plant Breeding Research, Germany  
**Organism:** [Arabidopsis thaliana](https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=3702)  
**Sample:** Toufl-1  
**Run accession:** [ERR11436045 (2024)](https://www.ebi.ac.uk/ena/browser/view/ERR11436045)  
**Platform:** Illumina NextSeq 2000   
**Strategy:** Whole Genome Sequencing (WGS)    
**Layout:** Paired-end  
**Reads:** ~17.6 million  

**Reference Genome:**  
* Assembly: TAIR10.1 
* Accession: [GCF_000001735.4 (2018)](https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001735.4/)  
* Genome size: ~119 Mb  
* Source: [NCBI RefSeq](https://www.ncbi.nlm.nih.gov/refseq/) 
---
### Session 1: Introduction to Comparative Genomics

**Type:** Lecture

#### Key Concepts

* What differentiates African vs non-African accessions?
* How do SNPs reflect evolutionary divergence?
* Why high-quality preprocessing is critical before variant discovery?

We reviewed the three major NGS analysis stages:

#### Primary Analysis

FASTQ generation (base calling + quality scores)

#### Secondary Analysis

* Quality filtering
* Alignment → BAM
* Variant calling → VCF

#### Tertiary Analysis

* Variant filtering
* Functional annotation
* Biological interpretation

---

### Session 2: What Are Genomic Variants?

**Type:** Lecture.  

#### Types of Variants

* **SNPs** (Single Nucleotide Polymorphisms)
* Indels
* Structural Variants

#### Biological Impact

* Synonymous vs nonsynonymous mutations
* Gain/loss of function
* Regulatory region effects
* Adaptive selection signatures

---

### Session 3: Downloading Genomic Data

**Type:** Hands-on

We downloaded the reference genome and NGS dataset as detailed in **Dataset Information**.

**Reference Genome:** TAIR10.1 assembly from NCBI  
**Study Dataset:** PRJEB62038 — 72 accessions, example run ERR11436045

---

### Session 4: Why Sequencing Reads May Be Low Quality

**Type:** Lecture

#### Technical Causes

* Sequencer chemistry degradation
* Adapter contamination
* Low base quality at 3' ends

#### Biological Causes

* DNA degradation
* GC bias
* Library prep artifacts

Poor-quality reads lead to:

* False SNPs
* Alignment errors
* Inflated heterozygosity

---

### Session 5: Quality Control & Trimming

**Type:** Hands-on.  

Tools used:

* FastQC
* fastp

#### Objectives

* Inspect per-base quality scores
* Detect adapter contamination
* Trim low-quality bases
* Compare before vs after trimming

Key outcome:

Improved read reliability for accurate alignment and SNP detection.

---

### Session 6: Genome Indexing

**Type:** Hands-on.  

Tool:

* BWA index

#### Why Indexing Is Necessary

Indexing allows rapid lookup of genomic positions during alignment.
Without indexing, alignment would be computationally inefficient.

Generated index files:

(.amb, .ann, .bwt, .pac, .sa)

---

### Session 7: Genome Alignment

**Type:** Hands-on.  

Tool:

* BWA-MEM

#### Concept

Map African accession reads to the reference genome.

Output:

SAM → converted to BAM → sorted BAM → indexed BAM

Observed alignment metrics:

* Insert size distribution
* Proper pair boundaries
* Orientation statistics (FR dominant, expected in paired-end sequencing)

These metrics confirm:

* Successful alignment
* Reasonable fragment size distribution
* High-quality mapping

---

### Training Day 4 Summary & Skills Acquired

#### Summary. 

* Understood genomic variants and their biological relevance
* Downloaded reference and NGS datasets
* Performed QC and trimming
* Indexed reference genome
* Completed read alignment workflow
* Generated sorted, indexed BAM files

#### Skills Acquired

* FASTQ quality interpretation
* Read preprocessing
* Reference indexing
* Alignment workflow understanding
* BAM format interpretation
