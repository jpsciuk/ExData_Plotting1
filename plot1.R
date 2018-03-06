setwd('/Users/Jennifer/Desktop/jen_coursera/Exploratory Data Analysis/')
getwd()
housepower<-read.csv('household_power_consumption.txt', sep = ';', na.strings = '?')

datepower<- subset(housepower, as.Date(Date, format = '%d/%m/%Y') >= '2007-02-01' &
         as.Date(Date, format = '%d/%m/%Y') <= '2007-02-02')

hist(datepower$Global_active_power, col = 'red')
