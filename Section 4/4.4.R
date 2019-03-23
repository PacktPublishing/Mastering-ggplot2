# Load Modules
library(ggplot2)

# Dataset
head(mpg)

# Plot
p <- ggplot(mpg, aes(manufacturer, cty)) + 
  geom_boxplot() +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

p

p  + geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5
               )

  
