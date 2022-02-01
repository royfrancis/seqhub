---
title: Single-cell RNA-Seq
description: Guide and links related to single-cell RNA-Seq experiments and analyses.
layout: page
show_in_menu: true
disable_anchors: false
---

## Overview

**Current best practices in scRNA-Seq**

{% include citation
text="Luecken et al, 2019"
tip="Luecken, M. D., & Theis, F. J. (2019). Current best practices in single‐cell RNA‐seq analysis: a tutorial. Molecular systems biology, 15(6), e8746."
url="https://www.embopress.org/doi/full/10.15252/msb.20188746"
%}

**What information should be included in an scRNA-Seq publication?**

{% include citation
text="Füllgrabe et al, 2020"
tip="Füllgrabe, A., George, N., Green, M., Nejad, P., Aronow, B., Fexova, S. K., ... & Papatheodorou, I. (2020). Guidelines for reporting single-cell RNA-seq experiments. Nature Biotechnology, 38(12), 1384-1386"
url="www.nature.com/articles/s41587-020-00744-z"
%}

## Experimental design
**Experimental Considerations for Single-Cell RNA Sequencing Approaches**

{% include figure path="https://www.frontiersin.org/files/Articles/391125/fcell-06-00108-HTML/image_m/fcell-06-00108-g001.jpg" caption="Overview of step-wise approach to designing single-cell analysis workflows. RNA integrity number (RIN); Reads per cell (RPC)." %}

{% include citation
text="Nguyen et al, 2018"
tip="Nguyen, Q. H., Pervolarakis, N., Nee, K., & Kessenbrock, K. (2018). Experimental considerations for single-cell RNA sequencing approaches. Frontiers in cell and developmental biology, 6, 108"
url="https://www.frontiersin.org/articles/10.3389/fcell.2018.00108/full"
%}

**How many reads are needed per cell? Sequencing depth?**

> Given a fixed budget, sequencing as many cells as possible at approximately one read per cell per gene is optimal, both theoretically and experimentally.

{% include citation
text="Zhang et al, 2020"
tip="Zhang, M. J., Ntranos, V., & Tse, D. (2020). Determining sequencing depth in a single-cell RNA-seq experiment. Nature communications, 11(1), 1-11"
url="https://www.nature.com/articles/s41467-020-14482-y"
%}

### Batch design, number of cells

**Avoid technical biases.**

{% include figure path="https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/bfg/17/4/10.1093_bfgp_elx035/1/elx035f2.jpeg?Expires=1646732793&Signature=WRgcW8XjG4GO4PyzsR7R3UXvpHtgpDZHN4WSiHCd~O1Fv7rpy3GYg4JNLd5VW2I3Ri9xWwKUFTfw8Qz68IrRow9zUFJY0wIuKlF1KObmXRU4Xia1WnQv4p2JivSL~mUE8z8BAAzLY8BWubDfUHlAnE9ahTLmYesKDqAoHaunVIDDQh-sepHwd8EhV3CL0l-QL0mlQ~RFsb~OYqhncdycuit5g-E5PPCau5BB2D~66k~9TVOaUWIv1cjh1lrHOknC6sQKMhLUSi2hJ8PdQRW8ceq9D0KE5w1NATSMmQlS6walcTbBUx4f8GvaZrrsx7bQhltrzZViHroNYODgd8fzBg__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" caption="Experimental design examples. In the confounded design, cells are isolated from each sample onto separate plates, processed at potentially different times and the two groups (indicated by different colors) are sequenced on separate lanes of the sequencer. In the balanced design on the right, all samples are evenly distributed across all stages of the experiment, thus reducing the sources of technical variation in the experiment." %}

**Deciding appropriate cell numbers**

{% include figure path="https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/bfg/17/4/10.1093_bfgp_elx035/1/elx035f3.jpeg?Expires=1646732691&Signature=AXb4053EXZECDqV2iyyDjy96PxfOYclr-TcxRx-QJZGL4BDLAU-k3CEG1MdJVnKjFVIXRHgvWBaXzAmhBIcqsgkKXXfeLC0XiKhfaE8Cc4jsn1T7lDGL-jdvS8wzfIFSGgxzRs~-ijdV2frTWtRer8rvpysOmPOY~3Y2kXLaNQY-W7X6cMqBBA9njOOquHwE3JnRFHVBHrvrhk4zPE~Jm4aQwHi6o6~DXmCNssgUIfTm7VJL2R~s1xaQCyqxn3opKlrWKDqATrCPt3XHYV2brU08UrH77j9WTRMxnSB2zdu7-Ycb4VeI8mVOdvWYtXqsBeENVv4mq~Q0ewplLKkGkw__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" caption="Estimate of cells required for experiments with various parameters. (A) The plot shows the log10(#Cells) required to capture at least 50 cell types based on the parameters on the X- and Y-axes. (B) The plot shows the log10(#Cells) required to capture the number of cells on the Y-axis if the population consists of 20 cell types." %}

{% include citation
text="Baran-Gale et al, 2018"
tip="Baran-Gale, J., Chandra, T., & Kirschner, K. (2018). Experimental design for single-cell RNA sequencing. [Briefings in functional genomics, 17(4), 233-239"
url="https://academic.oup.com/bfg/article/17/4/233/4604806"
%}

{% include tool
text="SatijaLab Cells Calculator"
url="https://satijalab.org/howmanycells/"
%}

{% include tool
text="powsimR (R)"
url="https://github.com/bvieth/powsimR"
%}

### Sequencing depth

> While 250 000 reads per cell are sufficient for accuracy, 1 million reads per cell were a good target for saturated gene detection.

{% include citation
text="Svensson et al, 2017"
tip="Svensson, V., Natarajan, K. N., Ly, L. H., Miragaia, R. J., Labalette, C., Macaulay, I. C., ... & Teichmann, S. A. (2017). Power analysis of single-cell RNA-sequencing experiments. Nature methods, 14(4), 381-387"
url="https://www.nature.com/articles/nmeth.4220"
%}

- Compare 10X QC reports

{% include citation
text="Compare 10X QC reports"
url="https://10xqc.com/"
%}

- Cost per cell calculator

{% include tool
text="SatijaLab Cost Per Cell Calculator"
url="https://satijalab.org/costpercell/"
%}

## Cell type identification

Identification of cell types can be completely automated (by comparing to reference data/databases) or semi-automated (reference data + marker genes).

{% include figure path="https://ars.els-cdn.com/content/image/1-s2.0-S2001037021004499-gr5_lrg.jpg" caption="Summary of performance of the automatic cell-type identification methods. Bar graphs of the automatic cell-type identification methods with six evaluation criteria indicated. For each evaluation criteria, the length of the bars shows the performance of the automatic method: poor, median or good. The automatic methods are sorted based on the mean performance of the evaluation criteria. No bar: not evaluated." %}

{% include citation
text="Xie et al, 2021"
tip="Xie, B., Jiang, Q., Mora, A., & Li, X. (2021). Automatic cell type identification methods for single-cell RNA sequencing. Computational and Structural Biotechnology Journal, 19, 5874-5887."
url="https://www.sciencedirect.com/science/article/pii/S2001037021004499"
%}

{% include citation
text="Sun et al, 2022"
tip="Sun, X., Lin, X., Li, Z., & Wu, H. (2022). A comprehensive comparison of supervised and unsupervised methods for cell type identification in single-cell RNA-seq. Briefings in Bioinformatics."
url="https://academic.oup.com/bib/advance-article-abstract/doi/10.1093/bib/bbab567/6502554"
%}

<p>

{% include tool
text="SCINA"
url="https://github.com/jcao89757/SCINA"
%}

{% include tool
text="SingleR"
url="https://bioconductor.org/packages/release/bioc/html/SingleR.html"
%}

</p>

## VDJ
### TCR review

- Human T cells develop in the thymus and they acquire the ability to recognize foreign antigens and provide protection against many different pathogens.
- This functional flexibility is guaranteed by the expression of highly polymorphic surface receptors called T cell receptors (TCRs).
- TCR is composed of two different protein chains. The vast majority of human T cells express TCRs composed of α (alpha) and β (beta) chains.
- The genes encoding alpha (TCRA) and beta (TCRAB) chains are composed of multiple non-contiguous gene segments which include variable (V), diversity (D), and joining (J) segments for TCRB gene and variable (V) and joining (J) for TCRA gene.
- The enormous diversity of T cell repertoires is generated by random combinations of germ line gene segments (combinatorial diversity) and by random addition or deletion at the junction site of the segments that have been joined (junctional diversity).
- The sequence encoded by the V(D)J junction is called complementarity determining region 3 or CDR3. This sequence has the highest variability in both alpha and beta chains and determines the ability of a T cell to recognize an antigen.
- The total number of possible combination is estimated to exceed 10e18.
- The diversity of naïve T cells is the T cell repertoire
- Exposure to an antigen drives a rapid clonal expansion of cells carrying identical TCRs to generate a population of “effector cells.”
- After antigen clearance, a reduced number of these cells remain in the blood as “memory cells.”

{% include figure path="https://www.frontiersin.org/files/Articles/384005/fimmu-09-01638-HTML/image_m/fimmu-09-01638-g001.jpg" %}

{% include citation
text="De Simone et al, 2018"
tip="De Simone, M., Rossetti, G., & Pagani, M. (2018). Single cell T cell receptor sequencing: techniques and future challenges. Frontiers in Immunology, 9, 1638"
url="https://internal-journal.frontiersin.org/articles/10.3389/fimmu.2018.01638/full"
%}

### Tools

Tools related to VDJ analyses.

<p>

{% include tool
text="Enclone (10X, Shell)"
url="https://10xgenomics.github.io/enclone/"
%}

{% include tool
text="vdjtools (Java)"
url="https://github.com/mikessh/vdjtools"
%}

{% include tool
text="conga (Python)"
url="https://github.com/phbradley/conga"
%}

{% include tool
text="SONAR (Python)"
url="https://github.com/scharch/SONAR"
%}

{% include tool
text="scRepertoire (R)"
url="https://github.com/ncborcherding/scRepertoire"
%}

{% include tool
text="djvdj (R)"
url="https://github.com/rnabioco/djvdj"
%}

</p>
