# 🧬 African BioGenome Project (AfricaBP) — Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics

## Day 1 — Field to Lab: Plant DNA Extraction & Quality Control  

📍 Hosted at **The American University in Cairo (AUC)**  
📅 Sunday, October 19, 2025  
🧪 Track 1: Wet Lab - From Sample to Sequence (Days 1–3)  

**Scientific Team (Track 1):** Core AUC Team — Dr. Mai Ibrahim Barakat, Dr. Amged Ouf, Dr. Mahmoud Elhusseiny, Amal Abouel-Fetouh Badr, Nahla Waheed; HVD Egypt / Illumina — Aya Aladdin, Ahmed Moheeb, Hossam Harb, Amr Tarek

---

### Day 1 — Scientific Context & Objectives

Focus:

**Extraction and validation of high-quality genomic DNA suitable for next-generation sequencing (NGS).**

Bridges between:

* Biodiversity genomics
* Plant molecular biology
* Sequencing technologies
* Capacity building in African genomics

This aligns with the mission of the African BioGenome Project to strengthen genomic research infrastructure across Africa.

---

### Conceptual Framework

**Workflow:**

**Field Sample → Tissue Disruption → Cell Lysis → DNA Purification → Quality Control → Sequencing Readiness**

Genome sequencing begins with **molecular integrity at the extraction stage**, not the sequencer.

High-quality DNA is essential for:

* Cataloging African biodiversity
* Sequencing indigenous plant species
* Supporting conservation genomics
* Crop improvement research
* Building sustainable genomic infrastructure

---

### Key Focus Areas

Participants trained to:

* Understand biochemical challenges of plant DNA extraction
* Perform column-based genomic DNA purification
* Assess DNA concentration & purity (NanoDrop, Qubit)
* Evaluate DNA integrity via agarose gel electrophoresis
* Interpret quality metrics for NGS requirements

---

### Session 1: Introduction to AfricaBP & Genomic Sequencing

**Type:** Lecture / Overview  
**Description:** Introduction to the African BioGenome Project, its mission, and the significance of plant genomic sequencing for biodiversity, agriculture, and research in Africa.  

#### Key Notes

* **Mission of AfricaBP:**

  * Sequence 100,000 African species to fill global genomic gaps.
  * Empower African scientists and build regional capacity.
  * Support biodiversity conservation, agriculture, and health initiatives.

* **Role of AUC (American University in Cairo):**

  * Lead capacity building in North Africa through sequencing infrastructure, training, and partnerships.

* **Purpose of Plant Genomic Sequencing:**

  * Decode full DNA sequences to gain genetic insights.
  * Identify genes linked to growth, stress tolerance, disease resistance, and environmental adaptation.
  * Support crop improvement, biodiversity conservation, and sustainable agriculture.

* **Applications:**

  * **Plant Genomics:** Marker-assisted breeding, identification of yield/stress/nutrition genes, genome evolution studies.
  * **Biodiversity & Conservation:** Catalog species, monitor ecosystems, guide conservation, support AfricaBP mission.

---

### Session 2: Sample Preparation & DNA Extraction

**Type:** Practical / Lecture  
**Description:** Overview of workflows for DNA extraction from plant samples, including challenges and comparisons of common extraction methods.  

#### Workflow Overview

1. Sample collection & DNA extraction
2. Library preparation
3. Sequencing (Illumina, Oxford Nanopore)
4. Data processing (QC, trimming, assembly)
5. Annotation & analysis
6. Data submission to public databases

#### Challenges in Plant DNA Extraction

* Tough cell walls; high polysaccharides, tannins, phenolics.
* Halophytes: high salt content complicates extraction.
* Secondary metabolites may degrade DNA or inhibit downstream reactions.

#### Chloroplast Genome Example (Pothos)

| Feature     | Value                             |
| ----------- | --------------------------------- |
| Genome size | 164,831 bp                        |
| LSC         | 88,751 bp                         |
| SSC         | 22,868 bp                         |
| IRa / IRb   | 26,606 bp each                    |
| GC content  | 35.8%                             |
| Coverage    | ~200–500× Illumina 2×250/2×300 PE |

#### DNA Extraction Methods Comparison

| Method          | Principle                                                 | Advantages                | Limitations                | Typical Use                          |
| --------------- | --------------------------------------------------------- | ------------------------- | -------------------------- | ------------------------------------ |
| CTAB            | Remove polysaccharides/polyphenols; chloroform extraction | High yield/purity         | Time-consuming, toxic      | Plants rich in secondary metabolites |
| SDS             | Membrane disruption, protein denaturation                 | Simple, cheap             | Lower purity, contaminants | Rapid PCR/screening                  |
| Magnetic Beads  | DNA binds coated beads                                    | Fast, automation-friendly | Expensive, low throughput  | High-throughput sequencing           |
| Column (Silica) | DNA binds silica membrane                                 | Quick, reproducible, safe | Limited yield, higher cost | Routine PCR/qPCR                     |

---

### Session 3: Plant DNA Extraction (Column Method)

**Type:** Wet Lab / Hands-on  
**Description:** Hands-on DNA extraction using a column-based protocol suitable for plant leaf tissue.

#### Protocol Steps

**Sample Preparation:**

* 50–100 mg fresh leaf tissue → grind in liquid nitrogen to a fine powder.

**Lysis:**

* Add 800 µL LB49 + 40 µL RNase A → mix → incubate at 65°C for 15 min.

**Clarification & Binding:**

* Add 200 µL PB49 → centrifuge 14,000 × g, 15 min.
* Transfer supernatant → spin column → centrifuge 2 min.
* Add 700 µL ethanol → mix → centrifuge to bind DNA.

**Wash Steps:**

* Wash 1 (CB49) → centrifuge 2 min → discard flow-through.
* Wash 2 (WB49) → repeat twice.
* Dry column → centrifuge 2 min.

**Elution:**

* Add 25 µL EB → incubate 2 min → centrifuge.
* Repeat for a final volume of 50 µL DNA.

**Post-processing:**

* Measure concentration (Nanodrop/Qubit), purity (A260/280), optional gel check.
* Storage: -20°C short-term, -80°C long-term.

---

### Session 4: DNA Quality Control & Gel Electrophoresis

**Type:** Wet Lab / Hands-on  
**Description:** Assess DNA integrity using gel electrophoresis and evaluate purity and concentration using NanoDrop and Qubit.  

#### Gel Preparation & Run

* Prepare 1% agarose gel: 1 g agarose + 100 mL TAE → melt → pour → solidify.
* Load DNA samples + ladder → run 30–45 min.

#### Gel Interpretation

| Lane | Observation                       | Meaning                                             |
| ---- | --------------------------------- | --------------------------------------------------- |
| 1    | Thick band near well, faint lower | High-quality, intact DNA, minimal RNA contamination |
| 2    | Continuous smear                  | Degraded DNA, not suitable for sequencing           |
| 3    | Multiple discrete bands           | Partial degradation or contamination                |
| 4    | Faint band                        | Low yield, incomplete extraction                    |

#### DNA Quality Metrics

* **NanoDrop Ratios:**

  * A260/A280 ≈ 1.8 → pure DNA
  * A260/A230 > 2 → low contamination

* **Qubit:** Accurate DNA concentration

* **Importance of QC:**

  * Prevents failed library prep
  * Ensures uniform coverage
  * Reduces sequencing costs
  * Improves reliability of bioinformatics analysis

---

### Session 5: Sequencing-by-Synthesis Overview (Illumina)

**Type:** Lecture / Practical Overview  
**Description:** Learn principles of Illumina sequencing, flow cells, SBS chemistry, and paired-end reads.

#### Key Points

* Workflow: Library preparation → Cluster generation → Sequencing → Data analysis
* Libraries require P5/P7 adapters, sequencing primer sites, and unique indices/barcodes
* Cluster generation: single DNA molecule → bridge amplification → clonal clusters
* Flow cells:

  * Random: HiSeq 2500, MiSeq → variable spacing
  * Patterned: NovaSeq, iSeq → defined spacing, higher density

#### Sequencing-by-Synthesis Chemistry

* Four-channel: 4 dyes → 4 images/cycle
* Two-channel: 2 dyes → 2 images/cycle
* One-channel: Nanowells → 2 images/cycle
* Paired-End Reads: sequence both ends → higher coverage

#### Data Analysis Workflow

* Control software → Image capture, intensity measurement, base calling
* Analysis software → Alignment, variant calling
* Visualization → Annotation, filtering, reporting

---

### Session 6: Library Preparation Overview (Illumina)

**Type:** Practical / Lecture  
**Description:** Understand library prep kits, indexing strategies, pooling, and amplicon panels for targeted sequencing.

#### Library Kits

* DNA/RNA: Illumina DNA Prep, PCR-Free, Nextera XT, AmpliSeq, TruSeq RNA, Stranded mRNA, small RNA, enrichment panels
* Targeted Panels: Cancer, Exome, Transcriptome, Immunology, Infectious Disease, Custom Panels

#### NGS Workflow

1. Sample prep → nucleic acid extraction + QC
2. Library prep → fragmentation, adapter ligation, indexing, clean-up, normalization, pooling
3. Sequencing → read length, depth, coverage
4. Analysis → Alignment, annotation, variant calling

#### Indexing & Pooling

* Combinatorial dual indexing → non-unique, cost-effective
* Unique dual indexing → prevents sample misassignment
* Plan pooling according to data needs; avoid mixing library types

#### Amplicon Panels

* AmpliSeq DNA/RNA → up to 5 Mb target, thousands of amplicons, fusion/expression targets

---

### Day I Summary & Skills Acquired

**Description:** Hands-on training covering plant DNA extraction, quality control, library prep, and Illumina sequencing principles.

#### Summary

* Overview of AfricaBP objectives and significance of plant genomic sequencing
* Full workflow: sample collection → DNA extraction → library prep → sequencing → data analysis
* Illumina sequencing principles, SBS chemistry, and library prep strategies
* Practical experience: DNA extraction, QC, gel electrophoresis, proper sample handling
* Interpretation of DNA quality and troubleshooting

#### Skills Acquired

* Plan plant genome sequencing experiments
* Understand DNA extraction methods, advantages, limitations
* Practical skills: column-based DNA extraction, gel QC
* Knowledge of Illumina library prep, indexing, sequencing workflows
* Awareness of data analysis pipelines and sample pooling strategies






