# setting working directory

setwd("C:/Users/rajs/Desktop/Coursera")

# loading data

plot1 = read.csv(file="household.csv", header=T, sep=";", na.strings="?")

#Selecting date and time

Data <- plot1[plot1$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(Data$Date,Data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
Data <- cbind(SetTime,Data)

#plotting
plot(Data$SetTime, Data$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")