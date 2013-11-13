set more off
insheet using "S:\CM Data\distance\cmforet\dist_arron.csv", comma clear
gen dam="null"
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
gen ckey="null"
replace ckey="Mbanga;Moungo;Littoral;0" if near_fid==0
replace ckey="Ndom;Sanaga-Maritime;Littoral;1" if near_fid==1
replace ckey="Idabato;Ndian;Sud-Ouest;2" if near_fid==2
replace ckey="NgambÃ©;Sanaga-Maritime;Littoral;3" if near_fid==3
replace ckey="Sa'a;LekiÃ©;Centre;4" if near_fid==4
replace ckey="Bipindi;OcÃ©an;Sud;5" if near_fid==5
replace ckey="MvenguÃ©;OcÃ©an;Sud;6" if near_fid==6
replace ckey="Ngoulemakong;Mvila;Sud;7" if near_fid==7
replace ckey="Akom II;OcÃ©an;Sud;8" if near_fid==8
replace ckey="Mvangan;Mvila;Sud;9" if near_fid==9
replace ckey="Ma'an;VallÃ©e-Du-Ntem;Sud;10" if near_fid==10
replace ckey="Ambam;VallÃ©e-Du-Ntem;Sud;11" if near_fid==11
replace ckey="Kumbo;Bui;Nord-Ouest;12" if near_fid==12
replace ckey="Campo;OcÃ©an;Sud;13" if near_fid==13
replace ckey="OlamzÃ©;VallÃ©e-Du-Ntem;Sud;14" if near_fid==14
replace ckey="Kumba I;Meme;Sud-Ouest;15" if near_fid==15
replace ckey="YaoundÃ© II;Mfoundi;Centre;16" if near_fid==16
replace ckey="Sangmelima;Dja-et-Lobo;Sud;17" if near_fid==17
replace ckey="Biwong-Bulu;Mvila;Sud;18" if near_fid==18
replace ckey="Lokoundje;OcÃ©an;Sud;19" if near_fid==19
replace ckey="Nkum;Bui;Nord-Ouest;20" if near_fid==20
replace ckey="Mamfe;Manyu;Sud-Ouest;21" if near_fid==21
replace ckey="Blangoua;Logone-et-Chari;ExtrÃªme-Nord;22" if near_fid==22
replace ckey="HilÃ© - Halifa;Logone-et-Chari;ExtrÃªme-Nord;23" if near_fid==23
replace ckey="Goulfey;Logone-et-Chari;ExtrÃªme-Nord;24" if near_fid==24
replace ckey="Makary;Logone-et-Chari;ExtrÃªme-Nord;25" if near_fid==25
replace ckey="Fotokol;Logone-et-Chari;ExtrÃªme-Nord;26" if near_fid==26
replace ckey="Logone Birni;Logone-et-Chari;ExtrÃªme-Nord;27" if near_fid==27
replace ckey="Waza;Logone-et-Chari;ExtrÃªme-Nord;28" if near_fid==28
replace ckey="Mora;Mayo-Sava;ExtrÃªme-Nord;29" if near_fid==29
replace ckey="Bogo;DiamarÃ©;ExtrÃªme-Nord;30" if near_fid==30
replace ckey="Koza;Mayo-Tsanaga;ExtrÃªme-Nord;31" if near_fid==31
replace ckey="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32" if near_fid==32
replace ckey="MÃ©ri;DiamarÃ©;ExtrÃªme-Nord;33" if near_fid==33
replace ckey="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34" if near_fid==34
replace ckey="Bourrha;Mayo-Tsanaga;ExtrÃªme-Nord;35" if near_fid==35
replace ckey="Mayo-Oulo;Mayo-Louti;Nord;36" if near_fid==36
replace ckey="Guider;Mayo-Louti;Nord;37" if near_fid==37
replace ckey="Dir;MbÃ©rÃ©;Adamaoua;38" if near_fid==38
replace ckey="Yoko;Mbam-et-Kim;Centre;39" if near_fid==39
replace ckey="Garoua-Boulai;Lom-et-DjÃ©rem;Est;40" if near_fid==40
replace ckey="BÃ©tarÃ© Oya;Lom-et-DjÃ©rem;Est;41" if near_fid==41
replace ckey="BÃ©labo;Lom-et-DjÃ©rem;Est;42" if near_fid==42
replace ckey="KettÃ©;Kadey;Est;43" if near_fid==43
replace ckey="Minta;Haute-Sanaga;Centre;44" if near_fid==44
replace ckey="Nanga-Eboko;Haute-Sanaga;Centre;45" if near_fid==45
replace ckey="Diang;Lom-et-DjÃ©rem;Est;46" if near_fid==46
replace ckey="Batouri;Kadey;Est;47" if near_fid==47
replace ckey="Nguelemendouka;Haut-Nyong;Est;48" if near_fid==48
replace ckey="DoumÃ©;Haut-Nyong;Est;49" if near_fid==49
replace ckey="Dimako;Haut-Nyong;Est;50" if near_fid==50
replace ckey="NdÃ©lÃ©lÃ©;Kadey;Est;51" if near_fid==51
replace ckey="Ayos;Nyong-et-Mfoumou;Centre;52" if near_fid==52
replace ckey="Mandjou;Lom-et-DjÃ©rem;Est;53" if near_fid==53
replace ckey="Bertoua II;Lom-et-DjÃ©rem;Est;54" if near_fid==54
replace ckey="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55" if near_fid==55
replace ckey="Tcheboa;BÃ©nouÃ©;Nord;56" if near_fid==56
replace ckey="Banyo;Mayo-Banyo;Adamaoua;57" if near_fid==57
replace ckey="Ako;Donga-Mantung;Nord-Ouest;58" if near_fid==58
replace ckey="Furu Awa;Menchum;Nord-Ouest;59" if near_fid==59
replace ckey="Misaje;Donga-Mantung;Nord-Ouest;60" if near_fid==60
replace ckey="Nwa;Donga-Mantung;Nord-Ouest;61" if near_fid==61
replace ckey="Fungom;Menchum;Nord-Ouest;62" if near_fid==62
replace ckey="Kumba III;Meme;Sud-Ouest;63" if near_fid==63
replace ckey="Bum;Boyo;Nord-Ouest;64" if near_fid==64
replace ckey="Nkambe;Donga-Mantung;Nord-Ouest;65" if near_fid==65
replace ckey="Menchum Valley;Menchum;Nord-Ouest;66" if near_fid==66
replace ckey="Ndu;Donga-Mantung;Nord-Ouest;67" if near_fid==67
replace ckey="Bankim;Mayo-Banyo;Adamaoua;68" if near_fid==68
replace ckey="Akwaya;Manyu;Sud-Ouest;69" if near_fid==69
replace ckey="Wum;Menchum;Nord-Ouest;70" if near_fid==70
replace ckey="Noni;Bui;Nord-Ouest;71" if near_fid==71
replace ckey="Fundong;Boyo;Nord-Ouest;72" if near_fid==72
replace ckey="Mbven;Bui;Nord-Ouest;73" if near_fid==73
replace ckey="Belo;Boyo;Nord-Ouest;74" if near_fid==74
replace ckey="Bafut;Mezam;Nord-Ouest;75" if near_fid==75
replace ckey="Oku;Bui;Nord-Ouest;76" if near_fid==76
replace ckey="Njikwa;Momo;Nord-Ouest;77" if near_fid==77
replace ckey="Njinikom;Boyo;Nord-Ouest;78" if near_fid==78
replace ckey="Magba;Noun;Ouest;79" if near_fid==79
replace ckey="Mbengwi;Momo;Nord-Ouest;80" if near_fid==80
replace ckey="Jakiri;Bui;Nord-Ouest;81" if near_fid==81
replace ckey="Tubah;Mezam;Nord-Ouest;82" if near_fid==82
replace ckey="Babessi;Ngo-Ketunjia;Nord-Ouest;83" if near_fid==83
replace ckey="Widikum-Menka;Momo;Nord-Ouest;84" if near_fid==84
replace ckey="NgambÃ©-Tikar;Mbam-et-Kim;Centre;85" if near_fid==85
replace ckey="Bamenda II;Mezam;Nord-Ouest;86" if near_fid==86
replace ckey="Ngie;Momo;Nord-Ouest;87" if near_fid==87
replace ckey="Ndop;Ngo-Ketunjia;Nord-Ouest;88" if near_fid==88
replace ckey="Bangourain;Noun;Ouest;89" if near_fid==89
replace ckey="Balikumbat;Ngo-Ketunjia;Nord-Ouest;90" if near_fid==90
replace ckey="Bali;Mezam;Nord-Ouest;91" if near_fid==91
replace ckey="Batibo;Momo;Nord-Ouest;92" if near_fid==92
replace ckey="Eyumojock;Manyu;Sud-Ouest;93" if near_fid==93
replace ckey="Santa;Mezam;Nord-Ouest;94" if near_fid==94
replace ckey="Malantouen;Noun;Ouest;95" if near_fid==95
replace ckey="Galim;Bamboutos;Ouest;96" if near_fid==96
replace ckey="Upper Bayang;Manyu;Sud-Ouest;97" if near_fid==97
replace ckey="Kouoptamo;Noun;Ouest;98" if near_fid==98
replace ckey="Koutaba;Noun;Ouest;99" if near_fid==99
replace ckey="Babadjou;Bamboutos;Ouest;100" if near_fid==100
replace ckey="Wabane;Lebialem;Sud-Ouest;101" if near_fid==101
replace ckey="Mbouda;Bamboutos;Ouest;102" if near_fid==102
replace ckey="Batcham;Bamboutos;Ouest;103" if near_fid==103
replace ckey="Nkong-Ni;Menoua;Ouest;104" if near_fid==104
replace ckey="Alou;Lebialem;Sud-Ouest;105" if near_fid==105
replace ckey="Bafoussam II;Mifi;Ouest;106" if near_fid==106
replace ckey="Foumbot;Noun;Ouest;107" if near_fid==107
replace ckey="Massangam;Noun;Ouest;108" if near_fid==108
replace ckey="Bafoussam I;Mifi;Ouest;109" if near_fid==109
replace ckey="Bafoussam III;Mifi;Ouest;110" if near_fid==110
replace ckey="Penka-Michel;Menoua;Ouest;111" if near_fid==111
replace ckey="Fontem;Lebialem;Sud-Ouest;112" if near_fid==112
replace ckey="Nguti;KupÃ©-Manengouba;Sud-Ouest;113" if near_fid==113
replace ckey="Bamendjou;Hauts-Plateaux;Ouest;114" if near_fid==114
replace ckey="Poumougne;Koung-Khi;Ouest;115" if near_fid==115
replace ckey="Mundemba;Ndian;Sud-Ouest;116" if near_fid==116
replace ckey="Santchou;Menoua;Ouest;117" if near_fid==117
replace ckey="FokouÃ©;Menoua;Ouest;118" if near_fid==118
replace ckey="Nganha;Vina;Adamaoua;119" if near_fid==119
replace ckey="Bandja;Haut-Nkam;Ouest;120" if near_fid==120
replace ckey="Ngoro;Mbam-et-Kim;Centre;121" if near_fid==121
replace ckey="Baham;Hauts-Plateaux;Ouest;122" if near_fid==122
replace ckey="MÃ©long;Moungo;Littoral;123" if near_fid==123
replace ckey="Bayangam;Koung-Khi;Ouest;124" if near_fid==124
replace ckey="Bangou;Hauts-Plateaux;Ouest;125" if near_fid==125
replace ckey="BangangtÃ©;NdÃ©;Ouest;126" if near_fid==126
replace ckey="KÃ©kem;Haut-Nkam;Ouest;127" if near_fid==127
replace ckey="Deuk;Mbam-et-Inoubou;Centre;128" if near_fid==128
replace ckey="Bangem;KupÃ©-Manengouba;Sud-Ouest;129" if near_fid==129
replace ckey="Bana;Haut-Nkam;Ouest;130" if near_fid==130
replace ckey="Bazou;NdÃ©;Ouest;131" if near_fid==131
replace ckey="Nkondjock;Nkam;Littoral;132" if near_fid==132
replace ckey="Konye;Meme;Sud-Ouest;133" if near_fid==133
replace ckey="Bakou;Haut-Nkam;Ouest;134" if near_fid==134
replace ckey="Tombel;KupÃ©-Manengouba;Sud-Ouest;135" if near_fid==135
replace ckey="BarÃ©-Bakem;Moungo;Littoral;136" if near_fid==136
replace ckey="Tonga;NdÃ©;Ouest;137" if near_fid==137
replace ckey="Manjo;Moungo;Littoral;138" if near_fid==138
replace ckey="Makenene;Mbam-et-Inoubou;Centre;139" if near_fid==139
replace ckey="Nlonako;Moungo;Littoral;140" if near_fid==140
replace ckey="Ekondo Titi;Ndian;Sud-Ouest;141" if near_fid==141
replace ckey="Isangele;Ndian;Sud-Ouest;142" if near_fid==142
replace ckey="Ndikinimeki;Mbam-et-Inoubou;Centre;143" if near_fid==143
replace ckey="Kombo-Itindi;Ndian;Sud-Ouest;144" if near_fid==144
replace ckey="Loum;Moungo;Littoral;145" if near_fid==145
replace ckey="Ombessa;Mbam-et-Inoubou;Centre;146" if near_fid==146
replace ckey="Yingui;Nkam;Littoral;147" if near_fid==147
replace ckey="YaoundÃ© VII;Mfoundi;Centre;148" if near_fid==148
replace ckey="Bokito;Mbam-et-Inoubou;Centre;149" if near_fid==149
replace ckey="Mbangassina;Mbam-et-Kim;Centre;150" if near_fid==150
replace ckey="Yabassi;Nkam;Littoral;151" if near_fid==151
replace ckey="Ntui;Mbam-et-Kim;Centre;152" if near_fid==152
replace ckey="NjombÃ©-Penja;Moungo;Littoral;153" if near_fid==153
replace ckey="Kombo Abedimo;Ndian;Sud-Ouest;154" if near_fid==154
replace ckey="Mbonge;Meme;Sud-Ouest;155" if near_fid==155
replace ckey="Bamusso;Ndian;Sud-Ouest;156" if near_fid==156
replace ckey="Mbandjock;Haute-Sanaga;Centre;157" if near_fid==157
replace ckey="Ebebda;LekiÃ©;Centre;158" if near_fid==158
replace ckey="Muyuka;Fako;Sud-Ouest;159" if near_fid==159
replace ckey="Dibombari;Moungo;Littoral;160" if near_fid==160
replace ckey="Obala;LekiÃ©;Centre;161" if near_fid==161
replace ckey="MonatÃ©lÃ©;LekiÃ©;Centre;162" if near_fid==162
replace ckey="Esse;MÃ©fou-et-Afamba;Centre;163" if near_fid==163
replace ckey="BuÃ©a;Fako;Sud-Ouest;164" if near_fid==164
replace ckey="Elig-Mfomo;LekiÃ©;Centre;165" if near_fid==165
replace ckey="Douala V;Wouri;Littoral;166" if near_fid==166
replace ckey="Tiko;Fako;Sud-Ouest;167" if near_fid==167
replace ckey="Bot-Makak;Nyong-et-KellÃ©;Centre;168" if near_fid==168
replace ckey="Evodoula;LekiÃ©;Centre;169" if near_fid==169
replace ckey="Douala IV;Wouri;Littoral;170" if near_fid==170
replace ckey="Soa;MÃ©fou-et-Afamba;Centre;171" if near_fid==171
replace ckey="Okola;LekiÃ©;Centre;172" if near_fid==172
replace ckey="AwaÃ©;MÃ©fou-et-Afamba;Centre;173" if near_fid==173
replace ckey="Dibang;Nyong-et-KellÃ©;Centre;174" if near_fid==174
replace ckey="Pouma;Sanaga-Maritime;Littoral;175" if near_fid==175
replace ckey="Douala VI;Wouri;Littoral;176" if near_fid==176
replace ckey="Douala II;Wouri;Littoral;177" if near_fid==177
replace ckey="Ngog-Mapubi;Nyong-et-KellÃ©;Centre;178" if near_fid==178
replace ckey="DizanguÃ©;Sanaga-Maritime;Littoral;179" if near_fid==179
replace ckey="Matomb;Nyong-et-KellÃ©;Centre;180" if near_fid==180
replace ckey="YaoundÃ© I;Mfoundi;Centre;181" if near_fid==181
replace ckey="YaoundÃ© V;Mfoundi;Centre;182" if near_fid==182
replace ckey="Mfou;MÃ©fou-et-Afamba;Centre;183" if near_fid==183
replace ckey="YaoundÃ© III;Mfoundi;Centre;184" if near_fid==184
replace ckey="YaoundÃ© VI;Mfoundi;Centre;185" if near_fid==185
replace ckey="Mbankomo;MÃ©fou-et-Akono;Centre;186" if near_fid==186
replace ckey="Messondo;Nyong-et-KellÃ©;Centre;187" if near_fid==187
replace ckey="YaoundÃ© IV;Mfoundi;Centre;188" if near_fid==188
replace ckey="EsÃ©ka;Nyong-et-KellÃ©;Centre;189" if near_fid==189
replace ckey="Dzeng;Nyong-et-So'o;Centre;190" if near_fid==190
replace ckey="Mouanko;Sanaga-Maritime;Littoral;191" if near_fid==191
replace ckey="Makak;Nyong-et-KellÃ©;Centre;192" if near_fid==192
replace ckey="Bikok;MÃ©fou-et-Akono;Centre;193" if near_fid==193
replace ckey="Ngoumou;MÃ©fou-et-Akono;Centre;194" if near_fid==194
replace ckey="Douala I;Wouri;Littoral;195" if near_fid==195
replace ckey="Douala III;Wouri;Littoral;196" if near_fid==196
replace ckey="Mbalmayo;Nyong-et-So'o;Centre;197" if near_fid==197
replace ckey="Akono;MÃ©fou-et-Akono;Centre;198" if near_fid==198
replace ckey="ZoÃ©tÃ©lÃ©;Dja-et-Lobo;Sud;199" if near_fid==199
replace ckey="Lolodorf;OcÃ©an;Sud;200" if near_fid==200
replace ckey="Ngomedzap;Nyong-et-So'o;Centre;201" if near_fid==201
replace ckey="Biwong-BanÃ©;Mvila;Sud;202" if near_fid==202
replace ckey="Mengong;Mvila;Sud;203" if near_fid==203
replace ckey="Limbe II;Fako;Sud-Ouest;204" if near_fid==204
replace ckey="Kumba II;Meme;Sud-Ouest;205" if near_fid==205
replace ckey="Kon-Yambetta;Mbam-et-Inoubou;Centre;206" if near_fid==206
replace ckey="Kiiki;Mbam-et-Inoubou;Centre;207" if near_fid==207
replace ckey="Bafia;Mbam-et-Inoubou;Centre;208" if near_fid==208
replace ckey="Nkongsamba III;Moungo;Littoral;209" if near_fid==209
replace ckey="Nkongsamba II;Moungo;Littoral;210" if near_fid==210
replace ckey="Nkongsamba I;Moungo;Littoral;211" if near_fid==211
replace ckey="Limbe III;Fako;Sud-Ouest;212" if near_fid==212
replace ckey="Dibamba;Sanaga-Maritime;Littoral;213" if near_fid==213
replace ckey="EdÃ©a II;Sanaga-Maritime;Littoral;214" if near_fid==214
replace ckey="Ngwei;Sanaga-Maritime;Littoral;215" if near_fid==215
replace ckey="EdÃ©a I;Sanaga-Maritime;Littoral;216" if near_fid==216
replace ckey="Bamenda III;Mezam;Nord-Ouest;217" if near_fid==217
replace ckey="Bamenda I;Mezam;Nord-Ouest;218" if near_fid==218
replace ckey="Njimom;Noun;Ouest;219" if near_fid==219
replace ckey="Foumban;Noun;Ouest;220" if near_fid==220
replace ckey="Banka;Haut-Nkam;Ouest;221" if near_fid==221
replace ckey="Bafang;Haut-Nkam;Ouest;222" if near_fid==222
replace ckey="Fongo-Tongo;Menoua;Ouest;223" if near_fid==223
replace ckey="Dschang;Menoua;Ouest;224" if near_fid==224
replace ckey="Efoulan;Mvila;Sud;225" if near_fid==225
replace ckey="Ebolowa II;Mvila;Sud;226" if near_fid==226
replace ckey="Ebolowa I;Mvila;Sud;227" if near_fid==227
replace ckey="Kribi II;OcÃ©an;Sud;228" if near_fid==228
replace ckey="Limbe I;Fako;Sud-Ouest;229" if near_fid==229
replace ckey="Kribi I;OcÃ©an;Sud;230" if near_fid==230
replace ckey="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231" if near_fid==231
replace ckey="Kolofata;Mayo-Sava;ExtrÃªme-Nord;232" if near_fid==232
replace ckey="PettÃ©;DiamarÃ©;ExtrÃªme-Nord;233" if near_fid==233
replace ckey="Mayo Moskota;Mayo-Tsanaga;ExtrÃªme-Nord;234" if near_fid==234
replace ckey="Maga;Mayo-Danay;ExtrÃªme-Nord;235" if near_fid==235
replace ckey="TokombÃ©rÃ©;Mayo-Sava;ExtrÃªme-Nord;236" if near_fid==236
replace ckey="Kai-Kai;Mayo-Danay;ExtrÃªme-Nord;237" if near_fid==237
replace ckey="MogodÃ©;Mayo-Tsanaga;ExtrÃªme-Nord;238" if near_fid==238
replace ckey="Moulvoudaye;Mayo-Kani;ExtrÃªme-Nord;239" if near_fid==239
replace ckey="Gazawa;DiamarÃ©;ExtrÃªme-Nord;240" if near_fid==240
replace ckey="Mindif;Mayo-Kani;ExtrÃªme-Nord;241" if near_fid==241
replace ckey="VÃ©lÃ©;Mayo-Danay;ExtrÃªme-Nord;242" if near_fid==242
replace ckey="Kalfou;Mayo-Danay;ExtrÃªme-Nord;243" if near_fid==243
replace ckey="Hina;Mayo-Tsanaga;ExtrÃªme-Nord;244" if near_fid==244
replace ckey="Moutourwa;Mayo-Kani;ExtrÃªme-Nord;245" if near_fid==245
replace ckey="KaÃ©lÃ©;Mayo-Kani;ExtrÃªme-Nord;246" if near_fid==246
replace ckey="Porhi;Mayo-Kani;ExtrÃªme-Nord;247" if near_fid==247
replace ckey="GuÃ©rÃ©;Mayo-Danay;ExtrÃªme-Nord;248" if near_fid==248
replace ckey="Gobo;Mayo-Danay;ExtrÃªme-Nord;249" if near_fid==249
replace ckey="Guidiguis;Mayo-Kani;ExtrÃªme-Nord;250" if near_fid==250
replace ckey="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251" if near_fid==251
replace ckey="Figuil;Mayo-Louti;Nord;252" if near_fid==252
replace ckey="Wina;Mayo-Danay;ExtrÃªme-Nord;253" if near_fid==253
replace ckey="Taibong;Mayo-Kani;ExtrÃªme-Nord;254" if near_fid==254
replace ckey="DatchÃ©ka;Mayo-Danay;ExtrÃªme-Nord;255" if near_fid==255
replace ckey="Tchatibali;Mayo-Danay;ExtrÃªme-Nord;256" if near_fid==256
replace ckey="Dembo;BÃ©nouÃ©;Nord;257" if near_fid==257
replace ckey="Pitoa;BÃ©nouÃ©;Nord;258" if near_fid==258
replace ckey="Bibemi;BÃ©nouÃ©;Nord;259" if near_fid==259
replace ckey="Rey-Bouba;Mayo-Rey;Nord;260" if near_fid==260
replace ckey="BÃ©ka;Faro;Nord;261" if near_fid==261
replace ckey="Lagdo;BÃ©nouÃ©;Nord;262" if near_fid==262
replace ckey="Poli;Faro;Nord;263" if near_fid==263
replace ckey="TchollirÃ©;Mayo-Rey;Nord;264" if near_fid==264
replace ckey="Touboro;Mayo-Rey;Nord;265" if near_fid==265
replace ckey="Mayo-BalÃ©o;Faro-et-DÃ©o;Adamaoua;266" if near_fid==266
replace ckey="MbÃ©;Vina;Adamaoua;267" if near_fid==267
replace ckey="TignÃ¨re;Faro-et-DÃ©o;Adamaoua;268" if near_fid==268
replace ckey="BÃ©lÃ©l;Vina;Adamaoua;269" if near_fid==269
replace ckey="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270" if near_fid==270
replace ckey="Tibati;DjÃ©rem;Adamaoua;271" if near_fid==271
replace ckey="Meiganga;MbÃ©rÃ©;Adamaoua;272" if near_fid==272
replace ckey="Ngaoundal;DjÃ©rem;Adamaoua;273" if near_fid==273
replace ckey="Meyomessi;Dja-et-Lobo;Sud;274" if near_fid==274
replace ckey="Nkoteng;Haute-Sanaga;Centre;275" if near_fid==275
replace ckey="Akonolinga;Nyong-et-Mfoumou;Centre;276" if near_fid==276
replace ckey="Mbang;Kadey;Est;277" if near_fid==277
replace ckey="Abong Mbang;Haut-Nyong;Est;278" if near_fid==278
replace ckey="Gari-Gombo;Boumba-et-Ngoko;Est;279" if near_fid==279
replace ckey="Garoua II;BÃ©nouÃ©;Nord;280" if near_fid==280
replace ckey="MessamÃ©na;Haut-Nyong;Est;281" if near_fid==281
replace ckey="Bengbis;Dja-et-Lobo;Sud;282" if near_fid==282
replace ckey="Endom;Nyong-et-Mfoumou;Centre;283" if near_fid==283
replace ckey="Yokadouma;Boumba-et-Ngoko;Est;284" if near_fid==284
replace ckey="LomiÃ©;Haut-Nyong;Est;285" if near_fid==285
replace ckey="Meyomessala;Dja-et-Lobo;Sud;286" if near_fid==286
replace ckey="Djoum;Dja-et-Lobo;Sud;287" if near_fid==287
replace ckey="Ngoila;Haut-Nyong;Est;288" if near_fid==288
replace ckey="Mintom;Dja-et-Lobo;Sud;289" if near_fid==289
replace ckey="Moloundou;Boumba-et-Ngoko;Est;290" if near_fid==290
replace ckey="Oveng;Dja-et-Lobo;Sud;291" if near_fid==291
replace ckey="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292" if near_fid==292
replace ckey="Bertoua I;Lom-et-DjÃ©rem;Est;293" if near_fid==293
replace ckey="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294" if near_fid==294
replace ckey="Gaoua III;BÃ©nouÃ©;Nord;295" if near_fid==295
replace ckey="NgaoundÃ©rÃ© III;Vina;Adamaoua;296" if near_fid==296
replace ckey="Nyambaka;Vina;Adamaoua;297" if near_fid==297
replace ckey="NgaoundÃ©rÃ© II;Vina;Adamaoua;298" if near_fid==298
replace ckey="NgaoundÃ©rÃ© I;Vina;Adamaoua;299" if near_fid==299
replace ckey="Martap;Vina;Adamaoua;300" if near_fid==300
replace ckey="Djohong;MbÃ©rÃ©;Adamaoua;301" if near_fid==301
replace ckey="Mayo Hourna;BÃ©nouÃ©;Nord;302" if near_fid==302
replace ckey="Garoua I;BÃ©nouÃ©;Nord;303" if near_fid==303
save "S:\CM Data\distance\cmforet\distance_arrondi.dta", replace
collapse (sum) wdist, by (ckey)
ren ckey cmforetkey
save "S:\CM Data\distance\cmforet\wdistance_arrondi.dta"


/*OLD! DO NOT USE*/
/*
/*GENERATE IKEY*/
/*generate ikey to correspond with ckey - force match*/
replace ikey="Abong Mbang;Haut-Nyong;Est" if ckey=="Abong Mbang;Haut-Nyong;Est;278"
replace ikey="Ako;Donga-Mantung;Nord-Ouest" if ckey=="Ako;Donga-Mantung;Nord-Ouest;58"
replace ikey="Akonolinga;Nyong-et-Mfoumou;Centre" if ckey=="Akonolinga;Nyong-et-Mfoumou;Centre;276"
replace ikey="Akwaya;Manyu;Sud-Ouest" if ckey=="Akwaya;Manyu;Sud-Ouest;69"
replace ikey="Alou and Fontem;Lebialem;Sud-Ouest" if ckey=="Alou;Lebialem;Sud-Ouest;105"
replace ikey="Ambam and Ma'an;Vallée-du-Ntem;Sud" if ckey=="Ambam;VallÃ©e-Du-Ntem;Sud;11"
replace ikey="Ayos;Nyong-et-Mfoumou;Centre" if ckey=="Ayos;Nyong-et-Mfoumou;Centre;52"
replace ikey="Babadjou;Bamboutos;Ouest" if ckey=="Babadjou;Bamboutos;Ouest;100"
replace ikey="Babessi;Ngo-Ketunjia;Nord-Ouest" if ckey=="Babessi;Ngo-Ketunjia;Nord-Ouest;83"
replace ikey="Bafang;Haut-Nkam;Ouest" if ckey=="Bafang;Haut-Nkam;Ouest;222"
replace ikey="Bafia;Mbam-et-Inoubou;Centre" if ckey=="Bafia;Mbam-et-Inoubou;Centre;208"
replace ikey="Bafut;Mezam;Nord-Ouest" if ckey=="Bafut;Mezam;Nord-Ouest;75"
replace ikey="Baham;Hauts-Plateaux;Ouest" if ckey=="Baham;Hauts-Plateaux;Ouest;122"
replace ikey="Bali;Mezam;Nord-Ouest" if ckey=="Bali;Mezam;Nord-Ouest;91"
replace ikey="Balikumbat;Ngo-Ketunjia;Nord-Ouest" if ckey=="Balikumbat;Ngo-Ketunjia;Nord-Ouest;90"
replace ikey="Bamendjou;Hauts-Plateaux;Ouest" if ckey=="Bamendjou;Hauts-Plateaux;Ouest;114"
replace ikey="Bamusso;Ndian;Sud-Ouest" if ckey=="Bamusso;Ndian;Sud-Ouest;156"
replace ikey="Bandja;Haut-Nkam;Ouest" if ckey=="Bandja;Haut-Nkam;Ouest;120"
replace ikey="Bangangte;Ndé;Ouest" if ckey=="BangangtÃ©;NdÃ©;Ouest;126"
replace ikey="Bangourain;Noun;Ouest" if ckey=="Bangourain;Noun;Ouest;89"
replace ikey="Bankim;Mayo-Banyo;Adamaoua" if ckey=="Bankim;Mayo-Banyo;Adamaoua;68"
replace ikey="Bare-Bakem;Moungo;Littoral" if ckey=="BarÃ©-Bakem;Moungo;Littoral;136"
replace ikey="Batcham;Bamboutos;Ouest" if ckey=="Batcham;Bamboutos;Ouest;103"
replace ikey="Batibo;Momo;Nord-Ouest" if ckey=="Batibo;Momo;Nord-Ouest;92"
replace ikey="Batouri;Kadey;Est" if ckey=="Batouri;Kadey;Est;47"
replace ikey="Belo;Boyo;Nord-Ouest" if ckey=="Belo;Boyo;Nord-Ouest;74"
replace ikey="Bibemi and Dembo;Bénoué;Nord" if ckey=="Bibemi;BÃ©nouÃ©;Nord;259"
replace ikey="Blangoua;Logone-et-Chari;Extrême-Nord" if ckey=="Blangoua;Logone-et-Chari;ExtrÃªme-Nord;22"
replace ikey="Bogo;Diamaré;Extrême-Nord" if ckey=="Bogo;DiamarÃ©;ExtrÃªme-Nord;30"
replace ikey="Bokito;Mbam-et-Inoubou;Centre" if ckey=="Bokito;Mbam-et-Inoubou;Centre;149"
replace ikey="Bourrha;Mayo-Tsanaga;Extrême-Nord" if ckey=="Bourrha;Mayo-Tsanaga;ExtrÃªme-Nord;35"
replace ikey="Buea and West-Coast;Fako;Sud-Ouest" if ckey=="BuÃ©a;Fako;Sud-Ouest;164"
replace ikey="Datcheka;Mayo-Danay;Extrême-Nord" if ckey=="DatchÃ©ka;Mayo-Danay;ExtrÃªme-Nord;255"
replace ikey="Demsa;Bénoué;Nord" if ckey=="Dembo;BÃ©nouÃ©;Nord;257"
replace ikey="Dibombari;Moungo;Littoral" if ckey=="Dibombari;Moungo;Littoral;160"
replace ikey="Dimako;Haut-Nyong;Est" if ckey=="Dimako;Haut-Nyong;Est;50"
replace ikey="Dir;Mbéré;Adamaoua" if ckey=="Dir;MbÃ©rÃ©;Adamaoua;38"
replace ikey="Djoum;Dja-et-Lobo;Sud" if ckey=="Djoum;Dja-et-Lobo;Sud;287"
replace ikey="Doume;Haut-Nyong;Est" if ckey=="DoumÃ©;Haut-Nyong;Est;49"
replace ikey="Dschang and Fokoue;Menoua;Ouest" if ckey=="Dschang;Menoua;Ouest;224"
replace ikey="Ebebda;Lekié;Centre" if ckey=="Ebebda;LekiÃ©;Centre;158"
replace ikey="Ekondo Titi;Ndian;Sud-Ouest" if ckey=="Ekondo Titi;Ndian;Sud-Ouest;141"
replace ikey="Eseka;Nyong et Kéllé;Centre" if ckey=="EsÃ©ka;Nyong-et-KellÃ©;Centre;189"
replace ikey="Eyumodjock;Manyu;Sud-Ouest" if ckey=="Eyumojock;Manyu;Sud-Ouest;93"
replace ikey="Figuil;Mayo-Louti;Nord" if ckey=="Figuil;Mayo-Louti;Nord;252"
replace ikey="Fotokol;Logone-et-Chari;Extrême-Nord" if ckey=="Fotokol;Logone-et-Chari;ExtrÃªme-Nord;26"
replace ikey="Foumban;Noun;Ouest" if ckey=="Foumban;Noun;Ouest;220"
replace ikey="Foumbot;Noun;Ouest" if ckey=="Foumbot;Noun;Ouest;107"
replace ikey="Fundong;Boyo;Nord-Ouest" if ckey=="Fundong;Boyo;Nord-Ouest;72"
replace ikey="Fungom and Furu-Awa;Menchum;Nord-Ouest" if ckey=="Fungom;Menchum;Nord-Ouest;62"
replace ikey="Galim Tignere;Faro-Deo;Adamaoua" if ckey=="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270"
replace ikey="Galim;Bamboutos;Ouest" if ckey=="Galim;Bamboutos;Ouest;96"
replace ikey="Gazawa;Diamaré;Extrême-Nord" if ckey=="Gazawa;DiamarÃ©;ExtrÃªme-Nord;240"
replace ikey="Gobo;Mayo-Danay;Extrême-Nord" if ckey=="Gobo;Mayo-Danay;ExtrÃªme-Nord;249"
replace ikey="Goulfey;Logone-et-Chari;Extrême-Nord" if ckey=="Goulfey;Logone-et-Chari;ExtrÃªme-Nord;24"
replace ikey="Guere;Mayo-Danay;Extrême-Nord" if ckey=="GuÃ©rÃ©;Mayo-Danay;ExtrÃªme-Nord;248"
replace ikey="Guider;Mayo-Louti;Nord" if ckey=="Guider;Mayo-Louti;Nord;37"
replace ikey="Guidiguis;Mayo-Kani;Extrême-Nord" if ckey=="Guidiguis;Mayo-Kani;ExtrÃªme-Nord;250"
replace ikey="Hina;Mayo-Tsanaga;Extrême-Nord" if ckey=="Hina;Mayo-Tsanaga;ExtrÃªme-Nord;244"
replace ikey="Jakiri;Bui;Nord-Ouest" if ckey=="Jakiri;Bui;Nord-Ouest;81"
replace ikey="Kaele;Mayo-Kani;Extrême-Nord" if ckey=="KaÃ©lÃ©;Mayo-Kani;ExtrÃªme-Nord;246"
replace ikey="Kalfou;Mayo-Danay;Extrême-Nord" if ckey=="Kalfou;Mayo-Danay;ExtrÃªme-Nord;243"
replace ikey="Kar-Hay;Mayo-Danay;Extrême-Nord" if ckey=="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251"
replace ikey="Kolofata;Mayo-Sava;Extrême-Nord" if ckey=="Kolofata;Mayo-Sava;ExtrÃªme-Nord;232"
replace ikey="Konye;Meme;Sud-Ouest" if ckey=="Konye;Meme;Sud-Ouest;133"
replace ikey="Kouoptamo;Noun;Ouest" if ckey=="Kouoptamo;Noun;Ouest;98"
replace ikey="Kousseri;Logone-et-Chari;Extrême-Nord" if ckey=="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231"
replace ikey="Koutaba;Noun;Ouest" if ckey=="Koutaba;Noun;Ouest;99"
replace ikey="Koza;Mayo-Tsanaga;Extrême-Nord" if ckey=="Koza;Mayo-Tsanaga;ExtrÃªme-Nord;31"
replace ikey="Kumbo and Mbven;Bui;Nord-Ouest" if ckey=="Kumbo;Bui;Nord-Ouest;12"
replace ikey="Lagdo;Bénoué;Nord" if ckey=="Lagdo;BÃ©nouÃ©;Nord;262"
replace ikey="Logone-Birni;Logone-et-Chari;Extrême-Nord" if ckey=="Logone Birni;Logone-et-Chari;ExtrÃªme-Nord;27"
replace ikey="Lomie;Haut-Nyong;Est" if ckey=="LomiÃ©;Haut-Nyong;Est;285"
replace ikey="Loum;Moungo;Littoral" if ckey=="Loum;Moungo;Littoral;145"
replace ikey="Maga;Mayo-Danay;Extrême-Nord" if ckey=="Maga;Mayo-Danay;ExtrÃªme-Nord;235"
replace ikey="Magba;Noun;Ouest" if ckey=="Magba;Noun;Ouest;79"
replace ikey="Makak;Nyong et Kéllé;Centre" if ckey=="Makak;Nyong-et-KellÃ©;Centre;192"
replace ikey="Makari;Logone-et-Chari;Extrême-Nord" if ckey=="Makary;Logone-et-Chari;ExtrÃªme-Nord;25"
replace ikey="Makenene;Mbam-et-Inoubou;Centre" if ckey=="Makenene;Mbam-et-Inoubou;Centre;139"
replace ikey="Malentouen;Noun;Ouest" if ckey=="Malantouen;Noun;Ouest;95"
replace ikey="Mamfe;Manyu;Sud-Ouest" if ckey=="Mamfe;Manyu;Sud-Ouest;21"
replace ikey="Manjo;Moungo;Littoral" if ckey=="Manjo;Moungo;Littoral;138"
replace ikey="Massangan;Noun;Ouest" if ckey=="Massangam;Noun;Ouest;108"
replace ikey="Mayo-Moskota;Mayo-Tsanaga;Extrême-Nord" if ckey=="Mayo Moskota;Mayo-Tsanaga;ExtrÃªme-Nord;234"
replace ikey="Mayo-Oulo;Mayo-Louti;Nord" if ckey=="Mayo-Oulo;Mayo-Louti;Nord;36"
replace ikey="Mbalmayo;Nyong-et-Soo;Centre" if ckey=="Mbalmayo;Nyong-et-So'o;Centre;197"
replace ikey="Mbandjock;Haute-Sanaga;Centre" if ckey=="Mbandjock;Haute-Sanaga;Centre;157"
replace ikey="Mbang;Kadey;Est" if ckey=="Mbang;Kadey;Est;277"
replace ikey="Mbanga;Moungo;Littoral" if ckey=="Mbanga;Moungo;Littoral;0"
replace ikey="Mbangassina;Mbam-et-Kim;Centre" if ckey=="Mbangassina;Mbam-et-Kim;Centre;150"
replace ikey="Mbankomo;Mefou-et-Akono;Centre" if ckey=="Mbankomo;MÃ©fou-et-Akono;Centre;186"
replace ikey="Mbengwi;Momo;Nord-Ouest" if ckey=="Mbengwi;Momo;Nord-Ouest;80"
replace ikey="Mbonge;Meme;Sud-Ouest" if ckey=="Mbonge;Meme;Sud-Ouest;155"
replace ikey="Mbouda;Bamboutos;Ouest" if ckey=="Mbouda;Bamboutos;Ouest;102"
replace ikey="Meiganga;Mbéré;Adamaoua" if ckey=="Meiganga;MbÃ©rÃ©;Adamaoua;272"
replace ikey="Menchum-Valley;Menchum;Nord-Ouest" if ckey=="Menchum Valley;Menchum;Nord-Ouest;66"
replace ikey="Mengong;Mvila;Sud" if ckey=="Mengong;Mvila;Sud;203"
replace ikey="Meyomessala;Dja-et-Lobo;Sud" if ckey=="Meyomessala;Dja-et-Lobo;Sud;286"
replace ikey="Mfou;Mefou-et-Afamba;Centre" if ckey=="Mfou;MÃ©fou-et-Afamba;Centre;183"
replace ikey="Mindif;Mayo-Kani;Extrême-Nord" if ckey=="Mindif;Mayo-Kani;ExtrÃªme-Nord;241"
replace ikey="Misaje;Donga-Mantung;Nord-Ouest" if ckey=="Misaje;Donga-Mantung;Nord-Ouest;60"
replace ikey="Mogode;Mayo-Tsanaga;Extrême-Nord" if ckey=="MogodÃ©;Mayo-Tsanaga;ExtrÃªme-Nord;238"
replace ikey="Mokolo;Mayo-Tsanaga;Extrême-Nord" if ckey=="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32"
replace ikey="Monatele;Lekié;Centre" if ckey=="MonatÃ©lÃ©;LekiÃ©;Centre;162"
replace ikey="Mora;Mayo-Sava;Extrême-Nord" if ckey=="Mora;Mayo-Sava;ExtrÃªme-Nord;29"
replace ikey="Moulvoudaye;Mayo-Kani;Extrême-Nord" if ckey=="Moulvoudaye;Mayo-Kani;ExtrÃªme-Nord;239"
replace ikey="Moutourwa;Mayo-Kani;Extrême-Nord" if ckey=="Moutourwa;Mayo-Kani;ExtrÃªme-Nord;245"
replace ikey="Muyuka;Fako;Sud-Ouest" if ckey=="Muyuka;Fako;Sud-Ouest;159"
replace ikey="Mvangan;Mvila;Sud" if ckey=="Mvangan;Mvila;Sud;9"
replace ikey="Mvangan;Vallée-du-Ntem;Sud" if ckey=="MvenguÃ©;OcÃ©an;Sud;6"
replace ikey="Nanga Eboko;Haute-Sanaga;Centre" if ckey=="Nanga-Eboko;Haute-Sanaga;Centre;45"
replace ikey="Ndelele;Kadey;Est" if ckey=="NdÃ©lÃ©lÃ©;Kadey;Est;51"
replace ikey="Ndop;Ngo-Ketunjia;Nord-Ouest" if ckey=="Ndop;Ngo-Ketunjia;Nord-Ouest;88"
replace ikey="Ndu;Donga-Mantung;Nord-Ouest" if ckey=="Ndu;Donga-Mantung;Nord-Ouest;67"
replace ikey="Ngambe or Bambini;Sanaga-Maritime;Littoral" if ckey=="NgambÃ©;Sanaga-Maritime;Littoral;3"
replace ikey="Nguti;Koupé-Manengouba;Sud-Ouest" if ckey=="Nguti;KupÃ©-Manengouba;Sud-Ouest;113"
replace ikey="Njombe-Penja;Moungo;Littoral" if ckey=="NjombÃ©-Penja;Moungo;Littoral;153"
replace ikey="Nkambe;Donga-Mantung;Nord-Ouest" if ckey=="Nkambe;Donga-Mantung;Nord-Ouest;65"
replace ikey="Nkong-Ni;Menoua;Ouest" if ckey=="Nkong-Ni;Menoua;Ouest;104"
replace ikey="Nkoteng;Haute-Sanaga;Centre" if ckey=="Nkoteng;Haute-Sanaga;Centre;275"
replace ikey="Noni;Bui;Nord-Ouest" if ckey=="Noni;Bui;Nord-Ouest;71"
replace ikey="Ntui;Mbam-et-Kim;Centre" if ckey=="Ntui;Mbam-et-Kim;Centre;152"
replace ikey="Nwa;Donga-Mantung;Nord-Ouest" if ckey=="Nwa;Donga-Mantung;Nord-Ouest;61"
replace ikey="Oku;Bui;Nord-Ouest" if ckey=="Oku;Bui;Nord-Ouest;76"
replace ikey="Olamze;Vallée-du-Ntem;Sud" if ckey=="OlamzÃ©;VallÃ©e-Du-Ntem;Sud;14"
replace ikey="Ombessa;Mbam-et-Inoubou;Centre" if ckey=="Ombessa;Mbam-et-Inoubou;Centre;146"
replace ikey="Pette;Diamaré;Extrême-Nord" if ckey=="PettÃ©;DiamarÃ©;ExtrÃªme-Nord;233"
replace ikey="Pitoua;Bénoué;Nord" if ckey=="Pitoa;BÃ©nouÃ©;Nord;258"
replace ikey="Poli;Faro;Nord" if ckey=="Poli;Faro;Nord;263"
replace ikey="Porhi;Mayo-Kani;Extrême-Nord" if ckey=="Porhi;Mayo-Kani;ExtrÃªme-Nord;247"
replace ikey="Poumougne;Koung-Khi;Ouest" if ckey=="Poumougne;Koung-Khi;Ouest;115"
replace ikey="Rey-Bouba;Mayo-Rey;Nord" if ckey=="Rey-Bouba;Mayo-Rey;Nord;260"
replace ikey="Saa;Lekié;Centre" if ckey=="Sa'a;LekiÃ©;Centre;4"
replace ikey="Sangmelima;Dja-et-Lobo;Sud" if ckey=="Sangmelima;Dja-et-Lobo;Sud;17"
replace ikey="Santa;Mezam;Nord-Ouest" if ckey=="Santa;Mezam;Nord-Ouest;94"
replace ikey="Santchou;Menoua;Ouest" if ckey=="Santchou;Menoua;Ouest;117"
replace ikey="Soa;Mefou-et-Afamba;Centre" if ckey=="Soa;MÃ©fou-et-Afamba;Centre;171"
replace ikey="TaÃ¯bong;Mayo-Kani;Extrême-Nord" if ckey=="Taibong;Mayo-Kani;ExtrÃªme-Nord;254"
replace ikey="Tchatibali;Mayo-Danay;Extrême-Nord" if ckey=="Tchatibali;Mayo-Danay;ExtrÃªme-Nord;256"
replace ikey="Tcheboa;Bénoué;Nord" if ckey=="Tcheboa;BÃ©nouÃ©;Nord;56"
replace ikey="TchollirÃ©;Mayo-Rey;Nord" if ckey=="TchollirÃ©;Mayo-Rey;Nord;264"
replace ikey="Tibati;Djerem;Adamaoua" if ckey=="Tibati;DjÃ©rem;Adamaoua;271"
replace ikey="Tignere;Faro-Deo;Adamaoua" if ckey=="TignÃ¨re;Faro-et-DÃ©o;Adamaoua;268"
replace ikey="Tiko;Fako;Sud-Ouest" if ckey=="Tiko;Fako;Sud-Ouest;167"
replace ikey="Tokombere;Mayo-Sava;Extrême-Nord" if ckey=="TokombÃ©rÃ©;Mayo-Sava;ExtrÃªme-Nord;236"
replace ikey="Tombel;Koupé-Manengouba;Sud-Ouest" if ckey=="Tombel;KupÃ©-Manengouba;Sud-Ouest;135"
replace ikey="Touboro;Mayo-Rey;Nord" if ckey=="Touboro;Mayo-Rey;Nord;265"
replace ikey="Tubah;Mezam;Nord-Ouest" if ckey=="Tubah;Mezam;Nord-Ouest;82"
replace ikey="Upper Bayang;Manyu;Sud-Ouest" if ckey=="Upper Bayang;Manyu;Sud-Ouest;97"
replace ikey="Vele;Mayo-Danay;Extrême-Nord" if ckey=="VÃ©lÃ©;Mayo-Danay;ExtrÃªme-Nord;242"
replace ikey="Wabane;Lebialem;Sud-Ouest" if ckey=="Wabane;Lebialem;Sud-Ouest;101"
replace ikey="Widikum-Menka;Momo;Nord-Ouest" if ckey=="Widikum-Menka;Momo;Nord-Ouest;84"
replace ikey="Wina;Mayo-Danay;Extrême-Nord" if ckey=="Wina;Mayo-Danay;ExtrÃªme-Nord;253"
replace ikey="Wum;Menchum;Nord-Ouest" if ckey=="Wum;Menchum;Nord-Ouest;70"
replace ikey="Yagoua;Mayo-Danay;Extrême-Nord" if ckey=="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34"
replace ikey="Yokadouma;Boumba-et-Ngoko;Est" if ckey=="Yokadouma;Boumba-et-Ngoko;Est;284"
replace ikey="Zoetele;Dja-et-Lobo;Sud" if ckey=="ZoÃ©tÃ©lÃ©;Dja-et-Lobo;Sud;199"

/*generate ikey for forced merge*/
replace ikey="Bafoussam;Mifi;Ouest" if ckey=="Bafoussam I;Mifi;Ouest;109"
replace ikey="Bafoussam;Mifi;Ouest" if ckey=="Bafoussam II;Mifi;Ouest;106"
replace ikey="Bafoussam;Mifi;Ouest" if ckey=="Bafoussam III;Mifi;Ouest;110"
replace ikey="Bamenda;Mezam;Nord-Ouest" if ckey=="Bamenda I;Mezam;Nord-Ouest;218"
replace ikey="Bamenda;Mezam;Nord-Ouest" if ckey=="Bamenda II;Mezam;Nord-Ouest;86"
replace ikey="Bamenda;Mezam;Nord-Ouest" if ckey=="Bamenda III;Mezam;Nord-Ouest;217"
replace ikey="Bertoua;Lom-et-Djerem;Est" if ckey=="Bertoua I;Lom-et-DjÃ©rem;Est;293"
replace ikey="Bertoua;Lom-et-Djerem;Est" if ckey=="Bertoua II;Lom-et-DjÃ©rem;Est;54"
replace ikey="Douala 1;Wouri;Littoral" if ckey=="Douala I;Wouri;Littoral;195"
replace ikey="Douala 1;Wouri;Littoral" if ckey=="Douala II;Wouri;Littoral;177"
replace ikey="Douala 1;Wouri;Littoral" if ckey=="Douala III;Wouri;Littoral;196"
replace ikey="Douala 1;Wouri;Littoral" if ckey=="Douala IV;Wouri;Littoral;170"
replace ikey="Douala 1;Wouri;Littoral" if ckey=="Douala V;Wouri;Littoral;166"
replace ikey="Douala 1;Wouri;Littoral" if ckey=="Douala VI;Wouri;Littoral;176"
replace ikey="Ebolowa;Mvila;Sud" if ckey=="Ebolowa I;Mvila;Sud;227"
replace ikey="Ebolowa;Mvila;Sud" if ckey=="Ebolowa II;Mvila;Sud;226"
replace ikey="EdÃ©a;Sanaga-Maritime;Littoral" if ckey=="EdÃ©a I;Sanaga-Maritime;Littoral;216"
replace ikey="EdÃ©a;Sanaga-Maritime;Littoral" if ckey=="EdÃ©a II;Sanaga-Maritime;Littoral;214"
replace ikey="Garoua;Bénoué;Nord" if ckey=="Garoua I;BÃ©nouÃ©;Nord;303"
replace ikey="Garoua;Bénoué;Nord" if ckey=="Garoua II;BÃ©nouÃ©;Nord;280"
replace ikey="Garoua;Bénoué;Nord" if ckey=="Gaoua III;BÃ©nouÃ©;Nord;295"
replace ikey="Kribi;Océan;Sud" if ckey=="Kribi I;OcÃ©an;Sud;230"
replace ikey="Kribi;Océan;Sud" if ckey=="Kribi II;OcÃ©an;Sud;228"
replace ikey="Kumba;Meme;Sud-Ouest" if ckey=="Kumba I;Meme;Sud-Ouest;15"
replace ikey="Kumba;Meme;Sud-Ouest" if ckey=="Kumba II;Meme;Sud-Ouest;205"
replace ikey="Kumba;Meme;Sud-Ouest" if ckey=="Kumba III;Meme;Sud-Ouest;63"
replace ikey="Limbe;Fako;Sud-Ouest" if ckey=="Limbe I;Fako;Sud-Ouest;229"
replace ikey="Limbe;Fako;Sud-Ouest" if ckey=="Limbe II;Fako;Sud-Ouest;204"
replace ikey="Limbe;Fako;Sud-Ouest" if ckey=="Limbe III;Fako;Sud-Ouest;212"
replace ikey="Maroua;Diamaré;Extrême-Nord" if ckey=="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55"
replace ikey="Maroua;Diamaré;Extrême-Nord" if ckey=="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292"
replace ikey="Maroua;Diamaré;Extrême-Nord" if ckey=="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294"
replace ikey="Nkongsamba;Moungo;Littoral" if ckey=="Nkongsamba I;Moungo;Littoral;211"
replace ikey="Nkongsamba;Moungo;Littoral" if ckey=="Nkongsamba II;Moungo;Littoral;210"
replace ikey="Nkongsamba;Moungo;Littoral" if ckey=="Nkongsamba III;Moungo;Littoral;209"
replace ikey="Obala;Lekié;Centre" if ckey=="Obala;LekiÃ©;Centre;161"
replace ikey="Okola;Lekié;Centre" if ckey=="Okola;LekiÃ©;Centre;172"
replace ikey="Other Districts in Lom and Djerem Department;Lom-et-Djerem;Est" if ckey=="BÃ©labo;Lom-et-DjÃ©rem;Est;42"
replace ikey="Other Districts in Lom and Djerem Department;Lom-et-Djerem;Est" if ckey=="BÃ©tarÃ© Oya;Lom-et-DjÃ©rem;Est;41"
replace ikey="Other Districts in Lom and Djerem Department;Lom-et-Djerem;Est" if ckey=="Diang;Lom-et-DjÃ©rem;Est;46"
replace ikey="Other Districts in Lom and Djerem Department;Lom-et-Djerem;Est" if ckey=="Garoua-Boulai;Lom-et-DjÃ©rem;Est;40"
replace ikey="Other Districts in Lom and Djerem Department;Lom-et-Djerem;Est" if ckey=="Mandjou;Lom-et-DjÃ©rem;Est;53"
replace ikey="Other districts in Bouba and Ngoko Department;Boumba-et-Ngoko;Est" if ckey=="Gari-Gombo;Boumba-et-Ngoko;Est;279"
replace ikey="Other districts in Bouba and Ngoko Department;Boumba-et-Ngoko;Est" if ckey=="Moloundou;Boumba-et-Ngoko;Est;290"
replace ikey="Other districts in Boyo Department;Boyo;Nord-Ouest" if ckey=="Bum;Boyo;Nord-Ouest;64"
replace ikey="Other districts in Boyo Department;Boyo;Nord-Ouest" if ckey=="Njinikom;Boyo;Nord-Ouest;78"
replace ikey="Other districts in Dja and Lobo Department;Dja-et-Lobo;Sud" if ckey=="Bengbis;Dja-et-Lobo;Sud;282"
replace ikey="Other districts in Dja and Lobo Department;Dja-et-Lobo;Sud" if ckey=="Meyomessi;Dja-et-Lobo;Sud;274"
replace ikey="Other districts in Dja and Lobo Department;Dja-et-Lobo;Sud" if ckey=="Mintom;Dja-et-Lobo;Sud;289"
replace ikey="Other districts in Dja and Lobo Department;Dja-et-Lobo;Sud" if ckey=="Oveng;Dja-et-Lobo;Sud;291"
replace ikey="Other districts in Fare et Deo Department;Faro-Deo;Adamaoua" if ckey=="Mayo-BalÃ©o;Faro-et-DÃ©o;Adamaoua;266"
replace ikey="Other districts in Haut Nkam Department;Haut-Nkam;Ouest" if ckey=="Bakou;Haut-Nkam;Ouest;134"
replace ikey="Other districts in Haut Nkam Department;Haut-Nkam;Ouest" if ckey=="Bana;Haut-Nkam;Ouest;130"
replace ikey="Other districts in Haut Nkam Department;Haut-Nkam;Ouest" if ckey=="Banka;Haut-Nkam;Ouest;221"
replace ikey="Other districts in Haut Nkam Department;Haut-Nkam;Ouest" if ckey=="KÃ©kem;Haut-Nkam;Ouest;127"
replace ikey="Other districts in Haut Nyong Department;Haut-Nyong;Est" if ckey=="Ngoila;Haut-Nyong;Est;288"
replace ikey="Other districts in Haut Nyong Department;Haut-Nyong;Est" if ckey=="Nguelemendouka;Haut-Nyong;Est;48"
replace ikey="Other districts in Haut Nyong Department;Haut-Nyong;Est" if ckey=="MessamÃ©na;Haut-Nyong;Est;281"
replace ikey="Other districts in Haute Sanaga Department;Haute-Sanaga;Centre" if ckey=="Minta;Haute-Sanaga;Centre;44"
replace ikey="Other districts in Kadey Department;Kadey;Est" if ckey=="KettÃ©;Kadey;Est;43"
replace ikey="Other districts in Koung Khi Department;Koung-Khi;Ouest" if ckey=="Bayangam;Koung-Khi;Ouest;124"
replace ikey="Other districts in LekiÃ© Department;Lekié;Centre" if ckey=="Elig-Mfomo;LekiÃ©;Centre;165"
replace ikey="Other districts in LekiÃ© Department;Lekié;Centre" if ckey=="Evodoula;LekiÃ©;Centre;169"
replace ikey="Other districts in Logone and Chari Department;Logone-et-Chari;Extrême-Nord" if ckey=="HilÃ© - Halifa;Logone-et-Chari;ExtrÃªme-Nord;23"
replace ikey="Other districts in Logone and Chari Department;Logone-et-Chari;Extrême-Nord" if ckey=="Waza;Logone-et-Chari;ExtrÃªme-Nord;28"
replace ikey="Other districts in Mayo Banyo Department;Mayo-Banyo;Adamaoua" if ckey=="Banyo;Mayo-Banyo;Adamaoua;57"
replace ikey="Other districts in Mbam and Inoubou Department;Mbam-et-Inoubou;Centre" if ckey=="Deuk;Mbam-et-Inoubou;Centre;128"
replace ikey="Other districts in Mbam and Inoubou Department;Mbam-et-Inoubou;Centre" if ckey=="Kiiki;Mbam-et-Inoubou;Centre;207"
replace ikey="Other districts in Mbam and Inoubou Department;Mbam-et-Inoubou;Centre" if ckey=="Kon-Yambetta;Mbam-et-Inoubou;Centre;206"
replace ikey="Other districts in Mbam and Inoubou Department;Mbam-et-Inoubou;Centre" if ckey=="Ndikinimeki;Mbam-et-Inoubou;Centre;143"
replace ikey="Other districts in Mbere Department;Mbéré;Adamaoua" if ckey=="Djohong;MbÃ©rÃ©;Adamaoua;301"
replace ikey="Other districts in Mefou and Afamba Department;Mefou-et-Afamba;Centre" if ckey=="AwaÃ©;MÃ©fou-et-Afamba;Centre;173"
replace ikey="Other districts in Mefou and Afamba Department;Mefou-et-Afamba;Centre" if ckey=="Esse;MÃ©fou-et-Afamba;Centre;163"
replace ikey="Other districts in Momo Department;Momo;Nord-Ouest" if ckey=="Ngie;Momo;Nord-Ouest;87"
replace ikey="Other districts in Momo Department;Momo;Nord-Ouest" if ckey=="Njikwa;Momo;Nord-Ouest;77"
replace ikey="Other districts in Moungo Department;Moungo;Littoral" if ckey=="MÃ©long;Moungo;Littoral;123"
replace ikey="Other districts in Moungo Department;Moungo;Littoral" if ckey=="Nlonako;Moungo;Littoral;140"
replace ikey="Other districts in Mvilla Department;Mvila;Sud" if ckey=="Biwong-BanÃ©;Mvila;Sud;202"
replace ikey="Other districts in Mvilla Department;Mvila;Sud" if ckey=="Biwong-Bulu;Mvila;Sud;18"
replace ikey="Other districts in Mvilla Department;Mvila;Sud" if ckey=="Efoulan;Mvila;Sud;225"
replace ikey="Other districts in Mvilla Department;Mvila;Sud" if ckey=="Ngoulemakong;Mvila;Sud;7"
replace ikey="Other districts in Nde Department;Ndé;Ouest" if ckey=="Bazou;NdÃ©;Ouest;131"
replace ikey="Other districts in Nde Department;Ndé;Ouest" if ckey=="Tonga;NdÃ©;Ouest;137"
replace ikey="Other districts in Nyong and Kelle Department;Nyong et Kéllé;Centre" if ckey=="Bot-Makak;Nyong-et-KellÃ©;Centre;168"
replace ikey="Other districts in Nyong and Kelle Department;Nyong et Kéllé;Centre" if ckey=="Dibang;Nyong-et-KellÃ©;Centre;174"
replace ikey="Other districts in Nyong and Kelle Department;Nyong et Kéllé;Centre" if ckey=="Matomb;Nyong-et-KellÃ©;Centre;180"
replace ikey="Other districts in Nyong and Kelle Department;Nyong et Kéllé;Centre" if ckey=="Messondo;Nyong-et-KellÃ©;Centre;187"
replace ikey="Other districts in Nyong and Kelle Department;Nyong et Kéllé;Centre" if ckey=="Ngog-Mapubi;Nyong-et-KellÃ©;Centre;178"
replace ikey="Other districts in Nyong and Mfoumou Department;Nyong-et-Mfoumou;Centre" if ckey=="Endom;Nyong-et-Mfoumou;Centre;283"
replace ikey="Other districts in Nyong and So'o Department;Nyong-et-Soo;Centre" if ckey=="Dzeng;Nyong-et-So'o;Centre;190"
replace ikey="Other districts in Nyong and So'o Department;Nyong-et-Soo;Centre" if ckey=="Ngomedzap;Nyong-et-So'o;Centre;201"
replace ikey="Other districts in OcÃ©an Department;Océan;Sud" if ckey=="Akom II;OcÃ©an;Sud;8"
replace ikey="Other districts in OcÃ©an Department;Océan;Sud" if ckey=="Bipindi;OcÃ©an;Sud;5"
replace ikey="Other districts in OcÃ©an Department;Océan;Sud" if ckey=="Campo;OcÃ©an;Sud;13"
replace ikey="Other districts in OcÃ©an Department;Océan;Sud" if ckey=="Lokoundje;OcÃ©an;Sud;19"
replace ikey="Other districts in OcÃ©an Department;Océan;Sud" if ckey=="Lolodorf;OcÃ©an;Sud;200"
replace ikey="Other districts in Sanaga Maritime Department;Sanaga-Maritime;Littoral" if ckey=="Dibamba;Sanaga-Maritime;Littoral;213"
replace ikey="Other districts in Sanaga Maritime Department;Sanaga-Maritime;Littoral" if ckey=="DizanguÃ©;Sanaga-Maritime;Littoral;179"
replace ikey="Other districts in Sanaga Maritime Department;Sanaga-Maritime;Littoral" if ckey=="Mouanko;Sanaga-Maritime;Littoral;191"
replace ikey="Other districts in Sanaga Maritime Department;Sanaga-Maritime;Littoral" if ckey=="Ndom;Sanaga-Maritime;Littoral;1"
replace ikey="Other districts in Sanaga Maritime Department;Sanaga-Maritime;Littoral" if ckey=="Ngwei;Sanaga-Maritime;Littoral;215"
replace ikey="Other districts in Sanaga Maritime Department;Sanaga-Maritime;Littoral" if ckey=="Pouma;Sanaga-Maritime;Littoral;175"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© I;Mfoundi;Centre;181"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© II;Mfoundi;Centre;16"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© III;Mfoundi;Centre;184"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© IV;Mfoundi;Centre;188"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© V;Mfoundi;Centre;182"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© VI;Mfoundi;Centre;185"
replace ikey="Yaounde I;Mfoundi;Centre" if ckey=="YaoundÃ© VII;Mfoundi;Centre;148"
replace ikey="Other districts in Hauts Plateaux Department;Hauts-Plateaux;Ouest" if ckey=="Bangou;Hauts-Plateaux;Ouest;125"
replace ikey="Other districts in Mbam and Kim Department;Mbam-et-Inoubou;Centre" if ckey=="NgambÃ©-Tikar;Mbam-et-Kim;Centre;85"
replace ikey="Other districts in Mbam and Kim Department;Mbam-et-Kim;Centre" if ckey=="Ngoro;Mbam-et-Kim;Centre;121"
replace ikey="Other districts in Mbam and Kim Department;Mbam-et-Kim;Centre" if ckey=="Yoko;Mbam-et-Kim;Centre;39"
replace ikey="Other districts in Mefou and Akono Department;Mefou-et-Afamba;Centre" if ckey=="Akono;MÃ©fou-et-Akono;Centre;198"
replace ikey="Other districts in Mefou and Akono Department;Mefou-et-Akono;Centre" if ckey=="Bikok;MÃ©fou-et-Akono;Centre;193"
replace ikey="" if ckey=="Ngoumou;MÃ©fou-et-Akono;Centre;194"
replace ikey="Other districts in Mvilla Department;Vallée-du-Ntem;Sud" if ckey=="Ma'an;VallÃ©e-Du-Ntem;Sud;10"
replace ikey="Penka-Michel or Bansoa;Menoua;Ouest" if ckey=="Penka-Michel;Menoua;Ouest;111"
save "S:\CM Data\arronIV.dta", replace
collapse (mean) tri wtri wdist, by (ikey)
save "S:\CM Data\arronIVv2.dta", replace
*/






