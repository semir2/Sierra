% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataset_merging.R
\name{generate_self_similarity_table}
\alias{generate_self_similarity_table}
\title{Generates a table of similarity measures within a set of peaks}
\usage{
generate_self_similarity_table(peaks.1, ncores = 1)
}
\arguments{
\item{peaks.1}{the set of peaks to merge}

\item{ncores}{Number of cores for multithreading}
}
\value{
a data-frame with peaks from peaks.1 mapped to the closest peak within itself
}
\description{
In some rare cases, called peaks will show a high degree of overlap, and before
merging two different sets of peaks, the similar peaks within a set first need
to be merged. This function looks for the most similar peak (non-self) within a set of peaks
and calculates the level of overlap.
}
\examples{
\dontrun{
generate_similarity_table(peaks.1)
}
}
