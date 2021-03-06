# setting working directory

setwd("C:/Users/rajs/Desktop/Coursera")

# loading data

plot1 = read.csv(file="household.csv", header=T, sep=";", na.strings="?")

#Selecting date and time

Data <- plot1[plot1$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(Data$Date,Data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
Data <- cbind(SetTime,Data)

#plotting

columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(Data$SetTime,Data$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(Data$SetTime,Data$Sub_metering_2, col=columnlines[2])
lines(Data$SetTime,Data$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")