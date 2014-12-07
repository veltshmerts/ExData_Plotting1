# source(LoadData.R)

# combine date and time strings
date_time = paste(DF$Date, DF$Time)

# parse string to Time object
date_time = strptime(date_time, "%d/%m/%Y %H:%M:%S")

# save to .png file
png(filename = "plot3.png")

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

dev.off()