---
title: Spatial RNA-Seq
description: Guide and links related to spatial transcriptomics technologies and analyses.
layout: page
show_in_menu: true
disable_anchors: false
---

# 10X Visium

- [Q&A](https://kb.10xgenomics.com/hc/en-us/categories/360002304851-Visium)
- [Spatial resolution and capture area](https://kb.10xgenomics.com/hc/en-us/articles/360035487572-What-is-the-spatial-resolution-and-configuration-of-the-capture-area-of-the-Visium-Gene-Expression-Slide-)
- Capture area: 6.5mm x 6.5mm
- Total spots: 4992
- Spot diameter: 55um

## Datasets

- R package [TENxVisiumData](https://bioconductor.org/packages/release/data/experiment/vignettes/TENxVisiumData/inst/doc/vignette.html)

## Spatial deconvolution

### STdeconvolve

- Reference-free
- https://github.com/JEFworks-Lab/STdeconvolve

### SpaceXR

- Needs reference
- Runs into error
- https://github.com/dmcable/spacexr

### SPOTlight

- Uses reference
- https://github.com/MarcElosua/SPOTlight
