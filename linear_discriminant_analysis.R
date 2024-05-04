#Linear discriminant analysis
Discriminant_Analysis_2_ <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-10_Logistic Regression & Discriminant Analsysis/Discriminant Analysis/Discriminant Analysis 2 .xlsx")
attach(Discriminant_Analysis_2_)
library(MASS)
ldaout<-lda(Buyer~Durability+Mileage+`Interior Design`+Look,data = Discriminant_Analysis_2_)
summary(ldaout)#ldaout is our model
ldaout
#predictive Model
ldapred<-predict(ldaout,Discriminant_Analysis_2_)#prediction in terms of predit value
ldapred
ldaclass<-ldapred$class
ldaclass
#confusion matrix
ldatable<-table(ldaclass,Discriminant_Analysis_2_$Buyer)
ldatable
accur<-sum(diag(ldatable))/sum(ldatable)*100 #to check accuracy
accur
