hpc <- read.csv("~/Rprogs/exploratory/ExData_Plotting1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE, dec = ".")

subset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

dt <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2)) 

plot(dt, as.numeric(subset$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(dt, as.numeric(subset$Voltage), type="l", xlab="datetime", ylab="Voltage")

plot(dt, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, sm2, type="l", col="red")
lines(dt, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(dt, subset$Global_active_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
