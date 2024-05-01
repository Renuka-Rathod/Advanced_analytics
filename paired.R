pair_t <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/pair_t.xlsx")
attach(pair_t)
#assumptions
#Normality
shapiro.test(Diff)
#paired t-test
t.test(Bef,Aft,mu=0,paired = T)
mean(Aft)
mean(Bef)
mean(Bef)-mean(Aft)
