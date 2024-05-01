#simple linear regression
Simplelinregression <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Simple Regression/Simplelinregression.xlsx")
attach(Simplelinregression)
str(Simplelinregression)
#Normality
shapiro.test(Compensation)
shapiro.test(Performance)
#Outliers
boxplot(Compensation)
boxplot(Performance)
#Linearity
plot(Compensation,Performance)
#simple Linear Regression
Model<-lm(Performance~Compensation,data = Simplelinregression)
summary(Model)
anova(Model)
cor(Compensation,Performance)
Model$residuals
shapiro.test(Model$residuals)
abline(Model)
plot(Model)
par(mfrow=c(2,2))
plot(Model)
View(Simplelinregression)
