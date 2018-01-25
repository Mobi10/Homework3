rm(list = ls())
# plotting basics with ggplot
# my tutorial script
# lots and lots of annotation!


# clear the decks
rm(list = ls())

# get the data
compensation <- read.csv('compensation.csv')

# check out the data
glimpse(compensation)

# make my first ggplot picture
ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point()

ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point() +
  theme_bw()

ggplot(compensation, aes(x = Root, y = Fruit)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

ggplot(compensation, aes(x = Root, y = Fruit, colour = Grazing)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

ggplot(compensation, aes(x = Root, y = Fruit, shape = Grazing)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()

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
# theme_bw() gets rid of the grey
# size alters the points
# colour and shape are part of the aesthetics
# and assign colours and shapes to levels of a factor
ggplot(compensation, aes(x = Root, y = Fruit, colour = Grazing)) +
  geom_point(size = 5) +
  xlab("Root Biomass") +
  ylab("Fruit Production") +
  theme_bw()
