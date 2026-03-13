#!/usr/bin/env nextflow

workflow {
    download_reference()
    index_reference()
    download_reads()
    qc_trimming()
    alignment()
    deduplication()
    variant_calling()
}

// =============================
// Processes
// =============================

process download_reference {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/download_reference", mode: 'copy'
    script:
    """
    bash scripts/01_download_reference.sh
    """
}

process index_reference {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/index_reference", mode: 'copy'
    script:
    """
    bash scripts/02_index_reference.sh
    """
}

process download_reads {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/download_reads", mode: 'copy'
    script:
    """
    bash scripts/03_download_reads.sh
    """
}

process qc_trimming {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/qc_trimming", mode: 'copy'
    script:
    """
    bash scripts/04_qc_trimming.sh
    """
}

process alignment {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/alignment", mode: 'copy'
    script:
    """
    bash scripts/05_alignment.sh
    """
}

process deduplication {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/deduplication", mode: 'copy'
    script:
    """
    bash scripts/06_dedup_base_recal.sh
    """
}

process variant_calling {
    conda 'envs/plant_wgs_env.yml'
    publishDir "logs/variant_calling", mode: 'copy'
    script:
    """
    bash scripts/07_variant_calling.sh
    """
}
