#Chimaobi Okakpu
# My answer for Assignmnet 3
# plotting basics with ggplot
# my tutorial script

#Loading packages from library
library(dplyr)
library(ggplot2)
# clear the decks
rm(list = ls())
# get the data
compensation <- read.csv('compensation.csv')
# check out the data

glimpse(compensation)
# make my first ggplot picture
# theme_bw() gets rid of the grey
# size alters the points
# colour and shape are part of the aesthetics
# and assign colours and shapes to levels of a factor


# Scatterplot -------------------------------------------------------------
ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point()

ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point() +
  theme_bw()

# Change in circles of plot
ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

#added labels to the axis
ggplot(compensation, aes(x = Root, y = Fruit, colour = Grazing)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

#Change Shape of plots
ggplot(compensation, aes(x = Root, y = Fruit, shape = Grazing)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

# Boxplot -----------------------------------------------------------------
ggplot(compensation, aes(x = Grazing, y = Fruit)) +
  geom_boxplot() +
  xlab("Grazing treatment") +
  ylab("Fruit Production") +
  theme_bw()

ggplot(compensation, aes(x = Grazing, y = Fruit)) +
  geom_boxplot() +
  geom_point(size = 4, colour = 'lightgrey', alpha = 0.5) +
  xlab("Grazing treatment") +
  ylab("Fruit Production") +
  theme_bw()

# Histogram -------------------------------------------------------------
ggplot(compensation, aes(x = Fruit)) +
  geom_histogram()

## ‘stat_bin()‘ using ‘bins = 10‘. Pick better value with binwidth‘(15)
ggplot(compensation, aes(x = Fruit)) +
  geom_histogram(bins = 10)
ggplot(compensation, aes(x = Fruit)) +
  geom_histogram(binwidth = 15)

ggplot(compensation, aes(x = Fruit)) +
  geom_histogram(binwidth = 15) +
  facet_wrap(~Grazing)


