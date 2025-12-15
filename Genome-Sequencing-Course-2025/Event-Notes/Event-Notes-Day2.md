# DAY II: Friday 21.03.2025 — Event Notes
---
## Session: Querying Genome Metadata and Sequencing Projects Using GoaT

**Lecturer:** Dr. Cibele G. Sotero-Caio — Genome Data Curator, Tree of Life Genomics, Wellcome Sanger Institute (UK)   
**Type:** Lecture & Practical

---

### Part 1: Lecture

1. **What is GoaT?**

   * **GoaT (Genomes on a Tree)** is a centralized data aggregator for genome-relevant metadata.
   * Helps coordinate global sequencing initiatives, track progress, and reduce duplication.
   * Integrates information from the **Earth BioGenome Project (EBP)** and related networks.
   * Funded via ELIXIR & GenomeHubs infrastructure.

2. **Why GoaT?**

   * Genomic data are **scattered** across many sources.
   * GoaT **aggregates**, **standardizes**, and **infers missing values** using **NCBI taxonomy**.
   * Supports project planning with metadata such as:

     * Genome size
     * Chromosome number
     * Assembly span
     * Assembly level
     * Sequencing status
     * Target lists for sequencing

3. **Types of Data in GoaT**

   * **Direct values**: existing published or submitted metadata.
   * **Estimated values**: inferred using taxonomy (MRCA-based estimates) to fill data gaps.
   * **Done sequencing** vs. **planned / in progress**.
   * Metadata are stored across three main **indexes**:

     * **Taxon**
     * **Assembly**
     * **Sample (BioSample)**

4. **How GoaT Works**

   * Built on a powerful **API** enabling simple and complex metadata queries.
   * Access via:

     * **GoaT Web UI** – visual exploration
     * **API endpoints** – programmatic queries
     * **CLI syntax** – structured search terms
   * Supports **FAIR** principles (Findable, Accessible, Interoperable, Reusable).

5. **Querying Using GoaT Syntax**

   * Common query functions:

     * `tax_name(Chiroptera)`
     * `tax_tree(Chiroptera)`
     * `tax_lineage(Chiroptera)`
   * Search can be refined by rank:

     * `tax_rank(species)`
   * Queries combine terms with **AND**.

6. **Result Types**

   * **Record Pages**:

     * Full metadata for a taxon, sample, or assembly.
   * **Tabular Results**:

     * Lists of taxa, assemblies, or samples matching query criteria.
   * Interactive visual summaries (e.g., total sequenced mammals, chromosome-level references).

7. **GoaT for EBP & Global Projects**

   * Dedicated project pages for DToL, VGP, EBP, and others.
   * Provide:

     * Progress reports
     * Target lists
     * Duplication reports
     * Links to assemblies and metadata
   * Helps researchers identify:

     * What is done
     * What is in progress
     * What remains a target
     * Who to contact for collaboration

8. **Key Takeaways**

   * GoaT centralizes metadata needed for planning and evaluating sequencing projects.
   * Combines direct + inferred metadata for comprehensive genome exploration.
   * Offers flexible search tools (UI, API, CLI).
   * Project pages highlight activity across major global initiatives.

---

### Part 2: Practical

1. **Objective**

   * Learn hands-on how to use GoaT to retrieve taxa, assemblies, and sequencing status information.

2. **Tasks**

   **A — Basic Search**

   * Search for an order (e.g., *Chiroptera*) using:

     * Free-text search
     * GoaT syntax (`tax_name`, `tax_tree`, `tax_lineage`)

   **B — Explore Summaries**

   * Hover/click to view genome size, chromosome number, and assembly descriptors.
   * Adjust rank to species.

   **C — Using Query Builder**

   * Auto-generates syntax such as:
     `tax_tree(Chiroptera) AND tax_rank(species)`
   * Add/remove columns (data fields are independent).

   **D — Searching Assemblies**

   * Query specific assembly IDs (e.g., `GCA_039655065.1`).
   * Switch from Taxon to Assembly index.

   **E — Exploring Project Pages**

   * Navigate EBP / DToL / VGP project pages.
   * Use duplication reports to check overlapping targets.
   * Compare query terms to table criteria.

   **F — Tree Reports**

   * Expand clades (e.g., *Eucoccidiorida*) to view which species have EBP assemblies.

3. **Key Learnings**

   * GoaT allows retrieval of taxa lists, assembly metadata, and sequencing status.
   * Understanding the Taxon vs. Assembly index is essential.
   * Project pages help monitor global progress and avoid redundancy.
   * GoaT is suitable for both simple taxonomy searches and complex metadata-driven queries.

---

## Session : Working on the command line interface (CLI) and using package managers

**Lecturer:** Dr. Abdoallah Sharaf — Senior Bioinformatician, SequAna    
**Type:** Practical / Hands-on

---

### 1. Overview

* Focused on **command line interface (CLI)** usage and local installation of bioinformatics software.
* Emphasis on **Linux-based workflows** and **package management** using **Conda and Mamba**.
* Prepares participants for **bioinformatics pipelines**: data QC, preprocessing, and downstream analysis.

---

### 2. CLI Fundamentals

#### Key Concepts

* **CLI/Bash**: text-based interface to interact with Unix/Linux systems.
* **Unix vs Linux**: Linux is Unix-like and widely used in bioinformatics.
* **Mac OS X terminal** behaves similarly to Linux CLI.

#### Exercises (Code Explained)

1. Explore basic Bash commands: to copy, delete, list, and manage files/folders.
2. Check dataset size (`CL_data`): command displays folder size in human-readable format.
3. Create a symbolic link (symlink): access sequencing files without duplicating them.
4. Build a directory structure: organize project data systematically.

---

### 3. Key Bioinformatics File Formats

* **FASTA** — nucleotide or protein sequences.
* **FASTQ** — sequences plus quality scores.
* **SAM/BAM** — aligned reads in text or binary format.

#### Skills Practiced

* Recognizing and managing different sequence file types.
* Navigating directories with raw and processed sequencing data.

---

### 4. Installing Programs Locally

#### Challenges of System-Level Installation

* Requires **root access**.
* Hard to manage **multiple versions** of the same software.

#### Local Installation Solutions

* Compile from source (requires managing dependencies).
* **Package Managers (Conda/Mamba)**:

  * Create **isolated environments** per project.
  * Install programs **locally** without root.
  * Switch between environments to handle **different program versions**.

---

### 5. Conda & Mamba Practical Exercises (Code Explained)

1. Install **Miniconda** in your home directory.
2. Compare **Conda vs Mamba** performance when installing packages.
3. Create a new environment (`qc_env`) and activate it.
4. Install **FastQC** in the environment.
5. Verify installation by running the program’s help command to check accessibility.

---

### 6. Practical Applications

* Use `qc_env` to **perform quality control on sequencing datasets**.
* Prepare for bioinformatics workflows such as:

  * Data preprocessing
  * Read quality assessment
  * Downstream assembly and annotation

---

### 7. Key Takeaways

* CLI proficiency is **essential for bioinformatics workflows**.
* Symbolic links and structured directories improve **data management**.
* Conda/Mamba allows **flexible, reproducible software installation**.
* Hands-on environment setup ensures smooth execution of **QC and analysis pipelines**.

---

### Skills Acquired

* Familiarity with **Bash CLI commands** and Linux navigation.
* Ability to manage **sequence data files** and formats.
* Install and manage programs using **Conda/Mamba**.
* Set up project-specific **isolated computational environments**.
* Practical readiness for **sequencing data QC and analysis**.

---

## Session : Working with Docker Images

**Lecturer:** Dr. Abdoallah Sharaf — Senior Bioinformatician, SequAna  
**Type:** Practical / Hands-on

---

### 1. Overview

* Introduces **Docker containers** as a solution for dependency management and reproducibility in bioinformatics.
* Demonstrates how containerized tools enable **portable and consistent computational workflows**.

---

### 2. Why Docker in Bioinformatics

* Bioinformatics analyses rely on **multiple software dependencies**, making manual installation error-prone.
* Docker packages software and dependencies into isolated environments, ensuring **reproducible results across systems**.

---

### 3. Docker Containers: Core Concept

* Containers provide isolated execution with their own filesystem and software stack.
* Analyses run independently of the host system while remaining lightweight and portable.

---

### 4. Docker Images and Repositories

* Docker images are pre-configured software environments.
* Images can be shared via public registries such as **Docker Hub** or alternative platforms.
* Enables reuse, versioning, and collaboration.

---

### 5. Using Public Bioinformatics Containers

* Public containers allow immediate access to bioinformatics tools without local installation.
* Tools can be run directly or explored in interactive mode.
* Supports rapid testing and standardized analyses.

---

### 6. Data Access and Interactive Use

* Interactive containers allow manual exploration of tools.
* Linking local directories enables containers to read input data and write outputs efficiently.
* Maintains clean project organization without duplicating data.

---

### 7. Building Custom Docker Images

* Custom images are defined using a **Dockerfile** describing software setup.
* Allows full control over tool versions and dependencies for specific projects.
* Supports long-term reproducibility and pipeline standardization.

---

### 8. Key Takeaways

* Docker improves reproducibility, portability, and software management.
* Public and custom images streamline bioinformatics workflows.
* Containerization is essential for scalable, collaborative research.

---

### Skills Acquired

* Understanding of containerized bioinformatics workflows.
* Ability to use and interpret Docker images in practice.
* Awareness of reproducibility best practices using containers.

---

## Session: Principles of Genome Assembly

**Lecturer:** Prof. Jean-François Flot  
**Position:** Group Leader, Université libre de Bruxelles (ULB), Belgium  
**Type:** Lecture

---

### 1. Scientific Context & Research Background

* The lecture is grounded in research from the **Evolutionary & Ecological Genomics (EEG)** group.
* Research spans **biodiversity, genome evolution, metagenomics, computational genomics**, and **environmental DNA**.
* Taxonomic focus includes **animals, bacteria, fungi**, and diverse ecological systems (marine, caves, extreme environments).
* Genome assembly is presented as a **central tool** connecting sequencing technology, evolutionary biology, and computational methods.

---

### 2. What Does It Mean to Sequence a Genome?

Genome sequencing involves two fundamental steps:

1. **Generating reads**

   * Reads are short or long DNA fragments produced by sequencing machines.
   * Coverage refers to the average number of reads covering each genomic position.
   * Higher coverage reduces the probability of missing bases and sequencing errors.

2. **Assembling reads into a genome**

   * Reconstructing the original DNA sequence from overlapping reads.
   * Two main strategies:

     * **Mapping assembly**: aligns reads to a reference genome.
     * **De novo assembly**: reconstructs the genome without a reference.

---

### 3. Reads and Sequencing Technologies

* Genome assembly depends on the **type and quality of reads**.
* Sequencing technologies evolved through:

  * First generation (Sanger)
  * Second generation (Illumina, short reads)
  * Third generation (PacBio, Nanopore, long reads)
* Advances in sequencing technology and cost reduction enabled **routine production of complete genome assemblies**.

---

### 4. Core Concept: Overlaps and Assembly Graphs

* Assembly is fundamentally based on identifying **overlaps between reads**.
* Because DNA is directional, overlaps are **not symmetric**.
* Reads and their overlaps can be represented as **directed graphs**:

  * Nodes represent reads.
  * Edges represent suffix-to-prefix overlaps.
* From these graphs, longer sequences (**contigs**) can be reconstructed.

---

### 5. Assembly Paradigms: A Historical Progression

#### A. Greedy Assembly

* Goal: find the **shortest common superstring** containing all reads.
* Strategy: repeatedly merge the pair of reads with the best overlap.
* Advantages:

  * Fast and computationally efficient.
  * Historically used for Sanger sequencing.
* Limitations:

  * Prone to **local optima**.
  * Fails in genomes with large or identical repeats.

---

#### B. Overlap–Layout–Consensus (OLC) Assembly

* Uses overlap graphs to model relationships between reads.
* Three main stages:

  1. **Overlap**: detect overlaps between reads.
  2. **Layout**: simplify the graph by removing redundant and transitive edges.
  3. **Consensus**: derive the final sequence.
* Better handles repeats than greedy methods.
* Computationally challenging due to **NP-hard graph problems**.
* Particularly suitable for **long-read sequencing data**.

---

#### C. de Bruijn Graph (DBG) Assembly

* Reads are decomposed into shorter units called **k-mers**.
* Nodes represent (k-1)-mers, edges represent k-mers.
* Genome assembly becomes a problem of finding a **generalized Eulerian path**.
* Advantages:

  * Computationally efficient (polynomial time).
  * Highly scalable for large short-read datasets.
* Widely used in second-generation sequencing assemblers.

---

### 6. Strengths and Limitations of de Bruijn Graphs

* Strengths:

  * Fast and memory-efficient.
  * Ideal for high-coverage short-read data.
* Limitations:

  * Repeats shorter than k are difficult to resolve.
  * Sequencing errors create spurious k-mers.
* Strategies to improve performance:

  * Increasing k to resolve repeats.
  * Using **unitigs** (non-branching paths).
  * Multi-k approaches combining information across k values.

---

### 7. Error Correction in Genome Assembly

* Sequencing errors propagate into assembly graphs.
* Error correction is critical before downstream analyses.
* Key idea:

  * Correct k-mers appear frequently.
  * Erroneous k-mers tend to be rare.
* Methods include:

  * k-mer frequency spectra.
  * Graph-based correction approaches.
* Modern tools integrate error correction directly into assembly pipelines.

---

### 8. Assembly of Noisy Long Reads

* Long-read technologies introduce higher error rates, especially indels.
* New approaches adapt DBG principles to noisy data:

  * Approximate or fuzzy de Bruijn graphs.
  * Homopolymer compression.
* These methods enable efficient long-read assembly while retaining scalability.

---

### 9. Key Takeaways

* Genome assembly is driven by **mathematical and graph-theoretical principles**.
* Assembly paradigms evolved alongside sequencing technologies.
* No single approach is universally optimal:

  * Short reads favor DBG methods.
  * Long reads favor OLC-based approaches.
* Ongoing algorithmic innovation continues to improve accuracy and scalability.
* Genome assembly remains a **dynamic and rapidly evolving research field**.

---

### Skills & Concepts Acquired

* Conceptual understanding of genome assembly strategies.
* Ability to distinguish between greedy, OLC, and DBG approaches.
* Insight into the impact of sequencing technology on algorithm choice.
* Awareness of computational challenges such as repeats and error correction.
* Foundational knowledge relevant for genomics research and bioinformatics pipelines.

---

## DAY II Summary & Skills Acquired

### Summary

* Explored genome metadata aggregation and global sequencing coordination using GoaT.
* Learned how standardized metadata supports project planning and reduces duplication.
* Practiced CLI-based data management and software installation in Linux environments.
* Understood reproducible software management using Conda, Mamba, and Docker.
* Studied genome assembly principles linking sequencing technologies to graph-based algorithms.
* Compared greedy, OLC, and de Bruijn graph approaches and their practical trade-offs.

### Skills Acquired

* Ability to query genome metadata using GoaT (UI, syntax-based queries, project pages).
* Practical CLI proficiency for file management and dataset organization.
* Installation and management of bioinformatics tools using Conda and Mamba.
* Understanding and use of Docker containers for reproducible bioinformatics workflows.
* Conceptual mastery of genome assembly paradigms and error-correction strategies.
* Readiness to integrate sequencing data, metadata, and computational pipelines in genomics research.
