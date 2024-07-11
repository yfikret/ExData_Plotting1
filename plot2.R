# Plot 2

valid_dates <- c("1/2/2007", "2/2/2007")

data <- read.csv("household_power_consumption.txt", sep=";")

subset_data <- data[which( data$Date %in%  valid_dates), ]

global_active_power <- as.numeric(subset_data$Global_active_power)

png("plot2.png")
plot(global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "",  xaxt = "n")

x_axis_length <- length(global_active_power)
axis(1, c(0, x_axis_length / 2, x_axis_length), labels = c("Thu", "Fri", "Sat"))
dev.off()
