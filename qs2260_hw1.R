library(tidyverse)
library(ggplot2)
View(penguins)
nrow(penguins)
ncol(penguins)
summary(penguins)
# There 
ggplot(penguins, aes(x= bill_length_mm, y=flipper_length_mm)) + geom_point(aes(color=species))
ggsave

df = tibble(
  RS = rnorm(10),
  logical = RS > 0,
  C = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"),
  L = factor(c("A", "B", "C", "A", "A", "B", "C", "A", "B", "C"))
)
view(df)
