setwd('/Users/Jennifer/Desktop/jen_coursera/Exploratory Data Analysis/')
getwd()
housepower<-read.csv('household_power_consumption.txt', sep = ';', na.strings = '?')

datepower<- subset(housepower, as.Date(Date, format = '%d/%m/%Y') >= '2007-02-01' &
                     as.Date(Date, format = '%d/%m/%Y') <= '2007-02-02')


par(mfrow = c(2, 2))


paste(datepower$Date, datepower$Time)
plot(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Global_active_power,
     type = 'l', ylab = 'Global Active Power', xlab = '')

paste(datepower$Date, datepower$Time)
plot(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Voltage,
     type = 'l', ylab = 'Voltage', xlab = 'datetime')



plot(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Sub_metering_1,
     type = 'l', ylab = 'Enery sub metering', xlab = '')
lines(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Sub_metering_2,
      type = 'l', col = 'red')
lines(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Sub_metering_3,
      type = 'l', col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'),
       lty = 1)


paste(datepower$Date, datepower$Time)
plot(strptime(paste(datepower$Date, datepower$Time), format = '%d/%m/%Y %H:%M:%S'), datepower$Global_reactive_power,
     type = 'l', ylab = 'Global_reactive_power', xlab = 'datetime')