% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/objects.R
\name{droplet_data}
\alias{droplet_data}
\title{Return the droplet data from an SCE object}
\usage{
droplet_data(x, min_counts = 1, type = "test")
}
\arguments{
\item{x}{An SCE object.}

\item{min_counts}{Minimum number of read counts a droplet must have to 
be output.}

\item{type}{One of either 'test' (default), 'clean', 'debris', or 'all'. 
specifying how to subset the data frame to include only those droplets.
The droplets in 'clean' and 'debris' make up the droplets in 
'test'. If 'all', returns all droplets.}
}
\value{
A data frame
}
\description{
Return droplet data. This 
contains data such as number of counts and genes in each droplet, as 
well as some of the output from the filtering, such as whether the 
droplet is classified as debris or cell/nucleus. The parameter 
\code{min_counts} filters out droplets (rows) by removing those 
with counts below this number. By default, returns all droplets in 
the test set. To return clean droplets, set the \code{type} parameter 
to 'clean', to return debris droplets in the test set, set to 'debris', 
and to return all droplets in the data set, set to 'all'.
}
