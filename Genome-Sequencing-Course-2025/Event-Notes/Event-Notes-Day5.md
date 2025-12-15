# DAY V: Wednesday 26.03.2025 — Event Notes

---

## Session: BUSCO — From Genomics Quality Control to Gene Prediction & Phylogenomics

**Lecturer:** Dr. Robert M. Waterhouse — Group Leader, SIB Swiss Institute of Bioinformatics, Lausanne, Switzerland    
**Type:** Lecture & Practical

---

### Part 1: Lecture

1. **Why BUSCO Was Developed**

   * BUSCO was developed to address the challenge of **assessing genome quality beyond simple assembly statistics**, particularly during the short-read era.
   * Traditional metrics (e.g. N50) do not evaluate **gene content completeness**.
   * BUSCO introduced a **biologically meaningful framework** based on evolutionarily conserved genes.

2. **Core Concept of BUSCO**

   * BUSCO stands for **Benchmarking Universal Single-Copy Orthologues**.
   * It evaluates genomic data based on the presence of genes that are expected to:

     * Be **conserved across a lineage**
     * Occur as **single copies** in most species
   * Quality is assessed in terms of:

     * Complete
     * Duplicated
     * Fragmented
     * Missing BUSCO genes

3. **Types of Genomic Data Assessed by BUSCO**

   BUSCO can be applied to multiple data types:

   * **Genome assemblies**
   * **Gene annotations**
   * **Protein datasets**
   * **Transcriptomes**

   Each mode is designed to answer **different biological and technical questions**.

4. **BUSCO Lineage Datasets**

   * BUSCO uses **lineage-specific ortholog datasets** derived from **OrthoDB**.
   * Lineages vary in:

     * Taxonomic depth
     * Number of BUSCO genes
   * Choosing the appropriate lineage balances:

     * Sensitivity
     * Biological relevance
     * Computational cost

5. **BUSCO Beyond QC**

   * BUSCO outputs are not only QC metrics.
   * Results can inform:

     * Gene prediction strategies
     * Comparative genomics
     * Phylogenomics
     * Biological interpretation of gene loss or duplication

---

### **Part 2: Practical**

1. **Assessing Genome Assembly Completeness**

   * BUSCO was applied to a **small eukaryotic genome** (*Saccharomyces jurei*) to assess:

     * Gene content completeness
     * Assembly quality from a biological perspective
   * Emphasis on interpreting results rather than execution details.

2. **BUSCO Modes and Gene Prediction**

   * The **genome mode** requires an internal gene prediction step.
   * BUSCO integrates gene predictors (e.g. MetaEuk) to:

     * Predict candidate genes
     * Search them against BUSCO profiles
   * Highlighted that BUSCO is **both a QC and lightweight gene-finding framework**.

3. **Understanding the BUSCO Workflow**

   Conceptual steps include:

   * Lineage dataset selection
   * Initial gene prediction
   * HMM-based ortholog search
   * Identification of complete, fragmented, and missing BUSCOs
   * Optional re-prediction for missing genes

4. **Interpreting BUSCO Output Files**

   Participants explored:

   * **Summary reports** describing completeness percentages
   * **Full tables** listing genomic locations and BUSCO status
   * **Predicted gene and protein sequences**
   * Logs and intermediate outputs for troubleshooting

   Emphasis was placed on **where to find biologically meaningful information**.

5. **Biological Interpretation of Missing BUSCOs**

   * Missing BUSCO genes were investigated using **OrthoDB**.
   * Comparison across related species revealed:

     * Some “missing” BUSCOs reflect **true evolutionary gene loss**
     * Not all missing BUSCOs indicate poor assembly quality
   * Reinforced the importance of **biological context when interpreting QC metrics**.

---

### Overall Practical Takeaways

* Understood BUSCO as a **gene-centric quality assessment framework**.
* Learned how BUSCO complements, rather than replaces, traditional assembly statistics.
* Developed the ability to:

  * Choose appropriate BUSCO modes and lineages
  * Interpret BUSCO completeness scores critically
  * Distinguish technical issues from real biological signals
* Gained insight into how BUSCO supports:

  * Genome quality control
  * Gene prediction evaluation
  * Comparative genomics and phylogenomics
* Strengthened skills in **evidence-based interpretation of genome completeness**, aligned with best practices in modern genomics.

---


## Session: Functional Enrichment Analysis and Comparative Genomics

**Lecturer:** Dr. Abdoallah Sharaf — SequAna  Senior Bioinformatician   
**Type:** Practical

---

### 1. Practical Overview

This session focused on **functional enrichment analysis and comparative genomics** to interpret genome annotation results and place them in an evolutionary context. Participants learned how to identify **overrepresented Gene Ontology (GO) terms** and explore **homology and orthology relationships** between genomes using multiple comparative genomics tools.

The session emphasized **biological interpretation of results rather than raw code execution**.

---

### 2. Functional Enrichment Analysis

**Gene Ontology (GO) Enrichment**

* Functional enrichment analysis was performed to identify **biological processes, molecular functions, and cellular components** significantly associated with a gene set of interest.
* The analysis compared a **study gene set** against a **background population** to detect statistically enriched or depleted GO terms.

**Tools Used**

* **GOATOOLS**

  * Python-based library for GO enrichment analysis.
  * Uses **Fisher’s exact test** with multiple testing correction.
  * Supports False Discovery Rate (FDR) correction using **Benjamini–Hochberg**.
  * Enrichment results distinguish between:

    * **Enriched (e)**: GO terms overrepresented in the study set.
    * **Purified (p)**: GO terms underrepresented in the study set.

* **topGO**

  * R Bioconductor package for GO enrichment.
  * Accounts for **GO graph topology**, reducing redundancy caused by parent–child term dependencies.
  * Discussed as an alternative approach for more refined enrichment analysis.

* **REVIGO**

  * Web-based tool used to **summarize and visualize long GO term lists**.
  * Applied to reduce redundancy in Molecular Function (MF) GO terms with significant FDR values.

---

### 3. Comparative Genomics and Homology Exploration

**Orthology and Homology Analysis**

Participants explored different tools used for **comparative genomics**, focusing on identifying orthologs, orthogroups, and gene family evolution.

**Tools Discussed and Used**

* **OrthoFinder**

  * Comprehensive and user-friendly tool for comparative genomics.
  * Identifies orthogroups, orthologs, gene duplication events, and infers rooted gene and species trees.
  * Requires only protein FASTA files from each species.

* **OrthoMCL**

  * Widely used orthology inference tool.
  * Noted for its complexity and difficulty in local installation.

* **OrthoLoger**

  * Orthology inference software underlying **OrthoDB**.
  * Mentioned but not tested during the session.

* **FastOMA**

  * Nextflow-based scalable implementation of the OMA methodology.
  * Identifies **Hierarchical Orthologous Groups (HOGs)**.
  * Applied to compare different protein datasets derived from the same *Aiptasia* genome annotation sources (GenBank and RefSeq).

* **funannotate compare**

  * Tool for comparing newly annotated genomes against reference genomes.
  * Requires GenBank flat files, which was discussed as a limitation.

* **OrthoVenn3**

  * Web-based platform for orthologous cluster comparison and visualization.
  * Used to compare *Aiptasia* genome annotations across different sources.

---

### 4. Practical Takeaways

* Functional enrichment analysis provides **biological meaning** to genome annotation results.
* GOATOOLS offers a flexible and statistically robust framework for GO enrichment.
* Visualization and summarization tools such as REVIGO are essential for **interpreting large GO term lists**.
* Comparative genomics relies on combining **multiple orthology inference tools**, each with different strengths.
* Hierarchical orthologous groups (HOGs) provide a powerful framework for evolutionary comparisons across genomes.

---

## Session: Modularity and Phylogenetic Analysis

**Lecturer:** Dr. Abdoallah Sharaf — SequAna senior Bioinformatician     
**Type:** Practical

---

### 1. Practical Overview

This session explored **protein modularity and phylogenetic analysis** as key components of molecular evolution. Participants learned how **protein domains act as modular units**, enabling evolutionary innovation through domain rearrangements, and how these evolutionary patterns can be analyzed within a phylogenetic framework.

---

### 2. Protein Modularity and Domain Evolution

**Concept of Modularity**

* Protein domains function as **reusable evolutionary modules**.
* Rearrangement, duplication, and loss of domains contribute to **functional diversity** with relatively few mutational events.
* Domain-based analysis provides insights into **protein evolution beyond sequence similarity alone**.

**Tools Used**

* **DomRates-Seq**

  * Infers protein domain rearrangement events along a phylogeny.
  * Calculates rates of domain gain, loss, fusion, and fission events.
  * Uses orthology information and species trees as input.

* **PfamScan**

  * Used for **protein domain annotation** based on the Pfam database.
  * Provided the domain architecture required for downstream modularity analysis.

---

### 3. Domain Rearrangement Analysis

* Isoforms were filtered to retain a **single representative protein per gene**.
* Domain annotations were mapped onto the species phylogeny.
* Domain rearrangement events were inferred both:

  * Across the **entire phylogeny**, and
  * For **selected proteins of interest** to track specific evolutionary trajectories.

**Visualization**

* Domain rearrangement rates and statistics were visualized using phylogeny-based plots.
* Graphical outputs facilitated interpretation of **domain evolution patterns** across species.

---

### 4. Phylogenetic Analysis

**Phylogenomic (Species Tree) Analysis**

Two major strategies were discussed:

* **Supertree approach**

  * Builds individual gene trees and reconciles them into a species tree.
  * Handles gene duplication and loss through coalescent-based methods.

* **Supermatrix approach**

  * Uses concatenated alignments of single-copy genes.
  * Frequently relies on **BUSCO genes** for robust phylogenomic inference.

**Gene Tree Analysis**

* Focused on genes or HOGs of biological interest.
* Multiple sequence alignment was refined to retain **conserved regions only**.
* Phylogenetic inference was performed using **Maximum Likelihood (ML)** approaches.
* Emphasis was placed on:

  * Model selection
  * Bootstrap support
  * Avoiding artifacts from poorly aligned regions

---

### 5. Practical Takeaways

* Protein domain modularity is a **central driver of evolutionary innovation**.
* Domain-based evolutionary analysis complements sequence-based phylogenetics.
* Integrating **orthology, domain architecture, and phylogeny** provides a multidimensional view of genome evolution.
* Phylogenomic and gene-level phylogenetic approaches serve **different but complementary purposes**.
* Careful selection of genes, alignments, and models is critical for robust evolutionary inference.

---


## Session: FastOMA for Orthology and Homology Exploration

**Lecturers:**
Dr. Sina Majidian — Postdoctoral Fellow, Johns Hopkins University  
Dr. Yannis Nevers — Professeur Junior, Université de Strasbourg   
*(both formerly at the University of Lausanne, Dessimoz’s Lab)*   

**Type:** Lecture & Practical 

---

### 1. Session Overview

This session introduced the **conceptual and practical foundations of orthology inference at scale**, with a focus on **Hierarchical Orthologous Groups (HOGs)** and their implementation in the **FastOMA pipeline**.

The session combined **theoretical background on homology relationships** with **hands-on exploration using the OMA Browser and OMA Academy**, emphasizing scalable solutions suitable for modern large-scale genome projects.

---

### 2. Fundamental Concepts: Homology, Orthology, and Paralogy

Participants reviewed key evolutionary definitions:

* **Homology**: Genetic regions sharing a **common evolutionary ancestry**.
* **Orthology**:

  * Genes diverged via **speciation events**.
  * Often retain **conserved biological functions**.
  * Widely used in **species tree reconstruction** and functional inference.
* **Paralogy**:

  * Genes diverged via **gene duplication events**.
  * May occur within or across species.

The session highlighted common misconceptions, including:

* Orthology is **not limited to one-to-one relationships**.
* Paralogs do **not have to reside in the same species**.

---

### 3. Orthologous Groups and Hierarchical Orthologous Groups (HOGs)

* **Orthologous Groups (OGs)**:

  * Groups of genes that are all mutually orthologous.
  * Typically contain **at most one gene per species**.

* **Hierarchical Orthologous Groups (HOGs)**:

  * Gene families descended from a **single ancestral gene at a specific taxonomic level**.
  * HOGs are **hierarchical and nested**, reflecting evolutionary history across clades.
  * Deeper ancestral HOGs subsume multiple sub-HOGs defined at descendant taxonomic levels.

This framework allows precise tracking of **duplications, speciations, and gene family expansions**.

---

### 4. Orthology Inference Strategies

The session compared major orthology inference approaches:

* **Graph-based methods**
* **Tree-based methods**
* **Hybrid graph + tree methods**

Challenges addressed included:

* Interpretation of gene trees across many species
* Scalability limitations for traditional all-vs-all approaches
* The need for new methods to handle **thousands of genomes from BioGenome projects**

---

### 5. FastOMA: Scalable Orthology Inference

* **FastOMA** is a next-generation orthology inference tool developed in Dessimoz’s lab.
* Designed to infer HOGs at **large scale**, leveraging:

  * UniProt reference proteomes
  * Precomputed OMA databases
* Demonstrated ability to process **~2100 eukaryotic species in a single day** using high-performance computing.
* Benchmarked through the **Quest for Orthologs** initiative, showing strong precision–recall performance compared to state-of-the-art methods.

---

### 6.Practical: OMA Academy & OMA Browser

Participants explored orthology concepts through **interactive exercises** using:

* **OMA Browser**

  * Navigation of gene, species, and HOG pages
  * Exploration of gene family evolution
  * Visualization of duplications, gains, and losses

* **OMA Academy**

  * Guided modules on orthology, HOGs, and comparative genomics
  * Practical exposure to FastOMA concepts without focusing on raw command-line execution

---

### 7. Sequence Placement with OMAmer

The session introduced **OMAmer** as a complementary tool:

* Rapid placement of **new protein sequences or whole proteomes** into existing HOGs.
* Uses **k-mer–based matching** for fast and accurate subfamily placement.
* Enables researchers to:

  * Analyze species not present in the original OMA database
  * Leverage OMA’s evolutionary annotations without recomputing full orthology

Key limitations were discussed:

* Placement into HOGs is **not definitive proof of orthology**, but a highly informative approximation.

---

### 8. Applications of Orthology and HOGs

Practical applications highlighted included:

* Building **species and gene phylogenies**
* Transferring **gene function and GO annotations**
* Identifying **lineage-specific genes**
* Reconstructing **ancestral genomes**
* Studying **co-evolving gene families**
* Comparative genomics and synteny analysis

---

### 9. Overall Practical Takeaways

* Developed a **clear conceptual distinction** between homology, orthology, and paralogy.
* Understood **HOGs as the central framework** for evolutionary gene family analysis.
* Gained familiarity with:

  * The OMA Browser ecosystem
  * FastOMA’s role in large-scale orthology inference
  * OMAmer for rapid sequence placement
* Recognized orthology as a **foundational concept in comparative genomics and evolutionary biology**.
* Appreciated the importance of **scalable methods** to support emerging global genome sequencing initiatives.

---

## Troubleshooting Session, Course Closing & Final Remarks

**Lecturers:** SequAna Instructors & Prof. Christian Voolstra — SequAna Director  
**Type:** Interactive Discussion & Closing Session

---

### Key Notes

* Conducted an **open troubleshooting session** with all participants to address:

  * Technical challenges encountered during practical sessions
  * Conceptual questions related to genome assembly, annotation, and evaluation
  * Interpretation of results and common analytical pitfalls
* Emphasized **problem-solving strategies** rather than tool-specific fixes, encouraging participants to:

  * Diagnose issues based on biological context
  * Evaluate data quality before rerunning analyses
  * Understand limitations of tools and datasets
* Instructors shared **best practices drawn from real research workflows**, including:

  * When to reprocess data versus reinterpret results
  * How to document decisions for reproducibility
  * Common sources of errors in genome projects
* The closing remarks highlighted the **integrated nature of genomics workflows**, reinforcing that:

  * Genome projects require iterative refinement
  * Critical thinking is as important as computational execution
* Prof. Christian Voolstra concluded the course by:

  * Summarizing the scientific and practical scope of the training
  * Emphasizing the importance of **community, collaboration, and open science**
  * Encouraging participants to apply learned concepts to their own research questions
* The session marked the **formal conclusion of the SequAna Genomics Course**, reinforcing readiness to engage in real-world genome analysis projects with confidence and critical awareness.


---

## DAY V Summary & Skills Acquired

### Summary

* Gained a **gene-centric perspective on genome quality control**, moving beyond assembly-level statistics toward biologically meaningful completeness assessment.
* Understood **BUSCO as a unifying framework** linking genome QC, gene prediction evaluation, and phylogenomics.
* Developed critical awareness that **BUSCO scores require biological interpretation**, not blind optimization.
* Learned how **missing or duplicated BUSCOs** may reflect genuine evolutionary events rather than technical failure.
* Applied functional enrichment analysis to translate gene sets into **biological processes and molecular functions**.
* Strengthened understanding of how **statistical enrichment supports biological hypothesis generation**.
* Explored **comparative genomics frameworks** to interpret genome annotations across species.
* Built conceptual clarity around **orthology inference, orthogroups, and hierarchical orthologous groups (HOGs)**.
* Integrated **functional annotation, orthology, and phylogeny** to place genome annotations in an evolutionary context.
* Developed an end-to-end perspective linking **annotation quality → functional interpretation → evolutionary analysis**.

---

### Skills Acquired

* Ability to explain **BUSCO methodology**, outputs, and limitations across genomes, annotations, proteins, and transcriptomes.
* Skill in selecting **appropriate BUSCO lineages and modes** based on biological questions.
* Competence in interpreting **BUSCO completeness categories** (complete, duplicated, fragmented, missing) in evolutionary context.
* Awareness of BUSCO’s role in **gene prediction benchmarking and phylogenomic workflows**.
* Practical understanding of **Gene Ontology enrichment analysis** and its statistical foundations.
* Familiarity with enrichment tools and strategies, including:

  * GOATOOLS
  * topGO
  * REVIGO
* Ability to critically interpret **enriched vs. purified GO terms** and avoid overinterpretation.
* Conceptual mastery of **homology relationships** (homology, orthology, paralogy).
* Understanding of **orthologous groups and Hierarchical Orthologous Groups (HOGs)** as evolutionary units.
* Familiarity with comparative genomics tools and ecosystems, including:

  * OrthoFinder
  * FastOMA
  * OrthoVenn3
  * OMA Browser & OMA Academy
  * OMAmer
* Ability to connect **functional annotation results with comparative and evolutionary genomics analyses**.
* Strengthened **curator-level reasoning**, enabling informed decisions in genome evaluation, functional interpretation, and evolutionary inference.

