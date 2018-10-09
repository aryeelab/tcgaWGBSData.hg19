\name{tcgaWGBSData.hg19-package}

\alias{tcgaWGBSData.hg19-package}
\alias{tcgaWGBSData.hg19}

\title{TCGA Whole Genome Bisulfite Sequencing (WGBS) data available as 
\code{bsseq} object.}

\description{
    TCGA re-processed Whole Genome Bisulfite Sequencing (WGBS) data with 39 
    tumor samples and 8 normal samples. Publicly available BED file for these
    47 samples can be found here. 
    (https://portal.gdc.cancer.gov/legacy-archive/search/f?filters=%7B%22op%22:
    %22and%22,%22content%22:%5B%7B%22op%22:%22in%22,%22content%22:%7B%22field
    %22:%22files.experimental_strategy%22,%22value%22:%5B%22Bisulfite-Seq%22%
    5D%7D%7D,%7B%22op%22:%22in%22,%22content%22:%7B%22field%22:%22files.data_
    format%22,%22value%22:%5B%22BED%22%5D%7D%7D%5D%7D) 
    These data have been processed and aligned to hg19 genome and are available
    as \code{SummarizedExperiment} objects and are available in 
    \code{ExperimentHub}.
}

\details{
    See the vignette for examples of using these data to calculate mean 
    methylation and conduct differential methylation analysis.
  
    browseVignettes("tcgaWGBSData.hg19")
    Details of how these data were created are in the scripts/ directory
    of the source package.
}

\examples{
    library(ExperimentHub)
    hub <- ExperimentHub()
    x <- query(hub, "tcgaWGBSData.hg19")
    \dontrun{
    tcga_data <- eh[["EH1661"]]
    TCGA_bs <- eh[["EH1662"]]

    assay_file <- tcga_data
    rds_file <- paste0(dirname(tcga_data),'/1662')

    file.rename(from=assay_file, to=paste0(dirname(tcga_data),'/assays.h5'))
    file.rename(from=rds_file, to=paste0(dirname(tcga_data),'/se.rds'))
    TCGA_bs <- HDF5Array::loadHDF5SummarizedExperiment(dirname(tcga_data))
  }}

\keyword{utilities}