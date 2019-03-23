# Load ggplot
library(ggplot2)

# Read in dataset
data(mpg)
head(mpg)

# A bar count plot
p <- ggplot(mpg, aes(x=factor(cyl)))+
  geom_bar(stat="count")
p

# A historgram count plot
ggplot(data=mpg, aes(x=hwy)) + 
  geom_histogram( col="red", 
                 fill="green", 
                 alpha = .2,
                 binwidth = 5)


p <- ggplot(mpg, aes(class))

p +  geom_bar()

p + geom_bar(aes(fill = drv))



