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

## Differential expression

- Comparison of DGE tools for single-cell data

> All of the tools perform well when there is no multimodality or low levels of multimodality. They all also perform better when the sparsity (zero counts) is less. For data with a high level of multimodality, methods that consider the behavior of each individual gene, such as DESeq2, EMDomics, Monocle2, DEsingle, and SigEMD, show better TPRs. If the level of multimodality is low, however, SCDE, MAST, and edgeR can provide higher precision.

> In general, the methods that can capture multimodality (non-parametric methods), perform better than do the model-based methods designed for handling zero counts. However, a model-based method that can model the drop-out events well, can perform better in terms of true positive and false positive. We observed that methods developed specifically for scRNAseq data do not show significantly better performance compared to the methods designed for bulk RNAseq data; and methods that consider behavior of each individual gene (not all genes) in calling DE genes outperform the other tools.

{% include figure path="https://media.springernature.com/full/springer-static/image/art%3A10.1186%2Fs12859-019-2599-6/MediaObjects/12859_2019_2599_Fig7_HTML.png?as=webp" caption="Effect of sample size (number of cells) on detecting DE genes. The sample size is in horizontal axis, from 10 to 400 cells in each condition. Effect of sample size on a TPR, b FPR, c accuracy (=(TP + TN)/(TP + FP + TN + FN)), and precision (=TP/(TP + FP)). A threshold of 0.05 is used for FDR or adjusted p-value." %}

{% include citation
text="Wang et al, 2019"
tip="Wang, T., Li, B., Nelson, C.E. et al. Comparative analysis of differential gene expression analysis tools for single-cell RNA sequencing data. BMC Bioinformatics 20, 40 (2019). "
url="https://doi.org/10.1186/s12859-019-2599-6"
%}

- Differential expression without clustering or grouping

{% include tool
text="singleCellHaystack"
url="https://github.com/alexisvdb/singleCellHaystack"
%}

## Data Integration

- Single-cell data integration challenges

{% include figure path="images/argelaguet-2021-tab1.png" caption="Overview of common data integration methods classified according to their anchor choice." %}

{% include citation
text="Argelaguet et al, 2021"
tip="Argelaguet, R., Cuomo, A.S.E., Stegle, O. et al. Computational principles and challenges in single-cell data integration. Nat Biotechnol 39, 1202–1215 (2021)"
url="https://www.nature.com/articles/s41587-021-00895-7"
%}

- Comparison of data integration methods

{% include figure path="https://media.springernature.com/lw685/springer-static/image/art%3A10.1038%2Fs41592-021-01336-8/MediaObjects/41592_2021_1336_Fig2_HTML.png?as=webp" caption="a, Overview of top and bottom ranked methods by overall score for the human immune cell task. Metrics are divided into batch correction (blue) and bio-conservation (pink) categories. Overall scores are computed using a 40/60 weighted mean of these category scores (see Methods for further visualization details and Supplementary Fig. 2 for the full plot). b,c, Visualization of the four best performers on the human immune cell integration task colored by cell identity (b) and batch annotation (c). The plots show uniform manifold approximation and projection layouts for the unintegrated data (left) and the top four performers (right)." %}

{% include figure path="https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41592-021-01336-8/MediaObjects/41592_2021_1336_Fig3_HTML.png?as=webp" caption="a, Scatter plot of the mean overall batch correction score against mean overall bio-conservation score for the selected methods on RNA tasks. Error bars indicate the standard error across tasks on which the methods ran. b, The overall scores for the best performing method, preprocessing and output combinations on each task as well as their usability and scalability. Methods that failed to run for a particular task were assigned the unintegrated ranking for that task. An asterisk after the method name (scANVI and scGen) indicates that, in addition, cell identity information was passed to this method. For ComBat and MNN, usability and scalability scores corresponding to the Python implementation of the methods are reported (Scanpy and mnnpy, respectively)." %}

{% include citation
text="Luecken et al, 2022"
tip="Luecken, M.D., Büttner, M., Chaichoompu, K. et al. Benchmarking atlas-level data integration in single-cell genomics. Nat Methods 19, 41–50 (2022)"
url="https://www.nature.com/articles/s41592-021-01336-8"
%}

## Mapping and Quantification

### CellRanger

- Process chromium data
- BCL to FASTQ
- FASTQ to cellxgene counts
- Feature barcoding

{% include tool
text="CellRanger"
url="https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger"
%}

### Kallisto Bustools

- 10x, inDrop and Dropseq
- Generate cellxgene, cellxtranscript matrix
- RNA velocity data
- Feature barcoding
- QC reports

<p>
{% include tool
text="BUSTools"
url="https://bustools.github.io/"
%}

{% include citation
text="Melsted et al, 2021"
tip="Páll Melsted, A. Sina Booeshaghi, Lauren Liu, Fan Gao, Lambda Lu, Kyung Hoi (Joseph) Min, Eduardo da Veiga Beltrame, Kristján Eldjárn Hjörleifsson, Jase Gehring & Lior Pachter† Modular and efficient pre-processing of single-cell RNA-seq, Nature Biotechnology (2021)."
url="https://doi.org/10.1038/s41587-021-00870-2"
%}
</p>

### Salmon Alevin

- Drop-seq, 10x-Chromium v1/2/3, inDropV2, CELSeq 1/2, Quartz-Seq2, sci-RNA-seq3
- Generate cellxgene matrix

{% include tool
text="Alevin"
url="https://salmon.readthedocs.io/en/latest/alevin.html"
%}

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

## Databases

### Data

- [scRNASeqDB](https://bioinfo.uth.edu/scrnaseqdb/)
- [Broad SIngleCell portal](https://singlecell.broadinstitute.org/single_cell)
- [Hemberg Lab collection](https://hemberg-lab.github.io/scRNA.seq.datasets/)
- [10x datasets](https://www.10xgenomics.com/resources/datasets)
- [EBI Cell Atlas](https://www.ebi.ac.uk/gxa/sc/home)
- [recount 2](https://jhubiostatistics.shinyapps.io/recount/)
- [JingleBells](https://jinglebells.bgu.ac.il/)
- [CNGB](https://db.cngb.org/cdcp/explore)

### Markers

- [PanglaoDB](https://panglaodb.se/)
- [CellMarker](http://biocc.hrbmu.edu.cn/CellMarker/browse.jsp)

## Interactive visualisation frameworks

- [ShinyCell](https://github.com/SGDDNB/ShinyCell)
- [CDCP](https://db.cngb.org/cdcp/)
- [SingleCellVR](https://singlecellvr.pinellolab.partners.org/)

![](https://github.com/SGDDNB/ShinyCell/raw/master/images/comparison.png)

{% include citation
text="Ouyang et al, 2021"
tip="John F Ouyang, Uma S Kamaraj, Elaine Y Cao, Owen J L Rackham, ShinyCell: simple and sharable visualization of single-cell gene expression data, Bioinformatics, Volume 37, Issue 19, 1 October 2021, Pages 3374–3376"
url="https://doi.org/10.1093/bioinformatics/btab209"
%}

![](https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7391988/bin/lqaa052tbl1.jpg)

{% include citation
text="Cakir et al, 2020"
tip="Cakir, B., Prete, M., Huang, N., van Dongen, S., Pir, P., & Kiselev, V. Y. (2020). Comparison of visualization tools for single-cell RNAseq data. NAR genomics and bioinformatics, 2(3)"
url="https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7391988/"
%}
