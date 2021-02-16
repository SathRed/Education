library(dslabs)
data("gapminder")

library(dplyr)
library(ggplot2)

gapminder <- gapminder %>% 
  mutate(dollars_per_day = gdp/population/365)

past_year <- 1970
gapminder %>%
  filter(year == past_year & !is.na(gdp)) %>%
  ggplot(aes(log2(dollars_per_day))) +
  geom_histogram(binwidth = 1, color = "black")
