library(dslabs)
data("gapminder")

library(dplyr)
library(ggplot2)

ds_theme_set()
gapminder %>% 
  filter(year %in% c(1962, 1970, 1980, 1990, 2000, 2012)) %>%
  ggplot(aes(fertility, life_expectancy, color=continent)) +
  geom_point() +
  facet_wrap(.~year) 
