---
layout: default
title:  'install'
---

# Installation

### Rawcopy dependencies:
 
#### R:
Rawcopy is an R-package, download and install the development version of R (r-base-dev) from:  
<a href='https://cran.r-project.org/'>https://cran.r-project.org/</a> 


#### R-code from Bioconductor:

```R
source("http://bioconductor.org/biocLite.R")
biocLite("affxparser")
biocLite("DNAcopy")
```

**If** biocLite doesn't work, the Package Source files have to be downloaded and installed manually from:

<a href='http://www.bioconductor.org/packages/release/bioc/html/affxparser.html'>http://www.bioconductor.org/packages/release/bioc/html/affxparser.html</a>  
<a href='http://www.bioconductor.org/packages/release/bioc/html/DNAcopy.html'>http://www.bioconductor.org/packages/release/bioc/html/DNAcopy.html</a>


```R
install.packages('Path/affxparser_1.38.0.tar.gz',type='source',repos=NULL)
install.packages('Path/DNAcopy_1.40.0.tar.gz',type='source',repos=NULL)
```

#### R-code from cran:

```R
install.packages(c('foreach','doMC','PSCBS','squash','digest','ape','SDMTools'))
```

**If** PSCBS doesn't work, the package source files have to be downloaded and installed manually from:  
<a href='https://cran.r-project.org/src/contrib/Archive/PSCBS/PSCBS_0.43.0.tar.gz'>https://cran.r-project.org/src/contrib/Archive/PSCBS/PSCBS_0.43.0.tar.gz</a> 

```R
install.packages(c('R.utils','matrixStats','R.cache'))
install.packages('Path/PSCBS_0.43.0.tar.gz',repos=NULL,type='source')
```


#### Rawcopy installation:

```R
install.packages('rawcopy',repos='http://array.medsci.uu.se/R',type='source')
```


When running on windows you may get these warnings messages:

1. package ‘foreach’ was built under R version 3.1.2
2. package ‘PSCBS’ was built under R version 3.1.2
3. executing %dopar% sequentially: no parallel backend registered  

### Source code:
The source code is available on bitbucket:  
<a href='https://bitbucket.org/n0s3n/rawcopy'>https://bitbucket.org/n0s3n/rawcopy</a>
