#multiple linear regression
MR1 <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)
str(MR1)
#Model 
Model<-lm(Buying~Attitude+Perception+Awarness+Cost+Rating,data = MR1)
summary(Model)
anova(Model)
plot(Model)
par(mfrow=c(2,2))
plot(Model)
library(car)
library(carData)
vif(Model)
shapiro.test(Model$residuals)
summary(Model)
Model1<-lm(Buying~Awarness+Attitude+Perception,data = MR1)
summary(Model1)
