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
drop dept_code==63
drop dept_code==59
drop dept_code==61
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


/*electricity dummy*/
gen elec_dum=electrc if electrc==1


/*how many employed per department?*/
gen empnum=.
forval i=1/62{
  count if empstat==1 & dept_code==`i'
  replace empnum=r(N) if dept_code==`i'
}

/*how many unemployed per department?*/
gen unempnum=.
forval i=1/62{
	count if empstat==2 & dept_code==`i'
	replace unempnum=r(N) if dept_code==`i'
}

/*total labor force*/
gen laborforce=empnum+unempnum

/*departmental UNemployment rate*/
gen unemp_rt=unempnum/(labfr)*100

/*departmental employment rate*/
gen emp_rt=empnum/labfr*100
