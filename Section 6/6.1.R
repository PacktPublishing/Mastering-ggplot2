# Load modules
library(ggplot2)

# dataset
head(economics)

ggplot(economics, aes(x=date)) + 
  geom_line(aes(y=uempmed)) + 
  labs(title="Time Series PLotting", 
       subtitle="Unemployment Data from 'Economics' Dataset", 
       y="Unemployment %")

# PLot using ggfortify
library(ggfortify)
autoplot(AirPassengers)

# Customize
autoplot(AirPassengers, ts.colour = 'red', ts.linetype = 'dashed')

autoplot(AirPassengers, ts.geom = 'bar', fill = 'blue')

