library(dplyr)
library(dslabs)
library(ggplot2)

p <- heights %>% 
  filter(sex=="Male") %>%
  ggplot(aes(x = height))
p + geom_density(fill="blue") +
  xlab("Male heights in inches") +
  ggtitle("Smooth Density Curve")