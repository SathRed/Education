library(dplyr)
library(dslabs)
library(ggplot2)

p <- heights %>% filter(sex=="Male") %>%
  ggplot(aes(sample = height))

params <- heights %>%
  filter(sex=="Male") %>%
  summarize(mean=mean(height),sd=sd(height))
p + geom_qq(dparams=params) +
  geom_abline()
