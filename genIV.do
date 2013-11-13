/*compute everything in ArcGIS, then use PERL script to convert .dbf->.csv & import into stata*/

insheet using "S:\CM Data\ruggedness\tri_arron.csv"
gen cmforetkey="null"
replace cmforetkey="Mbanga;Moungo;Littoral;0" if fid_==0
replace cmforetkey="Ndom;Sanaga-Maritime;Littoral;1" if fid_==1
replace cmforetkey="Idabato;Ndian;Sud-Ouest;2" if fid_==2
replace cmforetkey="NgambÃ©;Sanaga-Maritime;Littoral;3" if fid_==3
replace cmforetkey="Sa'a;LekiÃ©;Centre;4" if fid_==4
replace cmforetkey="Bipindi;OcÃ©an;Sud;5" if fid_==5
replace cmforetkey="MvenguÃ©;OcÃ©an;Sud;6" if fid_==6
replace cmforetkey="Ngoulemakong;Mvila;Sud;7" if fid_==7
replace cmforetkey="Akom II;OcÃ©an;Sud;8" if fid_==8
replace cmforetkey="Mvangan;Mvila;Sud;9" if fid_==9
replace cmforetkey="Ma'an;VallÃ©e-Du-Ntem;Sud;10" if fid_==10
replace cmforetkey="Ambam;VallÃ©e-Du-Ntem;Sud;11" if fid_==11
replace cmforetkey="Kumbo;Bui;Nord-Ouest;12" if fid_==12
replace cmforetkey="Campo;OcÃ©an;Sud;13" if fid_==13
replace cmforetkey="OlamzÃ©;VallÃ©e-Du-Ntem;Sud;14" if fid_==14
replace cmforetkey="Kumba I;Meme;Sud-Ouest;15" if fid_==15
replace cmforetkey="YaoundÃ© II;Mfoundi;Centre;16" if fid_==16
replace cmforetkey="Sangmelima;Dja-et-Lobo;Sud;17" if fid_==17
replace cmforetkey="Biwong-Bulu;Mvila;Sud;18" if fid_==18
replace cmforetkey="Lokoundje;OcÃ©an;Sud;19" if fid_==19
replace cmforetkey="Nkum;Bui;Nord-Ouest;20" if fid_==20
replace cmforetkey="Mamfe;Manyu;Sud-Ouest;21" if fid_==21
replace cmforetkey="Blangoua;Logone-et-Chari;ExtrÃªme-Nord;22" if fid_==22
replace cmforetkey="HilÃ© - Halifa;Logone-et-Chari;ExtrÃªme-Nord;23" if fid_==23
replace cmforetkey="Goulfey;Logone-et-Chari;ExtrÃªme-Nord;24" if fid_==24
replace cmforetkey="Makary;Logone-et-Chari;ExtrÃªme-Nord;25" if fid_==25
replace cmforetkey="Fotokol;Logone-et-Chari;ExtrÃªme-Nord;26" if fid_==26
replace cmforetkey="Logone Birni;Logone-et-Chari;ExtrÃªme-Nord;27" if fid_==27
replace cmforetkey="Waza;Logone-et-Chari;ExtrÃªme-Nord;28" if fid_==28
replace cmforetkey="Mora;Mayo-Sava;ExtrÃªme-Nord;29" if fid_==29
replace cmforetkey="Bogo;DiamarÃ©;ExtrÃªme-Nord;30" if fid_==30
replace cmforetkey="Koza;Mayo-Tsanaga;ExtrÃªme-Nord;31" if fid_==31
replace cmforetkey="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32" if fid_==32
replace cmforetkey="MÃ©ri;DiamarÃ©;ExtrÃªme-Nord;33" if fid_==33
replace cmforetkey="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34" if fid_==34
replace cmforetkey="Bourrha;Mayo-Tsanaga;ExtrÃªme-Nord;35" if fid_==35
replace cmforetkey="Mayo-Oulo;Mayo-Louti;Nord;36" if fid_==36
replace cmforetkey="Guider;Mayo-Louti;Nord;37" if fid_==37
replace cmforetkey="Dir;MbÃ©rÃ©;Adamaoua;38" if fid_==38
replace cmforetkey="Yoko;Mbam-et-Kim;Centre;39" if fid_==39
replace cmforetkey="Garoua-Boulai;Lom-et-DjÃ©rem;Est;40" if fid_==40
replace cmforetkey="BÃ©tarÃ© Oya;Lom-et-DjÃ©rem;Est;41" if fid_==41
replace cmforetkey="BÃ©labo;Lom-et-DjÃ©rem;Est;42" if fid_==42
replace cmforetkey="KettÃ©;Kadey;Est;43" if fid_==43
replace cmforetkey="Minta;Haute-Sanaga;Centre;44" if fid_==44
replace cmforetkey="Nanga-Eboko;Haute-Sanaga;Centre;45" if fid_==45
replace cmforetkey="Diang;Lom-et-DjÃ©rem;Est;46" if fid_==46
replace cmforetkey="Batouri;Kadey;Est;47" if fid_==47
replace cmforetkey="Nguelemendouka;Haut-Nyong;Est;48" if fid_==48
replace cmforetkey="DoumÃ©;Haut-Nyong;Est;49" if fid_==49
replace cmforetkey="Dimako;Haut-Nyong;Est;50" if fid_==50
replace cmforetkey="NdÃ©lÃ©lÃ©;Kadey;Est;51" if fid_==51
replace cmforetkey="Ayos;Nyong-et-Mfoumou;Centre;52" if fid_==52
replace cmforetkey="Mandjou;Lom-et-DjÃ©rem;Est;53" if fid_==53
replace cmforetkey="Bertoua II;Lom-et-DjÃ©rem;Est;54" if fid_==54
replace cmforetkey="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55" if fid_==55
replace cmforetkey="Tcheboa;BÃ©nouÃ©;Nord;56" if fid_==56
replace cmforetkey="Banyo;Mayo-Banyo;Adamaoua;57" if fid_==57
replace cmforetkey="Ako;Donga-Mantung;Nord-Ouest;58" if fid_==58
replace cmforetkey="Furu Awa;Menchum;Nord-Ouest;59" if fid_==59
replace cmforetkey="Misaje;Donga-Mantung;Nord-Ouest;60" if fid_==60
replace cmforetkey="Nwa;Donga-Mantung;Nord-Ouest;61" if fid_==61
replace cmforetkey="Fungom;Menchum;Nord-Ouest;62" if fid_==62
replace cmforetkey="Kumba III;Meme;Sud-Ouest;63" if fid_==63
replace cmforetkey="Bum;Boyo;Nord-Ouest;64" if fid_==64
replace cmforetkey="Nkambe;Donga-Mantung;Nord-Ouest;65" if fid_==65
replace cmforetkey="Menchum Valley;Menchum;Nord-Ouest;66" if fid_==66
replace cmforetkey="Ndu;Donga-Mantung;Nord-Ouest;67" if fid_==67
replace cmforetkey="Bankim;Mayo-Banyo;Adamaoua;68" if fid_==68
replace cmforetkey="Akwaya;Manyu;Sud-Ouest;69" if fid_==69
replace cmforetkey="Wum;Menchum;Nord-Ouest;70" if fid_==70
replace cmforetkey="Noni;Bui;Nord-Ouest;71" if fid_==71
replace cmforetkey="Fundong;Boyo;Nord-Ouest;72" if fid_==72
replace cmforetkey="Mbven;Bui;Nord-Ouest;73" if fid_==73
replace cmforetkey="Belo;Boyo;Nord-Ouest;74" if fid_==74
replace cmforetkey="Bafut;Mezam;Nord-Ouest;75" if fid_==75
replace cmforetkey="Oku;Bui;Nord-Ouest;76" if fid_==76
replace cmforetkey="Njikwa;Momo;Nord-Ouest;77" if fid_==77
replace cmforetkey="Njinikom;Boyo;Nord-Ouest;78" if fid_==78
replace cmforetkey="Magba;Noun;Ouest;79" if fid_==79
replace cmforetkey="Mbengwi;Momo;Nord-Ouest;80" if fid_==80
replace cmforetkey="Jakiri;Bui;Nord-Ouest;81" if fid_==81
replace cmforetkey="Tubah;Mezam;Nord-Ouest;82" if fid_==82
replace cmforetkey="Babessi;Ngo-Ketunjia;Nord-Ouest;83" if fid_==83
replace cmforetkey="Widikum-Menka;Momo;Nord-Ouest;84" if fid_==84
replace cmforetkey="NgambÃ©-Tikar;Mbam-et-Kim;Centre;85" if fid_==85
replace cmforetkey="Bamenda II;Mezam;Nord-Ouest;86" if fid_==86
replace cmforetkey="Ngie;Momo;Nord-Ouest;87" if fid_==87
replace cmforetkey="Ndop;Ngo-Ketunjia;Nord-Ouest;88" if fid_==88
replace cmforetkey="Bangourain;Noun;Ouest;89" if fid_==89
replace cmforetkey="Balikumbat;Ngo-Ketunjia;Nord-Ouest;90" if fid_==90
replace cmforetkey="Bali;Mezam;Nord-Ouest;91" if fid_==91
replace cmforetkey="Batibo;Momo;Nord-Ouest;92" if fid_==92
replace cmforetkey="Eyumojock;Manyu;Sud-Ouest;93" if fid_==93
replace cmforetkey="Santa;Mezam;Nord-Ouest;94" if fid_==94
replace cmforetkey="Malantouen;Noun;Ouest;95" if fid_==95
replace cmforetkey="Galim;Bamboutos;Ouest;96" if fid_==96
replace cmforetkey="Upper Bayang;Manyu;Sud-Ouest;97" if fid_==97
replace cmforetkey="Kouoptamo;Noun;Ouest;98" if fid_==98
replace cmforetkey="Koutaba;Noun;Ouest;99" if fid_==99
replace cmforetkey="Babadjou;Bamboutos;Ouest;100" if fid_==100
replace cmforetkey="Wabane;Lebialem;Sud-Ouest;101" if fid_==101
replace cmforetkey="Mbouda;Bamboutos;Ouest;102" if fid_==102
replace cmforetkey="Batcham;Bamboutos;Ouest;103" if fid_==103
replace cmforetkey="Nkong-Ni;Menoua;Ouest;104" if fid_==104
replace cmforetkey="Alou;Lebialem;Sud-Ouest;105" if fid_==105
replace cmforetkey="Bafoussam II;Mifi;Ouest;106" if fid_==106
replace cmforetkey="Foumbot;Noun;Ouest;107" if fid_==107
replace cmforetkey="Massangam;Noun;Ouest;108" if fid_==108
replace cmforetkey="Bafoussam I;Mifi;Ouest;109" if fid_==109
replace cmforetkey="Bafoussam III;Mifi;Ouest;110" if fid_==110
replace cmforetkey="Penka-Michel;Menoua;Ouest;111" if fid_==111
replace cmforetkey="Fontem;Lebialem;Sud-Ouest;112" if fid_==112
replace cmforetkey="Nguti;KupÃ©-Manengouba;Sud-Ouest;113" if fid_==113
replace cmforetkey="Bamendjou;Hauts-Plateaux;Ouest;114" if fid_==114
replace cmforetkey="Poumougne;Koung-Khi;Ouest;115" if fid_==115
replace cmforetkey="Mundemba;Ndian;Sud-Ouest;116" if fid_==116
replace cmforetkey="Santchou;Menoua;Ouest;117" if fid_==117
replace cmforetkey="FokouÃ©;Menoua;Ouest;118" if fid_==118
replace cmforetkey="Nganha;Vina;Adamaoua;119" if fid_==119
replace cmforetkey="Bandja;Haut-Nkam;Ouest;120" if fid_==120
replace cmforetkey="Ngoro;Mbam-et-Kim;Centre;121" if fid_==121
replace cmforetkey="Baham;Hauts-Plateaux;Ouest;122" if fid_==122
replace cmforetkey="MÃ©long;Moungo;Littoral;123" if fid_==123
replace cmforetkey="Bayangam;Koung-Khi;Ouest;124" if fid_==124
replace cmforetkey="Bangou;Hauts-Plateaux;Ouest;125" if fid_==125
replace cmforetkey="BangangtÃ©;NdÃ©;Ouest;126" if fid_==126
replace cmforetkey="KÃ©kem;Haut-Nkam;Ouest;127" if fid_==127
replace cmforetkey="Deuk;Mbam-et-Inoubou;Centre;128" if fid_==128
replace cmforetkey="Bangem;KupÃ©-Manengouba;Sud-Ouest;129" if fid_==129
replace cmforetkey="Bana;Haut-Nkam;Ouest;130" if fid_==130
replace cmforetkey="Bazou;NdÃ©;Ouest;131" if fid_==131
replace cmforetkey="Nkondjock;Nkam;Littoral;132" if fid_==132
replace cmforetkey="Konye;Meme;Sud-Ouest;133" if fid_==133
replace cmforetkey="Bakou;Haut-Nkam;Ouest;134" if fid_==134
replace cmforetkey="Tombel;KupÃ©-Manengouba;Sud-Ouest;135" if fid_==135
replace cmforetkey="BarÃ©-Bakem;Moungo;Littoral;136" if fid_==136
replace cmforetkey="Tonga;NdÃ©;Ouest;137" if fid_==137
replace cmforetkey="Manjo;Moungo;Littoral;138" if fid_==138
replace cmforetkey="Makenene;Mbam-et-Inoubou;Centre;139" if fid_==139
replace cmforetkey="Nlonako;Moungo;Littoral;140" if fid_==140
replace cmforetkey="Ekondo Titi;Ndian;Sud-Ouest;141" if fid_==141
replace cmforetkey="Isangele;Ndian;Sud-Ouest;142" if fid_==142
replace cmforetkey="Ndikinimeki;Mbam-et-Inoubou;Centre;143" if fid_==143
replace cmforetkey="Kombo-Itindi;Ndian;Sud-Ouest;144" if fid_==144
replace cmforetkey="Loum;Moungo;Littoral;145" if fid_==145
replace cmforetkey="Ombessa;Mbam-et-Inoubou;Centre;146" if fid_==146
replace cmforetkey="Yingui;Nkam;Littoral;147" if fid_==147
replace cmforetkey="YaoundÃ© VII;Mfoundi;Centre;148" if fid_==148
replace cmforetkey="Bokito;Mbam-et-Inoubou;Centre;149" if fid_==149
replace cmforetkey="Mbangassina;Mbam-et-Kim;Centre;150" if fid_==150
replace cmforetkey="Yabassi;Nkam;Littoral;151" if fid_==151
replace cmforetkey="Ntui;Mbam-et-Kim;Centre;152" if fid_==152
replace cmforetkey="NjombÃ©-Penja;Moungo;Littoral;153" if fid_==153
replace cmforetkey="Kombo Abedimo;Ndian;Sud-Ouest;154" if fid_==154
replace cmforetkey="Mbonge;Meme;Sud-Ouest;155" if fid_==155
replace cmforetkey="Bamusso;Ndian;Sud-Ouest;156" if fid_==156
replace cmforetkey="Mbandjock;Haute-Sanaga;Centre;157" if fid_==157
replace cmforetkey="Ebebda;LekiÃ©;Centre;158" if fid_==158
replace cmforetkey="Muyuka;Fako;Sud-Ouest;159" if fid_==159
replace cmforetkey="Dibombari;Moungo;Littoral;160" if fid_==160
replace cmforetkey="Obala;LekiÃ©;Centre;161" if fid_==161
replace cmforetkey="MonatÃ©lÃ©;LekiÃ©;Centre;162" if fid_==162
replace cmforetkey="Esse;MÃ©fou-et-Afamba;Centre;163" if fid_==163
replace cmforetkey="BuÃ©a;Fako;Sud-Ouest;164" if fid_==164
replace cmforetkey="Elig-Mfomo;LekiÃ©;Centre;165" if fid_==165
replace cmforetkey="Douala V;Wouri;Littoral;166" if fid_==166
replace cmforetkey="Tiko;Fako;Sud-Ouest;167" if fid_==167
replace cmforetkey="Bot-Makak;Nyong-et-KellÃ©;Centre;168" if fid_==168
replace cmforetkey="Evodoula;LekiÃ©;Centre;169" if fid_==169
replace cmforetkey="Douala IV;Wouri;Littoral;170" if fid_==170
replace cmforetkey="Soa;MÃ©fou-et-Afamba;Centre;171" if fid_==171
replace cmforetkey="Okola;LekiÃ©;Centre;172" if fid_==172
replace cmforetkey="AwaÃ©;MÃ©fou-et-Afamba;Centre;173" if fid_==173
replace cmforetkey="Dibang;Nyong-et-KellÃ©;Centre;174" if fid_==174
replace cmforetkey="Pouma;Sanaga-Maritime;Littoral;175" if fid_==175
replace cmforetkey="Douala VI;Wouri;Littoral;176" if fid_==176
replace cmforetkey="Douala II;Wouri;Littoral;177" if fid_==177
replace cmforetkey="Ngog-Mapubi;Nyong-et-KellÃ©;Centre;178" if fid_==178
replace cmforetkey="DizanguÃ©;Sanaga-Maritime;Littoral;179" if fid_==179
replace cmforetkey="Matomb;Nyong-et-KellÃ©;Centre;180" if fid_==180
replace cmforetkey="YaoundÃ© I;Mfoundi;Centre;181" if fid_==181
replace cmforetkey="YaoundÃ© V;Mfoundi;Centre;182" if fid_==182
replace cmforetkey="Mfou;MÃ©fou-et-Afamba;Centre;183" if fid_==183
replace cmforetkey="YaoundÃ© III;Mfoundi;Centre;184" if fid_==184
replace cmforetkey="YaoundÃ© VI;Mfoundi;Centre;185" if fid_==185
replace cmforetkey="Mbankomo;MÃ©fou-et-Akono;Centre;186" if fid_==186
replace cmforetkey="Messondo;Nyong-et-KellÃ©;Centre;187" if fid_==187
replace cmforetkey="YaoundÃ© IV;Mfoundi;Centre;188" if fid_==188
replace cmforetkey="EsÃ©ka;Nyong-et-KellÃ©;Centre;189" if fid_==189
replace cmforetkey="Dzeng;Nyong-et-So'o;Centre;190" if fid_==190
replace cmforetkey="Mouanko;Sanaga-Maritime;Littoral;191" if fid_==191
replace cmforetkey="Makak;Nyong-et-KellÃ©;Centre;192" if fid_==192
replace cmforetkey="Bikok;MÃ©fou-et-Akono;Centre;193" if fid_==193
replace cmforetkey="Ngoumou;MÃ©fou-et-Akono;Centre;194" if fid_==194
replace cmforetkey="Douala I;Wouri;Littoral;195" if fid_==195
replace cmforetkey="Douala III;Wouri;Littoral;196" if fid_==196
replace cmforetkey="Mbalmayo;Nyong-et-So'o;Centre;197" if fid_==197
replace cmforetkey="Akono;MÃ©fou-et-Akono;Centre;198" if fid_==198
replace cmforetkey="ZoÃ©tÃ©lÃ©;Dja-et-Lobo;Sud;199" if fid_==199
replace cmforetkey="Lolodorf;OcÃ©an;Sud;200" if fid_==200
replace cmforetkey="Ngomedzap;Nyong-et-So'o;Centre;201" if fid_==201
replace cmforetkey="Biwong-BanÃ©;Mvila;Sud;202" if fid_==202
replace cmforetkey="Mengong;Mvila;Sud;203" if fid_==203
replace cmforetkey="Limbe II;Fako;Sud-Ouest;204" if fid_==204
replace cmforetkey="Kumba II;Meme;Sud-Ouest;205" if fid_==205
replace cmforetkey="Kon-Yambetta;Mbam-et-Inoubou;Centre;206" if fid_==206
replace cmforetkey="Kiiki;Mbam-et-Inoubou;Centre;207" if fid_==207
replace cmforetkey="Bafia;Mbam-et-Inoubou;Centre;208" if fid_==208
replace cmforetkey="Nkongsamba III;Moungo;Littoral;209" if fid_==209
replace cmforetkey="Nkongsamba II;Moungo;Littoral;210" if fid_==210
replace cmforetkey="Nkongsamba I;Moungo;Littoral;211" if fid_==211
replace cmforetkey="Limbe III;Fako;Sud-Ouest;212" if fid_==212
replace cmforetkey="Dibamba;Sanaga-Maritime;Littoral;213" if fid_==213
replace cmforetkey="EdÃ©a II;Sanaga-Maritime;Littoral;214" if fid_==214
replace cmforetkey="Ngwei;Sanaga-Maritime;Littoral;215" if fid_==215
replace cmforetkey="EdÃ©a I;Sanaga-Maritime;Littoral;216" if fid_==216
replace cmforetkey="Bamenda III;Mezam;Nord-Ouest;217" if fid_==217
replace cmforetkey="Bamenda I;Mezam;Nord-Ouest;218" if fid_==218
replace cmforetkey="Njimom;Noun;Ouest;219" if fid_==219
replace cmforetkey="Foumban;Noun;Ouest;220" if fid_==220
replace cmforetkey="Banka;Haut-Nkam;Ouest;221" if fid_==221
replace cmforetkey="Bafang;Haut-Nkam;Ouest;222" if fid_==222
replace cmforetkey="Fongo-Tongo;Menoua;Ouest;223" if fid_==223
replace cmforetkey="Dschang;Menoua;Ouest;224" if fid_==224
replace cmforetkey="Efoulan;Mvila;Sud;225" if fid_==225
replace cmforetkey="Ebolowa II;Mvila;Sud;226" if fid_==226
replace cmforetkey="Ebolowa I;Mvila;Sud;227" if fid_==227
replace cmforetkey="Kribi II;OcÃ©an;Sud;228" if fid_==228
replace cmforetkey="Limbe I;Fako;Sud-Ouest;229" if fid_==229
replace cmforetkey="Kribi I;OcÃ©an;Sud;230" if fid_==230
replace cmforetkey="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231" if fid_==231
replace cmforetkey="Kolofata;Mayo-Sava;ExtrÃªme-Nord;232" if fid_==232
replace cmforetkey="PettÃ©;DiamarÃ©;ExtrÃªme-Nord;233" if fid_==233
replace cmforetkey="Mayo Moskota;Mayo-Tsanaga;ExtrÃªme-Nord;234" if fid_==234
replace cmforetkey="Maga;Mayo-Danay;ExtrÃªme-Nord;235" if fid_==235
replace cmforetkey="TokombÃ©rÃ©;Mayo-Sava;ExtrÃªme-Nord;236" if fid_==236
replace cmforetkey="Kai-Kai;Mayo-Danay;ExtrÃªme-Nord;237" if fid_==237
replace cmforetkey="MogodÃ©;Mayo-Tsanaga;ExtrÃªme-Nord;238" if fid_==238
replace cmforetkey="Moulvoudaye;Mayo-Kani;ExtrÃªme-Nord;239" if fid_==239
replace cmforetkey="Gazawa;DiamarÃ©;ExtrÃªme-Nord;240" if fid_==240
replace cmforetkey="Mindif;Mayo-Kani;ExtrÃªme-Nord;241" if fid_==241
replace cmforetkey="VÃ©lÃ©;Mayo-Danay;ExtrÃªme-Nord;242" if fid_==242
replace cmforetkey="Kalfou;Mayo-Danay;ExtrÃªme-Nord;243" if fid_==243
replace cmforetkey="Hina;Mayo-Tsanaga;ExtrÃªme-Nord;244" if fid_==244
replace cmforetkey="Moutourwa;Mayo-Kani;ExtrÃªme-Nord;245" if fid_==245
replace cmforetkey="KaÃ©lÃ©;Mayo-Kani;ExtrÃªme-Nord;246" if fid_==246
replace cmforetkey="Porhi;Mayo-Kani;ExtrÃªme-Nord;247" if fid_==247
replace cmforetkey="GuÃ©rÃ©;Mayo-Danay;ExtrÃªme-Nord;248" if fid_==248
replace cmforetkey="Gobo;Mayo-Danay;ExtrÃªme-Nord;249" if fid_==249
replace cmforetkey="Guidiguis;Mayo-Kani;ExtrÃªme-Nord;250" if fid_==250
replace cmforetkey="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251" if fid_==251
replace cmforetkey="Figuil;Mayo-Louti;Nord;252" if fid_==252
replace cmforetkey="Wina;Mayo-Danay;ExtrÃªme-Nord;253" if fid_==253
replace cmforetkey="Taibong;Mayo-Kani;ExtrÃªme-Nord;254" if fid_==254
replace cmforetkey="DatchÃ©ka;Mayo-Danay;ExtrÃªme-Nord;255" if fid_==255
replace cmforetkey="Tchatibali;Mayo-Danay;ExtrÃªme-Nord;256" if fid_==256
replace cmforetkey="Dembo;BÃ©nouÃ©;Nord;257" if fid_==257
replace cmforetkey="Pitoa;BÃ©nouÃ©;Nord;258" if fid_==258
replace cmforetkey="Bibemi;BÃ©nouÃ©;Nord;259" if fid_==259
replace cmforetkey="Rey-Bouba;Mayo-Rey;Nord;260" if fid_==260
replace cmforetkey="BÃ©ka;Faro;Nord;261" if fid_==261
replace cmforetkey="Lagdo;BÃ©nouÃ©;Nord;262" if fid_==262
replace cmforetkey="Poli;Faro;Nord;263" if fid_==263
replace cmforetkey="TchollirÃ©;Mayo-Rey;Nord;264" if fid_==264
replace cmforetkey="Touboro;Mayo-Rey;Nord;265" if fid_==265
replace cmforetkey="Mayo-BalÃ©o;Faro-et-DÃ©o;Adamaoua;266" if fid_==266
replace cmforetkey="MbÃ©;Vina;Adamaoua;267" if fid_==267
replace cmforetkey="TignÃ¨re;Faro-et-DÃ©o;Adamaoua;268" if fid_==268
replace cmforetkey="BÃ©lÃ©l;Vina;Adamaoua;269" if fid_==269
replace cmforetkey="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270" if fid_==270
replace cmforetkey="Tibati;DjÃ©rem;Adamaoua;271" if fid_==271
replace cmforetkey="Meiganga;MbÃ©rÃ©;Adamaoua;272" if fid_==272
replace cmforetkey="Ngaoundal;DjÃ©rem;Adamaoua;273" if fid_==273
replace cmforetkey="Meyomessi;Dja-et-Lobo;Sud;274" if fid_==274
replace cmforetkey="Nkoteng;Haute-Sanaga;Centre;275" if fid_==275
replace cmforetkey="Akonolinga;Nyong-et-Mfoumou;Centre;276" if fid_==276
replace cmforetkey="Mbang;Kadey;Est;277" if fid_==277
replace cmforetkey="Abong Mbang;Haut-Nyong;Est;278" if fid_==278
replace cmforetkey="Gari-Gombo;Boumba-et-Ngoko;Est;279" if fid_==279
replace cmforetkey="Garoua II;BÃ©nouÃ©;Nord;280" if fid_==280
replace cmforetkey="MessamÃ©na;Haut-Nyong;Est;281" if fid_==281
replace cmforetkey="Bengbis;Dja-et-Lobo;Sud;282" if fid_==282
replace cmforetkey="Endom;Nyong-et-Mfoumou;Centre;283" if fid_==283
replace cmforetkey="Yokadouma;Boumba-et-Ngoko;Est;284" if fid_==284
replace cmforetkey="LomiÃ©;Haut-Nyong;Est;285" if fid_==285
replace cmforetkey="Meyomessala;Dja-et-Lobo;Sud;286" if fid_==286
replace cmforetkey="Djoum;Dja-et-Lobo;Sud;287" if fid_==287
replace cmforetkey="Ngoila;Haut-Nyong;Est;288" if fid_==288
replace cmforetkey="Mintom;Dja-et-Lobo;Sud;289" if fid_==289
replace cmforetkey="Moloundou;Boumba-et-Ngoko;Est;290" if fid_==290
replace cmforetkey="Oveng;Dja-et-Lobo;Sud;291" if fid_==291
replace cmforetkey="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292" if fid_==292
replace cmforetkey="Bertoua I;Lom-et-DjÃ©rem;Est;293" if fid_==293
replace cmforetkey="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294" if fid_==294
replace cmforetkey="Gaoua III;BÃ©nouÃ©;Nord;295" if fid_==295
replace cmforetkey="NgaoundÃ©rÃ© III;Vina;Adamaoua;296" if fid_==296
replace cmforetkey="Nyambaka;Vina;Adamaoua;297" if fid_==297
replace cmforetkey="NgaoundÃ©rÃ© II;Vina;Adamaoua;298" if fid_==298
replace cmforetkey="NgaoundÃ©rÃ© I;Vina;Adamaoua;299" if fid_==299
replace cmforetkey="Martap;Vina;Adamaoua;300" if fid_==300
replace cmforetkey="Djohong;MbÃ©rÃ©;Adamaoua;301" if fid_==301
replace cmforetkey="Mayo Hourna;BÃ©nouÃ©;Nord;302" if fid_==302
replace cmforetkey="Garoua I;BÃ©nouÃ©;Nord;303" if fid_==303
gen tri=mean/100000
drop count area mean
merge 1:1 cmforetkey using "S:\CM Data\distance\cmforet\wdistance_arrondi.dta"
drop _merge
save "S:\CM Data\arronIV.dta", replace
