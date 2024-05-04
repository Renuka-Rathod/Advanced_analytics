#shopping mall
Case_2_Shopping_Mall_Cluster_Analysis <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-11_EFA & Cluster Analysis/Cluster Analysis/Case 2_Shopping Mall_Cluster Analysis.xlsx")
attach(Case_2_Shopping_Mall_Cluster_Analysis)
distance<-dist(Case_2_Shopping_Mall_Cluster_Analysis)
distance
print(distance,digits = 3)
hc.c<-hclust(distance)
hc.c
plot(hc.c,hang=-1)
member.c2<-cutree(hc.c,2)
member.c2
table(member.c2)
member.c3<-cutree(hc.c,3)
member.c3
table(member.c3)

library(cluster)
kc<-kmeans(Case_2_Shopping_Mall_Cluster_Analysis,2)
kc
kc$cluster
aggregate(Case_2_Shopping_Mall_Cluster_Analysis[,-c(1,1)],list(member.c),mean)
