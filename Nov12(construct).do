clear
set more off
use "S:\CM Data\IPUMS\original\ipumsi_00004.dta"

drop serial persons wthh pernum wtper birthyr birthmo bplcm MGYRS1 MIGCM1 MIGCM2 MIGCM3 sewage fuelck trash resident relate related marst marstd cntry sample
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
replace arron="Yaounde I" if arron=="Yaounde II"
replace arron_code=1201 if arron_code==1202
replace arron="Yaounde I" if arron=="Yaounde III"
replace arron_code=1201 if arron_code==1203
replace arron="Yaounde I" if arron=="Yaounde IV"
replace arron_code=1201 if arron_code==1204
replace arron="Douala 1" if arron=="Douala 2"
replace arron_code=2901 if arron_code==2902
replace arron="Douala 1" if arron=="Douala 3"
replace arron_code=2901 if arron_code==2903
replace arron="Douala 1" if arron=="Douala 4"
replace arron_code=2901 if arron_code==2904
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
ren ikey2 str_arron_code
destring ikey3, g(arrongrp)
ren ikey3 str_arrongrp
ren ikey4 dept
destring ikey5, g(dept_code)
ren ikey5 str_dept_code
ren ikey6 prov
destring ikey7, g(prov_code)
ren ikey7 str_prov_code
destring ikey8, g(t)
/*drop ikey ikey2 ikey3 ikey5 ikey7 ikey8*/

/*generate north/south dummy*/
gen north=0
replace north=1 if prov_code==1 /*Adamoua*/
replace north=1 if prov_code==4 /*Extreme-Nord*/
replace north=1 if prov_code==6 /*Nord*/

gen ikeya=arron+";"+str_arron_code+";"+str_arrongrp+";"+dept+";"+str_dept_code+";"+prov+";"+str_prov_code

/*match each ipums key (no time) with a cameroun foret key*/
gen cmforetkey="null"
replace cmforetkey="Abong Mbang;Haut-Nyong;Est;278" if ikeya=="Abong Mbang;1602;46;Haut Nyong;17;Est;3"
replace cmforetkey="Ako;Donga-Mantung;Nord-Ouest;58" if ikeya=="Ako;3505;119;Donga Mantung;36;Nord Ouest;7"
replace cmforetkey="Akonolinga;Nyong-et-Mfoumou;Centre;276" if ikeya=="Akonolinga;1401;40;Nyong et Mfoumou;14;Centre;2"
replace cmforetkey="Akwaya;Manyu;Sud-Ouest;69" if ikeya=="Akwaya;5601;178;Manyu;56;Sud Ouest;10"
replace cmforetkey="Ambam;VallÃ©e-Du-Ntem;Sud;11" if ikeya=="Ambam and Ma'an;5201;167;VallÃ©e du Ntem;52;Sud;9"
replace cmforetkey="Ayos;Nyong-et-Mfoumou;Centre;52" if ikeya=="Ayos;1402;41;Nyong et Mfoumou;14;Centre;2"
replace cmforetkey="BÃ©tarÃ© Oya;Lom-et-DjÃ©rem;Est;41" if ikeya=="BÃ©tarÃ©-Oya;1901;58;Lom et Djerem;19;Est;3"
replace cmforetkey="Bafang;Haut-Nkam;Ouest;222" if ikeya=="Bafang;4201;137;Haut Nkam;42;Ouest;8"
replace cmforetkey="Bafia;Mbam-et-Inoubou;Centre;208" if ikeya=="Bafia;801;21;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Bafoussam I;Mifi;Ouest;109" if ikeya=="Bafoussam;4601;148;Mifi;46;Ouest;8"
replace cmforetkey="Bafoussam II;Mifi;Ouest;106" if ikeya=="Bafoussam;4601;148;Mifi;46;Ouest;8"
replace cmforetkey="Bafoussam III;Mifi;Ouest;110" if ikeya=="Bafoussam;4601;148;Mifi;46;Ouest;8"
replace cmforetkey="Bali;Mezam;Nord-Ouest;91" if ikeya=="Bali;3802;126;Mezam;38;Nord Ouest;7"
replace cmforetkey="Bamenda I;Mezam;Nord-Ouest;218" if ikeya=="Bamenda;3803;127;Mezam;38;Nord Ouest;7"
replace cmforetkey="Bamenda II;Mezam;Nord-Ouest;86" if ikeya=="Bamenda;3803;127;Mezam;38;Nord Ouest;7"
replace cmforetkey="Bamenda III;Mezam;Nord-Ouest;217" if ikeya=="Bamenda;3803;127;Mezam;38;Nord Ouest;7"
replace cmforetkey="Bamusso;Ndian;Sud-Ouest;156" if ikeya=="Bamusso;5801;182;Ndian;58;Sud Ouest;10"
replace cmforetkey="Bandja;Haut-Nkam;Ouest;120" if ikeya=="Bandja;4202;138;Haut Nkam;42;Ouest;8"
replace cmforetkey="BangangtÃ©;NdÃ©;Ouest;126" if ikeya=="Bangangte;4701;150;Nde;47;Ouest;8"
replace cmforetkey="Bankim;Mayo-Banyo;Adamaoua;68" if ikeya=="Bankim;301;6;Mayo Banyo;3;Adamoua;1"
replace cmforetkey="Batcham;Bamboutos;Ouest;103" if ikeya=="Batcham;4102;134;Bamboutos;41;Ouest;8"
replace cmforetkey="Batibo;Momo;Nord-Ouest;92" if ikeya=="Batibo;3901;129;Momo;39;Nord Ouest;7"
replace cmforetkey="Batouri;Kadey;Est;47" if ikeya=="Batouri;1801;53;Kadey;18;Est;3"
replace cmforetkey="BÃ©ka;Faro;Nord;261" if ikeya=="Beka;3101;107;Faro;31;Nord;6"
replace cmforetkey="BÃ©labo;Lom-et-DjÃ©rem;Est;42" if ikeya=="Belabo;1805;57;Lom et Djerem;19;Est;3"
replace cmforetkey="BÃ©lÃ©l;Vina;Adamaoua;269" if ikeya=="Belel;403;9;Vina;5;Adamoua;1"
replace cmforetkey="Bertoua I;Lom-et-DjÃ©rem;Est;293" if ikeya=="Bertoua;1903;59;Lom et Djerem;19;Est;3"
replace cmforetkey="Bertoua II;Lom-et-DjÃ©rem;Est;54" if ikeya=="Bertoua;1903;59;Lom et Djerem;19;Est;3"
replace cmforetkey="Bibemi;BÃ©nouÃ©;Nord;259" if ikeya=="Bibemi and Dembo;3001;103;Benoue;30;Nord;6"
replace cmforetkey="Dembo;BÃ©nouÃ©;Nord;257" if ikeya=="Bibemi and Dembo;3001;103;Benoue;30;Nord;6"
replace cmforetkey="Blangoua;Logone-et-Chari;ExtrÃªme-Nord;22" if ikeya=="Blangoua;2101;65;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Bogo;DiamarÃ©;ExtrÃªme-Nord;30" if ikeya=="Bogo;2001;61;Diamare;20;ExtrÃ¨me Nord;4"
replace cmforetkey="Bogo;DiamarÃ©;ExtrÃªme-Nord;30" if ikeya=="Bogo;2001;61;Diamare;20;Nord;6"
replace cmforetkey="Bokito;Mbam-et-Inoubou;Centre;149" if ikeya=="Bokito;802;22;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Bourrha;Mayo-Tsanaga;ExtrÃªme-Nord;35" if ikeya=="Bourrha;2501;84;Mayo Tsanaga;25;ExtrÃ¨me Nord;4"
replace cmforetkey="BuÃ©a;Fako;Sud-Ouest;164" if ikeya=="Buea and West-Coast;5301;169;Fako;53;Sud Ouest;10"
replace cmforetkey="Dibombari;Moungo;Littoral;160" if ikeya=="Dibombari;2602;88;Moungo;26;Littoral;5"
replace cmforetkey="Dimako;Haut-Nyong;Est;50" if ikeya=="Dimako;1704;48;Haut Nyong;17;Est;3"
replace cmforetkey="Nkondjock;Nkam;Littoral;132" if ikeya=="Districts in Nkam Department;2799;94;Nkam;27;Littoral;5"
replace cmforetkey="Yabassi;Nkam;Littoral;151" if ikeya=="Districts in Nkam Department;2799;94;Nkam;27;Littoral;5"
replace cmforetkey="Yingui;Nkam;Littoral;147" if ikeya=="Districts in Nkam Department;2799;94;Nkam;27;Littoral;5"
replace cmforetkey="BÃ©lÃ©l;Vina;Adamaoua;269" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="Martap;Vina;Adamaoua;300" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="MbÃ©;Vina;Adamaoua;267" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="Nganha;Vina;Adamaoua;119" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="NgaoundÃ©rÃ© I;Vina;Adamaoua;299" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="NgaoundÃ©rÃ© II;Vina;Adamaoua;298" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="NgaoundÃ©rÃ© III;Vina;Adamaoua;296" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="Nyambaka;Vina;Adamaoua;297" if ikeya=="Districts in Vina Department;509;11;Adamaoua;60;Nord;6"
replace cmforetkey="Martap;Vina;Adamaoua;300" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="MbÃ©;Vina;Adamaoua;267" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="Nganha;Vina;Adamaoua;119" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="NgaoundÃ©rÃ© I;Vina;Adamaoua;299" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="NgaoundÃ©rÃ© II;Vina;Adamaoua;298" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="NgaoundÃ©rÃ© III;Vina;Adamaoua;296" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="Nyambaka;Vina;Adamaoua;297" if ikeya=="Districts in Vina Department;509;11;Vina;5;Adamoua;1"
replace cmforetkey="DizanguÃ©;Sanaga-Maritime;Littoral;179" if ikeya=="Dizangue;2801;95;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Djoum;Dja-et-Lobo;Sud;287" if ikeya=="Djoum;4901;158;Dja et Lobo;49;Sud;9"
replace cmforetkey="Misaje;Donga-Mantung;Nord-Ouest;60" if ikeya=="Donga Matung department, district unknown;3605;122;Donga Mantung;36;Nord Ouest;7"
replace cmforetkey="Ndu;Donga-Mantung;Nord-Ouest;67" if ikeya=="Donga Matung department, district unknown;3605;122;Donga Mantung;36;Nord Ouest;7"
replace cmforetkey="Douala I;Wouri;Littoral;195" if ikeya=="Douala 1;2901;99;Wouri;29;Littoral;5"
replace cmforetkey="Douala II;Wouri;Littoral;177" if ikeya=="Douala 1;2901;99;Wouri;29;Littoral;5"
replace cmforetkey="Douala III;Wouri;Littoral;196" if ikeya=="Douala 1;2901;99;Wouri;29;Littoral;5"
replace cmforetkey="Douala IV;Wouri;Littoral;170" if ikeya=="Douala 1;2901;99;Wouri;29;Littoral;5"
replace cmforetkey="Douala V;Wouri;Littoral;166" if ikeya=="Douala 1;2901;99;Wouri;29;Littoral;5"
replace cmforetkey="Douala VI;Wouri;Littoral;176" if ikeya=="Douala 1;2901;99;Wouri;29;Littoral;5"
replace cmforetkey="DoumÃ©;Haut-Nyong;Est;49" if ikeya=="Doume;1705;49;Haut Nyong;17;Est;3"
replace cmforetkey="Dschang;Menoua;Ouest;224" if ikeya=="Dschang and Fokoue;4501;145;Menoua;45;Ouest;8"
replace cmforetkey="FokouÃ©;Menoua;Ouest;118" if ikeya=="Dschang and Fokoue;4501;145;Menoua;45;Ouest;8"
replace cmforetkey="EdÃ©a I;Sanaga-Maritime;Littoral;216" if ikeya=="EdÃ©a;2802;96;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="EdÃ©a II;Sanaga-Maritime;Littoral;214" if ikeya=="EdÃ©a;2802;96;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Ekondo Titi;Ndian;Sud-Ouest;141" if ikeya=="Ekondo Titi;5802;183;Ndian;58;Sud Ouest;10"
replace cmforetkey="EsÃ©ka;Nyong-et-KellÃ©;Centre;189" if ikeya=="Eseka;1301;37;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Eyumojock;Manyu;Sud-Ouest;93" if ikeya=="Eyumodjock;5602;179;Manyu;56;Sud Ouest;10"
replace cmforetkey="Figuil;Mayo-Louti;Nord;252" if ikeya=="Figuil;3201;109;Mayo Louti;32;Nord;6"
replace cmforetkey="Fotokol;Logone-et-Chari;ExtrÃªme-Nord;26" if ikeya=="Fotokol;2103;66;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Foumban;Noun;Ouest;220" if ikeya=="Foumban;4802;152;Noun;48;Ouest;8"
replace cmforetkey="Foumbot;Noun;Ouest;107" if ikeya=="Foumbot;4803;153;Noun;48;Ouest;8"
replace cmforetkey="Fungom;Menchum;Nord-Ouest;62" if ikeya=="Fungom and Furu-Awa;3701;123;Menchum;37;Nord Ouest;7"
replace cmforetkey="Furu Awa;Menchum;Nord-Ouest;59" if ikeya=="Fungom and Furu-Awa;3701;123;Menchum;37;Nord Ouest;7"
replace cmforetkey="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270" if ikeya=="Galim Tignere;201;3;Faro et Deo;2;Adamoua;1"
replace cmforetkey="Galim;Bamboutos;Ouest;96" if ikeya=="Galim;4103;135;Bamboutos;41;Ouest;8"
replace cmforetkey="Gaoua III;BÃ©nouÃ©;Nord;295" if ikeya=="Garoua;3003;104;Benoue;30;Nord;6"
replace cmforetkey="Garoua I;BÃ©nouÃ©;Nord;303" if ikeya=="Garoua;3003;104;Benoue;30;Nord;6"
replace cmforetkey="Garoua II;BÃ©nouÃ©;Nord;280" if ikeya=="Garoua;3003;104;Benoue;30;Nord;6"
replace cmforetkey="Gazawa;DiamarÃ©;ExtrÃªme-Nord;240" if ikeya=="Gazawa;2002;62;Diamare;20;ExtrÃ¨me Nord;4"
replace cmforetkey="Goulfey;Logone-et-Chari;ExtrÃªme-Nord;24" if ikeya=="Goulfey;2104;67;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="GuÃ©rÃ©;Mayo-Danay;ExtrÃªme-Nord;248" if ikeya=="Guere;2203;71;Mayo Danay;22;ExtrÃ¨me Nord;4"
replace cmforetkey="Guider;Mayo-Louti;Nord;37" if ikeya=="Guider;3202;110;Benoue;30;Nord;6"
replace cmforetkey="Guider;Mayo-Louti;Nord;37" if ikeya=="Guider;3202;110;Mayo Louti;32;Nord;6"
replace cmforetkey="Hina;Mayo-Tsanaga;ExtrÃªme-Nord;244" if ikeya=="Hina;2502;85;Mayo Tsanaga;25;ExtrÃ¨me Nord;4"
replace cmforetkey="Jakiri;Bui;Nord-Ouest;81" if ikeya=="Jakiri;3501;117;Bui;35;Nord Ouest;7"
replace cmforetkey="PettÃ©;DiamarÃ©;ExtrÃªme-Nord;233" if ikeya=="Kaele;2302;78;Diamare;20;Nord;6"
replace cmforetkey="Kalfou;Mayo-Danay;ExtrÃªme-Nord;243" if ikeya=="Kalfou;2205;72;Mayo Danay;22;ExtrÃ¨me Nord;4"
replace cmforetkey="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251" if ikeya=="Kar-Hay;2206;73;Mayo Danay;22;ExtrÃ¨me Nord;4"
replace cmforetkey="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251" if ikeya=="Kar-Hay;2206;73;Mayo Danay;22;Nord;6"
replace cmforetkey="KÃ©kem;Haut-Nkam;Ouest;127" if ikeya=="Kekem;4203;139;Haut Nkam;42;Ouest;8"
replace cmforetkey="KettÃ©;Kadey;Est;43" if ikeya=="Kette;1802;54;Kadey;18;Est;3"
replace cmforetkey="Kolofata;Mayo-Sava;ExtrÃªme-Nord;232" if ikeya=="Kolofata;2401;81;Mayo Sava;24;ExtrÃ¨me Nord;4"
replace cmforetkey="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231" if ikeya=="Kousseri;2105;68;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231" if ikeya=="Kousseri;2105;68;Logone et Chari;21;Nord;6"
replace cmforetkey="Koutaba;Noun;Ouest;99" if ikeya=="Koutaba;4805;154;Noun;48;Ouest;8"
replace cmforetkey="Koza;Mayo-Tsanaga;ExtrÃªme-Nord;31" if ikeya=="Koza;2503;86;Mayo Tsanaga;25;ExtrÃ¨me Nord;4"
replace cmforetkey="Kribi I;OcÃ©an;Sud;230" if ikeya=="Kribi;5102;165;OcÃ©an;51;Sud;9"
replace cmforetkey="Kribi II;OcÃ©an;Sud;228" if ikeya=="Kribi;5102;165;OcÃ©an;51;Sud;9"
replace cmforetkey="Kumba I;Meme;Sud-Ouest;15" if ikeya=="Kumba;5701;181;Meme;57;Sud Ouest;10"
replace cmforetkey="Kumba II;Meme;Sud-Ouest;205" if ikeya=="Kumba;5701;181;Meme;57;Sud Ouest;10"
replace cmforetkey="Kumba III;Meme;Sud-Ouest;63" if ikeya=="Kumba;5701;181;Meme;57;Sud Ouest;10"
replace cmforetkey="Kumbo;Bui;Nord-Ouest;12" if ikeya=="Kumbo and Mbven;3502;118;Bui;35;Nord Ouest;7"
replace cmforetkey="Mbven;Bui;Nord-Ouest;73" if ikeya=="Kumbo and Mbven;3502;118;Bui;35;Nord Ouest;7"
replace cmforetkey="Limbe I;Fako;Sud-Ouest;229" if ikeya=="Limbe;5302;170;Fako;53;Sud Ouest;10"
replace cmforetkey="Limbe II;Fako;Sud-Ouest;204" if ikeya=="Limbe;5302;170;Fako;53;Sud Ouest;10"
replace cmforetkey="Limbe III;Fako;Sud-Ouest;212" if ikeya=="Limbe;5302;170;Fako;53;Sud Ouest;10"
replace cmforetkey="LomiÃ©;Haut-Nyong;Est;285" if ikeya=="Lomie;1707;50;Haut Nyong;17;Est;3"
replace cmforetkey="Loum;Moungo;Littoral;145" if ikeya=="Loum;2604;89;Moungo;26;Littoral;5"
replace cmforetkey="Maga;Mayo-Danay;ExtrÃªme-Nord;235" if ikeya=="Maga;2207;74;Mayo Danay;22;ExtrÃ¨me Nord;4"
replace cmforetkey="Magba;Noun;Ouest;79" if ikeya=="Magba;4806;155;Noun;48;Ouest;8"
replace cmforetkey="Makak;Nyong-et-KellÃ©;Centre;192" if ikeya=="Makak;1302;38;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Makary;Logone-et-Chari;ExtrÃªme-Nord;25" if ikeya=="Makari;2107;69;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Makary;Logone-et-Chari;ExtrÃªme-Nord;25" if ikeya=="Makari;2107;69;Logone et Chari;21;Nord;6"
replace cmforetkey="Makenene;Mbam-et-Inoubou;Centre;139" if ikeya=="Makenene;803;23;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Malantouen;Noun;Ouest;95" if ikeya=="Malentouen;4807;156;Noun;48;Ouest;8"
replace cmforetkey="Mamfe;Manyu;Sud-Ouest;21" if ikeya=="Mamfe;5603;180;Manyu;56;Sud Ouest;10"
replace cmforetkey="Manjo;Moungo;Littoral;138" if ikeya=="Manjo;2605;90;Moungo;26;Littoral;5"
replace cmforetkey="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55" if ikeya=="Maroua;2003;63;Diamare;20;ExtrÃ¨me Nord;4"
replace cmforetkey="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292" if ikeya=="Maroua;2003;63;Diamare;20;ExtrÃ¨me Nord;4"
replace cmforetkey="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294" if ikeya=="Maroua;2003;63;Diamare;20;ExtrÃ¨me Nord;4"
replace cmforetkey="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55" if ikeya=="Maroua;2003;63;Diamare;20;Nord;6"
replace cmforetkey="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292" if ikeya=="Maroua;2003;63;Diamare;20;Nord;6"
replace cmforetkey="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294" if ikeya=="Maroua;2003;63;Diamare;20;Nord;6"
replace cmforetkey="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55" if ikeya=="Maroua;3009;106;Benoue;30;Nord;6"
replace cmforetkey="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292" if ikeya=="Maroua;3009;106;Benoue;30;Nord;6"
replace cmforetkey="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294" if ikeya=="Maroua;3009;106;Benoue;30;Nord;6"
replace cmforetkey="Massangam;Noun;Ouest;108" if ikeya=="Massangan;4808;157;Noun;48;Ouest;8"
replace cmforetkey="Mayo-Oulo;Mayo-Louti;Nord;36" if ikeya=="Mayo-Oulo;3203;111;Mayo Louti;32;Nord;6"
replace cmforetkey="Mbalmayo;Nyong-et-So'o;Centre;197" if ikeya=="Mbalmayo;1501;43;Nyong et So'o;15;Centre;2"
replace cmforetkey="Mbandjock;Haute-Sanaga;Centre;157" if ikeya=="Mbandjock;601;12;Haute Sanaga;6;Centre;2"
replace cmforetkey="Mbang;Kadey;Est;277" if ikeya=="Mbang;1803;55;Kadey;18;Est;3"
replace cmforetkey="Mbanga;Moungo;Littoral;0" if ikeya=="Mbanga;2606;91;Moungo;26;Littoral;5"
replace cmforetkey="Mbengwi;Momo;Nord-Ouest;80" if ikeya=="Mbengwi;3902;130;Momo;39;Nord Ouest;7"
replace cmforetkey="Mbouda;Bamboutos;Ouest;102" if ikeya=="Mbouda;4104;136;Bamboutos;41;Ouest;8"
replace cmforetkey="Meiganga;MbÃ©rÃ©;Adamaoua;272" if ikeya=="Meiganga;402;8;Adamaoua;60;Nord;6"
replace cmforetkey="Meiganga;MbÃ©rÃ©;Adamaoua;272" if ikeya=="Meiganga;402;8;Mbere;4;Adamoua;1"
replace cmforetkey="MÃ©long;Moungo;Littoral;123" if ikeya=="Melong;2607;92;Moungo;26;Littoral;5"
replace cmforetkey="Menchum Valley;Menchum;Nord-Ouest;66" if ikeya=="Menchum department district unknown;3704;125;Menchum;37;Nord Ouest;7"
replace cmforetkey="MÃ©ri;DiamarÃ©;ExtrÃªme-Nord;33" if ikeya=="Meri;2006;64;Diamare;20;ExtrÃ¨me Nord;4"
replace cmforetkey="MÃ©ri;DiamarÃ©;ExtrÃªme-Nord;33" if ikeya=="Meri;2006;64;Diamare;20;Nord;6"
replace cmforetkey="MessamÃ©na;Haut-Nyong;Est;281" if ikeya=="Messamena;1709;51;Haut Nyong;17;Est;3"
replace cmforetkey="Mfou;MÃ©fou-et-Afamba;Centre;183" if ikeya=="Mfou;1001;28;Mefou et Afamba;10;Centre;2"
replace cmforetkey="Mindif;Mayo-Kani;ExtrÃªme-Nord;241" if ikeya=="Mindif;2303;79;Diamare;20;Nord;6"
replace cmforetkey="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32" if ikeya=="Mokolo;2506;87;Margui-Wandala;61;Nord;6"
replace cmforetkey="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32" if ikeya=="Mokolo;2506;87;Mayo Tsanaga;25;ExtrÃ¨me Nord;4"
replace cmforetkey="MonatÃ©lÃ©;LekiÃ©;Centre;162" if ikeya=="Monatele;702;16;LekiÃ©;7;Centre;2"
replace cmforetkey="Mora;Mayo-Sava;ExtrÃªme-Nord;29" if ikeya=="Mora;2402;82;Margui-Wandala;61;Nord;6"
replace cmforetkey="Mora;Mayo-Sava;ExtrÃªme-Nord;29" if ikeya=="Mora;2402;82;Mayo Sava;24;ExtrÃ¨me Nord;4"
replace cmforetkey="Muyuka;Fako;Sud-Ouest;159" if ikeya=="Muyuka;5303;171;Fako;53;Sud Ouest;10"
replace cmforetkey="Nanga-Eboko;Haute-Sanaga;Centre;45" if ikeya=="Nanga Eboko;602;13;Haute Sanaga;6;Centre;2"
replace cmforetkey="NdÃ©lÃ©lÃ©;Kadey;Est;51" if ikeya=="Ndelele;1804;56;Kadey;18;Est;3"
replace cmforetkey="NgambÃ©;Sanaga-Maritime;Littoral;3" if ikeya=="Ngambe or Bambini;2803;97;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Ngaoundal;DjÃ©rem;Adamaoua;273" if ikeya=="Ngaoundal;101;1;Djerem;1;Adamoua;1"
replace cmforetkey="Nkambe;Donga-Mantung;Nord-Ouest;65" if ikeya=="Nkambe;3603;120;Donga Mantung;36;Nord Ouest;7"
replace cmforetkey="Nkongsamba I;Moungo;Littoral;211" if ikeya=="Nkongsamba;2609;93;Moungo;26;Littoral;5"
replace cmforetkey="Nkongsamba II;Moungo;Littoral;210" if ikeya=="Nkongsamba;2609;93;Moungo;26;Littoral;5"
replace cmforetkey="Nkongsamba III;Moungo;Littoral;209" if ikeya=="Nkongsamba;2609;93;Moungo;26;Littoral;5"
replace cmforetkey="Nkoteng;Haute-Sanaga;Centre;275" if ikeya=="Nkoteng;603;14;Haute Sanaga;6;Centre;2"
replace cmforetkey="Ntui;Mbam-et-Kim;Centre;152" if ikeya=="Ntui;902;26;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Nwa;Donga-Mantung;Nord-Ouest;61" if ikeya=="Nwa;3604;121;Donga Mantung;36;Nord Ouest;7"
replace cmforetkey="Obala;LekiÃ©;Centre;161" if ikeya=="Obala;703;17;LekiÃ©;7;Centre;2"
replace cmforetkey="Okola;LekiÃ©;Centre;172" if ikeya=="Okola;705;18;LekiÃ©;7;Centre;2"
replace cmforetkey="OlamzÃ©;VallÃ©e-Du-Ntem;Sud;14" if ikeya=="Olamze;5202;168;VallÃ©e du Ntem;52;Sud;9"
replace cmforetkey="Ombessa;Mbam-et-Inoubou;Centre;146" if ikeya=="Ombessa;804;24;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Gari-Gombo;Boumba-et-Ngoko;Est;279" if ikeya=="Other districts in Bouba and Ngoko Department;1699;47;Boumba et Ngoko;16;Est;3"
replace cmforetkey="Moloundou;Boumba-et-Ngoko;Est;290" if ikeya=="Other districts in Bouba and Ngoko Department;1699;47;Boumba et Ngoko;16;Est;3"
replace cmforetkey="Bengbis;Dja-et-Lobo;Sud;282" if ikeya=="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9"
replace cmforetkey="Meyomessala;Dja-et-Lobo;Sud;286" if ikeya=="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9"
replace cmforetkey="Meyomessi;Dja-et-Lobo;Sud;274" if ikeya=="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9"
replace cmforetkey="Mintom;Dja-et-Lobo;Sud;289" if ikeya=="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9"
replace cmforetkey="Oveng;Dja-et-Lobo;Sud;291" if ikeya=="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9"
replace cmforetkey="ZoÃ©tÃ©lÃ©;Dja-et-Lobo;Sud;199" if ikeya=="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9"
replace cmforetkey="Mayo-BalÃ©o;Faro-et-DÃ©o;Adamaoua;266" if ikeya=="Other districts in Fare et Deo Department;209;5;Faro et Deo;2;Adamoua;1"
replace cmforetkey="Bakou;Haut-Nkam;Ouest;134" if ikeya=="Other districts in Haut Nkam Department;4299;141;Haut Nkam;42;Ouest;8"
replace cmforetkey="Bana;Haut-Nkam;Ouest;130" if ikeya=="Other districts in Haut Nkam Department;4299;141;Haut Nkam;42;Ouest;8"
replace cmforetkey="Banka;Haut-Nkam;Ouest;221" if ikeya=="Other districts in Haut Nkam Department;4299;141;Haut Nkam;42;Ouest;8"
replace cmforetkey="Ngoila;Haut-Nyong;Est;288" if ikeya=="Other districts in Haut Nyong Department;1799;52;Haut Nyong;17;Est;3"
replace cmforetkey="Nguelemendouka;Haut-Nyong;Est;48" if ikeya=="Other districts in Haut Nyong Department;1799;52;Haut Nyong;17;Est;3"
replace cmforetkey="Minta;Haute-Sanaga;Centre;44" if ikeya=="Other districts in Haute Sanaga Department;609;15;Haute Sanaga;6;Centre;2"
replace cmforetkey="Ebebda;LekiÃ©;Centre;158" if ikeya=="Other districts in LekiÃ© Department;709;20;LekiÃ©;7;Centre;2"
replace cmforetkey="Elig-Mfomo;LekiÃ©;Centre;165" if ikeya=="Other districts in LekiÃ© Department;709;20;LekiÃ©;7;Centre;2"
replace cmforetkey="Evodoula;LekiÃ©;Centre;169" if ikeya=="Other districts in LekiÃ© Department;709;20;LekiÃ©;7;Centre;2"
replace cmforetkey="HilÃ© - Halifa;Logone-et-Chari;ExtrÃªme-Nord;23" if ikeya=="Other districts in Logone and Chari Department;2199;70;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Logone Birni;Logone-et-Chari;ExtrÃªme-Nord;27" if ikeya=="Other districts in Logone and Chari Department;2199;70;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Waza;Logone-et-Chari;ExtrÃªme-Nord;28" if ikeya=="Other districts in Logone and Chari Department;2199;70;Logone et Chari;21;ExtrÃ¨me Nord;4"
replace cmforetkey="Diang;Lom-et-DjÃ©rem;Est;46" if ikeya=="Other Districts in Lom and Djerem Department;1999;60;Lom et Djerem;19;Est;3"
replace cmforetkey="Garoua-Boulai;Lom-et-DjÃ©rem;Est;40" if ikeya=="Other Districts in Lom and Djerem Department;1999;60;Lom et Djerem;19;Est;3"
replace cmforetkey="Mandjou;Lom-et-DjÃ©rem;Est;53" if ikeya=="Other Districts in Lom and Djerem Department;1999;60;Lom et Djerem;19;Est;3"
replace cmforetkey="Bankim;Mayo-Banyo;Adamaoua;68" if ikeya=="Other districts in Mayo Banyo Department;399;7;Adamaoua;60;Nord;6"
replace cmforetkey="Banyo;Mayo-Banyo;Adamaoua;57" if ikeya=="Other districts in Mayo Banyo Department;399;7;Adamaoua;60;Nord;6"
replace cmforetkey="Banyo;Mayo-Banyo;Adamaoua;57" if ikeya=="Other districts in Mayo Banyo Department;399;7;Mayo Banyo;3;Adamoua;1"
replace cmforetkey="Deuk;Mbam-et-Inoubou;Centre;128" if ikeya=="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Kiiki;Mbam-et-Inoubou;Centre;207" if ikeya=="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Kon-Yambetta;Mbam-et-Inoubou;Centre;206" if ikeya=="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Ndikinimeki;Mbam-et-Inoubou;Centre;143" if ikeya=="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Mbangassina;Mbam-et-Kim;Centre;150" if ikeya=="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="NgambÃ©-Tikar;Mbam-et-Kim;Centre;85" if ikeya=="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Ngoro;Mbam-et-Kim;Centre;121" if ikeya=="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Yoko;Mbam-et-Kim;Centre;39" if ikeya=="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2"
replace cmforetkey="Dir;MbÃ©rÃ©;Adamaoua;38" if ikeya=="Other districts in Mbere Department;409;10;Mbere;4;Adamoua;1"
replace cmforetkey="Djohong;MbÃ©rÃ©;Adamaoua;301" if ikeya=="Other districts in Mbere Department;409;10;Mbere;4;Adamoua;1"
replace cmforetkey="AwaÃ©;MÃ©fou-et-Afamba;Centre;173" if ikeya=="Other districts in Mefou and Afamba Department;1099;30;Mefou et Afamba;10;Centre;2"
replace cmforetkey="Esse;MÃ©fou-et-Afamba;Centre;163" if ikeya=="Other districts in Mefou and Afamba Department;1099;30;Mefou et Afamba;10;Centre;2"
replace cmforetkey="Ngie;Momo;Nord-Ouest;87" if ikeya=="Other districts in Momo Department;3999;131;Momo;39;Nord Ouest;7"
replace cmforetkey="Njikwa;Momo;Nord-Ouest;77" if ikeya=="Other districts in Momo Department;3999;131;Momo;39;Nord Ouest;7"
replace cmforetkey="Widikum-Menka;Momo;Nord-Ouest;84" if ikeya=="Other districts in Momo Department;3999;131;Momo;39;Nord Ouest;7"
replace cmforetkey="Bazou;NdÃ©;Ouest;131" if ikeya=="Other districts in Nde Department;4799;151;Nde;47;Ouest;8"
replace cmforetkey="Tonga;NdÃ©;Ouest;137" if ikeya=="Other districts in Nde Department;4799;151;Nde;47;Ouest;8"
replace cmforetkey="Idabato;Ndian;Sud-Ouest;2" if ikeya=="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10"
replace cmforetkey="Isangele;Ndian;Sud-Ouest;142" if ikeya=="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10"
replace cmforetkey="Kombo Abedimo;Ndian;Sud-Ouest;154" if ikeya=="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10"
replace cmforetkey="Kombo-Itindi;Ndian;Sud-Ouest;144" if ikeya=="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10"
replace cmforetkey="Mundemba;Ndian;Sud-Ouest;116" if ikeya=="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10"
replace cmforetkey="Bot-Makak;Nyong-et-KellÃ©;Centre;168" if ikeya=="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Dibang;Nyong-et-KellÃ©;Centre;174" if ikeya=="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Matomb;Nyong-et-KellÃ©;Centre;180" if ikeya=="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Messondo;Nyong-et-KellÃ©;Centre;187" if ikeya=="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Ngog-Mapubi;Nyong-et-KellÃ©;Centre;178" if ikeya=="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2"
replace cmforetkey="Endom;Nyong-et-Mfoumou;Centre;283" if ikeya=="Other districts in Nyong and Mfoumou Department;1499;42;Nyong et Mfoumou;14;Centre;2"
replace cmforetkey="Dzeng;Nyong-et-So'o;Centre;190" if ikeya=="Other districts in Nyong and So'o Department;1599;44;Nyong et So'o;15;Centre;2"
replace cmforetkey="Ngomedzap;Nyong-et-So'o;Centre;201" if ikeya=="Other districts in Nyong and So'o Department;1599;44;Nyong et So'o;15;Centre;2"
replace cmforetkey="Akom II;OcÃ©an;Sud;8" if ikeya=="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9"
replace cmforetkey="Bipindi;OcÃ©an;Sud;5" if ikeya=="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9"
replace cmforetkey="Campo;OcÃ©an;Sud;13" if ikeya=="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9"
replace cmforetkey="Lokoundje;OcÃ©an;Sud;19" if ikeya=="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9"
replace cmforetkey="Lolodorf;OcÃ©an;Sud;200" if ikeya=="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9"
replace cmforetkey="MvenguÃ©;OcÃ©an;Sud;6" if ikeya=="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9"
replace cmforetkey="Dibamba;Sanaga-Maritime;Littoral;213" if ikeya=="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Mouanko;Sanaga-Maritime;Littoral;191" if ikeya=="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Ndom;Sanaga-Maritime;Littoral;1" if ikeya=="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Ngwei;Sanaga-Maritime;Littoral;215" if ikeya=="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Pouma;Sanaga-Maritime;Littoral;175" if ikeya=="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5"
replace cmforetkey="Penka-Michel;Menoua;Ouest;111" if ikeya=="Penka-Michel;4503;146;Menoua;45;Ouest;8"
replace cmforetkey="Poli;Faro;Nord;263" if ikeya=="Poli;3102;108;Benoue;30;Nord;6"
replace cmforetkey="Poli;Faro;Nord;263" if ikeya=="Poli;3102;108;Faro;31;Nord;6"
replace cmforetkey="Rey-Bouba;Mayo-Rey;Nord;260" if ikeya=="Rey-Bouba;3301;112;Mayo Rey;33;Nord;6"
replace cmforetkey="Sa'a;LekiÃ©;Centre;4" if ikeya=="Saa;707;19;LekiÃ©;7;Centre;2"
replace cmforetkey="Sangmelima;Dja-et-Lobo;Sud;17" if ikeya=="Sangmelima;4903;159;Dja et Lobo;49;Sud;9"
replace cmforetkey="Santchou;Menoua;Ouest;117" if ikeya=="Santchou;4504;147;Menoua;45;Ouest;8"
replace cmforetkey="Soa;MÃ©fou-et-Afamba;Centre;171" if ikeya=="Soa;1002;29;Mefou et Afamba;10;Centre;2"
replace cmforetkey="TchollirÃ©;Mayo-Rey;Nord;264" if ikeya=="TchollirÃ©;3302;113;Mayo Rey;33;Nord;6"
replace cmforetkey="TchollirÃ©;Mayo-Rey;Nord;264" if ikeya=="Tchollire or Rey-Bouba;3305;115;Benoue;30;Nord;6"
replace cmforetkey="Tibati;DjÃ©rem;Adamaoua;271" if ikeya=="Tibati;102;2;Adamaoua;60;Nord;6"
replace cmforetkey="Tibati;DjÃ©rem;Adamaoua;271" if ikeya=="Tibati;102;2;Djerem;1;Adamoua;1"
replace cmforetkey="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270" if ikeya=="Tignere;202;4;Adamaoua;60;Nord;6"
replace cmforetkey="TignÃ¨re;Faro-et-DÃ©o;Adamaoua;268" if ikeya=="Tignere;202;4;Faro et Deo;2;Adamoua;1"
replace cmforetkey="Tiko;Fako;Sud-Ouest;167" if ikeya=="Tiko;5304;172;Fako;53;Sud Ouest;10"
replace cmforetkey="TokombÃ©rÃ©;Mayo-Sava;ExtrÃªme-Nord;236" if ikeya=="Tokombere;2403;83;Mayo Sava;24;ExtrÃ¨me Nord;4"
replace cmforetkey="Touboro;Mayo-Rey;Nord;265" if ikeya=="Touboro;3304;114;Mayo Rey;33;Nord;6"
replace cmforetkey="Tubah;Mezam;Nord-Ouest;82" if ikeya=="Tubah;3805;128;Mezam;38;Nord Ouest;7"
replace cmforetkey="Wina;Mayo-Danay;ExtrÃªme-Nord;253" if ikeya=="Wina;2210;75;Mayo Danay;22;ExtrÃ¨me Nord;4"
replace cmforetkey="Wum;Menchum;Nord-Ouest;70" if ikeya=="Wum;3703;124;Menchum;37;Nord Ouest;7"
replace cmforetkey="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34" if ikeya=="Yagoua;2211;76;Mayo Danay;22;ExtrÃ¨me Nord;4"
replace cmforetkey="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34" if ikeya=="Yagoua;2211;76;Mayo Danay;22;Nord;6"
replace cmforetkey="YaoundÃ© I;Mfoundi;Centre;181" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="YaoundÃ© II;Mfoundi;Centre;16" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="YaoundÃ© III;Mfoundi;Centre;184" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="YaoundÃ© IV;Mfoundi;Centre;188" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="YaoundÃ© V;Mfoundi;Centre;182" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="YaoundÃ© VI;Mfoundi;Centre;185" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="YaoundÃ© VII;Mfoundi;Centre;148" if ikeya=="Yaounde I;1201;33;Mfoundi;12;Centre;2"
replace cmforetkey="Yokadouma;Boumba-et-Ngoko;Est;284" if ikeya=="Yokadouma;1601;45;Boumba et Ngoko;16;Est;3"

/*ADD IVs*/
merge m:m cmforetkey using "S:\CM Data\arronIV.dta"
drop _merge

drop if cmforetkey=="null"

/*SAVE!*/
