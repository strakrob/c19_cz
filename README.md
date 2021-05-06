# c19_cz orp data extractor with gnuplot visualization
Few lame BASH & AWK & GNUPLOT scripts that extract ORP, LAU level and other data published by MZCR

## TL;DR - graphs are in ./figs & ./figs-lau directories and at the bottom of this README.md

**Data source**: https://onemocneni-aktualne.mzcr.cz/api/v2/covid-19/orp.csv

**Directories logic**:
```
./extr                              #extracted & processed data for each ORP
./extr/2001.csv                     #original data for Benesov
./extr/2001.dif                     #processed data for Benesov - first difference & daily new cases added
./extr/2001.difa                    #7-day average of dtto

./extr-lau                          #LAU level of data - cumsum of pozitive,recovered,deaths
./extr-lau/CZ0100.csv               #original data for CZ0100 LAU -> Prague
./extr-lau/CZ0100.dif               #1st difference of original data -> # of new poz./rec./deaths
./extr-lau/CZ0100.difa              #7-day average of dtto
./extr-lau/CZ0100d.csv              #dates and ages of deceased

./figs                              #figs. generated by gnuplot scripts, leading 'a' in the filename means averaged version
./figs/Benesov/2001dif.png          #1st difference of prevalence data
./figs/Benesov/2001dif65.png        #dtto but only for 65+, 75+ & hospitalizations data
./figs/Benesov/2001new.png          #daily new cases
./figs/Benesov/2001new65.png        #dtto but only for 65+, 75+ & hospitalization data
./figs/Benesov/2001p.png            #prevalence
./figs/Benesov/2001p65.png          #dtto but only for 65+, 75+ & hospitalization data

./figs-lau                          #figs. for LAUs
./figs-lau/Benesov/CZ0201.png       #new pozitive & new recovered
./figs-lau/Benesov/CZ0201d.png      #deaths
./figs-lau/Benesov/CZ0201hist.png   #histogram of all deaths for this LAU
```
## Selected restrictions (red), easings (blue) and outbreaks (black)
```
# restrictions
2020-03-11 Schools closed
2020-03-13 Borders closed
2020-03-14 Services closed
2020-03-15 Lockdown
2020-03-18 Masks
2020-09-01 Indoor masks excl. schools
2020-09-18 Univ. masks
2020-10-05 SoE
2020-10-08 Distance learning at univs. & secondary schools
2020-10-13 Anti-COVID measures
2020-10-20 Outdoor mask & partial lockdown
2020-11-18 Shops restrictions
2020-12-21 UK flights banned
2020-12-27 PES at 4. with exceptions
2021-02-11 Cheb, Sokolov and Trutnov isolated
2021-02-25 FFP2+ mandatory
2021-03-01 Lockdown

#easings
2020-05-17 End of SoE
2020-06-08 Restrictions lifting, borders opened
2020-09-01 Schools reopened
2020-11-18 Primary schools reopened
2020-12-03 PES at 3.

#outbreaks
2020-05-20 Karvina miners outbreak
2020-07-01 OKD outbreak
2020-07-23 Prague music club outbreak
2020-12-01 B.1.1.7 confirmed in December
2021-02-25 B.1.351 confirmed
```
## Time evolution of C-19 positively tested population
<img src="./incidence_hist_evol.png" width="1024"/><br>

## Prevalence divided among age groups
<img src="./prevalence_by_grp.png" width="1024"/><br>

## Time evolution of deaths by age groups
<img src="./deaths_by_grp.png" width="1024"/><br>

## Time evolution of deaths histograms
<img src="./death_hist_evol.png" width="1024"/><br>

## Up-to-date overall deaths histogram
<img src="./death_hist.png" width="1024"/><br>
## Histogram statistics
```


* FILE: 
  Records:           29425
  Out of range:          0
  Invalid:               0
  Column headers:        0
  Blank:                 0
  Data Blocks:           1

* COLUMNS:
  Mean:             296.1524               77.2941
  Std Dev:           64.1153               10.4935
  Sample StdDev:     64.1164               10.4936
  Skewness:          -0.8311               -0.7998
  Kurtosis:           4.7552                4.4681
  Avg Dev:           52.4512                8.1398
  Sum:           8.71428e+06           2.27438e+06
  Sum Sq.:       2.70172e+09           1.79036e+08

  Mean Err.:          0.3738                0.0612
  Std Dev Err.:       0.2643                0.0433
  Skewness Err.:      0.0143                0.0143
  Kurtosis Err.:      0.0286                0.0286

  Minimum:            0.0000 [    0]        0.0000 [28503]
  Maximum:          406.0000 [29424]      104.0000 [13208]
  Quartile:         244.0000               71.0000
  Median:           301.0000               78.0000
  Quartile:         349.0000               85.0000

  Linear Model:       y = -0.02176 x + 83.74
  Slope:              -0.02176 +- 0.0009457
  Intercept:          83.74 +- 0.2866
  Correlation:        r = -0.133
  Sum xy:             6.709e+08

iter      chisq       delta/lim  lambda   a             b             c             d            
   0 5.0715042816e+06   0.00e+00  3.25e+03    1.508380e-03   1.158730e+01   4.015430e+02   9.436430e-03
   1 1.0718164885e+06  -3.73e+05  3.25e+02    1.527756e-03   1.287627e+01   4.864865e+02   8.619827e-03
   * 1.4019281813e+06   2.35e+04  3.25e+03    2.053305e-03   1.105450e+01   5.678330e+02   9.446565e-03
   2 8.8675598132e+05  -2.09e+04  3.25e+02    1.549745e-03   1.306111e+01   5.002731e+02   8.548485e-03
   * 1.3689510974e+06   3.52e+04  3.25e+03    2.000243e-03   1.114754e+01   5.666695e+02   9.409145e-03
   3 8.7731622434e+05  -1.08e+03  3.25e+02    1.568815e-03   1.304098e+01   5.044180e+02   8.555147e-03
   * 1.3326471031e+06   3.42e+04  3.25e+03    1.996058e-03   1.114525e+01   5.675898e+02   9.418601e-03
   4 8.7265714337e+05  -5.34e+02  3.25e+02    1.586830e-03   1.298599e+01   5.067820e+02   8.577701e-03
   * 1.2857078732e+06   3.21e+04  3.25e+03    1.997104e-03   1.113588e+01   5.685986e+02   9.432540e-03
   5 8.6846173138e+05  -4.83e+02  3.25e+02    1.604032e-03   1.292719e+01   5.088067e+02   8.602564e-03
   * 1.2407327034e+06   3.00e+04  3.25e+03    1.998788e-03   1.112616e+01   5.695693e+02   9.446473e-03
   6 8.6459068289e+05  -4.48e+02  3.25e+02    1.620495e-03   1.286960e+01   5.107321e+02   8.627355e-03
   * 1.1997928138e+06   2.79e+04  3.25e+03    2.000492e-03   1.111689e+01   5.704906e+02   9.459754e-03
   7 8.6101121292e+05  -4.16e+02  3.25e+02    1.636265e-03   1.281394e+01   5.125990e+02   8.651669e-03
   * 1.1628742508e+06   2.60e+04  3.25e+03    2.002141e-03   1.110811e+01   5.713647e+02   9.472333e-03
   8 8.5769662724e+05  -3.86e+02  3.25e+02    1.651384e-03   1.276025e+01   5.144156e+02   8.675441e-03
   * 1.1296278207e+06   2.41e+04  3.25e+03    2.003727e-03   1.109978e+01   5.721952e+02   9.484256e-03
   9 8.5462333681e+05  -3.60e+02  3.25e+02    1.665889e-03   1.270846e+01   5.161845e+02   8.698669e-03
   * 1.0996833343e+06   2.23e+04  3.25e+03    2.005254e-03   1.109186e+01   5.729855e+02   9.495575e-03
  10 8.5177034499e+05  -3.35e+02  3.25e+02    1.679814e-03   1.265847e+01   5.179074e+02   8.721363e-03
   * 1.0727004826e+06   2.06e+04  3.25e+03    2.006725e-03   1.108428e+01   5.737389e+02   9.506341e-03
  11 8.4911888939e+05  -3.12e+02  3.25e+02    1.693190e-03   1.261021e+01   5.195856e+02   8.743531e-03
   * 1.0483737946e+06   1.90e+04  3.25e+03    2.008144e-03   1.107702e+01   5.744581e+02   9.516597e-03
  12 8.4665215018e+05  -2.91e+02  3.25e+02    1.706046e-03   1.256360e+01   5.212205e+02   8.765186e-03
   * 1.0264301582e+06   1.75e+04  3.25e+03    2.009511e-03   1.107004e+01   5.751457e+02   9.526385e-03
  13 8.4435500533e+05  -2.72e+02  3.25e+02    1.718409e-03   1.251855e+01   5.228135e+02   8.786337e-03
   * 1.0066254799e+06   1.61e+04  3.25e+03    2.010831e-03   1.106331e+01   5.758040e+02   9.535741e-03
  14 8.4221382310e+05  -2.54e+02  3.25e+02    1.730303e-03   1.247500e+01   5.243659e+02   8.806998e-03
   * 9.8874153830e+05   1.48e+04  3.25e+03    2.012105e-03   1.105681e+01   5.764350e+02   9.544697e-03
  15 8.4021628458e+05  -2.38e+02  3.25e+02    1.741752e-03   1.243289e+01   5.258788e+02   8.827178e-03
   * 9.7258316610e+05   1.36e+04  3.25e+03    2.013334e-03   1.105051e+01   5.770406e+02   9.553284e-03
  16 8.3835123152e+05  -2.22e+02  3.25e+02    1.752776e-03   1.239215e+01   5.273535e+02   8.846889e-03
   * 9.5797574494e+05   1.25e+04  3.25e+03    2.014521e-03   1.104440e+01   5.776227e+02   9.561528e-03
  17 8.3660853499e+05  -2.08e+02  3.25e+02    1.763397e-03   1.235272e+01   5.287910e+02   8.866142e-03
   * 9.4476298014e+05   1.14e+04  3.25e+03    2.015666e-03   1.103846e+01   5.781826e+02   9.569453e-03
  18 8.3497898170e+05  -1.95e+02  3.25e+02    1.773631e-03   1.231455e+01   5.301925e+02   8.884949e-03
   * 9.3280492257e+05   1.05e+04  3.25e+03    2.016771e-03   1.103267e+01   5.787220e+02   9.577082e-03
  19 8.3345417520e+05  -1.83e+02  3.25e+02    1.783498e-03   1.227759e+01   5.315591e+02   8.903320e-03
   * 9.2197620951e+05   9.60e+03  3.25e+03    2.017838e-03   1.102702e+01   5.792421e+02   9.584436e-03
  20 8.3202644967e+05  -1.72e+02  3.25e+02    1.793013e-03   1.224178e+01   5.328918e+02   8.921266e-03
   * 9.1216449930e+05   8.79e+03  3.25e+03    2.018867e-03   1.102150e+01   5.797441e+02   9.591532e-03
  21 8.3068879451e+05  -1.61e+02  3.25e+02    1.802192e-03   1.220708e+01   5.341915e+02   8.938798e-03
   * 9.0326907802e+05   8.04e+03  3.25e+03    2.019859e-03   1.101610e+01   5.802291e+02   9.598387e-03
  22 8.2943478804e+05  -1.51e+02  3.25e+02    1.811048e-03   1.217345e+01   5.354592e+02   8.955925e-03
   * 8.9519961844e+05   7.35e+03  3.25e+03    2.020816e-03   1.101081e+01   5.806982e+02   9.605018e-03
  23 8.2825853918e+05  -1.42e+02  3.25e+02    1.819597e-03   1.214083e+01   5.366960e+02   8.972660e-03
   * 8.8787507492e+05   6.71e+03  3.25e+03    2.021738e-03   1.100562e+01   5.811522e+02   9.611437e-03
  24 8.2715463586e+05  -1.33e+02  3.25e+02    1.827849e-03   1.210921e+01   5.379026e+02   8.989011e-03
   * 8.8122269839e+05   6.14e+03  3.25e+03    2.022627e-03   1.100052e+01   5.815922e+02   9.617659e-03
  25 8.2611809938e+05  -1.25e+02  3.25e+02    1.835819e-03   1.207852e+01   5.390799e+02   9.004988e-03
   * 8.7517715855e+05   5.61e+03  3.25e+03    2.023482e-03   1.099552e+01   5.820189e+02   9.623696e-03
  26 8.2514434379e+05  -1.18e+02  3.25e+02    1.843516e-03   1.204875e+01   5.402288e+02   9.020601e-03
   * 8.6967976142e+05   5.12e+03  3.25e+03    2.024306e-03   1.099059e+01   5.824330e+02   9.629558e-03
  27 8.2422913985e+05  -1.11e+02  3.25e+02    1.850952e-03   1.201985e+01   5.413501e+02   9.035860e-03
   * 8.6467775121e+05   4.68e+03  3.25e+03    2.025098e-03   1.098575e+01   5.828352e+02   9.635256e-03
  28 8.2336858271e+05  -1.05e+02  3.25e+02    1.858137e-03   1.199179e+01   5.424446e+02   9.050774e-03
   * 8.6012368810e+05   4.27e+03  3.25e+03    2.025860e-03   1.098098e+01   5.832262e+02   9.640799e-03
  29 8.2255906311e+05  -9.84e+01  3.25e+02    1.865082e-03   1.196454e+01   5.435130e+02   9.065352e-03
   * 8.5597489259e+05   3.90e+03  3.25e+03    2.026591e-03   1.097628e+01   5.836066e+02   9.646197e-03
  30 8.2179724151e+05  -9.27e+01  3.25e+02    1.871794e-03   1.193807e+01   5.445561e+02   9.079602e-03
   * 8.5219294988e+05   3.57e+03  3.25e+03    2.027294e-03   1.097165e+01   5.839770e+02   9.651457e-03
  31 8.2108002487e+05  -8.74e+01  3.25e+02    1.878282e-03   1.191236e+01   5.455746e+02   9.093534e-03
   * 8.4874326723e+05   3.26e+03  3.25e+03    2.027968e-03   1.096708e+01   5.843378e+02   9.656587e-03
  32 8.2040454575e+05  -8.23e+01  3.25e+02    1.884556e-03   1.188736e+01   5.465692e+02   9.107155e-03
   * 8.4559467870e+05   2.98e+03  3.25e+03    2.028615e-03   1.096257e+01   5.846895e+02   9.661594e-03
  33 8.1976814343e+05  -7.76e+01  3.25e+02    1.890623e-03   1.186307e+01   5.475406e+02   9.120474e-03
   * 8.4271909211e+05   2.72e+03  3.25e+03    2.029234e-03   1.095812e+01   5.850327e+02   9.666484e-03
  34 8.1916834689e+05  -7.32e+01  3.25e+02    1.896491e-03   1.183945e+01   5.484894e+02   9.133499e-03
   * 8.4009117341e+05   2.49e+03  3.25e+03    2.029827e-03   1.095372e+01   5.853677e+02   9.671264e-03
  35 8.1860285940e+05  -6.91e+01  3.25e+02    1.902167e-03   1.181648e+01   5.494163e+02   9.146238e-03
   * 8.3768806464e+05   2.28e+03  3.25e+03    2.030394e-03   1.094938e+01   5.856949e+02   9.675940e-03
  36 8.1806954453e+05  -6.52e+01  3.25e+02    1.907657e-03   1.179413e+01   5.503219e+02   9.158698e-03
   * 8.3548913162e+05   2.08e+03  3.25e+03    2.030936e-03   1.094509e+01   5.860148e+02   9.680516e-03
  37 8.1756641349e+05  -6.15e+01  3.25e+02    1.912968e-03   1.177239e+01   5.512067e+02   9.170886e-03
   * 8.3347573828e+05   1.91e+03  3.25e+03    2.031454e-03   1.094085e+01   5.863275e+02   9.684998e-03
  38 8.1709161355e+05  -5.81e+01  3.25e+02    1.918107e-03   1.175124e+01   5.520714e+02   9.182810e-03
   * 8.3163104470e+05   1.75e+03  3.25e+03    2.031947e-03   1.093665e+01   5.866336e+02   9.689390e-03
  39 8.1664341759e+05  -5.49e+01  3.25e+02    1.923079e-03   1.173065e+01   5.529165e+02   9.194478e-03
   * 8.2993982624e+05   1.60e+03  3.25e+03    2.032417e-03   1.093250e+01   5.869333e+02   9.693697e-03
  40 8.1622021446e+05  -5.18e+01  3.25e+02    1.927891e-03   1.171060e+01   5.537425e+02   9.205894e-03
   * 8.2838831161e+05   1.47e+03  3.25e+03    2.032864e-03   1.092840e+01   5.872269e+02   9.697923e-03
  41 8.1582050029e+05  -4.90e+01  3.25e+02    1.932547e-03   1.169109e+01   5.545500e+02   9.217067e-03
   * 8.2696403775e+05   1.35e+03  3.25e+03    2.033288e-03   1.092434e+01   5.875146e+02   9.702072e-03
  42 8.1544287045e+05  -4.63e+01  3.25e+02    1.937054e-03   1.167208e+01   5.553395e+02   9.228003e-03
   * 8.2565571973e+05   1.24e+03  3.25e+03    2.033691e-03   1.092032e+01   5.877967e+02   9.706147e-03
  43 8.1508601226e+05  -4.38e+01  3.25e+02    1.941415e-03   1.165356e+01   5.561115e+02   9.238708e-03
   * 8.2445313411e+05   1.14e+03  3.25e+03    2.034072e-03   1.091634e+01   5.880736e+02   9.710152e-03
  44 8.1474869825e+05  -4.14e+01  3.25e+02    1.945636e-03   1.163552e+01   5.568664e+02   9.249188e-03
   * 8.2334701432e+05   1.04e+03  3.25e+03    2.034433e-03   1.091240e+01   5.883453e+02   9.714090e-03
  45 8.1442978005e+05  -3.92e+01  3.25e+02    1.949722e-03   1.161794e+01   5.576048e+02   9.259449e-03
   * 8.2232895668e+05   9.61e+02  3.25e+03    2.034773e-03   1.090850e+01   5.886121e+02   9.717964e-03
  46 8.1412818269e+05  -3.70e+01  3.25e+02    1.953676e-03   1.160080e+01   5.583271e+02   9.269498e-03
   * 8.2139133611e+05   8.84e+02  3.25e+03    2.035094e-03   1.090463e+01   5.888743e+02   9.721777e-03
  47 8.1384289942e+05  -3.51e+01  3.25e+02    1.957504e-03   1.158409e+01   5.590337e+02   9.279338e-03
   * 8.2052723037e+05   8.15e+02  3.25e+03    2.035395e-03   1.090081e+01   5.891320e+02   9.725531e-03
  48 8.1357298695e+05  -3.32e+01  3.25e+02    1.961208e-03   1.156781e+01   5.597251e+02   9.288977e-03
   * 8.1973035197e+05   7.51e+02  3.25e+03    2.035677e-03   1.089701e+01   5.893853e+02   9.729229e-03
  49 8.1331756098e+05  -3.14e+01  3.25e+02    1.964794e-03   1.155192e+01   5.604016e+02   9.298420e-03
   * 8.1899498695e+05   6.93e+02  3.25e+03    2.035941e-03   1.089326e+01   5.896346e+02   9.732874e-03
  50 8.1307579221e+05  -2.97e+01  3.25e+02    1.968265e-03   1.153643e+01   5.610637e+02   9.307671e-03
   * 8.1831593987e+05   6.40e+02  3.25e+03    2.036187e-03   1.088953e+01   5.898799e+02   9.736467e-03
  51 8.1284690253e+05  -2.82e+01  3.25e+02    1.971625e-03   1.152131e+01   5.617117e+02   9.316736e-03
   * 8.1768848422e+05   5.92e+02  3.25e+03    2.036415e-03   1.088584e+01   5.901214e+02   9.740011e-03
  52 8.1263016157e+05  -2.67e+01  3.25e+02    1.974877e-03   1.150656e+01   5.623462e+02   9.325620e-03
   * 8.1710831784e+05   5.48e+02  3.25e+03    2.036626e-03   1.088218e+01   5.903593e+02   9.743508e-03
  53 8.1242488351e+05  -2.53e+01  3.25e+02    1.978024e-03   1.149216e+01   5.629673e+02   9.334327e-03
   * 8.1657152273e+05   5.08e+02  3.25e+03    2.036820e-03   1.087855e+01   5.905937e+02   9.746961e-03
  54 8.1223042408e+05  -2.39e+01  3.25e+02    1.981069e-03   1.147811e+01   5.635755e+02   9.342863e-03
   * 8.1607452890e+05   4.71e+02  3.25e+03    2.036999e-03   1.087496e+01   5.908247e+02   9.750369e-03
  55 8.1204617787e+05  -2.27e+01  3.25e+02    1.984017e-03   1.146439e+01   5.641711e+02   9.351231e-03
   * 8.1561408167e+05   4.37e+02  3.25e+03    2.037161e-03   1.087139e+01   5.910525e+02   9.753736e-03
  56 8.1187157570e+05  -2.15e+01  3.25e+02    1.986870e-03   1.145099e+01   5.647545e+02   9.359436e-03
   * 8.1518721226e+05   4.07e+02  3.25e+03    2.037308e-03   1.086785e+01   5.912772e+02   9.757064e-03
  57 8.1170608235e+05  -2.04e+01  3.25e+02    1.989630e-03   1.143790e+01   5.653259e+02   9.367483e-03
   * 8.1479121126e+05   3.79e+02  3.25e+03    2.037439e-03   1.086434e+01   5.914988e+02   9.760353e-03
  58 8.1154919430e+05  -1.93e+01  3.25e+02    1.992301e-03   1.142512e+01   5.658858e+02   9.375375e-03
   * 8.1442360463e+05   3.53e+02  3.25e+03    2.037556e-03   1.086086e+01   5.917176e+02   9.763605e-03
  59 8.1140043771e+05  -1.83e+01  3.25e+02    1.994885e-03   1.141263e+01   5.664344e+02   9.383117e-03
   * 8.1408213202e+05   3.29e+02  3.25e+03    2.037659e-03   1.085741e+01   5.919337e+02   9.766821e-03
  60 8.1125936657e+05  -1.74e+01  3.25e+02    1.997385e-03   1.140043e+01   5.669721e+02   9.390713e-03
   * 8.1376472727e+05   3.08e+02  3.25e+03    2.037747e-03   1.085398e+01   5.921470e+02   9.770004e-03
  61 8.1112556086e+05  -1.65e+01  3.25e+02    1.999803e-03   1.138850e+01   5.674990e+02   9.398167e-03
   * 8.1346950065e+05   2.88e+02  3.25e+03    2.037822e-03   1.085058e+01   5.923578e+02   9.773154e-03
  62 8.1099862500e+05  -1.57e+01  3.25e+02    2.002143e-03   1.137684e+01   5.680155e+02   9.405481e-03
   * 8.1319472291e+05   2.70e+02  3.25e+03    2.037883e-03   1.084720e+01   5.925661e+02   9.776272e-03
  63 8.1087818625e+05  -1.49e+01  3.25e+02    2.004405e-03   1.136544e+01   5.685220e+02   9.412661e-03
   * 8.1293881080e+05   2.53e+02  3.25e+03    2.037932e-03   1.084385e+01   5.927720e+02   9.779360e-03
  64 8.1076389334e+05  -1.41e+01  3.25e+02    2.006593e-03   1.135429e+01   5.690185e+02   9.419709e-03
   * 8.1270031395e+05   2.38e+02  3.25e+03    2.037967e-03   1.084053e+01   5.929755e+02   9.782418e-03
  65 8.1065541512e+05  -1.34e+01  3.25e+02    2.008709e-03   1.134339e+01   5.695055e+02   9.426629e-03
   * 8.1247790300e+05   2.24e+02  3.25e+03    2.037991e-03   1.083722e+01   5.931769e+02   9.785449e-03
  66 8.1055243934e+05  -1.27e+01  3.25e+02    2.010754e-03   1.133272e+01   5.699832e+02   9.433425e-03
   * 8.1227035888e+05   2.11e+02  3.25e+03    2.038002e-03   1.083395e+01   5.933761e+02   9.788452e-03
  67 8.1045467148e+05  -1.21e+01  3.25e+02    2.012731e-03   1.132228e+01   5.704517e+02   9.440099e-03
   * 8.1207656302e+05   2.00e+02  3.25e+03    2.038001e-03   1.083069e+01   5.935733e+02   9.791429e-03
  68 8.1036183367e+05  -1.15e+01  3.25e+02    2.014642e-03   1.131207e+01   5.709114e+02   9.446655e-03
   * 8.1189548855e+05   1.89e+02  3.25e+03    2.037989e-03   1.082746e+01   5.937684e+02   9.794381e-03
  69 8.1027366373e+05  -1.09e+01  3.25e+02    2.016489e-03   1.130207e+01   5.713625e+02   9.453096e-03
   * 8.1172619223e+05   1.79e+02  3.25e+03    2.037966e-03   1.082424e+01   5.939616e+02   9.797309e-03
  70 8.1018991415e+05  -1.03e+01  3.25e+02    2.018273e-03   1.129229e+01   5.718053e+02   9.459425e-03
   * 8.1156780722e+05   1.70e+02  3.25e+03    2.037932e-03   1.082105e+01   5.941530e+02   9.800213e-03
  71 8.1011035129e+05  -9.82e+00  3.25e+02    2.019997e-03   1.128270e+01   5.722398e+02   9.465644e-03
   * 8.1141953644e+05   1.61e+02  3.25e+03    2.037887e-03   1.081788e+01   5.943425e+02   9.803094e-03
  72 8.1003475450e+05  -9.33e+00  3.25e+02    2.021662e-03   1.127332e+01   5.726664e+02   9.471758e-03
   * 8.1128064656e+05   1.54e+02  3.25e+03    2.037832e-03   1.081474e+01   5.945303e+02   9.805954e-03
  73 8.0996291541e+05  -8.87e+00  3.25e+02    2.023269e-03   1.126413e+01   5.730853e+02   9.477768e-03
   * 8.1115046253e+05   1.46e+02  3.25e+03    2.037767e-03   1.081161e+01   5.947165e+02   9.808792e-03
  74 8.0989463713e+05  -8.43e+00  3.25e+02    2.024821e-03   1.125512e+01   5.734967e+02   9.483677e-03
   * 8.1102836265e+05   1.40e+02  3.25e+03    2.037692e-03   1.080850e+01   5.949010e+02   9.811610e-03
  75 8.0982973364e+05  -8.01e+00  3.25e+02    2.026319e-03   1.124630e+01   5.739007e+02   9.489488e-03
   * 8.1091377400e+05   1.34e+02  3.25e+03    2.037607e-03   1.080541e+01   5.950839e+02   9.814409e-03
  76 8.0976802912e+05  -7.62e+00  3.25e+02    2.027764e-03   1.123766e+01   5.742976e+02   9.495204e-03
   * 8.1080616836e+05   1.28e+02  3.25e+03    2.037513e-03   1.080234e+01   5.952653e+02   9.817188e-03
  77 8.0970935740e+05  -7.25e+00  3.25e+02    2.029159e-03   1.122918e+01   5.746875e+02   9.500826e-03
   * 8.1070505844e+05   1.23e+02  3.25e+03    2.037410e-03   1.079928e+01   5.954452e+02   9.819949e-03
  78 8.0965356135e+05  -6.89e+00  3.25e+02    2.030504e-03   1.122087e+01   5.750707e+02   9.506358e-03
   * 8.1060999449e+05   1.18e+02  3.25e+03    2.037298e-03   1.079625e+01   5.956237e+02   9.822693e-03
  79 8.0960049239e+05  -6.55e+00  3.25e+02    2.031800e-03   1.121273e+01   5.754472e+02   9.511802e-03
   * 8.1052056116e+05   1.14e+02  3.25e+03    2.037178e-03   1.079323e+01   5.958008e+02   9.825419e-03
  80 8.0955000999e+05  -6.24e+00  3.25e+02    2.033050e-03   1.120474e+01   5.758174e+02   9.517160e-03
   * 8.1043637468e+05   1.09e+02  3.25e+03    2.037048e-03   1.079023e+01   5.959766e+02   9.828129e-03
  81 8.0950198121e+05  -5.93e+00  3.25e+02    2.034254e-03   1.119690e+01   5.761813e+02   9.522434e-03
   * 8.1035708027e+05   1.06e+02  3.25e+03    2.036911e-03   1.078725e+01   5.961511e+02   9.830822e-03
  82 8.0945628029e+05  -5.65e+00  3.25e+02    2.035414e-03   1.118921e+01   5.765391e+02   9.527626e-03
   * 8.1028234975e+05   1.02e+02  3.25e+03    2.036766e-03   1.078428e+01   5.963244e+02   9.833500e-03
  83 8.0941278821e+05  -5.37e+00  3.25e+02    2.036531e-03   1.118167e+01   5.768910e+02   9.532740e-03
   * 8.1021187944e+05   9.86e+01  3.25e+03    2.036612e-03   1.078133e+01   5.964965e+02   9.836164e-03
  84 8.0937139233e+05  -5.11e+00  3.25e+02    2.037607e-03   1.117427e+01   5.772371e+02   9.537776e-03
   * 8.1014538809e+05   9.55e+01  3.25e+03    2.036452e-03   1.077840e+01   5.966673e+02   9.838812e-03
  85 8.0933198602e+05  -4.87e+00  3.25e+02    2.038641e-03   1.116700e+01   5.775776e+02   9.542736e-03
   * 8.1008261517e+05   9.27e+01  3.25e+03    2.036283e-03   1.077548e+01   5.968371e+02   9.841447e-03
  86 8.0929446833e+05  -4.64e+00  3.25e+02    2.039636e-03   1.115986e+01   5.779127e+02   9.547624e-03
   * 8.1002331919e+05   9.00e+01  3.25e+03    2.036108e-03   1.077257e+01   5.970057e+02   9.844068e-03
  87 8.0925874368e+05  -4.41e+00  3.25e+02    2.040593e-03   1.115286e+01   5.782424e+02   9.552440e-03
   * 8.0996727615e+05   8.75e+01  3.25e+03    2.035925e-03   1.076968e+01   5.971733e+02   9.846676e-03
  88 8.0922472153e+05  -4.20e+00  3.25e+02    2.041512e-03   1.114598e+01   5.785669e+02   9.557186e-03
   * 8.0991427823e+05   8.51e+01  3.25e+03    2.035736e-03   1.076680e+01   5.973399e+02   9.849271e-03
  89 8.0919231616e+05  -4.00e+00  3.25e+02    2.042394e-03   1.113922e+01   5.788864e+02   9.561865e-03
   * 8.0986413244e+05   8.30e+01  3.25e+03    2.035540e-03   1.076394e+01   5.975054e+02   9.851854e-03
  90 8.0916144634e+05  -3.82e+00  3.25e+02    2.043241e-03   1.113257e+01   5.792009e+02   9.566478e-03
   * 8.0981665956e+05   8.09e+01  3.25e+03    2.035337e-03   1.076109e+01   5.976700e+02   9.854425e-03
  91 8.0913203510e+05  -3.63e+00  3.25e+02    2.044054e-03   1.112605e+01   5.795107e+02   9.571026e-03
   * 8.0977169299e+05   7.90e+01  3.25e+03    2.035128e-03   1.075826e+01   5.978337e+02   9.856984e-03
  92 8.0910400953e+05  -3.46e+00  3.25e+02    2.044833e-03   1.111963e+01   5.798157e+02   9.575512e-03
   * 8.0972907781e+05   7.72e+01  3.25e+03    2.034913e-03   1.075544e+01   5.979965e+02   9.859533e-03
  93 8.0907730053e+05  -3.30e+00  3.25e+02    2.045580e-03   1.111333e+01   5.801163e+02   9.579937e-03
   * 8.0968866991e+05   7.55e+01  3.25e+03    2.034691e-03   1.075263e+01   5.981583e+02   9.862070e-03
  94 8.0905184259e+05  -3.15e+00  3.25e+02    2.046295e-03   1.110713e+01   5.804124e+02   9.584303e-03
   * 8.0965033511e+05   7.39e+01  3.25e+03    2.034464e-03   1.074983e+01   5.983193e+02   9.864597e-03
  95 8.0902757361e+05  -3.00e+00  3.25e+02    2.046979e-03   1.110103e+01   5.807042e+02   9.588611e-03
   * 8.0961394846e+05   7.24e+01  3.25e+03    2.034231e-03   1.074705e+01   5.984795e+02   9.867114e-03
  96 8.0900443472e+05  -2.86e+00  3.25e+02    2.047633e-03   1.109503e+01   5.809918e+02   9.592863e-03
   * 8.0957939353e+05   7.10e+01  3.25e+03    2.033993e-03   1.074428e+01   5.986389e+02   9.869621e-03
  97 8.0898237012e+05  -2.73e+00  3.25e+02    2.048258e-03   1.108913e+01   5.812753e+02   9.597059e-03
   * 8.0954656177e+05   6.97e+01  3.25e+03    2.033749e-03   1.074152e+01   5.987975e+02   9.872118e-03
  98 8.0896132685e+05  -2.60e+00  3.25e+02    2.048855e-03   1.108333e+01   5.815548e+02   9.601203e-03
   * 8.0951535192e+05   6.84e+01  3.25e+03    2.033500e-03   1.073877e+01   5.989554e+02   9.874607e-03
  99 8.0894125471e+05  -2.48e+00  3.25e+02    2.049424e-03   1.107761e+01   5.818304e+02   9.605294e-03
   * 8.0948566946e+05   6.73e+01  3.25e+03    2.033245e-03   1.073603e+01   5.991125e+02   9.877086e-03
 100 8.0892210607e+05  -2.37e+00  3.25e+02    2.049966e-03   1.107199e+01   5.821023e+02   9.609335e-03
   * 8.0945742616e+05   6.61e+01  3.25e+03    2.032986e-03   1.073330e+01   5.992689e+02   9.879557e-03
 101 8.0890383577e+05  -2.26e+00  3.25e+02    2.050481e-03   1.106645e+01   5.823704e+02   9.613327e-03
   * 8.0943053959e+05   6.51e+01  3.25e+03    2.032722e-03   1.073058e+01   5.994247e+02   9.882019e-03
 102 8.0888640092e+05  -2.16e+00  3.25e+02    2.050972e-03   1.106100e+01   5.826350e+02   9.617270e-03
   * 8.0940493267e+05   6.41e+01  3.25e+03    2.032453e-03   1.072788e+01   5.995797e+02   9.884473e-03
 103 8.0886976086e+05  -2.06e+00  3.25e+02    2.051437e-03   1.105563e+01   5.828961e+02   9.621167e-03
   * 8.0938053335e+05   6.31e+01  3.25e+03    2.032179e-03   1.072518e+01   5.997341e+02   9.886919e-03
 104 8.0885387698e+05  -1.96e+00  3.25e+02    2.051879e-03   1.105034e+01   5.831538e+02   9.625018e-03
   * 8.0935727421e+05   6.22e+01  3.25e+03    2.031901e-03   1.072250e+01   5.998879e+02   9.889358e-03
 105 8.0883871265e+05  -1.87e+00  3.25e+02    2.052296e-03   1.104513e+01   5.834082e+02   9.628824e-03
   * 8.0933509212e+05   6.13e+01  3.25e+03    2.031618e-03   1.071982e+01   6.000411e+02   9.891789e-03
 106 8.0882423308e+05  -1.79e+00  3.25e+02    2.052691e-03   1.103999e+01   5.836594e+02   9.632588e-03
   * 8.0931392797e+05   6.05e+01  3.25e+03    2.031331e-03   1.071715e+01   6.001937e+02   9.894213e-03
 107 8.0881040527e+05  -1.71e+00  3.25e+02    2.053064e-03   1.103493e+01   5.839074e+02   9.636309e-03
   * 8.0929372637e+05   5.97e+01  3.25e+03    2.031040e-03   1.071449e+01   6.003457e+02   9.896631e-03
 108 8.0879719786e+05  -1.63e+00  3.25e+02    2.053415e-03   1.102994e+01   5.841524e+02   9.639990e-03
   * 8.0927443537e+05   5.90e+01  3.25e+03    2.030745e-03   1.071185e+01   6.004972e+02   9.899041e-03
 109 8.0878458109e+05  -1.56e+00  3.25e+02    2.053745e-03   1.102502e+01   5.843944e+02   9.643630e-03
   * 8.0925600628e+05   5.83e+01  3.25e+03    2.030446e-03   1.070921e+01   6.006481e+02   9.901445e-03
 110 8.0877252670e+05  -1.49e+00  3.25e+02    2.054054e-03   1.102017e+01   5.846334e+02   9.647231e-03
   * 8.0923839336e+05   5.76e+01  3.25e+03    2.030143e-03   1.070658e+01   6.007985e+02   9.903842e-03
 111 8.0876100784e+05  -1.42e+00  3.25e+02    2.054344e-03   1.101538e+01   5.848697e+02   9.650795e-03
   * 8.0922155371e+05   5.69e+01  3.25e+03    2.029836e-03   1.070395e+01   6.009484e+02   9.906234e-03
 112 8.0874999900e+05  -1.36e+00  3.25e+02    2.054614e-03   1.101066e+01   5.851032e+02   9.654322e-03
   * 8.0920544700e+05   5.63e+01  3.25e+03    2.029525e-03   1.070134e+01   6.010978e+02   9.908619e-03
 113 8.0873947597e+05  -1.30e+00  3.25e+02    2.054865e-03   1.100600e+01   5.853340e+02   9.657813e-03
   * 8.0919003534e+05   5.57e+01  3.25e+03    2.029211e-03   1.069873e+01   6.012467e+02   9.910999e-03
 114 8.0872941574e+05  -1.24e+00  3.25e+02    2.055097e-03   1.100140e+01   5.855622e+02   9.661268e-03
   * 8.0917528310e+05   5.51e+01  3.25e+03    2.028894e-03   1.069613e+01   6.013952e+02   9.913373e-03
 115 8.0871979642e+05  -1.19e+00  3.25e+02    2.055312e-03   1.099687e+01   5.857878e+02   9.664690e-03
   * 8.0916115678e+05   5.45e+01  3.25e+03    2.028573e-03   1.069354e+01   6.015432e+02   9.915742e-03
 116 8.0871059725e+05  -1.14e+00  3.25e+02    2.055509e-03   1.099239e+01   5.860110e+02   9.668079e-03
   * 8.0914762482e+05   5.40e+01  3.25e+03    2.028249e-03   1.069096e+01   6.016907e+02   9.918105e-03
 117 8.0870179847e+05  -1.09e+00  3.25e+02    2.055689e-03   1.098796e+01   5.862318e+02   9.671435e-03
   * 8.0913465753e+05   5.35e+01  3.25e+03    2.027921e-03   1.068838e+01   6.018379e+02   9.920463e-03
 118 8.0869338131e+05  -1.04e+00  3.25e+02    2.055853e-03   1.098359e+01   5.864502e+02   9.674760e-03
   * 8.0912222693e+05   5.30e+01  3.25e+03    2.027591e-03   1.068581e+01   6.019846e+02   9.922817e-03
 119 8.0868532794e+05  -9.96e-01  3.25e+02    2.056000e-03   1.097928e+01   5.866663e+02   9.678054e-03
iter      chisq       delta/lim  lambda   a             b             c             d            

After 119 iterations the fit converged.
final sum of squares of residuals : 808685
rel. change during last iteration : -9.9586e-06

degrees of freedom    (FIT_NDF)                        : 42
rms of residuals      (FIT_STDFIT) = sqrt(WSSR/ndf)    : 138.76
variance of residuals (reduced chisquare) = WSSR/ndf   : 19254.4

Final set of parameters            Asymptotic Standard Error
=======================            ==========================
a               = 0.002056         +/- 0.009926     (482.8%)
b               = 10.9793          +/- 49.06        (446.8%)
c               = 586.666          +/- 2644         (450.6%)
d               = 0.00967805       +/- 0.04367      (451.3%)

correlation matrix of the fit parameters:
                a      b      c      d      
a               1.000 
b               0.998  1.000 
c              -0.999 -1.000  1.000 
d              -0.999 -1.000  1.000  1.000 
```

## Example output for LAU
<br>
<em>Havl Brod</em><br>
<img src="./figs-lau/HavlickuvBrod/CZ0631.png" width="1024"/><br>
<img src="./figs-lau/HavlickuvBrod/CZ0631d.png" width="1024"/><br>
<img src="./figs-lau/HavlickuvBrod/CZ0631hist.png" width="1024"/><br>
<img src="./figs-lau/HavlickuvBrod/aCZ0631.png" width="1024"/><br>
<img src="./figs-lau/HavlickuvBrod/aCZ0631d.png" width="1024"/><br>

## Example output for ORP
<br>
<em>Havl Brod</em><br>
<img src="./figs/HavlickuvBrod/6302dif.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/6302dif65.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/6302new.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/6302new65.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/6302p.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/6302p65.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/a6302dif.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/a6302dif65.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/a6302new.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/a6302new65.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/a6302p.png" width="1024"/><br>
<img src="./figs/HavlickuvBrod/a6302p65.png" width="1024"/><br>

