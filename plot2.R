# prepare data
source('prepareData.R')
plotFile = paste(plotFolder, "plot2.png", sep = '/')

# parameters required of each plot
png(filename = plotFile, width = 480, height = 480)
plotDev = dev.cur()

# ======================================================================
# work is done here
# plot as per example
# ======================================================================
with(
	powerSmall, 
	plot(
		strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
		Global_active_power, 
		type = 'l', 
		xlab  = '', 
		ylab = 'Global Active Power (kilowatts)'
		)
	)



# close device
dev.off(plotDev)


