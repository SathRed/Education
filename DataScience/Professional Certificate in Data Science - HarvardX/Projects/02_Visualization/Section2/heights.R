library(dplyr)
library(dslabs)
library(ggplot2)

p <- heights %>% 
  filter(sex=="Male") %>%
  ggplot(aes(x = height))
p + geom_histogram(binwidth = 1, fill="blue", col="black") +
  xlab("Male heights in inches") +
  ggtitle("Histogram")