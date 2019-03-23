# Load ggplot
library(ggplot2)

# Read in dataset
data(mpg)

# Regular scatter plot
ggplot(mpg, aes(cyl, hwy)) +
  geom_point()

# Add Jitter
ggplot(mpg, aes(cyl, hwy)) +
  geom_point() +
  geom_jitter()

# Add some color
ggplot(mpg, aes(cyl, hwy)) +
  geom_point() +
  geom_jitter(aes(colour = class))



