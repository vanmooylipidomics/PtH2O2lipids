# PtH2O2lipids
Repository for the R data package **PtH2O2lipids**. PtH2O2lipids contains processed, positive ionization mode HPLC-ESI-MS lipid data from an experiment in which cultures of the marine diatom *Phaeodactylum tricornutum* were treated with various concentrations of hydrogen peroxide (H2O2) to induce oxidative stress. The experiment is described in [Graff van Creveld, et al., 2015, "Early perturbation in mitochondria redox homeostasis in response to environmental stress predicts cell fate in diatoms," ISME Journal 9:385-395](http://www.nature.com/ismej/journal/v9/n2/full/ismej2014136a.html). If citing this package, please also [cite this manuscript](http://dx.doi.org/10.1021/acs.analchem.6b01260). Currently, the files must be compiled into a package on the user's machine using **devtools**. Installation directions are below.

<h4>Package description</h4>

Upon executing `library(PtH2O2lipids)`, a list object `ptH2O2lipids` is loaded into the user's environment. `ptH2O2lipids` consists of the positive ionization mode data in several states:  

1. `ptH2O2lipids$xsAnnotate`: An 80 MB [CAMERA](https://bioconductor.org/packages/release/bioc/html/CAMERA.html) "xsAnnotate" object containing annotated, positive ionization mode HPLC-ESI-MS lipid data that have been assigned to 5,080 pseudospectra. Includes annotation of possible isotope peaks from `findIsotopes`. The [xcms](https://bioconductor.org/packages/release/bioc/html/xcms.html) xcmsSet from which the xsAnnotate object was created (64.5 MB) can be accessed at `PtH2O2lipids$xsAnnotate@xcmsSet`. The xcmsSet was created from 16 positive mode mzXML files containing centroided data from an Exactive Orbitrap mass spectrometer in the Van Mooy Lab at WHOI. Conversion of the original Thermo .raw files to .mzXML was accomplished using an implentation of the msconvert command-line tool in [Exactive_full_scan_process_ms1+.r](https://github.com/vanmooylipidomics/LipidomicsToolbox/blob/master/Exactive_full_scan_process_ms1%2B.r). The PtH2O2 xcmsSet and xsAnnotate objects were created from the source .mzXML files (see link to download below) using the xcms and CAMERA settings in the script [prepOrbidata.R](https://github.com/vanmooylipidomics/LipidomicsToolbox/blob/master/prepOrbidata.R). Both [Exactive_full_scan_process_ms1+.r](https://github.com/vanmooylipidomics/LipidomicsToolbox/blob/master/Exactive_full_scan_process_ms1%2B.r) and [prepOrbidata.R](https://github.com/vanmooylipidomics/LipidomicsToolbox/blob/master/prepOrbidata.R) can be found in the Van Mooy Lab [Lipidomics Toolbox](https://github.com/vanmooylipidomics/LipidomicsToolbox/).

2. `ptH2O2lipids$LOBSet`: A 1.2 MB [LOBSTAHS](https://github.com/vanmooylipidomics/LOBSTAHS/) "LOBSet" object containing screened peak data (accessed via `peakdata(ptH2O2lipids$LOBSet)`) to which compound identifications have been made from the default LOBSTAHS positive mode database. The object also includes in the slots `iso_C3r`, `iso_C3f`, and `iso_C3c` the various possible isomers identified for each compound. `ptH2O2lipids$LOBSet` was created using:

```R

doLOBscreen(xsAnnotate, polarity = "positive", database = NULL,
            remove.iso = TRUE, rt.restrict =  TRUE, rt.windows = NULL,
            exclude.oddFA = TRUE, match.ppm = 2.5)

```

Arguments of `NULL` for `database` and `rt.windows` cause the function to use the package default database and retention time windows. Generation of the database was accomplished using the LOBSTAHS function `generateLOBdbase()`. Methods used to create the databases and retention time windows are described in Collins, J.R., B.R. Edwards, H.F. Fredricks, and B.A.S. Van Mooy, 2016, "LOBSTAHS: An adduct-based lipidomics strategy for discovery and identification of oxidative stress biomarkers," in review, *Anal. Chem.*

Users should note that the version of the ptH2O2lipids LOBSet in this package does not include any PUA identifications. 

<h4>.mzXML and .raw data files</h4>
The .mzXML and Thermo (.raw) data files from which the objects in the dataset were created are not included in the `PtH2O2lipids` library due to their very large size.

   * The converted and centroided .mzXML files can be downloaded from [PtH2O2lipids/mzXML](https://github.com/vanmooylipidomics/PtH2O2lipids/tree/master/mzXML)
   * The original Thermo .raw files and some metadata can be accessed at http://www.whoi.edu/page.do?pid=133616&tid=282&cid=192529.
   
<h4>Installation</h4>

**Install all dependencies except LOBSTAHS**

```R

source("http://bioconductor.org/biocLite.R")
biocLite("CAMERA")
biocLite("xcms")

```

**Install RTools**

For windows:
Download and install RTools from [http://cran.r-project.org/bin/windows/Rtools/](http://cran.r-project.org/bin/windows/Rtools/)

For Unix:
Install the R-development-packages (r-devel or r-base-dev)

Install packages needed for installation from Github:

```R

install.packages("devtools")

```

**Install LOBSTAHS**

```R

library("devtools")
install_github("vanmooylipidomics/LOBSTAHS") 

```

**Install 'PtH2O2lipids,' containing example data & xsAnnotate object**

```R
## install dataset 'PtH2O2lipids'
## see LOBSTAHS documentation for examples 

install_github("vanmooylipidomics/PtH2O2lipids")

```

