# 🧬 African BioGenome Project (AfricaBP) — Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics

## Day 5 — SNP Discovery & Functional Annotation

📍 Hosted at **The American University in Cairo (AUC)**  
📅 Thursday, October 23, 2025.  
🧪 Track 2: Dry Lab — Bioinformatics — Decoding Genetic Diversity in African vs. Global Plant Genomes  

**Dry Lab Scientific Team:** Prof. Ahmed Moustafa, Rana Salah, Roba Hamed

---

### Day 5 — Scientific Context & Objectives

**Focus:**

Identify and interpret SNPs differentiating African and non-African plant genomes.

This stage transforms aligned reads into biologically meaningful variants.

---

### Conceptual Framework


```
Sorted BAM
    ↓
mpileup (bcftools)
    ↓
Raw VCF
    ↓
Filtering (QUAL > 30)
    ↓
SNP Extraction
    ↓
Functional Annotation
```

Goal:

Move from raw genomic differences to functional interpretation.

---

### Session 1: SAM/BAM Processing

**Type:** Hands-on

Tool:

* SAMtools

#### Key Steps

* Convert SAM → BAM
* Sort alignments by genomic coordinates
* Index BAM file

### File Formats Explained

| Format      | Description                 |
| ----------- | --------------------------- |
| SAM         | Text alignment format       |
| BAM         | Binary compressed SAM       |
| Sorted BAM  | Coordinate-ordered          |
| Indexed BAM | Enables rapid region access |

---

### Session 2: Variant Calling & Filtering

**Type:** Hands-on

Tool:

* bcftools

#### Variant Calling Concept

* mpileup summarizes base information
* call detects SNPs & indels
* Output: compressed VCF

#### Filtering Criteria

* QUAL > 30
* Extract SNPs only

This reduces false positives and keeps high-confidence variants.

---

### Session 3: VCF File Exploration

**Type:** Hands-on

Tools:

* bcftools stats
* vcftools

#### Analysis Performed

* SNP distribution
* Variant density
* Basic diversity metrics
* Heterozygosity assessment

This provides insight into:

* Population structure
* Genomic regions enriched in variation

---

### Session 4: Significant SNP Extraction

**Type:** Hands-on

High-confidence SNPs extracted for downstream functional analysis.

Filtering removes:

* Low-quality variants
* Indels
* Ambiguous calls

Result:

Final curated SNP dataset.

---

### Session 5: Functional Annotation

**Type:** Theoretical + Practical Overview

Tools discussed:

* SnpEff
* ANNOVAR

#### Purpose

* Identify affected genes
* Determine coding vs non-coding variants
* Predict functional impact
* Compare African vs non-African variant annotations

We explored gene models using:

**Ensembl Plants**

Focus species:

**Arabidopsis thaliana**

---

### Session 6: End of Track 2

**Type:** Q&A + Photo Session

* Discussion of biological interpretation
* Troubleshooting variant calling issues
* Integrating dry lab with wet lab sequencing workflow

---

### Training Day 5 Summary & Skills Acquired

#### Summary

* Processed alignments with SAMtools
* Performed variant calling using bcftools
* Filtered SNPs for high-confidence results
* Explored VCF statistics
* Understood functional annotation strategies
* Compared African vs global genomic variation

#### Skills Acquired

* Variant calling pipeline comprehension
* VCF interpretation
* SNP filtering strategies
* Functional annotation concepts
* Understanding of comparative genomics framework
