---
layout: default
title:  'install'
---

#Installation

Rawcopy dependencies:

Java:
Download and install 
<a href="http://www.oracle.com/technetwork/java/javase/downloads/jre7-downloads-1880261.html">
Java SE Runtime Environment 7</a>


R-code from Bioconductor:

```R
source("http://bioconductor.org/biocLite.R")
biocLite("affxparser")
biocLite("DNAcopy")
```

**If** biocLite doesn't work, the Package Source files have to be downloaded and installed manually from:
<a href="http://www.bioconductor.org/packages/release/bioc/html/affxparser.html">http://www.bioconductor.org/packages/release/bioc/html/affxparser.html</a>
<a href="http://www.bioconductor.org/packages/release/bioc/html/DNAcopy.html">http://www.bioconductor.org/packages/release/bioc/html/DNAcopy.html</a>

```R
install.packages('Path/affxparser_1.38.0.tar.gz,type='source',repos=NULL)
install.packages('Path/DNAcopy_1.40.0.tar.gz,type='source',repos=NULL)
```

R-code from cran:

```R
install.packages(c('foreach','xlsx','PSCBS','squash','digest'))
```

Rawcopy installation:

```R
install.packages('Path to directory/rawcopy_1.0.tar.gz',type='source',repos=NULL)
```


When running on windows you may get these warnings messages:

1. package ‘foreach’ was built under R version 3.1.2
2. package ‘PSCBS’ was built under R version 3.1.2
3. executing %dopar% sequentially: no parallel backend registered




<p align="left">
<a href="https://www.youtube.com/watch?v=ovWiGns43v4" target="_blank"><img src="http://img.youtube.com/vi/ovWiGns43v4/0.jpg" 
alt="Youtube instructions" width="480" height="360" border="5" /></a>
</p>
