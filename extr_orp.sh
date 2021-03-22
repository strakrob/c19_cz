#!/bin/bash
#orp codes and names lists
orpList=(0 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 2024 2025 2026 3101 3102 3103 3104 3105 3106 3107 3108 3109 3110 3111 3112 3113 3114 3115 3116 3117 3201 3202 3203 3204 3205 3206 3207 3208 3209 3210 3211 3212 3213 3214 3215 4101 4102 4103 4104 4105 4106 4107 4201 4202 4203 4204 4205 4206 4207 4208 4209 4210 4211 4212 4213 4214 4215 4216 5101 5102 5103 5104 5105 5106 5107 5108 5109 5110 5201 5202 5203 5204 5205 5206 5207 5208 5209 5210 5211 5212 5213 5214 5215 5301 5302 5303 5304 5305 5306 5307 5308 5309 5310 5311 5312 5313 5314 5315 6301 6302 6303 6304 6305 6306 6307 6308 6309 6310 6311 6312 6313 6314 6315 6401 6402 6403 6404 6405 6406 6407 6408 6409 6410 6411 6412 6413 6414 6415 6416 6417 6418 6419 6420 6421 7101 7102 7103 7104 7105 7106 7107 7108 7109 7110 7111 7112 7113 7201 7202 7203 7204 7205 7206 7207 7208 7209 7210 7211 7212 7213 8001 8002 8003 8004 8005 8006 8007 8008 8009 8010 8011 8012 8013 8014 8015 8016 8017 8018 8019 8020 8021 8022)
orpNames=("Praha" "Benesov" "Beroun" "Brandys n.L.-S.Boleslav" "Caslav" "Cernosice" "Cesky Brod" "Dobris" "Horovice" "Kladno" "Kolin" "Kralupy nad Vltavou" "Kutna Hora" "Lysa nad Labem" "Melnik" "Mlada Boleslav" "Mnichovo Hradiste" "Neratovice" "Nymburk" "Podebrady" "Pribram" "Rakovnik" "Ricany" "Sedlcany" "Slany" "Vlasim" "Votice" "Blatna" "Ceske Budejovice" "Cesky Krumlov" "Dacice" "Jindrichuv Hradec" "Kaplice" "Milevsko" "Pisek" "Prachatice" "Sobeslav" "Strakonice" "Tabor" "Trhove Sviny" "Trebon" "Tyn nad Vltavou" "Vimperk" "Vodnany" "Blovice" "Domazlice" "Horazdovice" "Horsovsky Tyn" "Klatovy" "Kralovice" "Nepomuk" "Nyrany" "Plzen" "Prestice" "Rokycany" "Stod" "Stribro" "Susice" "Tachov" "As" "Cheb" "Karlovy Vary" "Kraslice" "Marianske Lazne" "Ostrov" "Sokolov" "Bilina" "Decin" "Chomutov" "Kadan" "Litomerice" "Litvinov" "Louny" "Lovosice" "Most" "Podborany" "Roudnice nad Labem" "Rumburk" "Teplice" "Usti nad Labem" "Varnsdorf" "Zatec" "Ceska Lipa" "Frydlant" "Jablonec nad Nisou" "Jilemnice" "Liberec" "Novy Bor" "Semily" "Tanvald" "Turnov" "Zelezny Brod" "Broumov" "Dobruska" "Dvur Kralove nad Labem" "Horice" "Hradec Kralove" "Jaromer" "Jicin" "Kostelec nad Orlici" "Nachod" "Nova Paka" "Nove Mesto nad Metuji" "Novy Bydzov" "Rychnov nad Kneznou" "Trutnov" "Vrchlabi" "Ceska Trebova" "Hlinsko" "Holice" "Chrudim" "Kraliky" "Lanskroun" "Litomysl" "Moravska Trebova" "Pardubice" "Policka" "Prelouc" "Svitavy" "Usti nad Orlici" "Vysoke Myto" "Zamberk" "Bystrice n.Pernstejnem" "Havlickuv Brod" "Humpolec" "Chotebor" "Jihlava" "Moravske Budejovice" "Namest nad Oslavou" "Nove Mesto na Morave" "Pacov" "Pelhrimov" "Svetla nad Sazavou" "Telc" "Trebic" "Velke Mezirici" "Zdar nad Sazavou" "Blansko" "Boskovice" "Brno" "Breclav" "Bucovice" "Hodonin" "Hustopece" "Ivancice" "Kurim" "Kyjov" "Mikulov" "Moravsky Krumlov" "Pohorelice" "Rosice" "Slavkov u Brna" "Slapanice" "Tisnov" "Veseli nad Moravou" "Vyskov" "Znojmo" "Zidlochovice" "Hranice" "Jesenik" "Konice" "Lipnik nad Becvou" "Litovel" "Mohelnice" "Olomouc" "Prostejov" "Prerov" "Sternberk" "Sumperk" "Unicov" "Zabreh" "Bystrice pod Hostynem" "Holesov" "Kromeriz" "Luhacovice" "Otrokovice" "Roznov pod Radhostem" "Uherske Hradiste" "Uhersky Brod" "Valasske Klobouky" "Valasske Mezirici" "Vizovice" "Vsetin" "Zlin" "Bilovec" "Bohumin" "Bruntal" "Cesky Tesin" "Frenstat pod Radhostem" "Frydek-Mistek" "Frydlant nad Ostravici" "Havirov" "Hlucin" "Jablunkov" "Karvina" "Koprivnice" "Kravare" "Krnov" "Novy Jicin" "Odry" "Opava" "Orlova" "Ostrava" "Rymarov" "Trinec" "Vitkov")
orpNamesShort=("Praha" "Benesov" "Beroun" "BrandysnLSBoleslav" "Caslav" "Cernosice" "CeskyBrod" "Dobris" "Horovice" "Kladno" "Kolin" "KralupynadVltavou" "KutnaHora" "LysanadLabem" "Melnik" "MladaBoleslav" "MnichovoHradiste" "Neratovice" "Nymburk" "Podebrady" "Pribram" "Rakovnik" "Ricany" "Sedlcany" "Slany" "Vlasim" "Votice" "Blatna" "CeskeBudejovice" "CeskyKrumlov" "Dacice" "JindrichuvHradec" "Kaplice" "Milevsko" "Pisek" "Prachatice" "Sobeslav" "Strakonice" "Tabor" "TrhoveSviny" "Trebon" "TynnadVltavou" "Vimperk" "Vodnany" "Blovice" "Domazlice" "Horazdovice" "HorsovskyTyn" "Klatovy" "Kralovice" "Nepomuk" "Nyrany" "Plzen" "Prestice" "Rokycany" "Stod" "Stribro" "Susice" "Tachov" "As" "Cheb" "KarlovyVary" "Kraslice" "MarianskeLazne" "Ostrov" "Sokolov" "Bilina" "Decin" "Chomutov" "Kadan" "Litomerice" "Litvinov" "Louny" "Lovosice" "Most" "Podborany" "RoudnicenadLabem" "Rumburk" "Teplice" "UstinadLabem" "Varnsdorf" "Zatec" "CeskaLipa" "Frydlant" "JablonecnadNisou" "Jilemnice" "Liberec" "NovyBor" "Semily" "Tanvald" "Turnov" "ZeleznyBrod" "Broumov" "Dobruska" "DvurKralovenadLabem" "Horice" "HradecKralove" "Jaromer" "Jicin" "KostelecnadOrlici" "Nachod" "NovaPaka" "NoveMestonadMetuji" "NovyBydzov" "RychnovnadKneznou" "Trutnov" "Vrchlabi" "CeskaTrebova" "Hlinsko" "Holice" "Chrudim" "Kraliky" "Lanskroun" "Litomysl" "MoravskaTrebova" "Pardubice" "Policka" "Prelouc" "Svitavy" "UstinadOrlici" "VysokeMyto" "Zamberk" "BystricenadPernstejnem" "HavlickuvBrod" "Humpolec" "Chotebor" "Jihlava" "MoravskeBudejovice" "NamestnadOslavou" "NoveMestonaMorave" "Pacov" "Pelhrimov" "SvetlanadSazavou" "Telc" "Trebic" "VelkeMezirici" "ZdarnadSazavou" "Blansko" "Boskovice" "Brno" "Breclav" "Bucovice" "Hodonin" "Hustopece" "Ivancice" "Kurim" "Kyjov" "Mikulov" "MoravskyKrumlov" "Pohorelice" "Rosice" "SlavkovuBrna" "Slapanice" "Tisnov" "VeselinadMoravou" "Vyskov" "Znojmo" "Zidlochovice" "Hranice" "Jesenik" "Konice" "LipniknadBecvou" "Litovel" "Mohelnice" "Olomouc" "Prostejov" "Prerov" "Sternberk" "Sumperk" "Unicov" "Zabreh" "BystricepodHostynem" "Holesov" "Kromeriz" "Luhacovice" "Otrokovice" "RoznovpodRadhostem" "UherskeHradiste" "UherskyBrod" "ValasskeKlobouky" "ValasskeMezirici" "Vizovice" "Vsetin" "Zlin" "Bilovec" "Bohumin" "Bruntal" "CeskyTesin" "FrenstatpodRadhostem" "FrydekMistek" "FrydlantnadOstravici" "Havirov" "Hlucin" "Jablunkov" "Karvina" "Koprivnice" "Kravare" "Krnov" "NovyJicin" "Odry" "Opava" "Orlova" "Ostrava" "Rymarov" "Trinec" "Vitkov")
#get CSV data
wget -O orp.csv https://onemocneni-aktualne.mzcr.cz/api/v2/covid-19/orp.csv
wget -O osoby.csv https://onemocneni-aktualne.mzcr.cz/api/v2/covid-19/osoby.csv
#make incidence plots and histograms
gnuplot plotinc.plg

#extract data for orp to apropriate files, compute differences, averages and plot them
for orp in ${orpList[@]}
do
   for i in "${!orpList[@]}"; do
      if [[ "${orpList[$i]}" = "${orp}" ]]; then
#          echo "${orpNames[i]}";
          orpn=${orpNames[i]};
          orpns=${orpNamesShort[i]};
      fi
   done

   echo $orp,$orpn,$orpns
#   mkdir -p ./figs/orp/$orpns;

   awk -F, -v n=$orp -f extr_orp.awk orp.csv > ./extr/$orp.csv
   awk -f diff.awk ./extr/$orp.csv > ./extr/$orp.dif
   awk -f avg.awk -v n=7 ./extr/$orp.dif > ./extr/$orp.difa

#   gnuplot -e "ptitle='$orpn'" -e "fnameop='./figs/${orp}p.png'" -e "fnamep='./extr/$orp.dif'" -e "fnameon='./figs/${orp}dif.png" -e "fnameop65='./figs/${orp}p65.png" -e "fnameon65='./figs/${orp}dif65.png" -e "fnamenn='./figs/${orp}new.png'" -e "fnamenn65='./figs/${orp}new65.png'" plot.plg

#   gnuplot -e "ptitle='$orpn'" -e "fnameop='./figs/a${orp}p.png'" -e "fnamep='./extr/$orp.difa'" -e "fnameop65='./figs/a${orp}p65.png" -e "fnameon='./figs/a${orp}dif.png" -e "fnameon65='./figs/a${orp}dif65.png" -e "fnamenn='./figs/a${orp}new.png'" -e "fnamenn65='./figs/a${orp}new65.png'" plota.plg

   gnuplot -e "ptitle='$orpn'" -e "fnameop='./figs/$orpns/${orp}p.png'" -e "fnamep='./extr/$orp.dif'" -e "fnameon='./figs/$orpns/${orp}dif.png" -e "fnameop65='./figs/$orpns/${orp}p65.png" -e "fnameon65='./figs/$orpns/${orp}dif65.png" -e "fnamenn='./figs/$orpns/${orp}new.png'" -e "fnamenn65='./figs/$orpns/${orp}new65.png'" plot.plg

   gnuplot -e "ptitle='$orpn'" -e "fnameop='./figs/$orpns/a${orp}p.png'" -e "fnamep='./extr/$orp.difa'" -e "fnameop65='./figs/$orpns/a${orp}p65.png" -e "fnameon='./figs/$orpns/a${orp}dif.png" -e "fnameon65='./figs/$orpns/a${orp}dif65.png" -e "fnamenn='./figs/$orpns/a${orp}new.png'" -e "fnamenn65='./figs/$orpns/a${orp}new65.png'" plota.plg
done
