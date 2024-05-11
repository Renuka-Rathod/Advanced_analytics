#Feature selection in R
baru <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-16-Feature Selection Using R/baru.xlsx")
attach(baru)
str(baru)
baru$class<-as.factor(baru$class)
str(baru)
library(Boruta)
library(mlbench)
library(caret)
library(randomForest)
set.seed(111)
baruta<-Boruta(class~.,data = baru,doTrace=2)
baruta<-Boruta(class~.,data = baru,doTrace=2,maxRuns=500)
print(baruta)
plot(baruta)
plot(baruta,las=2,cex.axis=0.7)
plotImpHistory(baruta)
#Tentative Fix
bor<-TentativeRoughFix(baruta)
print(bor)
attStats(baruta)
#Model
set.seed(222)
ind<-sample(2,nrow(baru),replace = T,prob = c(0.6,0.4))
train<-baru[ind==1,]
test<-baru[ind==2,]
#Random Forest Model
set.seed(333)
rf88<-randomForest(class~.,data=train)
#Prediction and Confusion matrix for 88 variables
p<-predict(rf88,test)
p
confusionMatrix(p,test$class)
getNonRejectedFormula(baruta)
set.seed(333)

rf50<-randomForest(class ~ V2 + V3 + V5 + V8 + V11 + V12 + V13 + V14 + V15 + V16 + 
         V20 + V24 + V25 + V26 + V27 + V33 + V35 + V36 + V37 + V40 + 
         V41 + V42 + V43 + V45 + V46 + V47 + V49 + V50 + V51 + V52 + 
         V53 + V55 + V57 + V58 + V59 + V60 + V66 + V68 + V70 + V72 + 
         V73 + V75 + V79 + V82 + V83 + V84 + V86 + V87 + V88,data=train)
p1<-predict(rf50,test)
confusionMatrix(p1,test$class)
getConfirmedFormula(baruta)
rf37<-randomForest(class ~ V2 + V3 + V5 + V8 + V11 + V12 + V14 + V15 + V20 + V24 + 
                     V25 + V26 + V35 + V37 + V40 + V42 + V43 + V47 + V49 + V50 + 
                     V52 + V53 + V55 + V57 + V58 + V59 + V60 + V66 + V68 + V70 + 
                     V72 + V79 + V83 + V84 + V86 + V87 + V88,data = train)
p2<-predict(rf37,test)
confusionMatrix(p2,test$class)
