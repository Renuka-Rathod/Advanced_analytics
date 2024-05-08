student.mat <- read.csv("D:/IACSD/Python and R Programming/R Programming/data/student-mat.csv", header=FALSE)
attach(student.mat)
summary(student.mat)
M1 = matrix(c(1,2,3,4),nrow=2)
#M1
df <- as.data.frame(M1)
df

