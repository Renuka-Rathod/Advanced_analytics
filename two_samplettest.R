twosample_ttest <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/twosample_ttest.xlsx")
attach(twosample_ttest)
str(twosample_ttest)
twosample_ttest$City<-as.factor(twosample_ttest$City)
str(twosample_ttest)
t.test(Perception~City,data = twosample_ttest)
library(car)
leveneTest(Perception~City,data = twosample_ttest)

