filename <- "plot_dataset.txt"
plot3data = read.table(filename, header = TRUE, sep = ";", colClasses = NA)

png(filename = "plot3.png", height = 480, width = 480, bg = "transparent")

plot(plot3data$Timestamp, plot3data$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")

lines(plot3data$Timestamp, plot3data$Sub_metering_2, type = "l", col= "red")
lines(plot3data$Timestamp, plot3data$Sub_metering_3, type = "l", col= "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1), lwd = 2, col = c("black", "red", "blue"))


dev.off()