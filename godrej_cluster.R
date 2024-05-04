#Cluster analysis
Case_1_Godrej_Ltd <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-11_EFA & Cluster Analysis/Cluster Analysis/Case 1_ Godrej Ltd.xlsx")
attach(Case_1_Godrej_Ltd)
z<-Case_1_Godrej_Ltd[,-c(1,1)]
z
View(z)
m<-apply(z, 2, mean)
m
s<-apply(z, 2, sd)
s
z<-scale(z,m,s)
z
distance<-dist(z)
distance
print(distance,digits=3)
#cluster Analysis -HCA
hc.c<-hclust(distance)
hc.c
#Dendrogram
plot(hc.c)
plot(hc.c,hang = -1)
hc.a<-hclust(distance,method = "average")
plot(hc.a)
plot(hc.c,hang = -1)
member.c<-cutree(hc.c,3)
member.a<-cutree(hc.a,3)
table(member.c,member.a)
aggregate(z,list(member.c),mean)#aggregate value of each statement
aggregate(Case_1_Godrej_Ltd[,-c(1,1)],list(member.c),mean)
# k means clustering
library(cluster)
plot(silhouette(cutree(hc.c,3),distance))
kc<-kmeans(z,3)
kc
kc$cluster

