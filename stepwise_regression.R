#stepwise regression
MR1 <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)
#model considering all variables
Fitall<-lm(Buying~.,data = MR1)
summary(Fitall)
Fitfirst<-lm(Buying~1,data = MR1)
summary(Fitfirst)
#stepwise regression
#forward selection
step(Fitfirst,direction = "forward",scope = formula(Fitall))
#Backward Elimination
step(Fitall,direction = "backward")
#bI DIRECTIONAL
step(Fitfirst,direction = "both",scope = formula(Fitall))
