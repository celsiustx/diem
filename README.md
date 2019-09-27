
# DIEM

Remove debris-contaminated droplets from single-cell based data.

## Installation

`diem` requires the following packages to be installed:

* [Matrix](https://cran.r-project.org/web/packages/Matrix/index.html)
* [dbscan](https://cran.r-project.org/web/packages/dbscan/index.html)
* [igraph](https://cran.r-project.org/web/packages/igraph/index.html)

The `diem` package also makes use of the ggplot2 and scales packages 
for plotting.

Currently, we only support installation of the `diem` R package 
through devtools

```R
library(devtools)
devtools::install_github("marcalva/diem")
```

## Usage

Check out the vignette for a thorough tutorial on using `diem`. 

Shown below is a quick workflow for reading 10X data, filtering 
droplets using default parameters, and converting to a 
seurat object

```R
library(diem)
library(Seurat)
counts <- read_10x(path/to/10x)
sce <- create_SCE(counts)
sce <- diem(sce)
seur <- convert_to_seurat(sce)
```

