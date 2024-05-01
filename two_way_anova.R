#Two way anova
Two_way_ANOVA <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-8_ANOVAs/Two Way ANOVA/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)
Two_way_ANOVA$Place<-as.factor(Two_way_ANOVA$Place)
Two_way_ANOVA$Education<-as.factor(Two_way_ANOVA$Education)
str(Two_way_ANOVA)
#two way Anova
Model<-aov(Sales~Place+Education,data = Two_way_ANOVA)
summary(Model)
Model1<-aov(Sales~Place+Education+Place:Education,data = Two_way_ANOVA)
summary(Model1)
