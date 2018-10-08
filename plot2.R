#We have already attached data in plot1.R file we will use it directly with loading
#it gain into this code. Kindly refer the plot1.R file see the prior steps of 
#data attaching
#str(subSetData)

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(subSetData$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()