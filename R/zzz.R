.onLoad <- function(libname, pkgname)
{
  suppressPackageStartupMessages(require(xcms))
  suppressPackageStartupMessages(require(CAMERA))
  suppressPackageStartupMessages(require(LOBSTAHS))
  suppressPackageStartupMessages(require(methods))
  suppressPackageStartupMessages(require(utils))
  load(file.path(find.package("PtH2O2lipids"), "data", "PtH2O2lipids.RData"))
  assign("PtH2O2lipids", PtH2O2lipids, env = getNamespace("PtH2O2lipids"))
}
