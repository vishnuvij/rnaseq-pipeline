# Base image with Conda
FROM continuumio/miniconda3:latest

# Set working directory inside container
WORKDIR /pipeline

# Copy environment.yml into container
COPY environment.yml .

# Install mamba for faster/more reliable environment solves
RUN conda install -n base -c conda-forge mamba -y

# Create conda environment with mamba (auto-confirm)
RUN mamba env create -f environment.yml -y

# Initialize conda and ensure env is active on login
RUN conda init bash && echo "conda activate rnaseq-pipeline" >> ~/.bashrc

# Default command starts a login shell so env is active
CMD ["bash", "-l"]
