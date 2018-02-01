# Chimaobi Okakpu
# Proper Vizualization of data
# plotting basics with ggplot
# clear the decks

ggplot(compensation, aes(x = Root, y = Fruit)) + geom_point()

library(dplyr)
library(ggplot2)

rm(list = ls())
# get the data
compensation <- read.csv('compensation.csv')
# check out the data
glimpse(compensation)
# make my first ggplot picture
ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point()