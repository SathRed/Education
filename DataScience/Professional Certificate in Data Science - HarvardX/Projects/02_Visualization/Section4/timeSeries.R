library(dslabs)
data("gapminder")

library(dplyr)
library(ggplot2)

countries <- c("South Korea", "Germany")

gapminder %>% 
  filter(country==countries) %>% 
  ggplot(aes(x=year, y=fertility, color=country)) +
  geom_line()
