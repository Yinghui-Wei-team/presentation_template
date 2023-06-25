library(MASS) # For the data set
birthwt1 <-birthwt

library(ggplot2)

setwd("C:/Users/ywei3/Dropbox/Teaching/2016-17/MATH3601/Lectures/Notes/figures")
# Convert smoke to a factor
birthwt1$smoke <- factor(birthwt1$smoke)

pdf("histogram.pdf")
# Map smoke to fill, make the bars NOT stacked, and make them semitransparent
ggplot(birthwt1, aes(x=bwt, fill=smoke)) +
  geom_histogram(position="identity", alpha=0.4)

dev.off()


pdf("boxplot.pdf")

ggplot(birthwt, aes(x=factor(race), y=bwt)) + geom_boxplot(fill="lightblue") +geom_point(colour = 'blue', alpha = 0.5)+ stat_summary(fun.y="mean", geom="point", shape=23, size=5, fill="Orange")
dev.off()


pdf("scatter.pdf")

ggplot(birthwt, aes(x=age, y=bwt, colour=factor(low))) + geom_point()

dev.off()