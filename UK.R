library(dplyr)
library(ggplot2)

uk <- covid_randomrowsa %>% 
  filter(Country == "UK") %>% 
  select(Country, psych_wellbeing2, national_identity__2,political_ideology,Self.esteem, moral_circle)

#creating plots
uk %>% ggplot(aes(x = psych_wellbeing2)) + 
  geom_density(color = "black", fill = "gold3", alpha = 0.6) + 
  labs(x = "Psychological Well-Being",
       y = "Density", 
         title = "Density Plot of Psychological Well-Being in UK") + 
  theme_classic()

uk %>% ggplot(aes(x = national_identity__2)) + 
  geom_density(color = "black", fill = "gold3", alpha = 0.6) + 
  labs(x = "National Identity",
       y = "Density", 
       title = "Density Plot of National Identity in UK") + 
  theme_classic()

uk %>% ggplot(aes(x = political_ideology)) + 
  geom_density(color = "black", fill = "gold3", alpha = 0.6) + 
  labs(x = "Political Ideology",
       y = "Density", 
       title = "Density Plot of Political Ideology in UK") + 
  theme_classic()

uk %>% ggplot(aes(x = Self.esteem)) + 
  geom_density(color = "black", fill = "gold3", alpha = 0.6) + 
  labs(x = "Self Esteem",
       y = "Density", 
       title = "Density Plot of Self Esteem within UK") + 
  theme_classic()

uk %>% ggplot(aes(x = moral_circle)) + 
  geom_density(color = "black", fill = "gold3", alpha = 0.6) + 
  labs(x = "Moral Circle",
       y = "Density", 
       title = "Density Plot of Moral Circle within UK") + 
  theme_classic()

# Barkev Şarklı