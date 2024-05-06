#Poisson Distribution in R
#Q1. If  5% of electric bulbs manufactured by a company are defective ,Use Poisson Distribution
#to find the probability that in a box of 100 bulbs.i) None is defective 
#ii) 3 bulbs are defective iii) More than 3 bulbs are defective.( given= e -5 = 0.007

dpois(x=0,lambda = 5)
dpois(x=3,lambda = 5)
sum(dpois(x=4:100,lambda = 5))
#ppois
ppois(q=3,lambda = 5,lower.tail = F)
#rpois
rpois(10,lambda = 5)
