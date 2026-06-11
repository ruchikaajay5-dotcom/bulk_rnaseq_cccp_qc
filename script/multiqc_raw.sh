#!/bin/bash

mkdir -p results/multiqc_raw

multiqc results/fastqc_raw \
-o results/multiqc_raw
