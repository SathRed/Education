options(digits = 3)    # report 3 significant digits
library(tidyverse)
library(titanic)
data("titanic_train")

titanic <- titanic_train %>%
  select(Survived, Pclass, Sex, Age, SibSp, Parch, Fare) %>%
  mutate(
    Survived = factor(Survived),
    Pclass = factor(Pclass),
    Sex = factor(Sex)
  )

titanic %>% 
  filter(
    !is.na(Age) &
    !is.na(Survived) &
    !is.na(Sex) &
    !is.na(Pclass) 
  ) %>%
  ggplot(aes(Age, fill = Survived)) + 
  geom_density(aes(y=..count..), alpha = 0.2) +
  facet_grid(Sex~Pclass)