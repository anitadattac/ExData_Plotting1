filename <- "plot_dataset.txt"
plot1data = read.table(filename, header = TRUE, sep = ";", colClasses = NA)

png(filename = "plot1.png", height = 480, width = 480, bg = "transparent")

hist(plot1data$Global_active_power, col = "red",
     main= "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency" )

dev.off ()