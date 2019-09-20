---
layout: default
title:  'FAQ'
---

# FAQ 


**What is the genome build used in rawcopy package?**

Hg19.

 

**I would like to use the rawcopy on another array (600k affymetrix maize array). But affxparser failes to parse the header of the CEL file. Are you familiar with any methods to get rawcopy working anyway?**

Sorry but it won't work for any array other than SNP6 and CytoScan.

 

**Can this software analyze affymetrix (thermofisher) OncoScan files as well?**

Oncoscan is a very different technology and is not supported in Rawcopy. But affymetrix should have a standard software available. 

 

**Which column represents Log R ratios for the given sample in the segment2 file?**

The column with the sample name.

 

**Where can I find the results of Log R ration and BAF in the output files?**

You can use writeData=TRUE to write them to text files.

 

**In the file of segments.txt, does the results in colunm "Value" mean the same as "mean" in output of PSCBS?**

Yes, an estimate of the segmented log ratio

 

**How is the Allelic imbalance estimate and BAF related?**

Allelic imbalance is a measure of the divergence of germine heterozygous SNPs. In case of unequal number of copies betwen the two normal homologous copies, the allelic imbalance increases. Please see our paper: https://www.nature.com/articles/srep36158

 

**What LogR thresholds should be used for gain/loss calls?**

Rawcopy presents the copy number in a "raw" fashion, that is, without guessing the thresholds for copy gain, loss, etc. That the best way to investigate copy numbers, as the thresholds would differ between samples and depend on the general ploidy of the genome and purity of the sample. Look at each sample and choose its thresholds depending on at which log-R you see the different copy numbers. There are examples available at rawcopy.org.

 

**My BAF range extends beyond 0-1, is this normal?**

The true BAF is between 0 and 1, but the observed BAF may become less than 0 and more than 1 as a result of comparison to the reference distribution of normals.

 

**I got no BAF value for most SNPs. Could you tell me how I should interpret this information to have a valid BAF file input for ASCAT, please?**

Log ratio and BAF for all markers are available separately and are called "probes.txt" and "snps.txt" (as txt files if you used "writeData=TRUE" or else in the rawcopy.Rdata environment). Note that only a subset of markers are SNPs and therefore have BAF.

 

**We have cancer cell line CNV data at various time points (4 points). So in this context we want to compare original cell line data with next time point. Can you please explain how to incorporate our reference data and identify Gains and Losses with respect to my own control?**

We do not recommend subtracting the signal of one cancer sample from another - that obscures the actual copy numbers involved. Look at the samples one by one, the differences should be evident (and usually not so many).

 

**I would like to submit my paired normal .CEL files to use as a reference as I believe it will be more informative than the references which I believe come preloaded with Rawcopy.  Could you tell me how I would go about using my paired normal references?**

**We recommend that you run all CEL files using the built-in references (so just put both tumor and normal files in a folder and run).**

It will be better than running paired as

1) you will remove more noise,

2) you will see germline variants clearly in the normals, and all variants in the tumors (e.g. homozygous loss due to germline cnv + somatic loss will be visible, not obscured),

3) if you were to subtract a mismatched normal somewhere, or a normal that actually has a bunch of aberrations, things get very weird.

4) you will have a clear distinction between somatic LOH and germline homozygosity / UPD / consanguinity.

5) you will get a super pretty distogram to verify all pairwise genetic similarities (including proper pair matching).

 

**Some samples are grossly aneuploid with losses of multiple whole chromosomes. This challenges many normalization algorithms and leads to incorrect copy number calls. As you calculate BAF, could not "copy number=2" be centered to logR=0?**

Rawcopy makes no calls and no error-prone guessing. It simply centers the data at a robust estimate of the median copy number. For most samples the ploidy and purity can be estimated visually from the figures. This is how we intend Rawcopy to be used. You can then choose thresholds for gain, loss, etc and apply them as you see fit.

 

**Your paper refers to building a local reference set of files. Can you comment on how that is accomplished and implemented?**

This is a simple addition to the built-in reference data (which is first applied for both the querie sample(s), and for the local references). A median is computed over the local reference samples, per probe, and subtracted from the LogR of the querie sample(s). You should not bother with this unless your DNA quality is very different from ours (i.e. you see noisy or wavy results when running without local reference).

 

**I have seen that CNVs are not the same for segment.txt file and for the saved cna.profile.Rdata. In fact, I only see a matching between probes in probes.txt file and cna.profile.Rdata but not for segment.txt. I would except they were equal, could you explain the reason, please?**

The segments(.txt) are generated by the segmentation algorithm, and represent the most likely breakpoints. Some of these segments will be CNVs, you need to apply thresholds for that based on your aims (perhaps GISTIC does that).

The cna.profile.Rdata is only used for the cluster image of copy number profiles. Its segments are fixed to allow comparision between samples. Do not use this data structure for anything else.

The probes.txt is a table of all markers. Use it for example if you prefer a different solution for generating segments.





