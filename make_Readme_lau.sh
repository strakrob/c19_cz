#!/bin/bash
lauList=("CZ0100" "CZ0201" "CZ0202" "CZ0203" "CZ0204" "CZ0205" "CZ0206" "CZ0207" "CZ0208" "CZ0209" "CZ020A" "CZ020B" "CZ020C" "CZ0311" "CZ0312" "CZ0313" "CZ0314" "CZ0315" "CZ0316" "CZ0317" "CZ0321" "CZ0322" "CZ0323" "CZ0324" "CZ0325" "CZ0326" "CZ0327" "CZ0411" "CZ0412" "CZ0413" "CZ0421" "CZ0422" "CZ0423" "CZ0424" "CZ0425" "CZ0426" "CZ0427" "CZ0511" "CZ0512" "CZ0513" "CZ0514" "CZ0521" "CZ0522" "CZ0523" "CZ0524" "CZ0525" "CZ0531" "CZ0532" "CZ0533" "CZ0534" "CZ0631" "CZ0632" "CZ0633" "CZ0634" "CZ0635" "CZ0641" "CZ0642" "CZ0643" "CZ0644" "CZ0645" "CZ0646" "CZ0647" "CZ0711" "CZ0712" "CZ0713" "CZ0714" "CZ0715" "CZ0721" "CZ0722" "CZ0723" "CZ0724" "CZ0801" "CZ0802" "CZ0803" "CZ0804" "CZ0805" "CZ0806")
lauNames=("Praha" "Benesov" "Beroun" "Kladno" "Kolin" "Kutna Hora" "Melnik" "Mlada Boleslav" "Nymburk" "Praha-vychod" "Praha-zapad" "Pribram" "Rakovnik" "Ceske Budejovice" "Cesky Krumlov" "Jindrichuv Hradec" "Pisek" "Prachatice" "Strakonice" "Tabor" "Domazlice" "Klatovy" "Plzen-mesto" "Plzen-jih" "Plzen-sever" "Rokycany" "Tachov" "Cheb" "Karlovy Vary" "Sokolov" "Decin" "Chomutov" "Litomerice" "Louny" "Most" "Teplice" "Usti nad Labem" "Ceska Lipa" "Jablonec nad Nisou" "Liberec" "Semily" "Hradec Kralove" "Jicin" "Nachod" "Rychnov nad Kneznou" "Trutnov" "Chrudim" "Pardubice" "Svitavy" "Usti nad Orlici" "Havlickuv Brod" "Jihlava" "Pelhrimov" "Trebic" "Zdar nad Sazavou" "Blansko" "Brno-mesto" "Brno-venkov" "Breclav" "Hodonin" "Vyskov" "Znojmo" "Jesenik" "Olomouc" "Prostejov" "Prerov" "Sumperk" "Kromeriz" "Uherske Hradiste" "Vsetin" "Zlin" "Bruntal" "Frydek-Mistek" "Karvina" "Novy Jicin" "Opava" "Ostrava-mesto")
lauNamesShort=("Praha" "Benesov" "Beroun" "Kladno" "Kolin" "KutnaHora" "Melnik" "MladaBoleslav" "Nymburk" "Prahavychod" "Prahazapad" "Pribram" "Rakovnik" "CeskeBudejovice" "CeskyKrumlov" "JindrichuvHradec" "Pisek" "Prachatice" "Strakonice" "Tabor" "Domazlice" "Klatovy" "Plzenmesto" "Plzenjih" "Plzensever" "Rokycany" "Tachov" "Cheb" "KarlovyVary" "Sokolov" "Decin" "Chomutov" "Litomerice" "Louny" "Most" "Teplice" "UstinadLabem" "CeskaLipa" "JablonecnadNisou" "Liberec" "Semily" "HradecKralove" "Jicin" "Nachod" "RychnovnadKneznou" "Trutnov" "Chrudim" "Pardubice" "Svitavy" "UstinadOrlici" "HavlickuvBrod" "Jihlava" "Pelhrimov" "Trebic" "ZdarnadSazavou" "Blansko" "Brnomesto" "Brnovenkov" "Breclav" "Hodonin" "Vyskov" "Znojmo" "Jesenik" "Olomouc" "Prostejov" "Prerov" "Sumperk" "Kromeriz" "UherskeHradiste" "Vsetin" "Zlin" "Bruntal" "FrydekMistek" "Karvina" "NovyJicin" "Opava" "Ostravamesto")
for lau in ${lauList[@]}
do
   for i in "${!lauList[@]}"; do
      if [[ "${lauList[$i]}" = "${lau}" ]]; then
          laun=${lauNames[i]};
          launs=${lauNamesShort[i]};
      fi
   done

   echo $lau,$laun,$launs
   echo "## GNUplot output" > ./figs-lau/$launs/README.md
   cat <<EOF >> ./figs-lau/$launs/README.md
<br>
<em>$laun</em><br>
<img src="./${lau}.png" width="1024"/><br>
<img src="./${lau}d.png" width="1024"/><br>
<img src="./a${lau}.png" width="1024"/><br>
<img src="./a${lau}d.png" width="1024"/><br>
<img src="./${lau}hist.png" width="1024"/>
EOF
done
