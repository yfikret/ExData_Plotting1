
# Plot 1

valid_dates <- c("1/2/2007", "2/2/2007")

data <- read.csv("household_power_consumption.txt", sep=";")

subset_data <- data[which( data$Date %in%  valid_dates), ]


global_active_power <- as.numeric(subset_data$Global_active_power)
png("plot1.png")
hist(global_active_power, col='red' , xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", ylim = c(0, 1200))
dev.off()