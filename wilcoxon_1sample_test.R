#wilcoxon one sample test
One_sample_Wilcoxon_test <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-13_Chi-Square Test_One Sample Wilcoxon Test_Mann whitney U-test , Wilcoxon Sign Raned Test _Krushkal Wallis Test/One sample Wilcoxon test.xlsx")
attach(One_sample_Wilcoxon_test)
wilcox.test(diameter,mu=25,alternative = "two.sided")
#Mann whitney U test
mann_whitney <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-13_Chi-Square Test_One Sample Wilcoxon Test_Mann whitney U-test , Wilcoxon Sign Raned Test _Krushkal Wallis Test/mann-whitney.xlsx")
attach(mann_whitney)
str(mann_whitney)
mann_whitney$Store<-as.factor(mann_whitney$Store)
str(mann_whitney)
wilcox.test(Sales~Store,data = mann_whitney)
#Mtcars
data("mtcars")
attach(mtcars)
View(mtcars)
wilcox.test(mpg~am,data = mtcars)
#wilcoxon signed rank test - paired t test
Wilcoxon <- read_excel("D:/IACSD/Advanced_analytics/Advanced_analytics/Day-13_Chi-Square Test_One Sample Wilcoxon Test_Mann whitney U-test , Wilcoxon Sign Raned Test _Krushkal Wallis Test/Wilcoxon.xlsx")
attach(Wilcoxon)
