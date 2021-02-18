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
  filter(Fare > 0 & !is.na(Fare)) %>%
  group_by(Survived) %>%
  ggplot(aes(Survived, Fare)) +
  geom_boxplot() +
  scale_y_continuous(trans="log2") +
  geom_jitter(alpha = 0.2)