---
title: Bulk RNA-Seq
description: Guide and links related to bulk RNA-Seq experiments and analyses.
layout: page
show_in_menu: true
disable_anchors: false
---

## Overview

**What is the general workflow, steps, tools used and best practices for bulk rna-seq analysis?**

{% include figure path="https://media.springernature.com/full/springer-static/image/art%3A10.1186%2Fs13059-016-0881-8/MediaObjects/13059_2016_881_Fig1_HTML.gif?as=webp" caption="Fig: A generic roadmap for RNA-seq computational analyses." %}

The major analysis steps are listed above the lines for pre-analysis, core analysis and advanced analysis. The key analysis issues for each step that are listed below the lines are discussed in the text. a Preprocessing includes experimental design, sequencing design, and quality control steps. b Core analyses include transcriptome profiling, differential gene expression, and functional profiling. c Advanced analysis includes visualization, other RNA-seq technologies, and data integration. Abbreviations: ChIP-seq Chromatin immunoprecipitation sequencing, eQTL Expression quantitative loci, FPKM Fragments per kilobase of exon model per million mapped reads, GSEA Gene set enrichment analysis, PCA Principal component analysis, RPKM Reads per kilobase of exon model per million reads, sQTL Splicing quantitative trait loci, TF Transcription factor, TPM Transcripts per million.

{% include figure path="https://media.springernature.com/full/springer-static/image/art%3A10.1186%2Fs13059-016-0881-8/MediaObjects/13059_2016_881_Fig2_HTML.gif?as=webp" caption="Read mapping and transcript identification strategies." %}

Three basic strategies for regular RNA-seq analysis. a An annotated genome is available and reads are mapped to the genome with a gapped mapper. Next (novel) transcript discovery and quantification can proceed with or without an annotation file. Novel transcripts are then functionally annotated. b If no novel transcript discovery is needed, reads can be mapped to the reference transcriptome using an ungapped aligner. Transcript identification and quantification can occur simultaneously. c When no genome is available, reads need to be assembled first into contigs or transcripts. For quantification, reads are mapped back to the novel reference transcriptome and further analysis proceeds as in (b) followed by the functional annotation of the novel transcripts as in (a). Representative software that can be used at each analysis step are indicated in bold text. Abbreviations: GFF General Feature Format, GTF gene transfer format, RSEM RNA-Seq by Expectation Maximization.

<p>
{% include citation
text="Conesa et al, 2016"
tip="Conesa, Ana, et al. A survey of best practices for RNA-seq data analysis. Genome biology 17.1 (2016): 13"
url="https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0881-8"
%}

{% include citation
text="Koch et al, 2018"
tip="Koch, C. M., Chiu, S. F., Akbarpour, M., Bharat, A., Ridge, K. M., Bartom, E. T., & Winter, D. R. (2018). A beginner’s guide to analysis of RNA sequencing data. American journal of respiratory cell and molecular biology, 59(2), 145-157"
url="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6096346"
%}
</p>

</br>

## Experimental design

**Are technical replicates needed for RNA-Seq analyses?**

> We find that the Illumina sequencing data are highly replicable, with relatively little technical variation, and thus, for many purposes, it may suffice to sequence each mRNA sample only once.

{% include citation
text="Marioni et al, 2008"
tip="Marioni, John C., et al. RNA-seq: an assessment of technical reproducibility and comparison with gene expression arrays. Genome research (2008)"
url="https://genome.cshlp.org/content/18/9/1509.long"
%}

**How many biological replicates are needed in an RNA-seq experiment?**

{% include figure path="images/schurch-2016-3.png" %}

{% include citation
text="Schurch et al, 2016"
tip="Schurch, Nicholas J., et al. How many biological replicates are needed in an RNA-seq experiment and which differential expression tool should you use?. Rna (2016)"
url="http://rnajournal.cshlp.org/content/early/2016/03/30/rna.053959.115.abstract"
%}

Number of replicates can be calculated more precisely using power analysis. `RnaSeqSampleSize` is an R package for power analysis and sample size estimation for RNA-Seq experiment.  

{% include citation
text="Zhao et al, 2018"
tip="Zhao, Shilin, et al. RnaSeqSampleSize: real data based sample size estimation for RNA sequencing. BMC bioinformatics 19.1 (2018): 191"
url="https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-018-2191-5"
%}

RNASeqPower based spreadsheet ([Google Sheet](https://docs.google.com/spreadsheets/d/14npBsshTUlqt4toiUv2vWGfcrXwh5wSwKPx9vSf4I_M/edit?usp=sharing)) and [Shiny App](https://rshiny.nbis.se/shiny-server-apps/shiny-rnaseq-power/).

{% include citation
text="Hart et al, 2013"
tip="Hart, S. N., Therneau, T. M., Zhang, Y., Poland, G. A., & Kocher, J. P. (2013). Calculating sample size estimates for RNA sequencing data. Journal of computational biology, 20(12), 970-978"
url="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3842884/"
%}

**More sequencing depth or more biological replicates?**

{% include figure path="https://www.ncbi.nlm.nih.gov/pmc/articles/instance/3904521/bin/btt688f1p.jpg" caption="Fig: (a) Increase in biological replication significantly increases the number of DE genes identified. Numbers of sequencing reads have a diminishing return after 10 M reads. Line thickness indicates depth of replication, with 2 replicates the darkest and 7 replicates the lightest. The lines are smoothed averages for each replication level, with the shaded regions corresponding to the 95% confidence intervals. (b) Power of detecting DE genes increases with both sequencing depth and biological replication. Similar to the trends in (a), increases in the power showed diminishing returns after 10 M reads. (c) ROC curves for three biological replicates. Sequencing deeper than 10 M reads did not significantly improve statistical power and precision for detecting DE genes. (d) The CV of logFC for the top 100 DE genes. The CV of the logFC estimates decreased significantly as we added more biological replicates, whereas adding sequencing depth after 10 M reads had much less effect. " %}

{% include figure path="https://www.ncbi.nlm.nih.gov/pmc/articles/instance/3904521/bin/btt688f2p.jpg" caption="Fig: (a–c) The CV of logCPM for high expression level genes (a), medium expression level genes (b) and low expression level genes (c) (see Section 2 for definition). High/medium expression level genes have low CV for expression level estimates. Adding sequencing depth did not have significant effect on accuracy of estimation, whereas adding biological replicates improved accuracy significantly. For low expression level genes, both adding sequencing depth and adding biological replication level improved expression level estimation accuracy. (d) Number of DE genes plotted against the total estimated sequencing cost. If higher numbers of DE genes are needed, increased biological replication should be used." %}

{% include citation
text="Liu et al, 2014"
tip="Liu, Y., Zhou, J., & White, K. P. (2014). RNA-seq differential expression studies: more sequence or more replication?. Bioinformatics, 30(3), 301-304"
url="https://pubmed.ncbi.nlm.nih.gov/24319002"
%}

</br>

## RNA extraction

**Impact of RNA degradation on transcript quantification**

> We observed widespread effects of RNA quality on measurements of gene expression levels, as well as a slight but significant loss of library complexity in more degraded samples.
>
> While standard normalizations failed to account for the effects of degradation, we found that by explicitly controlling for the effects of RIN using a linear model framework we can correct for the majority of these effects. We conclude that in instances in which RIN and the effect of interest are not associated, this approach can help recover biologically meaningful signals in data from degraded RNA samples.

{% include figure path="https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1741-7007-12-42/MediaObjects/12915_2014_Article_776_Fig1_HTML.jpg?as=webp" caption="Fig: A) PCA plot of the 15 samples included in the study based on data from 29,156 genes with at least one mapped read in a single individual. Different colors identify different time-points, while each shape indicates a particular individual in the data set. B) Spearman correlation plot of the 15 samples in the study. PCA, principal component analysis." %}

{% include citation
text="Romero et al, 2014"
tip="Romero, Irene Gallego, et al. RNA-seq: impact of RNA degradation on transcript quantification. BMC biology 12.1 (2014): 42"
url="https://bmcbiol.biomedcentral.com/articles/10.1186/1741-7007-12-42"
%}

> Our current analyses indicate that structured small RNAs with low GC content are recovered inefficiently when a small number of cells is used for RNA isolation with TRIzol. We further find that, in addition to miRNAs, some pre-miRNAs, small interfering RNA (siRNA) duplexes, and transfer RNAs (tRNAs) are also extracted inefficiently under these conditions, reducing their representation in the pool of recovered RNAs.

{% include citation
text="Kim et al, 2012"
tip="Kim, Young-Kook, et al. Short structured RNAs with low GC content are selectively lost during extraction from a small number of cells. Molecular cell 46.6 (2012): 893-895"
url="https://www.cell.com/molecular-cell/fulltext/S1097-2765(12)00481-9"
%}

</br>

## Library prep

> As many as 1751 genes in Gencode Release 19 were identified to be differentially expressed when comparing stranded and non-stranded RNA-seq whole blood samples. Antisense and pseudogenes were significantly enriched in differential expression analyses. Because stranded RNA-seq retains strand information of a read, we can resolve read ambiguity in overlapping genes transcribed from opposite strands, which provides a more accurate quantification of gene expression levels compared with traditional non-stranded RNA-seq. 
>
> Stranded RNA-seq provides a more accurate estimate of transcript expression compared with non-stranded RNA-seq, and is therefore the recommended RNA-seq approach for future mRNA-seq studies.

{% include citation
text="Zhao et al, 2015"
tip="Zhao, Shanrong, et al. Comparison of stranded and non-stranded RNA-seq transcriptome profiling and investigation of gene overlap. BMC genomics 16.1 (2015): 675"
url="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4559181"
%}

{% include citation
text="Levin et al, 2010"
tip="Levin, Joshua Z., et al. Comprehensive comparative analysis of strand-specific RNA sequencing methods. Nature methods 7.9 (2010): 709"
url="https://www.nature.com/articles/nmeth.1491"
%}

</br>

## Sequencing

<p>
{% include citation
text="Chhangawala et al, 2015"
tip="Chhangawala, Sagar, et al. The impact of read length on quantification of differentially expressed genes and splice junction detection. Genome biology 16.1 (2015): 131"
url="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4531809/"
%}

{% include citation
text="Corley et al, 2017"
tip="Corley, Susan M., et al. Differentially expressed genes from RNA-Seq and functional enrichment results are affected by the choice of single-end versus paired-end reads and stranded versus non-stranded protocols. BMC genomics 18.1 (2017): 399"
url="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5442695"
%}

{% include citation
text="Liu et al, 2013"
tip="Liu, Yuwen, Jie Zhou, and Kevin P. White. RNA-seq differential expression studies: more sequence or more replication?. Bioinformatics 30.3 (2013): 301-304"
url="https://academic.oup.com/bioinformatics/article/30/3/301/228651"
%}

{% include citation
text="Comparison of PE and SE for RNA-Seq, SciLifeLab"
url="https://ngisweden.scilifelab.se/file/1540-1_Comparison_of_PE_and_SE_for_RNA-seq.pdf"
%}
</p>

</br>

## De novo assembly

<p>
{% include citation
text="Hsieh et al, 2018"
tip="Hsieh, Ping-Han et al., Effect of de novo transcriptome assembly on transcript quantification 2018 bioRxiv 380998"
url="https://www.biorxiv.org/content/early/2018/08/22/380998"
%}

{% include citation
text="Wang et al, 2017"
tip="Wang, Sufang, and Michael Gribskov. Comprehensive evaluation of de novo transcriptome assembly programs and their effects on differential gene expression analysis. Bioinformatics 33.3 (2017): 327-333"
url="https://academic.oup.com/bioinformatics/article/33/3/327/2580374"
%}
</p>

## PCR and deduplication

<p>
{% include citation
text="Fu et al, 2018"
tip="Fu, Yu, et al. Elimination of PCR duplicates in RNA-seq and small RNA-seq using unique molecular identifiers. BMC genomics 19.1 (2018): 531"
url="https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-018-4933-1"
%}

{% include citation
text="Parekh et al, 2016"
tip="Parekh, Swati, et al. The impact of amplification on differential expression analyses by RNA-seq. Scientific reports 6 (2016): 25533"
url="https://www.nature.com/articles/srep25533"
%}

{% include citation
text="Klepikova et al, 2017"
tip="Klepikova, Anna V., et al. Effect of method of deduplication on estimation of differential gene expression using RNA-seq. PeerJ 5 (2017): e3091"
url="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5357343/"
%}
</p>

</br>

## Aligners

{% include citation
text="Baruzzo et al, 2017"
tip="Baruzzo, Giacomo, et al. Simulation-based comprehensive benchmarking of RNA-seq aligners. Nature methods 14.2 (2017): 135"
url="https://www.nature.com/articles/nmeth.4106"
%}

</br>

## Normalisation

{% include figure path="https://academic.oup.com/view-large/figure/1808412/bbs046f1p.tiff" caption="Fig: Comparison of normalization methods for real data." %}

(A) Boxplots of log2(counts + 1) for all conditions and replicates in the M. musculus data, by normalization method. (B) Boxplots of intra-group variance for one of the conditions (labeled ‘B’ in the corresponding data found in Supplementary Data) in the M. musculus data, by normalization method. (C) Analysis of housekeeping genes for the H. sapiens data. (D) Consensus dendrogram of differential analysis results, using the DESeq Bioconductor package, for all normalization methods across the four datasets under consideration.

{% include citation
text="Dillies et al, 2013"
tip="Dillies, Marie-Agnes, et al. A comprehensive evaluation of normalization methods for Illumina high-throughput RNA sequencing data analysis. Briefings in bioinformatics 14.6 (2013): 671-683"
url="https://www.ncbi.nlm.nih.gov/pubmed/22988256"
%}

{% include figure path="https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/bib/19/5/10.1093_bib_bbx008/4/bbx008f1p.jpeg?Expires=1645548115&Signature=wdyKe6Dq5p-3U2Bi6DSTAwb3Gbctbcw2KzT~hmpNFAvdS4ckZJb8hcz9zF9RKXjFUu2unhzWe7JdRYm8~VVJryHXvg34Lx3JUJIpF~nm-GVgX-QDxW1qKSXvXuKe~v5b840LtkJ5KjyuwGwR5IKKgcB6ftmzJdsqGmLxnFczz2m-asz0aTCbH8ZOizHbIVdFs9TQXeoB51rp8IQmkHZjDKtCgQ-oZengmbpDwMevcaD3KvsygTeIFx~jw-WKkOWkDhO0jBvPYII8CbOOEjOOQzDg3yWAHJKYuzZhhQ0MP4RCnS~5EZZAUJNAADoN9A6A2P6imQBHjVwX69Bs1Qdy6w__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" caption="One highly expressed gene. An experiment is performed with conditions A and B to compare expression for the three genes (1, 2 and 3)." %}

(A) Gene 3 is 2-fold up-regulated under condition B, while the other genes are not DE; the quantity of mRNA/cell (in bp) is the same for genes 1 and 2, but is twice as high for gene 3 under condition B. (B) Because of the change in expression of gene 3, the shares of mRNA in the cell are different between conditions. Under condition A, each gene gets one-third, whereas under condition B, gene 3 gets half while the other two get one-fourth. (C) Differences in shares of mRNA are reflected in the shares of reads. Each sample has the same total number of reads, but the distribution is different between the conditions, matching the distribution of mRNA in (B). (D) When no normalization is performed, there are apparent differences in read counts for all three genes. Total count normalization produces the exact same result as no normalization at all, as the total read count for each sample is the same. In truth, there is no difference in expression for genes 1 and 2, and the relative count for gene 3 should be higher than found by no normalization or total count normalization. Correct normalization, therefore, makes the read counts of the non-DE genes equivalent, which also makes the relative expression of gene 3 correct. (E) No normalization and total count normalization fail to equilibrate the read counts of the non-DE genes, resulting in each gene appearing DE, and the truly DE gene (gene 3) having the wrong fold change. Correct normalization reveals no difference in expression for the non-DE genes and the correct fold change for gene 3.

{% include figure path="https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/bib/19/5/10.1093_bib_bbx008/4/bbx008f2p.jpeg?Expires=1645548132&Signature=GwmC5z8o-~znQ38~k0dkDe3GWBLz4OYwYbqBYAkYU9eFkZ36wkXcFdNyn2fRcGita6LRWsR7-tO7xP7gEarjvX8zgGValJ8LpJB2Ie4RxQXPVRjbNqBhGgTfGtt65r5BiHKhk-Bl0EJlMAYF~kKflMbp36JremJiUvSqMbimGQGxOq9nkBvtAVz-H31UzFllD0NjlRLe89jGy4-ZGN-iSsKCmYVCrRZc-DBpQwnrgxvWJk5-c3QIEOgWJ7zUYNtY0ZWjgcUyqdtoI6IX8Kj6aFkzmwwHZwylg9oa49yeinskRc2cOxkqH8qd7IhXmkLMawfjlKKySzx4EXk2qqmXgQ__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" caption="Global shift in expression. There are two genes, and an experiment is performed to compare expression between condition A and condition B." %}

(A) There is global up-regulation under condition B versus condition A, with both genes having twice the expression under condition B. Within each condition, the two genes produce the same amount of mRNA/cell (measured in bp). (B) In the RNA-Seq experiment, the same number of molecules are sequenced from each of the two samples. Proportionally, the mRNA composition is the same under each condition, and so the composition of molecules sequenced is also the same. Within each condition, the two genes produce the same amount of mRNA (in bp) but gene 2 is four-fifth the length of gene 1, so must produce five-fourth the number of molecules that gene 1 does. (C) Sequenced reads are aligned to the reference genome and mapped to each gene. The distribution of reads is the same in each sample, but by chance the sample for condition A happens to have more reads in total. (D) Normalization is performed, which removes the differences in read count from technical variability, so the read count for each gene is the same across conditions. (E) Because the normalized read counts are the same, the observed fold change for each gene is 1, indicating no differential expression. However, genes are really twice as expressed under condition B and so in truth we should see half the expression when comparing A with B.

{% include citation
text="Evans et al, 2017"
tip="Evans, Ciaran, Johanna Hardin, and Daniel M. Stoebel. Selecting between-sample RNA-Seq normalization methods from the perspective of their assumptions. Briefings in bioinformatics (2017)"
url="https://academic.oup.com/bib/article/19/5/776/3056951"
%}

### Use of RPKM & TPM

Issues with RPKM and suggestion for use of TPM.

{% include citation
text="Wagner et al, 2012"
tip="Wagner, Gunter P., Koryu Kin, and Vincent J. Lynch. Measurement of mRNA abundance using RNA-seq data: RPKM measure is inconsistent among samples. Theory in biosciences 131.4 (2012): 281-285"
url="https://link.springer.com/article/10.1007/s12064-012-0162-3"
%}

> Below is a suggested workflow to follow in order to compare RPKM  or TPM values across samples.
>1. Make sure both samples are sequenced using the same protocol in terms of strandedness. If not, samples cannot be compared.
>2. Make sure both samples use the same RNA isolation approach   (polyA+ selection vs ribosomal RNA depletion). If not, they should not be compared.
>3. Check the fraction of the ribosomal, mitochondrial and globin RNAs, and the top highly expressed  transcripts  and  see  whether  such  RNAs  constitute a very large part of the sequenced reads in a   sample, and thus decrease the sequencing 'real estate' available for the remaining genes in that sample. If the calculated fractions in two samples differ significantly, do not compare RPKM or TPM values directly. TPM should never be used for quantitative comparisons across samples when the total RNA contents and its distributions are very  different. However, under appropriate circumstances,  TPM can be still useful for qualitative comparison such as PCA and clustering analysis.    

{% include citation
text="Zhao et al, 2020"
tip="Zhao, S., Ye, Z., & Stanton, R. (2020). Misuse of RPKM or TPM normalization when comparing across samples and sequencing protocols. Rna, 26(8), 903-909"
url="https://rnajournal.cshlp.org/content/early/2020/04/13/rna.074922.120"
%}

</br>

## Batch effect

{% include citation
text="Liu et al, 2016"
tip="Liu, Qian, and Marianthi Markatou. Evaluation of methods in removing batch effects on RNA-seq data. Infectious Diseases and Translational Medicine 2.1 (2016): 3-9"
url="http://www.tran-med.com/article/2016/2411-2917-2-1-3.html"
%}

{% include citation
text="Manimaran et al, 2016"
tip="Manimaran, Solaiappan, et al. BatchQC: interactive software for evaluating sample and batch effects in genomic data. Bioinformatics 32.24 (2016): 3836-3838"
url="https://academic.oup.com/bioinformatics/article/32/24/3836/2525651"
%}

</br>

## Differential gene expression

**Which DE tool should you use?**

{% include figure path="images/schurch-2016-1.png" %}

{% include figure path="images/schurch-2016-2.png" %}

{% include citation
text="Schurch et al, 2016"
tip="Schurch, Nicholas J., et al. How many biological replicates are needed in an RNA-seq experiment and which differential expression tool should you use?. Rna (2016)"
url="http://rnajournal.cshlp.org/content/early/2016/03/30/rna.053959.115.abstract"
%}

{% include citation
text="Seyednasrollah et al, 2013"
tip="Seyednasrollah, Fatemeh, et al. Comparison of software packages for detecting differential expression in RNA-seq studies. Briefings in bioinformatics 16.1 (2013): 59-70"
url="https://academic.oup.com/bib/article/16/1/59/240754"
%}

### Modelling in R

> If variable is a factor, then the two models with and without the intercept term are equivalent, but if variable is a covariate (continuous) the then two models are fundamentally different.

> In general, we suggest the inclusion of an intercept term for modelling explanatory variables that are covariates (continuous) since it provides a more flexible fit to the data points.

<p>
{% include citation
text="Law et al, 2020"
tip="Law, C. W., Zeglinski, K., Dong, X., Alhamdoosh, M., Smyth, G. K., & Ritchie, M. E. (2020). A guide to creating design matrices for gene expression experiments. F1000Research, 9, 1444."
url="https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7873980/"
%}

{% include citation
text="Soneson et al, 2020"
tip="Soneson, C., Marini, F., Geier, F., Love, M. I., & Stadler, M. B. (2020). ExploreModelMatrix: Interactive exploration for improved understanding of design matrices and linear models in R. F1000Research, 9, 512."
url="https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7359746/"
%}

{% include citation
text="Lae et al, 2016"
tip="Law, C. W., Alhamdoosh, M., Su, S., Dong, X., Tian, L., Smyth, G. K., & Ritchie, M. E. (2016). RNA-seq analysis is easy as 1-2-3 with limma, Glimma and edgeR. F1000Research, 5, ISCB Comm J-1408."
url="https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC4937821/"
%}
</p>

</br>

## Other

{% include citation
text="Teng et al, 2016"
tip="Teng, Mingxiang, et al. A benchmark for RNA-seq quantification pipelines. Genome biology 17.1 (2016): 74"
url="https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0940-1"
%}

</br>

## Reference & File formats

- Illumina [read quality scores](https://www.illumina.com/documents/products/technotes/technote_Q-Scores.pdf)  
- Illumina read name [format](http://support.illumina.com/content/dam/illumina-support/help/BaseSpaceHelp_v2/Content/Vault/Informatics/Sequencing_Analysis/BS/swSEQ_mBS_FASTQFiles.htm)  
- GTF [format](https://www.ensembl.org/info/website/upload/gff.html)]  
- SAM file [format](http://www.htslib.org/doc/sam.html)]  

</br>

## Software

### Reads and general QC

- {% include tool text="FastQC" url="https://www.bioinformatics.babraham.ac.uk/projects/fastqc/" %}
- {% include tool text="MultiQC" url="https://multiqc.info/" %}

### Aligners (Mapper)

- {% include tool text="STAR" url="https://github.com/alexdobin/STAR" %}
- {% include tool text="HISAT2" url="http://daehwankimlab.github.io/hisat2/" %}

### Pseudoaligners

- {% include tool text="Kallisto" url="https://pachterlab.github.io/kallisto/" %}
- {% include tool text="Salmon" url="https://combine-lab.github.io/salmon/" %}

### Aligned QC

Tools to assess post-alignment quality, ie; after mapping of reads to a reference.

- {% include tool text="QoRTs" url="https://hartleys.github.io/QoRTs/" %}
- {% include tool text="RSeQC" url="http://rseqc.sourceforge.net/" %}
- {% include tool text="Qualimap" url="http://qualimap.bioinfo.cipf.es/" %}

### Quantification

- {% include tool text="featureCounts" url="http://bioinf.wehi.edu.au/featureCounts/" %}
- {% include tool text="HTSeq" url="https://github.com/simon-anders/htseq" %}
- {% include tool text="RSEM" url="https://deweylab.github.io/RSEM/" %}

### Genome browsers

Interactive exploration of BAM files, ie; reads aligned to a reference.

- {% include tool text="IGV" url="http://software.broadinstitute.org/software/igv/" %}
- {% include tool text="UCSC Genome Browser" url="https://genome.ucsc.edu/" %}
- {% include tool text="SeqMonk" url="https://www.bioinformatics.babraham.ac.uk/projects/seqmonk/" %}

### Batch correction

- {% include tool text="SVA" url="http://bioconductor.org/packages/release/bioc/html/sva.html" %}
- {% include tool text="PVCA" url="https://bioconductor.org/packages/release/bioc/html/pvca.html" %}
- {% include tool text="BatchQC" url="http://bioconductor.org/packages/release/bioc/html/BatchQC.html" %}

### GSA/GSEA

- Convert gene IDs {% include tool text="gProfiler" url="https://biit.cs.ut.ee/gprofiler/convert" %}
- OSA/ORA Online {% include tool text="Enrichr" url="https://maayanlab.cloud/Enrichr/" %}
- ORA/GSEA/NTA Online {% include tool text="Webgestalt" url="http://www.webgestalt.org" %}
- ORA/GSEA in R {% include tool text="clusterProfiler" url="https://bioconductor.org/packages/release/bioc/html/clusterProfiler.html" %}
- Standalone software {% include tool text="ErmineJ" url="https://erminej.msl.ubc.ca/" %}
- Plot genes on Kegg pathways in R {% include tool text="pathview" url="https://bioconductor.org/packages/release/bioc/html/pathview.html" %}
- Cytoscape plugin {% include tool text="ClueGO" url="http://apps.cytoscape.org/apps/cluego" %}

### GUI

Graphical User Interfaces for analysis of RNA-Seq data.

- {% include tool text="Galaxy" url="https://usegalaxy.org/" %}
- {% include tool text="SeqMonk" url="https://www.bioinformatics.babraham.ac.uk/projects/seqmonk/" %}
- Commercial software {% include tool text="Qiagen CLC Genomics workbench" url="https://digitalinsights.qiagen.com/products-overview/discovery-insights-portfolio/analysis-and-visualization/qiagen-clc-genomics-workbench/" %} {% include tool text="Geneious" url="https://www.geneious.com/" %}

## Courses, Workshops & Tutorials

- University of Cambridge [workshop](https://bioinformatics-core-shared-training.github.io/RNAseq-R/)
- Bioconductor RNA-Seq workflow in R [rnaseqGene](https://bioconductor.org/packages/release/workflows/vignettes/rnaseqGene/inst/doc/rnaseqGene.html)
- Griffith Lab [RNA-Seq tutorial](https://github.com/griffithlab/rnaseq_tutorial)

## Other

- Estimating storage requirements for FASTQ files

> - One .fastq file for Single-End sequencing
>   - .fastq MB = Number of million reads x (60 + 2 x read length in bp)
> - Paired-End sequencing produces 2 fastq files
>   - .fastq MB = Number of million reads x (60 + 2 x read length in bp) x 2
> - It is recommended to store .fastq files in a compressed format (ex: .gz), which makes the file approximately 4 times smaller.

{% include citation
text="Exilir Belgium"
url="https://rdm.elixir-belgium.org/data_volume.html"
%}
