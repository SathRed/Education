library(dplyr)
library(dslabs)

s <- heights %>%
  filter(sex=="Male") %>%
  summarize(average=mean(height),
            standard_deviation = sd(height),
            min = min(height),
            median = median(height),
            max = max(height))
us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 100000) %>% 
  .$rate