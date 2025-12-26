# Nextflow Training Week 2025

## Nextflow for RNA-seq — Personal Study Notes

**Event:** Nextflow Training Week      
**Organizer:** Seqera       
**Training Module:** Nextflow for RNA-seq      
**Date:** November 17–21, 2025     
**Format:** Online (Self-paced + Live Support)      

---

This document presents my personal study notes and learning outcomes from the **Nextflow for RNA-seq** course, delivered as part of **Nextflow Training Week 2025**.
The course is structured into multiple conceptual parts, each building progressively toward a solid understanding of workflow development using Nextflow for RNA-seq analysis. 


---

## Part 1: Method Overview and Manual Testing (Hello RNA-seq Workflow)

### 1.0 Part Overview

Bulk RNA-seq data analysis involves multiple sequential processing steps to ensure data quality and generate reliable results.
This module introduces how to **manually test each step** of the workflow before automating it in Nextflow, emphasizing understanding over code reproduction.

The training follows the method described by Drs. Simon Andrews and Laura Biggins at the [Babraham Institute](https://www.babraham.ac.uk/) [Method Description PDF](https://www.bioinformatics.babraham.ac.uk/training/RNASeq_Course/Analysing%20RNA-Seq%20data%20Exercise.pdf)
By the end of this part, the workflow covers:

* Performing initial quality control (QC) on raw reads
* Trimming adapter sequences
* Aligning reads to a reference genome
* Generating a comprehensive QC report

---

### 1.1 Conceptual Goals of the RNA-seq Manual Testing Module

This module focuses on developing **practical familiarity with key RNA-seq tools** and understanding their role in a workflow, including:

* Inspecting read quality before and after trimming
* Ensuring correct reference genome alignment
* Collecting, visualizing, and aggregating QC metrics
* Preparing inputs and outputs for automation in subsequent workflow steps

These concepts are essential for building **reproducible and scalable RNA-seq pipelines**.

---

### 1.2 Preparing the Environment

To test the workflow:

* All commands are executed via containers to ensure reproducibility and avoid local installation issues
* Ensure the working directory is set to `nf4-science/rnaseq` before running any commands

This step emphasizes **environment setup and containerization**, which are foundational for Nextflow workflows.

---

### 1.3 Initial QC and Adapter Trimming

#### 1.3.1 Goal

The first step involves **assessing read quality** and removing adapter sequences to ensure clean data for alignment.

#### 1.3.2 Tools and Rationale

* **FastQC** – evaluates raw read quality
* **Trim Galore** – trims adapter sequences and bundles FastQC for post-trimming QC

#### 1.3.3 Manual Execution Strategy

* Pull the container with both FastQC and Trim Galore installed
* Run the QC on example reads to inspect quality metrics
* Trim adapter sequences and verify post-trimming quality

**Key Insights:**

* QC reports provide **diagnostic information** on sequence quality, GC content, and adapter contamination
* Adapter trimming ensures **accuracy in downstream alignment**
* Containers abstract tool installation, allowing reproducible testing

---

### **1.4 Aligning Reads to the Reference Genome**

#### **1.4.1 Goal**

Align trimmed reads to a reference genome to produce a **BAM alignment file**, which is required for downstream analysis.

#### **1.4.2 Tool**

* **HISAT2** – aligns reads efficiently to a reference genome
* **Samtools** – converts alignment output to BAM format

#### **1.4.3 Manual Testing Strategy**

* Pull the HISAT2 container
* Build genome index files from the reference genome
* Align reads interactively and examine alignment statistics

**Key Insights:**

* Reference genome indexing is **critical for alignment performance**
* Alignment statistics reveal **overall mapping quality and read distribution**
* Understanding containerized execution reinforces **Nextflow workflow modularity**

---

### **1.5 Generating a Comprehensive QC Report**

#### **1.5.1 Goal**

Aggregate QC results from raw, trimmed, and aligned reads to provide a **holistic view of dataset quality**.

#### **1.5.2 Tool**

* **MultiQC** – searches for compatible QC reports and produces a unified report

#### **1.5.3 Manual Execution Strategy**

* Pull the MultiQC container
* Point MultiQC to directories containing raw, trimmed, and aligned data QC reports
* Inspect the generated HTML report for quality summary

**Key Insights:**

* MultiQC enables **easy visualization of QC metrics across multiple samples**
* Aggregated reporting is essential before automating the workflow
* Demonstrates how QC data flows through **different workflow stages**

---

### **1.6 Takeaways from Manual Testing**

By completing the manual testing of individual commands:

* Gained **practical understanding** of FastQC, Trim Galore, HISAT2, and MultiQC
* Learned how to **prepare and manage input/output files** for automation
* Developed awareness of **workflow dependencies and data flow**
* Built confidence to **transition from manual commands to automated Nextflow workflow**

---

### **1.7 Conceptual Transition**

This part completes the foundational step of:

* **Testing and understanding each workflow component** manually
  → Before **assembling these components into a reproducible Nextflow workflow** (Part 2)

These concepts lay the groundwork for building **robust RNA-seq pipelines**, ensuring that automation does not compromise understanding or reproducibility.

---

## **Part 2: Single-Sample Implementation**

### **2.0 Part Overview**

This part of the course introduces **how to automate the RNAseq processing pipeline for a single sample**.
Building on the **manual testing steps from Part 1**, we now aim to wrap each command into a **Nextflow workflow**, processing one sample at a time.

The workflow will cover:

* Initial quality control of reads
* Adapter trimming and post-trimming QC
* Alignment to a reference genome

This sets the foundation for **scalable multi-sample workflows** in the next part.

---

### **2.1 Conceptual Goals of Single-Sample Implementation**

Key learning objectives:

* Understanding **how Nextflow wraps manual commands** into processes
* Learning **modular workflow design** using separate modules for each step
* Managing **process inputs and outputs** to chain steps together
* Gaining hands-on experience with **containerized execution** for reproducibility

The workflow maintains the **single-sample simplicity** while introducing **DSL2 modularity**.

---

### **2.2 Workflow Skeleton**

A basic **workflow skeleton** is provided in `rnaseq.nf`.

Purpose of the skeleton:

* Serves as a **starting point** for adding real processes
* Contains placeholders for **input declaration, module inclusion, and workflow block**
* Demonstrates the **structure of a Nextflow workflow** without executing any commands

This approach mirrors best practices in bioinformatics pipelines: **plan first, then implement**.

---

### **2.3 Creating Modular Processes**

#### **2.3.1 FastQC Module**

* Collects **initial QC metrics** on raw reads
* Runs in a **containerized environment** for reproducibility
* Output includes **.zip and .html files**
* Demonstrates **publishDir with symlink mode** to manage large files efficiently

#### **2.3.2 Trim_Galore Module**

* Bundles **Cutadapt and FastQC**
* Performs **adapter trimming** followed by **post-trimming QC**
* Outputs include **trimmed reads, trimming report, and QC files**
* Emphasizes **passing outputs to downstream steps**

#### **2.3.3 HISAT2 Align Module**

* Aligns reads to a **reference genome**
* Requires a **pre-built genome index**, provided as a **gzipped tarball**
* Outputs include **BAM files and alignment logs**
* Demonstrates **handling multiple inputs** (trimmed reads + genome index)

---

### **2.4 Workflow Execution Flow**

1. **Create input channel** from the single FASTQ file
2. **Run FASTQC** for initial quality assessment
3. **Run Trim_Galore** for adapter trimming and post-trimming QC
4. **Run HISAT2_ALIGN** for genome alignment

Key observations:

* Nextflow **automatically handles process execution order** based on input/output channels
* **Containerized execution** ensures consistent results without installing tools locally
* Output files are **organized into specific directories** using `publishDir`

---

### **2.5 Testing the Workflow**

* The workflow is tested on a **small example dataset**

* `nextflow run rnaseq.nf` executes all three steps sequentially

* Outputs appear in:

  * `results/fastqc` – initial QC
  * `results/trimming` – trimmed reads and post-trimming QC
  * `results/align` – BAM file and alignment log

* Using a **default input parameter** simplifies development and testing

---

### **2.6 Takeaways from Single-Sample Implementation**

By completing this part, I learned:

* How to **wrap manual commands into modular Nextflow processes**
* How to **chain processes together** via channels
* How to **parameterize workflows** for flexible execution
* How to **use containerized tools** for reproducibility
* How to **organize output files** effectively for downstream analysis

This part sets the stage for **multi-sample pipelines** and **aggregated QC reporting** in the next course module.

---

## **Part 3: Multi-sample Paired-End Implementation**

### **3.0 Part Overview**

This part extends the single-sample workflow to handle **multiple samples** in parallel, and to process **paired-end RNAseq data**, which is commonly used in modern studies.

The workflow evolves in three stages:

* Make the workflow accept multiple input samples and parallelize execution
* Aggregate QC metrics into a single MultiQC report
* Switch to paired-end RNAseq data

This mirrors real-world bioinformatics pipelines where scalability and reproducibility are essential.

---

### **3.1 Accepting Multiple Samples and Parallelization**

#### **3.1.1 Motivation**

Instead of processing one FASTQ file at a time, real datasets contain dozens or hundreds of samples. Nextflow can manage this efficiently by:

* Parsing input metadata (e.g., CSV of sample IDs and file paths)
* Creating **channels** for each sample
* Running the workflow steps in parallel

#### **3.1.2 Input Handling**

* The workflow now reads a **CSV file** with sample identifiers and FASTQ paths.
* The CSV header allows parsing and mapping to channels.
* This abstraction allows Nextflow to treat each sample independently while automatically managing execution order.

#### **3.1.3 Parallel Execution**

* Once the channels are populated, **each step (FASTQC, TRIM_GALORE, HISAT2)** runs on each sample concurrently.
* Nextflow automatically schedules tasks based on available cores/resources, no manual loops required.

**Takeaway:** Minimal syntax changes turn a single-sample workflow into a fully parallelized batch workflow.

---

### **3.2 Aggregating QC Metrics with MultiQC**

#### **3.2.1 Motivation**

Each sample generates multiple QC outputs (FASTQC reports, trimming logs, alignment logs). To simplify inspection:

* MultiQC aggregates all QC files into a **single, browsable HTML report**
* Aggregation across samples avoids repetitive manual checks

#### **3.2.2 Channel Aggregation**

* Nextflow provides the **`mix()` operator** to combine multiple output channels into one.
* To process all samples together, the **`collect()` operator** collapses individual channel elements into a list.
* These operators ensure **parallel outputs** are properly combined into a **single MultiQC report**.

#### **3.2.3 Output Handling**

* The aggregated report includes QC from trimming, alignment, and pre/post-trimming quality checks.
* Output artifacts remain organized in the `results/multiqc` directory.

**Takeaway:** MultiQC integration illustrates how to collect and summarize multi-sample outputs efficiently.

---

### **3.3 Processing Paired-End RNAseq Data**

#### **3.3.1 Motivation**

* Single-end workflows are simpler, but most RNAseq studies use **paired-end reads**.
* Paired-end reads require two input files per sample and corresponding updates to all processing steps.

#### **3.3.2 Input Adaptation**

* CSV file now contains columns for **FASTQ_1** and **FASTQ_2**.
* Channels map tuples of paired FASTQ files for each sample.
* This ensures downstream processes receive both reads correctly.

#### **3.3.3 Updating Modules**

* **FASTQC**: Updated to accept a tuple of reads instead of a single file. Output wildcards are used for convenience.
* **TRIM_GALORE**: Adapted for paired-end trimming with `--paired` mode. Output channels reflect both read pairs.
* **HISAT2**: Updated to align paired reads using `-1` and `-2` flags, while preserving naming consistency.

#### **3.3.4 MultiQC Updates**

* MultiQC now collects **additional outputs** from both paired reads.
* The `report_id` is updated to reflect the paired-end dataset.

---

### **3.4 Workflow Execution and Validation**

* Running the paired-end workflow demonstrates:

  * Parallel execution across multiple samples
  * Correct aggregation of QC reports
  * Proper handling of paired reads across all steps

* Cached execution (`-resume`) is not used for new paired-end workflows since new inputs produce new results.

**Takeaway:** The workflow is now fully capable of handling multiple samples and paired-end data while producing comprehensive QC reports.

---

### **3.5 Learning Takeaways**

By completing this module, I understood:

* How to **parallelize workflows** for multiple samples using channels
* How to **aggregate outputs** from multiple processes and samples with `mix()` and `collect()`
* How to **adapt single-end workflows to paired-end data**
* How to **maintain reproducibility and organized output** across complex workflows

This part completes the progression from:

* Single-step workflows (**Part 1**)
* Channel-driven parallel execution (**Part 2**)
* Fully connected, multi-sample, paired-end pipelines

These concepts form the foundation for advanced Nextflow usage in genomics pipelines such as RNAseq, ChIP-seq, and multi-omics workflows.

---

## **Training Summary & Skills Acquired**

### **Training Summary**

Through the **Nextflow for RNA-seq** module delivered as part of **Nextflow Training Week 2025**, I developed a **practical and concept-driven understanding** of RNA-seq workflow development using Nextflow. The course guided me from **manual testing of individual commands** to **single-sample automation** and finally to **multi-sample, paired-end pipelines** with reproducible outputs.

Key learning progressions included:

* Transforming **manual commands** into **modular, reproducible Nextflow processes**
* Understanding how **workflow logic** is separated from **execution environment**
* Leveraging **channels** for data-driven and parallel execution
* Applying **DSL2 modularity** for scalable, maintainable pipelines
* Aggregating QC metrics into **comprehensive MultiQC reports**
* Ensuring **portability and reproducibility** via containerized execution

The training emphasized **conceptual understanding** of RNA-seq data flow, process dependencies, and workflow orchestration rather than rote code reproduction.

---

### **Core Concepts Mastered**

* Differentiating **process definitions** from **workflow orchestration**
* Managing **workflow inputs, outputs, and channels** for reproducibility
* Achieving **implicit parallelism** without explicit loops
* Aggregating outputs safely with **collect()** and **mix()** operators
* Designing **modular pipelines** using reusable process units
* Container-based execution for **software reproducibility**
* Configuration-based control of **resources, executors, and runtime behavior**
* Transitioning workflows from **single-sample** to **multi-sample paired-end pipelines**

---

### **Skills Acquired**

* Designing **multi-step RNA-seq workflows** with clear data dependencies
* Wrapping **manual commands into reproducible Nextflow processes**
* Reasoning about **execution order and parallelism** in declarative pipelines
* Organizing outputs efficiently for downstream analysis and QC reporting
* Applying **containerization** to ensure reproducible software environments
* Adapting workflows for different infrastructures via **configuration profiles**
* Evaluating workflows from a **reproducibility and portability perspective**
* Scaling single-sample pipelines to **multi-sample, paired-end datasets**




