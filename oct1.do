use "S:\CM Data\IPUMS\ipumsi_00004.dta" 
/*convert IPUMS subnational names to GADM subnational names*/
gen prov_code=provcm
drop provcm
gen prov="null"
replace prov="Adamaoua" if prov_code==1
replace prov="Centre" if prov_code==2
replace prov="Est" if prov_code==3
replace prov="Extrême-Nord" if prov_code==4
replace prov="Littoral" if prov_code==5
replace prov="Nord-Ouest" if prov_code==7
replace prov="Nord" if prov_code==6
replace prov="Ouest" if prov_code==8
replace prov="Sud-Ouest" if prov_code==10
replace prov="Sud" if prov_code==9
gen dept_code=deptcm
drop deptcm
drop if dept_code==62 /*Bamoun in IPUMS, not present in GADM*/
drop if dept_code==59 /*Kaele in IPUMS, not present in GADM*/
drop if dept_code==61 /*Margui-Wandala in IPUMS, not present in GADM*/
drop if dept_code==60 /*Adamaoua, Nord in IPUMS, not present in GADM*/
gen dept="null"
replace dept="Adamaoua" if dept_code==60
replace dept="Bamboutos" if dept_code==41
replace dept="Bénoué" if dept_code==30
replace dept="Boumba-et-Ngoko" if dept_code==16
replace dept="Boyo" if dept_code==34
replace dept="Bui" if dept_code==35
replace dept="Diamaré" if dept_code==20
replace dept="Dja-et-Lobo" if dept_code==49
replace dept="Djerem" if dept_code==1
replace dept="Donga-Mantung" if dept_code==36
replace dept="Fako" if dept_code==53
replace dept="Faro" if dept_code==31
replace dept="Faro-Deo" if dept_code==2
replace dept="Haut-Nkam" if dept_code==42
replace dept="Haut-Nyong" if dept_code==17
replace dept="Haute-Sanaga" if dept_code==6
replace dept="Hauts-Plateaux" if dept_code==43
replace dept="Kadey" if dept_code==18
replace dept="Koung-Khi" if dept_code==44
replace dept="Koupé-Manengouba" if dept_code==54
replace dept="Lebialem" if dept_code==55
replace dept="Lekié" if dept_code==7
replace dept="Logone-et-Chari" if dept_code==21
replace dept="Lom-et-Djerem" if dept_code==19
replace dept="Manyu" if dept_code==56
replace dept="Mayo-Banyo" if dept_code==3
replace dept="Mayo-Danay" if dept_code==22
replace dept="Mayo-Kani" if dept_code==23
replace dept="Mayo-Louti" if dept_code==32
replace dept="Mayo-Rey" if dept_code==33
replace dept="Mayo-Sava" if dept_code==24
replace dept="Mayo-Tsanaga" if dept_code==25
replace dept="Mbam-et-Inoubou" if dept_code==8
replace dept="Mbam-et-Kim" if dept_code==9
replace dept="Mbéré" if dept_code==4
replace dept="Mefou-et-Afamba" if dept_code==10
replace dept="Mefou-et-Akono" if dept_code==11
replace dept="Meme" if dept_code==57
replace dept="Menchum" if dept_code==37
replace dept="Menoua" if dept_code==45
replace dept="Mezam" if dept_code==38
replace dept="Mfoundi" if dept_code==12
replace dept="Mifi" if dept_code==46
replace dept="Momo" if dept_code==39
replace dept="Moungo" if dept_code==26
replace dept="Mvila" if dept_code==50
replace dept="Ndé" if dept_code==47
replace dept="Ndian" if dept_code==58
replace dept="Ngo-Ketunjia" if dept_code==40
replace dept="Nkam" if dept_code==27
replace dept="Noun" if dept_code==48
replace dept="Nyong et Kéllé" if dept_code==13
replace dept="Nyong-et-Mfoumou" if dept_code==14
replace dept="Nyong-et-Soo" if dept_code==15
replace dept="Océan" if dept_code==51
replace dept="Sanaga-Maritime" if dept_code==28
replace dept="Vallée-du-Ntem" if dept_code==52
replace dept="Vina" if dept_code==5
replace dept="Wouri" if dept_code==29
drop provcm_name

/*add Terrain Ruggedness Index for dept - TRI*/
merge m:1 dept using "S:\CM Data\ruggedness\dta\tri_03_department.dta"
drop _merge

/*add distance from dam - NOTE unit is decimal degrees*/
gen key=dept+"_"+prov
merge m:m key using "S:\CM Data\distance\GADM\point_dist\GADM_03_department.dta"
ren distance dist
drop _merge key

/*generate weighted distance*/
gen wdist=.
replace wdist=0*dist if dam=="Bamendjin"
replace wdist=0*dist if dam=="Chidifi"
replace wdist=0.36076817558299*dist if dam=="Edea"
replace wdist=0.0987654320987654*dist if dam=="Lagdo"
replace wdist=0*dist if dam=="Maga"
replace wdist=0*dist if dam=="Mape"
replace wdist=0*dist if dam=="Mbakaou"
replace wdist=0*dist if dam=="Mokolo"
replace wdist=0*dist if dam=="Mopfou"
replace wdist=0.540466392318244*dist if dam=="Song Loulou"


/*how many employed per department per year?*/
gen dept_empnum=.
foreach j in 1976 1987 2005{
	forval i=1/62{
  		count if empstat==1 & dept_code==`i' & year==`j'
  		replace dept_empnum=r(N) if dept_code==`i' & year==`j'
}
}


/*how many unemployed per department per year?*/
gen dept_unempnum=.
foreach j in 1976 1987 2005{
	forval i=1/62{
		count if empstat==2 & dept_code==`i' & year==`j'
		replace dept_unempnum=r(N) if dept_code==`i' & year==`j'
}
}

/*total dept labor force per department per year*/
gen dept_laborforce=.
foreach j in 1976 1987 2005{
	replace dept_laborforce=dept_empnum+dept_unempnum if year==`j'
}

/*departmental UNemployment rate per year*/
gen dept_unemp_rt=.
foreach j in 1976 1987 2005{
	replace dept_unemp_rt=dept_unempnum/dept_laborforce*100 if year==`j'
}

/*departmental employment rate*/
gen dept_emp_rt=.
foreach j in 1976 1987 2005{
	replace dept_emp_rt=dept_empnum/dept_laborforce*100 if year==`j'
}

/*department population - how many individuals in department per year?*/
sort dept_code year
by dept_code year: gen individ_num=_n /*gives each individual a unique number per dept per year*/
by dept_code year: gen dept_pop=_N /*finds total number of observations*/
drop individ_num

/*individual electricity dummy*/
gen elec_dum=electrc if electrc==1

/*how many has electricity in department per year?*/
gen dept_elec_num=.
foreach j in 1976 1987 2005{
	forval i=1/62{
		count if elec_dum==1 & dept_code==`i' & year==`j'
		replace dept_elec_num=r(N) if dept_code==`i' & year==`j'
}
}

/*department - electrification rate per year*/
gen dept_elec_rt=.
foreach j in 1976 1987 2005{
	replace dept_elec_rt=dept_elec_num/dept_pop*100 if year==`j'
}


/*next add ruggedness and weighted distance from dam which is time invariant*/

/*regressions yo!*/


