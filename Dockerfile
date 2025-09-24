# Base image with Conda
FROM continuumio/miniconda3:latest

# Set working directory inside container
WORKDIR /pipeline

# Copy environment.yml into container
COPY environment.yml .

# Create and activate conda environment
RUN conda env create -f environment.yml

# Ensure the environment is always active
SHELL ["conda", "run", "-n", "rnaseq-pipeline", "/bin/bash", "-c"]

# Default command
CMD ["bash"]
