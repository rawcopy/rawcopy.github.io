---
layout: default
title:  'How to'
---

# How to 



Load the package:

```R
library(rawcopy)
```

Run samples in a directory:

```R
setwd('Path to .CEL-file directory')
rawcopy()
```

Run samples in a directory on multiple cores (~6GB of RAM is required per core):

```R
setwd('Path to .CEL-file directory')
rawcopy(cores=8)
```

