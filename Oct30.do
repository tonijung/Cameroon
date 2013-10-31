clear
set more off
use "S:\CM Data\IPUMS\10-30_ipumsi_00004.dta" 

drop serial persons wthh GEOLEV1 pernum wtper birthyr birthmo bplcm MGYRS1 MIGCM1 MIGCM2 MIGCM3 sewage fuelck trash resident relate related marst marstd cntry sample occ ind
drop if age>30
keep if age>9

drop if year==2005
gen t=1 if year==1976
replace t=2 if year==1987
tostring t, gen(str_t)

gen prov_code=provcm
decode provcm, gen(prov)
tostring prov_code, gen(str_prov_code)
drop provcm

gen dept_code=deptcm
decode deptcm, gen(dept)
tostring dept_code, gen(str_dept_code)
drop deptcm

gen arron_code=arrndcm
decode arrndcm, gen(arron)
tostring arron_code, gen(str_arron_code)
drop arrndcm
egen arrongrp=group(arron_code)
tostring arrongrp, gen(str_arrongrp)

gen ikey=arron+";"+str_arron_code+";"+str_arrongrp+";"+dept+";"+str_dept_code+";"+prov+";"+str_prov_code+";"+str_t

/*SELF GENERATED VARIABLES*/
/*how many employed per department per year?*/
gen arron_empnum=.
foreach j in 1976 1987{
        forval i=1/184{
                  count if empstat==1 & arrongrp==`i' & year==`j'
                  replace arron_empnum=r(N) if arrongrp==`i' & year==`j'
}
}


/*how many unemployed per department per year?*/
gen arron_unempnum=.
foreach j in 1976 1987{
        forval i=1/184{
                count if empstat==2 & arrongrp==`i' & year==`j'
                replace arron_unempnum=r(N) if arrongrp==`i' & year==`j'
}
}

/*total dept labor force per department per year*/
gen arron_laborforce=.
foreach j in 1976 1987{
        replace arron_laborforce=arron_empnum+arron_unempnum if year==`j'
}

/*departmental UNemployment rate per year*/
gen arron_unemp_rt=.
foreach j in 1976 1987{
        replace arron_unemp_rt=arron_unempnum/arron_laborforce*100 if year==`j'
}

/*departmental employment rate*/
gen arron_emp_rt=.
foreach j in 1976 1987{
        replace arron_emp_rt=arron_empnum/arron_laborforce*100 if year==`j'
}

/*department population - how many individuals in department per year?*/
sort arrongrp year
by arrongrp year: gen individ_num=_n /*gives each individual a unique number per dept per year*/
by arrongrp year: gen arron_pop=_N /*finds total number of observations*/
drop individ_num

/*generate electric dummy*/
gen elec_dum=electrc if electrc==1

/*how many has electricity in department per year?*/
gen arron_elec_num=.
foreach j in 1976 1987{
        forval i=1/184{
                count if elec_dum==1 & arrongrp==`i' & year==`j'
                replace arron_elec_num=r(N) if arrongrp==`i' & year==`j'
}
}

/*department - electrification rate per year*/
gen arron_elec_rt=.
foreach j in 1976 1987{
        replace arron_elec_rt=arron_elec_num/arron_pop*100 if year==`j'
}

/*how many people in dept are literate?*/
gen arron_lit_num=.
foreach j in 1976 1987{
        forval i=1/184{
                count if lit==2 & arrongrp==`i' & year==`j'
                replace arron_lit_num=r(N) if arrongrp==`i' & year==`j'
}
}

/*department - literacy rate*/
gen arron_lit_rt=.
foreach j in 1976 1987{
        replace arron_lit_rt=arron_lit_num/arron_pop*100 if year==`j'
}


/*COLLAPSE*/
collapse (mean) empnum=arron_empnum unempnum=arron_unempnum laborforce=arron_laborforce emp_rt=arron_emp_rt unemp_rt=arron_unemp_rt elec_num=arron_elec_num elec_rt=arron_elec_rt litnum=arron_lit_num lit_rt=arron_lit_rt, by(ikey)

split ikey, p(;)
ren ikey1 arron
destring ikey2, g(arron_code)
destring ikey3, g(arrongrp)
ren ikey4 dept
destring ikey5, g(dept_code)
ren ikey6 prov
destring ikey7, g(prov_code)
destring ikey8, g(t)
drop ikey ikey2 ikey3 ikey5 ikey7 ikey8

/*generate north/south dummy*/
gen north=0
replace north=1 if prov_code==1 /*Adamoua*/
replace north=1 if prov_code==4 /*Extreme-Nord*/
replace north=1 if prov_code==6 /*Nord*/

/*generate unique id*/
gen ikey=arron+";"+dept+";"+prov
/*average certain arrondissements*/
gen bob=0
replace bob=1 if ikey=="Yaounde I;Mfoundi;Centre"
replace bob=1 if ikey=="Yaounde II;Mfoundi;Centre"
replace bob=1 if ikey=="Yaounde III;Mfoundi;Centre"
replace bob=1 if ikey=="Yaounde IV;Mfoundi;Centre"
replace bob=1 if ikey=="Yaounde V;Mfoundi;Centre"
replace bob=1 if ikey=="Yaounde VI;Mfoundi;Centre"
replace ikey="Yaounde I;Mfoundi;Centre" if bob==1
replace bob=2 if ikey=="Douala 1;Wouri;Littoral"
replace bob=2 if ikey=="Douala 2;Wouri;Littoral"
replace bob=2 if ikey=="Douala 3;Wouri;Littoral"
replace bob=2 if ikey=="Douala 4;Wouri;Littoral"
replace ikey="Douala 1;Wouri;Littoral" if bob==2
drop bob

/*add toni_ID key*/
gen toni_ID=0
replace toni_ID=1 if ikey=="Abong Mbang;Haut Nyong;Est"
replace toni_ID=2 if ikey=="Ako;Donga Mantung;Nord Ouest"
replace toni_ID=3 if ikey=="Akonolinga;Nyong et Mfoumou;Centre"
replace toni_ID=4 if ikey=="Akwaya;Manyu;Sud Ouest"
replace toni_ID=5 if ikey=="Alou and Fontem;Manyu;Sud Ouest"
replace toni_ID=6 if ikey=="Ambam and Ma'an;VallÃ©e du Ntem;Sud"
replace toni_ID=7 if ikey=="Ayos;Nyong et Mfoumou;Centre"
replace toni_ID=8 if ikey=="Bafang;Haut Nkam;Ouest"
replace toni_ID=9 if ikey=="Bafia;Mbam et Inoubou;Centre"
replace toni_ID=10 if ikey=="Bafoussam;Mifi;Ouest"
replace toni_ID=11 if ikey=="Baham;Mifi;Ouest"
replace toni_ID=12 if ikey=="Bali;Mezam;Nord Ouest"
replace toni_ID=13 if ikey=="Bamenda;Mezam;Nord Ouest"
replace toni_ID=14 if ikey=="Bamendjou;Mifi;Ouest"
replace toni_ID=15 if ikey=="Bamusso;Ndian;Sud Ouest"
replace toni_ID=16 if ikey=="Bandja;Haut Nkam;Ouest"
replace toni_ID=17 if ikey=="Bangangte;Nde;Ouest"
replace toni_ID=18 if ikey=="Bankim;Mayo Banyo;Adamoua"
replace toni_ID=19 if ikey=="Batcham;Bamboutos;Ouest"
replace toni_ID=20 if ikey=="Batibo;Momo;Nord Ouest"
replace toni_ID=21 if ikey=="Batouri;Kadey;Est"
replace toni_ID=22 if ikey=="Bertoua;Lom et Djerem;Est"
replace toni_ID=23 if ikey=="Bibemi and Dembo;Benoue;Nord"
replace toni_ID=24 if ikey=="Blangoua;Logone et Chari;ExtrÃ¨me Nord"
replace toni_ID=25 if ikey=="Bogo;Diamare;ExtrÃ¨me Nord"
replace toni_ID=26 if ikey=="Bokito;Mbam et Inoubou;Centre"
replace toni_ID=27 if ikey=="Bourrha;Mayo Tsanaga;ExtrÃ¨me Nord"
replace toni_ID=28 if ikey=="Buea and West-Coast;Fako;Sud Ouest"
replace toni_ID=29 if ikey=="Dibombari;Moungo;Littoral"
replace toni_ID=30 if ikey=="Dimako;Haut Nyong;Est"
replace toni_ID=31 if ikey=="Djoum;Dja et Lobo;Sud"
replace toni_ID=32 if ikey=="Douala 1;Wouri;Littoral"
replace toni_ID=33 if ikey=="Doume;Haut Nyong;Est"
replace toni_ID=34 if ikey=="Dschang and Fokoue;Menoua;Ouest"
replace toni_ID=35 if ikey=="Ebolowa;VallÃ©e du Ntem;Sud"
replace toni_ID=36 if ikey=="EdÃ©a;Sanaga Maritime;Littoral"
replace toni_ID=37 if ikey=="Ekondo Titi;Ndian;Sud Ouest"
replace toni_ID=38 if ikey=="Eseka;Nyong et Kelle;Centre"
replace toni_ID=39 if ikey=="Eyumodjock;Manyu;Sud Ouest"
replace toni_ID=40 if ikey=="Figuil;Mayo Louti;Nord"
replace toni_ID=41 if ikey=="Fotokol;Logone et Chari;ExtrÃ¨me Nord"
replace toni_ID=42 if ikey=="Foumban;Noun;Ouest"
replace toni_ID=43 if ikey=="Foumbot;Noun;Ouest"
replace toni_ID=44 if ikey=="Fundong;Menchum;Nord Ouest"
replace toni_ID=45 if ikey=="Fungom and Furu-Awa;Menchum;Nord Ouest"
replace toni_ID=46 if ikey=="Galim Tignere;Faro et Deo;Adamoua"
replace toni_ID=47 if ikey=="Galim;Bamboutos;Ouest"
replace toni_ID=48 if ikey=="Garoua;Benoue;Nord"
replace toni_ID=49 if ikey=="Gazawa;Diamare;ExtrÃ¨me Nord"
replace toni_ID=50 if ikey=="Goulfey;Logone et Chari;ExtrÃ¨me Nord"
replace toni_ID=51 if ikey=="Guere;Mayo Danay;ExtrÃ¨me Nord"
replace toni_ID=52 if ikey=="Guider;Mayo Louti;Nord"
replace toni_ID=53 if ikey=="Guidiguis;Kaele;ExtrÃ¨me Nord"
replace toni_ID=54 if ikey=="Hina;Mayo Tsanaga;ExtrÃ¨me Nord"
replace toni_ID=55 if ikey=="Jakiri;Bui;Nord Ouest"
replace toni_ID=56 if ikey=="Kaele;Kaele;ExtrÃ¨me Nord"
replace toni_ID=57 if ikey=="Kalfou;Mayo Danay;ExtrÃ¨me Nord"
replace toni_ID=58 if ikey=="Kar-Hay;Mayo Danay;ExtrÃ¨me Nord"
replace toni_ID=59 if ikey=="Kolofata;Mayo Sava;ExtrÃ¨me Nord"
replace toni_ID=60 if ikey=="Kousseri;Logone et Chari;ExtrÃ¨me Nord"
replace toni_ID=61 if ikey=="Koutaba;Noun;Ouest"
replace toni_ID=62 if ikey=="Koza;Mayo Tsanaga;ExtrÃ¨me Nord"
replace toni_ID=63 if ikey=="Kribi;OcÃ©an;Sud"
replace toni_ID=64 if ikey=="Kumba;Meme;Sud Ouest"
replace toni_ID=65 if ikey=="Kumbo and Mbven;Bui;Nord Ouest"
replace toni_ID=66 if ikey=="Limbe;Fako;Sud Ouest"
replace toni_ID=67 if ikey=="Lomie;Haut Nyong;Est"
replace toni_ID=68 if ikey=="Loum;Moungo;Littoral"
replace toni_ID=69 if ikey=="Maga;Mayo Danay;ExtrÃ¨me Nord"
replace toni_ID=70 if ikey=="Magba;Noun;Ouest"
replace toni_ID=71 if ikey=="Makak;Nyong et Kelle;Centre"
replace toni_ID=72 if ikey=="Makari;Logone et Chari;ExtrÃ¨me Nord"
replace toni_ID=73 if ikey=="Makenene;Mbam et Inoubou;Centre"
replace toni_ID=74 if ikey=="Malentouen;Noun;Ouest"
replace toni_ID=75 if ikey=="Mamfe;Manyu;Sud Ouest"
replace toni_ID=76 if ikey=="Manjo;Moungo;Littoral"
replace toni_ID=77 if ikey=="Maroua;Diamare;ExtrÃ¨me Nord"
replace toni_ID=78 if ikey=="Massangan;Noun;Ouest"
replace toni_ID=79 if ikey=="Mayo-Oulo;Mayo Louti;Nord"
replace toni_ID=80 if ikey=="Mbalmayo;Nyong et So'o;Centre"
replace toni_ID=81 if ikey=="Mbandjock;Haute Sanaga;Centre"
replace toni_ID=82 if ikey=="Mbang;Kadey;Est"
replace toni_ID=83 if ikey=="Mbanga;Moungo;Littoral"
replace toni_ID=84 if ikey=="Mbankomo;Mefou et Afamba;Centre"
replace toni_ID=85 if ikey=="Mbengwi;Momo;Nord Ouest"
replace toni_ID=86 if ikey=="Mbouda;Bamboutos;Ouest"
replace toni_ID=87 if ikey=="Meiganga;Mbere;Adamoua"
replace toni_ID=88 if ikey=="Menchum department district unknown;Menchum;Nord Ouest"
replace toni_ID=89 if ikey=="Mengong;VallÃ©e du Ntem;Sud"
replace toni_ID=90 if ikey=="Mfou;Mefou et Afamba;Centre"
replace toni_ID=91 if ikey=="Mindif;Kaele;ExtrÃ¨me Nord"
replace toni_ID=92 if ikey=="Mokolo;Mayo Tsanaga;ExtrÃ¨me Nord"
replace toni_ID=93 if ikey=="Monatele;LekiÃ©;Centre"
replace toni_ID=94 if ikey=="Mora;Mayo Sava;ExtrÃ¨me Nord"
replace toni_ID=95 if ikey=="Moutourwa;Kaele;ExtrÃ¨me Nord"
replace toni_ID=96 if ikey=="Muyuka;Fako;Sud Ouest"
replace toni_ID=97 if ikey=="Mvangan;VallÃ©e du Ntem;Sud"
replace toni_ID=98 if ikey=="Nanga Eboko;Haute Sanaga;Centre"
replace toni_ID=99 if ikey=="Ndelele;Kadey;Est"
replace toni_ID=100 if ikey=="Ndop;Mezam;Nord Ouest"
replace toni_ID=101 if ikey=="Ngambe or Bambini;Sanaga Maritime;Littoral"
replace toni_ID=102 if ikey=="Nguti;Meme;Sud Ouest"
replace toni_ID=103 if ikey=="Nkambe;Donga Mantung;Nord Ouest"
replace toni_ID=104 if ikey=="Nkongsamba;Moungo;Littoral"
replace toni_ID=105 if ikey=="Nkoteng;Haute Sanaga;Centre"
replace toni_ID=106 if ikey=="Ntui;Mbam et Inoubou;Centre"
replace toni_ID=107 if ikey=="Nwa;Donga Mantung;Nord Ouest"
replace toni_ID=108 if ikey=="Obala;LekiÃ©;Centre"
replace toni_ID=109 if ikey=="Okola;LekiÃ©;Centre"
replace toni_ID=110 if ikey=="Olamze;VallÃ©e du Ntem;Sud"
replace toni_ID=111 if ikey=="Ombessa;Mbam et Inoubou;Centre"
replace toni_ID=112 if ikey=="Other Districts in Lom and Djerem Department;Lom et Djerem;Est"
replace toni_ID=113 if ikey=="Other districts in Bouba and Ngoko Department;Boumba et Ngoko;Est"
replace toni_ID=114 if ikey=="Other districts in Dja and Lobo Department;Dja et Lobo;Sud"
replace toni_ID=115 if ikey=="Other districts in Fare et Deo Department;Faro et Deo;Adamoua"
replace toni_ID=116 if ikey=="Other districts in Haut Nkam Department;Haut Nkam;Ouest"
replace toni_ID=117 if ikey=="Other districts in Haut Nyong Department;Haut Nyong;Est"
replace toni_ID=118 if ikey=="Other districts in Haute Sanaga Department;Haute Sanaga;Centre"
replace toni_ID=119 if ikey=="Other districts in Hauts Plateaux Department;Mifi;Ouest"
replace toni_ID=120 if ikey=="Other districts in LekiÃ© Department;LekiÃ©;Centre"
replace toni_ID=121 if ikey=="Other districts in Logone and Chari Department;Logone et Chari;ExtrÃ¨me Nord"
replace toni_ID=122 if ikey=="Other districts in Mayo Banyo Department;Mayo Banyo;Adamoua"
replace toni_ID=123 if ikey=="Other districts in Mbam and Inoubou Department;Mbam et Inoubou;Centre"
replace toni_ID=124 if ikey=="Other districts in Mbam and Kim Department;Mbam et Inoubou;Centre"
replace toni_ID=125 if ikey=="Other districts in Mbere Department;Mbere;Adamoua"
replace toni_ID=126 if ikey=="Other districts in Mefou and Afamba Department;Mefou et Afamba;Centre"
replace toni_ID=127 if ikey=="Other districts in Mefou and Akono Department;Mefou et Afamba;Centre"
replace toni_ID=128 if ikey=="Other districts in Momo Department;Momo;Nord Ouest"
replace toni_ID=129 if ikey=="Other districts in Mvilla Department;VallÃ©e du Ntem;Sud"
replace toni_ID=130 if ikey=="Other districts in Nde Department;Nde;Ouest"
replace toni_ID=131 if ikey=="Other districts in Nyong and Kelle Department;Nyong et Kelle;Centre"
replace toni_ID=132 if ikey=="Other districts in Nyong and Mfoumou Department;Nyong et Mfoumou;Centre"
replace toni_ID=133 if ikey=="Other districts in Nyong and So'o Department;Nyong et So'o;Centre"
replace toni_ID=134 if ikey=="Other districts in OcÃ©an Department;OcÃ©an;Sud"
replace toni_ID=135 if ikey=="Other districts in Sanaga Maritime Department;Sanaga Maritime;Littoral"
replace toni_ID=136 if ikey=="Penka-Michel or Bansoa;Menoua;Ouest"
replace toni_ID=137 if ikey=="Pitoua;Benoue;Nord"
replace toni_ID=138 if ikey=="Poli;Faro;Nord"
replace toni_ID=139 if ikey=="Rey-Bouba;Mayo Rey;Nord"
replace toni_ID=140 if ikey=="Saa;LekiÃ©;Centre"
replace toni_ID=141 if ikey=="Sangmelima;Dja et Lobo;Sud"
replace toni_ID=142 if ikey=="Santchou;Menoua;Ouest"
replace toni_ID=143 if ikey=="Soa;Mefou et Afamba;Centre"
replace toni_ID=144 if ikey=="TchollirÃ©;Mayo Rey;Nord"
replace toni_ID=145 if ikey=="Tibati;Djerem;Adamoua"
replace toni_ID=146 if ikey=="Tignere;Faro et Deo;Adamoua"
replace toni_ID=147 if ikey=="Tiko;Fako;Sud Ouest"
replace toni_ID=148 if ikey=="Tokombere;Mayo Sava;ExtrÃ¨me Nord"
replace toni_ID=149 if ikey=="Tombel;Meme;Sud Ouest"
replace toni_ID=150 if ikey=="Touboro;Mayo Rey;Nord"
replace toni_ID=151 if ikey=="Tubah;Mezam;Nord Ouest"
replace toni_ID=152 if ikey=="Wina;Mayo Danay;ExtrÃ¨me Nord"
replace toni_ID=153 if ikey=="Wum;Menchum;Nord Ouest"
replace toni_ID=154 if ikey=="Yagoua;Mayo Danay;ExtrÃ¨me Nord"
replace toni_ID=155 if ikey=="Yaounde I;Mfoundi;Centre"
replace toni_ID=156 if ikey=="Yokadouma;Boumba et Ngoko;Est"
drop if toni_ID==0

/*ADD IVs*/
merge m:m toni_ID using "S:\CM Data\arronIVv3.dta"
drop _merge


