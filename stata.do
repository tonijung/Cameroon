/*clean IPUMS-I data... round 1*/
use "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\01_ipumsi_00004.dta" 
drop cntry wthh sewage fuelck trash marst marstd MGYRS1 MIGCM1 MIGCM2 MIGCM3related relate persons
drop if age>30
keep if age>9
sort age
decode provcm, gen(bob)
drop provcm
ren bob provcm
decode deptcm, gen(bob)
drop deptcm
ren bob deptcm
decode arrndcm, gen(bob)
drop arrndcm
ren bob arrndcm
save "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\01_ipumsi_00004.dta", replace
clear

use "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\02_ipumsi_00004.dta" 
drop cntry wthh sewage fuelck trash marst marstd MGYRS1 MIGCM1 MIGCM2 MIGCM3related relate persons
drop if age>30
keep if age>9
sort age
decode provcm, gen(bob)
drop provcm
ren bob provcm
decode deptcm, gen(bob)
drop deptcm
ren bob deptcm
decode arrndcm, gen(bob)
drop arrndcm
ren bob arrndcm
save "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\02_ipumsi_00004.dta", replace

clear
use "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\03_ipumsi_00004.dta" 
drop cntry wthh sewage fuelck trash marst marstd MGYRS1 MIGCM1 MIGCM2 MIGCM3related relate persons
drop if age>30
keep if age>9
sort age
decode provcm, gen(bob)
drop provcm
ren bob provcm
decode deptcm, gen(bob)
drop deptcm
ren bob deptcm
decode arrndcm, gen(bob)
drop arrndcm
ren bob arrndcm
save "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\03_ipumsi_00004.dta", replace

clear
use "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\04_ipumsi_00004.dta" 
drop cntry wthh sewage fuelck trash marst marstd MGYRS1 MIGCM1 MIGCM2 MIGCM3related relate persons
drop if age>30
keep if age>9
sort age
decode provcm, gen(bob)
drop provcm
ren bob provcm
decode deptcm, gen(bob)
drop deptcm
ren bob deptcm
decode arrndcm, gen(bob)
drop arrndcm
ren bob arrndcm
save "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\04_ipumsi_00004.dta", replace
clear

/*import point distance measures and assign to an admin region*/
clear
insheet using "S:/CM Data/distance/point_dist/GADM_01_country.csv", comma clear
gen dam="bob"
replace dam="Mopfou" if input_fid==0
replace dam="Edea" if input_fid==1
replace dam="Song Loulou" if input_fid==2
replace dam="Bamendjin" if input_fid==3
replace dam="Mape" if input_fid==4
replace dam="Mbakaou" if input_fid==5
replace dam="Lagdo" if input_fid==6
replace dam="Chidifi" if input_fid==7
replace dam="Mokolo" if input_fid==8
replace dam="Maga" if input_fid==9
gen admin_level="country"
save "S:\CM Data\distance\point_dist\GADM_01_country.dta"
insheet using "S:/CM Data/distance/point_dist/GADM_02_province.csv", comma clear
gen dam="bob"
replace dam="Mopfou" if input_fid==0
replace dam="Edea" if input_fid==1
replace dam="Song Loulou" if input_fid==2
replace dam="Bamendjin" if input_fid==3
replace dam="Mape" if input_fid==4
replace dam="Mbakaou" if input_fid==5
replace dam="Lagdo" if input_fid==6
replace dam="Chidifi" if input_fid==7
replace dam="Mokolo" if input_fid==8
replace dam="Maga" if input_fid==9
gen admin_name2="bob"
replace admin_name2="Adamaoua" if near_fid==0
replace admin_name2="Centre" if near_fid==1
replace admin_name2="Est" if near_fid==2
replace admin_name2="Extrême-Nord" if near_fid==3
replace admin_name2="Littoral" if near_fid==4
replace admin_name2="Nord-Ouest" if near_fid==5
replace admin_name2="Nord" if near_fid==6
replace admin_name2="Ouest" if near_fid==7
replace admin_name2="Sud-Ouest" if near_fid==8
replace admin_name2="Sud" if near_fid==9
ren admin_name2 provcm
save "S:\CM Data\distance\point_dist\GADM_02_province.dta"
clear

insheet using "S:/CM Data/distance/point_dist/GADM_03_department.csv", comma clear
gen dam="bob"
replace dam="Mopfou" if input_fid==0
replace dam="Edea" if input_fid==1
replace dam="Song Loulou" if input_fid==2
replace dam="Bamendjin" if input_fid==3
replace dam="Mape" if input_fid==4
replace dam="Mbakaou" if input_fid==5
replace dam="Lagdo" if input_fid==6
replace dam="Chidifi" if input_fid==7
replace dam="Mokolo" if input_fid==8
replace dam="Maga" if input_fid==9
gen admin_name3="bob"
replace admin_name3="Djerem" if near_fid==0
replace admin_name3="Faro-Deo" if near_fid==1
replace admin_name3="Mayo-Banyo" if near_fid==2
replace admin_name3="Mbéré" if near_fid==3
replace admin_name3="Vina" if near_fid==4
replace admin_name3="Haute-Sanaga" if near_fid==5
replace admin_name3="Lekié" if near_fid==6
replace admin_name3="Mbam-et-Inoubou" if near_fid==7
replace admin_name3="Mbam-et-Kim" if near_fid==8
replace admin_name3="Mefou-et-Afamba" if near_fid==9
replace admin_name3="Mefou-et-Akono" if near_fid==10
replace admin_name3="Mfoundi" if near_fid==11
replace admin_name3="Nyong-et-Mfoumou" if near_fid==12
replace admin_name3="Nyong-et-Soo" if near_fid==13
replace admin_name3="Nyong et Kéllé" if near_fid==14
replace admin_name3="Boumba-et-Ngoko" if near_fid==15
replace admin_name3="Haut-Nyong" if near_fid==16
replace admin_name3="Kadey" if near_fid==17
replace admin_name3="Lom-et-Djerem" if near_fid==18
replace admin_name3="Diamaré" if near_fid==19
replace admin_name3="Logone-et-Chari" if near_fid==20
replace admin_name3="Mayo-Danay" if near_fid==21
replace admin_name3="Mayo-Kani" if near_fid==22
replace admin_name3="Mayo-Sava" if near_fid==23
replace admin_name3="Mayo-Tsanaga" if near_fid==24
replace admin_name3="Moungo" if near_fid==25
replace admin_name3="Nkam" if near_fid==26
replace admin_name3="Sanaga-Maritime" if near_fid==27
replace admin_name3="Wouri" if near_fid==28
replace admin_name3="Boyo" if near_fid==29
replace admin_name3="Bui" if near_fid==30
replace admin_name3="Donga-Mantung" if near_fid==31
replace admin_name3="Menchum" if near_fid==32
replace admin_name3="Mezam" if near_fid==33
replace admin_name3="Momo" if near_fid==34
replace admin_name3="Ngo-Ketunjia" if near_fid==35
replace admin_name3="Bénoué" if near_fid==36
replace admin_name3="Faro" if near_fid==37
replace admin_name3="Mayo-Louti" if near_fid==38
replace admin_name3="Mayo-Rey" if near_fid==39
replace admin_name3="Bamboutos" if near_fid==40
replace admin_name3="Haut-Nkam" if near_fid==41
replace admin_name3="Hauts-Plateaux" if near_fid==42
replace admin_name3="Koung-Khi" if near_fid==43
replace admin_name3="Menoua" if near_fid==44
replace admin_name3="Mifi" if near_fid==45
replace admin_name3="Ndé" if near_fid==46
replace admin_name3="Noun" if near_fid==47
replace admin_name3="Fako" if near_fid==48
replace admin_name3="Koupé-Manengouba" if near_fid==49
replace admin_name3="Lebialem" if near_fid==50
replace admin_name3="Manyu" if near_fid==51
replace admin_name3="Meme" if near_fid==52
replace admin_name3="Ndian" if near_fid==53
replace admin_name3="Dja-et-Lobo" if near_fid==54
replace admin_name3="Mvila" if near_fid==55
replace admin_name3="Océan" if near_fid==56
replace admin_name3="Vallée-du-Ntem" if near_fid==57
gen admin_name2="bob"
replace admin_name2="Adamaoua" if near_fid==0
replace admin_name2="Adamaoua" if near_fid==1
replace admin_name2="Adamaoua" if near_fid==2
replace admin_name2="Adamaoua" if near_fid==3
replace admin_name2="Adamaoua" if near_fid==4
replace admin_name2="Centre" if near_fid==5
replace admin_name2="Centre" if near_fid==6
replace admin_name2="Centre" if near_fid==7
replace admin_name2="Centre" if near_fid==8
replace admin_name2="Centre" if near_fid==9
replace admin_name2="Centre" if near_fid==10
replace admin_name2="Centre" if near_fid==11
replace admin_name2="Centre" if near_fid==12
replace admin_name2="Centre" if near_fid==13
replace admin_name2="Centre" if near_fid==14
replace admin_name2="Est" if near_fid==15
replace admin_name2="Est" if near_fid==16
replace admin_name2="Est" if near_fid==17
replace admin_name2="Est" if near_fid==18
replace admin_name2="Extrême-Nord" if near_fid==19
replace admin_name2="Extrême-Nord" if near_fid==20
replace admin_name2="Extrême-Nord" if near_fid==21
replace admin_name2="Extrême-Nord" if near_fid==22
replace admin_name2="Extrême-Nord" if near_fid==23
replace admin_name2="Extrême-Nord" if near_fid==24
replace admin_name2="Littoral" if near_fid==25
replace admin_name2="Littoral" if near_fid==26
replace admin_name2="Littoral" if near_fid==27
replace admin_name2="Littoral" if near_fid==28
replace admin_name2="Nord-Ouest" if near_fid==29
replace admin_name2="Nord-Ouest" if near_fid==30
replace admin_name2="Nord-Ouest" if near_fid==31
replace admin_name2="Nord-Ouest" if near_fid==32
replace admin_name2="Nord-Ouest" if near_fid==33
replace admin_name2="Nord-Ouest" if near_fid==34
replace admin_name2="Nord-Ouest" if near_fid==35
replace admin_name2="Nord" if near_fid==36
replace admin_name2="Nord" if near_fid==37
replace admin_name2="Nord" if near_fid==38
replace admin_name2="Nord" if near_fid==39
replace admin_name2="Ouest" if near_fid==40
replace admin_name2="Ouest" if near_fid==41
replace admin_name2="Ouest" if near_fid==42
replace admin_name2="Ouest" if near_fid==43
replace admin_name2="Ouest" if near_fid==44
replace admin_name2="Ouest" if near_fid==45
replace admin_name2="Ouest" if near_fid==46
replace admin_name2="Ouest" if near_fid==47
replace admin_name2="Sud-Ouest" if near_fid==48
replace admin_name2="Sud-Ouest" if near_fid==49
replace admin_name2="Sud-Ouest" if near_fid==50
replace admin_name2="Sud-Ouest" if near_fid==51
replace admin_name2="Sud-Ouest" if near_fid==52
replace admin_name2="Sud-Ouest" if near_fid==53
replace admin_name2="Sud" if near_fid==54
replace admin_name2="Sud" if near_fid==55
replace admin_name2="Sud" if near_fid==56
replace admin_name2="Sud" if near_fid==57
ren admin_name2 provcm
ren admin_name3 deptcm
save "S:\CM Data\distance\point_dist\GADM_03_department.dta"
clear

/*import TRI and assign to admin region*/
clear
insheet using "S:\CM Data\rug_numbers\tri\tri_01_country.csv", comma clear
ren fid_ FID
gen admin_level="country"
gen admin_name="Cameroon"
save "S:\CM Data\rug_numbers\tri\tri_01_country.dta"
clear
insheet using "S:\CM Data\rug_numbers\tri\tri_02_province.csv", comma clear
ren fid_ FID
gen admin_level2="province"
gen admin_name2="bob"
replace admin_name2="Adamaoua" if FID==0
replace admin_name2="Centre" if FID==1
replace admin_name2="Est" if FID==2
replace admin_name2="Extrême-Nord" if FID==3
replace admin_name2="Littoral" if FID==4
replace admin_name2="Nord-Ouest" if FID==5
replace admin_name2="Nord" if FID==6
replace admin_name2="Ouest" if FID==7
replace admin_name2="Sud-Ouest" if FID==8
replace admin_name2="Sud" if FID==9
save "S:\CM Data\rug_numbers\tri\tri_02_province.dta"
clear
insheet using "S:\CM Data\rug_numbers\tri\tri_03_department.csv", comma clear
ren fid_ FID
gen admin_level2="province"
gen admin_name2="bob"
replace admin_name2="Adamaoua" if FID==0
replace admin_name2="Adamaoua" if FID==1
replace admin_name2="Adamaoua" if FID==2
replace admin_name2="Adamaoua" if FID==3
replace admin_name2="Adamaoua" if FID==4
replace admin_name2="Centre" if FID==5
replace admin_name2="Centre" if FID==6
replace admin_name2="Centre" if FID==7
replace admin_name2="Centre" if FID==8
replace admin_name2="Centre" if FID==9
replace admin_name2="Centre" if FID==10
replace admin_name2="Centre" if FID==11
replace admin_name2="Centre" if FID==12
replace admin_name2="Centre" if FID==13
replace admin_name2="Centre" if FID==14
replace admin_name2="Est" if FID==15
replace admin_name2="Est" if FID==16
replace admin_name2="Est" if FID==17
replace admin_name2="Est" if FID==18
replace admin_name2="Extrême-Nord" if FID==19
replace admin_name2="Extrême-Nord" if FID==20
replace admin_name2="Extrême-Nord" if FID==21
replace admin_name2="Extrême-Nord" if FID==22
replace admin_name2="Extrême-Nord" if FID==23
replace admin_name2="Extrême-Nord" if FID==24
replace admin_name2="Littoral" if FID==25
replace admin_name2="Littoral" if FID==26
replace admin_name2="Littoral" if FID==27
replace admin_name2="Littoral" if FID==28
replace admin_name2="Nord-Ouest" if FID==29
replace admin_name2="Nord-Ouest" if FID==30
replace admin_name2="Nord-Ouest" if FID==31
replace admin_name2="Nord-Ouest" if FID==32
replace admin_name2="Nord-Ouest" if FID==33
replace admin_name2="Nord-Ouest" if FID==34
replace admin_name2="Nord-Ouest" if FID==35
replace admin_name2="Nord" if FID==36
replace admin_name2="Nord" if FID==37
replace admin_name2="Nord" if FID==38
replace admin_name2="Nord" if FID==39
replace admin_name2="Ouest" if FID==40
replace admin_name2="Ouest" if FID==41
replace admin_name2="Ouest" if FID==42
replace admin_name2="Ouest" if FID==43
replace admin_name2="Ouest" if FID==44
replace admin_name2="Ouest" if FID==45
replace admin_name2="Ouest" if FID==46
replace admin_name2="Ouest" if FID==47
replace admin_name2="Sud-Ouest" if FID==48
replace admin_name2="Sud-Ouest" if FID==49
replace admin_name2="Sud-Ouest" if FID==50
replace admin_name2="Sud-Ouest" if FID==51
replace admin_name2="Sud-Ouest" if FID==52
replace admin_name2="Sud-Ouest" if FID==53
replace admin_name2="Sud" if FID==54
replace admin_name2="Sud" if FID==55
replace admin_name2="Sud" if FID==56
replace admin_name2="Sud" if FID==57
gen admin_level3="department"
gen admin_name3="bob"
replace admin_name3="Djerem" if FID==0
replace admin_name3="Faro-Deo" if FID==1
replace admin_name3="Mayo-Banyo" if FID==2
replace admin_name3="Mbéré" if FID==3
replace admin_name3="Vina" if FID==4
replace admin_name3="Haute-Sanaga" if FID==5
replace admin_name3="Lekié" if FID==6
replace admin_name3="Mbam-et-Inoubou" if FID==7
replace admin_name3="Mbam-et-Kim" if FID==8
replace admin_name3="Mefou-et-Afamba" if FID==9
replace admin_name3="Mefou-et-Akono" if FID==10
replace admin_name3="Mfoundi" if FID==11
replace admin_name3="Nyong-et-Mfoumou" if FID==12
replace admin_name3="Nyong-et-Soo" if FID==13
replace admin_name3="Nyong et Kéllé" if FID==14
replace admin_name3="Boumba-et-Ngoko" if FID==15
replace admin_name3="Haut-Nyong" if FID==16
replace admin_name3="Kadey" if FID==17
replace admin_name3="Lom-et-Djerem" if FID==18
replace admin_name3="Diamaré" if FID==19
replace admin_name3="Logone-et-Chari" if FID==20
replace admin_name3="Mayo-Danay" if FID==21
replace admin_name3="Mayo-Kani" if FID==22
replace admin_name3="Mayo-Sava" if FID==23
replace admin_name3="Mayo-Tsanaga" if FID==24
replace admin_name3="Moungo" if FID==25
replace admin_name3="Nkam" if FID==26
replace admin_name3="Sanaga-Maritime" if FID==27
replace admin_name3="Wouri" if FID==28
replace admin_name3="Boyo" if FID==29
replace admin_name3="Bui" if FID==30
replace admin_name3="Donga-Mantung" if FID==31
replace admin_name3="Menchum" if FID==32
replace admin_name3="Mezam" if FID==33
replace admin_name3="Momo" if FID==34
replace admin_name3="Ngo-Ketunjia" if FID==35
replace admin_name3="Bénoué" if FID==36
replace admin_name3="Faro" if FID==37
replace admin_name3="Mayo-Louti" if FID==38
replace admin_name3="Mayo-Rey" if FID==39
replace admin_name3="Bamboutos" if FID==40
replace admin_name3="Haut-Nkam" if FID==41
replace admin_name3="Hauts-Plateaux" if FID==42
replace admin_name3="Koung-Khi" if FID==43
replace admin_name3="Menoua" if FID==44
replace admin_name3="Mifi" if FID==45
replace admin_name3="Ndé" if FID==46
replace admin_name3="Noun" if FID==47
replace admin_name3="Fako" if FID==48
replace admin_name3="Koupé-Manengouba" if FID==49
replace admin_name3="Lebialem" if FID==50
replace admin_name3="Manyu" if FID==51
replace admin_name3="Meme" if FID==52
replace admin_name3="Ndian" if FID==53
replace admin_name3="Dja-et-Lobo" if FID==54
replace admin_name3="Mvila" if FID==55
replace admin_name3="Océan" if FID==56
replace admin_name3="Vallée-du-Ntem" if FID==57
save "S:\CM Data\rug_numbers\tri\tri_03_department.dta"
clear

/*import CELLAREA and assign admin region*/
clear
insheet using "S:\CM Data\rug_numbers\cellarea\cellarea_02_province.csv", comma clear
ren fid_ FID
drop count range std sum variety majority minority median
gen provcm="bob"
replace provcm="Adamoua" if FID==0
replace provcm="Centre" if FID==1
replace provcm="Est" if FID==2
replace provcm="Extrème Nord" if FID==3
replace provcm="Littoral" if FID==4
replace provcm="Nord Ouest" if FID==5
replace provcm="Nord" if FID==6
replace provcm="Ouest" if FID==7
replace provcm="Sud Ouest" if FID==8
replace provcm="Sud" if FID==9
ren area carea_02_area
ren min carea_02_min
ren max carea_02_max
ren mean carea_02_mean
save "S:\CM Data\rug_numbers\cellarea\cellarea_02_province.dta"
clear

/*clean TRI data round 2*/
clear
use "S:\CM Data\rug_numbers\tri\tri_02_province.dta" 
ren admin_name2 provcm
ren area tri_02_area
ren min tri_02_min
ren max tri_02_max
ren mean tri_02_mean
drop admin_level2 count range std sum variety majority minority median
save "S:\CM Data\rug_numbers\tri\tri_02_province.dta", replace
clear

use "S:\CM Data\rug_numbers\tri\tri_03_department.dta"
ren admin_name2 provcm
ren admin_name3 deptcm
ren area tri_03_area
ren min tri_03_min
ren max tri_03_max
ren mean tri_03_mean
drop admin_level2 admin_level3 count range std sum variety majority minority median
save "S:\CM Data\rug_numbers\tri\tri_03_department.dta", replace
clear

/*for province level... make sure IPUMS and GADM names are the same, use IPUMS as base*/
use "S:\CM Data\rug_numbers\tri\tri_02_province.dta" 
gen bob=.
replace bob=1 if provcm=="Adamaoua"
replace provcm="Adamoua" if bob==1
replace bob=2 if provcm=="Extrême-Nord"
replace provcm="Extrème Nord" if bob==2
replace bob=3 if provcm=="Nord-Ouest"
replace provcm="Nord Ouest" if bob==3
replace bob=4 if provcm=="Sud-Ouest"
replace provcm="Sud Ouest" if bob==4
drop bob
save "S:\CM Data\rug_numbers\tri\tri_02_province.dta", replace
clear

clear
use "S:\CM Data\distance\point_dist\GADM_02_province.dta" 
gen bob=.
replace bob=1 if provcm=="Adamaoua"
replace provcm="Adamoua" if bob==1
replace bob=2 if provcm=="Extrême-Nord"
replace provcm="Extrème Nord" if bob==2
replace bob=3 if provcm=="Nord-Ouest"
replace provcm="Nord Ouest" if bob==3
replace bob=4 if provcm=="Sud-Ouest"
replace provcm="Sud Ouest" if bob==4
drop bob
save "S:\CM Data\distance\point_dist\GADM_02_province.dta" , replace
clear

/*merge province data to province level in IPUMS (02_....IPUMS.dta)*/
use "S:\CM Data\IPUMS\02_ipumsi_00004.dta" 
gen bob=.
replace bob=1 if provcm=="ExtrÃ¨me Nord"
replace provcm="Extrème Nord" if bob==1
drop bob
merge m:1 provcm using "S:\CM Data\rug_numbers\tri\tri_02_province.dta"
drop _merge FID
merge m:1 provcm using "S:\CM Data\rug_numbers\cellarea\cellarea_02_province.dta"
drop FID _merge
drop tri_02_min tri_02_max carea_02_min carea_02_max
gen IPUMScode=.
replace IPUMScode=1 if provcm=="Adamoua"
replace IPUMScode=2 if provcm=="Centre"
replace IPUMScode=3 if provcm=="Est"
replace IPUMScode=4 if provcm=="Extrème Nord"
replace IPUMScode=5 if provcm=="Littoral"
replace IPUMScode=6 if provcm=="Nord"
replace IPUMScode=7 if provcm=="Nord Ouest"
replace IPUMScode=8 if provcm=="Ouest"
replace IPUMScode=9 if provcm=="Sud"
replace IPUMScode=10 if provcm=="Sud Ouest"
save "S:\CM Data\IPUMS\02_ipumsi_00004.dta", replace
clear

