#plot4.R
data <- read.csv("powerData.csv", header = TRUE)

# save current parameters
oldPar <- par()

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

# plot2
plot(data$Global_active_power, type = "l", xaxt="n", ylab="Global Active Power (kilowatts)",xlab="")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

# voltage
plot(data$Voltage, type = "l", xaxt="n", ylab="Voltage",xlab="datetime")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

# plot3
plot(data$Sub_metering_1, type = 'l', xaxt='n', col='black', ylab='Energy sub metering',xlab='')
lines(data$Sub_metering_2, col = 'red')
lines(data$Sub_metering_3, col = 'blue')
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1),
       col=c("black","red","blue"))
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

# global reactive power
plot(data$Global_reactive_power, type = "l", xaxt="n", ylab="Global_reactive_power",xlab="datetime")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()

# restore parameters
par(oldPar)