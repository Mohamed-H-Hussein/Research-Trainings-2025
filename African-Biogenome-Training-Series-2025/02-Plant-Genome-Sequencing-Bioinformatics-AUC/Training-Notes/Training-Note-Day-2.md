# 🧬 African BioGenome Project (AfricaBP) — Exploring Genomic Diversity - Hands-on Workshop in Plant Genome Sequencing and Bioinformatics

## Day 2 — Library Preparation & Sequencing Setup

📍 Hosted at **The American University in Cairo (AUC)**  
📅 Monday, October 20, 2025  
🧪 Track 1: Wet Lab - Library Prep & Sequencing (Day 2)  

**Scientific Team (Track 1):** Core AUC Team — Dr. Mai Ibrahim Barakat, Dr. Amged Ouf, Dr. Mahmoud Elhusseiny, Amal Abouel-Fetouh Badr, Nahla Waheed; HVD Egypt / Illumina — Aya Aladdin, Ahmed Moheeb, Hossam Harb, Amr Tarek

---

### Day 2 — Scientific Context & Objectives

Focus:

 **Prepare high-quality Illumina sequencing libraries from plant genomic DNA.**

Bridges between:

* Molecular biology and NGS workflows
* Hands-on understanding of library prep chemistry
* Quality control and normalization of sequencing-ready libraries

This stage ensures that extracted DNA is converted into **sequencing-ready libraries** with correct adapters, indices, and concentration.

---

### Conceptual Framework

**Workflow:**

**DNA Sample → Tagmentation → Indexing PCR → Library Clean-Up → QC → Normalization → Sequencer Loading**

Library prep determines sequencing success; improper handling leads to bias, low coverage, or failed runs.

High-quality libraries are essential for:

* Efficient cluster generation on flow cells
* Accurate genome assembly and variant calling
* Consistent coverage across samples
* Minimizing sequencing costs and technical errors

---

### Key Focus Areas

Participants trained to:

* Perform DNA tagmentation and understand its principle
* Carry out indexing PCR and prevent sample cross-contamination
* Purify and clean up libraries post-PCR
* Assess library quality using Agilent Bioanalyzer or gel electrophoresis
* Normalize libraries for optimal sequencing

---

### Session 1: DNA Tagmentation

**Type:** Hands-on / Wet Lab
**Description:** Fragment genomic DNA and simultaneously add adapters using Nextera XT chemistry.

#### Stepwise Protocol (Simplified)

1. Add TD buffer and 1 ng DNA to plate → mix
2. Add 5 µL ATM → mix
3. Centrifuge (280 × g, 20°C, 1 min)
4. Run TAG program on thermal cycler
5. Add 5 µL NT → mix → centrifuge → incubate 5 min at room temperature

 Principle: Tagmentation combines DNA fragmentation and adapter addition in one step for Illumina library prep.

---

### Session 2: Indexing PCR

**Type:** Hands-on / Wet Lab   
**Description:** Amplify tagmented DNA and incorporate sample-specific indices for multiplexing.

#### Stepwise Protocol

1. Add index adapters and 15 µL NPM per sample → mix
2. Centrifuge (280 × g, 20°C, 1 min)
3. Run NXT PCR program on thermal cycler

**Safe Stopping Point:** Store sealed plate at 2–8°C for up to 2 days or leave overnight on cycler.

Principle: PCR amplifies library fragments and incorporates unique indices for sample identification.

---

### Session 3: Library Clean-Up

**Type:** Hands-on / Wet Lab    
**Description:** Remove enzymes, primers, and small fragments using magnetic bead purification.

#### Stepwise Protocol

1. Transfer supernatant → add Illumina Purification Beads → shake, incubate
2. Place on magnetic stand → remove supernatant
3. Wash twice with 80% ethanol(200 µL)→ air-dry on the magnetic stand for 15 min
4. Add (52.5 µL) RSB
5. Resuspend in RSB buffer → transfer (50 µL) supernatant

**Safe Stopping Point:** Seal plate, store at -25°C to -15°C for up to 7 days

Principle: Magnetic beads selectively bind DNA fragments, allowing removal of unwanted components and buffer exchange.

---

### Session 4: Library Quality Control

**Type:** Hands-on / Wet Lab   
**Description:** Evaluate library fragment size and concentration.

* Run 1 µL of undiluted library on Agilent 2100 Bioanalyzer (High Sensitivity DNA Kit)
* Alternatively, perform gel electrophoresis

**Purpose:** Confirm correct fragment size distribution and absence of primer dimers or degradation before pooling.

---

### Session 5: Library Normalization

**Type:** Hands-on / Wet Lab   
**Description:** Adjust library concentrations to ensure equal representation in pooled sequencing.

#### Stepwise Protocol

1. Transfer 20 µL supernatant → mix with LNA1 (46 µL) + LNA2 (8 µL) → Transfer 45 µL of the LN Mix  → shake 30 min
2. Place on magnetic stand → remove supernatant
3. Wash twice with 45 µL of LNW1
4. Add 30 ul 0.1 N NaOH→ 5 min Shake After →the 5 minute elution completes,
5. Add 30 ul LNS1 to each well of a new 96-well PCR plate labeled SGP
6. Transfer 30 µL normalized library to SGP plate → centrifuge for 1 min

Principle: Normalization reduces variability in read coverage across samples.

---

### Session 6: Dilution to Starting Concentration

**Type:** Hands-on / Wet Lab  
**Description:** Calculate molarity and dilute libraries to loading concentration.

* Use molarity formula → calculate RSB and library volumes
* Dilute pooled or individual libraries to final concentration
* Ready for sequencing

Ensures optimal cluster generation and accurate sequencing output.

---

### Acronyms & Key Reagents

| Acronym | Definition                             |
| ------- | -------------------------------------- |
| ATM     | Amplicon Tagment Mix                   |
| HT1     | Hybridization Buffer                   |
| LNA1    | Library Normalization Additives 1      |
| LNB1    | Library Normalization Beads 1          |
| LNS1    | Library Normalization Storage Buffer 1 |
| LNW1    | Library Normalization Wash 1           |
| NT      | Neutralize Tagment Buffer              |
| NPM     | Nextera PCR Master Mix                 |
| RSB     | Resuspension Buffer                    |
| SGP     | Storage Plate                          |
| TD      | Tagment DNA Buffer                     |
| UD      | Unique Dual Index                      |

---

### Day 2 Summary & Skills Acquired

**Description:** Hands-on training covering DNA library preparation, indexing, clean-up, quality control, and normalization for Illumina sequencing.

#### Summary

* Performed DNA tagmentation and indexing PCR
* Conducted library clean-up using magnetic beads
* Assessed library quality and size distribution
* Normalized libraries for sequencing
* Prepared libraries for Illumina loading

#### Skills Acquired

* Practical skills: DNA tagmentation, indexing PCR, bead-based clean-up
* Library QC interpretation using Bioanalyzer or gel
* Library normalization and pooling for sequencing
* Understanding of Nextera XT workflow and sequencing readiness

