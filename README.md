RNA-seq NGS Pipeline
# RNA-seq Pipeline (Snakemake + Docker)

This repository contains a **reproducible RNA-seq pipeline** built with Snakemake and Docker.

## Features
- Downloads raw FASTQ data from ENA/SRA (`fastq-dl`)
- Runs quality control (`FastQC`, `MultiQC`)
- Adapter and quality trimming (`cutadapt`)
- STAR genome alignment
- Configurable via `config.yaml`

## Usage

### Build the Docker image

docker build -t rnaseq-pipeline .

## Run

docker run -it --rm -v ${PWD}:/pipeline rnaseq-pipeline bash
cd workflow
snakemake --cores 4
