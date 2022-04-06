---
title: Meta Transcriptomics
description: Guide and links related to meta-transcriptomic analyses.
layout: page
show_in_menu: false
disable_anchors: false
---

## Overview

{% include figure path="https://f1000researchdata.s3.amazonaws.com/manuscripts/55709/4365fde8-b9bc-4578-a575-a35fd378ab5e_figure1.gif" caption="Fig: ASaiM-MT workflow for metatranscriptomics data." %}

{% include citation
text="Mehta et al, 2021"
tip=" Mehta S, Crane M, Leith E et al. ASaiM-MT: a validated and optimized ASaiM workflow for metatranscriptomics analysis within Galaxy framework [version 2; peer review: 2 approved]. F1000Research 2021, 10:103"
url="https://f1000research.com/articles/10-103/v2"
%}

## Tools

* Taxonomic classification system

{% include tool
text="Kraken 2"
url="https://ccb.jhu.edu/software/kraken2/"
%}

* Filtering, mapping and OTU picking

{% include tool
text="SortMeRNA"
url="https://bioinfo.lifl.fr/RNA/sortmerna/"
%}

* Compare sequence similarity between datasets

{% include tool
text="SourMash"
url="https://sourmash.readthedocs.io/en/latest/"
%}

* Taxonomy quantitation / Community profiling

{% include tool
text="MetaPhlAn 2"
url="https://huttenhower.sph.harvard.edu/metaphlan2/"
%}

* Functional quantitation

{% include tool
text="HUMAnN 2"
url="https://huttenhower.sph.harvard.edu/humann2/"
%}
