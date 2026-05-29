#!/bin/bash

# Create output directories

mkdir -p ../results/trimmed/6h_cccp
mkdir -p ../results/trimmed/6h_DMSO
mkdir -p ../results/trimmed/12h_cccp
mkdir -p ../results/trimmed/12h_DMSO

echo "Starting Trimmomatic..."

# 6h CCCP

TrimmomaticPE 
-threads 4 
../data/6h_cccp/SRR34737873_1.fastq.gz 
../data/6h_cccp/SRR34737873_2.fastq.gz 
../results/trimmed/6h_cccp/SRR34737873_1_paired.fastq.gz 
../results/trimmed/6h_cccp/SRR34737873_1_unpaired.fastq.gz 
../results/trimmed/6h_cccp/SRR34737873_2_paired.fastq.gz 
../results/trimmed/6h_cccp/SRR34737873_2_unpaired.fastq.gz 
SLIDINGWINDOW:4:20 
MINLEN:36

# 6h DMSO

TrimmomaticPE 
-threads 4 
../data/6h_DMSO/SRR34737876_1.fastq.gz 
../data/6h_DMSO/SRR34737876_2.fastq.gz 
../results/trimmed/6h_DMSO/SRR34737876_1_paired.fastq.gz 
../results/trimmed/6h_DMSO/SRR34737876_1_unpaired.fastq.gz 
../results/trimmed/6h_DMSO/SRR34737876_2_paired.fastq.gz 
../results/trimmed/6h_DMSO/SRR34737876_2_unpaired.fastq.gz 
SLIDINGWINDOW:4:20 
MINLEN:36

# 12h CCCP

TrimmomaticPE 
-threads 4 
../data/12h_cccp/SRR34737867_1.fastq.gz 
../data/12h_cccp/SRR34737867_2.fastq.gz 
../results/trimmed/12h_cccp/SRR34737867_1_paired.fastq.gz 
../results/trimmed/12h_cccp/SRR34737867_1_unpaired.fastq.gz 
../results/trimmed/12h_cccp/SRR34737867_2_paired.fastq.gz 
../results/trimmed/12h_cccp/SRR34737867_2_unpaired.fastq.gz 
SLIDINGWINDOW:4:20 
MINLEN:36

# 12h DMSO

TrimmomaticPE 
-threads 4 
../data/12h_DMSO/SRR34737870_1.fastq.gz 
../data/12h_DMSO/SRR34737870_2.fastq.gz 
../results/trimmed/12h_DMSO/SRR34737870_1_paired.fastq.gz 
../results/trimmed/12h_DMSO/SRR34737870_1_unpaired.fastq.gz 
../results/trimmed/12h_DMSO/SRR34737870_2_paired.fastq.gz 
../results/trimmed/12h_DMSO/SRR34737870_2_unpaired.fastq.gz 
SLIDINGWINDOW:4:20 
MINLEN:36

echo "Trimming complete!"
