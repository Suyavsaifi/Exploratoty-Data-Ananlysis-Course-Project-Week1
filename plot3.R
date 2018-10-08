#We have already attached data in plot1.R file we will use it directly with loading
#it gain into this code. Kindly refer the plot1.R file see the prior steps of 
#data attaching

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(subSetData$Global_active_power)

subMetering1 <- as.numeric(subSetData$Sub_metering_1)

subMetering2 <- as.numeric(subSetData$Sub_metering_2)

subMetering3 <- as.numeric(subSetData$Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")

lines(datetime, subMetering2, type="l", col="red")

lines(datetime, subMetering3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()