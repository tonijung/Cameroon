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
ren tri rug

/*add ipums key*/
gen ikeya="null"
replace ikeya="Abong Mbang;1602;46;Haut Nyong;17;Est;3" if cmforetkey=="Abong Mbang;Haut-Nyong;Est;278"
replace ikeya="Ako;3505;119;Donga Mantung;36;Nord Ouest;7" if cmforetkey=="Ako;Donga-Mantung;Nord-Ouest;58"
replace ikeya="Akonolinga;1401;40;Nyong et Mfoumou;14;Centre;2" if cmforetkey=="Akonolinga;Nyong-et-Mfoumou;Centre;276"
replace ikeya="Akwaya;5601;178;Manyu;56;Sud Ouest;10" if cmforetkey=="Akwaya;Manyu;Sud-Ouest;69"
replace ikeya="Ambam and Ma'an;5201;167;VallÃ©e du Ntem;52;Sud;9" if cmforetkey=="Ambam;VallÃ©e-Du-Ntem;Sud;11"
replace ikeya="Ayos;1402;41;Nyong et Mfoumou;14;Centre;2" if cmforetkey=="Ayos;Nyong-et-Mfoumou;Centre;52"
replace ikeya="BÃ©tarÃ©-Oya;1901;58;Lom et Djerem;19;Est;3" if cmforetkey=="BÃ©tarÃ© Oya;Lom-et-DjÃ©rem;Est;41"
replace ikeya="Bafang;4201;137;Haut Nkam;42;Ouest;8" if cmforetkey=="Bafang;Haut-Nkam;Ouest;222"
replace ikeya="Bafia;801;21;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Bafia;Mbam-et-Inoubou;Centre;208"
replace ikeya="Bafoussam;4601;148;Mifi;46;Ouest;8" if cmforetkey=="Bafoussam I;Mifi;Ouest;109"
replace ikeya="Bafoussam;4601;148;Mifi;46;Ouest;8" if cmforetkey=="Bafoussam II;Mifi;Ouest;106"
replace ikeya="Bafoussam;4601;148;Mifi;46;Ouest;8" if cmforetkey=="Bafoussam III;Mifi;Ouest;110"
replace ikeya="Bali;3802;126;Mezam;38;Nord Ouest;7" if cmforetkey=="Bali;Mezam;Nord-Ouest;91"
replace ikeya="Bamenda;3803;127;Mezam;38;Nord Ouest;7" if cmforetkey=="Bamenda I;Mezam;Nord-Ouest;218"
replace ikeya="Bamenda;3803;127;Mezam;38;Nord Ouest;7" if cmforetkey=="Bamenda II;Mezam;Nord-Ouest;86"
replace ikeya="Bamenda;3803;127;Mezam;38;Nord Ouest;7" if cmforetkey=="Bamenda III;Mezam;Nord-Ouest;217"
replace ikeya="Bamusso;5801;182;Ndian;58;Sud Ouest;10" if cmforetkey=="Bamusso;Ndian;Sud-Ouest;156"
replace ikeya="Bandja;4202;138;Haut Nkam;42;Ouest;8" if cmforetkey=="Bandja;Haut-Nkam;Ouest;120"
replace ikeya="Bangangte;4701;150;Nde;47;Ouest;8" if cmforetkey=="BangangtÃ©;NdÃ©;Ouest;126"
replace ikeya="Bankim;301;6;Mayo Banyo;3;Adamoua;1" if cmforetkey=="Bankim;Mayo-Banyo;Adamaoua;68"
replace ikeya="Batcham;4102;134;Bamboutos;41;Ouest;8" if cmforetkey=="Batcham;Bamboutos;Ouest;103"
replace ikeya="Batibo;3901;129;Momo;39;Nord Ouest;7" if cmforetkey=="Batibo;Momo;Nord-Ouest;92"
replace ikeya="Batouri;1801;53;Kadey;18;Est;3" if cmforetkey=="Batouri;Kadey;Est;47"
replace ikeya="Beka;3101;107;Faro;31;Nord;6" if cmforetkey=="BÃ©ka;Faro;Nord;261"
replace ikeya="Belabo;1805;57;Lom et Djerem;19;Est;3" if cmforetkey=="BÃ©labo;Lom-et-DjÃ©rem;Est;42"
replace ikeya="Belel;403;9;Vina;5;Adamoua;1" if cmforetkey=="BÃ©lÃ©l;Vina;Adamaoua;269"
replace ikeya="Bertoua;1903;59;Lom et Djerem;19;Est;3" if cmforetkey=="Bertoua I;Lom-et-DjÃ©rem;Est;293"
replace ikeya="Bertoua;1903;59;Lom et Djerem;19;Est;3" if cmforetkey=="Bertoua II;Lom-et-DjÃ©rem;Est;54"
replace ikeya="Bibemi and Dembo;3001;103;Benoue;30;Nord;6" if cmforetkey=="Bibemi;BÃ©nouÃ©;Nord;259"
replace ikeya="Bibemi and Dembo;3001;103;Benoue;30;Nord;6" if cmforetkey=="Dembo;BÃ©nouÃ©;Nord;257"
replace ikeya="Blangoua;2101;65;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Blangoua;Logone-et-Chari;ExtrÃªme-Nord;22"
replace ikeya="Bogo;2001;61;Diamare;20;ExtrÃ¨me Nord;4" if cmforetkey=="Bogo;DiamarÃ©;ExtrÃªme-Nord;30"
replace ikeya="Bogo;2001;61;Diamare;20;Nord;6" if cmforetkey=="Bogo;DiamarÃ©;ExtrÃªme-Nord;30"
replace ikeya="Bokito;802;22;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Bokito;Mbam-et-Inoubou;Centre;149"
replace ikeya="Bourrha;2501;84;Mayo Tsanaga;25;ExtrÃ¨me Nord;4" if cmforetkey=="Bourrha;Mayo-Tsanaga;ExtrÃªme-Nord;35"
replace ikeya="Buea and West-Coast;5301;169;Fako;53;Sud Ouest;10" if cmforetkey=="BuÃ©a;Fako;Sud-Ouest;164"
replace ikeya="Dibombari;2602;88;Moungo;26;Littoral;5" if cmforetkey=="Dibombari;Moungo;Littoral;160"
replace ikeya="Dimako;1704;48;Haut Nyong;17;Est;3" if cmforetkey=="Dimako;Haut-Nyong;Est;50"
replace ikeya="Districts in Nkam Department;2799;94;Nkam;27;Littoral;5" if cmforetkey=="Nkondjock;Nkam;Littoral;132"
replace ikeya="Districts in Nkam Department;2799;94;Nkam;27;Littoral;5" if cmforetkey=="Yabassi;Nkam;Littoral;151"
replace ikeya="Districts in Nkam Department;2799;94;Nkam;27;Littoral;5" if cmforetkey=="Yingui;Nkam;Littoral;147"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="BÃ©lÃ©l;Vina;Adamaoua;269"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="Martap;Vina;Adamaoua;300"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="MbÃ©;Vina;Adamaoua;267"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="Nganha;Vina;Adamaoua;119"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="NgaoundÃ©rÃ© I;Vina;Adamaoua;299"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="NgaoundÃ©rÃ© II;Vina;Adamaoua;298"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="NgaoundÃ©rÃ© III;Vina;Adamaoua;296"
replace ikeya="Districts in Vina Department;509;11;Adamaoua;60;Nord;6" if cmforetkey=="Nyambaka;Vina;Adamaoua;297"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="Martap;Vina;Adamaoua;300"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="MbÃ©;Vina;Adamaoua;267"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="Nganha;Vina;Adamaoua;119"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="NgaoundÃ©rÃ© I;Vina;Adamaoua;299"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="NgaoundÃ©rÃ© II;Vina;Adamaoua;298"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="NgaoundÃ©rÃ© III;Vina;Adamaoua;296"
replace ikeya="Districts in Vina Department;509;11;Vina;5;Adamoua;1" if cmforetkey=="Nyambaka;Vina;Adamaoua;297"
replace ikeya="Dizangue;2801;95;Sanaga Maritime;28;Littoral;5" if cmforetkey=="DizanguÃ©;Sanaga-Maritime;Littoral;179"
replace ikeya="Djoum;4901;158;Dja et Lobo;49;Sud;9" if cmforetkey=="Djoum;Dja-et-Lobo;Sud;287"
replace ikeya="Donga Matung department, district unknown;3605;122;Donga Mantung;36;Nord Ouest;7" if cmforetkey=="Misaje;Donga-Mantung;Nord-Ouest;60"
replace ikeya="Donga Matung department, district unknown;3605;122;Donga Mantung;36;Nord Ouest;7" if cmforetkey=="Ndu;Donga-Mantung;Nord-Ouest;67"
replace ikeya="Douala 1;2901;99;Wouri;29;Littoral;5" if cmforetkey=="Douala I;Wouri;Littoral;195"
replace ikeya="Douala 1;2901;99;Wouri;29;Littoral;5" if cmforetkey=="Douala II;Wouri;Littoral;177"
replace ikeya="Douala 1;2901;99;Wouri;29;Littoral;5" if cmforetkey=="Douala III;Wouri;Littoral;196"
replace ikeya="Douala 1;2901;99;Wouri;29;Littoral;5" if cmforetkey=="Douala IV;Wouri;Littoral;170"
replace ikeya="Douala 1;2901;99;Wouri;29;Littoral;5" if cmforetkey=="Douala V;Wouri;Littoral;166"
replace ikeya="Douala 1;2901;99;Wouri;29;Littoral;5" if cmforetkey=="Douala VI;Wouri;Littoral;176"
replace ikeya="Doume;1705;49;Haut Nyong;17;Est;3" if cmforetkey=="DoumÃ©;Haut-Nyong;Est;49"
replace ikeya="Dschang and Fokoue;4501;145;Menoua;45;Ouest;8" if cmforetkey=="Dschang;Menoua;Ouest;224"
replace ikeya="Dschang and Fokoue;4501;145;Menoua;45;Ouest;8" if cmforetkey=="FokouÃ©;Menoua;Ouest;118"
replace ikeya="EdÃ©a;2802;96;Sanaga Maritime;28;Littoral;5" if cmforetkey=="EdÃ©a I;Sanaga-Maritime;Littoral;216"
replace ikeya="EdÃ©a;2802;96;Sanaga Maritime;28;Littoral;5" if cmforetkey=="EdÃ©a II;Sanaga-Maritime;Littoral;214"
replace ikeya="Ekondo Titi;5802;183;Ndian;58;Sud Ouest;10" if cmforetkey=="Ekondo Titi;Ndian;Sud-Ouest;141"
replace ikeya="Eseka;1301;37;Nyong et Kelle;13;Centre;2" if cmforetkey=="EsÃ©ka;Nyong-et-KellÃ©;Centre;189"
replace ikeya="Eyumodjock;5602;179;Manyu;56;Sud Ouest;10" if cmforetkey=="Eyumojock;Manyu;Sud-Ouest;93"
replace ikeya="Figuil;3201;109;Mayo Louti;32;Nord;6" if cmforetkey=="Figuil;Mayo-Louti;Nord;252"
replace ikeya="Fotokol;2103;66;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Fotokol;Logone-et-Chari;ExtrÃªme-Nord;26"
replace ikeya="Foumban;4802;152;Noun;48;Ouest;8" if cmforetkey=="Foumban;Noun;Ouest;220"
replace ikeya="Foumbot;4803;153;Noun;48;Ouest;8" if cmforetkey=="Foumbot;Noun;Ouest;107"
replace ikeya="Fungom and Furu-Awa;3701;123;Menchum;37;Nord Ouest;7" if cmforetkey=="Fungom;Menchum;Nord-Ouest;62"
replace ikeya="Fungom and Furu-Awa;3701;123;Menchum;37;Nord Ouest;7" if cmforetkey=="Furu Awa;Menchum;Nord-Ouest;59"
replace ikeya="Galim Tignere;201;3;Faro et Deo;2;Adamoua;1" if cmforetkey=="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270"
replace ikeya="Galim;4103;135;Bamboutos;41;Ouest;8" if cmforetkey=="Galim;Bamboutos;Ouest;96"
replace ikeya="Garoua;3003;104;Benoue;30;Nord;6" if cmforetkey=="Gaoua III;BÃ©nouÃ©;Nord;295"
replace ikeya="Garoua;3003;104;Benoue;30;Nord;6" if cmforetkey=="Garoua I;BÃ©nouÃ©;Nord;303"
replace ikeya="Garoua;3003;104;Benoue;30;Nord;6" if cmforetkey=="Garoua II;BÃ©nouÃ©;Nord;280"
replace ikeya="Gazawa;2002;62;Diamare;20;ExtrÃ¨me Nord;4" if cmforetkey=="Gazawa;DiamarÃ©;ExtrÃªme-Nord;240"
replace ikeya="Goulfey;2104;67;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Goulfey;Logone-et-Chari;ExtrÃªme-Nord;24"
replace ikeya="Guere;2203;71;Mayo Danay;22;ExtrÃ¨me Nord;4" if cmforetkey=="GuÃ©rÃ©;Mayo-Danay;ExtrÃªme-Nord;248"
replace ikeya="Guider;3202;110;Benoue;30;Nord;6" if cmforetkey=="Guider;Mayo-Louti;Nord;37"
replace ikeya="Guider;3202;110;Mayo Louti;32;Nord;6" if cmforetkey=="Guider;Mayo-Louti;Nord;37"
replace ikeya="Hina;2502;85;Mayo Tsanaga;25;ExtrÃ¨me Nord;4" if cmforetkey=="Hina;Mayo-Tsanaga;ExtrÃªme-Nord;244"
replace ikeya="Jakiri;3501;117;Bui;35;Nord Ouest;7" if cmforetkey=="Jakiri;Bui;Nord-Ouest;81"
replace ikeya="Kaele;2302;78;Diamare;20;Nord;6" if cmforetkey=="PettÃ©;DiamarÃ©;ExtrÃªme-Nord;233"
replace ikeya="Kalfou;2205;72;Mayo Danay;22;ExtrÃ¨me Nord;4" if cmforetkey=="Kalfou;Mayo-Danay;ExtrÃªme-Nord;243"
replace ikeya="Kar-Hay;2206;73;Mayo Danay;22;ExtrÃ¨me Nord;4" if cmforetkey=="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251"
replace ikeya="Kar-Hay;2206;73;Mayo Danay;22;Nord;6" if cmforetkey=="Kar-Hay;Mayo-Danay;ExtrÃªme-Nord;251"
replace ikeya="Kekem;4203;139;Haut Nkam;42;Ouest;8" if cmforetkey=="KÃ©kem;Haut-Nkam;Ouest;127"
replace ikeya="Kette;1802;54;Kadey;18;Est;3" if cmforetkey=="KettÃ©;Kadey;Est;43"
replace ikeya="Kolofata;2401;81;Mayo Sava;24;ExtrÃ¨me Nord;4" if cmforetkey=="Kolofata;Mayo-Sava;ExtrÃªme-Nord;232"
replace ikeya="Kousseri;2105;68;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231"
replace ikeya="Kousseri;2105;68;Logone et Chari;21;Nord;6" if cmforetkey=="Kousseri;Logone-et-Chari;ExtrÃªme-Nord;231"
replace ikeya="Koutaba;4805;154;Noun;48;Ouest;8" if cmforetkey=="Koutaba;Noun;Ouest;99"
replace ikeya="Koza;2503;86;Mayo Tsanaga;25;ExtrÃ¨me Nord;4" if cmforetkey=="Koza;Mayo-Tsanaga;ExtrÃªme-Nord;31"
replace ikeya="Kribi;5102;165;OcÃ©an;51;Sud;9" if cmforetkey=="Kribi I;OcÃ©an;Sud;230"
replace ikeya="Kribi;5102;165;OcÃ©an;51;Sud;9" if cmforetkey=="Kribi II;OcÃ©an;Sud;228"
replace ikeya="Kumba;5701;181;Meme;57;Sud Ouest;10" if cmforetkey=="Kumba I;Meme;Sud-Ouest;15"
replace ikeya="Kumba;5701;181;Meme;57;Sud Ouest;10" if cmforetkey=="Kumba II;Meme;Sud-Ouest;205"
replace ikeya="Kumba;5701;181;Meme;57;Sud Ouest;10" if cmforetkey=="Kumba III;Meme;Sud-Ouest;63"
replace ikeya="Kumbo and Mbven;3502;118;Bui;35;Nord Ouest;7" if cmforetkey=="Kumbo;Bui;Nord-Ouest;12"
replace ikeya="Kumbo and Mbven;3502;118;Bui;35;Nord Ouest;7" if cmforetkey=="Mbven;Bui;Nord-Ouest;73"
replace ikeya="Limbe;5302;170;Fako;53;Sud Ouest;10" if cmforetkey=="Limbe I;Fako;Sud-Ouest;229"
replace ikeya="Limbe;5302;170;Fako;53;Sud Ouest;10" if cmforetkey=="Limbe II;Fako;Sud-Ouest;204"
replace ikeya="Limbe;5302;170;Fako;53;Sud Ouest;10" if cmforetkey=="Limbe III;Fako;Sud-Ouest;212"
replace ikeya="Lomie;1707;50;Haut Nyong;17;Est;3" if cmforetkey=="LomiÃ©;Haut-Nyong;Est;285"
replace ikeya="Loum;2604;89;Moungo;26;Littoral;5" if cmforetkey=="Loum;Moungo;Littoral;145"
replace ikeya="Maga;2207;74;Mayo Danay;22;ExtrÃ¨me Nord;4" if cmforetkey=="Maga;Mayo-Danay;ExtrÃªme-Nord;235"
replace ikeya="Magba;4806;155;Noun;48;Ouest;8" if cmforetkey=="Magba;Noun;Ouest;79"
replace ikeya="Makak;1302;38;Nyong et Kelle;13;Centre;2" if cmforetkey=="Makak;Nyong-et-KellÃ©;Centre;192"
replace ikeya="Makari;2107;69;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Makary;Logone-et-Chari;ExtrÃªme-Nord;25"
replace ikeya="Makari;2107;69;Logone et Chari;21;Nord;6" if cmforetkey=="Makary;Logone-et-Chari;ExtrÃªme-Nord;25"
replace ikeya="Makenene;803;23;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Makenene;Mbam-et-Inoubou;Centre;139"
replace ikeya="Malentouen;4807;156;Noun;48;Ouest;8" if cmforetkey=="Malantouen;Noun;Ouest;95"
replace ikeya="Mamfe;5603;180;Manyu;56;Sud Ouest;10" if cmforetkey=="Mamfe;Manyu;Sud-Ouest;21"
replace ikeya="Manjo;2605;90;Moungo;26;Littoral;5" if cmforetkey=="Manjo;Moungo;Littoral;138"
replace ikeya="Maroua;2003;63;Diamare;20;ExtrÃ¨me Nord;4" if cmforetkey=="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55"
replace ikeya="Maroua;2003;63;Diamare;20;ExtrÃ¨me Nord;4" if cmforetkey=="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292"
replace ikeya="Maroua;2003;63;Diamare;20;ExtrÃ¨me Nord;4" if cmforetkey=="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294"
replace ikeya="Maroua;2003;63;Diamare;20;Nord;6" if cmforetkey=="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55"
replace ikeya="Maroua;2003;63;Diamare;20;Nord;6" if cmforetkey=="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292"
replace ikeya="Maroua;2003;63;Diamare;20;Nord;6" if cmforetkey=="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294"
replace ikeya="Maroua;3009;106;Benoue;30;Nord;6" if cmforetkey=="Maroua I;DiamarÃ©;ExtrÃªme-Nord;55"
replace ikeya="Maroua;3009;106;Benoue;30;Nord;6" if cmforetkey=="Maroua II;DiamarÃ©;ExtrÃªme-Nord;292"
replace ikeya="Maroua;3009;106;Benoue;30;Nord;6" if cmforetkey=="Maroua III;DiamarÃ©;ExtrÃªme-Nord;294"
replace ikeya="Massangan;4808;157;Noun;48;Ouest;8" if cmforetkey=="Massangam;Noun;Ouest;108"
replace ikeya="Mayo-Oulo;3203;111;Mayo Louti;32;Nord;6" if cmforetkey=="Mayo-Oulo;Mayo-Louti;Nord;36"
replace ikeya="Mbalmayo;1501;43;Nyong et So'o;15;Centre;2" if cmforetkey=="Mbalmayo;Nyong-et-So'o;Centre;197"
replace ikeya="Mbandjock;601;12;Haute Sanaga;6;Centre;2" if cmforetkey=="Mbandjock;Haute-Sanaga;Centre;157"
replace ikeya="Mbang;1803;55;Kadey;18;Est;3" if cmforetkey=="Mbang;Kadey;Est;277"
replace ikeya="Mbanga;2606;91;Moungo;26;Littoral;5" if cmforetkey=="Mbanga;Moungo;Littoral;0"
replace ikeya="Mbengwi;3902;130;Momo;39;Nord Ouest;7" if cmforetkey=="Mbengwi;Momo;Nord-Ouest;80"
replace ikeya="Mbouda;4104;136;Bamboutos;41;Ouest;8" if cmforetkey=="Mbouda;Bamboutos;Ouest;102"
replace ikeya="Meiganga;402;8;Adamaoua;60;Nord;6" if cmforetkey=="Meiganga;MbÃ©rÃ©;Adamaoua;272"
replace ikeya="Meiganga;402;8;Mbere;4;Adamoua;1" if cmforetkey=="Meiganga;MbÃ©rÃ©;Adamaoua;272"
replace ikeya="Melong;2607;92;Moungo;26;Littoral;5" if cmforetkey=="MÃ©long;Moungo;Littoral;123"
replace ikeya="Menchum department district unknown;3704;125;Menchum;37;Nord Ouest;7" if cmforetkey=="Menchum Valley;Menchum;Nord-Ouest;66"
replace ikeya="Meri;2006;64;Diamare;20;ExtrÃ¨me Nord;4" if cmforetkey=="MÃ©ri;DiamarÃ©;ExtrÃªme-Nord;33"
replace ikeya="Meri;2006;64;Diamare;20;Nord;6" if cmforetkey=="MÃ©ri;DiamarÃ©;ExtrÃªme-Nord;33"
replace ikeya="Messamena;1709;51;Haut Nyong;17;Est;3" if cmforetkey=="MessamÃ©na;Haut-Nyong;Est;281"
replace ikeya="Mfou;1001;28;Mefou et Afamba;10;Centre;2" if cmforetkey=="Mfou;MÃ©fou-et-Afamba;Centre;183"
replace ikeya="Mindif;2303;79;Diamare;20;Nord;6" if cmforetkey=="Mindif;Mayo-Kani;ExtrÃªme-Nord;241"
replace ikeya="Mokolo;2506;87;Margui-Wandala;61;Nord;6" if cmforetkey=="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32"
replace ikeya="Mokolo;2506;87;Mayo Tsanaga;25;ExtrÃ¨me Nord;4" if cmforetkey=="Mokolo;Mayo-Tsanaga;ExtrÃªme-Nord;32"
replace ikeya="Monatele;702;16;LekiÃ©;7;Centre;2" if cmforetkey=="MonatÃ©lÃ©;LekiÃ©;Centre;162"
replace ikeya="Mora;2402;82;Margui-Wandala;61;Nord;6" if cmforetkey=="Mora;Mayo-Sava;ExtrÃªme-Nord;29"
replace ikeya="Mora;2402;82;Mayo Sava;24;ExtrÃ¨me Nord;4" if cmforetkey=="Mora;Mayo-Sava;ExtrÃªme-Nord;29"
replace ikeya="Muyuka;5303;171;Fako;53;Sud Ouest;10" if cmforetkey=="Muyuka;Fako;Sud-Ouest;159"
replace ikeya="Nanga Eboko;602;13;Haute Sanaga;6;Centre;2" if cmforetkey=="Nanga-Eboko;Haute-Sanaga;Centre;45"
replace ikeya="Ndelele;1804;56;Kadey;18;Est;3" if cmforetkey=="NdÃ©lÃ©lÃ©;Kadey;Est;51"
replace ikeya="Ngambe or Bambini;2803;97;Sanaga Maritime;28;Littoral;5" if cmforetkey=="NgambÃ©;Sanaga-Maritime;Littoral;3"
replace ikeya="Ngaoundal;101;1;Djerem;1;Adamoua;1" if cmforetkey=="Ngaoundal;DjÃ©rem;Adamaoua;273"
replace ikeya="Nkambe;3603;120;Donga Mantung;36;Nord Ouest;7" if cmforetkey=="Nkambe;Donga-Mantung;Nord-Ouest;65"
replace ikeya="Nkongsamba;2609;93;Moungo;26;Littoral;5" if cmforetkey=="Nkongsamba I;Moungo;Littoral;211"
replace ikeya="Nkongsamba;2609;93;Moungo;26;Littoral;5" if cmforetkey=="Nkongsamba II;Moungo;Littoral;210"
replace ikeya="Nkongsamba;2609;93;Moungo;26;Littoral;5" if cmforetkey=="Nkongsamba III;Moungo;Littoral;209"
replace ikeya="Nkoteng;603;14;Haute Sanaga;6;Centre;2" if cmforetkey=="Nkoteng;Haute-Sanaga;Centre;275"
replace ikeya="Ntui;902;26;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Ntui;Mbam-et-Kim;Centre;152"
replace ikeya="Nwa;3604;121;Donga Mantung;36;Nord Ouest;7" if cmforetkey=="Nwa;Donga-Mantung;Nord-Ouest;61"
replace ikeya="Obala;703;17;LekiÃ©;7;Centre;2" if cmforetkey=="Obala;LekiÃ©;Centre;161"
replace ikeya="Okola;705;18;LekiÃ©;7;Centre;2" if cmforetkey=="Okola;LekiÃ©;Centre;172"
replace ikeya="Olamze;5202;168;VallÃ©e du Ntem;52;Sud;9" if cmforetkey=="OlamzÃ©;VallÃ©e-Du-Ntem;Sud;14"
replace ikeya="Ombessa;804;24;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Ombessa;Mbam-et-Inoubou;Centre;146"
replace ikeya="Other districts in Bouba and Ngoko Department;1699;47;Boumba et Ngoko;16;Est;3" if cmforetkey=="Gari-Gombo;Boumba-et-Ngoko;Est;279"
replace ikeya="Other districts in Bouba and Ngoko Department;1699;47;Boumba et Ngoko;16;Est;3" if cmforetkey=="Moloundou;Boumba-et-Ngoko;Est;290"
replace ikeya="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9" if cmforetkey=="Bengbis;Dja-et-Lobo;Sud;282"
replace ikeya="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9" if cmforetkey=="Meyomessala;Dja-et-Lobo;Sud;286"
replace ikeya="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9" if cmforetkey=="Meyomessi;Dja-et-Lobo;Sud;274"
replace ikeya="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9" if cmforetkey=="Mintom;Dja-et-Lobo;Sud;289"
replace ikeya="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9" if cmforetkey=="Oveng;Dja-et-Lobo;Sud;291"
replace ikeya="Other districts in Dja and Lobo Department;4999;160;Dja et Lobo;49;Sud;9" if cmforetkey=="ZoÃ©tÃ©lÃ©;Dja-et-Lobo;Sud;199"
replace ikeya="Other districts in Fare et Deo Department;209;5;Faro et Deo;2;Adamoua;1" if cmforetkey=="Mayo-BalÃ©o;Faro-et-DÃ©o;Adamaoua;266"
replace ikeya="Other districts in Haut Nkam Department;4299;141;Haut Nkam;42;Ouest;8" if cmforetkey=="Bakou;Haut-Nkam;Ouest;134"
replace ikeya="Other districts in Haut Nkam Department;4299;141;Haut Nkam;42;Ouest;8" if cmforetkey=="Bana;Haut-Nkam;Ouest;130"
replace ikeya="Other districts in Haut Nkam Department;4299;141;Haut Nkam;42;Ouest;8" if cmforetkey=="Banka;Haut-Nkam;Ouest;221"
replace ikeya="Other districts in Haut Nyong Department;1799;52;Haut Nyong;17;Est;3" if cmforetkey=="Ngoila;Haut-Nyong;Est;288"
replace ikeya="Other districts in Haut Nyong Department;1799;52;Haut Nyong;17;Est;3" if cmforetkey=="Nguelemendouka;Haut-Nyong;Est;48"
replace ikeya="Other districts in Haute Sanaga Department;609;15;Haute Sanaga;6;Centre;2" if cmforetkey=="Minta;Haute-Sanaga;Centre;44"
replace ikeya="Other districts in LekiÃ© Department;709;20;LekiÃ©;7;Centre;2" if cmforetkey=="Ebebda;LekiÃ©;Centre;158"
replace ikeya="Other districts in LekiÃ© Department;709;20;LekiÃ©;7;Centre;2" if cmforetkey=="Elig-Mfomo;LekiÃ©;Centre;165"
replace ikeya="Other districts in LekiÃ© Department;709;20;LekiÃ©;7;Centre;2" if cmforetkey=="Evodoula;LekiÃ©;Centre;169"
replace ikeya="Other districts in Logone and Chari Department;2199;70;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="HilÃ© - Halifa;Logone-et-Chari;ExtrÃªme-Nord;23"
replace ikeya="Other districts in Logone and Chari Department;2199;70;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Logone Birni;Logone-et-Chari;ExtrÃªme-Nord;27"
replace ikeya="Other districts in Logone and Chari Department;2199;70;Logone et Chari;21;ExtrÃ¨me Nord;4" if cmforetkey=="Waza;Logone-et-Chari;ExtrÃªme-Nord;28"
replace ikeya="Other Districts in Lom and Djerem Department;1999;60;Lom et Djerem;19;Est;3" if cmforetkey=="Diang;Lom-et-DjÃ©rem;Est;46"
replace ikeya="Other Districts in Lom and Djerem Department;1999;60;Lom et Djerem;19;Est;3" if cmforetkey=="Garoua-Boulai;Lom-et-DjÃ©rem;Est;40"
replace ikeya="Other Districts in Lom and Djerem Department;1999;60;Lom et Djerem;19;Est;3" if cmforetkey=="Mandjou;Lom-et-DjÃ©rem;Est;53"
replace ikeya="Other districts in Mayo Banyo Department;399;7;Adamaoua;60;Nord;6" if cmforetkey=="Bankim;Mayo-Banyo;Adamaoua;68"
replace ikeya="Other districts in Mayo Banyo Department;399;7;Adamaoua;60;Nord;6" if cmforetkey=="Banyo;Mayo-Banyo;Adamaoua;57"
replace ikeya="Other districts in Mayo Banyo Department;399;7;Mayo Banyo;3;Adamoua;1" if cmforetkey=="Banyo;Mayo-Banyo;Adamaoua;57"
replace ikeya="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Deuk;Mbam-et-Inoubou;Centre;128"
replace ikeya="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Kiiki;Mbam-et-Inoubou;Centre;207"
replace ikeya="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Kon-Yambetta;Mbam-et-Inoubou;Centre;206"
replace ikeya="Other districts in Mbam and Inoubou Department;899;25;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Ndikinimeki;Mbam-et-Inoubou;Centre;143"
replace ikeya="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Mbangassina;Mbam-et-Kim;Centre;150"
replace ikeya="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2" if cmforetkey=="NgambÃ©-Tikar;Mbam-et-Kim;Centre;85"
replace ikeya="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Ngoro;Mbam-et-Kim;Centre;121"
replace ikeya="Other districts in Mbam and Kim Department;999;27;Mbam et Inoubou;8;Centre;2" if cmforetkey=="Yoko;Mbam-et-Kim;Centre;39"
replace ikeya="Other districts in Mbere Department;409;10;Mbere;4;Adamoua;1" if cmforetkey=="Dir;MbÃ©rÃ©;Adamaoua;38"
replace ikeya="Other districts in Mbere Department;409;10;Mbere;4;Adamoua;1" if cmforetkey=="Djohong;MbÃ©rÃ©;Adamaoua;301"
replace ikeya="Other districts in Mefou and Afamba Department;1099;30;Mefou et Afamba;10;Centre;2" if cmforetkey=="AwaÃ©;MÃ©fou-et-Afamba;Centre;173"
replace ikeya="Other districts in Mefou and Afamba Department;1099;30;Mefou et Afamba;10;Centre;2" if cmforetkey=="Esse;MÃ©fou-et-Afamba;Centre;163"
replace ikeya="Other districts in Momo Department;3999;131;Momo;39;Nord Ouest;7" if cmforetkey=="Ngie;Momo;Nord-Ouest;87"
replace ikeya="Other districts in Momo Department;3999;131;Momo;39;Nord Ouest;7" if cmforetkey=="Njikwa;Momo;Nord-Ouest;77"
replace ikeya="Other districts in Momo Department;3999;131;Momo;39;Nord Ouest;7" if cmforetkey=="Widikum-Menka;Momo;Nord-Ouest;84"
replace ikeya="Other districts in Nde Department;4799;151;Nde;47;Ouest;8" if cmforetkey=="Bazou;NdÃ©;Ouest;131"
replace ikeya="Other districts in Nde Department;4799;151;Nde;47;Ouest;8" if cmforetkey=="Tonga;NdÃ©;Ouest;137"
replace ikeya="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10" if cmforetkey=="Idabato;Ndian;Sud-Ouest;2"
replace ikeya="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10" if cmforetkey=="Isangele;Ndian;Sud-Ouest;142"
replace ikeya="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10" if cmforetkey=="Kombo Abedimo;Ndian;Sud-Ouest;154"
replace ikeya="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10" if cmforetkey=="Kombo-Itindi;Ndian;Sud-Ouest;144"
replace ikeya="Other districts in Ndian Department;5899;184;Ndian;58;Sud Ouest;10" if cmforetkey=="Mundemba;Ndian;Sud-Ouest;116"
replace ikeya="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2" if cmforetkey=="Bot-Makak;Nyong-et-KellÃ©;Centre;168"
replace ikeya="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2" if cmforetkey=="Dibang;Nyong-et-KellÃ©;Centre;174"
replace ikeya="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2" if cmforetkey=="Matomb;Nyong-et-KellÃ©;Centre;180"
replace ikeya="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2" if cmforetkey=="Messondo;Nyong-et-KellÃ©;Centre;187"
replace ikeya="Other districts in Nyong and Kelle Department;1399;39;Nyong et Kelle;13;Centre;2" if cmforetkey=="Ngog-Mapubi;Nyong-et-KellÃ©;Centre;178"
replace ikeya="Other districts in Nyong and Mfoumou Department;1499;42;Nyong et Mfoumou;14;Centre;2" if cmforetkey=="Endom;Nyong-et-Mfoumou;Centre;283"
replace ikeya="Other districts in Nyong and So'o Department;1599;44;Nyong et So'o;15;Centre;2" if cmforetkey=="Dzeng;Nyong-et-So'o;Centre;190"
replace ikeya="Other districts in Nyong and So'o Department;1599;44;Nyong et So'o;15;Centre;2" if cmforetkey=="Ngomedzap;Nyong-et-So'o;Centre;201"
replace ikeya="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9" if cmforetkey=="Akom II;OcÃ©an;Sud;8"
replace ikeya="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9" if cmforetkey=="Bipindi;OcÃ©an;Sud;5"
replace ikeya="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9" if cmforetkey=="Campo;OcÃ©an;Sud;13"
replace ikeya="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9" if cmforetkey=="Lokoundje;OcÃ©an;Sud;19"
replace ikeya="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9" if cmforetkey=="Lolodorf;OcÃ©an;Sud;200"
replace ikeya="Other districts in OcÃ©an Department;5199;166;OcÃ©an;51;Sud;9" if cmforetkey=="MvenguÃ©;OcÃ©an;Sud;6"
replace ikeya="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5" if cmforetkey=="Dibamba;Sanaga-Maritime;Littoral;213"
replace ikeya="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5" if cmforetkey=="Mouanko;Sanaga-Maritime;Littoral;191"
replace ikeya="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5" if cmforetkey=="Ndom;Sanaga-Maritime;Littoral;1"
replace ikeya="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5" if cmforetkey=="Ngwei;Sanaga-Maritime;Littoral;215"
replace ikeya="Other districts in Sanaga Maritime Department;2899;98;Sanaga Maritime;28;Littoral;5" if cmforetkey=="Pouma;Sanaga-Maritime;Littoral;175"
replace ikeya="Penka-Michel;4503;146;Menoua;45;Ouest;8" if cmforetkey=="Penka-Michel;Menoua;Ouest;111"
replace ikeya="Poli;3102;108;Benoue;30;Nord;6" if cmforetkey=="Poli;Faro;Nord;263"
replace ikeya="Poli;3102;108;Faro;31;Nord;6" if cmforetkey=="Poli;Faro;Nord;263"
replace ikeya="Rey-Bouba;3301;112;Mayo Rey;33;Nord;6" if cmforetkey=="Rey-Bouba;Mayo-Rey;Nord;260"
replace ikeya="Saa;707;19;LekiÃ©;7;Centre;2" if cmforetkey=="Sa'a;LekiÃ©;Centre;4"
replace ikeya="Sangmelima;4903;159;Dja et Lobo;49;Sud;9" if cmforetkey=="Sangmelima;Dja-et-Lobo;Sud;17"
replace ikeya="Santchou;4504;147;Menoua;45;Ouest;8" if cmforetkey=="Santchou;Menoua;Ouest;117"
replace ikeya="Soa;1002;29;Mefou et Afamba;10;Centre;2" if cmforetkey=="Soa;MÃ©fou-et-Afamba;Centre;171"
replace ikeya="TchollirÃ©;3302;113;Mayo Rey;33;Nord;6" if cmforetkey=="TchollirÃ©;Mayo-Rey;Nord;264"
replace ikeya="Tchollire or Rey-Bouba;3305;115;Benoue;30;Nord;6" if cmforetkey=="TchollirÃ©;Mayo-Rey;Nord;264"
replace ikeya="Tibati;102;2;Adamaoua;60;Nord;6" if cmforetkey=="Tibati;DjÃ©rem;Adamaoua;271"
replace ikeya="Tibati;102;2;Djerem;1;Adamoua;1" if cmforetkey=="Tibati;DjÃ©rem;Adamaoua;271"
replace ikeya="Tignere;202;4;Adamaoua;60;Nord;6" if cmforetkey=="Galim-TignÃ¨re;Faro-et-DÃ©o;Adamaoua;270"
replace ikeya="Tignere;202;4;Faro et Deo;2;Adamoua;1" if cmforetkey=="TignÃ¨re;Faro-et-DÃ©o;Adamaoua;268"
replace ikeya="Tiko;5304;172;Fako;53;Sud Ouest;10" if cmforetkey=="Tiko;Fako;Sud-Ouest;167"
replace ikeya="Tokombere;2403;83;Mayo Sava;24;ExtrÃ¨me Nord;4" if cmforetkey=="TokombÃ©rÃ©;Mayo-Sava;ExtrÃªme-Nord;236"
replace ikeya="Touboro;3304;114;Mayo Rey;33;Nord;6" if cmforetkey=="Touboro;Mayo-Rey;Nord;265"
replace ikeya="Tubah;3805;128;Mezam;38;Nord Ouest;7" if cmforetkey=="Tubah;Mezam;Nord-Ouest;82"
replace ikeya="Wina;2210;75;Mayo Danay;22;ExtrÃ¨me Nord;4" if cmforetkey=="Wina;Mayo-Danay;ExtrÃªme-Nord;253"
replace ikeya="Wum;3703;124;Menchum;37;Nord Ouest;7" if cmforetkey=="Wum;Menchum;Nord-Ouest;70"
replace ikeya="Yagoua;2211;76;Mayo Danay;22;ExtrÃ¨me Nord;4" if cmforetkey=="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34"
replace ikeya="Yagoua;2211;76;Mayo Danay;22;Nord;6" if cmforetkey=="Yagoua;Mayo-Danay;ExtrÃªme-Nord;34"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© I;Mfoundi;Centre;181"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© II;Mfoundi;Centre;16"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© III;Mfoundi;Centre;184"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© IV;Mfoundi;Centre;188"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© V;Mfoundi;Centre;182"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© VI;Mfoundi;Centre;185"
replace ikeya="Yaounde I;1201;33;Mfoundi;12;Centre;2" if cmforetkey=="YaoundÃ© VII;Mfoundi;Centre;148"
replace ikeya="Yokadouma;1601;45;Boumba et Ngoko;16;Est;3" if cmforetkey=="Yokadouma;Boumba-et-Ngoko;Est;284"

collapse (mean) tri wdist, by(ikeya)
ren ikey bob
split bob, p(;)
gen ikeya=bob1+";"+bob2+";"+bob4+";"+bob5+";"+bob6+";"+bob7
drop bob1 bob2 bob3 bob4 bob5 bob6 bob7 bob
ren tri rug

save "S:\CM Data\arronIV.dta", replace
