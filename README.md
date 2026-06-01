# RNA-seq Quality Control and Read Trimming Workflow

## Project Overview

This project demonstrates the quality control (QC) and preprocessing steps of an RNA-seq analysis workflow using publicly available sequencing data.

The objective was to assess raw sequencing quality, perform read trimming, and evaluate the quality of the processed reads before alignment and downstream analysis.

This project is part of my bioinformatics learning journey and focuses on reproducible RNA-seq preprocessing using Linux command-line tools.

---

## Dataset

RNA-seq paired-end sequencing data were obtained from NCBI SRA.

Samples included:

| Condition | Time Point |
| --------- | ---------- |
| DMSO      | 6 h        |
| CCCP      | 6 h        |
| DMSO      | 12 h       |
| CCCP      | 12 h       |

Files were downloaded in FASTQ format and organized by experimental condition.

---

## Workflow

### 1. Initial Quality Assessment

Raw sequencing reads were assessed using:

* FastQC

Quality metrics evaluated:

* Per-base sequence quality
* GC content distribution
* Sequence length distribution
* Adapter contamination
* Sequence duplication levels
* Overrepresented sequences

---

### 2. Read Trimming

Reads were trimmed using Trimmomatic.

Parameters used:

```bash
SLIDINGWINDOW:4:20
MINLEN:36
```

Output files generated:

* Paired reads (retained for downstream analysis)
* Unpaired reads (discarded for alignment)

---

### 3. Post-trimming Quality Assessment

Trimmed reads were re-evaluated using:

* FastQC
* MultiQC

MultiQC was used to aggregate QC metrics across all samples into a single report.

---

## Results

Key observations after trimming:

* Per-base quality scores remained above Q30 across read lengths.
* GC content distributions were consistent with expectations for human RNA-seq data.
* No significant overrepresented sequences were detected.
* Adapter contamination was reduced to minimal levels (<2%).
* Most reads retained their original length (~150 bp), indicating high initial sequencing quality.

Overall, the datasets passed quality control and are suitable for downstream alignment and gene expression analysis.

---

## Tools Used

| Tool           | Purpose                                 |
| -------------- | --------------------------------------- |
| FastQC         | Raw and trimmed read quality assessment |
| Trimmomatic    | Read trimming and filtering             |
| MultiQC        | Aggregation of QC reports               |
| Linux (Ubuntu) | Command-line analysis environment       |
| Git & GitHub   | Version control and project tracking    |

---

## Future Work

Planned next steps:

* Read alignment using STAR
* Gene-level quantification using featureCounts
* Differential expression analysis using DESeq2
* Biological interpretation of CCCP-induced transcriptional changes
---



