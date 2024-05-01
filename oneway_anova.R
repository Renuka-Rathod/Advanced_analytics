#one way anova
One_Way_Anova_CBSE <- read_excel("C:/Users/Renuka/OneDrive/Documents/IACSD/Advanced_analytics/Advance Analytics-2024/Day-8_ANOVAs/One Way ANOVA/One_Way_Anova_ CBSE.xlsx")
attach(One_Way_Anova_CBSE)
str(One_Way_Anova_CBSE)
One_Way_Anova_CBSE$City<-as.factor(One_Way_Anova_CBSE$City)
str(One_Way_Anova_CBSE)
library(car)
leveneTest(Marks~City,data = One_Way_Anova_CBSE)
#one way anova
Model<-aov(Marks~City,data = One_Way_Anova_CBSE)
summary(Model)
TukeyHSD(Model)
model.tables(Model,"mean")
Model$residuals
shapiro.test(Model$residuals)
