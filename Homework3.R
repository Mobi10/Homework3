# Chimaobi Okakpu
# Proper Vizualization of data

ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point()

# plotting basics with ggplot
# my tutorial script
# lots and lots of annotation!
# libraries I need (no need to install...)
library(dplyr)
library(ggplot2)
# clear the decks
rm(list = ls())
# get the data
compensation <- read.csv('compensation.csv')
# check out the data
glimpse(compensation)
# make my first ggplot picture
ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point()