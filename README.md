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
```

### 2. Build the Docker image
```bash
docker build -t rnaseq-pipeline .
```
### 3.Configuration

All samples and the reference genome are defined in config.yaml.
```bash
samples:
  - SRR000648

reference:
  name: Saccharomyces_cerevisiae.R64-1-1.dna.toplevel
  url: "https://ftp.ensembl.org/pub/release-111/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz"
```
Add as many sample accessions under samples as you want

Change reference to use a different genome

### Usage

Run the pipeline inside Docker:
```
docker run -it --rm -v ${PWD}:/pipeline rnaseq-pipeline
cd workflow
snakemake --cores 4

```

### Outputs

results/fastqc/ → FastQC reports (raw + trimmed)

results/trimmed/ → Adapter-trimmed FASTQs

results/alignment/ → Aligned BAM files

results/multiqc_report.html → Final MultiQC summary


