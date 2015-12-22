\name{PtH2O2lipids}
\alias{PtH2O2lipids}
\alias{ptH2O2lipids}
\docType{data}
\title{
P. tricornutum HPLC-ESI-MS Lipid Data from van Creveld et al. (2015)
}
\description{
Positive ionization mode HPLC-ESI-MS lipid data from an experiment in
which cultures of the marine diatom \strong{Phaeodactylum tricornutum} were treated
with various concentrations of hydrogen peroxide (H2O2) to induce oxidative
stress. \code{PtH2O2lipids$LOBSet} was generated from
\code{PtH2O2lipids$xsAnnotate} using the \code{LOBSTAHS} function.
}
\usage{data(PtH2O2lipids)}
\format{
  A list object containing the lipid data in two forms:
  \describe{
    \item{\code{PtH2O2lipids$LOBSet}}{A 1.2 MB object of formal class
    \sQuote{LOBSet} containing screened peak data to which compound assignments
    and isomer identifications have been made. The structure of the of
    \code{PtH2O2lipids$LOBSet} is: \preformatted{
    Formal class 'LOBSet' [package "LOBSTAHS"] with 9 slots
  ..@ peakdata             :'data.frame':	1969 obs. of  54 variables
  ..@ iso.C3r              :List of 1969
  ..@ iso.C3f              :List of 1969
  ..@ iso.C3c              :List of 1969
  ..@ LOBscreen.diagnostics:'data.frame':	6 obs. of  4 variables:
  ..@ LOBisoID.diagnostics :'data.frame':	3 obs. of  2 variables:
  ..@ LOBscreen.settings   :List of 6
  .. ..$ database     : chr "default"
  .. ..$ remove.iso   : logi TRUE
  .. ..$ rt.restrict  : logi TRUE
  .. ..$ rt.windows   : chr "default"
  .. ..$ exclude.oddFA: logi TRUE
  .. ..$ match.ppm    : num 2.5
  ..@ polarity             : Factor w/ 1 level "positive": 1
  ..@ sampnames            : chr [1:16] "0uM_24h_Orbi_0468" "0uM_24h_Orbi_0473" "0uM_4h_Orbi_0476" "0uM_8h_Orbi_0472" ...
  }}
  \item{\code{PtH2O2lipids$xsAnnotate}}{An 80 MB object of formal class
  \sQuote{xsAnnotate} containing 18,314 peakgroups in 5,080 pseudospectra. This
  is the object from which \code{PtH2O2lipids$LOBSet} was created using
  \code{doLOBscreen}. It includes annotation of possible isotope peaks from
  \code{findIsotopes}. The \code{xcmsSet} from which the xsAnnotate object was
  created (64.5 MB) can be accessed at \code{PtH2O2lipids$xsAnnotate@xcmsSet}.
  }
  }
  }
\details{
\code{doLOBscreen()} and includes compound identifications assigned from the
default \code{LOBSTAHS} positive mode database. \code{PtH2O2lipids$LOBSet} also
includes in \code{@iso.C3r}, \code{@iso.C3f}, and \code{@iso.C3c} the various
possible isomers identified for each compound. The dataset contains peaks from
16 samples that span three H2O2 treatments (0, 30 and 150 {\mu}M) and
three timepoints (+4, +8, and +24 hours) in duplicate. The dataset contains only
one replicate sample for the 0 and 150 {\mu}M treatments at + 4h. The
mzXML files and Thermo .raw files from which these objects are derived can be
accessed at
\url{https://github.com/vanmooylipidomics/PtH2O2lipids/tree/master/mzXML} and
\url{http://www.whoi.edu/page.do?pid=133616&tid=282&cid=192529}, respectively.
}
\source{\url{http://www.nature.com/ismej/journal/v9/n2/full/ismej2014136a.html}
}
\references{
\item{Collins, J.R., B.R. Edwards, H.F. Fredricks, and B.A.S. Van Mooy,
\dQuote{Untargeted discovery and identification of oxidative stress biomarkers
using a lipidomics pipeline for complex datasets}
}
\item{Graff van Creveld, et al., 2015, \dQuote{Early perturbation in mitochondria
redox homeostasis in response to environmental stress predicts cell fate in
diatoms}, \strong{ISME Journal} 9:385-395
}
}
\seealso{
  \code{\link[LOBSTAHS]{LOBSet}},
  \code{\link[xcms]{xcmsSet}},
  \code{\link[CAMERA]{xsAnnotate}}
}
\examples{
## generate the object in PtH2O2lipids$LOBSet using PtH2O2lipids$xsAnnotate as input
library(xcms)
library(CAMERA)
library(LOBSTAHS)
data("PtH2O2lipids")

# yields output identical to PtH2O2lipids$LOBSet
myPtH202LOBSet = doLOBscreen(PtH2O2lipids$xsAnnotate, polarity = "positive",
database = NULL, remove.iso = TRUE, rt.restrict =  TRUE, rt.windows = NULL,
exclude.oddFA = TRUE, match.ppm = 2.5)

## access xsAnnotate object
PtH2O2lipids$xsAnnotate

## access xcmsSet
PtH2O2lipids$xsAnnotate@xcmsSet

}
\keyword{datasets}
