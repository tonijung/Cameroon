use "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\ipumsi_00004.dta" 
drop cntry
drop wthh
drop sewage fuelck trash marst marstd MGYRS1 MIGCM1 MIGCM2 MIGCM3
drop if age>30
sort age
save "C:\Users\tjung\Dropbox\Toni - CM Paper\IPUMS\ipumsi_00004.dta", replace

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
gen admin_level2="province"
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
save "S:\CM Data\distance\point_dist\GADM_02_province.dta"
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
gen admin_level2="province"
gen admin_level3="department"
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
save "S:\CM Data\distance\point_dist\GADM_03_department.dta"
