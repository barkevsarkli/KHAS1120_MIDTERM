library(dplyr)
library(ggplot2)

a <- covid_randomrowsa %>%
  filter(Country %in% c("BRAZIL", "CHINA", "GREECE", "MOROCCO", "NIGERIA", "RUSSIA", "SWISS", "TURKEY", "UK", "USA")) %>%
  select(Country, psych_wellbeing2, national_identity__2, political_ideology, Self.esteem, moral_circle)

world_psych_mean <- a %>%
  group_by(Country) %>%
  summarise(mean_psych_wellbeing = mean(psych_wellbeing2, na.rm = TRUE),
            sd_psych_wellbeing = sd(psych_wellbeing2, na.rm = TRUE)) %>%
  mutate(z_score_psych_wellbeing = (mean_psych_wellbeing - mean(mean_psych_wellbeing)) / sd(mean_psych_wellbeing))

world_self_mean <- a %>%
  group_by(Country) %>%
  summarise(mean_self_esteem = mean(Self.esteem, na.rm = TRUE),
            sd_self_esteem = sd(Self.esteem, na.rm = TRUE)) %>%
  mutate(z_score_self_esteem = (mean_self_esteem - mean(mean_self_esteem)) / sd(mean_self_esteem))

world_national_mean <- a %>%
  group_by(Country) %>%
  summarise(mean_national_identity = mean(national_identity__2, na.rm = TRUE),
            sd_national_identity = sd(national_identity__2, na.rm = TRUE)) %>%
  mutate(z_score_national_identity = (mean_national_identity - mean(mean_national_identity)) / sd(mean_national_identity))

world_political_mean <- a %>%
  group_by(Country) %>%
  summarise(mean_political_ideology = mean(political_ideology, na.rm = TRUE),
            sd_political_ideology = sd(political_ideology, na.rm = TRUE)) %>%
  mutate(z_score_political_ideology = (mean_political_ideology - mean(mean_political_ideology)) / sd(mean_political_ideology))

world_moral_mean <- a %>%
  group_by(Country) %>%
  summarise(mean_moral_circle = mean(moral_circle, na.rm = TRUE),
            sd_moral_circle = sd(moral_circle, na.rm = TRUE)) %>%
  mutate(z_score_moral_circle = (mean_moral_circle - mean(mean_moral_circle)) / sd(mean_moral_circle))


ggplot() +
  geom_point(data = world_psych_mean, aes(x = Country, y = mean_psych_wellbeing, color = "Psychological Well-being"), size = 3, shape = 16) +
  geom_line(data = world_psych_mean, aes(x = Country, y = mean_psych_wellbeing, group = 1), color = "red") +
  geom_line(data = world_self_mean, aes(x = Country, y = mean_self_esteem, group = 1), color = "deepskyblue") +
  geom_point(data = world_self_mean, aes(x = Country, y = mean_self_esteem, color = "Self-esteem"), size = 3, shape = 16) +
  labs(x = "Countries", y = "Mean Values", title = "Psychological Well-Being and Self-esteem",  color = "Metric") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))

