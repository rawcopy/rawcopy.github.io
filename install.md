---
layout: default
title:  'install'
---

# Installation

### Rawcopy dependencies:
 
#### R:
Rawcopy is an R-package, download and install the development version of R (r-base-dev) from:  
<a href='https://cran.r-project.org/'>https://cran.r-project.org/</a> 

The installation now require the package `devtools` from cran. On Ubuntu 20.04 and R 4.3.0 it needed the following dependencies:

```bash
sudo apt install libcurl4-openssl-dev libxml2-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
```


#### R-code from Bioconductor:

```R
install.packages("BiocManager")
BiocManager::install()
BiocManager::install(c("DNAcopy", "affxparser",'aroma.light'))
```

#### R-code from cran:

```R
install.packages(c('foreach','doMC','PSCBS','squash','digest','ape', 'devtools'))
install.packages('https://cran.r-project.org/src/contrib/Archive/SDMTools/SDMTools_1.1-221.2.tar.gz', type='source', repos=NULL)
```

#### Rawcopy installation:

```R
library(devtools)
install_bitbucket('n0s3n/rawcopy/rawcopyPackage')
```


When running on windows you may get these warnings messages:

1. package ‘foreach’ was built under R version 3.1.2
2. package ‘PSCBS’ was built under R version 3.1.2
3. executing %dopar% sequentially: no parallel backend registered  

### Source code:
The source code is available on bitbucket:  
<a href='https://bitbucket.org/n0s3n/rawcopy'>https://bitbucket.org/n0s3n/rawcopy</a>
