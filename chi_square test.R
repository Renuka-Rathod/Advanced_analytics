#Chi-square test
chi_square <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-13_Chi-Square Test_One Sample Wilcoxon Test_Mann whitney U-test , Wilcoxon Sign Raned Test _Krushkal Wallis Test/Chi-Square Test/chi-square.xlsx")
attach(chi_square)
table(code)
table(grade)
Tab<-table(code,grade)
Tab
#chi-square test
CHI<-chisq.test(Tab,correct = T)
CHI$expected
#Fisher test
fisher.test(Tab,conf.int = T,conf.level = 0.95)
