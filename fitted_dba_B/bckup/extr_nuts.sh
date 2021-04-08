#!/bin/bash
#nuts codes and names lists
nutsList=("CZ010" "CZ020" "CZ031" "CZ032" "CZ041" "CZ042" "CZ051" "CZ052" "CZ053" "CZ063" "CZ064" "CZ071" "CZ072" "CZ080")
nutsNames=("Praha" "Stredocesky" "Jihocesky" "Plzensky" "Karlovarsky" "Ustecky" "Liberecky" "Kralovehradecky" "Pardubicky" "Vysocina" "Jihomoravsky" "Olomoucky" "Zlinsky" "Moravskoslezsky")
basedir="$PWD"

#extract data for nuts to apropriate files, compute differences, averages and plot them
for nuts in ${nutsList[@]}
do
   for i in "${!nutsList[@]}"; do
      if [[ "${nutsList[$i]}" = "${nuts}" ]]; then
#          echo "${nutsNames[i]}";
          nutsn=${nutsNames[i]};
      fi
   done

   echo $nuts,$nutsn
#   mkdir -p ./nuts/$nutsn;
#   grep $nuts ./../umrti.csv > ./nuts/$nutsn/umrti.csv
#   grep $nuts ./../osoby.csv > ./nuts/$nutsn/osoby.csv
#   grep $nuts ./../vacc.csv > ./nuts/$nutsn/vacc.tmp
#   grep -v 'neza' ./nuts/$nutsn/vacc.tmp > ./nuts/$nutsn/vacc.csv
#   rm -f ./nuts/$nutsn/vacc.tmp

   cp $basedir/nuts/cfr_mb.plg $basedir/nuts/$nutsn/
   cp $basedir/nuts/extract.plg $basedir/nuts/$nutsn/
   cp $basedir/nuts/f_cumul.plg $basedir/nuts/$nutsn/
   cp $basedir/nuts/ifr_m.plg $basedir/nuts/$nutsn/
   cp $basedir/nuts/extract_v.plg $basedir/nuts/$nutsn/

   cd $basedir/nuts/$nutsn
#   gnuplot extract.plg
#   gnuplot extract_v.plg
   gnuplot ifr_m.plg
   gnuplot f_cumul.plg
   gnuplot cfr_mb.plg
   cd $basedir
done
