mydata <- fread(input="household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, na.strings="?")
data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
linedata <- as.numeric(data$Global_active_power)
datedata <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datedata, linedata, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()