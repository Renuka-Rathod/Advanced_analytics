#Decision tree in r
#Data
data("iris")
attach(iris)
View(iris)
str(iris)
#Data Partition
set.seed(555)
ind<-sample(2,nrow(iris),replace = TRUE,prob = c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]
library(party)
tree<-ctree(Species~.,train)
print(tree)
#visualization
plot(tree)
plot(tree,type="simple")
head(train)
#Confusion matrix
p1<-predict(tree,test)
p1
tab1<-table(Predicted=p1,Actual=test$Species)
tab1
sum(diag(tab1))/sum(tab1)*100
1-sum(diag(tab1))/sum(tab1)*100
100-(sum(diag(tab1))/sum(tab1)*100)
#confusion matrix for training data
p2<-predict(tree,train)
p2
tab2<-table(Predicted=p2,Actual=train$Species)
tab2
sum(diag(tab2))/sum(tab2)*100
1-sum(diag(tab2))/sum(tab2)*100
100-(sum(diag(tab2))/sum(tab2)*100)
#Regression Tree
tree1<-ctree(Sepal.Length~.,train)
plot(tree1)
tree1<-ctree(Species~.,train,controls = ctree_control(mincriterion=0.9999,minsplit = 6))
plot(tree1)
