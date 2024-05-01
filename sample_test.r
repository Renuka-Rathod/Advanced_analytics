#one sample T-test
Indian_oil_ethanol <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/One Sample t-test/Indian oil_ethanol.xlsx")
attach(Indian.oil_ethanol)
#assumptions
#Normality Tests:shapiro,lillie,anderson
shapiro.test(Mileage.with.ethanol)
library(nortest)
lillie.test(Mileage.with.ethanol)
ad.test(Mileage.with.ethanol)
#my data satisfies the condition of normal distribution
#one sample T-test
t.test(Mileage.with.ethanol,mu=12)
sd(Mileage.with.ethanol)
t.test(Mileage.with.ethanol,mu=12,
       alternative = c("two.sided"),conf.level = 0.99)
t.test(Mileage.with.ethanol,mu=12,
       alternative = c("greater"),conf.level = 0.95)

#since the p-value=0.00007768<0.05 it means that null value is rejected and alternative hypothesis is accepted. it means that there is a significant diff in the milage of car after the use of ethanol.
#since the avg or mean mileage of car after the use of ethanol is 16.6 and without ethanol was 12km/litre. so there is a increase of 16.6-12=4.6kmlitre.
#so the company should add ethanol in the petrolium products.

