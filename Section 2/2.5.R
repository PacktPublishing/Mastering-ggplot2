# Load ggplot
library(ggplot2)
library(ggExtra)

# Read in dataset
data(mpg)
head(mpg)

#Plot
g <- ggplot(mpg, aes(cty, hwy)) + 
  geom_count() + 
  geom_smooth(method="lm", se=F)

g

ggMarginal(g, type = "histogram", fill="transparent")

ggMarginal(g, type = "boxplot", fill="transparent")
