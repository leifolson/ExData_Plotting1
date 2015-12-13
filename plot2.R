#plot2.R
data <- read.csv("powerData.csv", header = TRUE)

png(filename = "plot2.png", width = 480, height = 480)

plot(data$Global_active_power, type = "l", xaxt="n", 
     ylab="Global Active Power (kilowatts)",xlab="")

axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()