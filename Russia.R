library(dplyr)
library(ggplot2)

russia <- covid_randomrowsa %>% 
  filter(Country == "RUSSIA") %>% 
  select(Country, psych_wellbeing2, national_identity__2,political_ideology,Self.esteem, moral_circle)

russia %>% ggplot(aes(x = psych_wellbeing2)) + 
  geom_density(color = "black", fill = "blue2", alpha = 0.6) + 
  labs(x = "Psychological Well-Being",
       y = "Density", 
       title = "Density Plot of Psychological Well-Being in Russia") + 
  theme_classic()

russia %>% ggplot(aes(x = national_identity__2)) + 
  geom_density(color = "black", fill = "blue2", alpha = 0.6) + 
  labs(x = "National Identity",
       y = "Density", 
       title = "Density Plot of National Identity in Russia") + 
  theme_classic()

russia %>% ggplot(aes(x = political_ideology)) + 
  geom_density(color = "black", fill = "blue2", alpha = 0.6) + 
  labs(x = "Political Ideology",
       y = "Density", 
       title = "Density Plot of Political Ideology in Russia") + 
  theme_classic()

russia %>% ggplot(aes(x = Self.esteem)) + 
  geom_density(color = "black", fill = "blue2", alpha = 0.6) + 
  labs(x = "Self Esteem",
       y = "Density", 
       title = "Density Plot of Self Esteem within Russia") + 
  theme_classic()

russia %>% ggplot(aes(x = moral_circle)) + 
  geom_density(color = "black", fill = "blue2", alpha = 0.6) + 
  labs(x = "Moral Circle",
       y = "Density", 
       title = "Density Plot of Moral Circle within Russia") + 
  theme_classic()

# Barkev Şarklı