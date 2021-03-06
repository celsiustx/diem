% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/var.R
\name{get_var_genes}
\alias{get_var_genes}
\title{Get variable genes}
\usage{
get_var_genes(
  x,
  n_genes = 2000,
  lss = 0.3,
  droplets.use = NULL,
  threads = 1,
  verbose = FALSE
)
}
\arguments{
\item{x}{An SCE object.}

\item{n_genes}{Number of variable genes to return.}

\item{lss}{Numeric value of the span parameter of the loess regression.}

\item{droplets.use}{Vector of droplet IDs to use for getting variable 
genes. Default is to use the test set.}

\item{threads}{Number of threads for parallel execution. Default is 1.}

\item{verbose}{Verbosity.}
}
\value{
An SCE object
}
\description{
This function finds the variable genes in an SCE object. 
The means and variances of the genes are calculated from the raw counts 
of the cluster set. Then, the means and variances are log-transformed 
after adding a constant of 1. A loess regression line is fit between 
the log counts and log variance, and the only top genes 
ranked by residual are variable genes used to initialize the clusters. 
The number of genes is specified with \code{n_genes}. 
The span for the loess function is given by \code{lss} 
(default is 0.3).
}
