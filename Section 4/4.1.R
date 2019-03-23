# Load Modules
library(ggplot2)

# Dataset
head(mpg)

# Plot
ggplot(mpg, aes(manufacturer)) + 
  geom_bar(aes(fill=class), width = 0.5)

ggplot(mpg, aes(manufacturer)) + 
  geom_bar(aes(fill=class), width = 0.5) +
  labs(title="Manufacturer vs Vehicle Class") 

ggplot(mpg, aes(manufacturer)) + 
  geom_bar(aes(fill=class), width = 0.5) + 
  labs(title="Manufacturer vs Vehicle Class") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
