#correlation 
CRA <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Simple Regression/CRA.xlsx")
attach(CRA)
str(CRA)
#assumptions
#both the variables should be continuous -yes
#Normality
shapiro.test(advt)
shapiro.test(sales)
#Linearity
plot(advt,sales)
#Outliers
boxplot(advt)
boxplot(sales)
#Correlation Analysis
cor.test(advt,sales)
cor.test(advt,sales,method = "spearman",conf.level = 0.95)
