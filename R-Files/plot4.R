# setting working directory

setwd("C:/Users/rajs/Desktop/Coursera")

# loading data

plot1 = read.csv(file="household.csv", header=T, sep=";", na.strings="?")

#Selecting date and time

Data <- plot1[plot1$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(Data$Date,Data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
Data <- cbind(SetTime,Data)

#plotting

labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mar = rep(2, 4))
plot(Data$SetTime,Data$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power")
plot(Data$SetTime,Data$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
plot(Data$SetTime,Data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(Data$SetTime,Data$Sub_metering_2, type="l", col="red")
lines(Data$SetTime,Data$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(Data$SetTime, Data$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")