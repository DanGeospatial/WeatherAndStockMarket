
#Set directory
setwd("D:/Projects/US Stock Climate")

#Read data
high <- read.csv("D:/Projects/US Stock Climate/high.csv", header=TRUE)
low <- read.csv("D:/Projects/US Stock Climate/high.csv", header=TRUE)
close <- read.csv("D:/Projects/US Stock Climate/high.csv", header=TRUE)

corclim <- cor(high)

climcor <- cor.mtest(high, conf.level = 0.95)
#, tl.cex=0.5
corrplot(corclim, p.mat = dNBRcor$p, type = "upper", order = "hclust", insig='blank', addCoef.col ='black', tl.col = "black", tl.srt = 45)

