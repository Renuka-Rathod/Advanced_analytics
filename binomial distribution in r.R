#Binomial Distribution in R
#Q1.10 unbiased coins are tossed simultaneously ,find the probability that there will be 
#i) exactly 5 heads ii) At least 8 heads iii) not more than 3 heads iv) At least one head. 
#V) If this exercise is carried out 50 times ,how many times we can get exactly 5 heads?
#dbinom
#Exactly 5 heads
dbinom(x=5,size=10,p=1/2)
#ii) At least 8 heads
dbinom(x=8:10,size = 10,p=1/2)
sum(dbinom(x=8:10,size = 10,p=1/2))
#iii) not more than 3 heads
sum(dbinom(x=0:3,size = 10,p=1/2))
#iv) At least one head
sum(dbinom(x=1:10,size = 10,p=1/2))
#pbinom
pbinom(q=7,size = 10,prob = 1/2,lower.tail = F)
pbinom(q=3,size = 10,prob = 1/2,lower.tail = T)
pbinom(q=0,size = 10,prob = 1/2,lower.tail = F)
#rbinom
x<-rbinom(8,150,.4)
x

