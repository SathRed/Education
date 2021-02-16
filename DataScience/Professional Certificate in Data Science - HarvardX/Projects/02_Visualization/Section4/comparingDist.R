library(dslabs)
data("gapminder")

library(dplyr)
library(ggplot2)

gapminder <- gapminder %>% 
  mutate(dollars_per_day = gdp/population/365)

past_year <- 1970
present_year <- 2010

west <- c("Western Europe", "Northern Europe",
          "Southern Europe", "Northern America",
          "Australia and New Zealand")

country_list_1 <- gapminder %>%
  filter(year == past_year & !is.na(dollars_per_day)) %>%
  .$country
country_list_2 <- gapminder %>%
  filter(year == present_year & !is.na(dollars_per_day)) %>%
  .$country
country_list <- intersect(country_list_1, country_list_2)

gapminder %>%
  filter (year %in% c(past_year, present_year) & country %in% country_list) %>%
  mutate(group = ifelse(region %in% west, "West", "Developing")) %>%
  ggplot(aes(dollars_per_day)) +
  geom_histogram(binwidth = 1, color= "black") +
  scale_x_continuous((trans = "log2")) +
  facet_grid(year~group)