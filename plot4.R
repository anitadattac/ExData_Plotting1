filename <- "plot_dataset.txt"
plot4data = read.table(filename, header = TRUE, sep = ";", colClasses = NA)

png(filename = "plot4.png", height = 480, width = 480, bg = "transparent")
par(mfrow=c(2,2))

plot(plot4data$Timestamp, plot4data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")


plot(plot4data$Timestamp, plot4data$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(plot4data$Timestamp, plot4data$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")

line(plot4data$Timestamp, plot4data$Sub_metering_2, type = "l",col = "red")
line(plot4data$Timestamp, plot4data$Sub_metering_3, type = "l",col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1), lwd = 2, col = c("black", "red", "blue"), bty = "n")


plot(plot4data$Timestamp, plot4data$Global_active_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()