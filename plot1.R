mydata <- fread(input="household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, na.strings="?")
data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
histdata <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(histdata, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
dev.off()
