# Load Modules
library(ggplot2)

# Data
df <- as.data.frame(table(mpg$class))
colnames(df) <- c("class", "freq")

# Plot
ggplot(df, aes(class, freq)) + 
  geom_bar(stat="identity", width = 0.3, fill="blue") + 
  labs(title="Bar Plot with ggplo2", 
       subtitle="Class of vehicles", 
       caption="Source: MPG Dataset")
