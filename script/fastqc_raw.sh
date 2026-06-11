#!/bin/bash

mkdir -p results/fastqc_raw

fastqc data/*/*.fastq.gz \
-o results/fastqc_raw \
-t 4
