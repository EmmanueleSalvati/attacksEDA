library(tidyverse)
setwd("~/terrorproject/")

df <- read_csv("16074e34-6d0c-4298-9dab-f93c6938d6f7.csv")
df <- filter(df, iyear > 1000)

df %>%
    ggplot(aes(x = iyear)) +
    geom_freqpoly(binwidth = 1) +
    scale_color_manual(values = palette_light()) +
    theme_tq()

df %>%
    ggplot(aes(x = country_txt)) +
    geom_bar() +
    scale_color_manual(values = palette_light()) +
    theme_tq() +
    theme(axis.text.x = element_text(angle = 90, vjust = 1, hjust = 1))
