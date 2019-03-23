# Load Modules
library(ggplot2)

# Plot
p <- ggplot(mpg, aes(class, cty))

p + geom_violin()
 