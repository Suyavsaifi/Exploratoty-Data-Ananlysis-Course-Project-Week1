
#Reading data into R

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subsetting 1 feb and 2 feb data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(subSetData)

#Type casting the varaible

globalActivePower <- as.numeric(subSetData$Global_active_power)

#saving the graph to the png fomrat with width=480 and height=480

png("plot1.png", width=480, height=480)

#making histogram of golabalActivePower

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#closing the graphic window

dev.off()