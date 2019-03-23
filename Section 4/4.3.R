# Load Modules
library(ggplot2)

# Dataset
head(mpg)

# Plot
p <- ggplot(mpg, aes(class, cty)) + 
  geom_boxplot()

p

p <- ggplot(mpg, aes(class, cty)) + 
  geom_boxplot(varwidth=T, fill="blue") 

p

p + labs(title="A Box plot Example", 
       subtitle="Mileage by Class",
       caption="MPG Dataset",
       x="Class",
       y="Mileage")
