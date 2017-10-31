#load library
library(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

#your code goes here
#plot 1 
ggplot(data = dat, aes(x = F_mass)) +
  labs(x="female mass(g)") +
  geom_histogram()
#plot 2
ggplot(data = dat, aes(x= F_mass)) +
  scale_x_log10() +
  labs(x = "female mass(g)") +
  geom_histogram(fill="blue")
#plot 3
ggplot(data=dat, aes(x=F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x=M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x= "female mass (g)")
#plot 4 
ggplot(data=dat, aes(x=F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x=M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x= "female mass (g)") +
  facet_wrap(~Family)
#plot 5
ggplot(data=dat, aes(x=F_wing)) +
  geom_histogram(fill = "blue", alpha = 0.3) +
  geom_histogram(aes(x=M_mass), alpha = 0.3) +
  scale_x_log10() +
  labs(x= "female mass (g)")
