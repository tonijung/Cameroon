clear
set more off
use "S:\CM Data\nov12.dta", clear
tsset arron_code t

/*LEVELS*/
/*regressions with both IV*/
ivregress 2sls emp_rt (elec_rt=rug wdist)
ivregress 2sls emp_rt (elec_rt=rug wdist) if north==1
ivregress 2sls emp_rt (elec_rt=rug wdist) if north==0

/*reg with ruggedness*/
ivregress 2sls emp_rt (elec_rt=rug)
ivregress 2sls emp_rt (elec_rt=rug) if north==1
ivregress 2sls emp_rt (elec_rt=rug) if north==0

/*reg with distance*/
ivregress 2sls emp_rt (elec_rt=wdist)
ivregress 2sls emp_rt (elec_rt=wdist) if north==1
ivregress 2sls emp_rt (elec_rt=wdist) if north==0

/*DIFFERENCES*/
/*regressions with both IV*/
ivregress 2sls d.emp_rt (d.elec_rt=rug wdist)
ivregress 2sls d.emp_rt (d.elec_rt=rug wdist) if north==1
ivregress 2sls d.emp_rt (d.elec_rt=rug wdist) if north==0

/*reg with ruggedness*/
ivregress 2sls d.emp_rt (d.elec_rt=rug)
ivregress 2sls d.emp_rt (d.elec_rt=rug) if north==1
ivregress 2sls d.emp_rt (d.elec_rt=rug) if north==0

/*reg with distance*/
ivregress 2sls d.emp_rt (d.elec_rt=wdist)
ivregress 2sls d.emp_rt (d.elec_rt=wdist) if north==1
ivregress 2sls d.emp_rt (d.elec_rt=wdist) if north==0
