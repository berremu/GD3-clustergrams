# GD3-clustergrams

This repository contains R scripts, processed datasets, and resulting clustergram visualizations used in the Gaucher Disease Type 3 (GD3) transcriptomic analysis.

The purpose of this repository is to ensure reproducibility and provide transparency for the cluster-based regulatory network exploration involving biomarkers, proteins, transcription factors, miRNAs, and ceRNAs.

---

## 📁 Repository Structure

- `r_scripts/`:  
  R scripts used to generate the clustergram heatmaps.

- `input_data/`:  
  Excel files (cleaned) used as input for clustergram visualization.

- `raw_data/`:  
  Raw unprocessed files before pivoting or transformation.

- `figures/`:  
  PNG clustergram heatmaps created using `pheatmap` in R.

---

## Clustergram Types

Clustergrams were generated for:

- Proteins and Biomarkers
- ceRNAs and Biomarkers
- Transcription Factors and Biomarkers
- miRNAs and Biomarkers

These heatmaps visualize regulatory interactions and clustering patterns of key GD3-specific elements, aiding interpretation of transcriptomic behavior.

---

## R Packages Required

To run the scripts, make sure to install and load the following packages:

```r
install.packages("tidyverse")
install.packages("pheatmap")
install.packages("dplyr")
install.packages("readxl")
```r

## Citation & Thesis Information

This repository was created to support the bachelor's thesis titled:

**Transcriptomic-Guided Drug Repositioning in Gaucher Disease Type 3**

Submitted to: Department of Molecular Biology and Genetics  
Istanbul Medeniyet University, 2025

This work was completed as part of an undergraduate graduation project and is not intended for clinical decision-making without further validation.
