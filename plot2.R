setwd('/Users/Jennifer/Desktop/jen_coursera/Exploratory Data Analysis/')
getwd()
housepower<-read.csv('household_power_consumption.txt', sep = ';', na.strings = '?')

datepower<- subset(housepower, as.Date(Date, format = '%d/%m/%Y') >= '2007-02-01' &
                     as.Date(Date, format = '%d/%m/%Y') <= '2007-02-02')


paste(datepower$Date, datepower$Time)
plot(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Global_active_power,
     type = 'l', ylab = 'Global Active Power (kilowatts)', xlab = '')



