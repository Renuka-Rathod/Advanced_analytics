#Binary Logistic Regression
logit123 <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-10_Logistic Regression & Discriminant Analsysis/Logistic Regression/logit123.xlsx")
attach(logit123)
head(logit123)
tail(logit123)
summary(logit123)
#Model Binary Logistics
#glm-generalized linear model
Model<-glm(Selection ~.,data = logit123,family = "binomial")
summary(Model)
#probability respose
res<-predict(Model,logit123,Selection  = "response")
res
head(logit)
head(res)
#confusion Matrix
table(Actualvalue=logit123$Selection ,Predictedvalue=res>0.5)
(14+20)/40
table(Actualvalue=logit123$Selection ,Predictedvalue=res>0.03)
(13+21)/40
install.packages(ROCR)
library(ROCR)
ROCRPred=prediction(res,logit123$Selection )
ROCRPref<-performance(ROCRPred,"tpr","fpr")
plot(ROCRPref,colorsize=TRUE,print.cutoff.at=seq(0.1,by=0.1))
library(rcompanion) 
nagelkerke(model)


