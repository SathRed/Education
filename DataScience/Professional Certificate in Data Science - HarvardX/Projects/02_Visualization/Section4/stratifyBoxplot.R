library(dslabs)
data("gapminder")

library(dplyr)
library(ggplot2)

gapminder <- gapminder %>% 
  mutate(dollars_per_day = gdp/population/365)
past_year <- 1970

p <- gapminder %>%
  filter(year == past_year, !is.na(gdp)) %>%
  mutate(region = reorder(region, dollars_per_day, FUN = median)) %>%
  ggplot(aes(region, dollars_per_day, fill = continent)) +
  geom_boxplot() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
  xlab("")

# change dollars per day axis to log scale
p + scale_y_continuous(trans = "log2") +
  geom_point(show.legend = FALSE)