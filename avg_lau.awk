BEGIN {
    m=int((n+1)/2)
}
{
L1[NR]=$2; sum1+=$2;
L2[NR]=$3; sum2+=$3;
L3[NR]=$4; sum3+=$4;
}
NR>=m {d[++i]=$1}
NR>n {
   sum1-=L1[NR-n];
   sum2-=L2[NR-n];
   sum3-=L3[NR-n];
}
NR>=n{
    k+=1
    a1[k]=sum1/n;
    a2[k]=sum2/n;
    a3[k]=sum3/n;
}
END {
    for (j=1; j<=k; j++)
        print d[j],a1[j],a2[j],a3[j]
}
