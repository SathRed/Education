#gapminder dataset
library(dslabs)
data(gapminder)

library(dplyr)

gapminder %>%
  filter(
    year == 2015 & 
    country %in% c("Sri Lanka","Turkey")) %>%
  select(country, infant_mortality)

gapminder %>%
  filter(
    year == 2015 & 
      country %in% c("Poland","South Korea")) %>%
  select(country, infant_mortality)

gapminder %>%
  filter(
    year == 2015 & 
      country %in% c("Malaysia","Russia")) %>%
  select(country, infant_mortality)

gapminder %>%
  filter(
    year == 2015 & 
      country %in% c("Pakistan","Vietnam")) %>%
  select(country, infant_mortality)

gapminder %>%
  filter(
    year == 2015 & 
      country %in% c("Thailand","South Africa")) %>%
  select(country, infant_mortality)