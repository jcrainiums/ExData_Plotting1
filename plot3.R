hpc <- read.csv("~/Rprogs/exploratory/ExData_Plotting1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE, dec = ".")

subset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

dt <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
sm1 <- as.numeric(subset$Sub_metering_1)
sm2 <- as.numeric(subset$Sub_metering_2)
sm3 <- as.numeric(subset$Sub_metering_3)
plot(dt, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, sm2, type="l", col="red")
lines(dt, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

