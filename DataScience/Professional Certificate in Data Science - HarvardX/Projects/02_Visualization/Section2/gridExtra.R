library(dplyr)
library(dslabs)
library(ggplot2)
library(gridExtra)

p <- heights %>% filter(sex=="Male") %>%
  ggplot(aes(x=height))
p1 <- p + geom_histogram(binwidth = 1, fill = "blue", col="black")
p2 <- p + geom_histogram(binwidth = 2, fill = "blue", col="black")
p3 <- p + geom_histogram(binwidth = 3, fill = "blue", col="black")
grid.arrange(p1,p2,p3,ncol=3)