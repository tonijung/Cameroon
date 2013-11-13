/*generate weighted distance to dam for Department*/

/*gen wdist for lagdo dam*/
use "S:\CM Data\distance\GADM\point_dist\GADM_03_department.dta" 
gen wdist=.
replace wdist=distance*0 if dam=="Mopfou"
replace wdist=distance*0 if dam=="Edea"
replace wdist=distance*0 if dam=="Song Loulou"
replace wdist=distance*0 if dam=="Bamendjin"
replace wdist=distance*0 if dam=="Mape"
replace wdist=distance*0 if dam=="Mbakaou"
replace wdist=distance*1 if dam=="Lagdo"
replace wdist=distance*0 if dam=="Chidifi"
replace wdist=distance*0 if dam=="Mokolo"
replace wdist=distance*0 if dam=="Maga"
save "S:\CM Data\distance\GADM\point_dist\GADM_03_department.dta", replace
collapse (sum) wdist, by (key)
split key, p(;)
ren key1 dept
ren key2 prov
drop key
save "S:\CM Data\IPUMS\dept_wdist.dta", replace

/*
use "S:\CM Data\distance\GADM\point_dist\GADM_03_department.dta" 
gen wdist=.
replace wdist=distance*0 if dam=="Mopfou"
replace wdist=distance*0.36076817558299 if dam=="Edea"
replace wdist=distance*0.540466392318244 if dam=="Song Loulou"
replace wdist=distance*0 if dam=="Bamendjin"
replace wdist=distance*0 if dam=="Mape"
replace wdist=distance*0 if dam=="Mbakaou"
replace wdist=distance*0.0987654320987654 if dam=="Lagdo"
replace wdist=distance*0 if dam=="Chidifi"
replace wdist=distance*0 if dam=="Mokolo"
replace wdist=distance*0 if dam=="Maga"
gen key=dept+";"+prov
save "S:\CM Data\distance\GADM\point_dist\GADM_03_department.dta", replace
collapse (sum) wdist, by (key)
split key, p(;)
ren key1 dept
ren key2 prov
drop key
save "S:\CM Data\IPUMS\dept_wdist.dta", replace
*/
