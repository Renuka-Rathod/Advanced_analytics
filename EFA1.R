#Exploratory Factor Analysis
EFA_car <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-11_EFA & Cluster Analysis/EFA/EFA_car.xlsx")
attach(EFA_car)
str(EFA_car)
#KMO>0.5
library(psych)
#KMO(EFA_car)
r=cor(EFA_car)
r
KMO(EFA_car)
#The sample size is adequate to run the EFA
#Bartlet test
cortest.bartlett(EFA_car)
cortest.bartlett(r)
#REdaS
library(REdaS)
KMOS(EFA_car)
bart_spher(EFA_car)
#EFA
#principal component method
pca(r,nfactors = 10,rotate = F)
#varimax Method, No. of factors =3
z=pca(r,nfactors = 3,method = regression,rotate = 'varimax',scores = T)
z
print(z$loadings,digits = 3,cutoff = 0.7)
scree(EFA_car)
fa.parallel(EFA_car,fa="fa")
library(psych)
loads <- z$loadings
fa.diagram(loads)
library(REdaS)
KMOS(EFA_car)
