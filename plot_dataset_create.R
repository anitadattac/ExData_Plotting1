




filename <- "household_power_consumption.txt"
plotDataMstr <- read.table(filename, header = TRUE, sep = ";",
                       colClasses = c("character", "character", rep("numeric",7)),
                       na = "?")

plotData <- read.table(filename, header = TRUE, sep = ";",
                       colClasses = c("character", "character", rep("numeric",7)),
                       na = "?")

#plotData$Time <- strptime(paste(plotData$Date, plotData$Time), "%d/%m/%Y %H:%M:%S")
#plotData$Date <- as.Date(plotData$Date, "%d%m%Y")
#plotdates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
#plotSubData <- subset(plotData,Date %in% plotdates)

plotData$Timestamp <- strptime(paste(plotData$Date, plotData$Time), format= "%d/%m/%Y %H:%M:%S")
plotData$Date = NULL
plotData$Time = NULL

plotSubData = subset(plotData, as.Date(plotData$Timestamp) >= "2007-02-01" & 
                                as.Date(plotData$Timestamp) < "2007-02-03")

write.table(plotSubData, file = "plot_dataset.txt", sep = ";" , row.names = TRUE)

