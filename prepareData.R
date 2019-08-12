# same data is required for each script
# just source this file

dataFilesUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFolder <- 'data'
dataZip <- paste(dataFolder, "household_power_consumption.zip", sep = '/')
dataFile = paste(dataFolder, "household_power_consumption.txt", sep = '/')
plotFolder = 'figure' 
plotFile = paste(plotFolder, "plot1.png", sep = '/')

# download and unzip data files
if (!file.exists(dataZip)) {
	download.file(dataFilesUrl, dataZip, method = "curl")
}

# assume correct dataset
unzip(dataZip, exdir = dataFolder, overwrite = TRUE)

# filesize is 133MB - should be okay to read into memory
power <- read.csv(dataFile, stringsAsFactors=FALSE, sep=';', header=TRUE, na.strings = '?')

# interested in only two days)
powerSmall <- subset(power, Date =='1/2/2007' | Date == '2/2/2007')

