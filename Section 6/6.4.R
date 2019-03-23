# Load modules
library(ggplot2)

df <- read.csv("data_g8.csv",header=TRUE)
df
years <- 23
lab1990 <- paste(df$group, round(df$year1990),sep=",")
lab2013 <- paste(round(df$year2013), df$group, sep=",")

ggplot(df) + 
  geom_segment(aes(x=0,xend=years, y=year1990,yend=year2013), size=0.5) + 
  geom_text(label=lab2013,y=df$year2013,x=rep.int(years,length(df$year2013)),hjust=0, vjust=0.5,size=4) +
  geom_text(label=lab1990,y=df$year1990,x=rep.int(0,length(df$year2013)),hjust=1, vjust=0.5,size=4) +
  geom_text(label="1990",x=0,y=(1.05*(max(df$year2013,df$year1990))),hjust=0.2,size=5) +
  geom_text(label="2013",x=years,y=(1.05*(max(df$year2013,df$year1990))),hjust=0,size=5) +
  xlim(-8,(years+9)) +
  ylim(min(a$year2013,a$year1990),max(a$year2013,a$year1990)+7)

