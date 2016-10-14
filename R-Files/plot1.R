# setting working directory

setwd("C:/Users/rajs/Desktop/Coursera")

# loading data

plot = read.csv(file="household.csv", header=T, sep=";", na.strings="?")

#Selecting date and time

Data <- plot[plot$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(Data$Date,Data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
Data <- cbind(SetTime,Data)

#plotting
hist(Data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")