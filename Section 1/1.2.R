# Load ggplot
library(ggplot2)

# Read in dataset
data(iris)

# Plot
p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point() 
p

# Remove Legend
p +  theme(legend.position="none")

# Hide the legend title
p + theme(legend.title=element_blank())

#Change the legend position
p +  theme(legend.position="top")

p +  theme(legend.position="bottom")

#Change the legend title and text font styles
# legend title
p + theme(legend.title = element_text(colour="blue", size=10, 
                                      face="bold"))
# legend labels
p + theme(legend.text = element_text(colour="red", size=8, 
                                     face="bold"))

