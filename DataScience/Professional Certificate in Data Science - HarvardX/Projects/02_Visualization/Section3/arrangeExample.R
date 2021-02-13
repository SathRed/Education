library(dplyr)
library(dslabs)

#ties within region are settled by population
murders %>% arrange(region, population) %>% head()

murders %>% top_n(10, population) %>% arrange(desc(population))