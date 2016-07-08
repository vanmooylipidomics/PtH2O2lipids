.onLoad <- function(libname, pkgname)
{
#   suppressPackageStartupMessages(require(xcms))
#   suppressPackageStartupMessages(require(CAMERA))
#   suppressPackageStartupMessages(require(LOBSTAHS))
#   suppressPackageStartupMessages(require(methods))
  suppressPackageStartupMessages(requireNamespace("utils"))
  load(file.path(find.package("PtH2O2lipids"), "data", "ptH2O2lipids.RData"))
  assign("ptH2O2lipids", ptH2O2lipids, envir = getNamespace("PtH2O2lipids"))
}
