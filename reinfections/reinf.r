library('questionr')
library('epitools')

## S - symptomatic reinfections
## P - symptomatic + suspicious
## A - symptomatic + suspicious + at least one asymptomatic
# reinfection data from CZ 19.4.2021
## 1VAC - infection after 1st jab
## 2VAC - infection after 2nd jab
## vac data from CZ 24.5.2021

##contingency MTXs reference group @ first row (natural reinfection), no outcome(reinfection) @ first column
reinfS1VAC <- matrix(c(1525000-1535,2304755-20741,1535,20741),ncol=2)
reinfP1VAC <- matrix(c(1525000-2366,2304755-20741,2366,20741),ncol=2)
reinfA1VAC <- matrix(c(1525000-4726,2304755-20741,4726,20741),ncol=2)
reinfS2VAC <- matrix(c(1525000-1535,1212069-3636, 1535,3636),ncol=2)
reinfP2VAC <- matrix(c(1525000-2366,1212069-3636, 2366,3636),ncol=2)
reinfA2VAC <- matrix(c(1525000-4726,1212069-3636, 4726,3636),ncol=2)

riskratio.wald(reinfS1VAC)
riskratio.wald(reinfS2VAC)
riskratio.wald(reinfA1VAC)
riskratio.wald(reinfA2VAC)
