
# 🧬 African BioGenome Project (AfricaBP) — Marine Bioinformatics Hackathon: Biodiversity, Genomics & Nextflow Pipelines

**Nile University, 29–31 October 2025**

This document summarizes my **personal study notes and key learning outcomes** from the Marine Bioinformatics Hackathon, including **lectures, hands-on practical sessions, and collaborative hackathon projects** on biodiversity genomics, metagenomics, and workflow management using Nextflow.

---

## Day 2 — Training Notes and Scientific Learning Outcomes

📅 **Thursday, 30 October 2025**

Day 2 focused on **taxonomic extraction, visualization, biodiversity genomics in the ‘-omics’ era**, and initiation of the hackathon group projects. The sessions aimed to bridge the gap between **raw sequencing data and biological interpretation**, allowing participants to understand how microbial community composition can be identified, analyzed, and visualized using modern bioinformatics tools.

Participants continued applying the **Galaxy-based analysis workflow introduced previously**, learning how taxonomic classification and visualization techniques reveal patterns in microbial biodiversity within environmental datasets.


---

## Practical Session 3: Extraction of Taxonomic Information

**Instructors:** Shaimaa R.Reda & Assem Kadry Elsherif — Nile University  
**Type:** Hands-on

### 1. Core Concepts

* Focus on the **taxonomic extraction stage** of the 16S amplicon analysis workflow after sequence preprocessing and alignment steps completed previously.
* Understanding how processed sequences can be **classified into taxonomic groups** using curated reference databases.
* Identification of **Operational Taxonomic Units (OTUs)** as clusters of highly similar sequences representing microbial taxa.
* Importance of **sequence denoising and clustering** in reducing sequencing errors and improving biodiversity estimation.
* Understanding how taxonomic classification allows researchers to **interpret microbial community structure and diversity** within environmental samples.

---

### 2. Tools and Workflow

The taxonomic extraction workflow was implemented using **Galaxy and the mothur tool suite**, focusing on transforming processed sequences into **taxonomic classifications and OTU-based community profiles**.

1. **Filtering the Alignment**

   * **Filter.seqs** was used to remove alignment columns that contain only gaps (“.”).
   * This step ensures that all sequences overlap in the same genomic region and improves clustering accuracy.

2. **Pre-clustering (Error Reduction)**

   * **Pre.cluster** was applied to merge sequences that differ by only a small number of nucleotides.
   * This denoising step helps correct sequencing errors and prevents artificial inflation of microbial diversity.

3. **Importing Reference Taxonomy**

   * Reference taxonomy files were uploaded into Galaxy to enable sequence classification.
   * These reference datasets contain curated taxonomic information used to identify microbial sequences.

4. **Taxonomic Classification**

   * **Classify.seqs** assigned taxonomic identities to each sequence based on similarity to reference databases.
   * The output provides hierarchical classification levels such as **domain, phylum, class, order, family, and genus**.

5. **OTU Clustering**

   * **Cluster.split** grouped sequences into **Operational Taxonomic Units (OTUs)** based on sequence similarity.
   * Splitting sequences by taxonomy before clustering improves computational efficiency and clustering accuracy.

6. **Generation of OTU Abundance Table**

   * **Make.shared** produced the final **OTU abundance table**, where:

     * rows represent samples
     * columns represent OTUs
     * values represent sequence counts.

   * This table summarizes the microbial community composition and serves as the foundation for downstream ecological analysis and visualization.

---

### 3. Key Takeaways

* Ability to **extract taxonomic classifications from processed 16S rRNA sequencing data**.
* Understanding the role of **denoising and clustering in accurate microbial diversity estimation**.
* Experience using **Galaxy and mothur tools for taxonomic profiling**.
* Knowledge of how **OTU tables represent microbial community composition across samples**.
* Preparation of data structures required for **downstream visualization and biodiversity analysis**.


---

## Practical Session 4: Visualization

**Instructors:** Shaimaa R.Reda & Assem Kadry Elsherif — Nile University    
**Type:** Hands-on

### 1. Core Concepts

* Visualization is a key step in metagenomic analysis because microbial datasets often contain **large numbers of taxa and complex abundance patterns**.
* Graphical representations help researchers identify **dominant microbial groups, rare taxa, and ecological patterns**.
* Visual exploration facilitates **comparisons between samples, environmental conditions, or time points**.
* Proper visualization enables clearer interpretation of microbial community structure and improves communication of results.

---

### 2. Tools and Workflow

Participants used several visualization tools to explore microbial community composition derived from taxonomic classification outputs.

* **Krona**

  * Generates interactive hierarchical pie charts.
  * Allows users to explore taxonomic abundance across multiple taxonomic levels.
  * Enables interactive navigation from domain level down to genus or species.

* **Phyloseq (R)**

  * An R-based framework designed for microbial community analysis.
  * Supports generation of **bar plots, heatmaps, ordination plots, and diversity analyses**.
  * Integrates OTU tables, taxonomy data, and sample metadata.

* **MultiQC summaries**

  * Provides aggregated reports summarizing results from multiple analysis steps.
  * Helps track data quality and workflow outputs.

Visualization outputs included:

* **Pie charts** representing overall taxonomic composition.
* **Bar plots** showing relative abundance of taxa across samples.
* **Heatmaps** highlighting differences in microbial distribution between conditions.

These visualizations provide insights into **community structure and biodiversity patterns**.

---

### 3. Key Takeaways

* Visualization is crucial for **interpreting complex metagenomic datasets and microbial community structures**.
* Interactive visualization tools help researchers **explore hierarchical taxonomy relationships**.
* Graphical representations facilitate **comparison between microbial communities across samples or environmental conditions**.
* Effective visualization enhances **scientific communication and data presentation**.

---

## Session: Biodiversity Genomics in the ‘-Omics’ Era

**Lecturer:** Dr. Abdoallah Sharaf — Senior Bioinformatician, SequAna  
**Type:** Lecture

### 1. Core Idea

* Biodiversity genomics integrates **genomics, ecology, and evolutionary biology** to study biological diversity across multiple scales.
* Modern sequencing technologies enable researchers to analyze **genetic variation within populations, between species, and across ecosystems**.
* High-throughput sequencing allows the detection of biodiversity patterns that were previously inaccessible using traditional ecological approaches.

---

### 2. Importance of Genomics

* Detects **genetic diversity and population structure**, providing insights into evolutionary processes.
* Supports accurate **species identification and phylogenetic reconstruction**.
* Reveals **adaptation mechanisms** that allow organisms to survive in changing environments.
* Monitors **human impacts on ecosystems**, including pollution, climate change, and habitat degradation.
* Enhances understanding of **microbial and macro-organism biodiversity** across different ecosystems.

---

### 3. Key Applications

* **Species identification and phylogenetics**

  * Genome-wide markers improve accuracy in reconstructing evolutionary relationships.

* **Conservation genomics**

  * Identifies inbreeding levels, population bottlenecks, and adaptive variants that influence species survival.

* **Bioprospecting and drug discovery**

  * Genome mining enables the discovery of genes responsible for producing bioactive compounds and enzymes.

* **Neodomestication**

  * Genome editing technologies allow domestication of wild species with desirable traits while maintaining genetic diversity.

* **De-extinction research**

  * Ancient DNA sequencing provides insights into extinct species and evolutionary history.

---

### 4. Sequencing Technologies (Timeline Overview)

* **Sanger sequencing**

  * Early sequencing method with high accuracy but low throughput.

* **Next-Generation Sequencing (NGS)**

  * Platforms such as Illumina provide high-throughput sequencing with massive parallelization.

* **Third-generation sequencing**

  * Technologies such as **PacBio and Oxford Nanopore** generate long reads capable of resolving structural variants and repetitive genomic regions.

Long-read technologies significantly improve **genome assembly quality and structural variant detection**.

---

### 5. Designing a Sequencing Experiment

* **Sample Selection**

  * Determined by research objectives, genome size, heterozygosity, and population diversity.

* **Collection & Preservation**

  * Samples must be collected and preserved properly to prevent DNA degradation.
  * Ethical regulations and biodiversity agreements such as the **Nagoya Protocol** must be respected.

* **DNA Extraction & QC**

  * Extraction of **high-molecular-weight DNA** is essential for high-quality sequencing.
  * Quality control tools include Nanodrop, Qubit, and Bioanalyzer.

* **Library Preparation**

  * DNA fragmentation followed by **adapter ligation** prepares sequences for sequencing platforms.
  * PCR-free protocols reduce amplification bias.

* **Sequencing Strategy**

  * Selection of appropriate sequencing platforms and sequencing depth based on genome complexity.
  * Hybrid sequencing approaches often combine **short and long reads**.

* **Bioinformatics Pipeline**

  * Downstream analysis typically includes preprocessing, genome assembly, repeat masking, gene prediction, and functional annotation.

---

### 6. Challenges

* High sequencing and analysis costs.
* Large computational and storage requirements.
* Ethical and legal considerations related to genetic resources and biodiversity protection.

---

### 7. Key Takeaways

* Full understanding of **genomics workflows from sampling to computational analysis**.
* Ability to evaluate **sequencing technologies for different research objectives**.
* Awareness of **ethical frameworks governing biodiversity genomics research**.
* Understanding of how genomic technologies contribute to **modern biodiversity research and conservation efforts**.

---

## Hackathon: Group Division and Project Assignment

**Activity:** All Participants
**Type:** Collaborative

### 1. Organization

* Participants were divided into **groups of 3–5 members** to encourage collaboration and distributed problem-solving.
* Each group was assigned a project related to:

  * Marine metagenomics datasets.
  * Taxonomic profiling of microbial communities.
  * Visualization of biodiversity patterns.
  * Construction of reproducible **Nextflow pipelines**.

---

### 2. Goals

* Develop a **complete bioinformatics workflow**, including:

  * Data preprocessing and quality control.
  * Taxonomic extraction from sequencing datasets.
  * Visualization of microbial community composition.

* Investigate **biological patterns in marine biodiversity datasets**.

* Implement reproducible workflows that can be reused or expanded in future analyses.

---

### 3. Key Takeaways

* Collaborative work improves **problem-solving efficiency and analytical creativity**.
* Workflow planning is essential for **efficient bioinformatics pipeline development**.
* Reproducibility is a critical principle in modern computational biology.

---

## Hackathon: Working on Group Projects

**Activity:** Hands-on
**Type:** Collaborative

### 1. Implementation

Participants began implementing their projects by applying techniques learned during the training sessions.

Activities included:

* Executing **Galaxy workflows for microbial community analysis**.
* Performing **OTU clustering and taxonomic classification**.
* Generating visualizations representing microbial community composition.


---

### 2. Mentorship

Shaimaa and Assem provided technical guidance throughout the session, assisting participants with:

* Workflow configuration and parameter selection.
* Troubleshooting computational and pipeline errors.
* Interpreting biological significance of taxonomic outputs.

---

### 3. Key Takeaways

* Reinforced understanding of **metagenomic data analysis pipelines**.
* Improved practical skills in **taxonomic classification and visualization**.
* Experience in collaborative problem-solving and **team-based bioinformatics research**.

---

## Day 2 Summary & Skills Acquired

### Summary

* Learned advanced techniques for **taxonomic extraction and visualization of microbial communities**.
* Explored the role of **genomics technologies in biodiversity research**.
* Began collaborative **hackathon projects using real-world datasets** and bioinformatics workflows.

---

### Skills Acquired

* Extraction and classification of **taxonomic information from amplicon sequencing datasets**.
* Visualization of **microbial community composition and biodiversity patterns**.
* Understanding the integration of **omics technologies in biodiversity genomics**.
* Experience working with **Galaxy workflows and collaborative bioinformatics pipelines**.
* Practical exposure to **team-based data analysis using real biological datasets**.
