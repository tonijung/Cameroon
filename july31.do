use "S:\CM Data\IPUMS\ipumsi_00004.dta" 
drop MGYRS1 MIGCM1 MIGCM2 MIGCM3 sewage fuelck trash resident relate related marst marstd
decode provcm, gen(provcm_name)
drop cntry sample
tab provcm
tab GEOLEV1
tab indgen
tab occisco
tab electrc
sort electrc
replace electrc=. if electrc==0
replace electrc=. if electrc==9
sort sex
tab electrc
tab sex
replace sex=. if sex==9
tab sex
tab empstat
sort empstat
tab empstat
replace empstat=. if empstat==0
replace empstat=. if empstat==3
replace empstat=. if empstat==9
tab empstat
tab empstatd
sort age
sum age
drop if age>30
keep if age>9
sum age
sort school
tab school
replace school=. if school==0
tab school
tab occisco
drop occ
drop ind
tab provcm, gen(provcm_grp)
xi reg electrc empstat i.provcm
drop _Iprovcm_2 _Iprovcm_3 _Iprovcm_4 _Iprovcm_5 _Iprovcm_6 _Iprovcm_7 _Iprovcm_8 _Iprovcm_9 _Iprovcm_10
xi reg electrc empstat
xi: reg empstat electrc i.provcm
drop provcm_grp1 provcm_grp2 provcm_grp3 provcm_grp4 provcm_grp5 provcm_grp6 provcm_grp7 provcm_grp8 provcm_grp9 provcm_grp10
drop _Iprovcm_2 _Iprovcm_3 _Iprovcm_4 _Iprovcm_5 _Iprovcm_6 _Iprovcm_7 _Iprovcm_8 _Iprovcm_9 _Iprovcm_10
xi: reg empstat electrc i.provcm, r
tab year, gen(yr_dum)
drop yr_dum1 yr_dum2 yr_dum3 _Iprovcm_2 _Iprovcm_3 _Iprovcm_4 _Iprovcm_5 _Iprovcm_6 _Iprovcm_7 _Iprovcm_8 _Iprovcm_9 _Iprovcm_10
