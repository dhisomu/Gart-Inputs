# this line will download forecast package in your IDE
setwd("~/1000 Personal/ASB")

# install.packages('forecast')

library('forecast')

class(AirPassengers)

#dum1 <- as.data.frame(AirPassengers)

AirPassengers

cycle(AirPassengers)

# Create a color palette for the box plot
my_colors <- rainbow(12)

# Box plot by month with customizations
boxplot(split(AirPassengers, cycle(AirPassengers)),
        xlab = "Month", ylab = "Number of Passengers",
        col = my_colors, # Assign colors to each box
        border = "black", # Set the border color
        main = "Monthly Air Passenger Counts by Month",
        names = month.abb, # Use abbreviated month names as labels
        outline = FALSE) # Remove outliers


plot(AirPassengers)

data<-ts(AirPassengers, frequency=12)

d<-decompose(data, "multiplicative")



plot(d)

model<-auto.arima(AirPassengers)

summary(model)

# h = 10*12 because, forecast is for 10 years for all 12 months
f<-forecast(model, level=c(95), h=10*12)
plot(f)
