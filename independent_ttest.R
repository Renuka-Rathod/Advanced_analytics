independent_t <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-7_T-tests/T-tests/independent_t.xlsx")
attach(independent_t)
t.test(Mumbai,Delhi,mu=0)
t.test(Mumbai,Delhi,mu=0,var.equal = F)
