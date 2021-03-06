% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post.R
\name{top_genes}
\alias{top_genes}
\title{Get top up-regulated genes per cluster}
\usage{
top_genes(x, top_n = 20)
}
\arguments{
\item{x}{An SCE object.}

\item{top_n}{Number of top DE genes to return.}
}
\value{
An SCE object.
}
\description{
Extract marker genes for each cluster by ranking them based on the 
difference of their proportion means from the multinomial
distributions estimated by DIEM. Output the top \code{top_n} 
genes for each cluster.
}
