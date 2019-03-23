# Load ggplot
library(ggplot2)

# Read in dataset
data(iris)

# Plot
p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point() 
p

# Flip
p + coord_flip()

p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_boxplot() 
p

p + coord_flip()
