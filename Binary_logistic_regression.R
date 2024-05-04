#Binary Logistic Regression
logit <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-10_Logistic Regression & Discriminant Analsysis/Logistic Regression/logit.xlsx")
attach(logit)
head(logit)
tail(logit)
summary(logit)
#Model Binary Logistics
#glm-generalized linear model
Model<-glm(type~.,data = logit,family = "binomial")
summary(Model)
Model1<-glm(type~skin+bmi,data = logit,family = "binomial")
summary(Model1)
#probability respose
res<-predict(Model,logit,type = "response")
res
head(logit)
head(res)
#confusion Matrix
table(Actualvalue=logit$type,Predictedvalue=res>0.5)
(6+14)/30
table(Actualvalue=logit$type,Predictedvalue=res>0.4)
table(Actualvalue=logit$type,Predictedvalue=res>0.3)
(4+18)/30
install.packages(ROCR)
library(ROCR)
ROCRPred=prediction(res,logit$type)
ROCRPref<-performance(ROCRPred,"tpr","fpr")
plot(ROCRPref,colorsize=TRUE,print.cutoff.at=seq(0.1,by=0.1))
library(rcompanion) 
nagelkerke(model)

  
