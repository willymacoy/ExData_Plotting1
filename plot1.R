# prepare data
source('prepareData.R')
plotFile = paste(plotFolder, "plot1.png", sep = '/')

# parameters required of each plot
png(filename = plotFile, width = 480, height = 480)
plotDev = dev.cur()

# ======================================================================
# work is done here
# histogram as per example
# ======================================================================
hist(
	x = powerSmall$Global_active_power, 
	col = 'red',
	xlab = 'Global Active Power (kilowatts)', 
	main = 'Global Active Power'
	)


# close device
dev.off(plotDev)

