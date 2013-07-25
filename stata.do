use "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\ipumsi_00004.dta" 
drop cntry
drop wthh
drop sewage fuelck trash marst marstd MGYRS1 MIGCM1 MIGCM2 MIGCM3
drop if age>30
sort age
save "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\ipumsi_00004.dta", replace
