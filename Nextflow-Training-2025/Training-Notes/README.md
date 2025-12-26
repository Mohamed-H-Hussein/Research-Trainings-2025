
# Nextflow Training Week 2025 – Event Notes

## Overview

This folder contains **personal study notes and skill tracking** from **Nextflow Training Week 2025**.
The training covered workflow fundamentals, modular pipeline design, containerized execution, configuration management, and applied pipeline development using **RNA-seq** as a real-world use case.

These notes reflect my **personal understanding and learning progression**, focusing on **conceptual reasoning, reproducibility, and scalable workflow design**, rather than code memorization.

---

## Event Notes Files

| Module               | File                           | Key Focus                                                                                      | Link                                          |
| -------------------- | ------------------------------ | ---------------------------------------------------------------------------------------------- | --------------------------------------------- |
| Hello Nextflow       | 2025-09_Hello-Nextflow.md      | Workflow fundamentals, processes vs workflows, channels, modularity, containers, configuration | [Hello Nextflow](./2025-09_Hello-Nextflow.md) |
| Nextflow for RNA-seq | 2025-11_Nextflow-for-RNAseq.md | RNA-seq QC, trimming, alignment, MultiQC, single & multi-sample pipelines                      | [Nextflow for RNA-seq](./2025-11_Nextflow-for-RNAseq.md)   |

---

## Skills Acquired

### September Nextflow Training — Hello Nextflow 

* Process vs workflow separation
* Workflow execution and monitoring
* Work directory semantics and caching
* Parameterization and workflow resumption
* Channels as dataflow abstraction
* Implicit parallelism and channel operators
* Multi-step workflows and aggregation (`collect`)
* Modular workflow design with DSL2 modules
* Containerized execution using Docker
* Configuration-driven execution control
* Profiles, executors, and resource management

---

### November Nextflow Training — Nextflow for RNA-seq 

* Designing **declarative, data-driven workflows** with Nextflow
* Clear separation of **process logic, workflow orchestration, and configuration**
* Managing **parallel execution** using channels and operators
* Building **multi-step, multi-sample pipelines**
* Safe aggregation of outputs using `collect()` and `mix()`
* Modular workflow organization with **DSL2 modules**
* Container-based execution for **software reproducibility**
* Configuration-driven adaptation to **local, HPC, and cloud environments**
* Structuring reproducible **RNA-seq workflows** from raw reads to QC reports
* Manual testing and validation of RNA-seq tools before workflow automation
* Handling **single-end and paired-end RNA-seq data** in scalable pipelines
* Managing RNA-seq **sample metadata** using CSV-based inputs
* Aggregating RNA-seq QC metrics across samples using **MultiQC**
* Transitioning RNA-seq workflows from **single-sample to multi-sample execution**
* Reasoning about workflows from a **reproducibility, portability, and maintainability perspective**

---

## Personal Learning Outcome

This training strengthened my ability to reason about **how workflows behave**, not just how they are written.
I can now confidently design **scalable, reproducible, and production-ready pipelines** that separate scientific logic from execution details, following best practices used in modern Transcriptomic and data science.

