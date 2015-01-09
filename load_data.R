setwd("C:/Users/r.hernandez.murcia/Downloads/exdata-data-household_power_consumption")
household.data <- "household_power_consumption.txt"
data <- read.table(household.data, header=TRUE, sep=";", na.strings = "?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data$Date <- as.Date(data$Date, format= "%d/%m/%Y")
data = subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
data$Time <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

