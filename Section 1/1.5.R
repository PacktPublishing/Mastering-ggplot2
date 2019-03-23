# Load ggplot
library(ggplot2)

# Read in dataset
data(iris)

iris

# Plot
p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point() 
p


# Facet
p + facet_grid(Species ~ .)

p + facet_grid(. ~ Species)

