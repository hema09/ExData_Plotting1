mydata <- fread(input="household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, na.strings="?")
data <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]

datedata <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

sub1data <- as.numeric(data$Sub_metering_1)
sub2data <- as.numeric(data$Sub_metering_2)
sub3data <- as.numeric(data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datedata, sub1data, type="l", xlab="", ylab="Enery sub metering")
lines(datedata, sub2data, type="l", xlab="", col="red")
lines(datedata, sub3data, type="l", xlab="", col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lwd=1.0)
dev.off()