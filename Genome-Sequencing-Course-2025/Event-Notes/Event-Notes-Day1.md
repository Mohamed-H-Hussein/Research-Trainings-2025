# DAY I: Thursday 20.03.2025 — Event Notes

## Opening & Course Instructions — SequAna Genomics Course

**Lecturer:** Prof. Christian Voolstra — SequAna Director  
**Type:** Lecture

### Key Notes

* **SequAna**: Sequencing Analysis Core Facility at the University of Konstanz, providing **wet-lab and computational support**, with instruments for DNA/RNA processing, library prep, sequencing, QC, and a high-performance computing (HPC) system for data analysis.
* Emphasis on **responsible sequencing**: reproducibility, metadata completeness, and transparent reporting. Sequencing as a **design problem**, requiring planning beyond technical execution.
* **Pre-course preparation**: review basic genomics and sequencing concepts, CLI and software installation, ensure access to a compatible computational environment, and be ready for both wet-lab and computational exercises.
* Early familiarization with tools and concepts ensures participants can **fully engage with the hands-on workflow**: experimental design → sequencing → QC → assembly → annotation → data submission.

---

## Session: Design of a Genome Sequencing Experiment

**Lecturer:** Dr. Abdoallah Sharaf — Senior Bioinformatician, SequAna  
**Type:** Lecture

### **1. Biodiversity Genomics — Core Idea**

* Integrates genomics with ecology/evolution to study biological variation at genetic, species, and ecosystem levels.
* Enables high-resolution species identification, diversity assessment, and evolutionary analysis.

### **2. Importance of Genomics in Biodiversity**

* Detects genetic diversity & population structure.
* Supports species identification & phylogenomics.
* Reveals adaptation mechanisms.
* Monitors human impact on ecosystems.

### 3. Key Applications

* **Species ID & Phylogenetics** using genome-wide markers.
* **Conservation genomics** (inbreeding, bottlenecks, adaptive variants).
* **Bioprospecting & drug discovery** via genome mining.
* **Neodomestication** of wild species using genome editing.
* **De-extinction** (e.g., mammoth models using ancient DNA).

### 4. Sequencing Technologies (Timeline Overview)

* **Sanger → NGS (Illumina) → Third-gen (PacBio, ONT)**
* Long reads resolve structural variants and improve assemblies.

### 5. Designing a Sequencing Experiment

**A. Sample Selection:** based on research question, genome size, heterozygosity.  
**B. Collection & Preservation:** avoid degradation; follow ethical regulations (Nagoya).  
**C. DNA Extraction & QC:** high-molecular-weight DNA preferred; QC using Nanodrop, Qubit, Bioanalyzer.  
**D. Library Preparation:** fragmentation → adapter ligation → QC; PCR-free reduces bias.  
**E. Sequencing Strategy:** platform choice & depth; hybrid assemblies often optimal.  
**F. Bioinformatics Pipeline:** preprocessing → assembly → repeat masking → gene prediction → annotation.

### 6. Main Challenges

* Cost, computational requirements, and ethical constraints.

### 7. key Takeaways

* Gained understanding of full workflow from sampling to analysis.
* Can evaluate sequencing platforms for different genome types.
* Awareness of ethical frameworks in biodiversity genomics.

---

## Session: Nanopore Sequencing Technologies

**Lecturer:** Dr. Philipp Becker — Oxford Nanopore Technologies  
**Type:** Lecture

### 1. Overview

* Single-molecule, real-time sequencing using biological nanopores.
* Electrical signals converted into sequences via basecalling.
* **No amplification required**, preserving epigenetic modifications.

### 2. Advantages

* Ultra-long reads resolve repeats, structural variants, telomeres, full-length transcripts.
* Portable devices (MinION) enable **field genomics**.
* Real-time run monitoring allows flexible experimental control.
* Scalable throughput.

### 3. Limitations

* Higher raw error rates vs short-read platforms.
* Requires high-molecular-weight DNA.
* Flow cells sensitive to contaminants.

### 4. Library Types

* **Ligation-based kits** — high accuracy, ultra-long reads.  
* **Rapid kits** — fast prep, moderate accuracy.  
* **PCR-based kits** — low-input, may lose epigenetic info.  
* **Direct RNA-seq** — sequences native RNA, detects modifications.  

### 5. Applications in RNA-seq

* Full-length isoform resolution.  
* Detects splice variants missed by short-read platforms.  
* Isoform quantification in cancer, neurobiology, single-cell studies.  

### 6. Long vs Short Reads

* Long reads: assembly of complex regions, structural variants, transcript isoforms.  
* Short reads: high base accuracy, limited in repeats/full-length transcripts.  
* Nanopore complements short-read platforms for comprehensive analyses.

### 7. Key Takeaways

* Flexible, informative for long-read DNA/RNA studies.  
* Preserves epigenetic information.  
* Understanding strengths/limitations critical for design.

---

## Session: Library Preparation Strategies & Sequencing

**Lecturer:** Ms. Anna Fiesinger — Voolstra Lab, KAUST  
**Type:** Practical

### 1. Overview

* Hands-on session on **library prep for Oxford Nanopore sequencing**, focusing on DNA integrity, QC, and handling.

### 2. DNA Handling & Integrity

* Avoid vortexing/excessive pipetting.  
* Use wide-bore tips to minimize shearing.  
* Maintain high-molecular-weight DNA.

### 3. Quality Control Workflow

* **Qubit:** DNA concentration.  
* **Nanodrop:** Purity (A260/280, A260/230).  
* **TapeStation/PFGE:** Fragment size distribution.

### 4. Library Preparation Considerations

* Choose library type based on DNA quantity/quality.  
* Ligation-based for high accuracy/long reads; rapid kits for speed.

### 5. Common Technical Issues

* Short reads from degraded DNA.  
* Poor pore occupancy due to contaminants.  
* Under/overloading flow cells reduces yield.

### 6. Key Takeaways

* Proper sample handling is **critical**.  
* Library prep impacts read length, accuracy, and pore utilization.  
* QC + appropriate strategies → **high-quality long-read data**.

---

## Session: ENA Standards & Submission

**Lecturer:** Ms. Maira Ihsan — User Support Bioinformatician, EMBL-EBI (UK)    
**Type:** Lecture & Practical Exercises

---

### Part 1: Lecture

1. **Introduction to ENA**

   * ENA (European Nucleotide Archive) is a global repository for nucleotide sequence data.
   * Part of the **INSDC** (International Nucleotide Sequence Database Collaboration) and recognized as an **ELIXIR Core Data Resource**.
   * Provides **open access** to support reproducibility, reuse, publication, and long-term archival.

2. **ENA Data Structure**

   * Handles **large volumes of data** from diverse taxa and sequencing technologies.
   * Uses a **standardized metadata model** for consistency and interoperability.
   * Metadata provides **essential context** for comparison, interpretation, and reuse.

3. **ENA Metadata Model**

   * **Study:** overall project or research context.
   * **Sample:** biological material (organism, collection details, identifiers).
   * **Experiment:** lab procedures, library info, sequencing platform.
   * **Run:** raw sequencing data (FASTQ).
   * **Assembly / Results:** annotated assemblies or processed outputs linked to runs.

4. **Data Submission Routes**

   * **Interactive Submission:** web forms; small-scale.
   * **Programmatic Submission:** XML/JSON via scripts/API.
   * **Webin-CLI:** automated bulk submission with pre-validation.

5. **ENA Submission Tools**

   * **Webin Portal / Webin-CLI:** manage studies, samples, reads, assemblies.
   * Specialized tools for pathogen data and annotations.
   * Structured submission of metadata, reads, assemblies, annotations.

6. **Data Retrieval & Download**

   * **Text Search / Advanced Search / Rulespace** (save/share queries).
   * **Python scripts / ENA Browser Tools / ENA Portal API (REST)**.
   * FTP and Aspera for large-scale downloads.

7. **Key Takeaways**

   * Structured, globally accessible nucleotide archive.
   * Metadata ensures reproducibility, integration, cross-study comparison.
   * Supports both interactive and programmatic workflows.

---

### Part 2: Practical Exercises

1. **Overview**

* Submit genomic data to ENA using **Interactive**, **Programmatic**, and **Webin-CLI** routes.
* Scenario: Plant species sequenced with **paired-end Illumina**, followed by assembly and annotation.

2. **Exercise A – Register a Study**

* Use **Interactive Submission**.
* Steps:

  * Provide a short, clear study name.
  * Set **release date**.
  * Add **title** and **abstract**.
* Record **study accession**.

3. **Exercise B – Register a Sample**

* Use checklist for sample registration.
* Steps:

  * Provide **unique sample alias**.
  * Fill in **title**, **description**, **taxonomy**, **collection date**, **location**.
  * Upload metadata file; note **sample accession**.

4. **Exercise C – Submit Raw Reads (Webin-CLI)**

* Prepare FASTQ files linked via **manifest file**.
* Include **library type**, sequencing metadata.
* Validate submission; upload data.
* Record **experiment/run accessions**.

5. **Exercise D – Submit Annotated Assembly (Webin-CLI)**

* Prepare annotated genome.
* Link via **assembly manifest** to study, sample, run.
* Include **assembly name** and **software used**.
* Validate and submit; record **assembly accession**.

6. **Key Learnings**

* Workflow: **Study → Sample → Reads → Assembly**.
* Differences: Interactive (user-friendly), Webin-CLI (bulk, pre-validation).
* Metadata & manifests critical for reproducibility.
* Validation ensures accurate public release.
* Hands-on exposure links experimental data to global repositories; reinforces **best practices**

---

## DAY I Summary & Skills Acquired

### Summary

* Gained an overview of **SequAna facility**, its wet-lab and computational capabilities, and the full genome sequencing workflow.  
* Learned the **principles of designing a genome sequencing experiment**, from sample selection to bioinformatics analysis.  
* Understood the **importance of responsible sequencing**: reproducibility, metadata completeness, and transparent reporting.  
* Explored **Nanopore sequencing technology** and its applications in DNA/RNA sequencing, long-read assembly, and transcriptomics.  
* Practiced **library preparation strategies**, DNA QC, and proper sample handling for high-quality sequencing.  
* Introduced to **ENA standards and submission workflow**, linking experimental data to global genomic repositories.

### Skills Acquired

* Strategic planning of genome sequencing experiments with ethical and technical considerations.  
* Familiarity with **long-read sequencing technologies** and library preparation methods.  
* Knowledge of **data QC practices** for high-molecular-weight DNA and sequencing libraries.  
* Understanding of **ENA submission protocols** and metadata management for reproducible research.  
* Enhanced ability to integrate **wet-lab and computational genomics workflows** in practical projects.  
* Preparedness for **bioinformatics pipeline execution** and hands-on genome assembly exercises.
