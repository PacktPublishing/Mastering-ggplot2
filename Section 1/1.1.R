# Load ggplot
library(ggplot2)

# Read in dataset
data(iris)

# Plot
IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point() 
print(IrisPlot)

# Modify title
print(IrisPlot + ggtitle("Petal and sepal length of iris"))

print(IrisPlot + ggtitle("Petal and sepal length \nof three species of iris"))

# Modify axis labels
print(IrisPlot + labs(y="Petal length (cm)", x = "Sepal length (cm)") + ggtitle("Petal and sepal length of iris"))

