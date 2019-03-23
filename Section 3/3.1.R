# Load ggplot
library(ggplot2)

# create new column for car names
mtcars$`car name` <- rownames(mtcars)  
# compute normalized mpg
mtcars$mpg_z <- round((mtcars$mpg - mean(mtcars$mpg))/sd(mtcars$mpg), 2)  
# above / below avg flag
mtcars$mpg_type <- ifelse(mtcars$mpg_z < 0, "below", "above")  
# sort
mtcars <- mtcars[order(mtcars$mpg_z), ]  
# convert to factor to retain sorted order in plot.
mtcars$`car name` <- factor(mtcars$`car name`, levels = mtcars$`car name`)  

# Diverging Barcharts
ggplot(mtcars, aes(x=`car name`, y=mpg_z, label=mpg_z)) + 
  geom_bar(stat='identity', aes(fill=mpg_type), width=.5)  +
  scale_fill_manual(name="Mileage", 
                    labels = c("Above Average", "Below Average"), 
                    values = c("above"="#00ba38", "below"="#f8766d")) + 
  labs(subtitle="Normalised mileage from 'mtcars'", 
       title= "Diverging Bars") + 
  coord_flip()
