## IFR/CFR odhad umrti
IFR z prace Levin et. al (2020) doi: 10.1007/s10654-020-00698-1

**IFR(age) = 10^(-3.27 + 0.0524 x age)/100**

nafitovano a pouzito jako odhad pro CFR na datove rady z MZ/UZIS pro ruzne vekove kategorie do 16.2.2021
```
cfr_wt(x) = (x<=29 ? IFR(x)*.8 : x<=39 ? IFR(x) : x<=49 ? IFR(x)*.7: x<=59 ? IFR(x)*.85 : x<=69 ? IFR(x)*1.6 : x<=79 ? IFR(x)*1.95 : x<=89 ? IFR(x)*1.25 : IFR(x)*.52)
```
t.j. 'rucni optimalizaci & optickou konvergenci' sem dostal nasledujici koeficienty:<br>
*vek      koeficient*<br>
0-29     .8<br>
30-39    1.<br>
40-49    .7<br>
50-59    .85<br>
60-69    1.6<br>
70-79    1.95<br>
80-89    1.25<br>
90+      .52<br>
<br>
od poloviny unora odhad prestava sledovat hlasene umrti, jedna z hypotez je prevladnuti mutace B.1.1.7?
modifikovana CFR od 16.2.2021 (prenasobeno koeficientem zohlednujicim zvysene umrti vzhledem k incidenci)
```
cfr_B7(x) = (x<=29 ? db(x)*.8*1.35 : x<=39 ? db(x)*1.3 : x<=49 ? db(x)*.7*1.7: x<=59 ? db(x)*.85*1.7 : x<=69 ? db(x)*1.6*1.428 : x<=79 ? db(x)*1.95*1.3 : x<=89 ? db(x)*1.25*1.3 : db(x)*.52*1.5)
```
druha sada koeficientu:<br>
*vek      koeficient  celkovy koef. pro puvodni IFR*<br>
0-29     1.35        1.08<br>
30-39    1.3         1.3<br>
40-49    1.7         1.19<br>
50-59    1.7         1.445<br>
60-69    1.428       2.2848<br>
70-79    1.3         2.535<br>
80-89    1.3         1.625<br>
90+      1.5         .78<br>
<br>
pocet umrti denne pro dany vek *A* v case *T* (pocet dni od zacatku 2020) je tedy odhadnut jako
```
D(A,T) = INC(A,T-7)*CFR(A,T-7)
```
*INC(A,T)* je incidence pro vek *A* v case *T* (data z MZ/UZIS)
*CRF(A,T)* je case fatality ratio pro vek *A* v case *T* tj
```
CFR(A,T) = cfr_wt(A) pro 0<T<411
CFR(A,T) = cfr_B7(A) pro T>411
```
vykresy s porovnanim hlasenych / odhadnutych na zaklade nafitovane CFR umrti<br>
*pocet umrti/den 7denni prumer / pocet umrti/den / kumulativni pocty umrti*<br>
<br>
#vekova kategorie 0-29<br>
<img src="./ad0_29.png" width="256"/>
<img src="./d0_29.png" width="256"/>
<img src="./d0_29c.png" width="256"/>
<br>
#vekova kategorie 30-39<br>
<img src="./ad30_39.png" width="256"/>
<img src="./d30_39.png" width="256"/>
<img src="./d30_39c.png" width="256"/>
<br>
#vekova kategorie 40-49<br>
<img src="./ad40_49.png" width="256"/>
<img src="./d40_49.png" width="256"/>
<img src="./d40_49c.png" width="256"/>
<br>
#vekova kategorie 50-59<br>
<img src="./ad50_59.png" width="256"/>
<img src="./d50_59.png" width="256"/>
<img src="./d50_59c.png" width="256"/>
<br>
#vekova kategorie 60-69<br>
<img src="./ad60_69.png" width="256"/>
<img src="./d60_69.png" width="256"/>
<img src="./d60_69c.png" width="256"/>
<br>
#vekova kategorie 70-79<br>
<img src="./ad70_79.png" width="256"/>
<img src="./d70_79.png" width="256"/>
<img src="./d70_79c.png" width="256"/>
<br>
#vekova kategorie 80-89<br>
<img src="./ad80_89.png" width="256"/>
<img src="./d80_89.png" width="256"/>
<img src="./d80_89c.png" width="256"/>
<br>
#vekova kategorie 90+<br>
<img src="./ad90.png" width="256"/>
<img src="./d90.png" width="256"/>
<img src="./d90c.png" width="256"/>
<br>
#celkove<br>
<img src="./ad_all.png" width="256"/>
<img src="./d_all.png" width="256"/>
<img src="./dallc.png" width="256"/>
<br>
