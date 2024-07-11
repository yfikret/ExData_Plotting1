# Plot 3

valid_dates <- c("1/2/2007", "2/2/2007")

data <- read.csv("household_power_consumption.txt", sep=";")

subset_data <- data[which( data$Date %in%  valid_dates), ]

png("plot3.png")
with(subset_data, plot(Sub_metering_1, type = "l",  xaxt = "n", ylab = "Energy sub metering"))

with(subset_data, points(Sub_metering_2, type = "l", col = "red"))
with(subset_data, points(Sub_metering_3, type = "l", col = "blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

x_axis_length <- length(subset_data$Sub_metering_1)
par(xaxt = "s")
axis(1, c(0, x_axis_length / 2, x_axis_length), labels = c("Thu", "Fri", "Sat"))

dev.off()

