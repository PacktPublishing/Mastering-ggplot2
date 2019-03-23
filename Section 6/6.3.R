# you start here...
library(ggplot2)
library(lubridate)     
library(RColorBrewer)  

# Dataset
set.seed(1)
x <- 1:1000
y <- as.POSIXct("03/01/2019",format="%m/%d/%Y")+sample(0:(210*24*60)*60,1000)
y <- strftime(y,format="%m/%d/%Y %H:%M")
data <- data.frame(ID=x,Starttime=y)

head(data)

data$date <- as.POSIXct(data$Starttime, format="%m/%d/%Y %H:%M")
data$dow  <- wday(data$date)
data$cdow <- wday(data$date,label=T)
data$tod  <- as.numeric(data$date - as.POSIXct(strftime(data$date,format="%Y-%m-%d")))/60
data$bins <- cut(data$tod,breaks=1:24,labels=F)
counts    <- aggregate(ID~bins+dow,data,length)
colnames(counts)[ncol(counts)] <- "Events"

head(counts)

ggplot(counts, aes(x=bins,y=8-dow))+
  geom_tile(aes(fill=Events))+
  scale_fill_gradientn(colours=brewer.pal(9,"YlOrRd"),
                       breaks=seq(0,max(counts$Events),by=2))+
  scale_y_continuous(breaks=7:1,labels=c("Sun","Mon","Tues","Wed","Thurs","Fri","Sat"))+
  labs(x="Time of Day (hours)", y="Day of Week")+
  coord_fixed()
