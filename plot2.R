filename <- "plot_dataset.txt"
plot2data = read.table(filename, header = TRUE, sep = ";", colClasses = NA)

png(filename = "plot2.png", height = 480, width = 480)

plot(plot2data$Timestamp, plot2data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()