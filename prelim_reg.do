/*FOR CM PAPER - PRELIM REGRESSIONS*/

clear
set more off
use "S:\CM Data\nov12.dta", clear
tsset arron_code t

/*LEVELS*/
/*regressions with both IV*/
ivregress 2sls emp_rt (elec_rt=rug wdist)
outreg2 using "C:/test_all_levels.tex"
ivregress 2sls emp_rt (elec_rt=rug wdist) if north==1
outreg2 using "C:/test_all_levels.tex", append
ivregress 2sls emp_rt (elec_rt=rug wdist) if north==0
outreg2 using "C:/test_all_levels.tex", append

/*reg with ruggedness*/
ivregress 2sls emp_rt (elec_rt=rug)
outreg2 using "C:/test_rug_levels.tex"
ivregress 2sls emp_rt (elec_rt=rug) if north==1
outreg2 using "C:/test_rug_levels.tex", append
ivregress 2sls emp_rt (elec_rt=rug) if north==0
outreg2 using "C:/test_rug_levels.tex", append

/*reg with distance*/
ivregress 2sls emp_rt (elec_rt=wdist)
outreg2 using "C:/test_dist_levels.tex"
ivregress 2sls emp_rt (elec_rt=wdist) if north==1
outreg2 using "C:/test_dist_levels.tex", append
ivregress 2sls emp_rt (elec_rt=wdist) if north==0
outreg2 using "C:/test_dist_levels.tex", append

/*DIFFERENCES*/
/*regressions with both IV*/
ivregress 2sls d.emp_rt (d.elec_rt=rug wdist)
outreg2 using "C:/test_all_diff.tex"
ivregress 2sls d.emp_rt (d.elec_rt=rug wdist) if north==1
outreg2 using "C:/test_all_diff.tex", append
ivregress 2sls d.emp_rt (d.elec_rt=rug wdist) if north==0
outreg2 using "C:/test_all_diff.tex", append

/*reg with ruggedness*/
ivregress 2sls d.emp_rt (d.elec_rt=rug)
outreg2 using "C:/test_rug_diff.tex"
ivregress 2sls d.emp_rt (d.elec_rt=rug) if north==1
outreg2 using "C:/test_rug_diff.tex", append
ivregress 2sls d.emp_rt (d.elec_rt=rug) if north==0
outreg2 using "C:/test_rug_diff.tex", append

/*reg with distance*/
ivregress 2sls d.emp_rt (d.elec_rt=wdist)
outreg2 using "C:/test_dist_diff.tex"
ivregress 2sls d.emp_rt (d.elec_rt=wdist) if north==1
outreg2 using "C:/test_dist_diff.tex", append
ivregress 2sls d.emp_rt (d.elec_rt=wdist) if north==0
outreg2 using "C:/test_dist_diff.tex", append
