#Random Forests using R
data("iris")
attach(iris)
str(iris)#structure of data
#Data partition
set.seed(123)
ind<-sample(2,nrow(iris),replace = T,prob = c(0.7,0.3))
nrow(iris)
ncol(iris)
train<-iris[ind==1,]
test<-iris[ind==2,]
#Random Forest
library(randomForest)
set.seed(222)
rf<-randomForest(Species~.,data = train)
print(rf)
attributes(rf)
rf$err.rate
rf$confusion
library(caret)
p1<-predict(rf,test)
head(p1)
head(iris)
head(train$Species)
library(e1071)
confusionMatrix(p1,test$Species)
#Train Data
p2<-predict(rf,train)
head(p2)
library(e1071)
confusionMatrix(p2,train$Species)
#Prediction and confusion Matrix on train data
p2<-predict(rf,train)
confusionMatrix(p2,train$Species)
plot(rf)
rf<-randomForest(Species~.,data = train,ntree=200,mtry=2,importance=TRUE,proximity=TRUE)
plot(rf)
hist(treesize(rf),main="no. of nodes for the trees",col = "red")
#Variable Importance
varImpPlot(rf)
varImpPlot(rf,sort=T,n.var = 3,main="top 3")
importance(rf)
#variable used no of times
varUsed(rf)
#Partial Dependence plot 
partialPlot(rf,train,Petal.Length,"versicolor")
partialPlot(rf,train,Petal.Width,"setosa")
View(iris)
#Extract Single Tree
getTree(rf,1,labelVar = TRUE)











