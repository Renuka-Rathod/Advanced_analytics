#one sample t-test
Indian_oil_ethanol <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/One Sample t-test/Indian oil_ethanol.xlsx")
attach(Indian.oil_ethanol)
#assumptions
#1.continuous
#Normality
hist(`Mileage with ethanol`)
library(moments)
skweness(`Mileage with ethanol`)
library(moments)
skewness(Mileage.with.ethanol)
kurtosis(Mileage.with.ethanol)
#normality test
shapiro.test(Mileage.with.ethanol)
library(nortest)
library(nortest)
lillie.test(`Mileage with ethanol`)
hist(Mileage.with.ethanol)
library(nortest)
lillie.test(Mileage.with.ethanol)
