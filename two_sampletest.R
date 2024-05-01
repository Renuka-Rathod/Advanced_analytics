#Two samples t-tests
independent_t <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/independent_t.xlsx")
attach(independent_t)
#Assumptions
#Continous
#Normality

shapiro.test(`Mumbai`)
shapiro.test(`Delhi`)
#Independent samples t-test
t.test(`Mumbai,Delhi,mu=0`)
lillie.test(`Mumbai`)
