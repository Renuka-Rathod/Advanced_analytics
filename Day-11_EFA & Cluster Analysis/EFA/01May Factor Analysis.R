Factor_Analysis_Delta_Cars <- read_excel("C:/Users/cdacstaff/Desktop/Advance Analytics-2024/Day-11_EFA & Cluster Analysis/EFA/Factor Analysis_Delta Cars.xlsx")
attach(Factor_Analysis_Delta_Cars)
str(Factor_Analysis_Delta_Cars)
library(psych)
KMO(Factor_Analysis_Delta_Cars)
r=cor(Factor_Analysis_Delta_Cars)
r
pca(r,nfactor=10,rotate=F)
z=pca(r,nfactors =3,method =regression,rotate ="varimax",scores = T)
z
z$values
print(z$values,digits=3)
print(z$loadings,digits=3,cutoff = 0.7)
scree(Factor_Analysis_Delta_Cars)
fa.parallel(Factor_Analysis_Delta_Cars, fa="fa")
load <- z$loadings[,1:2]
plot(load,type="n")
text(load,labels=names(Factor_Analysis_Delta_Cars),cex=.7)
library(psych)
loads <- z$loadings
fa.diagram(loads)
library(REdaS)
KMOS(Factor_Analysis_Delta_Cars)
