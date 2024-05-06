#Normal Distribution in R
#Q1. The weekly wages of 1000 workers are normally distributed around a mean of Rs 70. 
#and standard deviation of Rs 5. Estimate the number of workers whose weekly wages will be ;
#i) between Rs 70 and 72. ii) between Rs 69 and 72. iii) More than Rs. 75  
#iv) Less than Rs 63 v) Also estimate the lowest weekly wages of the 100 highest paid workers,
p1<-pnorm(q=70,mean = 70,sd=5,lower.tail = T)
p2<-pnorm(q=72,mean = 70,sd=5,lower.tail = T)
p2-p1
#2
p3<-pnorm(q=69,mean = 70,sd=5,lower.tail = T)
p4<-pnorm(q=72,mean = 70,sd=5,lower.tail = T)
p4-p3
#3
p5<-pnorm(q=75,mean = 70,sd=5,lower.tail = T)
1-p5
#4
p6<-pnorm(q=63,mean = 70,sd=5,lower.tail = T)
p6
random<-rnorm(n=40,mean = 75,sd=5)
hist(random)
