require(sqldf)
myFile = file("./household_power_consumption.txt")
# We will only be using data from the dates 2007-02-01 and 2007-02-02.

# This code is from Yvette Bonvalot on the forums.
DF     <- sqldf('select * from myFile where Date = "1/2/2007" OR Date = "2/2/2007"',  
                dbname = tempfile(),  
                file.format = list(header = TRUE,   
                                   sep = ";",   
                                   eol = '\r\n'))
# close connection
sqldf()