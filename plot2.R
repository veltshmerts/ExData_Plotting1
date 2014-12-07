# source(LoadData.R)

# combine date and time strings
date_time = paste(DF$Date, DF$Time)

# parse string to Time object
date_time = strptime(date_time, "%d/%m/%Y %H:%M:%S")

# save to .png file
png(filename = "plot2.png")

# plot data
plot(date_time, DF$Global_active, 
     type="l", 
     xlab="", 
     ylab="Global Active Power(kilowatts)")


dev.off()