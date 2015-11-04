hpc <- read.csv("~/Rprogs/exploratory/ExData_Plotting1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE, dec = ".")

subset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]


png("plot2.png", width=480, height=480)

plot(strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(subset$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()

