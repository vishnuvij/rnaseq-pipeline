# RNA-seq Pipeline (Snakemake + Docker)

This repository contains a **reproducible RNA-seq analysis pipeline** built with **Snakemake** and **Docker**.  
It automates all major steps of RNA-seq data processing — from downloading FASTQ files to generating aligned BAMs and summary reports.

---

##  Features
- 🔹 Download FASTQ files from **ENA/SRA** using [`fastq-dl`](https://github.com/rnajena/fastq-dl)  
- 🔹 Quality control with **FastQC**  
- 🔹 Adapter and quality trimming using **cutadapt**  
- 🔹 Genome alignment with **STAR**  
- 🔹 Aggregated reports with **MultiQC**  
- 🔹 Flexible configuration via `config.yaml`

---

## 🛠️ Setup

### 1. Clone the repository
```bash
git clone https://github.com/vishnuvij/rnaseq-pipeline.git
cd rnaseq-pipeline
