# source(LoadData.R)

# save to .png file
png(filename = "plot1.png")

hist(DF$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     col="darkorange", 
     main="Global Active Power")

dev.off()