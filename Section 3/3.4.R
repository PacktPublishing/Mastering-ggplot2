# Load ggplot
library(ggplot2)

# Dataset
set.seed(1234)
df <- data.frame(
  sex=factor(rep(c("F", "M"), each=200)),
  weight=round(c(rnorm(200, mean=55, sd=5),
                 rnorm(200, mean=65, sd=5)))
)
head(df)

# Plot 1
ggplot(df, aes(x=weight)) +
  geom_area(stat = "bin")

# Plot 2
ggplot(df, aes(x=weight)) +
  geom_area(stat = "bin") + 
  geom_area(aes(y = ..density..), stat = "bin")

# Plot 3
ggplot(df, aes(x=weight)) +
  geom_area(stat = "bin") + 
  geom_area(aes(y = ..density..), stat = "bin")+ 
  geom_area(stat = "bin", fill = "lightblue")+
  geom_vline(aes(xintercept=mean(weight)),
             color="blue", linetype="dashed", size=1)

