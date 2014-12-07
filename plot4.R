# source(LoadData.R)

# save to .png file
png(filename = "plot4.png")

# 4 differnt plots
par(mfrow=c(2,2))

    # plot 1 (from plot2.R)
# combine date and time strings
date_time = paste(DF$Date, DF$Time)

# parse string to Time object
date_time = strptime(date_time, "%d/%m/%Y %H:%M:%S")

# plot data
plot(date_time, DF$Global_active, 
     type="l", 
     xlab="", 
     ylab="Global Active Power")

# plot 2
plot(date_time,DF$Voltage,
     type="l",
     xlab = "datetime",
     ylab = "Voltage")

# plot 3 (from plot3.R)
# plot sub metering 1
plot(date_time, DF$Sub_metering_1, type="l", col="black",
     xlab="",
     ylab="Energy sub metering")

# 2
points(date_time,DF$Sub_metering_2,type="l",col="red")

# 3
points(date_time,DF$Sub_metering_3,type="l",col="blue")

# legend
legend("topright", 
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,
       col=c("black","red","blue"))

# plot 4
plot(date_time, DF$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off()