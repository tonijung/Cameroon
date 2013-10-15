clear
set more off
use "S:\CM Data\IPUMS\ipumsi_00004.dta" 
gen arron_code=arrndcm
drop arrndcm
gen arron="null"
replace arron="Ngaoundal" if arron_code==101
replace arron="Tibati" if arron_code==102
replace arron="Galim Tignere" if arron_code==201
replace arron="Tignere" if arron_code==202
replace arron="Other districts in Fare et Deo Department" if arron_code==209
replace arron="Bankim" if arron_code==301
replace arron="Other districts in Mayo Banyo Department" if arron_code==399
replace arron="Dir" if arron_code==401
replace arron="Meiganga" if arron_code==402
replace arron="Belel" if arron_code==403
replace arron="Other districts in Mbere Department" if arron_code==409
replace arron="Districts in Vina Department" if arron_code==509
replace arron="Mbandjock" if arron_code==601
replace arron="Nanga Eboko" if arron_code==602
replace arron="Nkoteng" if arron_code==603
replace arron="Other districts in Haute Sanaga Department" if arron_code==609
replace arron="Ebebda" if arron_code==701
replace arron="Monatele" if arron_code==702
replace arron="Obala" if arron_code==703
replace arron="Batchenga" if arron_code==704
replace arron="Okola" if arron_code==705
replace arron="Lobo" if arron_code==706
replace arron="Saa" if arron_code==707
replace arron="Other districts in LekiÃ© Department" if arron_code==709
replace arron="Bafia" if arron_code==801
replace arron="Bokito" if arron_code==802
replace arron="Makenene" if arron_code==803
replace arron="Ombessa" if arron_code==804
replace arron="Other districts in Mbam and Inoubou Department" if arron_code==899
replace arron="Mbangassina" if arron_code==901
replace arron="Ntui" if arron_code==902
replace arron="Other districts in Mbam and Kim Department" if arron_code==999
replace arron="Mfou" if arron_code==1001
replace arron="Soa" if arron_code==1002
replace arron="Other districts in Mefou and Afamba Department" if arron_code==1099
replace arron="Mbankomo" if arron_code==1101
replace arron="Other districts in Mefou and Akono Department" if arron_code==1199
replace arron="Yaounde I" if arron_code==1201
replace arron="Yaounde II" if arron_code==1202
replace arron="Yaounde III" if arron_code==1203
replace arron="Yaounde IV" if arron_code==1204
replace arron="Yaounde V" if arron_code==1205
replace arron="Yaounde VI" if arron_code==1206
replace arron="Eseka" if arron_code==1301
replace arron="Makak" if arron_code==1302
replace arron="Other districts in Nyong and Kelle Department" if arron_code==1399
replace arron="Akonolinga" if arron_code==1401
replace arron="Ayos" if arron_code==1402
replace arron="Other districts in Nyong and Mfoumou Department" if arron_code==1499
replace arron="Mbalmayo" if arron_code==1501
replace arron="Other districts in Nyong and So'o Department" if arron_code==1599
replace arron="Yokadouma" if arron_code==1601
replace arron="Abong Mbang" if arron_code==1602
replace arron="Other districts in Bouba and Ngoko Department" if arron_code==1699
replace arron="Bebeng" if arron_code==1701
replace arron="Dja" if arron_code==1702
replace arron="Mboanz" if arron_code==1703
replace arron="Dimako" if arron_code==1704
replace arron="Doume" if arron_code==1705
replace arron="Doumaintang" if arron_code==1706
replace arron="Lomie" if arron_code==1707
replace arron="Messok" if arron_code==1708
replace arron="Messamena" if arron_code==1709
replace arron="Other districts in Haut Nyong Department" if arron_code==1799
replace arron="Batouri" if arron_code==1801
replace arron="Kette" if arron_code==1802
replace arron="Mbang" if arron_code==1803
replace arron="Ndelele" if arron_code==1804
replace arron="Belabo" if arron_code==1805
replace arron="Other districts in Kadey Department" if arron_code==1899
replace arron="BÃ©tarÃ©-Oya" if arron_code==1901
replace arron="Ngoura" if arron_code==1902
replace arron="Bertoua" if arron_code==1903
replace arron="Other Districts in Lom and Djerem Department" if arron_code==1999
replace arron="Bogo" if arron_code==2001
replace arron="Gazawa" if arron_code==2002
replace arron="Maroua" if arron_code==2003
replace arron="Dargala" if arron_code==2004
replace arron="Ndoukoula" if arron_code==2005
replace arron="Meri" if arron_code==2006
replace arron="Pette" if arron_code==2007
replace arron="Blangoua" if arron_code==2101
replace arron="Darak" if arron_code==2102
replace arron="Fotokol" if arron_code==2103
replace arron="Goulfey" if arron_code==2104
replace arron="Kousseri" if arron_code==2105
replace arron="Logone-Birni" if arron_code==2106
replace arron="Makari" if arron_code==2107
replace arron="Other districts in Logone and Chari Department" if arron_code==2199
replace arron="Datcheka" if arron_code==2201
replace arron="Gobo" if arron_code==2202
replace arron="Guere" if arron_code==2203
replace arron="KaÃ¯kaÃ¯" if arron_code==2204
replace arron="Kalfou" if arron_code==2205
replace arron="Kar-Hay" if arron_code==2206
replace arron="Maga" if arron_code==2207
replace arron="Tchatibali" if arron_code==2208
replace arron="Vele" if arron_code==2209
replace arron="Wina" if arron_code==2210
replace arron="Yagoua" if arron_code==2211
replace arron="Guidiguis" if arron_code==2301
replace arron="Kaele" if arron_code==2302
replace arron="Mindif" if arron_code==2303
replace arron="Moulvoudaye" if arron_code==2304
replace arron="Moutourwa" if arron_code==2305
replace arron="Porhi" if arron_code==2306
replace arron="TaÃ¯bong" if arron_code==2307
replace arron="Kolofata" if arron_code==2401
replace arron="Mora" if arron_code==2402
replace arron="Tokombere" if arron_code==2403
replace arron="Bourrha" if arron_code==2501
replace arron="Hina" if arron_code==2502
replace arron="Koza" if arron_code==2503
replace arron="Mayo-Moskota" if arron_code==2504
replace arron="Mogode" if arron_code==2505
replace arron="Mokolo" if arron_code==2506
replace arron="Soulede Roua" if arron_code==2507
replace arron="Bare-Bakem" if arron_code==2601
replace arron="Dibombari" if arron_code==2602
replace arron="Fiko" if arron_code==2603
replace arron="Loum" if arron_code==2604
replace arron="Manjo" if arron_code==2605
replace arron="Mbanga" if arron_code==2606
replace arron="Melong" if arron_code==2607
replace arron="Njombe-Penja" if arron_code==2608
replace arron="Nkongsamba" if arron_code==2609
replace arron="Other districts in Moungo Department" if arron_code==2699
replace arron="Districts in Nkam Department" if arron_code==2799
replace arron="Dizangue" if arron_code==2801
replace arron="EdÃ©a" if arron_code==2802
replace arron="Ngambe or Bambini" if arron_code==2803
replace arron="Other districts in Sanaga Maritime Department" if arron_code==2899
replace arron="Douala 1" if arron_code==2901
replace arron="Douala 2" if arron_code==2902
replace arron="Douala 3" if arron_code==2903
replace arron="Douala 4" if arron_code==2904
replace arron="Other districts in Wouri Department" if arron_code==2999
replace arron="Bibemi and Dembo" if arron_code==3001
replace arron="Lagdo" if arron_code==3002
replace arron="Garoua" if arron_code==3003
replace arron="Bascheo" if arron_code==3004
replace arron="Demsa" if arron_code==3005
replace arron="Touroua" if arron_code==3006
replace arron="Pitoua" if arron_code==3007
replace arron="Tcheboa" if arron_code==3008
replace arron="Maroua" if arron_code==3009
replace arron="Beka" if arron_code==3101
replace arron="Poli" if arron_code==3102
replace arron="Figuil" if arron_code==3201
replace arron="Guider" if arron_code==3202
replace arron="Mayo-Oulo" if arron_code==3203
replace arron="Rey-Bouba" if arron_code==3301
replace arron="TchollirÃ©" if arron_code==3302
replace arron="Madingring" if arron_code==3303
replace arron="Touboro" if arron_code==3304
replace arron="Tchollire or Rey-Bouba" if arron_code==3305
replace arron="Belo" if arron_code==3401
replace arron="Fundong" if arron_code==3402
replace arron="Other districts in Boyo Department" if arron_code==3499
replace arron="Jakiri" if arron_code==3501
replace arron="Kumbo and Mbven" if arron_code==3502
replace arron="Noni" if arron_code==3503
replace arron="Oku" if arron_code==3504
replace arron="Ako" if arron_code==3505
replace arron="Misaje" if arron_code==3601
replace arron="Ndu" if arron_code==3602
replace arron="Nkambe" if arron_code==3603
replace arron="Nwa" if arron_code==3604
replace arron="Donga Matung department, district unknown" if arron_code==3605
replace arron="Fungom and Furu-Awa" if arron_code==3701
replace arron="Menchum-Valley" if arron_code==3702
replace arron="Wum" if arron_code==3703
replace arron="Menchum department district unknown" if arron_code==3704
replace arron="Bafut" if arron_code==3801
replace arron="Bali" if arron_code==3802
replace arron="Bamenda" if arron_code==3803
replace arron="Santa" if arron_code==3804
replace arron="Tubah" if arron_code==3805
replace arron="Batibo" if arron_code==3901
replace arron="Mbengwi" if arron_code==3902
replace arron="Widikum-Menka" if arron_code==3903
replace arron="Other districts in Momo Department" if arron_code==3999
replace arron="Babessi" if arron_code==4001
replace arron="Balikumbat" if arron_code==4002
replace arron="Ndop" if arron_code==4003
replace arron="Banjoun" if arron_code==4004
replace arron="Babadjou" if arron_code==4101
replace arron="Batcham" if arron_code==4102
replace arron="Galim" if arron_code==4103
replace arron="Mbouda" if arron_code==4104
replace arron="Bafang" if arron_code==4201
replace arron="Bandja" if arron_code==4202
replace arron="Kekem" if arron_code==4203
replace arron="Company" if arron_code==4204
replace arron="Other districts in Haut Nkam Department" if arron_code==4299
replace arron="Baham" if arron_code==4301
replace arron="Bamendjou" if arron_code==4302
replace arron="Other districts in Hauts Plateaux Department" if arron_code==4399
replace arron="Poumougne" if arron_code==4401
replace arron="Other districts in Koung Khi Department" if arron_code==4499
replace arron="Dschang and Fokoue" if arron_code==4501
replace arron="Nkong-Ni" if arron_code==4502
replace arron="Penka-Michel" if arron_code==4503
replace arron="Santchou" if arron_code==4504
replace arron="Bafoussam" if arron_code==4601
replace arron="Baleng" if arron_code==4602
replace arron="Bamougoum" if arron_code==4603
replace arron="Penka-Michel or Bansoa" if arron_code==4604
replace arron="Bangangte" if arron_code==4701
replace arron="Other districts in Nde Department" if arron_code==4799
replace arron="Bangourain" if arron_code==4801
replace arron="Foumban" if arron_code==4802
replace arron="Foumbot" if arron_code==4803
replace arron="Kouoptamo" if arron_code==4804
replace arron="Koutaba" if arron_code==4805
replace arron="Magba" if arron_code==4806
replace arron="Malentouen" if arron_code==4807
replace arron="Massangan" if arron_code==4808
replace arron="Djoum" if arron_code==4901
replace arron="Meyomessala" if arron_code==4902
replace arron="Sangmelima" if arron_code==4903
replace arron="Zoetele" if arron_code==4904
replace arron="Other districts in Dja and Lobo Department" if arron_code==4999
replace arron="Ebolowa" if arron_code==5001
replace arron="Mengong" if arron_code==5002
replace arron="Mvangan" if arron_code==5003
replace arron="Other districts in Mvilla Department" if arron_code==5099
replace arron="Niete" if arron_code==5101
replace arron="Kribi" if arron_code==5102
replace arron="Other districts in OcÃ©an Department" if arron_code==5199
replace arron="Ambam and Ma'an" if arron_code==5201
replace arron="Olamze" if arron_code==5202
replace arron="Buea and West-Coast" if arron_code==5301
replace arron="Limbe" if arron_code==5302
replace arron="Muyuka" if arron_code==5303
replace arron="Tiko" if arron_code==5304
replace arron="Victoria" if arron_code==5305
replace arron="Banguem" if arron_code==5401
replace arron="Nguti" if arron_code==5402
replace arron="Tombel" if arron_code==5403
replace arron="Alou and Fontem" if arron_code==5501
replace arron="Wabane" if arron_code==5502
replace arron="Akwaya" if arron_code==5601
replace arron="Eyumodjock" if arron_code==5602
replace arron="Mamfe" if arron_code==5603
replace arron="Upper Bayang" if arron_code==5604
replace arron="Kumba" if arron_code==5701
replace arron="Konye" if arron_code==5702
replace arron="Mbonge" if arron_code==5703
replace arron="Bamusso" if arron_code==5801
replace arron="Ekondo Titi" if arron_code==5802
replace arron="Other districts in Ndian Department" if arron_code==5899
save "S:\CM Data\IPUMS\10-15-ipumsi_00004.dta", replace
