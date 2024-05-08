getwd()
install.packages("tidyverse")
library(tidyverse)
x=c(15,22)
y=c(3,5)
y
cat("\n Addition:",x+y)
x=10
y<-20
z<<-23
cat(x,y,z)
v1 = 2:8
v1

m=matrix(c(2,4,5,6,7,8),nrow=2,ncol=3)
m1=matrix(c(2,6,10,2),nrow = 2,ncol=3)
print(m1)

x=100000L
cat(x,class(x), typeof(x), mode(x), storage.mode(x))

x=10
cat(x,class(x), typeof(x), mode(x), storage.mode(x))

x=4+5i
xc='hi'

x_dim1 = c(10,20,30,40,50,60)
print(x_dim1)
class(x_dim1)
x_complex = c(3,0,TRUE,2+2i) 
print(x_complex)
class(x_complex)

x_char = c(0,"IACSD R Prog",TRUE,2+2i) 
print(x_char)

x <- list(1, "a", c(1,2,3), 1+4i)
x

xlist <- list(a = "Shantanu Pathak", b = 1:10)
xlist
M = matrix( c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = TRUE)
print(M)
x_dim2 = array(c(10,20,30,40,50,60,70),dim=c(2,3))
print(x_dim2)
students = factor(c(100,0,100,0,0,0), levels = c(0, 100), labels = c("boy", "girl"))
students
designation <- factor(c("SME", "Team Lead","Manager"), ordered =TRUE)
designation
M1 = matrix(c(1,2,3,4),nrow=2)
#M1
df <- as.data.frame(M1)
df
M = matrix( c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = TRUE)
print(M)
M <- matrix(c(1:12), nrow = 4)
print(M)
M <- matrix(c(1:14), nrow = 4)
print(m)
M <- matrix(c(3:14))
print(M)
M <- matrix(c(3:14), nrow = 4)
print(M)
cat("\n Print element row 1 col 3 M[1,3]",M[1,3])
cat("\n Print row 1 M[1,]",M[1,])
cat("\n Print col 3 M[,3]",M[,3])
M[2,3] = 20
print(M)
M[,2]=233
print(M)
M <- matrix(c(3:14), nrow = 4)
print(M - 30) # create a copy of matrix
print(M)
M <- matrix(c(3:14), nrow = 4)
print(M)
M[2,2] =M[2,2]+10
print(M)
M[3,]=M[3,]-30
print(M)
M[,1] = M[,1] * 0.1
print(M)
M = M + 10101
print(M)
M<-matrix(c(3:14),nrow = 4)
print(M)
print(M[M<6])
M[M<6]=100
print(M)
M <- matrix(c(3:14), nrow = 4)
M[2,][M[2,] < 10] = 200
M
M <- matrix(c(3:14), nrow = 4)
print(M)
M = cbind(M, c(0,0,0,0))
print("Modified matrix")
print(M)
M = cbind(M, c(50,51,52,89))
print(M)
print(dim(M))
t(M)
