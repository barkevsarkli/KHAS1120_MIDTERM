#including libraries
library(dplyr)
library(ggplot2)

#creating data table
china <- covid_randomrowsa %>% 
  filter(Country == "CHINA") %>% 
    select(Country, psych_wellbeing2, national_identity__2,political_ideology,Self.esteem, moral_circle)

#generating plots
china %>% ggplot(aes(x = psych_wellbeing2)) +
  geom_density(color = "black", fill = "goldenrod2", alpha = 0.6) + 
  labs(x = "Psychological Well-Being",
       y = "Density", 
       title = "Density Plot of Psychological Well-Being in China") + 
  theme_classic()

china %>% ggplot(aes(x = national_identity__2)) +
  geom_density(color = "black", fill = "goldenrod2", alpha = 0.6) + 
  labs(x = "National Identity",
       y = "Density", 
       title = "Density Plot of National Identity in China") + 
  theme_classic()

china %>% ggplot(aes(x = political_ideology)) + 
  geom_density(color = "black", fill = "goldenrod2", alpha = 0.6) +
  labs(x = "Political Ideology",
       y = "Density",
       title= "Density Plot of Political Ideology in China") +
  theme_classic()

china %>% ggplot(aes(x = Self.esteem)) + 
  geom_density(color = "black", fill = "goldenrod2", alpha = 0.6) +
  labs(x = "Self-Esteem",
       y = "Density",
       title= "Density Plot of Self-Esteem in China") +
  theme_classic()

china %>% ggplot(aes(x = moral_circle)) + 
  geom_density(color = "black", fill = "goldenrod2", alpha = 0.6) +
  labs(x = "Moral Circle",
       y = "Density",
       title= "Density Plot of Moral Circle in China") +
  theme_classic()

#Barkev Şarklı