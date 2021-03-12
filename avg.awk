BEGIN {
    m=int((n+1)/2)
}
{
L1[NR]=$2; sum1+=$2;
L2[NR]=$3; sum2+=$3;
L3[NR]=$4; sum3+=$4;
L4[NR]=$5; sum4+=$5;
L5[NR]=$6; sum5+=$6;
L6[NR]=$7; sum6+=$7;
L7[NR]=$8; sum7+=$8;
L8[NR]=$9; sum8+=$9;
L9[NR]=$10; sum9+=$10;
L10[NR]=$11; sum10+=$11;
L11[NR]=$12; sum11+=$12;
L12[NR]=$13; sum12+=$13;
}
NR>=m {d[++i]=$1}
NR>n {
   sum1-=L1[NR-n];
   sum2-=L2[NR-n];
   sum3-=L3[NR-n];
   sum4-=L4[NR-n];
   sum5-=L5[NR-n];
   sum6-=L6[NR-n];
   sum7-=L7[NR-n];
   sum8-=L8[NR-n]
   sum9-=L9[NR-n]
   sum10-=L10[NR-n]
   sum11-=L11[NR-n]
   sum12-=L12[NR-n]
}
NR>=n{
    k+=1
    a1[k]=sum1/n;
    a2[k]=sum2/n;
    a3[k]=sum3/n;
    a4[k]=sum4/n;
    a5[k]=sum5/n;
    a6[k]=sum6/n;
    a7[k]=sum7/n;
    a8[k]=sum8/n;
    a9[k]=sum9/n;
    a10[k]=sum10/n;
    a11[k]=sum11/n;
    a12[k]=sum12/n;
}
END {
    for (j=1; j<=k; j++)
        print d[j],a1[j],a2[j],a3[j],a4[j],a5[j],a6[j],a7[j],a8[j],a9[j],a10[j],a11[j],a12[j]
}
