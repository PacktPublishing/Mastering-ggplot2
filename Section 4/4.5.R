# Load Modules
library(ggthemes)
library(ggplot2)
theme_set(theme_tufte())

# Dataset
head(mpg)

# plot
p <- ggplot(mpg, aes(manufacturer, cty))



p + geom_tufteboxplot() + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
 
