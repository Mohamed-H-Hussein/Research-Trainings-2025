# DAY III: Monday 24.03.2025 — Event Notes

---

## Session: Workflow Management with Nextflow

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician, Seqera Ambassador  
**Type:** Lecture & Practical

---

### Part 1: Lecture

1. **Why Workflow Managers Are Essential in Bioinformatics**

   * Modern bioinformatics analyses rarely rely on a single tool; instead, they consist of multi-step pipelines with numerous software dependencies.
   * Manual scripting (bash + job schedulers) is time-consuming, error-prone, and difficult to scale.
   * A key principle emphasized: *“Be lazy”* — automate repetitive tasks using workflow managers to improve efficiency and reproducibility.

2. **What Workflow Managers Provide**

   * A structured framework to **design, execute, and monitor pipelines**.
   * Automatic handling of:

     * Task execution order
     * Parallelization
     * Resource optimization
     * Software versions and dependencies
   * Enable workflows to run seamlessly across different infrastructures (local machines, HPC clusters, cloud).

3. **Benefits Over Manual Pipelines**

   * **Portability**: workflows can be reused across diverse compute environments.
   * **Efficiency**:

     * Reduced manual installation burden.
     * Optimal use of computational resources.
     * High-level parallelization.
   * **Reproducibility**: significantly more robust than ad hoc scripts or custom frameworks.

4. **Limitations of Traditional Approaches (PhD Student Examples)**

   * Early-stage workflows often rely on sequential bash scripts and repeated job submissions.
   * Even improved scripting approaches struggle with:

     * Variable resource requirements.
     * Job failures.
     * Scaling to large datasets.
   * Workflow managers abstract these complexities and reduce human intervention.

5. **Nextflow as a Workflow Solution**

   * Nextflow is a **reactive workflow framework** and **domain-specific language (DSL)**.
   * Core concepts introduced:

     * Processes
     * Channels
     * Workflows
   * Designed to support:

     * Parallelism
     * Reentrancy (resuming partial runs)
     * Reusability of pipeline components

6. **Reproducibility and Research Integrity**

   * Reproducibility challenges in bioinformatics were highlighted as often hidden until re-analysis is attempted.
   * Workflow-based approaches improve transparency and robustness, addressing issues documented in large-scale reproducibility studies.
   * Integration with version control (e.g., Git) ensures traceable and versioned analyses.

7. **Best Practices in Bioinformatics Environments**

   * Strong emphasis on **never installing tools in the base environment**.
   * Use of dedicated environments prevents dependency conflicts between tools.
   * Workflow managers integrate naturally with environment and container technologies.

8. **Technical Requirements for Running Nextflow**

   * Minimal requirements:

     * Java
     * Nextflow
     * A software environment system (Conda, Docker, Singularity/Apptainer)
   * Encourages clean environment setup and good data hygiene practices.

---

### Part 2: Practical

1. **Objective**

   * Gain hands-on experience with structured workflow execution using Nextflow instead of manual scripting.

2. **Training Framework**

   * Practical session based on the **official Seqera Nextflow training**:

     * *Hello Nextflow* (version 2.1)
     * Conducted as part of the formal training material provided by Seqera.
   * Dr. Abdoallah Sharaf led the session as a **Seqera Ambassador**.
   * Official training resource:
     [https://training.nextflow.io/2.1/hello_nextflow/](https://training.nextflow.io/2.1/hello_nextflow/)

3. **Practical Focus Areas**

   * Understanding how Nextflow simplifies repetitive multi-sample analyses.
   * Learning how workflow abstraction:

     * Manages directory structures.
     * Tracks software versions.
     * Coordinates multiple tools within a single pipeline.
   * Exposure to containerized execution as a strategy for portability and reproducibility.

4. **Practical Session Covered**

---

#### Part 1: Hello World

* Introduction to running a minimal Nextflow workflow.
* Learned how simple command-line tasks can be transformed into reproducible workflow steps.
* Understood the basic structure of a Nextflow script and how outputs are generated and stored.
* Gained familiarity with inspecting workflow outputs and logs.

**Key Learning:**
Ability to recognize and interpret the structure of a basic Nextflow workflow and trace its outputs and execution logs.

---

#### Part 2: Hello Channels

* Introduced **channels** as the core mechanism for passing data between processes.
* Learned how channels enable workflows to:

  * Accept variable inputs.
  * Process multiple values in parallel.
* Understood how operators transform data flowing through channels.
* Gained insight into reading structured inputs (e.g. CSV files) and preparing them for downstream processes.

**Key Learning:**
Understanding how Nextflow uses channels and operators to manage and transform data in a scalable and parallel manner.

---

#### Part 3: Hello Workflow

* Learned how to connect multiple processes into a single coherent workflow.
* Understood how outputs from one process become inputs to the next.
* Practiced extending workflows with additional analytical steps.
* Learned how workflows can be resumed without re-running completed steps.

**Key Learning:**
Ability to conceptualize and design multi-step workflows with dependent processes while maintaining efficiency and reproducibility.

---

#### Part 4: Hello Modules

* Introduced modularization as a best practice in workflow design.
* Learned how to extract processes into reusable modules.
* Understood how modular workflows:

  * Improve readability and maintainability.
  * Enable reuse across multiple pipelines without code duplication.

**Key Learning:**
Understanding how modular design enhances scalability, maintainability, and long-term reuse of bioinformatics workflows.

---

#### Part 5: Hello Containers

* Introduced container technologies as a solution for software dependency management.
* Learned how containers:

  * Eliminate the need for local software installation.
  * Ensure consistent execution environments across systems.
* Understood how Nextflow integrates containers directly into workflow execution.

**Key Learning:**
Ability to explain how containerized workflows enhance portability, reproducibility, and ease of collaboration.

---

#### Part 6: Hello Config

* Learned how workflow behavior is controlled through configuration files.
* Understood how to:

  * Switch between software packaging systems (e.g. Conda vs containers).
  * Allocate and optimize computational resources.
  * Adapt workflows to different computing environments (local, HPC).
* Introduced the concept of profiles for environment-specific configurations.

**Key Learning:**
Understanding how configuration-driven execution enables flexible, reproducible workflows across diverse computational infrastructures.

---

### Overall Practical Takeaways

* Practical experience with **official Seqera Nextflow training materials**.
* Clear understanding of how Nextflow abstracts complex bioinformatics pipelines.
* Ability to articulate best practices in:

  * Workflow design
  * Reproducibility
  * Portability
  * Resource-aware execution
* Strengthened readiness for large-scale, collaborative genomic analyses aligned with international research standards.


---

## Session: Introduction to nf-core

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician   
**Type:** Lecture & Practical

---

### Part 1: Lecture

1. **What is nf-core**

   * nf-core is a **community-driven initiative** that provides a curated collection of bioinformatics pipelines built using Nextflow.
   * Pipelines are designed to be **highly automated, reproducible, portable, and well-documented**.
   * nf-core enables users to run complex analyses without deep expertise in workflow programming.

2. **nf-core in Numbers (as of Feb 2025)**

   * Over **95 released pipelines** covering multiple domains:

     * Genomics
     * Transcriptomics
     * Metagenomics
     * Metabolomics
   * Additional pipelines actively **under development**.
   * Large and active community:

     * Thousands of Slack members.
     * Hundreds of GitHub organization contributors.

3. **Core Principles of nf-core**

   * **Community-driven development**: pipelines are developed collaboratively.
   * **Standardization**: all pipelines follow a common template and shared conventions.
   * **Compatibility**: tools and components work consistently across all Nextflow pipelines.
   * **No duplication**: avoids redundant pipelines within the ecosystem.
   * **Component-level collaboration**: shared modules and subworkflows.

4. **nf-core Components Ecosystem**

   * Modular design allows users to **pick and reuse components**.
   * Core elements include:

     * Pipelines (built from a common template)
     * Modules
     * Subworkflows
     * Schema for input validation and UI consistency
     * Linting for enforcing best practices
   * Strong emphasis on **consistency, validation, and reproducibility**.

5. **nf-core Tools**

   * Dedicated command-line tools designed to simplify pipeline development and usage.
   * Support:

     * Creating pipelines from templates.
     * Synchronizing updates.
     * Managing modules and subworkflows.
     * Validating pipelines against nf-core standards.
     * Offline usage via container downloads.

6. **Why Use nf-core — User Perspective**

   * Addresses common challenges when selecting bioinformatics software:

     * What does the tool do?
     * Is it reliable and tested?
     * Is it easy to install and run?
     * Are outputs understandable?
     * Is it scalable and efficient?
   * nf-core pipelines are:

     * Well-tested.
     * Easy to install.
     * Consistently documented.

7. **Documentation Standards**

   * High-quality documentation is **mandatory** under nf-core guidelines.
   * Includes:

     * Clear pipeline overview.
     * Validated input descriptions.
     * Example real-life outputs generated and tested on each release.
     * Detailed output interpretation guidance (pipeline-dependent).

8. **Consistency and Reproducibility**

   * Uniform execution interface across all nf-core pipelines.
   * Strict versioning ensures reproducibility.
   * Integration with container engines and environment managers guarantees consistent software environments.

9. **Scalability and Portability**

   * Built on Nextflow’s inherent scalability:

     * Supports tens to millions of files/jobs.
   * Compatible with:

     * Local machines.
     * Institutional HPC clusters.
     * Cloud infrastructures.
   * Output evaluation scales efficiently using tools like MultiQC.

10. **Fault Tolerance**

    * Automatic retry mechanisms.
    * Resume functionality to continue failed runs.
    * Optional error-handling strategies.
    * Real-time monitoring via Seqera platforms.

11. **Installation and Execution**

    * Flexible installation options via Conda or containers.
    * Unified execution model across pipelines.
    * Supports consistent interfaces for inputs, outputs, and parameters.

12. **Summary for Users**

    * nf-core provides:

      * Ready-to-use pipelines for diverse biological analyses.
      * Community-agreed best practices.
      * High scalability and portability.
      * Robust fault tolerance.
      * Comprehensive documentation and community support.

---

### Part 2: Practical

1. **Practical Introduction to nf-core**

   * nf-core allows users to work with Nextflow pipelines even without deep programming expertise.
   * Focus on using **pre-built, optimized pipelines** for real biological datasets.
   * Emphasis on reproducibility, portability, and ease of use.

2. **Hands-on Exploration**

   * Students were guided to explore nf-core documentation.
   * Special focus on the **nf-core/taxprofiler** pipeline.
   * Emphasis on understanding pipeline structure, required inputs, and outputs before execution.

3. **Data Acquisition and Preparation**

   * Introduction to nf-core pipelines designed for:

     * Fetching raw sequencing data.
     * Automatically generating metadata and samplesheets.
   * Practical discussion around downloading raw reads from public repositories (e.g. SRA).

4. **Running nf-core Pipelines**

   * Demonstrated how nf-core pipelines:

     * Accept standardized samplesheets.
     * Integrate Conda or container-based environments.
     * Manage large-scale intermediate and output files.
   * Discussion of limitations when running resource-intensive pipelines on lightweight environments.

5. **Pipeline Outputs and Interpretation**

   * Guidance on locating and interpreting pipeline outputs.
   * Emphasis on consulting nf-core documentation for output understanding.
   * Discussion of realistic versus test runs.

6. **Configuration and Infrastructure Awareness**

   * Introduction to configuration files for:

     * Adapting pipelines to specific infrastructures.
     * Optimizing resource usage.
   * Emphasis on reusability of configuration files across pipelines.

7. **Debugging nf-core Pipelines**

   * Best practices for troubleshooting:

     * Reading error messages.
     * Inspecting log files.
     * Exploring working directories.
   * Understanding how Nextflow executes tasks under the hood.

8. **Workflow Visualization**

   * Introduction to generating DAG graphs for nf-core pipelines.
   * Visualizing workflow structure and execution dependencies.

---


### Overall Practical Takeaways

* Practical exposure to the **nf-core ecosystem** as a standardized framework for large-scale bioinformatics analyses.
* Clear understanding of how nf-core pipelines build on **Nextflow best practices** to ensure reproducibility and portability.
* Ability to evaluate and select appropriate nf-core pipelines based on:

  * Biological question
  * Input data requirements
  * Computational resources
* Improved understanding of:

  * Community-driven pipeline development
  * Standardized documentation and schema validation
  * Modular reuse through shared components
* Familiarity with configuring nf-core pipelines for different environments (local systems vs HPC).
* Strengthened ability to interpret pipeline outputs and troubleshoot execution errors using logs and workflow structure.
* Enhanced readiness to apply **production-grade bioinformatics pipelines** aligned with international research standards.

---

## Session: Sequencing Reads Pre-processing and Quality Control

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician   
**Type:** Practical

---

### 1.Practical Overview

This session focused on the **initial quality assessment and cleaning of Oxford Nanopore sequencing reads**, emphasizing practical data handling, environment management, and interpretation of quality metrics prior to downstream analyses.

A key methodological principle introduced was the adoption of **“one environment per step”**, ensuring clean dependency management and reproducible execution across different analytical stages.

---

### 2.Data Exploration and Environment Strategy

**Output Inspection and CLI Navigation**

Participants explored the mini-ONT output directory structure to:

* Navigate complex directory hierarchies using command-line tools.
* Inspect run reports and output organization.
* Assess data size and understand how raw sequencing reads are merged.

This exercise reinforced practical command-line literacy as a foundational bioinformatics skill.

**Environment Management Strategy**

A strict environment isolation approach was adopted:

* Each analytical step was assigned a dedicated Conda environment.
* Environments were built from predefined package lists to avoid dependency conflicts.
* Pre-generated results and pre-configured environments were provided to focus learning on interpretation rather than installation overhead.

---

### 3.Raw Read Handling and Subsetting

**Read Quantification and Subsampling**

Due to the large size of the full ONT dataset:

* A subset of **400,000 reads** was generated for hands-on analyses.
* Participants were made aware that results obtained locally may differ from the full dataset outputs.

**Filesystem Organization**

Each participant:

* Created a personal working directory.
* Generated symbolic links to the subsetted FASTQ file, reinforcing best practices in data organization without duplicating large files.

---

### 4.Quality Control of Nanopore Reads

**Quality Assessment with NanoPlot**

NanoPlot was used to evaluate raw Nanopore read quality, focusing on:

* Read length distributions.
* Quality score distributions.
* Overall sequencing performance characteristics.

Participants examined:

* Graphical outputs (.png plots).
* Summary statistics (NanoStats.txt).
* Interactive HTML reports.

**Interpretation Tasks**

Key interpretative questions addressed:

* Total number of reads in each dataset.
* Average read length as an indicator of sequencing performance.
* Average base quality scores and their implications for expected sequencing accuracy, including understanding error probabilities derived from Phred scores.

---

### 5.Adapter Removal and Post-cleaning Evaluation

**Adapter Trimming with PoreChop**

Adapter removal was performed to clean raw ONT reads:

* Middle adapters were discarded to reduce chimeric artifacts.
* Cleaned reads were compressed and stored efficiently.

**Post-cleaning Quality Comparison**

Participants re-evaluated read quality after adapter removal by:

* Comparing pre- and post-cleaning quality metrics.
* Inspecting updated plots and reports.
* Assessing whether adapter trimming improved read length distributions and quality profiles.

---

### Overall Practical Takeaways

* Hands-on experience in **ONT read quality control and preprocessing**.
* Clear understanding of why **environment isolation** is critical for reproducible bioinformatics workflows.
* Ability to interpret Nanopore-specific quality metrics rather than relying solely on tool execution.
* Strengthened confidence in managing large sequencing datasets using CLI-based workflows.
* Improved readiness for downstream genome assembly and analysis steps.

---

---

## Session: Genome k-mer Profiling

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician    
**Type:** Practical

---

### 1.Practical Overview

This session introduced **k-mer–based genome profiling** as a strategy to infer genome characteristics such as size, heterozygosity, and repeat content.

Although k-mer analysis is traditionally optimized for short reads or highly accurate long reads (e.g. HiFi), the session explored its application to ONT data to demonstrate conceptual understanding and methodological flexibility.

---

### 2.k-mer Histogram Generation

**Computing k-mer Frequencies**

Participants learned how k-mer histograms are generated as the foundation for downstream modeling:

* FastK was used to compute k-mer frequency tables.
* Alternative tools (e.g. KMC, Jellyfish) were discussed conceptually.
* A k-mer size of **k = 21** was selected as a balance between resolution and noise.

The resulting histogram represented the frequency distribution of k-mers across the read dataset.

---

### 3.GenomeScope2 Modeling

**Genome Property Estimation**

GenomeScope2 was used to model the k-mer histogram and estimate:

* Genome size.
* Repeat content.
* Heterozygosity patterns (with awareness of ONT limitations).

Participants downloaded and examined the output plots, focusing on:

* Model fit to the observed histogram.
* Interpretation of peaks and coverage distributions.
* Limitations introduced by sequencing error rates in long-read data.

---

### 4.Smudgeplot Analysis

**Smudgeplot Generation**

Smudgeplot was introduced as a complementary approach for exploring:

* K-mer pair relationships.
* Ploidy and heterozygosity signals.

Participants examined smudgeplot outputs to:

* Identify characteristic smudge patterns.
* Discuss how sequencing technology and coverage influence interpretability.
* Compare conceptual expectations versus observed results for ONT-derived data.

---

### Overall Practical Takeaways

* Practical understanding of **k-mer–based genome profiling workflows**.
* Ability to explain how k-mer histograms inform genome-level properties.
* Awareness of methodological limitations when applying k-mer models to noisy long-read datasets.
* Experience interpreting GenomeScope and Smudgeplot outputs beyond surface-level visualization.
* Strengthened conceptual foundation for genome assembly planning and evaluation.

---

## Session: De novo Assembly Using Oxford Nanopore Sequencing Reads

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician  
**Type:** Practical

---

### 1.Practical Overview

This session focused on **de novo genome assembly using Oxford Nanopore long reads**, highlighting how assembler choice, parameter configuration, and genome size assumptions directly affect assembly outcomes.

The session emphasized that **genome assembly is an exploratory and comparative process**, not a single-command solution.

---

### 2.Genome Size Estimation and Assembly Strategy

Participants discussed **genome size uncertainty** for *Aiptasia*:

* Public databases suggest ~394 Mb based on ancestral predictions.
* Published studies estimate a smaller range (~250–300 Mb).
* A working estimate of **~275 Mb** was selected to balance these sources.

This highlighted how **biological assumptions influence computational results** and must be justified.

---

### 3.Assembly with Flye

**Comparative Assembly Configurations**

Flye was used with three different ONT input modes:

* High-quality reads
* Error-corrected reads
* Raw reads

Participants were asked to:

* Inspect log files from each run.
* Understand how Flye treats error profiles differently depending on input type.
* Compare runtime, contiguity, and assembly behavior across configurations.

This reinforced the importance of **log-file literacy** and informed parameter selection.

---

### 4.Exploring Alternative Assemblers

To emphasize robustness, additional assemblers were introduced conceptually and practically:

* **NECAT**: Focused on read correction followed by assembly using high-coverage subsets.
* **CANU**: A well-established long-read assembler with integrated correction and trimming.
* **hifiasm (ONT mode)**: A newer assembler originally designed for HiFi reads but increasingly applicable to ONT data.

Participants learned that:

* Different assemblers implement **distinct error correction and graph construction strategies**.
* Assemblies must be compared rather than accepted at face value.

---

### 5.Assembly Polishing

Due to time constraints, polishing was discussed conceptually:

* **Long-read polishing** tools (e.g. Medaka, Dorado).
* **Short-read polishing** tools (e.g. Pilon) when Illumina data are available.

The key takeaway was that **raw assemblies are rarely final products**, and polishing is critical for accuracy.

---

### 6.Assembly Evaluation and Visualization

**Assembly Statistics**

Participants evaluated assemblies using summary statistics to assess:

* Contiguity (e.g. number and length of contigs).
* Overall assembly structure.

**Visual Inspection**

Assembly graphs were explored using graphical tools to:

* Detect fragmentation.
* Identify unresolved repeats or misassemblies.

This demonstrated that **visual diagnostics complement numerical metrics**.

---

### Overall Practical Takeaways

* Practical understanding of **long-read de novo genome assembly workflows**.
* Awareness that assembler choice and parameters significantly impact results.
* Ability to critically compare assemblies rather than selecting a single output.
* Appreciation of genome size estimation as a biological and computational decision.
* Strong foundation for downstream genome evaluation and refinement.

---

## Session: Visualizing Genome Assembly Cobionts Using BlobToolKit

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician   
**Type:** Practical

---

### 1. Practical Overview

This session focused on **post-assembly genome validation**, with emphasis on identifying **potential cobionts, symbionts, and contaminant contigs** using visualization-based approaches.

The session highlighted that **assembly quality assessment goes beyond contiguity metrics**, requiring integration of taxonomic, coverage, and GC-content information.

---

### 2. BlobToolKit-Based Genome Assessment

Participants were introduced to **BlobToolKit (BTK)** as a comprehensive framework for:

* Evaluating genome assembly quality.
* Assigning taxonomic labels to contigs.
* Detecting contamination and non-target sequences.

A **Nextflow-based BTK pipeline** was demonstrated to showcase reproducible and scalable genome evaluation workflows.

---

### 3. Interpretation of Visualization Outputs

Participants explored interactive BlobToolKit plots to:

* Identify contigs with atypical GC-content or sequencing coverage.
* Detect contigs associated with non-target taxa.
* Evaluate biological plausibility of potential contaminants.

This emphasized **critical interpretation over automated filtering**.

---

### 4. Decontamination and Validation Strategies

The session included interpretation of outputs from:

* Automated contamination screening pipelines.
* Detailed contamination reports supporting transparent decision-making.

Participants discussed the importance of **post-filtering validation** to maintain genome integrity.

---

### Overall Practical Takeaways

* Developed practical insight into **visual genome contamination assessment**.
* Learned to interpret multi-dimensional genome quality signals.
* Gained experience in curator-level decisions on contig retention or removal.
* Understood best practices for producing **clean, submission-ready assemblies**.

---

## Session: Assembling Organelle Genomes from Long-Read Assemblies

**Lecturer:** Dr. Abdoallah Sharaf — SequAna Senior Bioinformatician     
**Type:** Practical

---

### 1. Practical Overview

* Focused on **assembling organelle genomes** from long-read genome assemblies.
* Highlighted the importance of **identifying organelle-derived contigs** to prevent misinterpretation as contaminants during genome evaluation.

---

### 2. Organelle Genome Identification Strategy

* Used **assembly graphs** to distinguish **nuclear contigs** from **organelle-derived contigs**.
* Learned to recognize **fragmented or circular structures** typical of organelle genomes.
* Emphasized **graph-based inspection** as a key step in genome analysis.

---

### 3. Mitochondrial Genome Reconstruction

* **GetOrganelle**: Used to extract mitochondrial contigs from assembly graphs.
* **Graph inspection**: Evaluated **completeness, structural consistency, and fragmentation** of the reconstructed genome.
* Discussed **gap-filling strategies** using closely related references when assemblies were incomplete.
* Highlighted **real-world challenges**, such as fragmented or partially reconstructed organelle genomes.

---

### 4. Integration with Genome Curation

* Correct identification of organelle genomes supports **accurate contamination screening**.
* Improves interpretation of **BlobToolKit results** during assembly evaluation.
* Contributes to producing **high-quality, submission-ready genome assemblies**.

---

### 5. Overall Practical Takeaways

* Gained hands-on understanding of **organelle genome assembly workflows**.
* Learned to interpret **assembly graphs for biological insights**.
* Understood the interaction between **organelle genomes and contamination detection**.
* Developed realistic expectations about **completeness and limitations** of organelle assemblies.
* Emphasized the importance of **contextual interpretation** for producing high-quality genome submissions.


---


## DAY III Summary & Skills Acquired

### Summary

* Introduced modern **workflow management concepts** using Nextflow to replace manual, error-prone bioinformatics scripting.
* Gained structured understanding of **reproducible, scalable, and portable pipelines** across local, HPC, and cloud environments.
* Practiced official **Seqera Nextflow training**, covering workflows, channels, modularization, containers, and configuration profiles.
* Explored the **nf-core ecosystem** as a community-driven standard for production-grade bioinformatics pipelines.
* Learned how standardized pipelines ensure consistency, documentation quality, fault tolerance, and reproducibility.
* Performed hands-on **Oxford Nanopore read preprocessing and quality control**, emphasizing environment isolation and interpretation of QC metrics.
* Applied **k-mer–based genome profiling** to infer genome properties and understand limitations of noisy long-read data.
* Conducted **de novo genome assembly** using ONT reads, comparing assemblers and parameter strategies.
* Evaluated assemblies using statistical summaries, visualization tools, and biological reasoning.
* Performed **assembly validation, contamination screening, and organelle genome identification**, integrating multiple evidence layers into genome curation.

---

### Skills Acquired

* Ability to design, interpret, and explain **Nextflow-based bioinformatics workflows**.
* Understanding of **workflow abstraction**, parallel execution, and resume-based fault tolerance.
* Practical familiarity with **nf-core pipelines**, documentation standards, and configuration strategies.
* Competence in **ONT read preprocessing and quality control**, including metric interpretation.
* Ability to explain **k-mer profiling principles** and genome property inference.
* Practical understanding of **long-read de novo genome assembly workflows** and assembler comparison.
* Skills in **assembly evaluation, visualization, and critical assessment**.
* Experience in **contamination detection and organelle genome assembly** using curator-level tools.
* Strong foundation in **reproducible research practices** aligned with international genomics standards.
* Readiness to integrate workflows, sequencing data, and quality control into **production-grade genomic analyses**.



