library(dplyr)
library(dslabs)

heights %>% group_by(sex) %>%
  summarize(avg = mean(height), standard_deviation = sd(height))

murders %>% group_by(region) %>%
  summarize(median_rate=median(total/population * 100000))