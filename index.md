---
layout: default
title:  'Home'
---

#Rawcopy

##About
Rawcopy is an R package for processing of Affymetrix CytoScan HD, CytoScan 750k and SNP 6.0 microarrays for copy number analysis. It takes CEL files (raw microarray intensity values) as input. Output consists of:

<b>Log ratio</b>: normalized intensity per probe relative to sample median and a reference data set  
<b>B-allele frequency or BAF</b>: estimated abundance of the B allele relative to total abundance, SNP probes only  
<b>Segments</b>: genomic segments of unchanging copy number, estimated using the PSCBS package  
<b>Figures</b>: several figures per sample and sample set are plotted for the user's convenience, some examples are shown below


##Images

### Qc-plots
<a href='/images/qc.MB-E-Pri-1384.png'> 
<img src='/images/qc.MB-E-Pri-1384.png' width="400px">
</a>
<a href='/images/qc.MB-E-Met-1385.png'> 
<img src='/images/qc.MB-E-Met-1385.png' width="400px">
</a>


### Distogram
<a href='/images/sampleIdentityDistogram.pdf'> 
<img src='/images/sampleIdentityDistogram.pdf'  width="400px">
</a>



