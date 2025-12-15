
# DAY IV: Tuesday 25.03.2025 — Event Notes

---

## Session: Eukaryotic Genome Annotation

**Lecturer:** Dr. Swati Sinha — Senior Bioinformatician, Ensembl Genome Annotation Project, EMBL-EBI, UK   
**Type:** Lecture

---


### 1. Introduction to Ensembl

* **Ensembl Project Goals:**

  1. Provide a **comprehensive source of stable genome annotations**.
  2. Enable **genomic interpretation** for diverse research applications.
  3. Support researcher-driven analyses via **FTP, REST/Perl API, MySQL dumps, BioMart**.

* **Ensembl Resources & Training:**

  * Training site: [training.ensembl.org](https://training.ensembl.org/)
  * Workshops & hosting details: [Ensembl hosting](https://training.ensembl.org/hosting)
---

### 2. Genome Annotation Overview

* **Definition:** Identifying and labeling genomic features to understand genome structure and function.

* **Annotation Types:**

  1. **Coordinate-Based Annotation:** Defines physical genomic locations of repeats, genes, transcripts, exons, variants, and regulatory regions.
  2. **Knowledge-Based Annotation:** Assigns biological meaning, including gene function, variant effect, and repeat classification.
  3. **Context-Based Annotation:** Uses comparative genomics to study evolutionary relationships (orthology, paralogy, synteny).

---

### 3. Approaches for Genome Annotation

| Method                      | Pros                                                              | Cons                                                          |
| --------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------- |
| Ab-initio Prediction        | No prior knowledge required; works for novel genomes              | High false positives; struggles with complex genes & splicing |
| Protein-to-Genome Alignment | High accuracy for conserved genes; uses existing protein data     | Misses novel genes; poor for divergent species                |
| Projection & Liftover       | Fast for well-annotated genomes; good for closely related species | Limited to known annotations; cannot detect novel genes       |
| Transcriptomic Annotation   | Accurately identifies expressed genes; captures UTRs & isoforms   | Misses low-expression genes; requires high-quality RNA-seq    |

---

### 4. Ensembl Annotation Pipeline

1. **Genome Preparation:** Assembly loading, QC, repeat masking, simple feature annotation.
2. **Long Read Pipeline:** Align and correct long reads; collapse redundant models.
3. **RNA-seq Pipeline:** Map short reads; locate introns and create transcript models.
4. **Protein Pipeline:** Align known proteins; build transcript models.
5. **Projection Pipeline:** Pairwise alignment with reference genome; project coding exons.
6. **Model Finalization:** Filter and prioritize models; create final gene set.

---

### 5. Repeat Annotation

* **Types of Repeats:**

  * Low Complexity Regions (e.g., poly-purine/pyrimidine stretches, extreme AT/GC)
  * Transposable Elements:

    * Class I: Retrotransposons (LINEs, SINEs, LTRs)
    * Class II: DNA transposons (TIRs, MITEs, Helitrons)
  * Satellite DNA: Short & long tandem repeats

* **Importance:**

  * Prevent spurious alignments → reduces false gene annotations
  * Optimizes computational resources → improves downstream efficiency
  * Reveals evolutionary insights → genome plasticity & regulatory evolution

* **Challenges:**

  * Computationally expensive for large genomes
  * Complex repeat libraries may include gene families
  * Many tools exist, but only few are widely supported

---

### 6. Gene Annotation Approaches

1. **Ab Initio Annotation:** Predicts genes using genomic sequences (e.g., HMMs).
2. **Homology-Based Annotation:** Maps or lifts annotations from related species.
3. **Transcriptomic Annotation:** Uses RNA-seq data (short or long reads).
4. **Hybrid Annotation:** Combines ab initio, homology, and transcriptomic data for improved accuracy.

---

### 7. Transcriptomic-Based Gene Annotation

* **Short Reads (Illumina):**

  * Strengths: high accuracy, cost-effective, high coverage
  * Weaknesses: difficult isoform reconstruction, struggles with repeats/GC-rich regions, challenging UTR calling

* **Long Reads (PacBio, ONT, Iso-Seq):**

  * Strengths: full-length transcripts, resolves complex isoforms, structural variants
  * Weaknesses: higher error rates, more expensive, requires high DNA input

* **Minimal vs. Ideal Input Scenarios:**

  * **Minimal:** Short reads from key tissues (brain, gonads, lung/gill, embryo) with ≥100M reads per tissue.
  * **Ideal:** Short + long reads from multiple tissues & developmental stages; high-depth sequencing and cleaned reads preferred.

---

### 8. Hybrid Gene Annotation Benefits

* Enhanced accuracy → reduces false positives
* Comprehensive gene discovery → captures conserved and novel genes
* Better isoform & UTR prediction
* Improved functional annotation → combines homology and expression evidence
* Robust annotation even in low-quality genomes

---

### 9. Assessing Annotation Quality

* **Key Metrics:**

  * Orthology analysis → one-to-one orthologs or reciprocal best BLAST hits
  * Gene structure metrics → long genes, split genes, orphan gene counts
  * Exon & CDS statistics → coding exons per gene, genomic span, CDS length
  * Completeness metrics → BUSCO/OMArk
  * Functional annotation coverage → % of genes with GO, Pfam, or known function

* **Tools:**

  * **BUSCO:** Quantitative completeness based on single-copy orthologs
  * **OMArk:** Proteome completeness and detection of erroneous gene models; checks for contamination

---

### Overall Lecture Takeaways

* Repeat annotation is **critical first step** to prevent false alignments.
* Transcriptomic data is **key for accurate gene prediction**.
* Quality of annotation depends heavily on **input data depth and accuracy**.
* High-quality annotations are essential for **functional studies and comparative genomics**.
* Hybrid approaches combining multiple methods provide **robust and comprehensive annotations**.

---

### Skills Acquired

* Understanding of **Ensembl project goals and resources**.
* Familiarity with **coordinate-, knowledge-, and context-based annotation**.
* Knowledge of **repeat types and their role in genome annotation**.
* Ability to explain **gene annotation approaches** (ab initio, homology, transcriptomic, hybrid).
* Awareness of **short- vs long-read transcriptomics for gene annotation**.
* Understanding **hybrid annotation advantages** and strategies.
* Skills in evaluating **annotation quality using metrics like BUSCO and OMArk**.
* Ability to connect **annotation quality to downstream functional genomics and comparative studies**.


---

## Session: Identification and Masking of DNA Repeats

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician    
**Type:** Practical

---

### 1. Practical Overview

This session focused on **identifying and masking repetitive DNA elements** in the *Aiptasia* genome. Participants learned the importance of repeat annotation for improving gene prediction accuracy, avoiding false alignments, and generating species-specific repeat databases.

Key methodological principles included **de novo repeat discovery, integration of multiple tools, and masking prior to downstream annotation**.

---

### 2. Repeat Identification Strategy

**Pre-processing of Genome**

* Contigs were cleaned and sorted to prepare for annotation.
* Emphasis on pre-processing to ensure high-quality input for repeat identification tools.

**Tools for Repeat Discovery**

* **EDTA (Extensive de novo TE Annotator)**

  * Focused on discovering transposable elements (Class I and II).
  * Provides a detailed repeat classification and helps generate a species-specific repeat library.

* **RepeatModeler**

  * Widely used tool for de novo repeat discovery, though less informative for non-model organisms.
  * Used in combination with EDTA for comprehensive identification.

**Integration of Results**

* Repeats identified from both tools were merged.
* Duplicates were removed to produce a consolidated repeat database for *Aiptasia* (Aip_RE_DB.faa).

---

### 3. Repeat Masking

* **RepeatMasker** was used to mask repeats in the genome using the species-specific database.
* Masking improves **gene prediction accuracy** by preventing spurious alignments and reduces downstream computational load.
* Participants were encouraged to **analyze repeat distribution by type** and calculate genome-wide repeat percentages.

---

### 4. Practical Takeaways

* Understanding **why repeat annotation is a critical first step** before gene prediction.
* Awareness of different repeat classes: low-complexity regions, transposable elements (LINEs, SINEs, LTRs, DNA transposons), and satellite DNA.
* Practical insights into **tool strengths and limitations**, including runtime considerations.
* Importance of generating a **species-specific repeat library** for accurate masking.

---

## Session: Gene Prediction and Functional Annotation Using Funannotate

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician   
**Type:** Practical

---

### 1. Practical Overview

This session introduced **gene prediction and functional annotation using Funannotate**, emphasizing **multi-evidence integration** from RNA-seq, proteins, and transcriptomes. The session highlighted strategies for **producing high-quality, submission-ready genome annotations**.

---

### 2. Evidence Preparation

**RNA-seq Evidence**

* Short-read datasets from [Jacobovitz et al., 2021](https://pubmed.ncbi.nlm.nih.gov/33927382/) , were used to generate mapping (BAM files) and expression evidence.
* StringTie2 was applied to reconstruct transcript models.
* Transcript sequences were extracted for functional annotation.

**Protein Evidence**

* Curated proteins were collected from UniProt or OrthoDB.
* Used for homology-based gene prediction and functional annotation.

**tRNA Prediction**

* tRNAscan-SE identified tRNA genes, which were filtered for high-confidence predictions.

**Training Gene Predictors**

* Augustus was trained using genome-guided RNA-seq assemblies to improve prediction accuracy.
* Emphasis on **merging multiple RNA-seq datasets** to provide a comprehensive training set.

---

### 3. Gene Prediction Workflow

* Funannotate combined **repeat-masked genome, RNA-seq, protein, and transcript evidence**.
* Outputs included a **predicted gene set with coding sequences, UTRs, and isoforms**.
* Post-processing updated gene models and integrated UTR annotation.

**Quality Assessment**

* GFF3 inspection and gene counts were used to evaluate prediction consistency.
* **BUSCO** scores were computed to assess completeness and annotation quality relative to orthologous gene sets.

---

### 4. Functional Annotation

* Phobius predicted transmembrane regions and signal peptides.
* InterProScan identified protein domains and motifs.
* EggNOG-mapper assigned functional categories.
* Funannotate combined all annotations to generate **fully annotated, functionally rich gene models**.

---

### 5. Practical Takeaways

* **High-quality annotation depends on multiple complementary evidence sources**.
* Funannotate simplifies submission-ready genome annotation but requires careful evidence preparation.
* Understanding the **strengths and limitations of each input type** improves gene model accuracy.
* Alternative approaches (e.g., BRAKER or Gaius-Augustus tools) may be preferred for difficult genomes.
* Participants gained a practical framework for integrating repeat masking, gene prediction, and functional annotation into a reproducible workflow.


---

## Session: Characterization and Annotation of DNA Repeats

**Lecturers:**
Dr. Pedro Heringer & Dr. Christopher Benson — Postdoctoral Fellows, Ou’s Lab, Ohio State University, USA   
**Type:** Lecture

---

### 1. Lecture Overview

This lecture provided a **conceptual introduction to DNA repeat characterization and annotation**, focusing on the biological significance of repetitive elements and their impact on **eukaryotic genome analysis and annotation pipelines**.

The session established the **theoretical foundation** required for the subsequent practical sessions on repeat identification and masking.

---

### 2. Biological Nature of DNA Repeats

The lecture reviewed major classes of repetitive elements commonly found in eukaryotic genomes:

* **Low-complexity regions**
* **Tandem repeats and satellite DNA**
* **Transposable elements**, including:

  * Class I retrotransposons (LINEs, SINEs, LTRs)
  * Class II DNA transposons

Emphasis was placed on how repeats contribute to **genome size variation, structural plasticity, and evolutionary dynamics**.

---

### 3. Why Repeat Annotation Matters

Key motivations for repeat characterization were discussed:

* Preventing **false-positive gene predictions**
* Avoiding **spurious sequence alignments**
* Improving **assembly interpretation and downstream annotation**
* Supporting accurate **comparative and evolutionary genomics**

The lecture highlighted repeat annotation as a **mandatory preprocessing step** before gene prediction in eukaryotic genomes.

---

### 4. Challenges in Repeat Annotation

Participants were introduced to common challenges, including:

* High sequence diversity of transposable elements
* Lineage-specific repeats in non-model organisms
* Distinguishing repeats from genuine gene families
* Computational cost for large or repeat-rich genomes

These challenges motivated the need for **specialized and integrative annotation strategies**.

---

### 5. Conceptual Annotation Strategies

Without focusing on implementation details, the lecture outlined general strategies used in repeat annotation:

* **De novo repeat discovery**
* Use of **species-specific repeat libraries**
* Integration of multiple evidence sources
* Genome masking prior to structural gene annotation

This conceptual framework prepared participants for the hands-on repeat annotation workflows introduced later in the day.

---

### Overall Lecture Takeaways

* DNA repeats are a **major structural component** of eukaryotic genomes.
* Accurate repeat annotation is essential for **reliable genome annotation**.
* Repeat characterization combines **biological understanding** with computational modeling.
* Conceptual knowledge of repeats is critical before applying practical tools.
* The lecture provided the **theoretical backbone** for downstream repeat masking and gene prediction sessions.

---

### Skills Acquired

* Understanding the **biological roles of DNA repeats**.
* Ability to explain **why repeat annotation precedes gene prediction**.
* Awareness of **conceptual strategies and challenges** in repeat annotation.
* Readiness to interpret results from practical repeat identification pipelines.
 

---
## Session: Genome Assembly Assessment Using Gfastar Toolkit

**Lecturer:** Dr. Giulio Formenti — Lead Bioinformatician, Vertebrate Genome Laboratory, Rockefeller University (USA)   
**Type:** Lecture & Practical 

---

### Part 1: Lecture

1. **Why Genome Assembly Assessment Matters**

   * Genome assemblies must be **quantitatively and structurally evaluated** before downstream analyses.
   * Assembly quality impacts:

     * Gene prediction accuracy
     * Structural variant detection
     * Submission to public databases
   * Traditional metrics alone (e.g. N50) are **insufficient without graph-aware context**.

2. **Finished and T2T Genomes**

   * Introduction to **telomere-to-telomere (T2T)** assemblies.
   * Emphasis on **assembly graphs** rather than linear FASTA alone.
   * Genome assessment increasingly relies on **graph representations (GFA)**.

3. **Introduction to the Gfastar Toolkit**

   * **Gfastar** is a suite of tools designed to assist genome assembly evaluation and manipulation.
   * Developed to work seamlessly across:

     * FASTA
     * FASTQ
     * GFA1 / GFA2 formats
   * Supports both **summary statistics** and **graph-level operations**.

4. **Learning Objectives of the Session**

   By the end of the session, participants were expected to:

   * Compute genome assembly statistics using **gfastats**
   * Manipulate assembly graphs and formats
   * Evaluate sequencing reads using **rdeval**
   * Estimate assembly quality values (QVs) using **kreeq**

5. **Prerequisites and Scope Awareness**

   * Solid understanding of:

     * Reads, contigs, scaffolds
     * Assembly workflows
   * Basic command-line literacy
   * Emphasis on **knowing when a tool is appropriate**, not just how to run it

---

### Part 2: practical

1. **Genome Assembly Statistics — gfastats**

   * **gfastats** was used to compute comprehensive assembly statistics.
   * Learned to:

     * Generate standard and extended summary metrics
     * Produce tabular reports for downstream interpretation
     * Report statistics at different biological levels (sequence, contig, scaffold, genome)
   * Key insight:

     * Assembly statistics are **context-dependent**, not absolute indicators of quality.

2. **Assembly Graph Manipulation**

   * gfastats enables conversion between:

     * FASTA
     * GFA1
     * GFA2
   * Participants explored:

     * Sorting assemblies by size
     * Extracting subsets of sequences
     * Representing assemblies as graphs
   * Reinforced understanding of **assembly structure beyond linear sequences**.

3. **Graph-Aware Operations**

   * Introduction to:

     * Terminal overlap discovery
     * Path discovery within graphs
     * Homopolymer compression
   * Highlighted how graph manipulation supports:

     * Finishing assemblies
     * Identifying misassemblies
     * Understanding complex genomic regions

4. **Read Evaluation — rdeval**

   * **rdeval** was used to assess sequencing read datasets.
   * Learned to evaluate:

     * Read length distributions
     * Read quality profiles
     * Per-read statistics
   * Introduced filtering strategies based on:

     * Length
     * Quality
     * Metadata
   * Key takeaway:

     * Input read quality directly influences assembly confidence.

5. **Assembly Validation and QV Estimation — kreeq**

   * **kreeq** was introduced for k-mer-based validation.
   * Participants learned:

     * How QVs are computed using read evidence
     * How read databases can be reused across analyses
     * How combining read datasets improves validation robustness
   * Reinforced concept of **evidence-based assembly validation**.

6. **Integrated Assembly Evaluation Strategy**

   * The session demonstrated how:

     * gfastats evaluates structure
     * rdeval evaluates read data
     * kreeq validates assemblies quantitatively
   * Emphasis on **tool complementarity**, not tool replacement.

---

### Overall Practical Takeaways

* Gained practical understanding of **assembly evaluation beyond N50-centric metrics**.
* Learned to assess genome assemblies using:

  * **gfastats** for structural and statistical summaries
  * **rdeval** for read quality and distribution analysis
  * **kreeq** for quantitative assembly validation (QV estimation)
* Developed awareness of **assembly graphs as first-class analytical objects**.
* Strengthened ability to:

  * Diagnose assembly weaknesses
  * Interpret quality metrics in biological context
* Improved readiness to work with **high-quality, T2T-oriented genome assemblies**.
* Acquired a reproducible, tool-agnostic framework for **genome assembly assessment** aligned with international best practices.


---

## Session: Searching and Downloading Genome Data Using NCBI Datasets

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician   
**Type:** Practical

---

### 1. Practical Overview

This session focused on **searching, filtering, and downloading genome assemblies and metadata** using **NCBI Datasets**, a modern, unified platform designed for efficient access to large-scale genomic data.

Participants learned how NCBI Datasets serves as a **one-stop resource** for genomic sequences, annotations, and associated metadata, with particular emphasis on its **command-line interface (CLI)** for scalable and reproducible data retrieval.

---

### 2. Genome Metadata Retrieval

The session introduced strategies for retrieving **structured genome metadata** for a target organism (*Exaiptasia diaphana*), enabling informed selection of assemblies prior to downstream analyses.

Key concepts included:

* Accessing **assembly-level metadata** rather than raw sequences alone.
* Transforming machine-readable outputs into **human-readable tabular formats**.
* Understanding how metadata fields (accession, annotation status, release date) guide genome selection.

This step highlighted the importance of **metadata-driven decision making** in genomics workflows.

---

### 3. Filtering Genome Assemblies

Participants explored how genome metadata can be **filtered based on biologically and analytically relevant criteria**, including:

* **Reference genomes** only.
* **Annotated assemblies** suitable for downstream gene prediction or comparative analysis.
* Assemblies with a specific **assembly level** (e.g., complete genomes).
* Genomes released after a defined **time threshold**, ensuring use of up-to-date resources.

This demonstrated how NCBI Datasets supports **precise dataset curation**, avoiding unnecessary downloads and improving reproducibility.

---

### 4. Downloading Genome Data Packages

The session covered how curated genome selections can be packaged and downloaded efficiently using NCBI Datasets.

Key points included:

* Downloading **complete genome data packages** for a target taxon.
* Customizing downloads to include specific data types, such as **protein sequences**.
* Understanding the structure of NCBI Datasets packages and how they integrate sequences with metadata.

This reinforced the concept of **selective data retrieval** tailored to the needs of downstream analyses.

---

### 5. Practical Takeaways

* Gained practical understanding of **NCBI Datasets as a centralized genomic data resource**.
* Learned how genome metadata informs **assembly selection and quality control**.
* Developed skills in **filtering genome assemblies** based on reference status, annotation, assembly level, and release date.
* Understood the advantages of **CLI-based data retrieval** for handling large genomic datasets.
* Acquired a reproducible framework for **genome discovery and data acquisition** prior to annotation or comparative genomics workflows.

---

## DAY IV Summary & Skills Acquired

### Summary

* Developed a **comprehensive understanding of eukaryotic genome annotation frameworks**, with emphasis on Ensembl standards and large-scale reference annotation projects.
* Gained conceptual clarity on **coordinate-, knowledge-, and context-based genome annotation**, and how they integrate to support functional and comparative genomics.
* Understood the **central role of repeat annotation** as a prerequisite for accurate gene prediction and downstream analyses.
* Learned biological and computational principles underlying **DNA repeat characterization**, including transposable element diversity and lineage-specific repeats.
* Applied **de novo repeat identification and masking strategies** using integrative, species-specific approaches to reduce false gene predictions.
* Explored **multi-evidence gene prediction workflows**, combining transcriptomic, protein, and ab initio evidence into unified gene models.
* Gained practical insight into **functional annotation pipelines**, linking predicted genes to domains, pathways, and biological functions.
* Learned how **annotation quality is evaluated**, including completeness, structural integrity, and functional coverage.
* Developed an understanding of **assembly-aware genome evaluation**, emphasizing graph-based representations over linear metrics alone.
* Strengthened skills in **genome assembly assessment and validation**, integrating structural statistics, read-based evaluation, and k-mer–based quality estimation.
* Practiced **post-assembly genome curation**, including contamination detection, cobiont identification, and organelle genome reconstruction.
* Learned best practices for **data discovery, access, and reuse** through standardized genomic repositories and metadata-driven search systems.

---

### Skills Acquired

* Ability to **explain eukaryotic genome annotation pipelines** from raw assembly to submission-ready gene sets.
* Understanding of **Ensembl annotation philosophy**, resources, and data access models.
* Knowledge of **repeat biology and classification**, and their impact on genome structure and annotation accuracy.
* Practical awareness of **repeat annotation and masking tools**, including:

  * EDTA
  * RepeatModeler
  * RepeatMasker
* Ability to articulate **gene prediction strategies** (ab initio, homology-based, transcriptomic, hybrid).
* Familiarity with **evidence integration frameworks** for gene prediction and functional annotation (e.g. Funannotate-based workflows).
* Understanding of **functional annotation layers**, including protein domains, signal peptides, and orthology-based functional assignment.
* Skills in **annotation quality assessment** using metrics and tools such as:

  * BUSCO
  * OMArk
* Ability to evaluate genome assemblies using **graph-aware and k-mer–based approaches**, including:

  * gfastats
  * rdeval
  * kreeq
* Competence in **visual genome validation and contamination assessment**, including BlobToolKit-based interpretation.
* Understanding of **organelle genome identification and reconstruction** from long-read assemblies.
* Familiarity with **genome data discovery and retrieval** using standardized platforms such as NCBI Datasets.
* Strong foundation in **curator-level reasoning**, enabling critical decisions in genome annotation, evaluation, and submission workflows.
* Readiness to apply **international best practices** in genome annotation, quality control, and reproducible genomics research.
