---
title: Spatial RNA-Seq
description: Guide and links related to spatial transcriptomics technologies and analyses.
layout: page
show_in_menu: true
disable_anchors: false
---

## Overview

There are three major resolution scales in ST data:

- multi-cell
- single-cell
- sub-cellular

{% include citation
text="Walker et al, 2022"
tip="Walker, B. L., Cang, Z., Ren, H., Bourgain-Chang, E., & Nie, Q. (2022). Deciphering tissue structure and function using spatial transcriptomics. Communications biology, 5(1), 220."
url="https://www.nature.com/articles/s42003-022-03175-5"
%}

{% include citation
text="Yue et al, 2023"
tip="Yue, L., Liu, F., Hu, J., Yang, P., Wang, Y., Dong, J., ... & Wang, S. (2023). A guidebook of spatial transcriptomic technologies, data resources and analysis approaches. Computational and Structural Biotechnology Journal."
url="https://www.sciencedirect.com/science/article/pii/S2001037023000156"
%}

{% include citation
text="Moses et al, 2022"
tip="Moses, L., & Pachter, L. (2022). Museum of spatial transcriptomics. Nature Methods, 19(5), 534-546."
url="https://www.nature.com/articles/s41592-022-01409-2"
%}

## Techniques
### 10X Visium

- multi-cell resolution
- [Q&A](https://kb.10xgenomics.com/hc/en-us/categories/360002304851-Visium)
- [Spatial resolution and capture area](https://kb.10xgenomics.com/hc/en-us/articles/360035487572-What-is-the-spatial-resolution-and-configuration-of-the-capture-area-of-the-Visium-Gene-Expression-Slide-)
- Capture area: 6.5mm x 6.5mm
- Total spots: 4992
- Spot diameter: 55um

## Methods/Tools

### Frameworks

- Seurat
- Giotto
- Squidpy
- stLearn

### SVG

Identification of spatially variable genes.

- SpatialDE
- SPARK
- SOMDE
- Sepal
- scGCO
- SpaGCN
- SpatialLIBD
- stLearn

### Spatial deconvolution

- STdeconvolve
  - Reference-free
  - https://github.com/JEFworks-Lab/STdeconvolve

- SpaceXR
  - Needs reference
  - Runs into error
  - https://github.com/dmcable/spacexr

- SPOTlight
  - Uses reference
  - https://github.com/MarcElosua/SPOTlight

- SpatialDWLS
- RCTD
- DSTG

### Cell interaction

Given the relative stability of cellular locations, spatial
transcriptomics allows us to reveal cell–cell interactions (CCI),
also referred to as cell-cell communications (CCC), with fewer
false positives than similar analysis with scRNA-seq data.

- SpaOTsc
- 

## Datasets

- R package [TENxVisiumData](https://bioconductor.org/packages/release/data/experiment/vignettes/TENxVisiumData/inst/doc/vignette.html)

