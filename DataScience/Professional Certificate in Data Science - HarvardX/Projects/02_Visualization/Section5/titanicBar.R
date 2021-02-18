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
  ggplot(aes(Pclass, fill = Survived)) +
  geom_bar()

titanic %>%
  ggplot(aes(Pclass, fill = Survived)) +
  geom_bar(position = position_fill())

titanic %>%
  ggplot(aes(Survived, fill = Pclass)) +
  geom_bar(position = position_fill())