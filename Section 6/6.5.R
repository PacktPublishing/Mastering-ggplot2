# Load Modules
library(ggplot2)
library(forecast)

# Dataset
AirPassengers

# Plot - ggseasonplot
ggseasonplot(AirPassengers)

ggseasonplot(AirPassengers, year.labels=TRUE, 
             main="Air Passengers")

ggseasonplot(AirPassengers, year.labels=TRUE, 
             main="Air Passengers", polar=TRUE)

# Plot - seasonplot
# type = 'value'
# "p" for points,
# "l" for lines,
# "b" for both,
# "c" for the lines part alone of "b",
# "o" for both ‘overplotted’,
# "h" for ‘histogram’ like (or ‘high-density’) vertical lines,
# "s" for stair steps,
# "S" for other steps, see ‘Details’ below,
# "n" for no plotting.

seasonplot(AirPassengers, year.labels=TRUE, 
           main="Air Passengers", col=rainbow(12)
           )

