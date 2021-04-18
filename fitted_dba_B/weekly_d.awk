BEGIN {
for (j=1; j <=500; j++)
   SW[j]=0
}
{
if ($1 > 0) {
   SW[$1]=$2;
#   print $1,k,SW[$1],$2
   k = $1
}
}
END {
   for (j=1; j<=k; j+=7)
      print j+6,SW[j]+SW[j+1]+SW[j+2]+SW[j+3]+SW[j+4]+SW[j+5]+SW[j+6];
}
