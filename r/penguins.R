library(palmerpenguins)
library(tidyverse)
library(here)

data(package = 'palmerpenguins')

write_delim(penguins, here('data/penguins.csv'),delim = ',')

write_delim(penguins_raw, here('data/penguins_raw.csv'),delim = ',')