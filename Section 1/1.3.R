# Load ggplot
library(ggplot2)

# Read in dataset
data(iris)

# Plot
p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point() 
p

# add text
p + annotate("text", x = 6, y = 5, label = "text")

# add repeat
p + annotate("text", x = 4:6, y = 5:7, label = "text")

# highlight an area
p + annotate("rect", xmin = 5, xmax = 7, ymin = 4, ymax = 6,
             alpha = .5)

# segment
p + annotate("segment", x = 5, xend = 7, y = 4, yend = 5,
             colour = "black")
