# PtH2O2lipids
Repository for the R package **PtH2O2lipids**. PtH2O2lipids contains processed, positive ionization mode HPLC-ESI-MS lipid data from an experiment in which cultures of the marine diatom *Phaeodactylum tricornutum* were treated with various concentrations hydrogen peroxide (H2O2). The experiment is described in [Graff van Creveld, et al., 2015, "Early perturbation in mitochondria redox homeostasis in response to environmental stress predicts cell fate in diatoms," ISME Journal 9:385-395](http://www.nature.com/ismej/journal/v9/n2/full/ismej2014136a.html). At the current time, the files must be compiled into a package on the user's machine using **devtools**.

1. PtH2O2lipids



1. [data-raw/Pt_H2O2_mzXML_ms1_pos](https://github.com/vanmooylipidomics/LipidomicsToolbox/tree/master/Pt_H2O2_mzXML_ms1_pos) and [data-raw/Pt_H2O2_mzXML_ms1_neg](https://github.com/vanmooylipidomics/LipidomicsToolbox/tree/master/Pt_H2O2_mzXML_ms1_neg): Two directories containing .mzXML data files that have been converted, centroided, and extracted by ion mode using [Exactive_full_scan_process_ms1+.r](https://github.com/vanmooylipidomics/LipidomicsToolbox/blob/master/Exactive_full_scan_process_ms1%2B.r). These files contain Exactive Orbitrap lipid data from experiments in which hydrogen peroxide was added at different concentrations to cultures of the marine diatom Phaeodactylum tricornutum; the data were collected during the experiments described in [Graff van Creveld, et al., 2015, "Early perturbation in mitochondria redox homeostasis in response to environmental stress predicts cell fate in diatoms," ISME Journal 9:385-395](http://www.nature.com/ismej/journal/v9/n2/full/ismej2014136a.html).
2. 
<h4>Unprocessed data files</h4>
The original Thermo .raw files and some metadata can be accessed at http://www.whoi.edu/page.do?pid=133616&tid=282&cid=192529.
