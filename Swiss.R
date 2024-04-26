library(dplyr)
library(ggplot2)

swiss <- covid_randomrowsa %>% 
  filter(Country == "SWISS") %>% 
    select(Country, psych_wellbeing2, national_identity__2,political_ideology,Self.esteem, moral_circle)

swiss %>% ggplot(aes(x = psych_wellbeing2)) + 
  geom_density(color = "black", fill = "gray", alpha = 0.6) + 
  labs(x = "Psychological Well-Being",
       y = "Density", 
       title = "Density Plot of Psychological Well-Being in Swiss") + 
  theme_classic()

swiss %>% ggplot(aes(x = national_identity__2)) + 
  geom_density(color = "black", fill = "gray", alpha = 0.6) + 
  labs(x = "National Identity",
       y = "Density", 
       title = "Density Plot of National Identity in Swiss") + 
  theme_classic()

swiss %>% ggplot(aes(x = political_ideology)) + 
  geom_density(color = "black", fill = "gray", alpha = 0.6) + 
  labs(x = "Political Ideology",
       y = "Density", 
       title = "Density Plot of Political Ideology in Swiss") + 
  theme_classic()

swiss %>% ggplot(aes(x = Self.esteem)) + 
  geom_density(color = "black", fill = "gray", alpha = 0.6) + 
  labs(x = "Self Esteem",
       y = "Density", 
       title = "Density Plot of Self Esteem within Swiss") + 
  theme_classic()

swiss %>% ggplot(aes(x = moral_circle)) + 
  geom_density(color = "black", fill = "gray", alpha = 0.6) + 
  labs(x = "Moral Circle",
       y = "Density", 
       title = "Density Plot of Moral Circle within Swiss") + 
  theme_classic()

# Barkev Şarklı