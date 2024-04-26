greece <- covid_randomrowsa %>% 
  filter(Country == "GREECE") %>% 
  select(Country, psych_wellbeing2, national_identity__2,political_ideology,Self.esteem, moral_circle)

greece %>% ggplot(aes(x = psych_wellbeing2)) +
  geom_density(color = "black", fill = "darkblue", alpha = 0.6) + 
  labs(x = "Psychological Well-Being",
       y = "Density", 
       title = "Density Plot of Psychological Well-Being in Greece") + 
  theme_classic()

greece %>% ggplot(aes(x = national_identity__2)) +
  geom_density(color = "black", fill = "darkblue", alpha = 0.6) + 
  labs(x = "National Identity",
       y = "Density", 
       title = "Density Plot of National Identity in Greece") + 
  theme_classic()

greece %>% ggplot(aes(x = political_ideology)) + 
  geom_density(color = "black", fill = "darkblue", alpha = 0.6) +
  labs(x = "Political Ideology",
       y = "Density",
       title= "Density Plot of Political Ideology in Greece") +
  theme_classic()

greece %>% ggplot(aes(x = Self.esteem)) + 
  geom_density(color = "black", fill = "darkblue", alpha = 0.6) +
  labs(x = "Self-Esteem",
       y = "Density",
       title= "Density Plot of Self-Esteem in Greece") +
  theme_classic()

greece %>% ggplot(aes(x = moral_circle)) + 
  geom_density(color = "black", fill = "darkblue", alpha = 0.6) +
  labs(x = "Moral Circle",
       y = "Density",
       title= "Density Plot of Moral Circle in Greece") +
  theme_classic()