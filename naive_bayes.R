#Naive Bayes Using R
naive_Bayes <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-17-Naive Bayes_Overfitting-Underfitting-Holdout-Generalization/naive Bayes.xlsx")
attach(naive_Bayes)
library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
str(naive_Bayes)
naive_Bayes$admit<-as.factor(naive_Bayes$admit)
naive_Bayes$Rank<-as.factor(naive_Bayes$Rank)
str(naive_Bayes)
#EDA
pairs.panels(naive_Bayes[-1]) #-1 is use instead of admit
naive_Bayes%>%ggplot(aes(x=admit,y=grade,fill=admit))+geom_boxplot()+ggtitle("Box plot")
naive_Bayes%>%ggplot(aes(x=admit,y=gpa,fill=admit))+geom_boxplot()+ggtitle("Box plot")
naive_Bayes%>%ggplot(aes(x=grade,fill=admit))+geom_density(alpha=0.8,color="black")+ggtitle("Density Plot")
naive_Bayes%>%ggplot(aes(x=gpa,fill=admit))+geom_density(alpha=0.8,color="black")+ggtitle("Density Plot")
ind<-sample(2,nrow(naive_Bayes),replace = T,prob = c(0.8,0.2))
train<-naive_Bayes[ind==1,]
test<-naive_Bayes[ind==2,]
#model
model<-naive_bayes(admit~.,data=train)
plot(model)
p<-predict(model,train,type = "prob")
head(cbind(p,train))
#confusion Matrix
p1<-predict(model,test)
tab1<-table(p1,test$admit)
tab1
sum(diag(tab1))/sum(tab1)
1-sum(diag(tab1))/sum(tab1)
#Train data
p2<-predict(model,train)
tab2<-table(p2,train$admit)
tab2
sum(diag(tab2))/sum(tab2)
1-sum(diag(tab2))/sum(tab2)