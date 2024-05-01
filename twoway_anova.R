#two way anova
Two_way_ANOVA <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-8_ANOVAs/Two Way ANOVA/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)
Two_way_ANOVA$Place<-as.factor(Two_way_ANOVA$City)
str(Two_way_ANOVA)
library(car)
leveneTest(Education~Place,data = Two_way_ANOVA)
#two way anova
Model<-aov(Education~Place,data = Two_way_ANOVA)
summary(Model)
TukeyHSD(Model)
model.tables(Model,"mean")
Model$residuals
shapiro.test(Model$residuals)
