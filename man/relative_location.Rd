% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting_functions.R
\name{relative_location}
\alias{relative_location}
\title{Given a peak position in a 3'UTR out of some n number of peaks,
relative to the terminating exon, calculate the relative position
of the query peak location on a scale of 0 to 1, where 0 indicates
the most proximal location and 1 indicates most distal.}
\usage{
relative_location(location, n)
}
\arguments{
\item{location}{location}

\item{n}{number of locations}
}
\description{
Given a peak position in a 3'UTR out of some n number of peaks,
relative to the terminating exon, calculate the relative position
of the query peak location on a scale of 0 to 1, where 0 indicates
the most proximal location and 1 indicates most distal.
}
