data <- read.csv("hw1_data.csv", header=TRUE) #load a table
con <- file("hw1_data.csv", header=TRUE) #connection to external data
x <- readLines(con, 2) #to read lines in connections
x #to list
data[1:2, ]   #to show the first two rows
data[152:153, ]   #to show rows 152 and 153
str(data)   #shows the table properties
summary(data) # summary stat
data[47, "Ozone"]#getting the value in row 47 of ozon column
Ozone_data <- data["Ozone"] #selecting ozone subset
Ozone_missing <- is.na(Ozone_data) #to get the missing ozone data
sum(Ozone_missing) #to get the number of missing value in ozone column
y <- Ozone_data[!is.na(Ozone_data)] #none missing value in Ozone data
y
mean(y)
data_subset <-subset(data, Ozone > 31 & Temp > 90, na.rm = TRUE) #gives the subset where ozone>31 and temp>90
mean(data_subset$Solar.R)  #to get the mean of the Solar.R in the subset
month6 <-subset(data, Month ==6)
month6
mean(month6$Temp)
month5 <-subset(data, Month == 5)
month5
summary(month5)