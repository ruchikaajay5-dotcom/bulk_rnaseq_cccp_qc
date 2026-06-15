# Objective:
To evaluate sequencing quality prior to downstream RNA-seq analysis.

# Background:
CCCP is a mitochondrial uncoupler that disrupts oxidative phosphorylation and mitochondrial membrane potential. This project performs quality assessment of time point based RNA-seq data generated from CCCP-treated and DMSO-treated HeLa cells at two time points 6 hours and 12 hours.

# Dataset:
- GEO accession: GSE303802
- Organism: Homo sapiens
- Cell line: HeLa
- Platform: Illumina NovaSeq 6000
- Layout: Paired-end RNA-seq
- Total number of Samples: 12
- Replicates per group: 3
 -Number of FASTQC files generated: 24
- Number of MultiQC files generated: 1

# Experimental Design
Condition	Timepoint	Replicates
CCCP	    6 h	           3
DMSO	    6 h	           3
CCCP	    12 h           3 
DMSO	    12 h	       3

# Downloading the data:
Data files were downloaded using the European Nucleotide Archive (ENA) database.

# Workflow:
1. Download the FASTQ files 
2. Check the integrity of the zipped files
3. Perform FASTQc and MultQC analysis 
4. Interpret the quality metrics

# Sotwares used:
- FastQC
- MultiQC
- Linux CommandLine	

# Structure:

```text
bulk_rnaseq_cccp_timepoint/
├── README.md
├── scripts/
│   ├── fastqc_raw.sh
│   └── multiqc_raw.sh
├── results/
│   ├── fastqc_raw/
│   └── multiqc_raw/
└── metadata/
    └── sample_metadata.csv
```

# Future steps:
- Trim low-quality bases and adapters using Trimmomatic/fastp
- Align reads to the reference genome using STAR
- Generate count matrix
- Differential expression analysis using DESeq2
