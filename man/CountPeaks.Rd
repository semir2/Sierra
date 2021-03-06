% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count_polyA.R
\name{CountPeaks}
\alias{CountPeaks}
\title{count polyA sites in cells}
\usage{
CountPeaks(
  peak.sites.file,
  gtf.file,
  bamfile,
  whitelist.file,
  output.dir,
  countUMI = TRUE,
  ncores = 1
)
}
\arguments{
\item{peak.sites.file}{a file containing peak coordinates generated by FindPeaks}

\item{gtf.file}{reference (GTF) file}

\item{bamfile}{scRNA-seq BAM file}

\item{whitelist.file}{white list file}

\item{output.dir}{name of directory to write output (will be created if it doesn't exist)}

\item{countUMI}{whether to count UMIs (default: TRUE)}

\item{ncores}{Number of cores for multithreading}
}
\value{
NULL. Writes counts to file.
}
\description{
Generates a count matrix
}
\examples{

extdata_path <- system.file("extdata",package = "Sierra")
reference.file <- paste0(extdata_path,"/Vignette_cellranger_genes_subset.gtf")

bamfile <- c(paste0(extdata_path,"/Vignette_example_TIP_sham.bam"),
             paste0(extdata_path,"/Vignette_example_TIP_mi.bam") )
             
whitelist.bc.file <- paste0(extdata_path,"/example_TIP_sham_whitelist_barcodes.tsv")
  
peak.merge.output.file = paste0(extdata_path, "/TIP_merged_peaks.txt")
 
\dontrun{                                
CountPeaks(peak.sites.file = peak.merge.output.file, 
             gtf.file = reference.file,
             bamfile = bamfile[1], 
             whitelist.file = whitelist.bc.file[1],
             output.dir = count.dirs[1], 
             countUMI = TRUE, 
             ncores = 1)
 }


}
