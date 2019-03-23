# Load ggplot
library(ggplot2)

# Read in dataset
data(iris)

iris

# Basic Scatter Plot
ggplot(iris, aes(Sepal.Length, Petal.Length)) + 
  geom_point() 

# Change the shape of points
ggplot(iris, aes(Sepal.Length, Petal.Length)) + 
  geom_point(shape=1) 

# Add color to points
ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + 
  geom_point(shape=1) 

# Add a regresison line
ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + 
  geom_point(shape=1) +
  geom_smooth(method=lm)

# Add a regresison line but no shaded confidence region
ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + 
  geom_point(shape=1) +
  geom_smooth(method=lm, se=FALSE)

