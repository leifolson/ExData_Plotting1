#plot3.R
data <- read.csv("powerData.csv", header = TRUE)

png(filename = "plot3.png", width = 480, height = 480)

plot(data$Sub_metering_1, type = 'l', xaxt='n', col='black', ylab='Energy sub metering',xlab='')
lines(data$Sub_metering_2, col = 'red')
lines(data$Sub_metering_3, col = 'blue')

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1),
       col=c("black","red","blue"))
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()